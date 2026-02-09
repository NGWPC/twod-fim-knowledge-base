## Description
The initial domain from DR-011 may not be large enough.  This may lead to situations where water pools on domain edges and the FIM underestimates extent 

This DR explores strategies for dynamically determining after a simulation whether water is pooling on an edge in a way that impacts FIM extents negatively and hence FIM should be expanded.

## Alternatives

### ALT-A Informed by `Adjacent Reaches` FIM

The domain should be expanded until there are no flooding cells on the edges other than cells that are intersecting with
- the `downstream reaches` FIM
- the buffer (acting as proxy for FIM) on the `upstream reaches` and `common outlet reaches`  using same approach as [[DR-011 - How to Determine Initial Model Domain#ALT-B - Buffer on Centerline]].

### ALT-B - Informed by Elevation

The domain should be expanded until there are no flooding cells on the edges other than cells that have elevation lower than the elevation at the  `outlet point` of the reach.

| Case | Outcome | Reason |
| --- | --- | --- |
| [[Case-007 - Complex Semi-urban Confluence Along Low-Gradient River]] | #reject | [[ISU-009 - Model Domain is Excessively Large]] |
### ALT-C - Informed by Water-Surface Elevation

The domain should be expanded until there are no flooding cells on the edges other than cells that have water-surface elevation lower than the water-surface elevation at the  `reach outlet` of the reach or water-surface elevation higher than the water-surface elevation at the `reach start`.

| Case | Outcome | Reason |
| --- | --- | --- |
| [[Case-007 - Complex Semi-urban Confluence Along Low-Gradient River]] | #reject | [[ISU-009 - Model Domain is Excessively Large]] |
### ALT-D - Informed by Stage-Transfer Lines

Once a model has been run, draft stage transfer lines would be developed. The floodplain polygon would be split by these lines.  If any of the polygon between the stage transfer lines touches a domain edge, that edge should be expanded.

### ALT-E - Informed by Smoothed Water-Surface Elevation

The domain should be expanded until there are no flooding cells on the edges other than cells that have water-surface elevation lower than the water-surface elevation at the  `reach outlet` of the reach or water-surface elevation higher than the water-surface elevation at the `reach start`.

### ALT-F - Informed by Water-Surface Elevation with 4,000 Meter Expansion Limit
  
The domain should be expanded until there are no flooding cells on the edges other than cells that have water-surface elevation lower than the water-surface elevation at the  `reach outlet` of the reach or water-surface elevation higher than the water-surface elevation at the `reach start`.

If the domain would expand more than 4,000 meters from the initial domain, stop expansion.

| Case | Outcome | Reason |
| --- | --- | --- |
| [[Case-008 - Very Wide Floodplain]] | #reject | [[ISU-006 - FIM cutting off arbitrarily at edges]] |
### ALT-G - Informed by Water-Surface Elevation with Regression Expansion Limit
#current

The domain should be expanded until there are no flooding cells on the edges other than cells that have water-surface elevation lower than the water-surface elevation at the  `reach outlet` of the reach or water-surface elevation higher than the water-surface elevation at the `reach start`.

If the domain would expand more than 50 times bankfull width from the initial domain, stop expansion. Bankfull width may be obtained via regression from the source below.

*Bieger, Katrin, Hendrik Rathjens, Peter M. Allen, and Jeffrey G. Arnold, 2015. Development and Evaluation of Bankfull Hydraulic Geometry Relationships for the Physiographic Regions of the United States. Journal of the American Water Resources Association (JAWRA) 51(3): 842-858. DOI: [10.1111/jawr.12282](https://doi.org/10.1111/jawr.12282 "Link to external resource: 10.1111/jawr.12282")*

## Decision History
 - 2026-01-01:  ALT-A Selected based on expert opinion
 - 2026-01-25: ALT-B Selected in a move away from divide geometry, which often does not agree with FIM
 - 2026-02-06: ALT-F Selected based on Case-007
 - 2026-02-09: ALT-G Selected based on Case-008