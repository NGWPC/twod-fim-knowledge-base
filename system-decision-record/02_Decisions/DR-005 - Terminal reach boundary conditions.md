## Description
Terminal reaches include reaches that discharge to 
 - coasts
 - areas outside the US
 - large waterbodies
For these areas, the standard WSE transfer approach might not apply.  These reaches will, however, need some area to discharge floodwaters.  

What should be used to define outflow areas and conditions?

## Alternatives
### ALT-A - Outflow area from waterbody and admin boundaries dataset; Reach Normal Depth

We can generate a dataset of outflow areas that will include
 - Polygons for areas outside administrative boundaries of US
 - Coastal areas
 - NHDPlus Waterbodies
For each terminal reach, take the intersection of those polygons and the reach domain edge.  Set the boundary condition along that line to the reach slope.

This is non-ideal because reach slopes are often very different from level pools at waterbodies and coasts.
### ALT-B - Outflow area from waterbody and admin boundaries dataset; Low Normal Depth

Same as ALT-A, but uses a very low normal depth slope (ex. 10e-6).  

As slope approaches 0, Qout will approach 0.  Therefore this boundary condition will often behave similarly to a closed boundary.

### ALT-C - Outflow area from waterbody and admin boundaries "models"; Known Water-Surface Elevation
#current
Same as ALT-A, but uses a range of reasonable depths from a downstream GIS-based analysis.

We may run a GIS "bathtub" style analysis for waterbodies, and we could do the same for coasts and areas outside US.  These would provide the range of d/s boundary conditions for terminal reaches.
## Linked Cases Summary Table

| Alt | Case                                    | Link    | Reason                                                                     |
| --- | --------------------------------------- | ------- | -------------------------------------------------------------------------- |
| C   | [[Case-002 - Terminal reach at a lake]] | #Accept | Most realistic outflow and gives more control over downstream water level. |

## Decision History
