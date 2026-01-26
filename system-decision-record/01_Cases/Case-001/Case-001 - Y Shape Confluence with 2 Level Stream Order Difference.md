---
type: case
case_id: Case-001
title: Y Shape Confluence with 2 Level Stream Order Difference
date_observed: 2026-01-22
coords: (1930357, 2289467) [EPSG:5070]
flows:
  - "500"
  - "6000"
tags:
  - case
  - confluence
  - stream-order
stream_orders:
  - "4"
  - "6"
---
# Case-001 - Y Shape Confluence with 2 Level Stream Order Difference

Hydrofabric IDs: [233242, 32423]
Coordinates: 1930357, 2289467 [EPSG:5070]

Stream Orders: 

![[Fig-001.png]]

## Description

- Confluence with stream-order mismatch appears sensitive to KWSE handling
- Y Shape provides a unique network geometry

## Experiments
### 1. [[03_Experiments/EXP-001 - KWSE Enforced FIM vs ND FIM|EXP-001 - KWSE Enforced FIM vs ND FIM]] on Reach 3463057

#### Issues

##### 1. [[04_Issues/ISU-001 - Lower WSEL towards the end of the Reach|ISU-001 - Lower WSEL towards the end of the Reach]]

Backwater matter for reach 21908.  See difference in depth between #ND run and #KWSE run. Notice how they are most apart at the #STL.    ![[Fig-002.png]]


> [!Error] Reject
> [[02_Decisions/DR-001 - KWSE Scenarios Should be Modeled|DR-001 - KWSE Scenarios Should be Modeled]] > [[02_Decisions/DR-001 - KWSE Scenarios Should be Modeled#ALT-B - For No Reach|ALT-B - For No Reach]]

## 2. [[EXP-002 - Run a Model with All Edges at Normal Depth]]

### Issues
#### 1. [[ISU-003 - Water Leaving the Domain At Non Outlet Locations]]
Water leaving at these places when it shouldn't

![[Fig-003.png]]

> [!Error] Reject
>[[DR-003 - Boundary Conditions along the Edge Cells]] > [[DR-003 - Boundary Conditions along the Edge Cells#ALT-A - Normal Depth at all Edges with Uniform Steep Slope]]


---
## Linked Decisions Summary Table

| Decision                                      | Alternative                                                        | Outcome | Evidence                                                                                                              |
| --------------------------------------------- | ------------------------------------------------------------------ | ------- | --------------------------------------------------------------------------------------------------------------------- |
| [[DR-001 - KWSE Scenarios Should be Modeled]] | [[DR-001 - KWSE Scenarios Should be Modeled#ALT-B - For No Reach]] | #Reject | [[#1. 04_Issues/ISU-001 - Lower WSEL towards the end of the Reach ISU-001 - Lower WSEL towards the end of the Reach]] |


