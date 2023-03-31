from qgis.core import *
from qgis.gui import QgsMapTool, QgsMapToolPan, QgsRubberBand, QgsSnapIndicator
from qgis.PyQt.QtGui import QColor, QKeySequence
from qgis.PyQt.QtWidgets import QShortcut
from qgis.PyQt.QtCore import Qt


color = QColor(0, 128, 0)
error_color = QColor(255, 0, 0)
fill_color = QColor(0, 128, 0, 125)
temp_fill_color = QColor(0, 0, 0, 0)
RECTANGLE = 'Rectangle'
POLYGON = 'Polygon'
wgs_crs = QgsCoordinateReferenceSystem('EPSG:4326')
polish_crs = QgsCoordinateReferenceSystem('EPSG:2180')


class GMLTool(QgsMapTool):
    def __init__(self, map_canvas, iface, project, dockwidget, help_l):
        self.able_to_download = True
        self.map_canvas = map_canvas
        self.iface = iface
        self.project = project
        self.dockwidget = dockwidget
        self.help_l = help_l
        self.annotation_layer = self.project.mainAnnotationLayer()
        self.start_new_rubber = True
        self.zoom_rubber = QgsRubberBand(self.map_canvas, QgsWkbTypes.PolygonGeometry)
        self.configureZoomRubber()
        self.rubber, self.temp_rubber, self.rubber_geom, self.rubber_type = None, None, None, None
        shortcut = QShortcut(QKeySequence(Qt.Key_Backspace), iface.mainWindow())
        shortcut.setContext(Qt.ApplicationShortcut)
        shortcut.activated.connect(lambda: self.keyPressEvent(None))
        QgsMapTool.__init__(self, self.map_canvas)

    def configureZoomRubber(self):
        self.zoom_rubber.setColor(QColor(255, 255, 0))
        self.zoom_rubber.setFillColor(QColor(255, 255, 0, 125))
        self.zoom_rubber.setWidth(2)

    def createRubber(self, rubber_type, color, fill_color, line_style):
        rubber = QgsRubberBand(self.map_canvas, rubber_type)
        rubber.setColor(color)
        rubber.setFillColor(fill_color)
        rubber.setLineStyle(line_style)
        return rubber

    def canvasReleaseEvent(self, event):
        button = event.button()
        if button == Qt.LeftButton:
            point = event.mapPoint()
            if self.start_new_rubber:
                self.rubber.reset(self.rubber_geom)
                self.start_new_rubber = False
                self.rubber.addPoint(point)
                self.temp_rubber.addPoint(point)
            else:
                if self.rubber_type == RECTANGLE:
                    self.rubber.reset(self.rubber_geom)
                    self.rubber.addGeometry(self.temp_rubber.asGeometry())
                    self.temp_rubber.reset(self.rubber_geom)
                    self.start_new_rubber = True
                if self.rubber_type == POLYGON:
                    self.rubber.addPoint(point)
                    self.temp_rubber.addPoint(point)
        if button == Qt.RightButton:
            if self.rubber_type == POLYGON:
                self.start_new_rubber = True
                self.temp_rubber.reset(self.rubber_geom)

    def canvasMoveEvent(self, event):
        geometry = self.rubber.asGeometry()
        if not geometry.isEmpty() and not self.start_new_rubber:
            point = event.mapPoint()
            if self.rubber_type == RECTANGLE:
                start_point = self.rubber.getPoint(0)
                self.temp_rubber.reset(self.rubber_geom)
                p2 = QgsPointXY(point.x(), start_point.y())
                p3 = QgsPointXY(start_point.x(), point.y())
                self.temp_rubber.addPoint(start_point)
                self.temp_rubber.addPoint(p2)
                self.temp_rubber.addPoint(point)
                self.temp_rubber.addPoint(p3)
                self.temp_rubber.addPoint(start_point)
                self.addAreaLabel()
            else:
                self.temp_rubber.removeLastPoint()
                self.temp_rubber.addPoint(point)
                self.addAreaLabel()

    def keyPressEvent(self, event):
        key = Qt.Key_Backspace if event is None else event.key()
        if key == Qt.Key_Escape:
            self.clearRubber()
        if key == Qt.Key_Backspace:
            geometry = self.rubber.asGeometry()
            if self.rubber_type == POLYGON and not self.start_new_rubber:
                if not geometry.isEmpty():
                    c = 0
                    for v in geometry.vertices():
                        if c > 2:
                            break
                        c += 1
                    if c > 2:
                        self.rubber.removeLastPoint()
                        self.temp_rubber.removeLastPoint()
                    self.addAreaLabel()

    def drawShape(self, shape_type):
        if self.rubber_type is not None:
            self.clearRubber()
        self.rubber_type = shape_type
        self.rubber_geom = QgsWkbTypes.PolygonGeometry
        self.rubber = self.createRubber(self.rubber_geom, color, fill_color, Qt.SolidLine)
        self.temp_rubber = self.createRubber(self.rubber_geom, color, temp_fill_color, Qt.DashLine)
        self.map_canvas.setMapTool(self)

    def clearRubber(self):
        self.annotation_layer.clear()
        if self.rubber is not None:
            self.rubber.reset(self.rubber_geom)
        if self.temp_rubber is not None:
            self.temp_rubber.reset(self.rubber_geom)
        if self.zoom_rubber is not None:
            self.zoom_rubber.reset()
        self.start_new_rubber = True

    def addAreaLabel(self, rubber=None):
        if rubber is None:
            rubber = self.temp_rubber
        self.annotation_layer.clear()
        zone_geom = rubber.asGeometry()
        if not zone_geom.isEmpty():
            c = 0
            for v in zone_geom.vertices():
                if c > 3:
                    break
                c += 1
            if c > 3:
                tr_wgs = QgsCoordinateTransform(self.project.crs(), wgs_crs, self.project)
                tr_polish = QgsCoordinateTransform(self.project.crs(), polish_crs, self.project)
                if self.project.crs() == polish_crs:
                    area = zone_geom.area()
                else:
                    zone_geom_polish = QgsGeometry(zone_geom)
                    zone_geom_polish.transform(tr_polish)
                    area = zone_geom_polish.area()
                self.able_to_download = area <= self.help_l
                if area < 100:
                    unit = 'm2'
                elif 100 < area < 10000:
                    area = area / 100
                    unit = 'a'
                else:
                    area = area / 10000
                    unit = 'ha'
                if self.project.crs() != wgs_crs:
                    zone_geom.transform(tr_wgs)
                point_geom = zone_geom.centroid()
                label = QgsAnnotationPointTextItem('%s %s' % (int(area), unit), point_geom.asPoint())
                text_format = QgsTextFormat()
                text_format.setColor(color if self.able_to_download else error_color)
                font = text_format.font()
                font.setBold(True)
                text_format.setFont(font)
                label.setFormat(text_format)
                self.annotation_layer.addItem(label)

    def setSelectionTool(self, artificial_set=True):
        self.iface.actionSelect().trigger()
        self.manageToolUsage(None, self, artificial_set)

    def manageToolUsage(self, new_tool, old_tool, artificial_set=False):
        if new_tool != self:
            if artificial_set:
                self.dockwidget.service_feature_button.setChecked(False)
            else:
                self.dockwidget.service_rectangle_button.setChecked(False)
                self.dockwidget.service_polygon_button.setChecked(False)
        if old_tool == self:
            if artificial_set:
                self.clearRubber()

    def setRubber(self, input_range, rubber):
        tr_project = QgsCoordinateTransform(polish_crs, self.project.crs(), self.project)
        canvas_extent = QgsGeometry.fromRect(self.map_canvas.extent())
        polygon_type = QgsWkbTypes.PolygonGeometry
        rubber.reset(polygon_type)
        range_geometry = QgsGeometry.fromWkt(input_range)
        rubber.addGeometry(range_geometry, polish_crs)
        range_geometry.transform(tr_project)
        if not range_geometry.within(canvas_extent):
            map_pos = range_geometry.centroid().asPoint()
            rect = QgsRectangle(map_pos, map_pos)
            self.map_canvas.setExtent(rect)
            self.map_canvas.refresh()
        if rubber == self.rubber:
            self.addAreaLabel(rubber)
