## Description
For these reaches, the standard WSE transfer approach might not apply.  These reaches will, however, need some area to discharge floodwaters.  

How these conditions should be defined?

## Alternatives
### ALT-A - Only Reach Normal Depth Slope

Set the boundary condition along that line to the reach slope.
This is non-ideal because reach slopes are often very different from level pools at waterbodies and coasts.
### ALT-B - Only Low Normal Depth Slope

Same as ALT-A, but uses a very low normal depth slope (ex. 10e-6).  

As slope approaches 0, Qout will approach 0.  Therefore this boundary condition will often behave similarly to a closed boundary.

### ALT-C - Both KWSE and Reach Normal Depth Slope
#current

Same as ALT-A, but uses a range of reasonable depths from downstream FIM.
This has advantage that a lake or coastal reach doesn't get any special treatment

## Linked Cases Summary Table

| Alt | Case | Link | Reason |
| --- | --- | --- | --- |
| B | [[Case-002 - Lake Reach]] | #reject | [[ISU-004 - Higher WSEL towards the downstream end of the Reach]] |

## Decision History
- 2026-01-27: Started with Alt C Selection
- 2026-01-27: Rejected ALT-B based on ISU-004 evidence from Case-002.
