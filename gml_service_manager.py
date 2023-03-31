from PyQt5.QtCore import *
from qgis.core import *
from .gml_logger_mode import GMLLoggerMode
from .gml_service_ranges_dialog import GMLServiceRangesDialog
from qgis.PyQt.QtWidgets import QTreeWidgetItem, QPushButton, QWidget, QHBoxLayout, QInputDialog
from qgis.gui import QgsRubberBand
from qgis.PyQt.QtGui import QColor
import os
import json
import requests
from owslib.wms import WebMapService

api_url = 'https://www.c-geoportal.pl/backend/gis/collections'
layers_map = {'Działki ewidencyjne': ('dzialki', 'MultiPolygon', 'Dzialki_ewidencyjne.qml', 'parcels'),
              'Budynki': ('budynki', 'MultiPolygon', 'Budynki.qml', 'buildings'),
              'MPZP': ('mpzp', 'MultiPolygon', 'MPZP.qml', 'mpzp')}
criteria_map = {'Działki zabudowane': ('buildings', 'budynki_filtr', ''),
                'Działki na terenach mieszkaniowych wg MPZP': ('mpzp', 'mpzp_filtr',
                                                               "oznaczenie_symbol ILIKE 'mn%' OR oznaczenie_symbol ILIKE 'mw%' OR oznaczenie_symbol ILIKE 'ml%'")}
mpzp_action_path = os.path.join(os.path.dirname(__file__), "actionDownloadMpzpImage.py")
wms_url = 'crs=EPSG:2180&dpiMode=7&format=image/png&layers=Mpzp&styles&url=https://www.c-geoportal.pl/mapserver/?map%3D/map/cgeoportal/mpzp.map'


