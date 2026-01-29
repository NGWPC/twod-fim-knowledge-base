## Description
The neon green line here gets a very flat normal depth slope. The motivation here is that the waterbody that reach is draining into has levelpool so the reach should get flat slope, but we can't do 0 because that would make it close boundary condition.
![[EXP-003-FIG-001.png]]

## Methodology
1. Build a model following Decision Register for a Normal Depth run.
2. Change the boundary condition along edge cells that are intersecting with d/s FIM to a very flat slope.
3. Compare with Benchmark 