---
type: case
case_id: Case-008
title: Very Wide Floodplain
date_observed: 2026-02-09
coordinates_5070: 449756,1201331
coordinates_4326: 33.74552,-91.13034
flows:
tags:
  - case
  - domain
stream_orders:
  - "10"
location: Rosedale, MS
river_n: Mississippi
---

![[01_Cases/Case-008/FIG-001.png]]
## Description

This site was chosen because it has a very wide floodplain. In this area of the Mississippi River, the floodplain width ranged from 12-22 km.  Such a wide floodplain will likely present an edge case for several components of our methodology.

## Experiments

### [[EXP-008 - Compare Model Domain to National Flood Hazard Layer (NFHL)]]

Examining [[DR-012 - What Strategy to be used for Determining if Domain Should be Expanded#ALT-F - Informed by Water-Surface Elevation with 4,000 Meter Expansion Limit]]

With a maximum domain size of 4,000 meters, the initial domain would need to be 18 kilometers for this site. While this is possible depending on the ALT selected in [[DR-011 - How to Determine Initial Model Domain]], it is not likely. For that reason, we tentatively reject ALT-F

> [!Error] Reject
> [[DR-012 - What Strategy to be used for Determining if Domain Should be Expanded]] > [[DR-012 - What Strategy to be used for Determining if Domain Should be Expanded#ALT-F - Informed by Water-Surface Elevation with 4,000 Meter Expansion Limit|ALT-F - Informed by Water-Surface Elevation with 4,000 Meter Expansion Limit]]

Examining [[DR-012 - What Strategy to be used for Determining if Domain Should be Expanded#ALT-G - Informed by Water-Surface Elevation with Regression Expansion Limit]]

According to the Bieger et al., (2015) regression equation for the USA, bankfull width for this site is 500 meters.  Multiplying that width by 50, as described in ALT-G, would lead to an acceptable model domain.  ALT-G is recommended for use.