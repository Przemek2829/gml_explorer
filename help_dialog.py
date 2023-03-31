import os
import json

from qgis.PyQt import uic
from qgis.PyQt.QtGui import QIcon, QPixmap
from qgis.PyQt.QtCore import Qt
from qgis.PyQt.QtWidgets import QDialog, QGraphicsScene
import sys
sys.path.append(os.path.dirname(__file__))

FORM_CLASS, _ = uic.loadUiType(os.path.join(
    os.path.dirname(__file__), 'help_dialog.ui'), resource_suffix='')


class HelpDialog(QDialog, FORM_CLASS):

    def __init__(self, parent=None):
        """Constructor."""
        super(HelpDialog, self).__init__(parent)
        self.setupUi(self)
        self.resizeEvent = self.adjustSize
        self.setWindowFlags(Qt.WindowStaysOnTopHint)
        self.pixmap = QPixmap(os.path.join(os.path.dirname(__file__), "manual.png"))

    def showHelp(self):
        scene = QGraphicsScene(0, 0, self.pixmap.width(), self.pixmap.height())
        scene.addPixmap(self.pixmap)
        self.graphicsView.setScene(scene)
        scroll_bar = self.graphicsView.verticalScrollBar()
        self.show()
        scroll_bar.setValue(0)

    def adjustSize(self, event):
        width = event.size().width()
        height = event.size().height()
        self.graphicsView.resize(width - 20, height - 20)
        scene = QGraphicsScene(0, 0, self.pixmap.width(), self.pixmap.height())
        scene.addPixmap(self.pixmap)
        self.graphicsView.setScene(scene)
