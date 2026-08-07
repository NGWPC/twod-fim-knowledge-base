## Guiding Requirements

- Run any single reach end-to-end on a developer laptop
- Mix and match minor updates
- Flexibility to add scenarios
- Flexibility to update model domain
- Flexibility to alternate between different solvers per reach

## Key Design Principles

- The System is designed with database as the brain plus orchestrator as a reconciliation loop
- Orchestrator has main goal of reconciling current state towards desired state
- The reconciliation loop is borrowed from Kubernetes; it makes the system self-healing. A controller watches S3 and forms the current state; when it sees a difference between current_state and desired_state it acts, then writes what it observed back into current_state, then watches again. The loop never stops.
- Jobs are stateless, they intake JSON, output JSON. They write to S3
- Jobs do not interact with Database
- Orchestrator is the sole writer/editor to deployed system, no external updates are allowed
- User updates come through override system
- Deployed system does not entertain testing, testing should be carried out separately and desired state must be updated via overrides or updates to desired state table
- Inputs are versioned
- Outputs are immutable and stored at addressed paths (A rerun with same inputs will overwrite the old content)
- As orchestrator try to bridge gap between current state and desired state it skips what already exist and runs only the gap between two states. This is done through addressed paths.
- If the desired state changed and existing outputs become stale, they are handled by S3 lifecycle policies
- Self documenting paths
- Operational Unit is per reach folder. Someone can `aws s3 sync` one reach to a laptop and have everything to inspect or rerun
- Stateless code i.e. function shaped, no load-mutate-save lifecycle
- What can be derived, will not be stored beyond some days on S3
- Desired state should be preserved at all cost as it will update as system would self update as well as updates from external users

## Key Design Decisions

- STL is not part of model definition, but STL will inform model_domain desired state
- Identity and realization are always separate component in hashes and separate DB columns so that group / roll back / delete by either is possible
- Runs with same model identity stay valid even if a domain change updates the model_id
- The database has three main tables
- Desired state = input to system = authored intent
- Current state = what's actually been achieved = current state of the system
- Runs = the per-run record (ledger)
- Some desired_state fields are nullable. NULL means "use the default source", a value means it is authored. `current_state` table in database always holds the effective value. This separation makes it clear that there is one place to author anything, one place to read what exist.
- Rollbacks = delete a model or run(s). System will recognise that and recreate it if needed
- Before execution, jobs will check if results exist on the content-addressed path and return early.
- Database will track staleness for example a downstream model is deleted, so the storage sensor will update the `current_state` that it doesn't exist.
- Only those KWSE scenarios will be perfromed and stay valid for which downstream scenario exist, this is because flows2fim can only reach these scenarios.

![alt text](guide-diagrams/system-landscape.drawio.png)

## Versioning Model

- When we store in S3 we store by repo version, (minor updates can live together, but major can not)
- Each job version is pinned to a commit in SDR
- Deployment is a distribution at anypoint it works with a specific combination of versions

## Conceptual Modeling Objects

This is conceptual model of different key objects in the system. Job contracts and object manifest schemas are stored separately and build from this conceptual model. See Manifest and Job Contract section below.

Every object (Model and Run) is defined in three key ways.

|                 | Purpose                                            | How it is Built and Represented                                                                      | Usage                                                                                               |
| --------------- | -------------------------------------------------- | ---------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| **Identity**    | What methodology produced this. (recipie)          | Information about the object that forms its identity is collected in an object whose hash is then taken. | Identity is used to group / rollback / delete / invalidate objects. Identity also is used for path. |
| **Realization** | At what domain/point/axis was this recipe realized | The realization point/axis is converted to a human readable code.                                    | Appended to `identity_hash` to form the full `id` and path of the object.                           |
| **Manifest**    | All information of the object. (packaging label)   | Job Inputs that created this object are recorded verbatim, plus the assets belonging to this object and all other information associated. | Complete representation of the object that database and other tools can query as needed.            |

- What information from Manifest is promoted to identity is a judgement call, a rule of thumb is that if some information is critical enough that it invalidates the object if changed and force a recompute, it is considered part of identity because it needs to live at a different path.
- Database can fetch information from provenance if it is needed to track what exists, what changed, what need to be created (reconciliation loop).
- Manifest is the superset of all information, others like identity, database only posses information based on their function.

### Reach

Reach is the exception to earlier convention, it's an input to the system (from the hydrofabric), not something a job derives, so it has no Identity/Realization split. (id of a reach is already its identity per new hydrofabric Google Plus Codes?)

### Model (id: model_id = identity_hash+domain_code) # example: 5f14368c_N350S296E449W355

 Produced by `build_model`.

#### Identity (id: = hash of this content) # example: 5f14368c

