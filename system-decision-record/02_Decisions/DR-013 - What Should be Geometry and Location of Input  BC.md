## Description
We need to provide flow as input boundary condition to the model domain. What should be the geometry and location of input boundary condition?

## Alternatives

### ALT-A - At Perpendicular Line Some Distance Away on Highest Drainage Area `Upstream Reach`
#current

Apply line inflow on the highest-drainage upstream reach some distance from the target reach start, aligning inflow with dominant upstream conveyance.

Green reach is being modeled.
![[DR-013-FIG-001.png]]
### ALT-B - At Perpendicular Lines Some Distance Away on All `Upstream Reaches` with Weighted Flow by Drainage Area
This alternative distributes inflow across multiple upstream reaches with drainage-area weighting so tributary contributions are represented explicitly.

Green reach is being modeled.
![[DR-013-FIG-002.png]]

### ALT-C - At Points Distributed Along the Reach
This option spreads inflow across multiple points along the reach, which can reduce single area concentration but requires additional placement rules in automation.

Green reach is being modeled.
![[DR-013-FIG-003.png]]

### ALT-D - At Point Some Distance Away on the `Upstream Mainstem Reach`
This option applies one point on the `upstream mainstem reach` some distance away from `reach start`.

Green reach is being modeled.
![[DR-013-FIG-004.png]]

| Case | Outcome | Reason |
| --- | --- | --- |
| [[Case-006 - Mid-sized River]] | #reject | [[ISU-008 - Water-surface Elevation Anomalies]] |

### ALT-E - A Point at the `Reach Start`
This option is the simplest point-based setup at reach start, but it is more susceptible to concentrated inflow artifacts in larger channels.

Green reach is being modeled.
![[DR-013 - FIG-006.png]]

| Case | Outcome | Reason |
| --- | --- | --- |
| [[Case-006 - Mid-sized River]] | #reject | [[ISU-008 - Water-surface Elevation Anomalies]] |

### ALT-F - At Perpendicular Line at the `Reach Start`
This option is similar to ALT-E but uses line instead of point.

Green reach is being modeled.
![[DR-013-FIG-005.png]]

## Decision History
- 2026-02-02: Retroactively document current approach (ALT-A)
