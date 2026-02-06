---
type: case
case_id: Case-007
title: Domain Expansion
date_observed: 2026-02-05
coords: (1633164, 2293585) [EPSG:5070]
flows:
  - "4240"
tags:
  - case
  - domain
stream_orders:
  - "6"
---

![[01_Cases/Case-007/FIG-001.png]]

## Description

- Discharges from FEMA BLE in this area

| Reach | Drainage Area (sq mi) | Reach Slope | 10-yr Flow (cms) | 100-yr Flow (cms) | 500-yr Flow (cms) |
| --- | --- | --- | --- | --- | --- |
| Chenango River | 1610 | 0.001 | 1100.8 | 1719.9 | 2208.5 |
| Susquehanna River (US) | 2280 | 0.0012 | 1379.7 | 2019.5 | 2476.1 |
| Susquehanna River (DS) | 3900 | 0.0012 | 2276.7 | 3403.9 | 4239.7 |
| Park Creek (tributary) | 3.54 | 0.02 | 17.1 | 28.8 | 37.7 |

## Experiments

### [[EXP-007 - Run a Model and Review Impacts of Various Edge Pooling Acceptability Criteria]] on reach 3250307
#### Decision Register: [12d9eb9](https://github.com/NGWPC/twod-fim-knowledge-base/commit/12d9eb96020e737ee64052d7e163c7c54278ee80)

The image below shows the 500-year floodplain extents in cyan.  The black pixels denote areas where the DEM value is less than the DEM value at the `reach outlet`

![[01_Cases/Case-007/FIG-002.png]]

According to [[DR-012 - What Strategy to be used for Determining if Domain Should be Expanded#ALT-B - Informed by Elevation]], this model would trigger [[ISU-009 - Water pooling on model edge]].  The black area is very limited in extent as you move to the west (downstream).  DEM data was retrieved for the downstream area and compared with FEMA Zone A information (100-year floodplain).  By 12 reaches (34 km) downstream, the 100-year floodplain was contained within the black "acceptable pooling" area.  Several more reaches downstream would likely be needed to contain the 500-year flood as modeled above. ALT-B would therefore lead to an very large domain for this reach.  Such a large reach would lead to inefficient modeling.

![[01_Cases/Case-007/FIG-009.png]]

Furthermore, ALT-B does not provide any criteria to allow water along the upstream boundary. ALT-B would therefore continue expanding the model domain upstream for a large distance.

Turning to [[DR-012 - What Strategy to be used for Determining if Domain Should be Expanded#ALT-C - Informed by Water-Surface Elevation]], the black mask once again shows areas that fit the valid pooling edge criteria.

![[01_Cases/Case-007/FIG-003.png]]

Under ALT-C, model expansion would be triggered on both the eastern and western domain edges.

The model was bumped out by 600 meters to the west and 1,750 meters to the east and re-run.   The black mask once again shows areas that fit the valid pooling edge criteria under ALT-C.

![[01_Cases/Case-007/FIG-004.png]]
Here, the floodplain is completely in the black at the edges near the `reach outlet`, so no expansion would be triggered. 

At the upstream end, the inflow boundary is raising water surface elevations near the inflow line (see the black circle at the `reach start` of 3250307.  Also see [[ISU-008 - Water-surface Elevation Anomalies]]). All upstream edges are showing WSE lower than the `reach start` WSE, so the upstream end would trigger a domain expansion.  This domain is already quite large, and the flooding in these upstream areas should be modeled by 3250344 and 3250383 instead of 3250307.  For this reason, we reject ALT-C.

For this model, we also applied [[DR-012 - What Strategy to be used for Determining if Domain Should be Expanded#ALT-E - Informed by Smoothed Water-Surface Elevation]].  The WSE grid was smoothed using the same smoothing algorithm currently used to generate Stage Transfer Lines.  This approach leads to slightly better model edges.  Notably, the mainstem channel inundation would no longer trigger domain expansion.  That said, this approach would still trigger domain expansion from the flooding in the ponding area to the north.  This does not reject ALT-E, but more testing is needed.

![[FIG-010.png]]

Below, we return to the initial run to examine [[DR-012 - What Strategy to be used for Determining if Domain Should be Expanded#ALT-D - Informed by Stage-Transfer Lines]].  In the image below, the blue polygon is the 500-year floodplain, and the black lines represent WSE contours every 0.01 meters.  The green and black lines are estimates of what a Stage Transfer Line derived from the contours might look like.

![[01_Cases/Case-007/FIG-005.png]]
The floodplain would then be clipped by the Stage Transfer Lines.
![[01_Cases/Case-007/FIG-006.png]]
The central floodplain is still touching some edges (red lines above), so an expansion is triggered.

The image below shows the same expanded domain as described earlier along with WSE contours at 0.01 meter frequency.

![[01_Cases/Case-007/FIG-007.png]]
Clipping the inundated area with the Stage Transfer Lines yields the image below.

![[01_Cases/Case-007/FIG-008.png]]
With no clipped floodplain cells touching the domain edge, this would not trigger a domain expansion.  These results relied on hand-drawn Stage Transfer Lines, so the success of ALT-D depends on whether an automated Stage Transfer Line approach could yield similar results.


---
## Linked Decisions Summary Table

| Decision | Alternative | Outcome | Evidence |
| --- | --- | --- | --- |
| [[DR-012 - What Strategy to be used for Determining if Domain Should be Expanded]] | ALT-B | #reject | [[ISU-009 - Water pooling on model edge]] |
| [[DR-012 - What Strategy to be used for Determining if Domain Should be Expanded]] | ALT-C | #reject | [[ISU-009 - Water pooling on model edge]] |


