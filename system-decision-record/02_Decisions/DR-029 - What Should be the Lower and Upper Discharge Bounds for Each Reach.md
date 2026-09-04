## Description
Each reach requires a minimum and maximum discharge to bound the simulation library. These bounds determine the range of flows represented in the FIM database. Bounds must be applicable at CONUS scale without manual intervention.

## Alternatives

### ALT-A - Fixed Recurrence Interval Bounds from NWM Retrospective

Analyze National Water Model (NWM) retrospective flows to fit a flood frequency distribution (e.g., LP3) at each reach. Use the 0.9 x `high flow threshold` discharge as the lower bound and the 1.5 x 100-year recurrence interval discharge as the upper bound. This approach leverages existing national datasets, scales to all NHD reaches without manual tuning, and produces physically grounded bounds tied to flood frequency. This approach is exactly same as what was used to produce Ripple1D libraries.

### ALT-C - Channel Bankfull Discharge as Lower Bound with 500 year Discharge as Upper Bound
Use an estimated bankfull discharge as the minimum, below which floodplain inundation is negligible. Requires a reliable bankfull estimation method at every reach; current national datasets have high uncertainty for this quantity.

### ALT-D - Unscaled High Flow Threshold and 100-year Discharge
#current

Same source and same frequency analysis as ALT-A, without the widening factors. The lower bound is the `high flow threshold` discharge and the upper bound is the 100-year recurrence interval discharge, each taken as the fitted distribution reports it.

The factors bought their extra range at the two extremes of the curve, where each additional cms is simulation time rather than information. Across a seven reach test network they widened the modelled span by 39% (2969 cms against 1803 cms). This is not acceptable at every reach at CONUS scale.

## Decision History
- 2026-06-01: ALT-A selected until a better option is proposed.
- 2026-09-04: ALT-D selected to reduce library size. The 0.9 and 1.5 factors widened every reach's modelled discharge range at the extremes of the frequency curve, which costs simulation time on every reach without adding information.
