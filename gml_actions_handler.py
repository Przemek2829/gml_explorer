# -*- coding: utf-8 -*-
from qgis.core import *
from PyQt5.QtCore import *
import os


class GMLActionsHandler:

    def __init__(self):
        self.actions = {"Wyświetl relacje": os.path.join(os.path.dirname(__file__), "actionGetReferenceObjects.py"),
                        "Wyświetl obiekty archiwalne": os.path.join(os.path.dirname(__file__), "actionShowArchivalObjects.py"),
                        "Zestawienie EGiB - działka": os.path.join(os.path.dirname(__file__), "actionGetEGiBReportFieldOld.py"),
                        "Zestawienie EGiB - działka ": os.path.join(os.path.dirname(__file__), "actionGetEGiBReportField.py"),
                        "Właściciele działki ewidencyjnej": os.path.join(os.path.dirname(__file__), "actionGetEGiBReportFieldOwnersOld.py"),
                        "Właściciele działki ewidencyjnej ": os.path.join(os.path.dirname(__file__), "actionGetEGiBReportFieldOwners.py"),
                        "Wyświetl budynki przynależne do działki": os.path.join(os.path.dirname(__file__), "actionGetFieldBuildingsReportOld.py"),
                        "Wyświetl budynki przynależne do działki ": os.path.join(os.path.dirname(__file__), "actionGetFieldBuildingsReport.py")}

    def addAction(self, layer, action_name):
        action_file = open(self.actions[action_name], 'r')
        action = QgsAction(
            QgsAction.GenericPython,
            action_name,
            "".join(action_file),
            "",
            False,
            action_name,
            {"Canvas", "Feature", "Field"})
        action_manager = layer.actions()
        action_manager.setDefaultAction("Canvas", action.id())
        action_manager.addAction(action)
        action_file.close()
