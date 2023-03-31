# -*- coding: utf-8 -*-
from qgis.core import *
from PyQt5.QtCore import *
from .gml_logger_mode import GMLLoggerMode
from qgis.PyQt.QtWidgets import QInputDialog, QMessageBox
import os
import json
import re
from collections import OrderedDict


class GMLLegendManager:

    def __init__(self, project, iface, dockwidget, logger):
        self.project = project
        self.iface = iface
        self.dockwidget = dockwidget
        self.logger = logger
        self.root_path = os.path.join(os.path.dirname(__file__), "legends")
        self.iface.mapCanvas().scaleChanged.connect(self.manageVisibilityByScale)
        self.layer_renderer_rules = {}

    def manageVisibilityByScale(self, scale):
        if scale <= 5001:
            if len(self.layer_renderer_rules) > 0:
                for layer in self.project.mapLayers().values():
                    renderer = layer.renderer()
                    if renderer is not None and renderer.type() == "RuleRenderer":
                        root_rule = renderer.rootRule()
                        for child in root_rule.children():
                            if layer.id() in self.layer_renderer_rules.keys():
                                for rule in self.layer_renderer_rules[layer.id()]:
                                    if child.label() == rule.label():
                                        child.setMaximumScale(rule.maximumScale())
                                        child.setMinimumScale(rule.minimumScale())
                        layer.setRenderer(renderer)
                        layer.triggerRepaint()
                        self.iface.layerTreeView().refreshLayerSymbology(layer.id())
        else:
            for layer in self.project.mapLayers().values():
                renderer = layer.renderer()
                if renderer is not None and renderer.type() == "RuleRenderer":
                    root_rule = renderer.rootRule()
                    rules = []
                    for child in root_rule.children():
                        rules.append(child.clone())
                        child.setMaximumScale(0)
                        child.setMinimumScale(0)
                    layer.setRenderer(renderer)
                    layer.triggerRepaint()
                    self.iface.layerTreeView().refreshLayerSymbology(layer.id())
                    if layer.id() not in self.layer_renderer_rules.keys():
                        self.layer_renderer_rules[layer.id()] = rules

    def getLegendSchema(self, legend_name, gml_version):
        if legend_name == "Standardowa legenda":
            legend_file = open(os.path.join(self.root_path, gml_version, "%s.json" % legend_name))
        else:
            legend_file = open(os.path.join(self.root_path, "%s.json" % legend_name))
        self.default_legend = OrderedDict(json.load(legend_file))
        legend_file.close()

    def addLayersToLegend(self, layers):
        layers_root = self.project.layerTreeRoot()
        for layer in layers:
            groups = self.getLayerGroups(layer.name())
            if groups is None or not groups:
                self.project.addMapLayer(layer, False)
                layers_root.insertLayer(-1, layer)
            else:
                self.createLayerGroups(groups, layers_root, layer)
        self.reorderLayers()

    def reorderLayers(self):
        layers_positions = []
        for layer in self.project.mapLayers().values():
            position = self.getLayerPositionInLegend(layer.name())
            layers_positions.append((layer, position))
        layers_positions.sort(key=lambda x: x[1])
        layers_ordered = []
        for layer_position in layers_positions:
            layers_ordered.append(layer_position[0])
        root = self.iface.layerTreeCanvasBridge().rootGroup()
        root.setHasCustomLayerOrder(True)
        root.setCustomLayerOrder(layers_ordered)

    def getLayerGroups(self, layer_name):
        for key in self.default_legend.keys():
            if layer_name == key:
                return self.default_legend[key]
        return None

    def getLayerPositionInLegend(self, layer_name):
        counter = 0
        for key in self.default_legend.keys():
            if layer_name == key:
                return counter
            counter += 1
        return 0

    def createLayerGroups(self, groups, layers_root, layer):
        root_group = groups.pop(0)
        if layers_root.findGroup(root_group) is not None:
            root_group = layers_root.findGroup(root_group)
        else:
            root_group = layers_root.insertGroup(-1, root_group)
        while len(groups) > 0:
            child_group = groups.pop(0)
            if root_group.findGroup(child_group) is not None:
                child_group = root_group.findGroup(child_group)
            else:
                child_group = root_group.insertGroup(-1, child_group)
            root_group = child_group
        self.project.addMapLayer(layer, False)
        root_group.insertLayer(-1, layer)

    def saveUserLegend(self):
        layers_root = self.project.layerTreeRoot()
        layers_groups = OrderedDict()
        self.scanLegend(layers_root, layers_groups)
        if len(layers_groups) == 0:
            self.logger.logMessage("Wizualizacja GML", "Legenda nie posiada wpisów, zapis niemożliwy", Qgis.Info,
                                   GMLLoggerMode.loud)
        else:
            layers_groups = self.getLayersOrder(layers_groups)
            self.configureSaveLegendDialog(layers_groups)

    def scanLegend(self, root, layers_groups):
        for legend_item in root.children():
            if legend_item.nodeType() == 0:
                self.scanLegend(legend_item, layers_groups)
            else:
                groups = []
                layer = legend_item.name()
                while legend_item.parent().name() != '':
                    groups.append(legend_item.parent().name())
                    legend_item = legend_item.parent()
                layers_groups[layer] = groups[::-1]

    def getLayersOrder(self, layers_groups):
        layers_groups_ordered = OrderedDict()
        root = self.iface.layerTreeCanvasBridge().rootGroup()
        for layer in root.customLayerOrder():
            layers_groups_ordered[layer.name()] = layers_groups[layer.name()]
        return layers_groups_ordered

    def configureSaveLegendDialog(self, layers_groups):
        dialog = QInputDialog(self.dockwidget)
        dialog.finished.connect(lambda result: self.legendDialogClosed(result, dialog, layers_groups))
        dialog.setLabelText("Podaj nazwę legendy")
        legend_name = self.dockwidget.legend_combo.currentText()
        dialog.setInputMode(0)
        if legend_name != "Standardowa legenda":
            dialog.setTextValue(legend_name)
        dialog.setWindowTitle("GML")
        dialog.open()

    def legendDialogClosed(self, result, dialog, layers_groups):
        if result:
            legend_name = dialog.textValue()
            if legend_name == "Standardowa legenda":
                self.logger.logMessage("Wizualizacja GML", "Domyślna legenda nie może zostać nadpisana", Qgis.Warning,
                                       GMLLoggerMode.loud)
            elif self.dockwidget.legend_combo.findText(legend_name) == -1:
                self.saveLegend(layers_groups, legend_name)
            else:
                self.configureLegendMessage("Legenda o podanej nazwie już istnieje, czy chcesz ją nadpisać?",
                                            layers_groups, legend_name)

    def configureLegendMessage(self, message, layers_groups=None, legend_name=None):
        message_box = QMessageBox(self.dockwidget)
        message_box.finished.connect(
            lambda result: self.legendMessageBoxClosed(result, message_box, layers_groups, legend_name))
        message_box.setWindowTitle("GML")
        message_box.setText(message)
        message_box.setStandardButtons(QMessageBox.Yes | QMessageBox.No)
        message_box.open()

    def legendMessageBoxClosed(self, result, message_box, layers_groups, legend_name):
        if message_box.result() == QMessageBox.Yes:
            if layers_groups is not None:
                self.saveLegend(layers_groups, legend_name)
            else:
                legend_name = self.dockwidget.legend_combo.currentText()
                legend_path = os.path.join(self.root_path, "%s.json" % legend_name)
                os.remove(legend_path)
                self.logger.logMessage("Wizualizacja GML", "Legenda \"%s\" została usunięta" % legend_name, Qgis.Info,
                                       GMLLoggerMode.quiet)
                self.dockwidget.loadLegends()

    def saveLegend(self, layers_groups, legend_name):
        legend_path = os.path.join(self.root_path, "%s.json" % legend_name)
        with open(legend_path, 'w') as outfile:
            json.dump(layers_groups, outfile, ensure_ascii=False)
        self.dockwidget.loadLegends()
        self.logger.logMessage("Wizualizacja GML", "Legenda zapisana do pliku: %s" % legend_path, Qgis.Info,
                               GMLLoggerMode.quiet)

    def removeUserLegend(self):
        self.configureLegendMessage("Czy chcesz usunąć wybraną legendę?")

