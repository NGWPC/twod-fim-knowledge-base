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
    <rasterrenderer classificationMin="30" opacity="1" classificationMax="175" type="singlebandpseudocolor" nodataColor="" alphaBand="-1" band="1">
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
        <colorrampshader clip="0" maximumValue="175" labelPrecision="4" minimumValue="30" classificationMode="3" colorRampType="INTERPOLATED">
          <colorramp name="[source]" type="cpt-city">
            <Option type="Map">
              <Option name="inverted" type="QString" value="0"/>
              <Option name="rampType" type="QString" value="cpt-city"/>
              <Option name="schemeName" type="QString" value="wkp/schwarzwald/wiki-schwarzwald-cont"/>
              <Option name="variantName" type="QString" value=""/>
            </Option>
          </colorramp>
          <item label="29.7659" alpha="255" value="29.76594543457" color="#aeefd5"/>
          <item label="34.7117" alpha="255" value="34.711677317910045" color="#c9f9b2"/>
          <item label="57.1421" alpha="255" value="57.14209583127452" color="#d4ea8b"/>
          <item label="61.8753" alpha="255" value="61.87528557046769" color="#2ba72b"/>
          <item label="73.4800" alpha="255" value="73.47998346508899" color="#428c3b"/>
          <item label="83.7795" alpha="255" value="83.77950751337144" color="#b8ac23"/>
          <item label="91.8071" alpha="255" value="91.8071004868412" color="#e18202"/>
          <item label="94.9725" alpha="255" value="94.97253397345584" color="#9e1f02"/>
          <item label="96.4077" alpha="255" value="96.40770932543789" color="#751404"/>
          <item label="97.8981" alpha="255" value="97.89808372941926" color="#6c280a"/>
          <item label="100.2402" alpha="255" value="100.24017434696007" color="#7e4c2e"/>
          <item label="103.4066" alpha="255" value="103.40663959155602" color="#a08d81"/>
          <item label="109.2319" alpha="255" value="109.23194515395048" color="#c2c2c2"/>
          <item label="174.8471" alpha="255" value="174.84710985342934" color="#ebe9eb"/>
          <rampLegendSettings maximumLabel="" direction="0" suffix="" orientation="1" minimumLabel="" useContinuousLegend="1" prefix="">
            <numericFormat id="basic">
              <Option type="Map">
                <Option name="decimal_separator" type="invalid"/>
                <Option name="decimals" type="int" value="6"/>
                <Option name="rounding_type" type="int" value="0"/>
                <Option name="show_plus" type="bool" value="false"/>
                <Option name="show_thousand_separator" type="bool" value="true"/>
                <Option name="show_trailing_zeros" type="bool" value="false"/>
                <Option name="thousand_separator" type="invalid"/>
              </Option>
            </numericFormat>
          </rampLegendSettings>
        </colorrampshader>
      </rastershader>
    </rasterrenderer>
    <brightnesscontrast brightness="0" gamma="1" contrast="0"/>
    <huesaturation invertColors="0" saturation="0" colorizeRed="255" colorizeGreen="128" colorizeOn="0" colorizeBlue="128" colorizeStrength="100" grayscaleMode="0"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>6</blendMode>
</qgis>
