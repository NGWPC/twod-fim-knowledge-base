## Description
Define whether KWSE scenarios should be modeled for all reaches or only selected reaches.

This decision establishes whether downstream-stage-aware scenarios are always represented in the library rather than treated as optional special cases.
## Alternatives
### ALT-A - For All Reaches
#current

Model KWSE scenarios for all reaches so downstream-stage sensitivity is represented consistently across the national library.

### ALT-B - For No Reach
This option reduces library size and modeling effort significantly, but it assumes downstream-stage variability can be ignored in all reaches.

| Case | Outcome | Reason |
| --- | --- | --- |
| [[Case-001 - Y Shape Confluence with 2 Level Stream Order Difference Near Coast]] | #reject | [[ISU-001 - Lower WSEL towards the end of the Reach]] |

## Decision History
- 2026-01-22: Initial decision based on Case-001 evidence
