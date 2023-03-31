<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis labelsEnabled="1" styleCategories="Symbology|Labeling" version="3.22.4-Białowieża">
  <renderer-v2 symbollevels="0" type="RuleRenderer" forceraster="0" referencescale="-1" enableorderby="0">
    <rules key="{d7f1e78e-d368-4b3c-b57a-4ddc6bebf389}">
      <rule symbol="0" scalemaxdenom="1001" scalemindenom="1" key="{9a97681a-9224-4a03-b98b-edb02ae16e3e}" label="odnośnik"/>
    </rules>
    <symbols>
      <symbol clip_to_extent="1" type="marker" alpha="1" name="0" force_rhr="0">
        <data_defined_properties>
          <Option type="Map">
            <Option type="QString" name="name" value=""/>
            <Option name="properties"/>
            <Option type="QString" name="type" value="collection"/>
          </Option>
        </data_defined_properties>
        <layer class="GeometryGenerator" locked="0" pass="0" enabled="1">
          <Option type="Map">
            <Option type="QString" name="SymbolType" value="Line"/>
            <Option type="QString" name="geometryModifier" value=" generateLabelReference(@map_scale)"/>
            <Option type="QString" name="units" value="MapUnit"/>
          </Option>
          <prop v="Line" k="SymbolType"/>
          <prop v=" generateLabelReference(@map_scale)" k="geometryModifier"/>
          <prop v="MapUnit" k="units"/>
          <data_defined_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option name="properties"/>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </data_defined_properties>
          <symbol clip_to_extent="1" type="line" alpha="1" name="@0@0" force_rhr="0">
            <data_defined_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </data_defined_properties>
            <layer class="SimpleLine" locked="0" pass="0" enabled="1">
              <Option type="Map">
                <Option type="QString" name="align_dash_pattern" value="0"/>
                <Option type="QString" name="capstyle" value="square"/>
                <Option type="QString" name="customdash" value="5;2"/>
                <Option type="QString" name="customdash_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="customdash_unit" value="MM"/>
                <Option type="QString" name="dash_pattern_offset" value="0"/>
                <Option type="QString" name="dash_pattern_offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="dash_pattern_offset_unit" value="MM"/>
                <Option type="QString" name="draw_inside_polygon" value="0"/>
                <Option type="QString" name="joinstyle" value="bevel"/>
                <Option type="QString" name="line_color" value="0,0,0,255"/>
                <Option type="QString" name="line_style" value="solid"/>
                <Option type="QString" name="line_width" value="0.09"/>
                <Option type="QString" name="line_width_unit" value="RenderMetersInMapUnits"/>
                <Option type="QString" name="offset" value="0"/>
                <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="offset_unit" value="MM"/>
                <Option type="QString" name="ring_filter" value="0"/>
                <Option type="QString" name="trim_distance_end" value="0"/>
                <Option type="QString" name="trim_distance_end_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="trim_distance_end_unit" value="MM"/>
                <Option type="QString" name="trim_distance_start" value="0"/>
                <Option type="QString" name="trim_distance_start_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                <Option type="QString" name="trim_distance_start_unit" value="MM"/>
                <Option type="QString" name="tweak_dash_pattern_on_corners" value="0"/>
                <Option type="QString" name="use_custom_dash" value="0"/>
                <Option type="QString" name="width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
              </Option>
              <prop v="0" k="align_dash_pattern"/>
              <prop v="square" k="capstyle"/>
              <prop v="5;2" k="customdash"/>
              <prop v="3x:0,0,0,0,0,0" k="customdash_map_unit_scale"/>
              <prop v="MM" k="customdash_unit"/>
              <prop v="0" k="dash_pattern_offset"/>
              <prop v="3x:0,0,0,0,0,0" k="dash_pattern_offset_map_unit_scale"/>
              <prop v="MM" k="dash_pattern_offset_unit"/>
              <prop v="0" k="draw_inside_polygon"/>
              <prop v="bevel" k="joinstyle"/>
              <prop v="0,0,0,255" k="line_color"/>
              <prop v="solid" k="line_style"/>
              <prop v="0.09" k="line_width"/>
              <prop v="RenderMetersInMapUnits" k="line_width_unit"/>
              <prop v="0" k="offset"/>
              <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
              <prop v="MM" k="offset_unit"/>
              <prop v="0" k="ring_filter"/>
              <prop v="0" k="trim_distance_end"/>
              <prop v="3x:0,0,0,0,0,0" k="trim_distance_end_map_unit_scale"/>
              <prop v="MM" k="trim_distance_end_unit"/>
              <prop v="0" k="trim_distance_start"/>
              <prop v="3x:0,0,0,0,0,0" k="trim_distance_start_map_unit_scale"/>
              <prop v="MM" k="trim_distance_start_unit"/>
              <prop v="0" k="tweak_dash_pattern_on_corners"/>
              <prop v="0" k="use_custom_dash"/>
              <prop v="3x:0,0,0,0,0,0" k="width_map_unit_scale"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option type="QString" name="name" value=""/>
                  <Option type="Map" name="properties">
                    <Option type="Map" name="outlineWidth">
                      <Option type="bool" name="active" value="true"/>
                      <Option type="QString" name="expression" value="IF(@map_scale &lt;= 501, 0.09, IF(@map_scale &lt;= 1001, 0.18, IF(@map_scale &lt;= 2001, 0.36, 0.9)))"/>
                      <Option type="int" name="type" value="3"/>
                    </Option>
                  </Option>
                  <Option type="QString" name="type" value="collection"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{ed9c59a0-0240-4401-8803-f6d912e21df0}">
      <rule scalemaxdenom="1001" scalemindenom="1" description="Prezentacja graficzna" key="{93dc60da-1138-4632-9641-2f8699c6d22c}" filter=" &quot;PrezentacjaGraficzna_geometria&quot; IS NOT NULL">
        <settings calloutType="simple">
          <text-style fontWordSpacing="0" allowHtml="0" fontSizeUnit="RenderMetersInMapUnits" fontSize="0.75" blendMode="0" fontLetterSpacing="0" fontFamily="Arial" fontStrikeout="0" textOrientation="horizontal" isExpression="1" textOpacity="1" capitalization="0" fontUnderline="0" fontItalic="0" fontWeight="50" fieldName="IF(&quot;rzedna&quot; IS NOT NULL, &quot;rzedna&quot;, IF(&quot;rzednaGory&quot; IS NOT NULL AND &quot;rzednaDolu&quot; IS NOT NULL, concat(&quot;rzednaGory&quot;, '\n', &quot;rzednaDolu&quot;), IF(&quot;rzednaGory&quot; IS NOT NULL, &quot;rzednaGory&quot;, IF(&quot;rzednaDolu&quot; IS NOT NULL, &quot;rzednaDolu&quot;, ''))))" previewBkgrdColor="255,255,255,255" fontSizeMapUnitScale="3x:0,0,0,0,0,0" multilineHeight="1" useSubstitutions="0" namedStyle="Normal" legendString="Aa" fontKerning="1" textColor="0,0,0,255">
            <families/>
            <text-buffer bufferNoFill="1" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferColor="255,255,255,255" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSize="0.25" bufferDraw="0" bufferOpacity="1" bufferJoinStyle="128"/>
            <text-mask maskSize="1.5" maskEnabled="0" maskSizeUnits="MM" maskJoinStyle="128" maskedSymbolLayers="" maskOpacity="1" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0"/>
            <background shapeSVGFile="" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiY="0" shapeOffsetY="0" shapeBorderWidthUnit="MM" shapeSizeY="-15" shapeSizeX="0" shapeType="0" shapeRotation="0" shapeRadiiX="0" shapeOffsetX="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="RenderMetersInMapUnits" shapeBlendMode="0" shapeDraw="0" shapeBorderColor="128,128,128,255" shapeOffsetUnit="MM" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeOpacity="1" shapeFillColor="255,255,255,255" shapeJoinStyle="64" shapeRadiiUnit="MM">
              <symbol clip_to_extent="1" type="marker" alpha="1" name="markerSymbol" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option name="properties"/>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleMarker" locked="0" pass="0" enabled="1">
                  <Option type="Map">
                    <Option type="QString" name="angle" value="0"/>
                    <Option type="QString" name="cap_style" value="square"/>
                    <Option type="QString" name="color" value="213,180,60,255"/>
                    <Option type="QString" name="horizontal_anchor_point" value="1"/>
                    <Option type="QString" name="joinstyle" value="bevel"/>
                    <Option type="QString" name="name" value="circle"/>
                    <Option type="QString" name="offset" value="0,0"/>
                    <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="offset_unit" value="MM"/>
                    <Option type="QString" name="outline_color" value="35,35,35,255"/>
                    <Option type="QString" name="outline_style" value="solid"/>
                    <Option type="QString" name="outline_width" value="0"/>
                    <Option type="QString" name="outline_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="outline_width_unit" value="MM"/>
                    <Option type="QString" name="scale_method" value="diameter"/>
                    <Option type="QString" name="size" value="2"/>
                    <Option type="QString" name="size_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="size_unit" value="MM"/>
                    <Option type="QString" name="vertical_anchor_point" value="1"/>
                  </Option>
                  <prop v="0" k="angle"/>
                  <prop v="square" k="cap_style"/>
                  <prop v="213,180,60,255" k="color"/>
                  <prop v="1" k="horizontal_anchor_point"/>
                  <prop v="bevel" k="joinstyle"/>
                  <prop v="circle" k="name"/>
                  <prop v="0,0" k="offset"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="35,35,35,255" k="outline_color"/>
                  <prop v="solid" k="outline_style"/>
                  <prop v="0" k="outline_width"/>
                  <prop v="3x:0,0,0,0,0,0" k="outline_width_map_unit_scale"/>
                  <prop v="MM" k="outline_width_unit"/>
                  <prop v="diameter" k="scale_method"/>
                  <prop v="2" k="size"/>
                  <prop v="3x:0,0,0,0,0,0" k="size_map_unit_scale"/>
                  <prop v="MM" k="size_unit"/>
                  <prop v="1" k="vertical_anchor_point"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" name="name" value=""/>
                      <Option name="properties"/>
                      <Option type="QString" name="type" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol clip_to_extent="1" type="fill" alpha="1" name="fillSymbol" force_rhr="0">
                <data_defined_properties>
                  <Option type="Map">
                    <Option type="QString" name="name" value=""/>
                    <Option name="properties"/>
                    <Option type="QString" name="type" value="collection"/>
                  </Option>
                </data_defined_properties>
                <layer class="SimpleFill" locked="0" pass="0" enabled="1">
                  <Option type="Map">
                    <Option type="QString" name="border_width_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="color" value="255,255,255,255"/>
                    <Option type="QString" name="joinstyle" value="bevel"/>
                    <Option type="QString" name="offset" value="0,0"/>
                    <Option type="QString" name="offset_map_unit_scale" value="3x:0,0,0,0,0,0"/>
                    <Option type="QString" name="offset_unit" value="MM"/>
                    <Option type="QString" name="outline_color" value="128,128,128,255"/>
                    <Option type="QString" name="outline_style" value="no"/>
                    <Option type="QString" name="outline_width" value="0"/>
                    <Option type="QString" name="outline_width_unit" value="MM"/>
                    <Option type="QString" name="style" value="solid"/>
                  </Option>
                  <prop v="3x:0,0,0,0,0,0" k="border_width_map_unit_scale"/>
                  <prop v="255,255,255,255" k="color"/>
                  <prop v="bevel" k="joinstyle"/>
                  <prop v="0,0" k="offset"/>
                  <prop v="3x:0,0,0,0,0,0" k="offset_map_unit_scale"/>
                  <prop v="MM" k="offset_unit"/>
                  <prop v="128,128,128,255" k="outline_color"/>
                  <prop v="no" k="outline_style"/>
                  <prop v="0" k="outline_width"/>
                  <prop v="MM" k="outline_width_unit"/>
                  <prop v="solid" k="style"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option type="QString" name="name" value=""/>
                      <Option name="properties"/>
                      <Option type="QString" name="type" value="collection"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowUnder="0" shadowScale="100" shadowOffsetAngle="135" shadowOffsetUnit="MM" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowColor="0,0,0,255" shadowDraw="0" shadowOffsetGlobal="1" shadowRadiusAlphaOnly="0" shadowOffsetDist="1" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option type="QString" name="name" value=""/>
                <Option name="properties"/>
                <Option type="QString" name="type" value="collection"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format addDirectionSymbol="0" rightDirectionSymbol=">" formatNumbers="0" leftDirectionSymbol="&lt;" multilineAlign="0" wrapChar="" reverseDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" placeDirectionSymbol="0" plussign="0" autoWrapLength="0"/>
          <placement quadOffset="4" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" distUnits="MM" dist="0" repeatDistance="0" maxCurvedCharAngleIn="25" placementFlags="10" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" xOffset="0" offsetUnits="MM" maxCurvedCharAngleOut="-25" overrunDistanceUnit="MM" rotationAngle="0" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" placement="1" preserveRotation="1" polygonPlacementFlags="2" fitInPolygonOnly="0" centroidWhole="0" distMapUnitScale="3x:0,0,0,0,0,0" priority="5" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" lineAnchorPercent="0.5" offsetType="0" lineAnchorClipping="0" geometryGeneratorType="PointGeometry" geometryGeneratorEnabled="1" rotationUnit="AngleRadians" repeatDistanceUnits="MM" geometryGenerator=" geom_from_wkt(string_to_array( &quot;PrezentacjaGraficzna_geometria&quot; , ', ')[0])" yOffset="0" layerType="PointGeometry" centroidInside="0" overrunDistance="0" lineAnchorType="0"/>
          <rendering minFeatureSize="0" scaleMax="0" upsidedownLabels="0" obstacleFactor="1" scaleVisibility="1" zIndex="0" fontMaxPixelSize="10000" fontMinPixelSize="3" limitNumLabels="0" drawLabels="1" scaleMin="0" obstacle="1" maxNumLabels="2000" unplacedVisibility="0" obstacleType="1" displayAll="1" fontLimitPixelSize="0" mergeLines="0" labelPerPart="0"/>
          <dd_properties>
            <Option type="Map">
              <Option type="QString" name="name" value=""/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option type="bool" name="active" value="false"/>
                  <Option type="int" name="type" value="1"/>
                  <Option type="QString" name="val" value=""/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="IF(@map_scale&lt;=1000, 0.25, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.5, IF(@map_scale > 2000 AND @map_scale &lt; 5000, 1, 2.5)))"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option type="bool" name="active" value="false"/>
                  <Option type="int" name="type" value="1"/>
                  <Option type="QString" name="val" value=""/>
                </Option>
                <Option type="Map" name="Color">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="getLayerColorNew(getHeightParent(@layer_id, @layer_name))"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option type="bool" name="active" value="false"/>
                  <Option type="int" name="type" value="1"/>
                  <Option type="QString" name="val" value=""/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option type="bool" name="active" value="false"/>
                  <Option type="int" name="type" value="1"/>
                  <Option type="QString" name="val" value=""/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option type="bool" name="active" value="false"/>
                  <Option type="int" name="type" value="1"/>
                  <Option type="QString" name="val" value=""/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option type="bool" name="active" value="false"/>
                  <Option type="int" name="type" value="1"/>
                  <Option type="QString" name="val" value=""/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="-to_real(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_katObrotu&quot; , ', ')[0])"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option type="bool" name="active" value="false"/>
                  <Option type="int" name="type" value="1"/>
                  <Option type="QString" name="val" value=""/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="IF(string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot;  , ', ')[0] + 1 > 8, 8, string_to_array( &quot;PrezentacjaGraficzna_etykieta_Etykieta_justyfikacja&quot;  , ', ')[0] + 1)"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
                <Option type="Map" name="ShapeSizeY">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="IF(@map_scale &lt;= 500, -0.15, IF(@map_scale &lt;= 1000, -0.3, IF(@map_scale &lt;= 2000, -0.6, -0.75)))"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option type="bool" name="active" value="true"/>
                  <Option type="QString" name="expression" value="IF(@map_scale &lt;= 501, 0.75, IF(@map_scale &lt;= 1001, 1.5, IF(@map_scale &lt;= 2001, 3, 7.5)))"/>
                  <Option type="int" name="type" value="3"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option type="bool" name="active" value="false"/>
                  <Option type="int" name="type" value="1"/>
                  <Option type="QString" name="val" value=""/>
                </Option>
              </Option>
              <Option type="QString" name="type" value="collection"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option type="QString" name="anchorPoint" value="pole_of_inaccessibility"/>
              <Option type="int" name="blendMode" value="0"/>
              <Option type="Map" name="ddProperties">
                <Option type="QString" name="name" value=""/>
                <Option type="Map" name="properties">
                  <Option type="Map" name="DestinationX">
                    <Option type="bool" name="active" value="false"/>
                    <Option type="int" name="type" value="1"/>
                    <Option type="QString" name="val" value=""/>
                  </Option>
                  <Option type="Map" name="DestinationY">
                    <Option type="bool" name="active" value="false"/>
                    <Option type="int" name="type" value="1"/>
                    <Option type="QString" name="val" value=""/>
                  </Option>
                  <Option type="Map" name="OriginX">
                    <Option type="bool" name="active" value="false"/>
                    <Option type="int" name="type" value="1"/>
                    <Option type="QString" name="val" value=""/>
                  </Option>
                  <Option type="Map" name="OriginY">
                    <Option type="bool" name="active" value="false"/>
                    <Option type="int" name="type" value="1"/>
                    <Option type="QString" name="val" value=""/>
                  </Option>
                </Option>
                <Option type="QString" name="type" value="collection"/>
              </Option>
              <Option type="bool" name="drawToAllParts" value="false"/>
              <Option type="QString" name="enabled" value="0"/>
              <Option type="QString" name="labelAnchorPoint" value="l"/>
              <Option type="QString" name="lineSymbol" value="&lt;symbol clip_to_extent=&quot;1&quot; type=&quot;line&quot; alpha=&quot;1&quot; name=&quot;symbol&quot; force_rhr=&quot;0&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer class=&quot;SimpleLine&quot; locked=&quot;0&quot; pass=&quot;0&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;align_dash_pattern&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;capstyle&quot; value=&quot;square&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash&quot; value=&quot;5;2&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;customdash_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;joinstyle&quot; value=&quot;bevel&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_color&quot; value=&quot;72,123,182,255&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_style&quot; value=&quot;solid&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width&quot; value=&quot;0.66&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;line_width_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;offset_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;ring_filter&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot; value=&quot;MM&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;use_custom_dash&quot; value=&quot;0&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot; value=&quot;3x:0,0,0,0,0,0&quot;/>&lt;/Option>&lt;prop v=&quot;0&quot; k=&quot;align_dash_pattern&quot;/>&lt;prop v=&quot;square&quot; k=&quot;capstyle&quot;/>&lt;prop v=&quot;5;2&quot; k=&quot;customdash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;customdash_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;customdash_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;dash_pattern_offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;dash_pattern_offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;draw_inside_polygon&quot;/>&lt;prop v=&quot;bevel&quot; k=&quot;joinstyle&quot;/>&lt;prop v=&quot;72,123,182,255&quot; k=&quot;line_color&quot;/>&lt;prop v=&quot;solid&quot; k=&quot;line_style&quot;/>&lt;prop v=&quot;0.66&quot; k=&quot;line_width&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;line_width_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;offset&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;offset_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;offset_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;ring_filter&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_end&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_end_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;trim_distance_start&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;prop v=&quot;MM&quot; k=&quot;trim_distance_start_unit&quot;/>&lt;prop v=&quot;0&quot; k=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;prop v=&quot;0&quot; k=&quot;use_custom_dash&quot;/>&lt;prop v=&quot;3x:0,0,0,0,0,0&quot; k=&quot;width_map_unit_scale&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option type=&quot;QString&quot; name=&quot;name&quot; value=&quot;&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option type=&quot;QString&quot; name=&quot;type&quot; value=&quot;collection&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>"/>
              <Option type="double" name="minLength" value="0"/>
              <Option type="QString" name="minLengthMapUnitScale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="minLengthUnit" value="MM"/>
              <Option type="double" name="offsetFromAnchor" value="0"/>
              <Option type="QString" name="offsetFromAnchorMapUnitScale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offsetFromAnchorUnit" value="MM"/>
              <Option type="double" name="offsetFromLabel" value="0"/>
              <Option type="QString" name="offsetFromLabelMapUnitScale" value="3x:0,0,0,0,0,0"/>
              <Option type="QString" name="offsetFromLabelUnit" value="MM"/>
            </Option>
          </callout>
        </settings>
      </rule>
    </rules>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerGeometryType>0</layerGeometryType>
</qgis>
