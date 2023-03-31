# -*- coding: utf-8 -*-
import os

from qgis.PyQt import QtGui, QtWidgets, uic
from qgis.PyQt.QtGui import QTransform, QIcon
from qgis.PyQt.QtWidgets import QApplication, QFileDialog
from qgis.PyQt.QtCore import pyqtSignal
import sys
import glob
import re

sys.path.append(os.path.dirname(__file__))

FORM_CLASS, _ = uic.loadUiType(os.path.join(
    os.path.dirname(__file__), 'gml_explorer_dockwidget_base.ui'), resource_suffix='')

default_legend_name = "Standardowa legenda"
service_criteria_mapping = {'Działki ewidencyjne': ['Działki zabudowane', 'Działki na terenach mieszkaniowych wg MPZP'],
                            'Budynki': [],
                            'MPZP': []}


class GMLExplorerDockWidget(QtWidgets.QDockWidget, FORM_CLASS):

    closingPlugin = pyqtSignal()

    def __init__(self, parent=None):
        """Constructor."""
        super(GMLExplorerDockWidget, self).__init__(parent)
        self.setupUi(self)
        self.resizeEvent = self.adjustSize
        # Load GML tab
        self.loadLegends()
        self.legend_combo.currentIndexChanged.connect(self.switchRemoveButton)
        self.get_gml_button.clicked.connect(lambda: self.getPath(self.gml_path, 'open', "Geography Markup Language(*.gml) ;; Extensible Markup Language(*.xml)"))
        self.get_archival.stateChanged.connect(lambda: self.radioCheckButtons(self.get_archival))
        self.only_archival.stateChanged.connect(lambda: self.radioCheckButtons(self.only_archival))
        # Validation tab
        self.get_gml_button_2.clicked.connect(lambda: self.getPath(self.gml_path_2, 'open', "Geography Markup Language(*.gml)"))
        # Reports tab
        self.report_options_widget.hide()
        self.report_options_button.clicked.connect(self.showReportOptions)
        # Services tab
        self.service_rectangle_button.clicked.connect(lambda: self.manageRangesButtons(self.service_rectangle_button))
        self.service_polygon_button.clicked.connect(lambda: self.manageRangesButtons(self.service_polygon_button))
        self.service_feature_button.clicked.connect(lambda: self.manageRangesButtons(self.service_feature_button))
        self.service_combo.currentTextChanged.connect(self.refreshServiceCriteriaCombo)
        self.service_combo.currentTextChanged.connect(self.manageWmsButton)
        # Maps tab
        self.change = True
        self.get_map_path_button.clicked.connect(lambda: self.getPath(self.map_path, 'save', "Tiff (*.tiff) ;; JPG (*.jpg) ;; PDF (*.pdf)"))
        self.map_path.textChanged.connect(self.changeExtensionChoice)
        self.tiff_radio_button.toggled.connect(lambda: self.changeFileExtension("tiff"))
        self.jpg_radio_button.toggled.connect(lambda: self.changeFileExtension("jpg"))
        self.pdf_radio_button.toggled.connect(lambda: self.changeFileExtension("pdf"))
        self.dpi_input.textChanged.connect(lambda: self.validateDpi(self.dpi_input))

    def closeEvent(self, event):
        self.closingPlugin.emit()
        event.accept()

    def loadLegends(self):
        self.legend_combo.clear()
        self.legend_combo.addItem(default_legend_name)
        for file in glob.glob(os.path.join(os.path.dirname(__file__), "legends", "*.json")):
            legend_file = os.path.basename(file).replace(".json", "")
            if legend_file != default_legend_name:
                self.legend_combo.addItem(legend_file)

    def getPath(self, path_container, type, extension):
        if type == 'open':
            selected_file = QFileDialog.getOpenFileName(self, "Wybierz plik GML", "", extension)
        else:
            selected_file = QFileDialog.getSaveFileName(self, "Wkaż miejsce zapisu mapy", "", extension)
        if selected_file[0] != "":
            path_container.setText(selected_file[0])

    def switchRemoveButton(self):
        if self.legend_combo.currentText() == default_legend_name:
            self.remove_legend_button.setEnabled(False)
        else:
            self.remove_legend_button.setEnabled(True)

    def radioCheckButtons(self, button):
        if button == self.get_archival:
            if button.isChecked():
                self.only_archival.setCheckState(0)
        if button == self.only_archival:
            if button.isChecked():
                self.get_archival.setCheckState(0)

    def showReportOptions(self):
        if self.report_options_widget.isVisible():
            self.report_options_widget.hide()
            self.report_options_button.move(5, 60)
            self.report_options_button.setText('Pokaż opcje dodatkowe')
        else:
            self.report_options_widget.show()
            self.report_options_button.move(5, 100)
            self.report_options_button.setText('Ukryj opcje dodatkowe')
        icon = self.report_options_button.icon()
        pixmap = icon.pixmap(25, 25, 0, 0)
        rm = QTransform()
        rm.rotate(180)
        pixmap = pixmap.transformed(rm)
        self.report_options_button.setIcon(QIcon(pixmap))

    def refreshServiceCriteriaCombo(self, combo_text):
        self.service_criteria_combo.clear()
        self.service_criteria_combo.addItem('')
        for criteria in service_criteria_mapping.get(combo_text, []):
            self.service_criteria_combo.addItem(criteria)

    def manageWmsButton(self, combo_text):
        if combo_text == 'MPZP':
            self.wms_button.setEnabled(True)
            self.wms_button.setStyleSheet('color: rgb(0, 134, 0);')
        else:
            self.wms_button.setStyleSheet('color: rgb(138, 138, 138);')
            self.wms_button.setEnabled(False)

    def manageRangesButtons(self, clicked_button):
        if clicked_button == self.service_rectangle_button:
            self.service_polygon_button.setChecked(False)
            self.service_feature_button.setChecked(False)
        if clicked_button == self.service_polygon_button:
            self.service_rectangle_button.setChecked(False)
            self.service_feature_button.setChecked(False)
        if clicked_button == self.service_feature_button:
            self.service_rectangle_button.setChecked(False)
            self.service_polygon_button.setChecked(False)

    def changeExtensionChoice(self):
        if self.change:
            self.change = False
            map_path = self.map_path.text().replace('/', '\\')
            map_extension = re.sub("(.*)\.(.*)$", r"\2", map_path)
            if map_extension == "pdf":
                self.pdf_radio_button.setChecked(True)
            elif map_extension == "jpg":
                self.jpg_radio_button.setChecked(True)
            else:
                self.tiff_radio_button.setChecked(True)
            self.change = True

    def changeFileExtension(self, extension):
        if self.change:
            self.change = False
            map_path = self.map_path.text().replace('/', '\\')
            root_catalog = re.sub("(.*)\\\\(.*)\.(.*)$", r"\1", map_path)
            map_name = re.sub("(.*)\\\\(.*)\.(.*)$", r"\2", map_path)
            map_extension = re.sub("(.*)\\\\(.*)\.(.*)$", r"\3", map_path)
            if map_extension in ("tiff", "jpg", "pdf"):
                new_path = root_catalog + "\\" + map_name + "." + extension
                self.map_path.setText(new_path.replace('\\', '/'))
            self.change = True

    def validateDpi(self, line_edit):
        try:
            int(line_edit.text())
            if int(line_edit.text()) >= 900:
                line_edit.setText("900")
        except:
            line_edit.backspace()

    def adjustSize(self, event):
        width = event.size().width()
        height = self.tabWidget.height()
        self.load_gml_widget.resize(width - 39, 20)
        self.legend_widget.resize(width - 39, 20)
        self.legend_widget.resize(width - 39, 20)
        self.archive_widget.resize(width - 39, 20)
        self.validation_widget.resize(width - 39, 20)
        self.validation_widget_2.resize(width - 39, 20)
        self.report_widget.resize(width - 39, 20)
        self.report_options_widget.resize(width - 39, 20)
        self.service_widget.resize(width - 39, 20)
        self.service_options_widget.resize(width - 39, 20)
        self.service_criteria_widget.resize(width - 39, 20)
        self.config_panel_widget.resize(width - 39, 20)
        self.upload_data_widget.resize(width - 39, 20)
        self.local_qgis_server_widget.resize(width - 39, 20)
        self.map_export_widget.resize(width - 39, 20)
        self.extension_widget.resize(width - 39, 20)
        self.scale_widget.resize(width - 39, 20)
        self.dpi_widget.resize(width - 39, 20)
        self.crs_widget.resize(width - 39, 20)
        self.load_gml_button.move(5, height - 70)
        self.validate_gml_button.move(5, height - 70)
        self.load_report_button.move(5, height - 70)
        self.get_service_data_button.move(5, height - 70)
        self.save_map_button.move(5, height - 70)
        self.map_extent_button.move(width - 109, height - 70)

