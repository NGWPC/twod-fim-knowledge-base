---
type: case
case_id: Case-019
title: River IslandReach Sensitive to Normal Depth Slope
date_observed: 2026-07-07
coordinates_5070: 1254687,1914468
coordinates_4326: 39.390366,-81.242451
flows:
tags:
  - case
  - divergence
stream_orders:
  - "8"
location: Belmont, WV
river_n: Ohio River
---
![[01_Cases/Case-019/FIG-001.png]]

## Description

This site was chosen because the Reaches here are sensitive to normal depth slope. We also have a 1D RAS model from RFC for this area. We also have topobathy data for this area. This case will be useful for evaluating mosaicing capabilities of a system.

![[01_Cases/Case-019/FIG-002.png]]
Above picture shows that what happen if flat normal depth slopes with [[DR-032 - What Should be the Lower and Upper KWSE Bound for Each Reach for Each Discharge]] > [[DR-032 - What Should be the Lower and Upper KWSE Bound for Each Reach for Each Discharge#ALT-A - Same as D/S Reach Max and Min STL WSEL but Lower Bound Floored by Reach's Normal Depth WSEL at STL|ALT-A]] are used in Ripple1D setting, the downstream reach 15434040 has upstream WSEL of 632 feet but the upstream reach 15434024 had normal depth slope d/s cross section WSEL for same flow 290,000 cfs to be 639.7 feet. This is because scenarios with d/s KWSE lower than 639.7 was not performed because of floor limitation in Ripple1D at the time of this experiment.

![[FIG-003.png]]

![[01_Cases/Case-019/FIG-004.png]]
## Experiments

