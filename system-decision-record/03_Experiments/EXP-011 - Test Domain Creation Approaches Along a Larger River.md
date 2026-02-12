## Description

Along larger rivers, floodplains will often be larger than hydrofabric flowpaths are long. This presents challenges to some automated domain creation methods. This experiment is intended to develop acceptable domains for comparison to automated approaches.

## Methodology
1. Use a reference FIM to merge short reaches to a reasonable degree along the river.
2. Buffer on reach divide
	1. Merge the hydrofabric divides for each reach in a merged segment.
	2. Buffer the domains by a user-defined amount.
	3. Take the bounding box of this geometry as the model domain.
3. Buffer on Centerline
	1. Use the equation below to obtain an estimated bankfull width for the river.  This equation is from [ex. Bieger et al., 2015](https://onlinelibrary.wiley.com/doi/abs/10.1111/jawr.12282) . bkf is bankfull width in meters, and DA is upstream drainage area in square kilometers.
$$
	   bkf=2.7*{DA}^{0.352}
$$
	2. Multiply the bankfull width by a user-defined amount, and buffer the merged reach centerlines by that amount.
	3. Take the bounding box of this geometry as the model domain.
4. Coarse Model FIM
	1. Run a coarse model for the area using the largest expected discharge.
	2. Use the extents of that floodplain for the model domain.
5. Qualitatively compare the reasonableness of each approach to domain creation and consider automation dynamics.