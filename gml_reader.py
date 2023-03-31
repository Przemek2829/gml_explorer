# -*- coding: utf-8 -*-
from qgis.core import *
from PyQt5.QtCore import *
from xml.etree import ElementTree as ET
import re
import time
from collections import OrderedDict
from osgeo import ogr
from .gml_logger_mode import GMLLoggerMode


class GMLReader:

    def __init__(self, logger):
        self.logger = logger

    def getGmlVersion(self, gml_path):
        with open(gml_path) as file:
            collect_metadata = False
            metadata = ""
            while True:
                line = file.readline()
                if "<gml:FeatureCollection" in line:
                    collect_metadata = True
                if collect_metadata:
                    metadata += line
                if "<gml:featureMember>" in line or not line:
                    break
        if "urn:gugik:specyfikacje:gmlas:modelPodstawowy:1.0" in metadata:
            return "old"
        else:
            return "new"

    def collectInfoAboutFeaturesAndClasses(self, features):
        self.classes_dict = {}
        self.features_identifiers = {}
        for feature in features:
            namespace = self.getNamespace(feature[0].tag)
            class_name = self.specifyClassName(feature, namespace)
            feature_attributes = []
            for attrib in feature[0].attrib.keys():
                if self.getName(attrib) == "id":
                    gml_id = feature[0].attrib[attrib]
                    feature_attributes.append(("gml_id", gml_id))
                    feature_identifier = self.findIdentifierAndVersion(feature[0], None, None)
                    self.features_identifiers[gml_id] = [None, class_name]
                    self.features_identifiers[feature_identifier] = [gml_id, class_name]
            feature_attributes.extend(list(feature[0]))
            if class_name in self.classes_dict:
                class_objects = self.classes_dict[class_name]
                class_objects.append(feature_attributes)
                self.classes_dict[class_name] = class_objects
            else:
                self.classes_dict[class_name] = [feature_attributes]
        return self.classes_dict

    def getName(self, tag):
        return re.sub('{(.*)}(.*)', r'\2', tag)

    def getNamespace(self, tag):
        return re.sub('{(.*)}(.*)', r'{\1}', tag)

    def specifyClassName(self, feature, namespace):
        class_name = self.getName(feature[0].tag)
        geometry = feature.find('.//%sgeometria' % namespace)
        end_version = None
        end_object = None
        feature_string = ET.tostring(feature, encoding='unicode')
        if "koniecObiekt" in feature_string:
            end_object = "koniecObiekt"
        if "koniecWersjaObiekt" in feature_string or "koniecWersjiObiektu" in feature_string:
            end_version = "koniecWersjaObiekt"
        if geometry is None or len(list(geometry)) == 0:
            geometry = feature.find('.//%sgeoreferencja' % namespace)
        if geometry is not None and len(list(geometry)) > 0 and class_name != "PrezentacjaGraficzna":
            try:
                geometry_type = self.readGeometry(geometry).type()
            except:
                geometry_type = ""
            if geometry_type == 0:
                class_name += "_punkt"
            if geometry_type == 1:
                class_name += "_linia"
            if geometry_type == 2:
                class_name += "_powierzchnia"
        if end_version is not None or end_object is not None:
            class_name = '%s_ARCH' % class_name
        return class_name

    def readGMLDataAndStructure(self, key):
        structure = OrderedDict()
        geometries = {}
        features_data = []
        for feature in self.classes_dict[key]:
            feature_data = OrderedDict()
            feature_geometry = None
            counter = 0
            for attribute in feature:
                if counter == 0:
                    self.supplyStructureAndData(attribute[1], feature_data, structure, attribute[0], key)
                    counter += 1
                else:
                    namespace = self.getNamespace(attribute.tag)
                    tag_name = self.getName(attribute.tag).replace("_", "")
                    if tag_name in ("geometria", "georeferencja"):
                        if len(attribute) > 0:
                            epsg_code = self.getEpsgCode(attribute[0])
                            geom_crs = QgsCoordinateReferenceSystem(epsg_code).toWkt()
                            feature_geometry = self.readGeometry(attribute, epsg_code)
                            if feature_geometry is not None:
                                geom_type = feature_geometry.wkbType()
                                geometries[geom_type] = geom_crs
                    else:
                        continue_reading = self.saveGeomAttributes(attribute, feature_data, namespace, structure, tag_name)
                        if continue_reading:
                            if len(list(attribute)) > 0:
                                self.readSubAttributes(attribute, tag_name, structure, feature_data, key)
                            else:
                                if 'geometriaKarto' not in tag_name and \
                                        'poliliniaKierunkowa' not in tag_name and \
                                        'odnosnik' not in tag_name and \
                                        'geometria' not in tag_name and \
                                        'poczatekGorySkarpy' not in tag_name and \
                                        'koniecGorySkarpy' not in tag_name:
                                    self.supplyStructureAndData(attribute, feature_data, structure, tag_name, key)
            feature_data['geom'] = feature_geometry
            features_data.append(feature_data)
        return structure, geometries, features_data

    def saveGeomAttributes(self, attribute, feature_data, namespace, structure, tag_name):
        continue_reading = True
        geom_attributes = ["geometriaKarto", "poliliniaKierunkowa", "odnosnik", "poczatekGorySkarpy", "koniecGorySkarpy"]
        if tag_name in geom_attributes:
            geom_attrib = attribute
            continue_reading = False
            self.supplyGeomAttribute(feature_data, geom_attrib, structure)
        geom_attributes.append("geometria")
        for geom_attribute in geom_attributes:
            if attribute.find(".//%s%s" % (namespace, geom_attribute)):
                geom_attrib = attribute.find(".//%s%s" % (namespace, geom_attribute))
                continue_reading = True
                self.supplyGeomAttribute(feature_data, geom_attrib, structure)
        return continue_reading

    def supplyGeomAttribute(self, feature_data, geom_attrib, structure):
        geom_tag_name = self.getName(geom_attrib.tag)
        if len(geom_attrib) > 0:
            epsg_code = self.getEpsgCode(geom_attrib[0])
            feature_geometry = self.readGeometry(geom_attrib, epsg_code)
            if feature_geometry is not None:
                feature_geometry_wkt = feature_geometry.asWkt()
            else:
                feature_geometry_wkt = ''
            self.supplyStructureAndData(geom_attrib, feature_data, structure, geom_tag_name, None, feature_geometry_wkt)
        else:
            if geom_tag_name in ("poczatekGorySkarpy", "koniecGorySkarpy"):
                epsg_code = self.getEpsgCode(geom_attrib)
                feature_geometry_wkt = self.readNonStandardGeometry(epsg_code, geom_attrib)
                self.supplyStructureAndData(geom_attrib, feature_data, structure, geom_tag_name, None, feature_geometry_wkt)

    def readSubAttributes(self, attribute, attribute_name, structure, feature_data, class_name):
        for attribute_child in list(attribute):
            tag_name = self.getName(attribute_child.tag).replace("_", "")
            attribute_name = "%s_%s" % (attribute_name, tag_name)
            if len(list(attribute_child)) > 0:
                self.readSubAttributes(attribute_child, attribute_name, structure, feature_data, class_name)
                attribute_name = re.sub("(.*)_" + tag_name + "$", r"\1", attribute_name)
            else:
                if 'geometriaKarto' not in attribute_name and \
                        'poliliniaKierunkowa' not in attribute_name and \
                        'odnosnik' not in attribute_name and \
                        'geometria' not in attribute_name and \
                        'poczatekGorySkarpy' not in attribute_name and \
                        'koniecGorySkarpy' not in attribute_name:
                    self.supplyStructureAndData(attribute_child, feature_data, structure, attribute_name, class_name)
                attribute_name = re.sub("(.*)_" + tag_name + "$", r"\1", attribute_name)

    def supplyStructureAndData(self, attribute, feature_data, structure, tag_name, class_name, wkt_value=None):
        ref_class = None
        if tag_name == "gml_id":
            attribute_value = attribute
        else:
            href, ref_class = self.getReference(attribute)
            if href is not None:
                attribute_value = href
                if ref_class is None:
                    self.logger.logMessage("Wizualizacja GML",
                                           'Warstwa %s: obiekt gml_id \'%s\' ma pustą relację \'%s\' w polu "%s"'
                                           % (class_name, feature_data.get('gml_id'), href, tag_name),
                                           Qgis.Warning, GMLLoggerMode.quiet)
            else:
                if wkt_value is not None:
                    attribute_value = wkt_value
                else:
                    attribute_value = attribute.text
        if tag_name in feature_data.keys():
            if attribute_value is not None:
                feature_data[tag_name] = "%s, %s" % (feature_data[tag_name], attribute_value)
        else:
            feature_data[tag_name] = attribute_value
        if tag_name not in structure.keys():
            structure[tag_name] = (QVariant.String, ref_class)
        else:
            type_class = structure[tag_name]
            if type_class[1] is None and ref_class is not None:
                structure[tag_name] = (QVariant.String, ref_class)

    def getReference(self, attribute):
        for attrib in attribute.attrib.keys():
            if self.getName(attrib) == 'href':
                href = attribute.attrib[attrib]
                if href in self.features_identifiers.keys():
                    ref_class = self.features_identifiers[href][1]
                    ref = href if self.features_identifiers[href][0] is None else self.features_identifiers[href][0]
                    return ref, ref_class
                else:
                    return href, None
        return None, None

    def getEpsgCode(self, attribute):
        try:
            epsg_code = re.sub("(.*)(EPSG)::(.*)", r"\2:\3", attribute.attrib['srsName'])
        except:
            epsg_code = None
        return epsg_code

    def readGeometry(self, geom_attribute, epsg_code=None):
        geom_tag = str(ET.tostring(geom_attribute[0]))[2:]
        geom = ogr.CreateGeometryFromGML(geom_tag)
        if geom is not None:
            y = geom.Centroid().GetY()
            swap_coordinates = self.checkCoordinatesOrder(epsg_code, y)
            geom_wkt = geom.ExportToWkt()
            if swap_coordinates:
                geom_wkt = re.sub("(\\d+\\.?\\d*)\\s(\\d+\\.?\\d*)", r"\2 \1", geom_wkt)
            geometry = QgsGeometry.fromWkt(geom_wkt)
            return geometry
        return None

    def readNonStandardGeometry(self, epsg_code, geom_attrib):
        try:
            coordinates = geom_attrib.text.split(" ")
            feature_geometry_wkt = "POINT(%s %s)" % (coordinates[0], coordinates[1])
            swap_coordinates = self.checkCoordinatesOrder(epsg_code, float(coordinates[1]))
            if swap_coordinates:
                feature_geometry_wkt = re.sub("(\\d+\\.?\\d*)\\s(\\d+\\.?\\d*)", r"\2 \1", feature_geometry_wkt)
            return feature_geometry_wkt
        except:
            return ''

    def checkCoordinatesOrder(self, epsg_code, y):
        swap_coordinates = False
        if epsg_code == "EPSG:2176":
            if 5438667 < y < 5606974:
                swap_coordinates = True
        elif epsg_code == "EPSG:2177":
            if 6390979 < y < 6609020:
                swap_coordinates = True
        elif epsg_code == "EPSG:2178":
            if 7390450 < y < 7609549:
                swap_coordinates = True
        elif epsg_code == "EPSG:2179":
            if 8390318 < y < 8511699:
                swap_coordinates = True
        return swap_coordinates

    def findIdentifierAndVersion(self, feature, identifier, version_id):
        for feature_child in list(feature):
            if self.getName(feature_child.tag) == 'identifier':
                identifier = feature_child.text
            if self.getName(feature_child.tag) == 'wersjaId':
                version_id = feature_child.text
            if identifier is not None and version_id is not None:
                return identifier.replace(":%s" % version_id, '')
            if len(list(feature_child)) > 0:
                return self.findIdentifierAndVersion(feature_child, identifier, version_id)
        return None
