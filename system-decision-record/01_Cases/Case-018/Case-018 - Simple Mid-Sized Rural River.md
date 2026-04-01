---
type: case
case_id: Case-018
title: Simple Mid-Sized Rural River
date_observed: 2026-04-01
coordinates_5070: 1809257,2600659
coordinates_4326: 44.413821,-72.997044
flows:
  - "1470"
  - "1400"
  - "1345"
  - "70"
  - "55"
tags:
  - case
  - demo
  - mid-sized
  - simple
  - composite
stream_orders:
  - "4"
location: Richmond, VT
river_names: Winooski River
---
![[01_Cases/Case-018/FIG-001.png]]
The image above shows the Winooski River in a rural area near Richmond, VT.
## Description

This site was chosen as the location for an initial demo of 2D methodology for OWP.  This site was selected because it is a relatively simple fluvial setting that did not present any edge cases under the methodology at the time.  In addition to demonstrating the current 2D methodology, [[EXP-013 - Compare Merged Results From Individual Models to a Single Model for a Large Area]] was conducted to assess the validity of the assumption that reach-based modeling yields comparable results to larger-domain models.

## Experiments

[[EXP-013 - Compare Merged Results From Individual Models to a Single Model for a Large Area]] 

**Decision Register at: cd3e6b0**

Changes:
 - Manual expansion of domain for reach 30913
 - Downstream outlet line manually defined using valley walls.

![[FIG-002.jpeg]]

The image above shows the reaches selected for this experiment. Discharges were developed for these reaches using a regional regression equation and are shown in the table below. 

| Reach | DA   | slope    | Q100 |
|-------|------|----------|------|
| 30831 | 2504 | 0.000486 | 1470 |
| 30869 | 2451 | 0.000682 | 1400 |
| 30912 | 2423 | 0.003801 | 1345 |
| 30868 | 23   | 0.037797 | 70   |
| 30913 | 15   | 0.041875 | 55   |
The Depth FIM for each reach is shown below.
![[01_Cases/Case-018/FIG-003.jpeg]]
![[01_Cases/Case-018/FIG-004.jpeg]]
![[01_Cases/Case-018/FIG-005.jpeg]]

![[01_Cases/Case-018/FIG-006.jpeg]]
![[FIG-007.jpeg]]

The single model geometry for this area is shown below.
![[FIG-008.jpeg]]
The single model depth FIM is shown below.
![[FIG-009.jpeg]]Comparing the two depth FIMS yielded this raster of residuals.
![[FIG-010.jpeg]]![[FIG-011.png]]![[FIG-012.png]]
The models agreed extremely well. More than 90% of inundated cells disagreed less than 0.05 meters. This experiment indicated that the assumption that reach-based models merged with a pixelwise max function behave similarly to a single model approach is reasonable.

In conducting this experiment, irregularities were found in the depth residual raster.  The image below shows a zoomed in depth difference raster with the symbology bounded on -0.05 (red; reach-based higher) to 0.05 (blue; single model higher).  

![[FIG-013.png]]

It was determined that these differences were due to DEM differences as opposed to hydraulic model result differences. This is a case of [[ISU-011 - DEM Differences]]. The root cause of this issue may be the .vrt query itself or one of the transform operations within the modeling pipeline.  Further investigation is needed.

To arrive at a reasonable comparison, a difference map for water surface elevation was generated. This effectively circumvents the DEM differences.  While reviewing these results, some artifacts from reach-based model domains were found.  They can be seen in the image below. Symbology bounded on -0.05 (red; reach-based higher) to 0.05 (blue; single model higher).  

![[FIG-014.png]]
This is a case of [[ISU-008 - Water-surface Elevation Anomalies]].  The inflow boundary conditions create elevated water surfaces in their vicinity.  When using the [[DR-004 - Strategy of Pixel Value Calculation For Composite Maps#ALT-D - Pixelwise Max]] approach is flawed.  Given that these differences are generally less than 0.05 meters, we choose not to reject ALT-D.