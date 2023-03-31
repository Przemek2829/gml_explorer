import os
import sys
from collections import OrderedDict
import json

from qgis.PyQt.QtCore import Qt, QSize, QSettings as qs
from qgis.PyQt.QtGui import QIcon
from qgis.PyQt.QtWidgets import QDialog, QTreeWidgetItem, QPushButton, QWidget, QHBoxLayout, QLabel
from qgis.PyQt import uic
from qgis.core import *


sys.path.append(os.path.dirname(__file__))

FORM_CLASS, _ = uic.loadUiType(os.path.join(
    os.path.dirname(__file__), 'gml_active_wms_dialog.ui'), resource_suffix='')
WIDGET_SIZE = 25
SHOW_LAYERS_ICON = QIcon(':/plugins/gml_explorer/show_wms_layers.png')


class GMLActiveWMSDialog(QDialog, FORM_CLASS):
    def __init__(self, parent=None):
        """Constructor."""
        super(GMLActiveWMSDialog, self).__init__(parent)
        self.setupUi(self)
        self.resizeEvent = self.adjustSize
        self.fillWMSTree()
        self.wms_tree.itemClicked.connect(self.showWMSMetadata)

    def adjustSize(self, event):
        width = event.size().width()
        height = event.size().height()
        self.container_widget.resize(width - 20, height - 20)

    def fillWMSTree(self):
        self.wms_tree.clear()
        for wms_name, wms_url in qs().value('active_wms').items():
            wms_item = QTreeWidgetItem(self.wms_tree)
            container = QWidget()
            layout = QHBoxLayout()
            layout.setContentsMargins(1, 1, 1, 1)
            wms_label = QLabel(wms_name)
            wms_layers_button = self.createButton(SHOW_LAYERS_ICON, wms_item)
            wms_label.setObjectName('wms_label')
            layout.addWidget(wms_label)
            layout.addWidget(wms_layers_button)
            container.setLayout(layout)
            self.wms_tree.setItemWidget(wms_item, 0, container)

    def createButton(self, icon, wms_item):
        button = QPushButton(icon, '')
        button.setMaximumSize(QSize(WIDGET_SIZE, WIDGET_SIZE))
        button.setMinimumSize(QSize(WIDGET_SIZE, WIDGET_SIZE))
        return button

    def showWMSMetadata(self, item, column):
        item_widget = self.wms_tree.itemWidget(item, 0)
        wms_name = item_widget.findChild(QLabel, 'wms_label').text()

        self.metadata_label.setText('Wybrana usługa: %s' % wms_name)

        self.metadata_tree.clear()
        # type_group_item = QTreeWidgetItem(self.metadata_tree)
        # type_group_item.setText(0, 'Connection type')
        # type_item = QTreeWidgetItem(type_group_item)
        # type_item.setText(0, self.cm.connection_types_map.get(connection_metadata.get('type')))
        # url_group_item = QTreeWidgetItem(self.metadata_tree)
        # url_group_item.setText(0, 'URL')
        # url_item = QTreeWidgetItem(url_group_item)
        # url_item.setText(0, connection_metadata.get('url'))
        # prefixes = connection_metadata.get('prefixes', [])
        # if len(prefixes) > 0:
        #     prefixes_item = QTreeWidgetItem(self.metadata_tree)
        #     prefixes_item.setText(0, 'Prefixes')
        #     for prefix_name, prefix_uri in prefixes.items():
        #         prefix_item = QTreeWidgetItem(prefixes_item)
        #         prefix_item.setText(0, '%s: <%s>' % (prefix_name, prefix_uri))
        self.expandAndChangeSizeHint()

    def expandAndChangeSizeHint(self):
        root_item = self.metadata_tree.invisibleRootItem()
        for i in range(0, root_item.childCount()):
            group_item = root_item.child(i)
            group_item.setSizeHint(0, QSize(1, WIDGET_SIZE))
            self.metadata_tree.expandItem(group_item)
            for j in range(0, group_item.childCount()):
                value_item = group_item.child(j)
                value_item.setSizeHint(0, QSize(1, WIDGET_SIZE))
