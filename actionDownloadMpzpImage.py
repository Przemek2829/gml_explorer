import requests
import re
from qgis.PyQt.QtWidgets import QFileDialog
project = QgsProject().instance()
iface = qgis.utils.iface

def getFilename(cd):
    if not cd:
        return None
    fname = re.findall('filename=(.+)', cd)
    if len(fname) == 0:
        return None
    return fname[0].replace('"', '')

project = QgsProject().instance()
for field_layer in project.mapLayersByName('[% @layer_name %]'):
    if field_layer.id() == '[% @layer_id %]':
        field_feature = field_layer.getFeature([% $id %])
        image_url = field_feature.attribute("rysunek_url")
        if image_url != NULL:
            try:
                response = requests.get(image_url)
                file_name = getFilename(response.headers.get('content-disposition'))
                img_data = response.content
                img_file = QFileDialog.getSaveFileName(None, 'Wybierz plik', file_name)
                if img_file[0] != "":
                    with open(img_file[0], 'wb') as handler:
                        handler.write(img_data)
                        project.addMapLayer(QgsRasterLayer(img_file[0], file_name))
            except Exception as e:
                iface.messageBar().pushMessage(
                    "Wizualizacja GML",
                    "Błąd pobierania: %s" % e,
                    level=Qgis.Critical, duration=5)
        else:
            iface.messageBar().pushMessage(
                "Wizualizacja GML",
                "Wybrany obiekt nie posiada adresu z rysunkiem",
                level=Qgis.Info, duration=5)