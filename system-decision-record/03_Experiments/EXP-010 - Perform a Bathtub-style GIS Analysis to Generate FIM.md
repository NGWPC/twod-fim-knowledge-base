## Description

In flat areas where fluvial dynamics are not at plat, inundation extents may be easily determined by mapping a fixed water surface elevation over a defined domain.  Examples where this may be useful include coastal areas, lakes, reservoirs, and other large waterbodies.

## Methodology
1. Define the area of interest.
2. Identify low and high water-surface elevations, and create a grid of elevations to map at a specified interval between those bounds.
3. Download terrain for the area of interest.
4. For each elevation from the elevation grid, define the FIM extents as cells between the minimum water-surface elevation and the current elevation.  Export this mask as the categorical FIM.  If depths are needed, subtract DEM values from the current elevation and subset to the masked area.