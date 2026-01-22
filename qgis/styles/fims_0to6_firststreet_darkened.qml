<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology" version="3.44.6-Solothurn">
  <pipe-data-defined-properties>
    <Option type="Map">
      <Option value="" name="name" type="QString"/>
      <Option name="properties"/>
      <Option value="collection" name="type" type="QString"/>
    </Option>
  </pipe-data-defined-properties>
  <pipe>
    <provider>
      <resampling enabled="false" zoomedOutResamplingMethod="nearestNeighbour" maxOversampling="2" zoomedInResamplingMethod="nearestNeighbour"/>
    </provider>
    <rasterrenderer opacity="1" nodataColor="" classificationMin="0" band="1" classificationMax="6" type="singlebandpseudocolor" alphaBand="-1">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <rastershader>
        <colorrampshader colorRampType="INTERPOLATED" minimumValue="0" classificationMode="1" maximumValue="6" labelPrecision="4" clip="0">
          <colorramp name="[source]" type="gradient">
            <Option type="Map">
              <Option value="64,169,255,0,hsv:0.57491666666666663,0.75013351644159609,1,0" name="color1" type="QString"/>
              <Option value="0,4,131,255,rgb:0,0.0156863,0.5137255,1" name="color2" type="QString"/>
              <Option value="ccw" name="direction" type="QString"/>
              <Option value="0" name="discrete" type="QString"/>
              <Option value="gradient" name="rampType" type="QString"/>
              <Option value="rgb" name="spec" type="QString"/>
              <Option value="0.0166667;79,175,254,255,rgb:0.3098039,0.6862745,0.9960784,1;rgb;ccw:0.166667;54,151,253,255,rgb:0.2117647,0.5921569,0.9921569,1;rgb;ccw:0.333333;36,109,220,255,rgb:0.1411765,0.427451,0.8627451,1;rgb;ccw:0.666667;40,50,207,255,rgb:0.1568627,0.1960784,0.8117647,1;rgb;ccw" name="stops" type="QString"/>
            </Option>
          </colorramp>
          <item alpha="0" value="0" label="0.0000" color="#40a9ff"/>
          <item alpha="255" value="0.1" label="0.1000" color="#4faffe"/>
          <item alpha="255" value="1" label="1.0000" color="#3697fd"/>
          <item alpha="255" value="2" label="2.0000" color="#246ddc"/>
          <item alpha="255" value="4" label="4.0000" color="#2832cf"/>
          <item alpha="255" value="6" label="6.0000" color="#000483"/>
          <rampLegendSettings maximumLabel="6+" direction="0" orientation="2" suffix="" minimumLabel="" useContinuousLegend="1" prefix="">
            <numericFormat id="basic">
              <Option type="Map">
                <Option name="decimal_separator" type="invalid"/>
                <Option value="6" name="decimals" type="int"/>
                <Option value="0" name="rounding_type" type="int"/>
                <Option value="false" name="show_plus" type="bool"/>
                <Option value="true" name="show_thousand_separator" type="bool"/>
                <Option value="false" name="show_trailing_zeros" type="bool"/>
                <Option name="thousand_separator" type="invalid"/>
              </Option>
            </numericFormat>
          </rampLegendSettings>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast contrast="0" gamma="1" brightness="0"/>
    <huesaturation saturation="0" colorizeBlue="128" grayscaleMode="0" colorizeStrength="100" colorizeGreen="128" colorizeOn="0" invertColors="0" colorizeRed="255"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
