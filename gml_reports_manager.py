from qgis.core import *
from .gml_logger_mode import GMLLoggerMode
from .gml_fields_report_generator_old import GMLFieldsReportGeneratorOld
from .gml_fields_report_generator import GMLFieldsReportGenerator
from .gml_field_buildings_report_generator_old import GMLFieldBuildingsReportGeneratorOld
from .gml_field_buildings_report_generator import GMLFieldBuildingsReportGenerator


class GMLReportsManager:

    def __init__(self, iface, project, dockwidget, logger):
        self.iface = iface
        self.project = project
        self.dockwidget = dockwidget
        self.logger = logger
        self.gml_version = None
        
    def setVersion(self, gml_version):
        self.gml_version = gml_version

    def generateReport(self):
        current_report = self.dockwidget.report_combo.currentText()
        only_selected = self.dockwidget.only_selected_check.checkState() == 2
        if current_report != '':
            report_generator = None
            if self.gml_version == 'old':
                if current_report == 'Zestawienie EGiB - Działki':
                    report_generator = GMLFieldsReportGeneratorOld(self.iface, self.project, self.logger)
                if current_report == 'Budynki przynależne do działki':
                    report_generator = GMLFieldBuildingsReportGeneratorOld(self.iface, self.project, self.logger)
            if self.gml_version == 'new':
                if current_report == 'Zestawienie EGiB - Działki':
                    report_generator = GMLFieldsReportGenerator(self.iface, self.project, self.logger)
                if current_report == 'Budynki przynależne do działki':
                    report_generator = GMLFieldBuildingsReportGenerator(self.iface, self.project, self.logger)
            if report_generator is not None:
                report_generated = report_generator.generateReport(only_selected)
                if report_generated:
                    self.logger.logMessage("Wizualizacja GML", "Zestawienie \"%s\" zostało wygenerowane" % current_report, Qgis.Success, GMLLoggerMode.quiet)
        else:
            self.logger.logMessage("Wizualizacja GML", "Należy wskazać rodzaj zestawienia, które ma zostać wygenerowane", Qgis.Info, GMLLoggerMode.loud)
