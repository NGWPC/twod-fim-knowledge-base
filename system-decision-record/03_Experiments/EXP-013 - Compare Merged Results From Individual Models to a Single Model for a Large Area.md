## Description

Our methodology assumes that 2D models may be run at the reach scale and stitched together in a way that yields the same results as a single 2D model would yield for that larger area. This experiment tests whether that assumption is reasonable and quantifies how much difference can be expected between merged small models and a larger model under ideal conditions. 

## Methodology
1. Select an analysis location with at least two reaches (although more reaches are encouraged).
2. Generate AEP discharges using regression equations for all reaches that will not have a modeled reach upstream of them. Ex. 100 year discharge using a USGS regression equation.
3. Working downstream from those reaches, sum the discharges from all tributary reaches for each reach that does not have a regression discharge. This should yield approximate AEP discharges at all reaches.
4. Generate models for all reaches using the current Decision Register methodology and run the calculated discharges through the models (starting from most downstream and working upstream). Make sure to run the models for a long enough time that they reach steady state conditions.
5. Take the bounding box of all reach model bounding boxes and set up a model for this domain. From here on, we refer to this as the "single model"
6. Set up a run for the single model.  Apply the downstream boundary condition from the most downstream reach model and apply inflows at each of the inflow boundary conditions of reach models that have no reach models upstream of them.
7. Execute the single model run until quasi steady state conditions are reached.
8. Create a pixel-wise max mosaic of all reach model depth FIMs.
9. Subtract the merged reach depth FIM from the single model depth FIM to obtain a raster of depth differences.
10. Summarize these results using summary statistics and maps of your choosing.