from qgis.PyQt.QtCore import QSettings as qs
from .gml_logger_mode import GMLLoggerMode
from .gml_auth_dialog import GMLAuthDialog


class GMLAuthenticator:

    def __init__(self, logger):
        self.dialog = GMLAuthDialog(self)
        self.logger = logger
        self.upload_manager = None
        self.restart_upload = False

    def showAuthenticationDialog(self):
        authentication_method = qs().value('authentication_method')
        if authentication_method == 'email':
            self.dialog.signin_button.show()
            self.dialog.email_button.setChecked(True)
        else:
            self.dialog.signin_button.hide()
        if authentication_method == 'google':
            self.dialog.google_button.setChecked(True)
        self.dialog.setModal(True)
        self.dialog.show()
