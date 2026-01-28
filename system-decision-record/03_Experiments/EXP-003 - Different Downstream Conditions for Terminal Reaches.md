## Description
Test alternatives for DR-005 in Case-002
## Methodology
1. Create inflow bc 25% up next u/s reach w/ width 100m
2. Create a model domain using bbox on divide and bc line
3. Set inflow to Q500 (DA regression) = 2380 cms
4. Make outflow geometry
	1. Debuffer bbox 1 cell resolution
	2. Clip to waterbodies layer from NHDPlus
5. For downstream "model", rasterize waterbody layer as 0.5 meters of pseudo-depth and create a fake model with that as run_id-000.wd
6. Build runs
	1. Reach slope normal depth at outflow
	2. Slope of 0.000001 at outflow
	3. Known water surface from d/s model connection at outflow
7. Run models
8. Compare FIM