---
type: case
case_id: Case-002
title: Lake Reach
date_observed: 2026-01-27
coords: (1786548, 2606475) [EPSG:5070]
flows:
  - "2680"
tags:
  - case
  - waterbody
  - terminal-reach
stream_orders:
  - "4"
---
![[01_Cases/Case-002/Fig-001.png]]

## Description

- A riverine reach (30683) discharges into a lake

## Experiments
### 1. [[EXP-001 - KWSE Enforced FIM vs ND FIM]] on Reach 30683

#### Decision Register:
Current State: `git commit hash link`

Changes:
- In KWSE Run, the Edge Boundary  Conditions were used as STL.

#### Dicussion
Result for Normal Depth Run:
![[01_Cases/Case-002/Fig-002.png]]

Result for KWSE Run:
Because of the changes in methodology, the lake FIM is level, if we would have applied STL and had open cells at the edges the FIM would have had a slope from STL to the edges.
Because this is a lake, which would have levelpool, our changes in methodology does not make a difference in composite maps.
![[01_Cases/Case-002/Fig-003.png]]


 Based on the results above, it appears that there is not a large difference in the upstream floodplain based on the downstream boundary condition for this area.  In the downstream area, the ND and KWSE yield similar depths.

### 2. [[EXP-003 - Run a Model with Low Normal Depth Slope at Downstream FIM Informed Edge Cells]] on Reach 30683

#### Decision Register:
Current State: `git commit hash link`

Changes:

#### Discussion:
Compared to a benchmark FIM, depths were higher in the downstream areas. This indicates that water is not discharging sufficiently (fast enough) from the model domain and pooling at the edges. This is different than KWSE at edge cells, because in that case, the water would not pool beyond KWSE.
![[Fig-004.png]]

#### Issues:
##### 1. [[ISU-004 - Higher WSEL towards the downstream end of the Reach]]


> [!Error] Reject
>[[DR-005 - For Lake and Coastal Reaches What Downstream Boundary Conditions Should be Applied?]] > [[DR-005 - For Lake and Coastal Reaches What Downstream Boundary Conditions Should be Applied?#ALT-B - Only Low Normal Depth Slope|ALT-B - Only Low Normal Depth Slope]]





---
## Linked Decisions Summary Table

| Decision                                                                                         | Alternative                                                                                                                                                               | Outcome | Evidence                                                          |
| ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------- | ----------------------------------------------------------------- |
| [[DR-005 - For Lake and Coastal Reaches What Downstream Boundary Conditions Should be Applied?]] | [[DR-005 - For Lake and Coastal Reaches What Downstream Boundary Conditions Should be Applied?#ALT-B - Only Low Normal Depth Slope\|ALT-B - Only Low Normal Depth Slope]] | #reject | [[ISU-004 - Higher WSEL towards the downstream end of the Reach]] |

