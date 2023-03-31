# -*- coding: utf-8 -*-
from qgis.core import *
from PyQt5.QtCore import *
import os
from lxml import etree
import glob
from .gml_validation_dialog import GMLValidationDialog
from qgis.PyQt.QtWidgets import QTableWidgetItem
from .gml_logger_mode import GMLLoggerMode
import re

class GMLValidator:

    def __init__(self, dockwidget, reader, logger):
        self.dockwidget = dockwidget
        self.reader = reader
        self.logger = logger
        self.root_path = os.path.join(os.path.dirname(__file__), "xsd")

    def validateGML(self, gml_path):
        if gml_path == "":
            self.logger.logMessage("Walidator GML", "Należy wskazać ścieżkę do pliku GML", Qgis.Warning, GMLLoggerMode.loud)
        else:
            gml_file = etree.parse(gml_path)
            gml_version = self.reader.getGmlVersion(gml_path)
            xsd_root = os.path.join(self.root_path, gml_version)
            xsd_paths = glob.glob(r"%s/*.xsd" % xsd_root)
            if len(xsd_paths) == 0:
                xsd_root = xsd_root.replace(' ', '\\')
                xsd_paths = glob.glob(r"%s/*.xsd" % xsd_root)
            print(xsd_paths)
            errors = set()
            for xsd_path in xsd_paths:
                xmlschema_doc = etree.parse(xsd_path)
                xmlschema = etree.XMLSchema(xmlschema_doc)
                try:
                    xmlschema.assertValid(gml_file)
                except etree.DocumentInvalid:
                    for error in xmlschema.error_log:
                        if 'Observation ).' not in error.message:
                            errors.add('%s|%s' % (error.line, error.message))
            if len(errors) > 0:
                self.fillValidationReport(errors)
            else:
                self.logger.logMessage("Walidator GML", "Walidacja nie wykazała błędów", Qgis.Success, GMLLoggerMode.loud)

    def fillValidationReport(self, errors):
        report_dialog = GMLValidationDialog()
        report_table = report_dialog.report_table
        for error in errors:
            error_line = re.sub('(.*)\\|(.*)', r'\1', error)
            error_message = re.sub('(.*)\\|(.*)', r'\2', error)
            rownum = report_table.rowCount()
            report_table.insertRow(rownum)
            report_table.setItem(rownum, 0, QTableWidgetItem(error_line))
            report_table.setItem(rownum, 1, QTableWidgetItem(error_message))
        report_dialog.exec_()
