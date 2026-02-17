## Description
Flat reaches cause model to have level pool, messing up with the methodology in many ways, one such example is that it is then hard to generate correct WSEL contours at reasonable differences, another example is that the domain need to be expanded a lot.
## Alternatives

### ALT-A - Do Nothing
#current

Apply no special flat-reach handling and run standard methodology defaults, accepting known risks.

### ALT-B - Include Slope Criteria in Reach Merging

This alternative incorporates reach slope criteria into merge rules during network analysis step, so very flat and short reaches are merged so there is always some elevation drop in a model domain.

## Decision History
- 2026-02-09: First selection of ALT-A
