## Description
Determine whether `lake and coastal reaches` require different edge-cell boundary handling from standard reaches.

## Alternatives
### ALT-A - Freefall at all Edges
Apply uniform steep-slope normal-depth condition at all edge cells in terminal reaches model domain. Water would leave the domain at normal depth slope whenever it hit the edges.

### ALT-B - Normal Depth at all Edges with Tailored Slope
This alternative applies normal-depth behavior to all edges but computes local slope values per edge cell, aiming to better model physical reality.

### ALT-C - D/S Water Body Informed Edge Cells get Reach Centerline Slope
Apply reach centerline slope normal depth boundary condition only along edge cells identified as part of downstream water body, leaving other edge segments closed.

### ALT-D - Closed at all Edges
All edge cells get closed boundary and water has no place to escape. This alternate works in combination with [[DR-008 - What Should be an STL for Lake and Coastal Reaches]]. 

### ALT-E - D/S Water Body Informed Edge Cells get Steep Slope
#current
This is similar to ALT-A but only at edge cells that are intersecting with D/S Water Body get freefall boundary condition. A freefall is needed because we want water to escape without resistance and not elevate WSEL in the `transition zone`. ALT-C suggestion of centerline slope with normal depth is a crude approximation of flow conditions, and is often based on a slope value with limited accuracy. If the slope is flatter, it can lead to water being pooled in the transition zone..
## Decision History
- 2026-01-27: Started with ALT-B Selection
- 2026-01-27: Switched to ALT-C based on standard reach decision
- 2026-02-16: Switched to ALT-D based on standard reach decision