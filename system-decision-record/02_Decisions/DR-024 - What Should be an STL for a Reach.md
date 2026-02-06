## Description
Define how to derive the stage transfer line (STL) for regular reaches

## Alternatives
### ALT-A - D/S Reach Divide
### ALT-B - D/S Reach First WSEL Contour
#current 

- One issue with this is that because the first WSEL Contour is in close proximity with the Inflow BC line we see [[ISU-008 - Water-surface Elevation Anomalies]] in that region and that's why we can see weird shape WSEL Contours, although does it even matter? Would even a weird shape be okay as STL? Similarly this issue might only be in flat areas which we might want to avoid per [[DR-026 - How do Deal with Flat Reaches]]

![[01_Cases/Case-007/FIG-006.png]]


### ALT-C D/S Reach FIM Informed Perpendicular Lines
This can eliminate WSEL anomalies in flat areas 

![[DR-024 - FIG-002.png]]


### ALT-D Same Reach Largest ND Run's First WSEL Contour After `Reach Outlet` 
This would mean our STL would be shorter for KWSE runs. Is this a problem? Can we seed our run with STR.
The benefit of this is that the line is from a region where inflow BC effects are minimal.

In following picture, green is ND run, and blue is DS model, pink is KWSE run
![[DR-024 - FIG-001.png]]