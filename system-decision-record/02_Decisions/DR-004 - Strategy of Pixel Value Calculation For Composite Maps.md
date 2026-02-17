## Description
What should be the strategy to create composite map from individual reaches. What pixel value should a composite map pixel adopt in overlap zones.

## Alternatives
### ALT-A - Downstream Map at Bottom, Upstreams at Top (Higher Stream Orders at Top )
Place downstream rasters beneath upstream rasters so overlap precedence favors upstream maps.


### ALT-B - Upstream Maps at Bottom, Downstream at Top
This alternative prioritizes downstream rasters in overlap areas by layering them above upstream rasters

### ALT-C - Maps Clipped. `Common Outlet Reaches` Maps at No Particular Order
This option clips maps prior to compositing so each reach contributes only within constrained extents and overlap conflicts are reduced.

### ALT-D - Pixelwise Max
#current
Resolve overlaps by assigning the maximum depth value per pixel so compositing is deterministic and independent of draw order.


## Decision History
- Started with ALT-B as this is current method with Ripple1D libraries
- Switched to ALT-D as it was realized that 2D Maps will have overlap with transition zones that are incorrect, unlike Ripple1D which have no transition zones. Clipping 2D map would be a significant challenge. 
