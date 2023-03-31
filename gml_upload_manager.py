from qgis.PyQt.QtCore import Qt, QSettings as qs
from qgis.core import *
from qgis import processing
from .gml_logger_mode import GMLLoggerMode
from qgis.PyQt.QtWidgets import QTreeWidgetItem, QInputDialog, QMessageBox
import os
import platform
import subprocess
import glob
import shutil
import re
import requests

from .gml_select_layers_dialog import GMLSelectLayersDialog
from .gml_active_wms_dialog import GMLActiveWMSDialog
from .gml_upload_settings_dialog import GMLUploadSettingsDialog

UPLOAD_ROOT_DIR = os.path.join(os.path.dirname(__file__), 'wms')
UPLOAD_URL = "https://www.c-geoportal.pl/backend/gisserver/upload?projectName=testowy&forceOverride=true"
UPLOAD_SIZE_LIMIT_MB = 5
WMS_CRS_TAG = '<WMSCrsList type="QStringList">'
WMS_EXTENT_TAG = '<WMSExtent type="QStringList">'
WMS_SERVICE_TITLE_TAG = '<WMSServiceTitle type="QString">'
WMS_SERVICE_CAPABILITIES_TAG = '<WMSServiceCapabilities type="bool">true</WMSServiceCapabilities>'
CRS_2180 = QgsCoordinateReferenceSystem('EPSG:2180')


