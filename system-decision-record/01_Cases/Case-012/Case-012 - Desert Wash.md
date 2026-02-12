---
type: case
case_id: Case-012
title: Desert Wash
date_observed: 2026-02-12
coordinates_5070: -1681776,1777038
coordinates_4326: 37.49279,-115.34133
flows:
tags:
  - case
  - rural
  - unconfined
  - divergence
  - multithreaded
  - braided
  - wash
stream_orders:
  - "3"
  - "2"
  - "1"
location: Hiko, NV
river_n: Unnamed Wash
---
![[01_Cases/Case-012/FIG-001.png]]

## Description

This location was selected because desert wash morphologies behave very differently than typical riverine settings.  These areas are historically poorly modeled with 1D and HAND-based approaches but well modeled with 2D approaches. Despite the benefits of 2D modeling in these locations, complex interactions between adjacent reaches may still lead to issues when the strictly-dendritic hydrofabric network is used as a basis for model domain determination in these areas.

## Experiments

### [[EXP-009 - Run a Model Using Preliminary Methodology]]

`Decision Register` at: `unknown`

There were 8 reaches modeled along an unnamed desert wash near Hiko, Nevada. The reaches are located in the Pahranagat Valley and span approximately 10 miles, with multiple tributaries coming into the unnamed mainstem. The terrain at this site is steep. There is USGS Gage 09415600 located in basin 40133 just upstream of State Highway 374.

The gage upstream of State Highway 374 was used to determine discharges for the mainstem. For the tributaries, the StreamStats and USGS Methods for Estimating Magnitude and Frequency of Floods in the Southwestern United States was utilized to develop discharges. StreamStats does not calculate peak flow estimates for this area, so instead, StreamStats was used to determine drainage area and mean elevation values for each tributary catchment. USGS WSP 2433 was then used to predict design discharges from these watershed characteristics. The document does not contain regression equations for the 500-year flood, so the 100-year flows were run through all model domains to test a large inundation and the connection between basins. Reach slopes were determined from the model terrain.

| Reach | Drainage Area (sq mi) | Elev (ft)* | Reach Slope | 100-yr Flow (cms) | Source for Flows |
| ----- | --------------------- | ---------- | ----------- | ----------------- | ---------------- |
| 40133 | 17                    | N/A        | 0.03        | 71.2              | USGS Gage        |
| 40117 | 56.9                  | 5559       | 0.02        | 86                | USGS WSP 2433    |
| 40136 | 2.8                   | 6432       | 0.04        | 13.2              | USGS WSP 2433    |
| 40137 | 1.68                  | 6001       | 0.04        | 12                | USGS WSP 2433    |
| 40139 | 2.16                  | 6105       | 0.04        | 13.1              | USGS WSP 2433    |
| 40121 | 4.77                  | 5378       | 0.025       | 26.2              | USGS WSP 2433    |
| 40123 | 4.74                  | 5483       | 0.025       | 25                | USGS WSP 2433    |
| 40124 | 3.12                  | 5389       | 0.025       | 21                | USGS WSP 2433    |
![[01_Cases/Case-012/FIG-002.png]]

While the composite FIM looks reasonable in this location, it must be noted that several reaches spill out into adjacent reaches in this location.  In the image below, for example, flows from 40137 spill into the adjacent 40136.

![[01_Cases/Case-012/FIG-003.png]]
40136 also spills into 40137, but to a lesser degree.
![[01_Cases/Case-012/FIG-004.png]]

Similarly, reach 40124 spills into both reaches 40123 and 40117.
![[01_Cases/Case-012/FIG-005.png]]

These dynamics may have some impact on [[DR-012 - What Strategy to be used for Determining if Domain Should be Expanded]].

In 40133, there is a crossing for Highway 375, where the gage is located. In the USGS terrain, the culvert is not burned into the road berm terrain. This results in a backup of water upstream of the bridge and high depths. A terrain modification should be made to burn through the terrain and represent the culvert. The figure below shows the location of crossing (left), the USGS terrain with the highway crossing (middle) and the model results depth raster before the terrain is burned (right).  
![[01_Cases/Case-012/FIG-006.png]]

This example would good for experiments with [[DR-010 - How should DEM data be modified to enforce drainage through culverts]]