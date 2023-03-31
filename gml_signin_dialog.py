import os
import json
import webbrowser

from qgis.PyQt import uic
from qgis.PyQt.QtCore import QSettings as qs, Qt
from qgis.PyQt.QtWidgets import QDialog, QTreeWidgetItemIterator
import sys

sys.path.append(os.path.dirname(__file__))

FORM_CLASS, _ = uic.loadUiType(os.path.join(
    os.path.dirname(__file__), 'gml_signin_dialog.ui'), resource_suffix='')


class GMLSigninDialog(QDialog, FORM_CLASS):

    def __init__(self, parent=None):
        """Constructor."""
        super(GMLSigninDialog, self).__init__(parent)
        self.setupUi(self)
        self.login_input.textChanged.connect(self.validateForm)
        self.password_input.textChanged.connect(self.validateForm)
        self.create_account_button.clicked.connect(self.openRegistrationPage)
        self.finished.connect(lambda accepted: self.writeCredentials(accepted))
        self.form_is_valid = False
        self.fillCredentials()

    def openRegistrationPage(self):
        webbrowser.open('https://www.c-geoportal.pl/login')

    def fillCredentials(self):
        self.login_input.setText(qs().value('email'))
        self.password_input.setText(qs().value('password'))
        self.validateForm()

    def validateForm(self):
        login_valid = self.login_input.text().strip() != ''
        password_valid = self.password_input.text().strip != ''
        self.form_is_valid = login_valid and password_valid

    def writeCredentials(self, accepted):
        if accepted:
            if self.form_is_valid:
                qs().setValue('email', self.login_input.text())
                qs().setValue('password', self.password_input.text())
            else:
                self.show()
