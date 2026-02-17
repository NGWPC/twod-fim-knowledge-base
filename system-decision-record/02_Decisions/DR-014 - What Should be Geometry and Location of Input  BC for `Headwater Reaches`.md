## Description
We need to provide flow as input boundary condition to the model domain. What should be the geometry and location of input boundary condition? 
Headwater reaches are handled separately because upstream geometry options are not available relative to non-headwater reaches.

## Alternatives

### ALT-A - At Perpendicular Line on `Reach Start`
Use a perpendicular line at headwater `reach start` so inflow is distributed across a short section instead of concentrated at a point.

### ALT-B - At Points Distributed Along the Reach
#current

Apply distributed point inflows along the headwater reach to reduce concentration of inflow at a single boundary location. This option is a strong candidate because headwater reaches are usually not distinct in DEM and inputting a large flow at the top can route to different locations. 

### ALT-C - At a Point on `Reach Start`
This alternative suggest simplest approach of one point at headwater `reach start`.

## Decision History
- 2026-02-02: Retroactively document current approach (ALT-B)
