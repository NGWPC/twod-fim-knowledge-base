## Description
What should be the boundary condition along the edge cells i.e. along the bounding box.

Boundary Condition Choices Available:
1. Close / No Boundary Condition - Water pools at the edges
2. Normal Depth - Water escapes the domain at provided slope
3. Freefall - Water falling off of a cliff with no resistance

## Current Selection


## Alternatives
### ALT-A - Normal Depth at all Edges with Uniform Steep Slope
Water would leave the domain at normal depth slope whenever it hit the edges.

##
### ALT-B - Normal Depth at all Edges with Tailored Slope
Slope calculated for each edge cell.

### ALT-C - D/S Model FIM Informed Edge Cells get Reach Centerline Slope
#current
![[DR-003-Fig-001.png]]



## Linked Cases Summary Table

| Alt | Case                                                                   | Link    | Reason                                                |
| --- | ---------------------------------------------------------------------- | ------- | ----------------------------------------------------- |


## Decision History
- Initially assumed started with Alt-A
- Switched to Alt-C