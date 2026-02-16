---
type: case
case_id: Case-009
title: Rural Unconfined Farm Fields
date_observed: 2026-02-11
coordinates_5070: 1070234,936890
coordinates_4326: 30.93866,-84.74584
flows:
tags:
  - case
  - rural
  - low-gradient
  - agriculture
stream_orders:
  - "3"
  - "1"
location: Brinson, GA
river_n:
  - Spring Creek
  - Dry Creek
---

![[01_Cases/Case-009/FIG-001.png]]
## Description

This site was chosen to explore model framework performance in the following settings
 - Small rivers
 - Rural, agriculture-dominated areas
 - Unconfined river corridor
 - Confluences

## Experiments

### [[EXP-009 - Run a Model Using Preliminary Methodology]]

`Decision Register` at: `unknown`

In the figure below, there are 10 NWM reaches modeled in the southwest part of Georgia along Spring Creek and Dry Creek. The site area contains flat, unconfined farmland topography. The draft community hydrofabric was used for reach delineations. Nine of the reaches are located along Spring Creek (22665 at the downstream to cat-22673 at the upstream), with one tributary (cat-22852) along Dry Creek. USGS Gage 02357000 is located along the mainstem and was used to determine the flows for the main reach. StreamStats was used to determine the flow for the tributary.

![[01_Cases/Case-009/FIG-002.png]]

Notes
 - The modeling workflow appears to generally work well for this small river. Special attention should be given, however, to ensuring Stage Transfer Lines fully cover lateral floodplain extents (see reach 22762)
 - Agriculture-dominated areas can present challenges for 2D hydraulic modeling due to complex drainage networks and floodplain flow patterns associated with ditches and berms. These issues were not observed at this site, so continued attention should be given in future modeling efforts to ensure such conditions are appropriately identified and addressed.
 - A common issue in 2D hydraulic modeling of unconfined rivers is that flood flows may inundate areas very far from the river centerline. These issues were not observed at this site, which indicates they may not be as prevalent as we originally foresaw. Continued attention should be given in future modeling efforts to ensure such conditions are appropriately identified and addressed.
 - The modeling workflow appears to generally work well for small river confluences. Special attention should be given, however, to ensuring Stage Transfer Lines fully cover lateral floodplain extents in the reach downstream of the confluence (see reach 22852)