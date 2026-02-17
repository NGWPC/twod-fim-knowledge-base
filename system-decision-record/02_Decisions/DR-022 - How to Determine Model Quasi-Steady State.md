## Description
This modeling approach is built around an assumption of 2D steady flow conditions, meaning that  inflow equals outflow, and outflow does not much change with time. Criteria will need to be established to determine when inflows have balanced outflows and water surface elevations across the model are relatively stable.

## Alternatives

### ALT-A Check Qin ~ Qout at Frequent Intervals
Determine quasi-steady behavior using repeated checks that inflow and outflow are approximately balanced over the simulation horizon.

### ALT-B Check WSEL Raster has Stabilized Between Different Time Steps
#current 

Determine quasi-steady behavior using stabilization of WSEL rasters between different time intervals as the primary termination signal.

## Decision History
- Started with ALT-A 
- Switched to ALT-B because ALT-A remains no longer valid when KWSE boundary condition is used in LISFLOOD-FP as this condition introduce its own Qin.
