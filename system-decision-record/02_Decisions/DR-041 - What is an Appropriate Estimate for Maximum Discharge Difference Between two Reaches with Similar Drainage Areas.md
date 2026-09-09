## Description
For two consecutive reaches with similar drainage areas, they will often have very similar forecasts. FIM library runs that model a very high downstream discharge and a lower upstream discharge may therefore represent unrealistic conditions and be a waste of computational power.  But what is "high downstream discharge" and "lower upstream discharge"? That is what this DR attempts to answer.

## Alternatives

### ALT-A - Estimate on Drainage Area Difference
#current 
To estimate the maximum discharge difference, we attempt to estimate the maximum discharge of the reach that confluences with the upstream reach. To do this, we use the rational method. The rational method is extremely inaccurate and should not be used for drainage area above a quarter square mile, but with no other reasonably simple alternatives, we will use it.  Given the dubious base for this estimate, this approach should be validated with real data before being used in production. The rational method is calculated as

Q = CiA

Where C is a unitless runoff coefficient, I is the rainfall intensity of an event in mm/hr, and A is the drainage area of a channel in hectares. Q is in units of cubic meter per second.

For this analysis, we assume that C is 0.95, which represents a conservative case of a watershed that is heavily paved.

For intensity, we use a combination of NOAA Atlas 14 for Intensity-Duration-Frequency (IDF) estimates and Technical-Paper 40 areal reduction factors.  To get an upper bound on rainfall intensity, we selected NOAA Atlas 14 IDF point estimates in Alexandria, Louisiana, USA as an upper bound for the United States.  Southern Louisiana has the highest Atlas 14 intensity estimates in the country, and while any single estimate will be inaccurate for most of the US, this represents a best guess at an upper bound to be applied across the US.  From this IDF curve, we selected the 24 hour 100 year discharge, which has an intensity of 15 mm/hr.
![[DR-041 - FIG-001.png]]

Point IDF estimates should not be extended to basin averages, so we use Technical Paper 40 areal reduction factors to scale this intensity with drainage area.  To the TP-40 curve, we fit the relationship 

F = 0.9 + (0.02 / (DA + 0.2))

Where F is the areal reduction factor and A is the drainage area of the reach in hectares.

![[DR-041 - FIG-002.png|700]]


These pieces may then be assembled into the final formula

Q = 0.95 * 15 * (0.9 + (0.02 / (DA + 0.2))) * DA

and simplified to 

Q = 14.25 * DA * (0.9 + (0.02 / (DA + 0.2)))

Which is the estimated maximum discharge difference between two reaches.
## Decision History
- 2026-09-09: Selected ALT-A