class GMLUploadManager:
    def __init__(self, iface, project, authenticator, logger):
        if not os.path.exists(UPLOAD_ROOT_DIR):
            os.mkdir(UPLOAD_ROOT_DIR)
        self.loadSettings()
        self.iface = iface
        self.map_canvas = iface.mapCanvas()
        self.project = project
        self.authenticator = authenticator
        self.logger = logger
        self.select_layers_dialog = GMLSelectLayersDialog()
        self.upload_settings_dialog = GMLUploadSettingsDialog()
        self.select_layers_dialog.setWindowTitle(
            'Wizualizacja GML - wybór warstw, które mają zostać przesłane z projektem')
        self.select_layers_dialog.load_layers_button.setText('Prześlij')
        self.select_layers_dialog.finished.connect(lambda result: self.setWmsProjectName(result, None))
        self.mode = None

    def loadSettings(self):
        settings = qs()
        wms_crs = settings.value('wms_crs')
        if wms_crs is None or len(wms_crs) == 0:
            settings.setValue('wms_crs', [CRS_2180.authid()])
        wms_extent = settings.value('wms_extent')
        if wms_extent is None:
            settings.setValue('wms_extent', 'map_extent')
        wms_expose_attributes = settings.value('wms_expose_attributes')
        if wms_expose_attributes is None:
            settings.setValue('wms_expose_attributes', 'hide')

    def openUploadSettingsDialog(self):
        self.upload_settings_dialog.setModal(True)
        self.upload_settings_dialog.show()

    def setMode(self, mode):
        self.mode = mode

    def openProjectsDir(self):
        if platform.system() == "Windows":
            os.startfile(UPLOAD_ROOT_DIR)
        elif platform.system() == "Darwin":
            subprocess.Popen(["open", UPLOAD_ROOT_DIR])
        else:
            subprocess.Popen(["xdg-open", UPLOAD_ROOT_DIR])

    def openActiveWMSDialog(self):
        dialog = GMLActiveWMSDialog()
        dialog.setModal(True)
        dialog.show()

    def startUploadProcess(self):
        if qs().value('authentication_method') is not None or self.mode == 'Local':
            layers_tree = self.select_layers_dialog.layers_tree
            layers_tree.clear()
            self.select_layers_dialog.select_all_box.setCheckState(2)
            for layer in self.project.mapLayers().values():
                layer_item = QTreeWidgetItem(layers_tree)
                layer_item.setText(0, layer.name())
                layer_item.setText(1, QgsWkbTypes.geometryDisplayString(layer.geometryType()))
                layer_item.setText(2, str(layer.featureCount()))
                layer_item.setData(0, 100, layer.id())
                layer_item.setCheckState(0, Qt.Checked)
            self.select_layers_dialog.open()
        else:
            msgBox = QMessageBox()
            msgBox.setIcon(QMessageBox.Information)
            msgBox.setText("Przed wysłaniem projektu należy wskazać sposób autoryzacji")
            msgBox.setWindowTitle("Wskaż sposób autoryzacji")
            msgBox.setStandardButtons(QMessageBox.Ok | QMessageBox.Cancel)
            returnValue = msgBox.exec()
            if returnValue == QMessageBox.Ok:
                self.authenticator.restart_upload = True
                self.authenticator.showAuthenticationDialog()

    def setWmsProjectName(self, able_to_upload, dialog):
        if able_to_upload:
            if dialog is None:
                dialog = QInputDialog()
                dialog.setModal(True)
            dialog.finished.connect(lambda result: self.uploadProject(result, dialog.textValue(), dialog))
            dialog.setWindowTitle('Nazwa projektu')
            dialog.setLabelText('Podaj nazwę projektu QGIS')
            dialog.open()

    def uploadProject(self, upload, project_name, dialog):
        if upload:
            if project_name.strip() != '':
                self.project.setCrs(CRS_2180)
                settings = qs()
                wms_crs_setting = settings.value('wms_crs')
                wms_extent_setting = settings.value('wms_extent')
                wms_expose_attributes_setting = settings.value('wms_expose_attributes')
                wms_crs_tag = self.setWMSCrs(wms_crs_setting)
                wms_extent_tag = self.setWMSExtent(wms_extent_setting)
                wms_service_title_tag = '%s%s</WMSServiceTitle>' % (WMS_SERVICE_TITLE_TAG, project_name)
                upload_dir = os.path.join(UPLOAD_ROOT_DIR, project_name)
                geopackage_file = os.path.join(upload_dir, 'data.gpkg')
                overwrite_geopackage_file = os.path.join(upload_dir, 'qgis_data.gpkg')
                if not os.path.exists(upload_dir):
                    os.mkdir(upload_dir)
                svg_paths = self.prepareSymbols(upload_dir)
                self.removeUnusedSymbols(upload_dir, svg_paths)
                uploaded_layers, save_geopackage_file, remove_geopackage_file = self.packLayers(geopackage_file,
                                                                                                overwrite_geopackage_file)
                self.changeDataSource(uploaded_layers, save_geopackage_file, remove_geopackage_file)
                self.removeEmptyGroups(self.project.layerTreeRoot())
                qgz_project_file = os.path.join(upload_dir, 'project.qgz')
                qgs_project_file = os.path.join(upload_dir, 'project.qgs')
                self.saveProject(qgs_project_file)
                with open(qgs_project_file, "rt") as project_file:
                    project_data = project_file.read()
                    if wms_expose_attributes_setting == 'hide':
                        project_data = re.sub('(configurationFlags=")([a-zA-Z]*)"', r'\1%s"' % 'HideFromWms', project_data)
                    else:
                        project_data = re.sub('(configurationFlags=")([a-zA-Z]*)"', r'\1%s"' % 'None', project_data)
                    project_data = self.removeTag('WMSCrsList', project_data)
                    project_data = self.removeTag('WMSExtent', project_data)
                    project_data = self.removeTag('WMSServiceTitle', project_data)
                    project_data = self.removeTag('WMSServiceCapabilities', project_data)
                    project_data = re.sub('(<properties>)', r'\1\n%s' % wms_crs_tag, project_data)
                    project_data = re.sub('(<properties>)', r'\1\n%s' % wms_extent_tag, project_data)
                    project_data = re.sub('(<properties>)', r'\1\n%s' % wms_service_title_tag, project_data)
                    project_data = re.sub('(<properties>)', r'\1\n%s' % WMS_SERVICE_CAPABILITIES_TAG, project_data)
                with open(qgs_project_file, "wt") as project_file:
                    project_file.write(project_data)
                self.project.read(qgs_project_file)
                self.saveProject(qgz_project_file)
                os.remove(qgs_project_file)
                if self.mode == 'Upload':
                    zipped_project = self.zipProject(upload_dir, project_name)
                    zip_size = os.stat(zipped_project).st_size / pow(1024, 2)
                    if zip_size <= UPLOAD_SIZE_LIMIT_MB:
                        self.sendProjectToServer(project_name, zipped_project)
                    else:
                        self.logger.logMessage("Wizualizacja GML",
                                               "Rozmiar projektu po spakowaniu przekracza dopuszczalny rozmiar (%s MB)" % UPLOAD_SIZE_LIMIT_MB,
                                               Qgis.Critical, GMLLoggerMode.loud)
                else:
                    self.logger.logMessage("Wizualizacja GML",
                                           'Projekt <b>%s</b> został zapisany w katalogu projektów QGIS Server' % project_name,
                                           Qgis.Success, GMLLoggerMode.loud)
            else:
                self.setWmsProjectName(True, dialog)

    def setWMSCrs(self, wms_crs_setting):
        wms_crs_tag = WMS_CRS_TAG
        for crs in wms_crs_setting:
            wms_crs_tag += '<value>%s</value>' % crs
        wms_crs_tag += '</WMSCrsList>'
        return wms_crs_tag

    def setWMSExtent(self, wms_extent_setting):
        wms_extent_tag = WMS_EXTENT_TAG
        if wms_extent_setting == 'map_extent':
            wms_extent = self.map_canvas.extent()
        elif wms_extent_setting == 'layers_extent':
            layer_extent_geoms = []
            for layer in self.project.mapLayers().values():
                if layer.isSpatial():
                    layer_extent = QgsGeometry.fromRect(layer.extent())
                    tr = QgsCoordinateTransform(layer.sourceCrs(), CRS_2180, self.project)
                    layer_extent.transform(tr)
                    layer_extent_geoms.append(layer_extent)
            wms_extent_geom = QgsGeometry().unaryUnion(layer_extent_geoms)
            wms_extent = wms_extent_geom.boundingBox()
        wms_extent_tag += '<value>%s</value>' % wms_extent.xMinimum()
        wms_extent_tag += '<value>%s</value>' % wms_extent.yMinimum()
        wms_extent_tag += '<value>%s</value>' % wms_extent.xMaximum()
        wms_extent_tag += '<value>%s</value>' % wms_extent.yMaximum()
        wms_extent_tag += '</WMSExtent>'
        return wms_extent_tag

    def prepareSymbols(self, upload_dir):
        layers_tree_root = self.select_layers_dialog.layers_tree.invisibleRootItem()
        used_svg_paths = []
        for i in range(layers_tree_root.childCount()):
            tree_layer = layers_tree_root.child(i)
            layer_type = tree_layer.text(1)
            if tree_layer.checkState(0) == Qt.Checked and layer_type != 'No geometry':
                layer_name = tree_layer.text(0)
                layer_id = tree_layer.data(0, 100)
                layer = self.project.mapLayer(layer_id)
                style_path = os.path.join(upload_dir, '%s.qml' % layer_id)
                layer.saveNamedStyle(style_path)
                style_file = open(style_path, "rt")
                style_data = style_file.read()
                svg_paths = re.findall('"(.[^"]*)(\\\\|/.*\\.svg)"', style_data)
                for svg_path in svg_paths:
                    svg_uml_path = '%s%s' % (svg_path[0], svg_path[1])
                    svg_upload_path = '%s%s' % (upload_dir, svg_path[1])
                    svg_norm_path = os.path.normpath(svg_uml_path)
                    if svg_upload_path not in used_svg_paths:
                        used_svg_paths.append(svg_upload_path)
                    if not os.path.samefile(os.path.dirname(svg_norm_path), upload_dir):
                        shutil.copy(svg_norm_path, upload_dir)
                    style_data = style_data.replace(svg_uml_path, svg_upload_path)
                style_file.close()
                style_file = open(style_path, "wt")
                style_file.write(style_data)
                style_file.close()
                layer.loadNamedStyle(style_path, False)
                os.remove(style_path)
        return used_svg_paths

    def removeUnusedSymbols(self, upload_dir, used_svg_paths):
        for svg_file in glob.iglob(f'{upload_dir}/*.svg'):
            svg_normpath = os.path.normpath(svg_file)
            path_unused = True
            for used_svg_path in used_svg_paths:
                if os.path.samefile(svg_normpath, used_svg_path):
                    path_unused = False
            if path_unused:
                os.remove(svg_normpath)

    def packLayers(self, geopackage_file, overwrite_geopackage_file):
        remove_geopackage_file = None
        if os.path.exists(geopackage_file):
            save_geopackage_file = overwrite_geopackage_file
            remove_geopackage_file = geopackage_file
        elif os.path.exists(overwrite_geopackage_file):
            save_geopackage_file = geopackage_file
            remove_geopackage_file = overwrite_geopackage_file
        else:
            save_geopackage_file = geopackage_file
        uploaded_layers = []
        layers_tree_root = self.select_layers_dialog.layers_tree.invisibleRootItem()
        for i in range(layers_tree_root.childCount()):
            tree_layer = layers_tree_root.child(i)
            layer = self.project.mapLayer(tree_layer.data(0, 100))
            if tree_layer.checkState(0) == Qt.Checked:
                uploaded_layers.append(layer)
            else:
                self.project.removeMapLayer(layer)
        processing.run("native:package",
                       {
                           'LAYERS': uploaded_layers,
                           'OUTPUT': save_geopackage_file,
                           'OVERWRITE': False,
                           'SAVE_METADATA': True,
                           'SAVE_STYLES': True,
                           'SELECTED_FEATURES_ONLY': False
                       })
        return uploaded_layers, save_geopackage_file, remove_geopackage_file

    def changeDataSource(self, layers, save_geopackage_file, remove_geopackage_file):
        attribute_layers = []
        for layer in layers:
            layer_type = QgsWkbTypes.geometryDisplayString(layer.geometryType())
            if layer_type == 'No geometry':
                attribute_layers.append(layer)
            else:
                uri = '%s|layername=%s' % (save_geopackage_file, layer.name())
                layer.setDataSource(uri, layer.name(), 'ogr')
                for join in layer.vectorJoins():
                    join_layer = join.joinLayer()
                    layer.removeJoin(join_layer.id())
        for layer in attribute_layers:
            uri = '%s|layername=%s' % (save_geopackage_file, layer.name())
            layer.setDataSource(uri, layer.name(), 'ogr')
        if remove_geopackage_file is not None:
            os.remove(remove_geopackage_file)

    def removeEmptyGroups(self, root_item):
        try:
            for item in root_item.children():
                if item.nodeType() == 0:
                    if len(item.children()) > 0:
                        self.removeEmptyGroups(item)
                    else:
                        root_item.removeChildNode(item)
            if root_item.nodeType() == 0:
                if len(root_item.children()) == 0:
                    self.removeEmptyGroups(project.layerTreeRoot())
        except:
            self.logger.logMessage("Wizualizacja GML", "Usunięto puste grupy warstw", Qgis.Info, GMLLoggerMode.quiet)

    def saveProject(self, project_file):
        self.project.setFileName(project_file)
        self.project.write()

    def removeTag(self, tag_name, project_data):
        return re.sub('(<' + tag_name + '(.|\\n)*?</' + tag_name + '>\\n\\s*)', '', project_data)

    def zipProject(self, upload_dir, project_name):
        return shutil.make_archive(upload_dir, 'zip', UPLOAD_ROOT_DIR, project_name)

    def sendProjectToServer(self, project_name, zipped_project):
        zip_name = '%s.zip' % project_name
        payload = {}
        zipped_project_binary = open(zipped_project, 'rb')
        files = {'file': (zip_name, zipped_project_binary, 'application/zip')}
        token = self.getToken()
        headers = {
            'Authorization': 'Bearer %s' % token
        }
        response = requests.request("POST", UPLOAD_URL, headers=headers, data=payload, files=files)
        response_json = response.json()
        if response_json.get('status') == 'OK':
            self.logger.logMessage("Wizualizacja GML", response.text, Qgis.Info, GMLLoggerMode.loud)
            wms_url = response_json.get('url')
            active_wms = qs().value('active_wms')
            if active_wms is None:
                active_wms = {project_name: wms_url}
            else:
                active_wms[project_name] = wms_url
            qs().setValue('active_wms', active_wms)
        else:
            self.logger.logMessage("Wizualizacja GML", response.text, Qgis.Critical, GMLLoggerMode.loud)
        zipped_project_binary.close()

    def getToken(self):
        if qs().value('authentication_method') == 'email':
            url = 'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyBEqFmRB0WLH6r8R-56piwVe2D9MiYoUJI'
            email = qs().value('email')
            password = qs().value('password')
            payload = {"email": email, "password": password, "returnSecureToken": True}
            response = requests.request("POST", url, data=payload)
            return response.json().get("idToken")
