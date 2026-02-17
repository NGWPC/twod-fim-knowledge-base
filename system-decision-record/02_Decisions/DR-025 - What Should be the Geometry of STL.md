## Description
Define how to derive the stage transfer line (STL) for regular reaches.

This decision is only valid if [[DR-009 - Where to Apply Stage Transfer Condition]] has [[DR-009 - Where to Apply Stage Transfer Condition#ALT-B At `Reach Outlet`|ALT-B At `Reach Outlet`]] selected.
## Alternatives
### ALT-A - D/S Reach Divide
Define STL using downstream reach divide geometry.

### ALT-B - WSEL Contour From D/S FIM
#current 

Create a WSEL Contour from D/S FIM and use it as `STL`. One issue with this is that this WSEL Contour will be in close proximity with the Inflow BC line of D/S model, we will see [[ISU-008 - Water-surface Elevation Anomalies]].

It should be evaluated that does it even matter if WSEL contour is irregular shape?  Similarly this issue might only be in flat areas which we might want to avoid per [[DR-027 - How to Deal with Flat Reaches]]

### ALT-C Perpendicular Line From D/S FIM
This is similar to ALT-B but here rather than WSEL contour (which can have anomalies) we will use develop perpendicular lines, these lines will be approximately perpendicular to FIM not the Reach. The success of this alternative depends if a good algorithm can be developed that can generate perpendicular lines for even complex FIMs not just simple cases.

![[DR-025 - FIG-002.png]]

### ALT-D Same Reach Largest ND Run's WSEL Contour
This alternative suggest to draw STL from WSEL contour of the same reach FIM using largest normal depth run. This would mean the STL would be shorter for KWSE runs but it needs to be tested if that is a problem. 

The motivation of this approach is that this contour line will be from downstream region of a FIM where inflow BC effects are minimal.

In following picture, green is ND run, and blue is DS model, pink is KWSE run
![[DR-025 - FIG-001.png]]

## Decision History

- 2025-02-09: First selection of ALT-A based on judgement
- 2025-01-09: Switched to ALT-B because of failures of ALT-A
