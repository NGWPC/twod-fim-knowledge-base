## Description

Conventional LiDAR systems cannot measure bathymetric data below the water surface at time of flight. In some rivers and during some flight conditions, this section channel geometry can represent a significant proportion of channel conveyance. By not accounting for below-LiDAR bathymetry, depth predictions may be highly inaccurate.  This test examines the impacts of below-LiDAR bathymetry representation at a given site on the FIM produced for that site.

## Methodology
1. Select an analysis location with a USGS gage and surveyed stage-discharge rating curve data available.
2. Follow the current `decision register` for model creation.  Ideally multiple reaches will be modeled downstream of the analysis reach to reduce the impact of downstream boundary condition choice.
3. Create two terrains, one using DEM data without bathymetry included and one with surveyed bathymetry burned in.  [eHydro](https://www.arcgis.com/apps/dashboards/4b8f2ba307684cf597617bf1b6d2f85d) is useful for this step.
4. Perform a flood frequency analysis at the gage to determine a range of discharges to model.  Alternatively, use the range of discharges available in the surveyed stage-discharge data.
5. Model all discharges for the with-bathymetry terrain.  Calibrate the model by adjusting roughness values such that the modeled stage-discharge rating curve matches the surveyed one well.
6. Apply the calibrated roughness data to the without-bathymetry terrain, and record the resulting stage-discharge rating curve.
7. Compare how well the two modeled curves match the surveyed curve.
8. Compare to FEMA data, if available.