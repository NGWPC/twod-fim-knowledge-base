---
type: case
case_id: Case-015
title: Large River
date_observed: 2026-02-12
coordinates_5070: 716490,1679388
coordinates_4326: 37.87805,-87.75769
flows:
tags:
  - case
  - low-gradient
stream_orders:
  - "7"
location: Evansville, IN
river_n: Ohio River
---
![[01_Cases/Case-015/FIG-001.png]]
In the image above, the FEMA 100-year floodplain (cyan) is truncated on the western edge due to county boundaries.
## Description

This site was chosen because it is a large river with a wide floodplain.  This setting should provide a good testbed for automated domain creation methods.  Furthermore, this site was selected because there is surveyed bathymetric data in the area.

## Experiments

[[EXP-011 - Test Domain Creation Approaches Along a Larger River]]

`Decision Register` at: `unknown`

Changes:
 - Merge reaches into the following groups
	 - Group 1033949
	   ![[01_Cases/Case-015/FIG-002.png]]
	 - Group 1034767	   ![[01_Cases/Case-015/FIG-003.png]]
	 - Group 1037739
	   ![[01_Cases/Case-015/FIG-004.png]]
 - A buffer of 100 meters was used for Buffer on reach divide
 - A 50x multiplier on bankfull width was used for Buffer on Centerline

Examining [[DR-011 - How to Determine Initial Model Domain#ALT-A - Buffer on Reach Divide]]

The figure below shows the domains resulting from the first domain creation approach for each merged group.

![[01_Cases/Case-015/FIG-005.png]]

This approach appears to work okay for the upstream and downstream reaches, but not for the middle reach. The middle reach would exhibit [[ISU-006 - FIM cutting off arbitrarily at edges]] if modeled.  If the buffer were increased, the upstream and downstream domains would exhibit [[ISU-009 - Model Domain is Excessively Large]].  For these reasons, we reject ALT-A.

> [!Error] Reject
>[[DR-011 - How to Determine Initial Model Domain]] > [[DR-011 - How to Determine Initial Model Domain#ALT-A - Buffer on Reach Divide|ALT-A - Buffer on Reach Divide]]
>

Examining [[DR-011 - How to Determine Initial Model Domain#ALT-B - Buffer on Centerline]]

The calculated bankfull depth was 225 meters here. This led to a 11km buffer.

![[01_Cases/Case-015/FIG-006.png]]

These domains exhibit [[ISU-009 - Model Domain is Excessively Large]], and we therefore reject ALT-B.

> [!Error] Reject
>[[DR-011 - How to Determine Initial Model Domain]] > [[DR-011 - How to Determine Initial Model Domain#ALT-B - Buffer on Centerline|ALT-B - Buffer on Centerline]]


Examining [[DR-011 - How to Determine Initial Model Domain#ALT-C - Coarse Model FIM]]

Using a coarse model, the following domains were obtained.

![[01_Cases/Case-015/FIG-007.png]]

These domains seem appropriate.  Running coarse models will add complexity to the modeling pipeline.  Given this complexity, further analysis is needed before rejecting ALT-C.


[[EXP-012 - Assess the Impact to FIM Accuracy from Including and Excluding Below-LiDAR Bathymetry in Terrain Data]]

`Decision Register` at: `unknown`

Changes
 - [[EXP-009 - Run a Model Using Preliminary Methodology]] used instead of `decision register`
- ehydro data used for bathymetry

Examining [[DR-021 - How Should Below Water Topobathy be Accounted for#ALT-A - No handling]]

The plot below shows the results of EXP-012.  The colored labels on the y-axis correspond to AHPS action stages.  
![[01_Cases/Case-015/FIG-008.png]]

The figure shows that the model with bathymetry is significantly closer to the USGS surveyed stage-discharge rating curve.  Inaccuracy in the without bathymetry model is most stark in the lower-magnitude discharges.  This plot indicates that efforts to generate FIM without accounting for below-LiDAR bathymetry can yield highly inaccurate results and [[ISU-010 - Water-surface Elevations Higher than Benchmark FIM]]. We therefore reject ALT-A.

> [!Error] Reject
>[[DR-021 - How Should Below Water Topobathy be Accounted for]] > [[DR-021 - How Should Below Water Topobathy be Accounted for#ALT-A - No handling|ALT-A - No handling]]