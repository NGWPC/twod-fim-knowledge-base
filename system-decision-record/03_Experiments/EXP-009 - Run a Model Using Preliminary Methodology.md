## Description

Prior to implementation of the `Decision Register`, cases were run using a consistent methodology.  That methodology is described below.

## Methodology
1. Select a reach to model from the draft community hydrofabric flowpaths layer.
2. Extract the following geometries from the draft community hydrofabric
	1. Reach centerline
	2. Upstream reach centerline
	3. Reach divide
	4. All upstream divides - walk the network upstream until no walked reach divides intersect the reach divide.  Merge all the selected upstream divides.
	5. All downstream divides - walk the network downstream until no walked reach divides intersect the reach divide.  Merge all the selected downstream divides.
3. Create an inflow boundary line - Interpolate a point 25% up the upstream centerline.  Place a line perpendicular to the centerline and passing through this point with a user-defined width (default 100 meters)
4. Create a reach domain - Take the union of the reach divide and inflow boundary line, create a bounding box on the union, and buffer the bounding box by a user-defined amount (default 100 meters).
5. Develop design discharges - Use any of the following methods.
	1. Find a USGS gage along the modeled river.  Plug the id into https://hydroshift.dewberryanalytics.com/ and extract the flood frequency curve from the Log-Pearson Type III analysis.  Convert from cubic feet per second to cubic meters per second.
	2. Use https://streamstats.usgs.gov/ss/ to develop design discharges for an ungaged location from a regression equation.
	3. Use FEMA FIS data from the [map service center](https://msc.fema.gov/portal/advanceSearch) or BLE data.
6. Download topographic data for the reach domain at 10 meter horizontal resolution from [USGS 3DEP](https://prd-tnm.s3.amazonaws.com/StagedProducts/Elevation/13/TIFF/USGS_Seamless_DEM_13.vrt)
7. Download land cover data for the reach domain at 10 meter horizontal resolution from [NLCD](https://www.mrlc.gov/geoserver/mrlc_download/wms).  Translate these values to Manning's n using [[DR-019 - What Source Surface Roughness Data Should be Used for Modeling#ALT-A - National Land Cover Dataset converted to Manning's n]]
8. Record the reach centerline slope from either the hydrofabric attributes or measuring the DEM.
9. Create a new run for the largest design discharge available.
	1. Place inflows at the inflow boundary condition with a QFIX boundary condition.
	2. Place a normal depth boundary condition along the reach domain edge clipped to the the "all downstream divides" geometry.  
	3. If a downstream model is available for the same event, transfer water surface elevations from that model to the modeled reach along the  "all downstream divides" geometry clipped to the reach domain. This is the Stage Transfer Line.
	4. Guess at a good simulation duration (default 3,600 seconds)
10. Execute the run
11. Check model validity
	1. Does the floodplain extend from the inflow to the outlet?  If not, re-run with longer simulation duration.
	2. Does the domain clip off the floodplain where it shouldn't?  Bump out the domain and re-run.
	3. Does the Stage Transfer Line cover the full lateral extents of the floodplain?  If not, modify the line and, if necessary, the domain such that it does and re-run.
	4. Are any other issues present and addressable?  Document them, address, and re-run.
12. Record final FIM, and run additional design discharges as necessary.
13. Compare results to reference FIM.