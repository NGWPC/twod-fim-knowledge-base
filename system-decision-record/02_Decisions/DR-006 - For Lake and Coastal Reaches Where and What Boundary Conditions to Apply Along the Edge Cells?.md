## Description
Do we need to treat these reaches anyway differently as far as boundary condition at edge cells are concerned?


## Alternatives
### ALT-A - Normal Depth at all Edges with Uniform Steep Slope
Water would leave the domain at normal depth slope whenever it hit the edges.

### ALT-B - Normal Depth at all Edges with Tailored Slope
Slope calculated for each edge cell.

### ALT-C - D/S Water Body Informed Edge Cells get Reach Centerline Slope
#current
![[DR-003-Fig-001.png]]

### ALT-D -  Closed at all Edges
- Because terminal reaches drain in a water body, they have level pool so it won't even matter if the water doesn't escape the domain at all. It would just mean there is level pool.
- This is okay because as the water hits STL, it doesn't get pass that line and accumulate at the edge.
- This Alternate would mean special handling in software without any benefit that we could think of. This could be considered a reason for rejection.
