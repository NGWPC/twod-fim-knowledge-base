## Description
What should be the boundary condition along the edge cells i.e. along the bounding box.

Boundary Condition Choices Available:
1. Close / No Boundary Condition - Water pools at the edges
2. Normal Depth - Water escapes the domain at provided slope
3. Freefall - Water falling off of a cliff with no resistance


## Alternatives
### ALT-A - Normal Depth at all Edges with Uniform Steep Slope
Water would leave the domain at normal depth slope whenever it hit the edges.

| Case | Outcome | Reason |
| --- | --- | --- |
| [[Case-001 - Y Shape Confluence with 2 Level Stream Order Difference Near Coast]] | #reject | [[ISU-003 - Water Leaving the Domain At Non Outlet Locations]] |

##
### ALT-B - Normal Depth at all Edges with Tailored Slope
Slope calculated for each edge cell.

### ALT-C - D/S Model FIM Informed Edge Cells get Reach Centerline Slope

![[DR-003 - FIG-001.png]]

### ALT-D - D/S Model FIM Informed Edge Cells get Freefall; Terminal Reach Edge Cells get Reach Centerline Slope.
#current

Water surface elevations in the `Transition Zone` are strongly influenced by the outflow boundary condition.  Normal depth is a crude approximation of flow conditions, and is often based on a slop value with limited accuracy.  For a given reach, water surface elevations in the `Transition Zone` are often unreliable.

The downstream model, on the other hand, has water surface elevations that are not impacted by the choice of outflow boundary condition (the STL prevents the outflow condition from impacting upstream areas). Water surface elevations in the `Transition Zone` of a given reach will be more accurate if taken from the downstream model than taken from the downstream model.  If a pixel-wise max operation is used for mosaicking, the only way to guarantee that elevations are taken from the downstream model is to ensure that the upstream model has lower depths in those cells.  The best way to achieve this is by using a very low fixed water surface boundary condition at the outflow.

In areas that do not have a downstream model, reach centerline slope remains the best assumption of downstream flow conditions.

## Decision History
- Initially assumed started with Alt-A
- Switched to Alt-C
- 02-16-2026: Switched to ALT-D based on engineering judgement
