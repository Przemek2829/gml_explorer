# -*- coding: utf-8 -*-
from qgis.PyQt.QtCore import QSettings, QTranslator, QCoreApplication, Qt
from qgis.PyQt.QtGui import QIcon
from qgis.PyQt.QtWidgets import QAction
from qgis.core import *
from .resources import *
from .gml_logger import GMLLogger
from .gml_reader import GMLReader
from .gml_loader import GMLLoader
from .gml_validator import GMLValidator
from .gml_legend_manager import GMLLegendManager
from .gml_expressions_manager import GMLExpressionsManager
from .gml_reports_manager import GMLReportsManager
from .gml_map_generator import GMLMapGenerator
from .gml_help_manager import GMLHelpManager
from .gml_service_manager import GMLServiceManager
from .gml_authenticator import GMLAuthenticator
from .gml_upload_manager import GMLUploadManager
from .gml_tool import GMLTool
from qgis.gui import QgsMapToolPan

# Import the code for the DockWidget
from .gml_explorer_dockwidget import GMLExplorerDockWidget
from .help_dialog import HelpDialog
import os.path


class GMLExplorer:
    """QGIS Plugin Implementation."""

    def __init__(self, iface):

        self.iface = iface
        self.project = QgsProject.instance()
        self.map_canvas = iface.mapCanvas()
        self.plugin_dir = os.path.dirname(__file__)
        locale = QSettings().value('locale/userLocale')[0:2]
        locale_path = os.path.join(
            self.plugin_dir,
            'i18n',
            'GMLExplorer_{}.qm'.format(locale))
        if os.path.exists(locale_path):
            self.translator = QTranslator()
            self.translator.load(locale_path)
            QCoreApplication.installTranslator(self.translator)

        self.actions = []
        self.menu = self.tr(u'&Wizualizacja GML')

        self.pluginIsActive = False
        self.dockwidget = None

    def tr(self, message):
        return QCoreApplication.translate('GMLExplorer', message)

    def add_action(
            self,
            icon_path,
            text,
            callback,
            enabled_flag=True,
            add_to_menu=True,
            add_to_toolbar=True,
            status_tip=None,
            whats_this=None,
            parent=None):

        icon = QIcon(icon_path)
        action = QAction(icon, text, parent)
        action.triggered.connect(callback)
        action.setEnabled(enabled_flag)

        if status_tip is not None:
            action.setStatusTip(status_tip)
        if whats_this is not None:
            action.setWhatsThis(whats_this)
        if add_to_toolbar:
            self.iface.addToolBarIcon(action)
        if add_to_menu:
            self.iface.addPluginToMenu(
                self.menu,
                action)
        self.actions.append(action)

        return action

    def initGui(self):
        icon_path = ':/plugins/gml_explorer/icon.png'
        self.add_action(
            icon_path,
            text=self.tr(u'Wizualizuj dane GML'),
            callback=self.run,
            parent=self.iface.mainWindow())

    def onClosePlugin(self):
        self.dockwidget.closingPlugin.disconnect(self.onClosePlugin)
        self.pluginIsActive = False
        self.gml_tool.setSelectionTool()
        self.gml_service_manager.closeRangesDialog()

    def unload(self):
        for action in self.actions:
            self.iface.removePluginMenu(
                self.tr(u'&Wizualizacja GML'),
                action)
            self.iface.removeToolBarIcon(action)

    def closeWindow(self, e):
        self.pluginIsActive = False
        self.gml_tool.setSelectionTool()
        self.gml_service_manager.closeRangesDialog()

    def run(self):
        if not self.pluginIsActive:
            self.logger = GMLLogger(self.iface)
            self.pluginIsActive = True
            if self.dockwidget is None:
                self.dockwidget = GMLExplorerDockWidget()
                self.help_dialog = HelpDialog()
                self.gml_reader = GMLReader(self.logger)
                self.gml_map_generator = GMLMapGenerator(self.project, self.iface, self.dockwidget, self.logger)
                self.gml_legend_manager = GMLLegendManager(self.project, self.iface, self.dockwidget, self.logger)
                self.gml_reports_manager = GMLReportsManager(self.iface, self.project, self.dockwidget, self.logger)
                self.gml_validator = GMLValidator(self.dockwidget, self.gml_reader, self.logger)
                self.gml_loader = GMLLoader(self.dockwidget, self.logger, self.project, self.gml_legend_manager, self.gml_reports_manager, self.gml_reader, self.gml_validator)
                self.help_manager = GMLHelpManager(self)
                self.help_manager.loadHelp()
                help_l = pow(10, 6) if self.help_manager.hasHelp()[0] else pow(10, 5) if not self.help_manager.hasHelp()[1] else 0
                self.gml_tool = GMLTool(self.map_canvas, self.iface, self.project, self.dockwidget, help_l)
                self.map_canvas.mapToolSet.connect(self.gml_tool.manageToolUsage)
                self.gml_service_manager = GMLServiceManager(self.gml_tool, self.iface, self.project, self.dockwidget, self.logger)
                self.gml_authenticator = GMLAuthenticator(self.logger)
                self.gml_upload_manager = GMLUploadManager(self.iface, self.project, self.gml_authenticator, self.logger)
                self.gml_authenticator.upload_manager = self.gml_upload_manager
                GMLExpressionsManager()
                self.dockwidget.load_gml_button.clicked.connect(self.gml_loader.loadGML)
                self.dockwidget.add_legend_button.clicked.connect(self.gml_legend_manager.saveUserLegend)
                self.dockwidget.remove_legend_button.clicked.connect(self.gml_legend_manager.removeUserLegend)
                self.dockwidget.validate_gml_button.clicked.connect(lambda: self.gml_validator.validateGML(self.dockwidget.gml_path_2.text()))
                self.dockwidget.load_report_button.clicked.connect(self.gml_reports_manager.generateReport)
                self.dockwidget.service_polygon_button.clicked.connect(lambda: self.gml_tool.drawShape('Polygon'))
                self.dockwidget.service_rectangle_button.clicked.connect(lambda: self.gml_tool.drawShape('Rectangle'))
                self.dockwidget.service_feature_button.clicked.connect(lambda: self.gml_tool.setSelectionTool(False))
                self.dockwidget.service_polygon_button.clicked.connect(lambda: self.gml_service_manager.setFeatureBasedService(False))
                self.dockwidget.service_rectangle_button.clicked.connect(lambda: self.gml_service_manager.setFeatureBasedService(False))
                self.dockwidget.service_feature_button.clicked.connect(lambda: self.gml_service_manager.setFeatureBasedService(True))
                self.dockwidget.service_ranges_button.clicked.connect(self.gml_service_manager.showRangesDialog)
                self.dockwidget.wms_button.clicked.connect(self.gml_service_manager.loadWms)
                self.dockwidget.get_service_data_button.clicked.connect(self.gml_service_manager.requestServiceData)
                self.dockwidget.upload_settings_button.clicked.connect(self.gml_upload_manager.openUploadSettingsDialog)
                self.dockwidget.upload_project_button.clicked.connect(lambda: self.gml_upload_manager.setMode('Upload'))
                self.dockwidget.upload_project_button.clicked.connect(self.gml_upload_manager.startUploadProcess)
                self.dockwidget.active_wms_button.clicked.connect(self.gml_upload_manager.openActiveWMSDialog)
                self.dockwidget.prepare_project_button.clicked.connect(lambda: self.gml_upload_manager.setMode('Local'))
                self.dockwidget.prepare_project_button.clicked.connect(self.gml_upload_manager.startUploadProcess)
                self.dockwidget.projects_dir_button.clicked.connect(self.gml_upload_manager.openProjectsDir)
                self.dockwidget.auth_button.clicked.connect(self.gml_authenticator.showAuthenticationDialog)
                self.dockwidget.help_button.clicked.connect(self.help_dialog.showHelp)
            self.dockwidget.closeEvent = self.closeWindow
            self.dockwidget.closingPlugin.connect(self.onClosePlugin)
            self.iface.addDockWidget(Qt.RightDockWidgetArea, self.dockwidget)
            self.dockwidget.show()
