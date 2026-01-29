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

## Linked Cases Summary Table

| Alt | Case                                    | Link    | Reason                                                                     |
| --- | --------------------------------------- | ------- | -------------------------------------------------------------------------- |
| C   | [[Case-002 - Lake Reach]] | #Accept | Most realistic outflow and gives more control over downstream water level. |

## Decision History
