## Description
In stream network there will be many reaches that will be very short relative to their floodplains and in terms of the flow additions between reaches. How to deal with these reaches.

The figure below shows an analysis of hydrologic changes between reaches at different stream orders. Data was taken from the NWM retrospective design discharge dataset. Moving downstream between NWM reaches, the 100-year discharge shows a median increase of 1.2% across all reaches. However, this doesn't tell the full story. Second-order reaches have a 11% median increase, while fifth-order reaches remain nearly constant with a median increase of just 0.025%.  As stream order increases, the scale over which discharge changes increases.

![[DR-023 - FIG-001.png]]

Striving to maintain short reach lengths in higher-order streams gives a sense of false precision. While it is tempting to keep the same reach length fidelity, larger rivers simply don't exhibit much discharge variability from reach to reach.

## Alternatives

### ALT-A - No Special Treatment

### ALT-B - Merge Continuous Reaches that have Negligible Drainage Area Difference Up to Some River Mile Length

This will happen in network analysis step. Only higher stream order because there could be a case where mainstem with negligible DA difference is flowing dry and a tributary that had negligible DA is flowing full (a case need to be find to prove this can happen and reject ALT-B). At higher stream order we don't expect a mainstem to flow dry.
#current 

### ALT-C - Coarse Model Informed Analysis of FIM Width vs Reach Length

---
## Decision History
- 2025-10-02: Started with Alt-A
- 2026-01-30: Switched to Alt-B when it was discovered that many large river reaches have FIM width larger than reach length