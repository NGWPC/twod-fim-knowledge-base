## Description
Define how to derive the stage transfer line (STL) for lake and coastal reaches.

## Alternatives
### ALT-A - Line Intersection of Model Domain and Water Body Polygon
Use model domain bbox and water body polygon intersection directly as STL geometry

### ALT-B - Intersection of Model Domain and Water Body Polygon Boundary
#current 

This alternative converts the water body polygon into a polyline and then perform intersection with domain bbox. This will give a line geometry similar to WSEL contours in standard reaches.

![[DR-008-FIG-001.png]]

- ALT-B selected based on judgement
