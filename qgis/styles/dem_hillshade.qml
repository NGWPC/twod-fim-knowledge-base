<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis autoRefreshTime="0" maxScale="0" styleCategories="Symbology|Rendering" hasScaleBasedVisibilityFlag="0" autoRefreshMode="Disabled" minScale="1e+08" version="3.44.6-Solothurn">
  <pipe-data-defined-properties>
    <Option type="Map">
      <Option name="name" type="QString" value=""/>
      <Option name="properties"/>
      <Option name="type" type="QString" value="collection"/>
    </Option>
  </pipe-data-defined-properties>
  <pipe>
    <provider>
      <resampling zoomedInResamplingMethod="nearestNeighbour" zoomedOutResamplingMethod="nearestNeighbour" enabled="false" maxOversampling="2"/>
    </provider>
    <rasterrenderer multidirection="0" opacity="1" type="hillshade" nodataColor="" angle="45" alphaBand="-1" azimuth="315" band="1" zfactor="1">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
    </rasterrenderer>
    <brightnesscontrast brightness="0" gamma="1" contrast="0"/>
    <huesaturation invertColors="0" saturation="0" colorizeRed="255" colorizeGreen="128" colorizeOn="0" colorizeBlue="128" colorizeStrength="100" grayscaleMode="0"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
