# -*- coding: utf-8 -*-
from qgis.PyQt.QtCore import Qt
from qgis.PyQt.QtWidgets import QTreeWidgetItem
from .gml_logger_mode import GMLLoggerMode
from .gml_layer_manager import GMLLayerManager
from .gml_select_layers_dialog import GMLSelectLayersDialog
from qgis.core import *
from xml.etree import ElementTree as ET
import re
import time


class GMLLoader:

    def __init__(self, dockwidget, logger, project, legend_manager, reports_manager, reader, validator):
        self.dockwidget = dockwidget
        self.logger = logger
        self.layer_manager = GMLLayerManager(project)
        self.legend_manager = legend_manager
        self.reader = reader
        self.reports_manager = reports_manager
        self.gml_validator = validator

    def loadGML(self):
        gml_path = self.dockwidget.gml_path.text()
        if gml_path == "":
            self.logger.logMessage("Wizualizacja GML", "Należy wskazać ścieżkę do pliku GML", Qgis.Warning, GMLLoggerMode.loud)
        else:
            start_time = time.time()
            get_archival = self.dockwidget.get_archival.isChecked()
            only_archival = self.dockwidget.only_archival.isChecked()
            features = ET.parse(r"%s" % gml_path).getroot()
            classes_dict = self.reader.collectInfoAboutFeaturesAndClasses(features)
            gml_version = self.reader.getGmlVersion(gml_path)
            self.legend_manager.getLegendSchema(self.dockwidget.legend_combo.currentText(), gml_version)
            self.reports_manager.setVersion(gml_version)
            layers_positions = []
            for key in classes_dict.keys():
                structure, geometries, features_data = self.reader.readGMLDataAndStructure(key)
                gml_layer = self.layer_manager.generateGMLLayer(geometries, key, structure, features_data, gml_version)
                position = self.legend_manager.getLayerPositionInLegend(gml_layer.name())
                if get_archival is False and only_archival is False:
                    if '_ARCH' not in key:
                        layers_positions.append((gml_layer, position))
                elif get_archival is True:
                    layers_positions.append((gml_layer, position))
                elif only_archival:
                    if '_ARCH' in key:
                        layers_positions.append((gml_layer, position))
            layers_positions.sort(key=lambda x: x[1])
            duration = int(time.time() - start_time)
            if self.dockwidget.validate_gml.isChecked():
                self.gml_validator.validateGML(self.dockwidget.gml_path.text())
            select_layers_dialog = GMLSelectLayersDialog()
            layers_tree = self.configureSelectLayersDialog(layers_positions, duration, select_layers_dialog)

    def configureSelectLayersDialog(self, layers_positions, duration, select_layers_dialog):
        layers_tree = self.fillSelectLayersDialog(layers_positions, select_layers_dialog)
        select_layers_dialog.finished.connect(lambda result: self.selectedLayersDialogClosed(result, layers_positions, layers_tree, duration))
        select_layers_dialog.open()
        return layers_tree

    def selectedLayersDialogClosed(self, result, layers_positions, layers_tree, duration):
        if result:
            self.loadSelectedLayers(layers_positions, layers_tree, duration)

    def fillSelectLayersDialog(self, layers_positions, select_layers_dialog):
        layers_tree = select_layers_dialog.layers_tree
        for layer_position in layers_positions:
            layer = layer_position[0]
            layer_item = QTreeWidgetItem(layers_tree)
            layer_item.setText(0, layer.name())
            layer_item.setText(1, QgsWkbTypes.geometryDisplayString(layer.geometryType()))
            layer_item.setText(2, str(layer.featureCount()))
            layer_item.setCheckState(0, Qt.Checked)
        return layers_tree

    def loadSelectedLayers(self, layers_positions, layers_tree, duration):
        gml_layers = []
        for layer_position in layers_positions:
            gml_layer = layer_position[0]
            tree_layer = layers_tree.findItems(gml_layer.name(), Qt.MatchExactly, 0)[0]
            if tree_layer.checkState(0) == Qt.Checked:
                gml_layers.append(gml_layer)
        self.legend_manager.addLayersToLegend(gml_layers)
        self.layer_manager.joinLayersWithGraphicPresentation(gml_layers)
        duration, units = (int(duration / 60), "min") if duration > 60 else (duration, "s")
        self.logger.logMessage("Wizualizacja GML", "Wczytano dane GML (%s %s)" % (duration, units), Qgis.Success, GMLLoggerMode.quiet)
