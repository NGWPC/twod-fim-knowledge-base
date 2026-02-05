## Description
The initial domain from DR-011 may not be large enough.  This may lead to situations where water pools on domain edges and the FIM underestimates extent 

This DR explores strategies for dynamically determining after a simulation whether water is pooling on an edge in a way that impacts FIM extents negatively and hence FIM should be expanded.

## Alternatives

### ALT-A Informed by `Adjacent Reaches` FIM

The domain should be expanded until there are no flooding cells on the edges other than cells that are intersecting with
- the `downstream reaches` FIM
- the buffer (acting as proxy for FIM) on the `upstream reaches` and `common outlet reaches`  using same approach as [[DR-011 - How to Determine Initial Model Domain#ALT-B - Buffer on Centerline]].

### ALT-B - Informed by Elevation
#current

The domain should be expanded until there are no flooding cells on the edges other than cells that have elevation lower than the elevation at the  `outlet point` of the reach.

### ALT-C - Informed by Water-Surface Elevation

The domain should be expanded until there are no flooding cells on the edges other than cells that have water-surface elevation lower than the water-surface elevation at the  `reach outlet` of the reach or water-surface elevation higher than the water-surface elevation at the `reach start`.

### ALT-D - Informed by Stage-Transfer Lines

Once a model has been run, draft stage transfer lines would be developed. The floodplain polygon would be split by these lines.  If any of the polygon between the stage transfer lines touches a domain edge, that edge should be expanded.
## Linked Cases Summary Table

| Alt | Case | Link | Reason |
| --- | --- | --- | --- |
| B | [[Case-007 - Domain Expansion]] | #reject | [[EXP-005 - Run a Model with Domain Developed from Reach Divide]] |

## Decision History