Following information forms identity of a model

- sdr_commit (methodology version pin)
- reach_geom_hash
- dem_source_inputs_hash (ex usgs url + version)
- lulc_source_inputs_hash (ex nlcd url + version)
- lulc_lookup_dict_hash
- grid_resolution
- epsg_code

Overrides are applied upstream and arrive folded into reach_geom / sources / params below; the `build_model` job itself doesn't take an override_id.

### Run (id: run_id = identity_hash+scenario_identity) # example af1436r4_ND1.2e5Q200, af1436r4_KWSE200.2Q200

#### Identity (id: = hash of this content) # example af1436r4

- sdr_commit (methodology version pin)
- solver (engine name + version, e.g. `lisflood-fp@8.1`)

#### Scenario - Run's realization (code: e.g. `ND1.2e5Q200`, `KWSE200.2Q200`)

It is **not** a separate entity with its own Identity/Realization split because it is Run's realization, just like `domain_code` is Model's realization. It's a value, not a thing with an independent lifecycle; it never exists without a Run, hence not a first class object.

- q (discharge)
- bc_type (`ND` normal-depth | `KWSE` known water-surface elevation)
- bc_value (normal-depth slope, or downstream stage value)

## Storage Layout

```bash
s3://twod-fim/
└── version=v1/                             major repo/storage version only (minors coexist)
    ├── overrides/
    │   └── reach=12345/2026-05-01_levee-fix/{patch.tif, manifest.yaml}
    │
    ├── models/                             one physical build = one DEM clip
    │   └── reach=12345/
    │       └── model_id/   (= identity_hash+domain_code)   # group/rollback by identity_hash
    │              ├── model.json              input + output (written last)
    │              ├── metadata.csv / parquet  metadata on artifacts
    │              ├── {dem,roughness}.tif      derived; deletable after N days
    │              └── {cl,inflow,centroid,domain}.geojson
    │
    └── results/
        └── reach=12345/
            └── <model identity hash>/  # runs file under identity, not under id which will have domain code
                └──	<run identity>/    # group/rollback by this
                    └── z=283.2/q=200/      or nd=1.2e5/q=200/   # run realization: scenario point
                    	├── depth.tif           COG, EPSG:5070; also the hot-start seed
                    	├── stl.geojson           Stage Transfer Line
                    	├── metadata.csv / parquet  metadata on artifacts
                    	└── run.json            self-describing run record (records domain used)
```

## Manifest

A manifest is an object's full self-description, the identity object, the realization, the provenance `inputs`, and the output `assets`, properties, and other key information.

The manifest's inputs object should match the job contract input specs. Manifest schmea should live in `twod-fim-jobs` repo.

Manifest schema shape is fixed regardless of object:

- `type`
- `hash_algo`
- `producer version`
- `created_at`
- `id`
- `identity_hash`
- `realization code`
- `identity{}`
- `realization{}`
- `inputs{}`
- `properties{}`
- `assets{}`
- `warnings[]`

## Job Specs

- A job's response is a small subset of information, not the manifest object.
- Job specs live in twod-fim-jobs repo.

Following template can be used to create job specs.

| Section                      | Content                                                                           |
| ---------------------------- | --------------------------------------------------------------------------------- |
| Overview                     | One paragraph: what this job does, one sentence                                   |
| Inputs — Required / Optional | Table: Name, Type, Description                                                    |
| Processing Scope             | Bullet list of what the job actually does, in order                               |
| Artifacts                    | Table: output path → description                                                  |
| Response                     | What the job returns synchronously — see "thin pointer" rule below                |
| Out of Scope                 | What this job explicitly does not do (prevents scope creep into neighboring jobs) |
| Dependencies                 | Runtime/tooling dependencies                                                      |
| Errors                       | Table or list: condition → exception raised                                       |
| Checks                       | Non-fatal checks the job performs and the warning it emits                        |
| Performance                  | Typical runtime, and where that pushes deployment (local vs. batch)               |

## Cardinality between Jobs Objects and Manifests

- One to One relationship between Conceptual Objects and Manifests
- Many to One relationship between jobs and manifests. E.x. both runner jobs will peroform a run so they give run.json

## Repo Layout

![alt text](guide-diagrams/repos-and-ownership.drawio.png)

## Basic Sequence

![alt text](guide-diagrams/run-sequence.drawio.png)

## Open Questions

- How does worker wait for last scenario of downstream reach to finish?
  Possibly by waiting for `state_synced=true`
- Do we want more granular control over desired kwse state
- How do we track nominal KWSE rasters
- Does PSQL trigger orchestrator or orchestrator watches PSQL
- How do AWS Batch runs D IND
- Network traversal order