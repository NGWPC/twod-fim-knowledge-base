---
type: case
case_id: Case-013
title: Large Inland Waterbody
date_observed: 2026-02-12
coordinates_5070: 1334048,1325182
coordinates_4326: 34.06732,-81.37340
flows:
tags:
  - case
  - waterbody
  - lake
  - dam
  - reservoir
  - flat
stream_orders:
  - "1"
  - "2"
  - "5"
  - "6"
location: Lake Murray, SC
river_n: Lake Murray
---
![[01_Cases/Case-013/FIG-001.png]]

## Description

This location was selected to develop methodology around FIM-generation in lakes, reservoirs, and other large waterbodies.

## Experiments

[[EXP-010 - Perform a Bathtub-style GIS Analysis to Generate FIM]]

`Decision Register` at: `unknown`

Changes:
 - Use the NHDPlus Waterbodies layer for Lake Murray to define the area of interest.
 - Select all hydrofabric reaches with >75% of their length in the waterbody polygon.
 - Perform a network walk to identify the most downstream reach from these reaches.
 - Identify the low water surface bound as the DEM elevation at the `reach outlet` of the most downstream reach.
 - Identify the upper bound water surface elevation as the max elevation along the levee crest.

In the image below, the cyan polygon represents the categorical FIM extents from the upper WSE limit, and the purple-blue polygon represents categorical FIM extents at the lower bound WSE.

![[01_Cases/Case-013/FIG-002.png]]