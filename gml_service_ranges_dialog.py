import os
from qgis.PyQt import uic
from qgis.PyQt.QtCore import Qt, QSize
from qgis.PyQt.QtGui import QIcon
from qgis.PyQt.QtWidgets import QDialog, QMessageBox, QTreeWidgetItemIterator, QPushButton, QWidget, QHBoxLayout
import csv
import sys
sys.path.append(os.path.dirname(__file__))

FORM_CLASS, _ = uic.loadUiType(os.path.join(
    os.path.dirname(__file__), 'gml_service_ranges_dialog.ui'), resource_suffix='')


class GMLServiceRangesDialog(QDialog, FORM_CLASS):

    def __init__(self, service_manager, parent=None):
        """Constructor."""
        super(GMLServiceRangesDialog, self).__init__(parent)
        self.service_manager = service_manager
        self.setWindowFlags(Qt.WindowStaysOnTopHint)
        self.setupUi(self)
        self.changeEvent = self.changeEvent
        self.ranges_tree.itemClicked.connect(lambda item: self.addButtons(item))

    def changeEvent(self, event):
        if self.isActiveWindow():
            self.setWindowOpacity(1)
        else:
            self.setWindowOpacity(0.8)

    def createButtonsContainer(self, service_range):
        buttons_container = QWidget()
        buttons_container.setMaximumSize(75, 30)
        buttons_container.setMinimumSize(75, 30)
        buttons_layout = QHBoxLayout()
        buttons_layout.setContentsMargins(5, 1, 1, 1)
        zoom_button = self.createButton(QIcon(':/plugins/gml_explorer/zoom.png'), 'Pokaż zasięg na mapie')
        switch_button = self.createButton(QIcon(':/plugins/gml_explorer/switch.png'), 'Przełącz zasięg')
        delete_button = self.createButton(QIcon(':/plugins/gml_explorer/remove.png'), 'Usuń zasięg')
        zoom_button.clicked.connect(lambda: self.service_manager.zoomToRange(service_range))
        switch_button.clicked.connect(lambda: self.service_manager.switchToRange(service_range))
        delete_button.clicked.connect(lambda: self.service_manager.deleteRange(service_range))
        buttons_layout.addWidget(zoom_button)
        buttons_layout.addWidget(switch_button)
        buttons_layout.addWidget(delete_button)
        buttons_container.setLayout(buttons_layout)
        return buttons_container

    def createButton(self, icon, tool_tip):
        button = QPushButton(icon, '')
        button.setMaximumSize(QSize(20, 20))
        button.setMinimumSize(QSize(20, 20))
        button.setToolTip(tool_tip)
        return button

    def addButtons(self, item):
        buttons_container = self.createButtonsContainer(item.data(0, 1))
        iterator = QTreeWidgetItemIterator(self.ranges_tree)
        while iterator.value():
            tree_item = iterator.value()
            if tree_item.text(0) == item.text(0):
                self.ranges_tree.setItemWidget(tree_item, 1, buttons_container)
            else:
                self.ranges_tree.removeItemWidget(tree_item, 1)
            iterator += 1


