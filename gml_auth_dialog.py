import os
import json

from qgis.PyQt import uic
from qgis.PyQt.QtCore import QSettings as qs, Qt
from qgis.PyQt.QtWidgets import QDialog, QTreeWidgetItemIterator
import sys

from .gml_signin_dialog import GMLSigninDialog

sys.path.append(os.path.dirname(__file__))

FORM_CLASS, _ = uic.loadUiType(os.path.join(
    os.path.dirname(__file__), 'gml_auth_dialog.ui'), resource_suffix='')


class GMLAuthDialog(QDialog, FORM_CLASS):

    def __init__(self, authenticator, parent=None):
        """Constructor."""
        super(GMLAuthDialog, self).__init__(parent)
        self.setupUi(self)
        self.signin_button.hide()
        self.authenticator = authenticator
        self.signin_dialog = GMLSigninDialog()
        self.finished.connect(self.restartUploadProcess)
        self.email_button.clicked.connect(
            lambda checked: self.setAuthenticationMethod(checked, 'email', self.email_button, self.google_button))
        self.google_button.clicked.connect(
            lambda checked: self.setAuthenticationMethod(checked, 'google', self.google_button, self.email_button))
        self.signin_button.clicked.connect(self.showSigninDialog)

    def setAuthenticationMethod(self, checked, method, button, other_button):
        if checked:
            qs().setValue('authentication_method', method)
            if method == 'email':
                self.signin_button.show()
            else:
                self.signin_button.hide()
            other_button.setChecked(False)
        else:
            button.setChecked(True)

    def showSigninDialog(self):
        self.signin_dialog.setModal(True)
        self.signin_dialog.show()

    def restartUploadProcess(self):
        if self.authenticator.restart_upload:
            self.authenticator.restart_upload = False
            self.authenticator.upload_manager.startUploadProcess()
