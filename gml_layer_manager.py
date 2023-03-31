# -*- coding: utf-8 -*-
from qgis.core import *
from PyQt5.QtCore import *
from .gml_actions_handler import GMLActionsHandler
from .gml_legend_manager import GMLLegendManager
from .gml_reports_manager import GMLReportsManager
from qgis import processing
import os
import re


class GMLLayerManager:

    def __init__(self, project):
        self.project = project
        self.actions_handler = GMLActionsHandler()
        self.has_help = False
        self.help_expired = False

    def generateGMLLayer(self, geometries, layer_name, structure, features_data, gml_version):
        layer = self.createLayer(geometries, layer_name)
        self.addLayerFields(layer, structure)
        self.addRefAction(layer)
        self.addArchAction(layer)
        if layer.name() == 'EGB_DzialkaEwidencyjna_powierzchnia' and gml_version == 'old':
            self.actions_handler.addAction(layer, 'Zestawienie EGiB - działka')
            self.actions_handler.addAction(layer, 'Wyświetl budynki przynależne do działki')
            self.actions_handler.addAction(layer, 'Właściciele działki ewidencyjnej')
        if layer.name() == 'EGB_DzialkaEwidencyjna_powierzchnia' and gml_version == 'new':
            self.actions_handler.addAction(layer, 'Zestawienie EGiB - działka ')
            self.actions_handler.addAction(layer, 'Wyświetl budynki przynależne do działki ')
            self.actions_handler.addAction(layer, 'Właściciele działki ewidencyjnej ')
        self.addLayerFeatures(layer, features_data, structure)
        self.loadLayerStyle(layer, gml_version)
        return layer

    def createLayer(self, geometries, layer_name):
        if len(geometries) == 0:
            layer = QgsVectorLayer('None', layer_name, 'memory')
        else:
            geom_type_enum = None
            for geom_key in geometries.keys():
                if geom_type_enum is None:
                    geom_type_enum = geom_key
                else:
                    if geom_key > geom_type_enum:
                        geom_type_enum = geom_key
            geom_type = QgsWkbTypes.displayString(geom_type_enum)
            geom_crs = geometries[geom_type_enum]
            layer = QgsVectorLayer('%s?crs=%s' % (geom_type, geom_crs), layer_name, 'memory')
        return layer

    def addLayerFields(self, layer, structure):
        layer.startEditing()
        layer_provider = layer.dataProvider()
        fields = []
        for attribute, metadata in structure.items():
            fields.append(QgsField(attribute, metadata[0], '', 0, 0, metadata[1]))
        layer_provider.addAttributes(fields)
        layer.commitChanges()

    def addRefAction(self, layer):
        for field in layer.fields():
            if field.comment() != "":
                self.actions_handler.addAction(layer, "Wyświetl relacje")
                break

    def addArchAction(self, layer):
        if '_ARCH' not in layer.name():
            self.actions_handler.addAction(layer, "Wyświetl obiekty archiwalne")

    def addLayerFeatures(self, layer, features_data, structure):
        layer.startEditing()
        c = 0
        for feature_data in features_data:
            if not self.has_help and self.help_expired:
                break
            feature_data_values = list(feature_data.values())
            feature_geometry = feature_data_values[len(feature_data_values) - 1]
            feature_attributes = []
            for attribute in structure.keys():
                if attribute in feature_data:
                    feature_attributes.append(feature_data[attribute])
                else:
                    feature_attributes.append(None)
            feature = QgsFeature()
            feature.setAttributes(feature_attributes)
            feature.setGeometry(feature_geometry)
            layer.addFeature(feature)
            c += 1
            if not self.has_help and c == 10:
                break
        layer.commitChanges()

    def loadLayerStyle(self, layer, gml_version):
        style_path = os.path.join(os.path.dirname(__file__), "styles", gml_version, "%s.qml" % layer.name())
        symbols_path = os.path.join(os.path.dirname(__file__), "symbols").replace("\\", "/")
        if os.path.isfile(style_path):
            style_file = open(style_path, "rt")
            style_data = style_file.read()
            svg_paths = re.findall('"(.[^"]*)(\\\\|/.*\\.svg)"', style_data)
            for svg_path in svg_paths:
                svg_uml_path = '%s%s' % (svg_path[0], svg_path[1])
                svg_final_path = '%s%s' % (svg_path[0], self.removePolishSigns(svg_path[1]))
                style_data = style_data.replace(svg_uml_path, svg_final_path)
            style_data = re.sub('"(.[^"]*)(\\\\|/.*\\.svg)"', r'"%s\2"' % symbols_path, style_data)
            style_file.close()
            style_file = open(style_path, "wt")
            style_file.write(style_data)
            style_file.close()
            layer.loadNamedStyle(style_path, False, QgsMapLayer.Symbology | QgsMapLayer.Labeling)

    def removePolishSigns(self, text):
        text = text.replace('ą', 'a').replace('ć', 'c').replace('ę', 'e').replace('ł', 'l').replace('ń', 'n').replace(
            'ó', 'o').replace('ś', 's').replace('ź', 'z').replace('ż', 'z')
        text = text.replace('Ą', 'A').replace('Ć', 'C').replace('Ę', 'E').replace('Ł', 'L').replace('Ń', 'N').replace(
            'Ó', 'O').replace('Ś', 'S').replace('Ź', 'Z').replace('Ż', 'Z')
        return text

    def joinLayersWithGraphicPresentation(self, gml_layers):
        graphic_layer = None
        if len(self.project.mapLayersByName('KR_ObiektKarto')) == 1:
            graphic_layer = self.project.mapLayersByName('KR_ObiektKarto')[0]
            target_field_name = 'idIIP_BTIdentyfikator_lokalnyId'
            join_field_name = 'obiektPrzedstawiany_BTReferencjaDoObiektu_idIIP_BTIdentyfikator_lokalnyId'
        if len(self.project.mapLayersByName('PrezentacjaGraficzna')) == 1:
            graphic_layer = self.project.mapLayersByName('PrezentacjaGraficzna')[0]
            target_field_name = 'gml_id'
            join_field_name = 'obiektPrzedstawiany'
        if graphic_layer is not None:
            for layer in gml_layers:
                if layer.name() != 'KR_ObiektKarto' and layer.name() != 'PrezentacjaGraficzna':
                    join_object = QgsVectorLayerJoinInfo()
                    join_object.setJoinLayerId(graphic_layer.id())
                    join_object.setTargetFieldName(target_field_name)
                    join_object.setJoinFieldName(join_field_name)
                    join_object.setUsingMemoryCache(True)
                    join_object.setJoinLayer(graphic_layer)
                    layer.addJoin(join_object)
                    self.setupLayerAttributeForm(layer)

    def setupLayerAttributeForm(self, layer):
        editFormConfig = layer.editFormConfig()
        editFormConfig.clearTabs()
        rootContainer = editFormConfig.invisibleRootContainer()
        rootContainer.clear()
        for field in layer.fields():
            if "PrezentacjaGraficzna" not in field.name() and "KR_ObiektKarto" not in field.name():
                editorField = QgsAttributeEditorField(field.name(), 1, rootContainer)
                rootContainer.addChildElement(editorField)
        editFormConfig.setLayout(1)
        layer.setEditFormConfig(editFormConfig)
