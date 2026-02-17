## Description
![[DR-009-FIG-001.png]]

This decision decide if Stage transfer should take place at model domain bbox, at `Reach Outlet` or as a region where domain intersect with D/S FIM. Placement of this condition strongly affects transition-zone WSEL behavior and FIM alignment between reaches.

## Alternatives

### ALT-A - At Model Domain Edge Cells that Inetersects D/S Reach FIM
At the intersection of model domain bbox and D/S Reach FIM. This has benefit that there will be no transition zone. 
This would cause sudden floodplain width increase if there is a big flow increase from upstream to downstream. (See picture in description. We still need to back it by evidence.)

### ALT-B - At `Reach Outlet`
#current 

Apply stage transfer at the `reach outlet` as a Line, called `STL`. See [[DR-025 - What Should be the Geometry of STL]] for further specifications.

### ALT-C - At the Intersection of Domain and D/S FIM 
Apply stage transfer across the whole region rather than a single line. 

This is making model unstable because of large number of pixels with forced WSEL.

## Decision History
- Started with ALT-B based on experience and judgement
