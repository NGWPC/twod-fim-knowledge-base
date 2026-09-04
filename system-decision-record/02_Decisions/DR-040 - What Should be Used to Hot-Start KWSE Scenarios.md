## Description

A hydraulic run begins from some initial water depth field. Starting from dry (a "cold start") means the solver must fill the reach from nothing; starting from a previously computed depth grid (a "hot start") begins near the answer and converges sooner.

[[DR-030 - How to Determine Library Discharges for Each Reach]] settles this for the normal-depth sweep: cold-start at the reach's minimum discharge, then hot-start each trial from the last accepted snapshot. Nothing covers the KWSE libraries, which are far larger — a KWSE library is a stage ladder at *every* discharge in the ND library, so the great majority of runs in the system are KWSE runs.

This decision addresses which previously computed scenario seeds each KWSE run.

The candidates available to seed a KWSE run at discharge `q` and stage `z` are constrained by what exists when it runs. The reach's ND library is complete before any KWSE work begins, so every ND run is available. KWSE runs are available only if they were placed earlier in the same serially executed batch, or completed in an earlier one.

## Alternatives

### ALT-A - Cold Start Every Scenario

Every KWSE run begins dry.

Simplest possible rule, and the only one with no ordering constraint at all, so scenarios could be run in any order or fully in parallel. It pays the full fill time on every run in the library, which is the dominant cost given KWSE runs outnumber ND runs by the size of the stage ladder.

### ALT-B - Chain Along the Stage Ladder, Cold at the Bottom

At each discharge, run stages in ascending order and seed each from the stage below it. The lowest stage at each discharge has nothing below it and starts dry.

Each seed is the nearest available neighbour in stage, so the seed is hydraulically close. Cost is one cold start per discharge. Requires serial execution within a discharge.

### ALT-C - Chain Along the Stage Ladder, Rooted in the Reach's Own Normal Depth Run

#current

At each discharge, run stages in ascending order and seed each from the stage below it, as in ALT-B. The lowest stage at each discharge instead seeds from **this reach's own normal-depth run at that same discharge**.

No scenario in the library starts dry. The root seed differs from its target only in downstream condition — same reach, same discharge, same geometry — which is the closest starting point that exists anywhere in the system. Every discharge forms an independent chain, so the ordering constraint is only within a discharge and never between them.

The ND run is guaranteed present: the KWSE step is gated on the reach's ND library being materialized, so the seed cannot be missing when it is named.

Cost is that the runner must be able to address a normal-depth scenario as a hot-start source, which is a different storage folder shape (`nd=<slope>` rather than `kwse=<stage>`) and therefore requires the seed to carry its boundary-condition type, not only its value.

### ALT-D - Nearest Neighbour in Both Dimensions

Seed from whichever already-completed scenario is nearest in a combined discharge-and-stage metric, rather than following a fixed ladder.

Potentially the closest seed of all, particularly where the stage ladder is sparse and the discharge ladder dense. It requires a distance metric weighing metres of stage against cumecs of discharge, which has no obvious physical basis, and it makes the execution order depend on that metric — harder to reason about, and harder to reproduce.

## Decision History

- 2026-09-04: ALT-C selected. ALT-B was implemented first and rejected once it was clear that the reach's own ND run at the same discharge is both strictly closer than a cold start and always available, and that the only obstacle was the runner's inability to address an `nd=` folder as a seed, a small change rather than a methodology constraint.