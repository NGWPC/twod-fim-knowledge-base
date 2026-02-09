## Description
Define how to derive the stage transfer line (STL) for regular reaches

## Alternatives
### ALT-A - D/S Reach Divide
### ALT-B - WSEL Contour From D/S FIM at `Reach Outlet`
#current 

One issue with this is that because the first WSEL Contour is in close proximity with the Inflow BC line we see [[ISU-008 - Water-surface Elevation Anomalies]] in that region and that's why we can see weird shape WSEL Contours, although does it even matter? Would even a weird shape be okay as STL? Similarly this issue might only be in flat areas which we might want to avoid per [[DR-027 - How do Deal with Flat Reaches]]


### ALT-C Perpendicular Line From D/S FIM at `Reach Outlet`
This is similar to ALT-B but here rather than WSEL contour (which can have anomalies) we will use develop perpendicular lines, these lines will be approximately perpendicular to FIM not the Reach. The success of this alternative depends if a good algorithm can be developed that can generate perpendicular lines for even complex FIMs not just simple cases.

![[DR-025 - FIG-002.png]]

### ALT-D Same Reach Largest ND Run's First WSEL Contour After `Reach Outlet` 
This would mean our STL would be shorter for KWSE runs. Is this a problem? Can we seed our run with STR.
The benefit of this is that the line is from a region where inflow BC effects are minimal.

In following picture, green is ND run, and blue is DS model, pink is KWSE run
![[DR-025 - FIG-001.png]]

## Decision History

- 2025-02-09: First selection of ALT-A based on judgement
- 2025-01-09: Switched to ALT-B because of failures of ALT-A