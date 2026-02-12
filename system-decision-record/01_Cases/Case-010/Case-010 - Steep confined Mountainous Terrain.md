---
type: case
case_id: Case-010
title: Steep confined Mountainous Terrain
date_observed: 2026-02-11
coordinates_5070: -915338,1776607
coordinates_4326: 38.56847,-106.61573
flows:
tags:
  - case
  - steep
  - high-gradient
  - rural
stream_orders:
  - "4"
  - "1"
location: Quartz, CO
river_n: Quartz Creek
---
![[01_Cases/Case-010/FIG-001.png]]

## Description

This location in the central part of Colorado near the San Isabel National Forest was selected for its steep topography and numerous tributaries.

## Experiments

### [[EXP-004 - Run a model using current Decision Register methodology]]

`Decision Register` at: `unknown`

There were 13 reaches modeled along Quartz Creek using the draft community hydrofabric. Six of the reaches are located along the Quartz Creek mainstem (18585 at the downstream to 18590 at the upstream). There are five headwater reaches (18642, 18643, 18644, 18601, 18619) and two tributary reaches that are not headwaters (18640 and 18602). USGS Gage 09118000 is located along the mainstem and was used to determine discharges in the mainstem. StreamStats was used to determine discharges for the tributaries. The 500-year discharges were run through all domains to test a larger floodplain inundation and connection between basins.

![[01_Cases/Case-010/FIG-002.png]]
![[01_Cases/Case-010/FIG-003.png]]
![[01_Cases/Case-010/FIG-004.png]]
Notes
 - No issues relating to this site steepness appeared to negatively impact generated FIMs. This suggests that our modeling framework should work well in areas of high relief.
 - The modeling workflow appears to generally work well for small rivers. Special attention should be given, however, to ensuring Stage Transfer Lines fully cover lateral floodplain extents
