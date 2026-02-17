## Description
The first step of model creation is determining the model extents. Some initial estimate of floodplain size must be made.

The decision on how to catch smaller domains and extend them is recorded separately in [[DR-012 - What Strategy to be used for Determining if Domain Should be Expanded]].

## Alternatives
### ALT-A - Buffer on Reach Divide
Build initial domain by buffering reach divide geometry from hydrofabric.

| Case                                | Outcome | Reason                                             |
| ----------------------------------- | ------- | -------------------------------------------------- |
| [[Case-004 - Floodplain Backwater]] | #reject | Alt A led to a truncated floodplain.               |
| [[Case-015 - Large River]]          | #reject | [[ISU-006 - FIM cutting off arbitrarily at edges]] |
| [[Case-015 - Large River]]          | #reject | [[ISU-009 - Model Domain is Excessively Large]]    |

### ALT-B - Buffer on Centerline

In this approach, the a bounding box is taken on some buffer around the stream centerline. The buffer distance could come from
 - a regression equation ([ex. Bieger et al., 2015](https://onlinelibrary.wiley.com/doi/abs/10.1111/jawr.12282)),
 -  an external dataset of river widths (ex. [from USGS](https://water.usgs.gov/catalog/datasets/120270a9-e0b6-42d8-9b1f-17db852fd2b4/)), or
 - a preliminary hydraulic calculation (ex. some assumption of channel depth combined with Manning's equation for a large flood).

| Case | Outcome | Reason |
| --- | --- | --- |
| [[Case-015 - Large River]] | #reject | [[ISU-009 - Model Domain is Excessively Large]] |
### ALT-C - Coarse Model FIM
In this approach the assumption is that a course model would have been already executed for the reach, which will give a maximum FIM and the domain in actual modeling can simply be BBOX of the coarse model FIM.

### ALT-D - Bounding Box of Inflow BC, d/s `STL`, and Buffered Centerline
#current
A bounding box on the inflow line, the downstream Stage Transfer Line (when available), and the buffered centerline from ALT-B is used for the model domain.

## Decision History
- 2026-02-02: Initial draft created
- 2026-02-12: ALT-D selected for practicality reasons. This is a tentative decision with more research needed.
