<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis version="3.22.4-Białowieża" styleCategories="Symbology|Labeling|Actions" labelsEnabled="1">
  <renderer-v2 referencescale="-1" type="RuleRenderer" enableorderby="0" symbollevels="0" forceraster="0">
    <rules key="{06cc6ad0-d7f3-418f-a660-d9334cfc4623}">
      <rule symbol="0" label="działka ewidencyjna EGBD03" key="{6291c2e1-8d88-41b3-ad5a-e391ce3bedb2}"/>
    </rules>
    <symbols>
      <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="0">
        <data_defined_properties>
          <Option type="Map">
            <Option value="" type="QString" name="name"/>
            <Option name="properties"/>
            <Option value="collection" type="QString" name="type"/>
          </Option>
        </data_defined_properties>
        <layer locked="0" pass="0" class="GeometryGenerator" enabled="1">
          <Option type="Map">
            <Option value="Line" type="QString" name="SymbolType"/>
            <Option value=" geom_from_wkt(  &quot;KR_ObiektKarto_odnosnik&quot; )" type="QString" name="geometryModifier"/>
            <Option value="MapUnit" type="QString" name="units"/>
          </Option>
          <prop k="SymbolType" v="Line"/>
          <prop k="geometryModifier" v=" geom_from_wkt(  &quot;KR_ObiektKarto_odnosnik&quot; )"/>
          <prop k="units" v="MapUnit"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol type="line" clip_to_extent="1" force_rhr="0" alpha="1" name="@0@0">
            <data_defined_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option value="0" type="QString" name="align_dash_pattern"/>
                <Option value="square" type="QString" name="capstyle"/>
                <Option value="5;2" type="QString" name="customdash"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
                <Option value="MM" type="QString" name="customdash_unit"/>
                <Option value="0" type="QString" name="dash_pattern_offset"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
                <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
                <Option value="0" type="QString" name="draw_inside_polygon"/>
                <Option value="bevel" type="QString" name="joinstyle"/>
                <Option value="125,125,125,255" type="QString" name="line_color"/>
                <Option value="solid" type="QString" name="line_style"/>
                <Option value="0.09" type="QString" name="line_width"/>
                <Option value="RenderMetersInMapUnits" type="QString" name="line_width_unit"/>
                <Option value="0" type="QString" name="offset"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                <Option value="MM" type="QString" name="offset_unit"/>
                <Option value="0" type="QString" name="ring_filter"/>
                <Option value="0" type="QString" name="trim_distance_end"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="trim_distance_end_map_unit_scale"/>
                <Option value="MM" type="QString" name="trim_distance_end_unit"/>
                <Option value="0" type="QString" name="trim_distance_start"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="trim_distance_start_map_unit_scale"/>
                <Option value="MM" type="QString" name="trim_distance_start_unit"/>
                <Option value="0" type="QString" name="tweak_dash_pattern_on_corners"/>
                <Option value="0" type="QString" name="use_custom_dash"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="width_map_unit_scale"/>
              </Option>
              <prop k="align_dash_pattern" v="0"/>
              <prop k="capstyle" v="square"/>
              <prop k="customdash" v="5;2"/>
              <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="customdash_unit" v="MM"/>
              <prop k="dash_pattern_offset" v="0"/>
              <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="dash_pattern_offset_unit" v="MM"/>
              <prop k="draw_inside_polygon" v="0"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="line_color" v="125,125,125,255"/>
              <prop k="line_style" v="solid"/>
              <prop k="line_width" v="0.09"/>
              <prop k="line_width_unit" v="RenderMetersInMapUnits"/>
              <prop k="offset" v="0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="ring_filter" v="0"/>
              <prop k="trim_distance_end" v="0"/>
              <prop k="trim_distance_end_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="trim_distance_end_unit" v="MM"/>
              <prop k="trim_distance_start" v="0"/>
              <prop k="trim_distance_start_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="trim_distance_start_unit" v="MM"/>
              <prop k="tweak_dash_pattern_on_corners" v="0"/>
              <prop k="use_custom_dash" v="0"/>
              <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" type="QString" name="name"/>
                  <Option type="Map" name="properties">
                    <Option type="Map" name="outlineWidth">
                      <Option value="true" type="bool" name="active"/>
                      <Option value="IF( @map_scale &lt;= 500, 0.09, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 0.18, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.26, 0.65)))" type="QString" name="expression"/>
                      <Option value="3" type="int" name="type"/>
                    </Option>
                  </Option>
                  <Option value="collection" type="QString" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
        <layer locked="0" pass="0" class="GeometryGenerator" enabled="1">
          <Option type="Map">
            <Option value="Line" type="QString" name="SymbolType"/>
            <Option value=" generateSpacesBetweenVertices(IF(@map_scale &lt;= 500, 0.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 0.4, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.8, 2))))" type="QString" name="geometryModifier"/>
            <Option value="MapUnit" type="QString" name="units"/>
          </Option>
          <prop k="SymbolType" v="Line"/>
          <prop k="geometryModifier" v=" generateSpacesBetweenVertices(IF(@map_scale &lt;= 500, 0.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 0.4, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.8, 2))))"/>
          <prop k="units" v="MapUnit"/>
          <data_defined_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option name="properties"/>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </data_defined_properties>
          <symbol type="line" clip_to_extent="1" force_rhr="0" alpha="1" name="@0@1">
            <data_defined_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </data_defined_properties>
            <layer locked="0" pass="0" class="SimpleLine" enabled="1">
              <Option type="Map">
                <Option value="0" type="QString" name="align_dash_pattern"/>
                <Option value="square" type="QString" name="capstyle"/>
                <Option value="5;2" type="QString" name="customdash"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="customdash_map_unit_scale"/>
                <Option value="MM" type="QString" name="customdash_unit"/>
                <Option value="0" type="QString" name="dash_pattern_offset"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="dash_pattern_offset_map_unit_scale"/>
                <Option value="MM" type="QString" name="dash_pattern_offset_unit"/>
                <Option value="0" type="QString" name="draw_inside_polygon"/>
                <Option value="bevel" type="QString" name="joinstyle"/>
                <Option value="125,125,125,255" type="QString" name="line_color"/>
                <Option value="solid" type="QString" name="line_style"/>
                <Option value="0.09" type="QString" name="line_width"/>
                <Option value="RenderMetersInMapUnits" type="QString" name="line_width_unit"/>
                <Option value="0" type="QString" name="offset"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                <Option value="MM" type="QString" name="offset_unit"/>
                <Option value="0" type="QString" name="ring_filter"/>
                <Option value="0" type="QString" name="trim_distance_end"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="trim_distance_end_map_unit_scale"/>
                <Option value="MM" type="QString" name="trim_distance_end_unit"/>
                <Option value="0" type="QString" name="trim_distance_start"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="trim_distance_start_map_unit_scale"/>
                <Option value="MM" type="QString" name="trim_distance_start_unit"/>
                <Option value="0" type="QString" name="tweak_dash_pattern_on_corners"/>
                <Option value="0" type="QString" name="use_custom_dash"/>
                <Option value="3x:0,0,0,0,0,0" type="QString" name="width_map_unit_scale"/>
              </Option>
              <prop k="align_dash_pattern" v="0"/>
              <prop k="capstyle" v="square"/>
              <prop k="customdash" v="5;2"/>
              <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="customdash_unit" v="MM"/>
              <prop k="dash_pattern_offset" v="0"/>
              <prop k="dash_pattern_offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="dash_pattern_offset_unit" v="MM"/>
              <prop k="draw_inside_polygon" v="0"/>
              <prop k="joinstyle" v="bevel"/>
              <prop k="line_color" v="125,125,125,255"/>
              <prop k="line_style" v="solid"/>
              <prop k="line_width" v="0.09"/>
              <prop k="line_width_unit" v="RenderMetersInMapUnits"/>
              <prop k="offset" v="0"/>
              <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="offset_unit" v="MM"/>
              <prop k="ring_filter" v="0"/>
              <prop k="trim_distance_end" v="0"/>
              <prop k="trim_distance_end_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="trim_distance_end_unit" v="MM"/>
              <prop k="trim_distance_start" v="0"/>
              <prop k="trim_distance_start_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <prop k="trim_distance_start_unit" v="MM"/>
              <prop k="tweak_dash_pattern_on_corners" v="0"/>
              <prop k="use_custom_dash" v="0"/>
              <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
              <data_defined_properties>
                <Option type="Map">
                  <Option value="" type="QString" name="name"/>
                  <Option type="Map" name="properties">
                    <Option type="Map" name="outlineWidth">
                      <Option value="true" type="bool" name="active"/>
                      <Option value="IF( @map_scale &lt;= 500, 0.09, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 0.18, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 0.26, 0.65)))" type="QString" name="expression"/>
                      <Option value="3" type="int" name="type"/>
                    </Option>
                  </Option>
                  <Option value="collection" type="QString" name="type"/>
                </Option>
              </data_defined_properties>
            </layer>
          </symbol>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <labeling type="rule-based">
    <rules key="{5c4ddbf3-a2d7-40b7-b9be-32f054f287c0}">
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{f5b83773-27f0-4460-ab05-1bb44082bbb8}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[0] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[0])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[0])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[0] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[0]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[0] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[0]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[0] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[0] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{53374f57-212f-489f-8467-037a3f32c313}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[1] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[1])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[1])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[1] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[1]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[1] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[1]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[1] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[1] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{c7ea78a3-fefc-484d-9cfa-a73764454d1c}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[2] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[2])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[2])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[2] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[2]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[2] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[2]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[2] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[2] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{d4764f42-cbda-42de-98ca-9af7d3d54b55}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[3] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[3])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[3])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[3] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[3]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[3] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[3]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[3] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[3] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{2fc8f539-4512-4389-a78f-05aba9d6dfa2}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[4] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[4])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[4])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[4] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[4]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[4] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[4]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[4] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[4] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{41ecfc22-ea2d-444f-a325-798d1dea27ee}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[5] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[5])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[5])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[5] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[5]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[5] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[5]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[5] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[5] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{df674deb-8e55-4132-bf28-726a7d816a87}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[6] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[6])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[6])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[6] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[6]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[6] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[6]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[6] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[6] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{f9eb9e9b-0487-4dc8-8875-b25a71bbd099}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[7] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[7])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[7])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[7] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[7]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[7] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[7]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[7] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[7] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{28bb702a-e26e-4c5a-8da3-99a7edd63e33}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[8] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[8])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[8])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[8] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[8]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[8] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[8]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[8] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[8] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{c972f95b-6f56-4138-aad0-25b22db90cd4}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[9] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[9])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[9])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[9] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[9]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[9] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[9]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[9] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[9] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{4268fbe7-1ca1-4ec5-aa15-42e5dc831b52}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[10] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[10])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[10])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[10] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[10]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[10] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[10]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[10] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[10] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{668598ac-5111-46d8-865a-3ebf1074480d}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[11] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[11])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[11])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[11] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[11]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[11] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[11]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[11] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[11] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{109d70ae-acfb-491e-bdc5-47bbc948d496}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[12] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[12])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[12])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[12] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[12]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[12] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[12]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[12] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[12] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{1b63ee43-1ace-4f95-b2f7-029de4d9420f}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[13] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[13])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[13])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[13] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[13]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[13] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[13]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[13] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[13] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{44d02b8c-0b24-4026-876d-141c5a0ba182}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[14] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[14])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[14])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[14] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[14]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[14] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[14]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[14] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[14] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{9c149d31-5aba-4986-b9ee-ebed31a5716e}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[15] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[15])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[15])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[15] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[15]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[15] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[15]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[15] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[15] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{1d2d2832-02b7-4713-90b4-f7bd22eb6856}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[16] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[16])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[16])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[16] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[16]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[16] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[16]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[16] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[16] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{73d82ec8-25ca-49d2-9169-90293b8d0b0a}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[17] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[17])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[17])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[17] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[17]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[17] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[17]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[17] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[17] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{9d26f793-e4b9-449c-ae3c-97da1dea6788}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[18] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[18])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[18])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[18] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[18]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[18] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[18]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[18] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[18] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
      <rule filter="&quot;KR_ObiektKarto_geometriaKarto&quot; IS NOT NULL" scalemindenom="1" description="KR_Etykieta" scalemaxdenom="5001" key="{3f52c083-b689-45a9-b69e-8b4d0d501b79}">
        <settings calloutType="simple">
          <text-style namedStyle="Normal" textOrientation="horizontal" isExpression="1" fontKerning="1" textColor="125,125,125,255" fontFamily="Arial" blendMode="0" legendString="Aa" previewBkgrdColor="255,255,255,255" fontWeight="50" fontItalic="0" textOpacity="1" capitalization="0" fontSizeUnit="RenderMetersInMapUnits" multilineHeight="1" useSubstitutions="0" fieldName="IF(string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[19] IS NULL, regexp_replace( &quot;idDzialki&quot;,'(.*)\\.(.*)$', '\\2'), string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_tekst&quot; , ', ')[19])" allowHtml="0" fontSize="1.25" fontUnderline="0" fontSizeMapUnitScale="3x:0,0,0,0,0,0" fontStrikeout="0" fontWordSpacing="0" fontLetterSpacing="0">
            <families/>
            <text-buffer bufferOpacity="1" bufferNoFill="1" bufferDraw="1" bufferSizeUnits="RenderMetersInMapUnits" bufferBlendMode="0" bufferSizeMapUnitScale="3x:0,0,0,0,0,0" bufferJoinStyle="128" bufferSize="0" bufferColor="255,255,255,255"/>
            <text-mask maskSize="1.5" maskOpacity="1" maskSizeUnits="MM" maskedSymbolLayers="" maskType="0" maskSizeMapUnitScale="3x:0,0,0,0,0,0" maskJoinStyle="128" maskEnabled="0"/>
            <background shapeJoinStyle="64" shapeRotation="0" shapeType="0" shapeFillColor="255,255,255,255" shapeSizeX="0" shapeRadiiX="0" shapeSVGFile="" shapeBorderWidthUnit="MM" shapeRadiiY="0" shapeOffsetMapUnitScale="3x:0,0,0,0,0,0" shapeSizeUnit="MM" shapeOffsetY="0" shapeSizeMapUnitScale="3x:0,0,0,0,0,0" shapeRotationType="0" shapeBorderWidthMapUnitScale="3x:0,0,0,0,0,0" shapeRadiiUnit="MM" shapeDraw="0" shapeSizeType="0" shapeRadiiMapUnitScale="3x:0,0,0,0,0,0" shapeBorderWidth="0" shapeOffsetX="0" shapeBlendMode="0" shapeOpacity="1" shapeSizeY="0" shapeOffsetUnit="MM" shapeBorderColor="125,125,125,255">
              <symbol type="marker" clip_to_extent="1" force_rhr="0" alpha="1" name="markerSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleMarker" enabled="1">
                  <Option type="Map">
                    <Option value="0" type="QString" name="angle"/>
                    <Option value="square" type="QString" name="cap_style"/>
                    <Option value="125,125,125,255" type="QString" name="color"/>
                    <Option value="1" type="QString" name="horizontal_anchor_point"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="circle" type="QString" name="name"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="solid" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="outline_width_map_unit_scale"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="diameter" type="QString" name="scale_method"/>
                    <Option value="2" type="QString" name="size"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="size_map_unit_scale"/>
                    <Option value="MM" type="QString" name="size_unit"/>
                    <Option value="1" type="QString" name="vertical_anchor_point"/>
                  </Option>
                  <prop k="angle" v="0"/>
                  <prop k="cap_style" v="square"/>
                  <prop k="color" v="125,125,125,255"/>
                  <prop k="horizontal_anchor_point" v="1"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="name" v="circle"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="solid"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="scale_method" v="diameter"/>
                  <prop k="size" v="2"/>
                  <prop k="size_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="size_unit" v="MM"/>
                  <prop k="vertical_anchor_point" v="1"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
              <symbol type="fill" clip_to_extent="1" force_rhr="0" alpha="1" name="fillSymbol">
                <data_defined_properties>
                  <Option type="Map">
                    <Option value="" type="QString" name="name"/>
                    <Option name="properties"/>
                    <Option value="collection" type="QString" name="type"/>
                  </Option>
                </data_defined_properties>
                <layer locked="0" pass="0" class="SimpleFill" enabled="1">
                  <Option type="Map">
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="border_width_map_unit_scale"/>
                    <Option value="255,255,255,255" type="QString" name="color"/>
                    <Option value="bevel" type="QString" name="joinstyle"/>
                    <Option value="0,0" type="QString" name="offset"/>
                    <Option value="3x:0,0,0,0,0,0" type="QString" name="offset_map_unit_scale"/>
                    <Option value="MM" type="QString" name="offset_unit"/>
                    <Option value="125,125,125,255" type="QString" name="outline_color"/>
                    <Option value="no" type="QString" name="outline_style"/>
                    <Option value="0" type="QString" name="outline_width"/>
                    <Option value="MM" type="QString" name="outline_width_unit"/>
                    <Option value="solid" type="QString" name="style"/>
                  </Option>
                  <prop k="border_width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="color" v="255,255,255,255"/>
                  <prop k="joinstyle" v="bevel"/>
                  <prop k="offset" v="0,0"/>
                  <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
                  <prop k="offset_unit" v="MM"/>
                  <prop k="outline_color" v="125,125,125,255"/>
                  <prop k="outline_style" v="no"/>
                  <prop k="outline_width" v="0"/>
                  <prop k="outline_width_unit" v="MM"/>
                  <prop k="style" v="solid"/>
                  <data_defined_properties>
                    <Option type="Map">
                      <Option value="" type="QString" name="name"/>
                      <Option name="properties"/>
                      <Option value="collection" type="QString" name="type"/>
                    </Option>
                  </data_defined_properties>
                </layer>
              </symbol>
            </background>
            <shadow shadowOffsetMapUnitScale="3x:0,0,0,0,0,0" shadowRadiusMapUnitScale="3x:0,0,0,0,0,0" shadowRadius="1.5" shadowDraw="0" shadowUnder="0" shadowRadiusUnit="MM" shadowOpacity="0.69999999999999996" shadowOffsetUnit="MM" shadowColor="125,125,125,255" shadowScale="100" shadowOffsetDist="1" shadowOffsetGlobal="1" shadowOffsetAngle="135" shadowRadiusAlphaOnly="0" shadowBlendMode="6"/>
            <dd_properties>
              <Option type="Map">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
            </dd_properties>
            <substitutions/>
          </text-style>
          <text-format rightDirectionSymbol=">" leftDirectionSymbol="&lt;" placeDirectionSymbol="0" decimals="3" useMaxLineLengthForAutoWrap="1" multilineAlign="0" autoWrapLength="0" plussign="0" addDirectionSymbol="0" reverseDirectionSymbol="0" wrapChar="" formatNumbers="0"/>
          <placement yOffset="0" polygonPlacementFlags="2" xOffset="0" distMapUnitScale="3x:0,0,0,0,0,0" centroidInside="0" lineAnchorClipping="0" rotationUnit="AngleDegrees" geometryGeneratorType="PointGeometry" layerType="PolygonGeometry" geometryGeneratorEnabled="1" quadOffset="4" distUnits="MM" labelOffsetMapUnitScale="3x:0,0,0,0,0,0" offsetUnits="MM" overrunDistanceUnit="MM" repeatDistanceMapUnitScale="3x:0,0,0,0,0,0" overrunDistanceMapUnitScale="3x:0,0,0,0,0,0" centroidWhole="0" lineAnchorPercent="0.5" geometryGenerator=" geom_from_wkt(string_to_array(  &quot;KR_ObiektKarto_geometriaKarto&quot; , ', ')[19])" rotationAngle="0" priority="5" maxCurvedCharAngleIn="25" overrunDistance="0" placementFlags="10" preserveRotation="1" predefinedPositionOrder="TR,TL,BR,BL,R,L,TSR,BSR" fitInPolygonOnly="0" maxCurvedCharAngleOut="-25" repeatDistanceUnits="MM" offsetType="0" repeatDistance="0" placement="1" dist="0" lineAnchorType="0"/>
          <rendering mergeLines="0" upsidedownLabels="0" displayAll="0" fontMaxPixelSize="10000" labelPerPart="0" drawLabels="1" limitNumLabels="0" obstacleFactor="1" zIndex="0" fontMinPixelSize="3" fontLimitPixelSize="0" obstacle="1" scaleMin="0" scaleMax="0" unplacedVisibility="0" maxNumLabels="2000" minFeatureSize="0" scaleVisibility="1" obstacleType="1"/>
          <dd_properties>
            <Option type="Map">
              <Option value="" type="QString" name="name"/>
              <Option type="Map" name="properties">
                <Option type="Map" name="Bold">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_pogrubienie&quot;, ', ')[19] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="BufferSize">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="BufferUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Color">
                  <Option value="true" type="bool" name="active"/>

                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Family">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_nazwaCzcionki&quot;, ', ')[19]" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="FontSizeUnit">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="FontStyle">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="Italic">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_kursywa&quot; , ', ')[19] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="LabelRotation">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="to_real(string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_katObrotu&quot; , ', ')[19]) - 90" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="MultiLineAlignment">
                  <Option value="false" type="bool" name="active"/>
                  <Option value="1" type="int" name="type"/>
                  <Option value="" type="QString" name="val"/>
                </Option>
                <Option type="Map" name="OffsetQuad">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array(&quot;KR_ObiektKarto_etykieta_KREtykieta_justyfikacja&quot;, ',')[19] + 1" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Size">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="IF(@map_scale&lt;=500, 1.25, IF(@map_scale > 500 AND @map_scale &lt;= 1000, 1.8, IF(@map_scale > 1000 AND @map_scale &lt;= 2000, 3.6, 9)))" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
                <Option type="Map" name="Underline">
                  <Option value="true" type="bool" name="active"/>
                  <Option value="string_to_array( &quot;KR_ObiektKarto_etykieta_KREtykieta_czcionka_KRKrojPisma_podkreslenie&quot; , ', ')[19] = 'true'" type="QString" name="expression"/>
                  <Option value="3" type="int" name="type"/>
                </Option>
              </Option>
              <Option value="collection" type="QString" name="type"/>
            </Option>
          </dd_properties>
          <callout type="simple">
            <Option type="Map">
              <Option value="pole_of_inaccessibility" type="QString" name="anchorPoint"/>
              <Option value="0" type="int" name="blendMode"/>
              <Option type="Map" name="ddProperties">
                <Option value="" type="QString" name="name"/>
                <Option name="properties"/>
                <Option value="collection" type="QString" name="type"/>
              </Option>
              <Option value="false" type="bool" name="drawToAllParts"/>
              <Option value="0" type="QString" name="enabled"/>
              <Option value="point_on_exterior" type="QString" name="labelAnchorPoint"/>
              <Option value="&lt;symbol type=&quot;line&quot; clip_to_extent=&quot;1&quot; force_rhr=&quot;0&quot; alpha=&quot;1&quot; name=&quot;symbol&quot;>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;layer locked=&quot;0&quot; pass=&quot;0&quot; class=&quot;SimpleLine&quot; enabled=&quot;1&quot;>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;align_dash_pattern&quot;/>&lt;Option value=&quot;square&quot; type=&quot;QString&quot; name=&quot;capstyle&quot;/>&lt;Option value=&quot;5;2&quot; type=&quot;QString&quot; name=&quot;customdash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;customdash_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;customdash_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;dash_pattern_offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;draw_inside_polygon&quot;/>&lt;Option value=&quot;bevel&quot; type=&quot;QString&quot; name=&quot;joinstyle&quot;/>&lt;Option value=&quot;60,60,60,255&quot; type=&quot;QString&quot; name=&quot;line_color&quot;/>&lt;Option value=&quot;solid&quot; type=&quot;QString&quot; name=&quot;line_style&quot;/>&lt;Option value=&quot;0.3&quot; type=&quot;QString&quot; name=&quot;line_width&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;line_width_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;offset&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;offset_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;offset_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;ring_filter&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_end_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_map_unit_scale&quot;/>&lt;Option value=&quot;MM&quot; type=&quot;QString&quot; name=&quot;trim_distance_start_unit&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;tweak_dash_pattern_on_corners&quot;/>&lt;Option value=&quot;0&quot; type=&quot;QString&quot; name=&quot;use_custom_dash&quot;/>&lt;Option value=&quot;3x:0,0,0,0,0,0&quot; type=&quot;QString&quot; name=&quot;width_map_unit_scale&quot;/>&lt;/Option>&lt;prop k=&quot;align_dash_pattern&quot; v=&quot;0&quot;/>&lt;prop k=&quot;capstyle&quot; v=&quot;square&quot;/>&lt;prop k=&quot;customdash&quot; v=&quot;5;2&quot;/>&lt;prop k=&quot;customdash_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;customdash_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;dash_pattern_offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;dash_pattern_offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;dash_pattern_offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;draw_inside_polygon&quot; v=&quot;0&quot;/>&lt;prop k=&quot;joinstyle&quot; v=&quot;bevel&quot;/>&lt;prop k=&quot;line_color&quot; v=&quot;60,60,60,255&quot;/>&lt;prop k=&quot;line_style&quot; v=&quot;solid&quot;/>&lt;prop k=&quot;line_width&quot; v=&quot;0.3&quot;/>&lt;prop k=&quot;line_width_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;offset&quot; v=&quot;0&quot;/>&lt;prop k=&quot;offset_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;offset_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;ring_filter&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_end_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_end_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;trim_distance_start&quot; v=&quot;0&quot;/>&lt;prop k=&quot;trim_distance_start_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;prop k=&quot;trim_distance_start_unit&quot; v=&quot;MM&quot;/>&lt;prop k=&quot;tweak_dash_pattern_on_corners&quot; v=&quot;0&quot;/>&lt;prop k=&quot;use_custom_dash&quot; v=&quot;0&quot;/>&lt;prop k=&quot;width_map_unit_scale&quot; v=&quot;3x:0,0,0,0,0,0&quot;/>&lt;data_defined_properties>&lt;Option type=&quot;Map&quot;>&lt;Option value=&quot;&quot; type=&quot;QString&quot; name=&quot;name&quot;/>&lt;Option name=&quot;properties&quot;/>&lt;Option value=&quot;collection&quot; type=&quot;QString&quot; name=&quot;type&quot;/>&lt;/Option>&lt;/data_defined_properties>&lt;/layer>&lt;/symbol>" type="QString" name="lineSymbol"/>
              <Option value="0" type="double" name="minLength"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="minLengthMapUnitScale"/>
              <Option value="MM" type="QString" name="minLengthUnit"/>
              <Option value="0" type="double" name="offsetFromAnchor"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromAnchorMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromAnchorUnit"/>
              <Option value="0" type="double" name="offsetFromLabel"/>
              <Option value="3x:0,0,0,0,0,0" type="QString" name="offsetFromLabelMapUnitScale"/>
              <Option value="MM" type="QString" name="offsetFromLabelUnit"/>
            </Option>
          </callout>
        </settings>
      </rule>
    </rules>
  </labeling>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <attributeactions>
    <defaultAction value="{f7fdff71-8b14-4475-8a93-2afd2baa0fb8}" key="Canvas"/>
    <actionsetting action="from qgis.PyQt.QtCore import Qt&#xa;from qgis.PyQt.QtGui import QCursor&#xa;from qgis.PyQt.QtWidgets import QApplication, QDialog, QTreeWidget, QTreeWidgetItem, QHeaderView, QMenu&#xa;&#xa;&#xa;iface = qgis.utils.iface&#xa;&#xa;def configureDialog(layer_name):&#xa;    dialog = QDialog()&#xa;    dialog.setWindowFlags(Qt.WindowStaysOnTopHint)&#xa;    dialog.setWindowTitle('Relacje obiektu klasy %s' % layer_name)&#xa;    dialog.setFixedHeight(405)&#xa;    tree = QTreeWidget(dialog)&#xa;    tree.move(5, 5)&#xa;    tree.setFixedHeight(400)&#xa;    tree.setColumnCount(1)&#xa;    tree.setHeaderHidden(True)&#xa;    tree.setAutoScroll(True)&#xa;    tree.header().setSectionResizeMode(0, QHeaderView.ResizeToContents)&#xa;    tree.itemExpanded.connect(adjustFormSize)&#xa;    tree.itemDoubleClicked.connect(zoomToReference)&#xa;    tree.setContextMenuPolicy(Qt.CustomContextMenu)&#xa;    tree.customContextMenuRequested.connect(showMenu)&#xa;    return dialog, tree&#xa;&#xa;def adjustFormSize():&#xa;    tree.resizeColumnToContents(0)&#xa;    column_width = tree.columnWidth(0)&#xa;    tree.setFixedWidth(column_width + 20)&#xa;    tree.header().resizeSection(0, column_width - 2)&#xa;    dialog.setFixedWidth(column_width + 25)&#xa;&#xa;def zoomToReference():&#xa;    current_item = tree.currentItem()&#xa;    if current_item.parent() is not None:&#xa;        layer_name = current_item.parent().text(0)&#xa;        identifier = current_item.text(0)&#xa;        ref_layers = QgsProject.instance().mapLayersByName(layer_name)&#xa;        if len(ref_layers) == 1:&#xa;            ref_layer = ref_layers[0]&#xa;            ref_layer.selectByExpression(&quot;gml_id = '&quot; + identifier + &quot;'&quot;)&#xa;            iface.mapCanvas().zoomToSelected(ref_layer)&#xa;&#xa;def showMenu():&#xa;    current_item = tree.currentItem()&#xa;    menu = QMenu('Menu', dialog)&#xa;    if current_item.data(1, 1) == 'href' and current_item is not None:&#xa;        menu.addAction('Identyfikuj')&#xa;        menu.addAction('Wyświetl relacje')&#xa;        menu.addAction('Kopiuj identyfikator')&#xa;    action = menu.exec(QCursor.pos())&#xa;    if action is not None:&#xa;        executeMenuAction(action, current_item)&#xa;&#xa;def executeMenuAction(action, current_item):&#xa;    layer_name = current_item.parent().text(0)&#xa;    identifier = current_item.text(0)&#xa;    if action.text() == 'Identyfikuj':&#xa;        ref_layers = QgsProject.instance().mapLayersByName(layer_name)&#xa;        if len(ref_layers) == 1:&#xa;            ref_layer = ref_layers[0]&#xa;            ref_layer.selectByExpression(&quot;gml_id = '&quot; + identifier + &quot;'&quot;)&#xa;            for feature in ref_layer.selectedFeatures():&#xa;                iface.mapCanvas().zoomToSelected(ref_layer)&#xa;                iface.mapCanvas().waitWhileRendering()&#xa;                iface.openFeatureForm(ref_layer, feature)&#xa;    if action.text() == 'Wyświetl relacje':&#xa;        ref_layer, field_names = getRefLayerAndFields(current_item.parent().text(0))&#xa;        if ref_layer is not None:&#xa;            getReferences(current_item, ref_layer, field_names)&#xa;            tree.expandItem(current_item)&#xa;    if action.text() == 'Kopiuj identyfikator':&#xa;        cb = QApplication.clipboard()&#xa;        cb.clear(mode=cb.Clipboard)&#xa;        cb.setText(identifier, mode=cb.Clipboard)&#xa;&#xa;def getRefLayerAndFields(layer_name):&#xa;    ref_layer = None&#xa;    field_names = {}&#xa;    layers = QgsProject.instance().mapLayersByName(layer_name)&#xa;    if len(layers) == 1:&#xa;        ref_layer = layers[0]&#xa;        for field in ref_layer.fields():&#xa;            if field.comment() != '':&#xa;                field_names[field.name()] = field.comment()&#xa;    return ref_layer, field_names&#xa;&#xa;def getReferences(item, ref_layer, field_names):&#xa;    identifier = item.text(0)&#xa;    for feature in ref_layer.getFeatures(&quot;gml_id = '&quot; + identifier + &quot;'&quot;):&#xa;        for field_name in field_names.keys():&#xa;            field_value = feature.attribute(field_name)&#xa;            if field_value is not None and field_value:&#xa;                class_item = QTreeWidgetItem(item)&#xa;                class_item.setText(0, field_names[field_name])&#xa;                class_item.setData(1, 1, 'class')&#xa;                addReferences(class_item, field_value)&#xa;                tree.expandItem(class_item)&#xa;    for other_layer in QgsProject().instance().mapLayers().values():&#xa;        if other_layer.id() != ref_layer.id():&#xa;            for field in other_layer.fields():&#xa;                if field.comment() == ref_layer.name():&#xa;                    for other_feature in other_layer.getFeatures(&quot;\&quot;&quot; + field.displayName() + &quot;\&quot; LIKE '%&quot; + feature.attribute(&quot;gml_id&quot;) + &quot;%'&quot;):&#xa;                        class_item = QTreeWidgetItem(item)&#xa;                        class_item.setText(0, other_layer.name())&#xa;                        class_item.setData(1, 1, 'class')&#xa;                        addReferences(class_item, other_feature.attribute(&quot;gml_id&quot;))&#xa;                        tree.expandItem(class_item)&#xa;&#xa;def addReferences(class_item, field_value):&#xa;    for href in field_value.split(', '):&#xa;        ref_item = QTreeWidgetItem(class_item)&#xa;        ref_item.setText(0, href)&#xa;        ref_item.setData(1, 1, 'href')&#xa;&#xa;project = QgsProject.instance()&#xa;layers = project.mapLayersByName('[% @layer_name %]')&#xa;for layer in layers:&#xa;    if layer.id() == '[% @layer_id %]':&#xa;        dialog, tree = configureDialog('[% @layer_name %]')&#xa;        feature = layer.getFeature([% $id %])&#xa;        has_hrefs = False&#xa;        for field in layer.fields():&#xa;            if field.comment() != '':&#xa;                field_value = feature.attribute(field.name())&#xa;                if field_value is not None and field_value:&#xa;                    has_hrefs = True&#xa;                    class_item = QTreeWidgetItem()&#xa;                    class_item.setText(0, field.comment())&#xa;                    class_item.setData(1, 1, 'class')&#xa;                    tree.addTopLevelItem(class_item)&#xa;                    tree.resizeColumnToContents(0)&#xa;                    tree.setFixedWidth(tree.columnWidth(0) + 5)&#xa;                    dialog.setFixedWidth(tree.columnWidth(0) + 10)&#xa;                    addReferences(class_item, field_value)&#xa;        for other_layer in project.mapLayers().values():&#xa;            if other_layer.id() != layer.id():&#xa;                for field in other_layer.fields():&#xa;                    if field.comment() == layer.name():&#xa;                        class_item = QTreeWidgetItem()&#xa;                        class_item.setText(0, other_layer.name())&#xa;                        class_item.setData(1, 1, 'class')&#xa;                        for other_feature in other_layer.getFeatures(&quot;\&quot;&quot; + field.displayName() + &quot;\&quot; LIKE '%&quot; + feature.attribute(&quot;gml_id&quot;) + &quot;%'&quot;):&#xa;                            has_hrefs = True&#xa;                            tree.addTopLevelItem(class_item)&#xa;                            tree.resizeColumnToContents(0)&#xa;                            tree.setFixedWidth(tree.columnWidth(0) + 5)&#xa;                            dialog.setFixedWidth(tree.columnWidth(0) + 10)&#xa;                            addReferences(class_item, other_feature.attribute(&quot;gml_id&quot;))&#xa;        if has_hrefs:&#xa;            dialog.show()" type="1" id="{9b434b27-f715-47de-ab53-029363671ac2}" isEnabledOnlyWhenEditable="0" notificationMessage="" name="Wyświetl relacje" icon="" capture="0" shortTitle="Wyświetl relacje">
      <actionScope id="Feature"/>
      <actionScope id="Canvas"/>
      <actionScope id="Field"/>
    </actionsetting>
    <actionsetting action="from qgis.PyQt.QtCore import Qt&#xa;from qgis.PyQt.QtWidgets import QDialog, QTableWidget, QHeaderView, QTableWidgetItem, QPushButton, QFileDialog, QMessageBox&#xa;import re&#xa;import csv&#xa;&#xa;csv_list = []&#xa;&#xa;&#xa;def configureDialog():&#xa;    dialog = QDialog()&#xa;    dialog.setWindowFlags(Qt.WindowStaysOnTopHint)&#xa;    dialog.setWindowTitle('Zestawienie EGiB')&#xa;    dialog.setFixedHeight(405)&#xa;    dialog.setFixedWidth(1200)&#xa;    table = QTableWidget(0, 8, dialog)&#xa;    table.move(5, 35)&#xa;    table.horizontalHeader().setSectionResizeMode(QHeaderView.Stretch)&#xa;    table.setColumnWidth(0, 134)&#xa;    table.setColumnWidth(1, 134)&#xa;    table.setColumnWidth(2, 134)&#xa;    table.setColumnWidth(3, 134)&#xa;    table.setColumnWidth(4, 134)&#xa;    table.setColumnWidth(5, 250)&#xa;    table.setColumnWidth(6, 134)&#xa;    table.setColumnWidth(7, 134)&#xa;    table.setHorizontalHeaderLabels(&#xa;        ['nazwaWlasnaObrebu', 'nrdzialki', 'iddzialki', 'powierzchniaEwidencyjna', 'klasouzytek',&#xa;         'powierzchniaEwidencyjnaKlasouzytku', 'nazwa', 'udzial'])&#xa;    table.setFixedHeight(360)&#xa;    table.setFixedWidth(1190)&#xa;    button = QPushButton(dialog)&#xa;    button.move(5, 5)&#xa;    button.setFixedHeight(25)&#xa;    button.setFixedWidth(25)&#xa;    button.setText('csv')&#xa;    button.clicked.connect(saveToCsv)&#xa;    return dialog, table&#xa;&#xa;def saveToCsv():&#xa;    csv_file = QFileDialog.getSaveFileName(dialog, 'Wybierz plik', '', 'Comma Separated Value(*.csv)')&#xa;    if csv_file[0] != &quot;&quot;:&#xa;        with open(csv_file[0], 'w', newline='', encoding='utf-8') as f:&#xa;            write = csv.writer(f)&#xa;            write.writerow(['nazwaWlasnaObrebu', 'nrdzialki', 'iddzialki', 'powierzchniaEwidencyjna', 'klasouzytek',&#xa;                            'powierzchniaEwidencyjnaKlasouzytku', 'nazwa', 'udzial'])&#xa;            write.writerows(csv_list)&#xa;        mbox = QMessageBox(dialog)&#xa;        mbox.setWindowTitle('Zestawienie EGiB - działka')&#xa;        mbox.setText('Zestawienie zostało zapisane we wskazanej lokalizacji')&#xa;        mbox.exec()&#xa;&#xa;project = QgsProject().instance()&#xa;for field_layer in project.mapLayersByName('[% @layer_name %]'):&#xa;    if field_layer.id() == '[% @layer_id %]':&#xa;        field_feature = field_layer.getFeature([% $id %])&#xa;        district = ''&#xa;        field_id = field_feature.attribute(&quot;idDzialki&quot;)&#xa;        field_number = re.sub(&quot;(.*)\\.(.*)$&quot;, r&quot;\2&quot;, field_id)&#xa;        field_area = field_feature.attribute(&quot;powierzchniaEwidencyjna&quot;)&#xa;        landuses = []&#xa;        ownerships = []&#xa;        for field in field_layer.fields():&#xa;            if field.comment() == 'EGB_JednostkaRejestrowaGruntow':&#xa;                jrg_layer = project.mapLayersByName(field.comment())[0]&#xa;                jrg_ids = field_feature.attribute(field.name())&#xa;                jrg_ids = '' if jrg_ids == NULL else jrg_ids&#xa;                ownership_layer = project.mapLayersByName('EGB_UdzialWlasnosci')[0]&#xa;                for jrg_id in jrg_ids.split(', '):&#xa;                    for jrg_feature in jrg_layer.getFeatures(&quot;gml_id = '%s'&quot; % jrg_id):&#xa;                        for jrg_field in jrg_layer.fields():&#xa;                            if jrg_field.comment() == 'EGB_ObrebEwidencyjny_powierzchnia':&#xa;                                district_layer = project.mapLayersByName(jrg_field.comment())[0]&#xa;                                district_ids = jrg_feature.attribute(jrg_field.name())&#xa;                                district_ids = '' if district_ids == NULL else &quot;'%s'&quot; % district_ids.replace(&quot;, &quot;,&#xa;                                                                                                             &quot;', '&quot;)&#xa;                                for district_feature in district_layer.getFeatures(&quot;gml_id IN(%s)&quot; % district_ids):&#xa;                                    district = district_feature.attribute(&quot;nazwaWlasna&quot;)&#xa;                    for ownership_field in ownership_layer.fields():&#xa;                        if ownership_field.comment() == field.comment():&#xa;                            for ownership_feature in ownership_layer.getFeatures(&#xa;                                    ownership_field.name() + &quot; LIKE '%&quot; + jrg_id + &quot;%'&quot;):&#xa;                                ownership_share = ownership_feature.attribute(&#xa;                                    &quot;licznikUlamkaOkreslajacegoWartoscUdzialu&quot;)&#xa;                                ownership_share += '/%s' % ownership_feature.attribute(&#xa;                                    &quot;mianownikUlamkaOkreslajacegoWartoscUdzialu&quot;)&#xa;                                if ownership_feature.attribute(&#xa;                                        &quot;podmiotUdzialuWlasnosci_EGBPodmiot_osobaFizyczna5&quot;) != NULL:&#xa;                                    owner_ids = ownership_feature.attribute(&#xa;                                        &quot;podmiotUdzialuWlasnosci_EGBPodmiot_osobaFizyczna5&quot;)&#xa;                                    owner_ids = '' if owner_ids == NULL else &quot;'%s'&quot; % owner_ids.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                                    owner_layer = project.mapLayersByName(&quot;EGB_OsobaFizyczna&quot;)[0]&#xa;                                    for owner_feature in owner_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids):&#xa;                                        owner = owner_feature.attribute(&quot;pierwszeImie&quot;)&#xa;                                        owner = '%s %s' % (owner, owner_feature.attribute(&#xa;                                            &quot;pierwszyCzlonNazwiska&quot;)) if owner_feature.attribute(&#xa;                                            &quot;pierwszyCzlonNazwiska&quot;) != NULL else owner&#xa;                                        owner = '%s %s' % (owner, owner_feature.attribute(&#xa;                                            &quot;drugiCzlonNazwiska&quot;)) if owner_feature.attribute(&#xa;                                            &quot;drugiCzlonNazwiska&quot;) != NULL else owner&#xa;                                        ownerships.append((owner, ownership_share))&#xa;                                elif ownership_feature.attribute(&#xa;                                        &quot;podmiotUdzialuWlasnosci_EGBPodmiot_malzenstwo4&quot;) != NULL:&#xa;                                    owner_ids = ownership_feature.attribute(&#xa;                                        &quot;podmiotUdzialuWlasnosci_EGBPodmiot_malzenstwo4&quot;)&#xa;                                    owner_ids = '' if owner_ids == NULL else &quot;'%s'&quot; % owner_ids.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                                    owner_layer = project.mapLayersByName(&quot;EGB_Malzenstwo&quot;)[0]&#xa;                                    for owner_feature in owner_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids):&#xa;                                        marriage_ids = &quot;'%s'&quot; % owner_feature.attribute(&quot;osobaFizyczna2&quot;)&#xa;                                        marriage_ids = &quot;%s, '%s'&quot; % (marriage_ids, owner_feature.attribute(&#xa;                                            &quot;osobaFizyczna3&quot;)) if marriage_ids != NULL else &quot;'%s'&quot; % owner_feature.attribute(&#xa;                                            &quot;osobaFizyczna3&quot;)&#xa;                                        owner_sub_layer = project.mapLayersByName(&quot;EGB_OsobaFizyczna&quot;)[0]&#xa;                                        owners = ''&#xa;                                        for owner_sub_feature in owner_sub_layer.getFeatures(&#xa;                                                &quot;gml_id in (%s)&quot; % marriage_ids):&#xa;                                            owner = owner_sub_feature.attribute(&quot;pierwszeImie&quot;)&#xa;                                            owner = '%s %s' % (owner, owner_sub_feature.attribute(&#xa;                                                &quot;pierwszyCzlonNazwiska&quot;)) if owner_sub_feature.attribute(&#xa;                                                &quot;pierwszyCzlonNazwiska&quot;) != NULL else owner&#xa;                                            owner = '%s %s' % (owner, owner_sub_feature.attribute(&#xa;                                                &quot;drugiCzlonNazwiska&quot;)) if owner_sub_feature.attribute(&#xa;                                                &quot;drugiCzlonNazwiska&quot;) != NULL else owner&#xa;                                            owners += owner if owners == '' else &quot;, %s&quot; % owner&#xa;                                        ownerships.append((owners, ownership_share))&#xa;                                elif ownership_feature.attribute(&#xa;                                        &quot;podmiotUdzialuWlasnosci_EGBPodmiot_instytucja3&quot;) != NULL:&#xa;                                    owner_ids = ownership_feature.attribute(&#xa;                                        &quot;podmiotUdzialuWlasnosci_EGBPodmiot_instytucja3&quot;)&#xa;                                    owner_ids = '' if owner_ids == NULL else &quot;'%s'&quot; % owner_ids.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                                    owner_layer = project.mapLayersByName(&quot;EGB_Instytucja&quot;)[0]&#xa;                                    for owner_feature in owner_layer.getFeatures(&quot;gml_id IN(%s)&quot; % owner_ids):&#xa;                                        owner = owner_feature.attribute(&quot;nazwaSkrocona&quot;)&#xa;                                        ownerships.append((owner, ownership_share))&#xa;            if field.comment() == 'EGB_Klasouzytek':&#xa;                landuse_layer = project.mapLayersByName(field.comment())[0]&#xa;                landuse_ids = field_feature.attribute(field.name())&#xa;                landuse_ids = '' if landuse_ids == NULL else &quot;'%s'&quot; % landuse_ids.replace(&quot;, &quot;, &quot;', '&quot;)&#xa;                for landuse_feature in landuse_layer.getFeatures(&quot;gml_id IN(%s)&quot; % landuse_ids):&#xa;                    ozu = landuse_feature.attribute(&quot;oznaczenieKlasouzytku_EGBOznaczenieKlasouzytku_OZU&quot;)&#xa;                    ozu = ozu if ozu != NULL else ''&#xa;                    ozk = landuse_feature.attribute(&quot;oznaczenieKlasouzytku_EGBOznaczenieKlasouzytku_OZK&quot;)&#xa;                    ozk = ozk if ozk != NULL else ''&#xa;                    landuses.append(&#xa;                        ('%s-%s' % (ozu, ozk), landuse_feature.attribute(&quot;powierzchniaEwidencyjnaKlasouzytku&quot;)))&#xa;        if len(landuses) > 0:&#xa;            dialog, table = configureDialog()&#xa;            for landuse in landuses:&#xa;                for ownership in ownerships:&#xa;                    rownum = table.rowCount()&#xa;                    table.insertRow(rownum)&#xa;                    table.setItem(rownum, 0, QTableWidgetItem(district))&#xa;                    table.setItem(rownum, 1, QTableWidgetItem(field_number))&#xa;                    table.setItem(rownum, 2, QTableWidgetItem(field_id))&#xa;                    table.setItem(rownum, 3, QTableWidgetItem(field_area))&#xa;                    table.setItem(rownum, 4, QTableWidgetItem(landuse[0]))&#xa;                    table.setItem(rownum, 5, QTableWidgetItem(landuse[1]))&#xa;                    table.setItem(rownum, 6, QTableWidgetItem(ownership[0]))&#xa;                    table.setItem(rownum, 7, QTableWidgetItem(ownership[1]))&#xa;                    csv_list.append(&#xa;                        [district, field_number, field_id, field_area, landuse[0], landuse[1], ownership[0], ownership[1]])&#xa;            dialog.show()" type="1" id="{f7fdff71-8b14-4475-8a93-2afd2baa0fb8}" isEnabledOnlyWhenEditable="0" notificationMessage="" name="Zestawienie EGiB - działka" icon="" capture="0" shortTitle="Zestawienie EGiB - działka">
      <actionScope id="Feature"/>
      <actionScope id="Canvas"/>
      <actionScope id="Field"/>
    </actionsetting>
  </attributeactions>
  <layerGeometryType>2</layerGeometryType>
</qgis>
