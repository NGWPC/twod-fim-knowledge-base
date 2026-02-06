## Description

Run a model using the methodology as described in the Decision Register. Once the model is run, apply several different criteria to determine if edge pooling is at an acceptable level.  Record how far the model domain would expand under each criteria.

## Methodology
1. Build a model following Decision Register methodology.
2. Run the 500-year discharge through the model.
3. Check whether the following criteria trigger
	1. Wetted edge cells have higher ground elevation than the ground elevation at the `reach outlet`'
	2. Wetted edge cells have higher water-surface elevation (WSE) than the WSE at the `reach outlet` and lower WSE than the WSE at the `reach start`
	3. Wetted edge cells are in the floodplain area between upstream reach's STL and STL to downstream reach.
4. If any criteria trigger, expand the model out some distance along that edge and return to step 2