class GMLServiceManager:
    def __init__(self, gml_tool, iface, project, dockwidget, logger):
        self.gml_tool = gml_tool
        self.iface = iface
        self.project = project
        self.dockwidget = dockwidget
        self.logger = logger
        self.feature_based_service = False
        self.dest_epsg = '2180'
        self.dest_crs = QgsCoordinateReferenceSystem('EPSG:%s' % self.dest_epsg)
        self.wgs_crs = QgsCoordinateReferenceSystem('EPSG:4326')
        self.root_path = os.path.join(os.path.dirname(__file__), "service_data")
        self.ranges_list = []
        self.ranges_dialog = GMLServiceRangesDialog(self)
        self.ranges_tree = self.ranges_dialog.ranges_tree

    def setFeatureBasedService(self, is_feature_based):
        self.feature_based_service = is_feature_based

    def requestServiceData(self):
        try:
            service_name = self.dockwidget.service_combo.currentText()
            help_l = self.gml_tool.help_l
            if help_l != 0:
                if service_name == '':
                    self.logger.logMessage("Wizualizacja GML",
                                           "Należy wybrać rodzaj danych", Qgis.Info, GMLLoggerMode.loud)
                else:
                    table_name = layers_map[service_name][0]
                    data_path = os.path.join(self.root_path, "%s.json" % table_name)
                    can_request = True
                    for layer in self.project.mapLayersByName(table_name):
                        if os.path.normpath(data_path) == os.path.normpath(layer.dataProvider().dataSourceUri()):
                            can_request = False
                    if can_request:
                        self.getServiceData(True, help_l, service_name, table_name)
                    else:
                        self.overwriteServiceLayer(table_name, help_l, service_name)
        except Exception as e:
            self.logger.logMessage("Wizualizacja GML",
                                   "Błąd pobierania danych:\n%s" % e, Qgis.Critical,
                                   GMLLoggerMode.loud)

    def overwriteServiceLayer(self, table_name, help_l, service_name):
        dialog = QInputDialog()
        dialog.finished.connect(lambda result: self.getServiceData(result, help_l, service_name, dialog.textValue()))
        dialog.setWindowTitle('Wizualizacja GML')
        dialog.setLabelText(
            'Warstwa <b>%s</b> jest wczytana do projektu, podaj inną nazwę jeżeli nie chcesz jej nadpisać' % table_name)
        dialog.open()

    def getServiceData(self, can, help_l, service_name, table_name):
        if can:
            if table_name.strip() == '':
                table_name = layers_map[service_name][0]
            geometry_type = layers_map[service_name][1]
            api_name = layers_map[service_name][3]
            range_geom = None
            can_download = False
            if self.feature_based_service:
                layer = self.iface.activeLayer()
                if layer.type() == QgsMapLayer.VectorLayer and layer.isSpatial():
                    if layer.selectedFeatureCount() > 0:
                        geometry_list = []
                        for feature in layer.getSelectedFeatures():
                            geometry_list.append(feature.geometry())
                        range_geom = QgsGeometry.unaryUnion(geometry_list)
                        tr = QgsCoordinateTransform(layer.sourceCrs(), self.dest_crs, self.project)
                        range_geom.transform(tr)
                        if range_geom.type() == 0:
                            can_download = range_geom.boundingBox().area() <= help_l
                            if not can_download:
                                self.logger.logMessage("Wizualizacja GML",
                                                       "Błąd pobierania danych - zasięg zaznaczonych punktów przekracza %s ha" % int(
                                                           help_l / 10000),
                                                       Qgis.Warning, GMLLoggerMode.loud)
                        elif range_geom.type() == 1:
                            can_download = range_geom.length() <= help_l / 100
                            if not can_download:
                                self.logger.logMessage("Wizualizacja GML",
                                                       "Błąd pobierania danych - długość zaznaczonych linii przekracza %s km" % int(
                                                           help_l / 100000),
                                                       Qgis.Warning, GMLLoggerMode.loud)
                        elif range_geom.type() == 2:
                            can_download = range_geom.area() <= help_l
                            if not can_download:
                                self.logger.logMessage("Wizualizacja GML",
                                                       "Błąd pobierania danych - zasięg przekracza %s ha" % int(
                                                           help_l / 10000),
                                                       Qgis.Warning, GMLLoggerMode.loud)
            else:
                range_geom = self.gml_tool.rubber.asGeometry()
                tr = QgsCoordinateTransform(self.project.crs(), self.dest_crs, self.project)
                range_geom.transform(tr)
                can_download = range_geom.area() <= help_l
                if not can_download:
                    self.logger.logMessage("Wizualizacja GML",
                                           "Błąd pobierania danych - zasięg przekracza %s ha" % int(
                                               help_l / 10000),
                                           Qgis.Warning, GMLLoggerMode.loud)
            if range_geom is not None and not range_geom.isNull() and not range_geom.isEmpty():
                if can_download:
                    geom_wkt = range_geom.asWkt(3)
                    if geom_wkt not in self.ranges_list:
                        self.ranges_list.append(geom_wkt)
                    self.refreshRangesTree()
                    geometry_hex = geom_wkt.encode('utf-8').hex()
                    data_path, table_name = self.downloadApiData(api_name, geometry_hex, table_name)
                    if data_path is not None:
                        data_layer = QgsVectorLayer(data_path, table_name, "ogr")
                        if data_layer.featureCount() > 0:
                            service_criteria = self.dockwidget.service_criteria_combo.currentText()
                            if service_criteria != '':
                                self.filterDataLayer(data_layer, geometry_hex, service_criteria)
                            if data_layer.featureCount() > 0:
                                self.removeEmptyColumns(data_layer)
                                if table_name == 'mpzp':
                                    self.addAction(data_layer)
                                for layer in self.project.mapLayersByName(table_name):
                                    if os.path.normpath(data_path) == os.path.normpath(
                                            layer.dataProvider().dataSourceUri()):
                                        self.project.removeMapLayer(layer)
                                service_style = layers_map[service_name][2]
                                style_path = os.path.join(os.path.dirname(__file__), "styles", "services",
                                                          "%s" % service_style)
                                data_layer.loadNamedStyle(style_path, False,
                                                          QgsMapLayer.Symbology | QgsMapLayer.Labeling)
                                self.project.addMapLayer(data_layer)
                            else:
                                self.logger.logMessage("Wizualizacja GML",
                                                       "Brak danych na zaznaczonym obszarze, które spełniają dodatkowe kryteria",
                                                       Qgis.Info, GMLLoggerMode.loud)
                        else:
                            self.logger.logMessage("Wizualizacja GML",
                                                   "Brak danych na zaznaczonym obszarze",
                                                   Qgis.Info, GMLLoggerMode.loud)
            else:
                self.logger.logMessage("Wizualizacja GML",
                                       "Brak możliwości pobrania danych - należy zaznaczyć obszar lub obiekty wektorowej warstwy mapy",
                                       Qgis.Warning, GMLLoggerMode.loud)

    def filterDataLayer(self, data_layer, geometry_hex, service_criteria):
        f_api_name = criteria_map[service_criteria][0]
        f_table_name = criteria_map[service_criteria][1]
        filter_value = criteria_map[service_criteria][2]
        f_data_path, f_table_name = self.downloadApiData(f_api_name, geometry_hex, f_table_name)
        filter_layer = QgsVectorLayer(f_data_path, f_table_name, "ogr")
        f_geometries = []
        filter_layer.setSubsetString(filter_value)
        for f_feature in filter_layer.getFeatures():
            f_geometries.append(f_feature.geometry())
        f_geometry = QgsGeometry.unaryUnion(f_geometries)
        data_layer.startEditing()
        del_fid = []
        for feature in data_layer.getFeatures():
            if not feature.geometry().overlaps(f_geometry):
                del_fid.append(feature.id())
        data_layer.deleteFeatures(del_fid)
        data_layer.commitChanges()

    def removeEmptyColumns(self, data_layer):
        feature_count = data_layer.featureCount()
        fields = data_layer.fields()
        remove_indexes = []
        for field in fields:
            field_name = field.name()
            index = fields.indexOf(field_name)
            data_layer.setSubsetString('"%s" IS NULL' % field_name)
            if data_layer.featureCount() == feature_count:
                remove_indexes.append(index)
        data_layer.setSubsetString("")
        if len(remove_indexes) > 0:
            data_provider = data_layer.dataProvider()
            data_layer.startEditing()
            data_provider.deleteAttributes(remove_indexes)
            data_layer.updateFields()
            data_layer.commitChanges()

    def addAction(self, data_layer):
        action_file = open(mpzp_action_path, 'r')
        action = QgsAction(
            QgsAction.GenericPython,
            "Pobierz rysunek MPZP",
            "".join(action_file),
            "",
            False,
            "Rysunek MPZP",
            {"Canvas", "Feature", "Field"})
        action_manager = data_layer.actions()
        action_manager.setDefaultAction("Canvas", action.id())
        action_manager.addAction(action)
        action_file.close()

    def downloadApiData(self, api_name, geometry_hex, table_name):
        data_path = os.path.join(self.root_path, "%s.json" % table_name)
        url = '%s/%s/items?geometryhex=%s' % (api_url, api_name, geometry_hex)
        r = requests.get(url)
        data = r.json()
        with open(data_path, 'w') as outfile:
            json.dump(data, outfile, ensure_ascii=False)
        return data_path, table_name

    def decdeg2dms(self, dd):
        negative = dd < 0
        dd = abs(dd)
        minutes, seconds = divmod(dd * 3600, 60)
        degrees, minutes = divmod(minutes, 60)
        if negative:
            if degrees > 0:
                degrees = -degrees
            elif minutes > 0:
                minutes = -minutes
            else:
                seconds = -seconds
        degrees, minutes, seconds = int(degrees), int(minutes), round(seconds, 4)
        return "%s°%s'%s″" % (degrees, minutes, seconds)

    def refreshRangesTree(self):
        c = 1
        self.ranges_tree.clear()
        tr = QgsCoordinateTransform(self.dest_crs, self.wgs_crs, self.project)
        for service_range in self.ranges_list:
            range_center = QgsGeometry.fromWkt(service_range).centroid()
            range_center.transform(tr)
            range_center_point = range_center.asPoint()
            lon = self.decdeg2dms(range_center_point.x())
            lat = self.decdeg2dms(range_center_point.y())
            range_item = QTreeWidgetItem(self.ranges_tree)
            range_item.setText(0, '%s: %s %s' % (c, lon, lat))
            range_item.setData(0, 1, service_range)
            self.ranges_tree.addTopLevelItem(range_item)
            c += 1

    def loadWms(self):
        wms_layer_name = 'MPZP_zasięg'
        can_load = True
        for layer in self.project.mapLayersByName(wms_layer_name):
            if layer.providerType() == 'wms':
                can_load = False
        if can_load:
            try:
                wms_layer = QgsRasterLayer(wms_url, wms_layer_name, 'wms')
                if wms_layer.isValid():
                    self.project.addMapLayer(wms_layer)
                else:
                    self.logger.logMessage("Wizualizacja GML",
                                           "Warstwa %s nie jest poprawnym źródłem danych" % wms_layer_name, Qgis.Critical,
                                           GMLLoggerMode.loud)
            except Exception as e:
                self.logger.logMessage("Wizualizacja GML",
                                       "Błąd wczytywania WMS:\n%s" % e, Qgis.Critical,
                                       GMLLoggerMode.loud)
        else:
            self.logger.logMessage("Wizualizacja GML",
                                   "Warstwa %s jest wczytana do projektu" % wms_layer_name, Qgis.Info,
                                   GMLLoggerMode.loud)

    def zoomToRange(self, input_range):
        self.gml_tool.setRubber(input_range, self.gml_tool.zoom_rubber)

    def switchToRange(self, input_range):
        self.feature_based_service = False
        self.dockwidget.service_feature_button.setChecked(False)
        self.gml_tool.setRubber(input_range, self.gml_tool.rubber)

    def deleteRange(self, input_range):
        tr = QgsCoordinateTransform(self.project.crs(), self.dest_crs, self.project)
        zoom_rubber_geom = self.gml_tool.zoom_rubber.asGeometry()
        rubber_geom = self.gml_tool.rubber.asGeometry()
        zoom_rubber_geom.transform(tr)
        rubber_geom.transform(tr)
        if input_range == zoom_rubber_geom.asWkt(3):
            self.gml_tool.zoom_rubber.reset()
        if input_range == rubber_geom.asWkt(3):
            self.gml_tool.rubber.reset()
            self.gml_tool.annotation_layer.clear()

        self.ranges_list.remove(input_range)
        self.refreshRangesTree()

    def showRangesDialog(self):
        self.ranges_dialog.show()

    def closeRangesDialog(self):
        self.ranges_dialog.close()
