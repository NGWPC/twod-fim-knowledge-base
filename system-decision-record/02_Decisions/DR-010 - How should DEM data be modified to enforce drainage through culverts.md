## Description
Large bridges are generally removed from DEMs, but many smaller culverts remain as flow obstructions in the terrain, how enforce drainage through these DEM humps?

## Alternatives

### ALT-A - Do nothing
#current

This alternative proposes using DEM as is without modifying it at all. This approach is somewhat justified, since the functioning of each individual culvert cannot be guaranteed during a flood event. 

| Case | Outcome | Reason |
| --- | --- | --- |
| [[Case-003 - Small culverts]] | #reject | [[ISU-005 - Divergent flowpath]] |
| [[Case-011 - Large Urban River]] | #reject | [[ISU-010 - Water-surface Elevations Higher than Benchmark FIM]] |

### ALT-B - AGREEDEM
The AGREEDEM workflow could be applied here to burn trapezoidal channels into the area around stream centerlines and enforce drainage through culverts.
https://web.pdx.edu/~jduh/courses/geog493f09/Students/W8_AGREE_ScottParker.pdf

### ALT-C - Burn streams into DEM at roads
This alternative burns stream paths through road crossings so blocked cells are lowered and flow continuity through likely culvert locations is preserved.

https://www.whiteboxgeo.com/manual/wbt_book/available_tools/hydrological_analysis.html?highlight=burnstreams#burnstreamsatroads
https://jblindsay.github.io/ghrg/pubs/2016_Lindsay_ESPL.pdf

### ALT-D - Breach flow obstructions
This option uses terrain breaching to remove artificial barriers where crossings block conveyance and produce upstream impoundment artifacts.

https://fema-ffrd.github.io/overflow/user-guide/terrain-conditioning/breach/

### ALT-E - Custom terrain modification
Custom code could be written to clip flowpath lines to some buffer around the road network.  A trapezoidal channel could then be imputed in the area around the intersection.


## Decision History
- 2026-02-2: Initial draft created and ALT-A selected as default
