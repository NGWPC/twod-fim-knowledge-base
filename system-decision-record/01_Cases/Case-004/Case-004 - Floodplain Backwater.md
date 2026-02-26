---
type: case
case_id: Case-004
title: Model Domain Example
date_observed: 2026-01-27
coordinates_4326: 44.48438,-73.14014
coordinates_5070: 1798555, 2602987
flows:
  - "2344"
tags:
  - case
  - domain
stream_orders:
  - "4"
river_names:
  - Winooski
location: Burlington, VT
---
## Description

 This site was selected because in the southern edge of the map, the Winooski River floodplain spills into a large overbank area.  This floodplain is relatively far from the stream centerline, and thus, gets clipped off by some automated domain creation methods.

![[01_Cases/Case-004/FIG-001.png]]



## Experiments

### [[EXP-005 - Run a Model with Domain Developed from Reach Divide]] for reach 30728

#### Decision Register:   e043d37

Notes:
 - Decision register was novel at this time. Register commit is approximate.

The reach divide was buffered 100 meters to yield the following domain.  The reach divide is shown in the black shaded area.
![[01_Cases/Case-004/FIG-003.png]]

Comparison to benchmark FIM from FEMA
![[01_Cases/Case-004/FIG-002.png]]

Using the divide for model domain development here led to [[ISU-006 - FIM cutting off arbitrarily at edges]]

> [!Error] Reject
> [[DR-011 - How to Determine Initial Model Domain]] > [[DR-011 - How to Determine Initial Model Domain#ALT-A - Buffer on Reach Divide|ALT-A - Buffer on Reach Divide]]
