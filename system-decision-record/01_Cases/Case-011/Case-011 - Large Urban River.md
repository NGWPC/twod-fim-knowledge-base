---
type: case
case_id: Case-011
title: Large Urban River
date_observed: 2026-02-11
coordinates_5070: 1776154.1,2110466.2
coordinates_4326: 40.215714,-74.770855
flows:
tags:
  - case
  - urban
  - structures
  - culverts
stream_orders:
  - "6"
  - "3"
location: Trenton, NJ
river_n: Delaware River
---
![[01_Cases/Case-011/FIG-001.png]]

## Description

This location was selected for two primary reasons
 - It serves as a testbed for larger rivers
 - The presence of several structures makes it suitable for assessing the impact of various strategies for handling culverts and bridges.

## Experiments

### [[EXP-004 - Run a model using current Decision Register methodology]]

`Decision Register` at: `unknown`

There were 7 reaches modeled along the Delaware River in Trenton, New Jersey. Four of the sites are located along the Delaware River mainstem (59722 at the downstream to 59725 at the upstream), with three reaches along a tributary Assunpink Creek. USGS Gage 01463500 was used to determine the flows for the mainstem. USGS Gage 01464000 was used to determine the flows for Assunpink Creek. Discharges for a 100-year event were run through all reaches to test a larger floodplain inundation and connection between basins.

![[01_Cases/Case-011/FIG-002.png]]
Notes:
 - Our proposed modeling framework performed well in this urban area, effectively capturing complex overland flow patterns and demonstrating the benefits of 2D modeling. No issues were found to directly stem from the area’s urban setting, indicating that the proposed modeling framework should not be limited in such environments.

During review of the terrain data for this site, we identified several locations where culverts had not been burned into the USGS 3DEP DEM. To evaluate the hydraulic significance of these structures, we manually incorporated estimated culvert geometry into a modified DEM and ran the same 100‑year discharge through both the original and corrected DEMs
![[FIG-003.jpeg]]

The comparison showed that including culvert geometry substantially reduced the backwater effects upstream of the structures, demonstrating that flow conveyance was being unrealistically restricted in the unburned DEM.  This is a case of [[ISU-010 - Water-surface Elevations Higher than Benchmark FIM]]. These results indicate that accurate representation of culverts is critical for FIM accuracy and strongly support enforcing structure burning during 2D FIM production.

![[FIG-004.jpeg]]


> [!Error] Reject
> [[DR-010 - How should DEM data be modified to enforce drainage through culverts]] > [[DR-010 - How should DEM data be modified to enforce drainage through culverts#ALT-A - Do nothing|ALT-A - Do nothing]]