## Description
Define what stage transfer line (STL) will be used for different runs of an upstream model.
## Alternatives
### ALT-A - 1 STL Per Reach From Largest Model Run
#current 
The same STL, derived from largest run, will be used across all KWSE runs.

Temp image showing that 1 STL for all runs mean the shape of STL is not perpendicular when d/s reach is not flowing at maximum discharge.
![[DR-026 - FIG-001.png]]
### ALT-B - STL Derived Separately during each run
Regenerate STL for each run so STL geometry adapts to run specific FIM, at the cost of indexing and automation complexity.

## Decision History
- 2026-02-09: First selection of ALT-A based on discussion among group
