from qgis.PyQt.QtCore import Qt
from qgis.PyQt.QtWidgets import QDialog, QTableWidget, QHeaderView, QTableWidgetItem, QPushButton, QFileDialog, QMessageBox
import re
import csv

csv_list = []
iface = qgis.utils.iface


def configureDialog():
    dialog = QDialog()
    dialog.setWindowFlags(Qt.WindowStaysOnTopHint)
    dialog.setWindowTitle('Budynki przynależne do działki')
    dialog.setFixedHeight(405)
    dialog.setFixedWidth(1000)
    table = QTableWidget(0, 5, dialog)
    table.move(5, 35)
    table.horizontalHeader().setSectionResizeMode(QHeaderView.Stretch)
    table.setHorizontalHeaderLabels(
        ['idDzialki', 'idBudynku', 'kondygnacjeNadziemne', 'kondygnacjePodziemne', 'powZabudowy'])
    table.setFixedHeight(360)
    table.setFixedWidth(990)
    table.itemSelectionChanged.connect(zoomToSelectedBuilding)
    button = QPushButton(dialog)
    button.move(5, 5)
    button.setFixedHeight(25)
    button.setFixedWidth(115)
    button.setText('Eksport do pliku csv')
    button.clicked.connect(saveToCsv)
    return dialog, table

def zoomToSelectedBuilding():
    if len(project.mapLayersByName('EGB_Budynek_powierzchnia')):
        field_layer = project.mapLayersByName('EGB_Budynek_powierzchnia')[0]
        field_layer.removeSelection()
        field_layer.select(int(table.item(table.currentRow(), 0).whatsThis()))
        iface.mapCanvas().zoomToSelected(field_layer)

def showMessage(title, text):
    mbox = QMessageBox(dialog)
    mbox.setWindowTitle(title)
    mbox.setText(text)
    mbox.exec()

def saveToCsv():
    csv_file = QFileDialog.getSaveFileName(dialog, 'Wybierz plik', '', 'Comma Separated Value(*.csv)')
    if csv_file[0] != "":
        with open(csv_file[0], 'w', newline='', encoding='utf-8') as f:
            write = csv.writer(f, delimiter=";")
            write.writerow(['idDzialki', 'idBudynku', 'kondygnacjeNadziemne', 'kondygnacjePodziemne', 'powZabudowy'])
            write.writerows(csv_list)
        showMessage('Budynki przynależne do działki', 'Zestawienie zostało zapisane we wskazanej lokalizacji')

project = QgsProject().instance()
dialog, table = configureDialog()
for field_layer in project.mapLayersByName('[% @layer_name %]'):
    if field_layer.id() == '[% @layer_id %]':
        field_feature = field_layer.getFeature([% $id %])
        if len(project.mapLayersByName('EGB_Budynek_powierzchnia')) == 1:
            dialog, table = configureDialog()
            building_layer = project.mapLayersByName('EGB_Budynek_powierzchnia')[0]
            field_layer = project.mapLayersByName('EGB_DzialkaEwidencyjna_powierzchnia')[0]
            field_gml_id = str(field_feature.attribute("gml_id"))
            field_id = '' if str(field_feature.attribute("idDzialki")) == 'NULL' else str(
                field_feature.attribute("idDzialki"))
            for building_feature in building_layer.getFeatures(
                    '"dzialkaZabudowanaBudynkiem" LIKE \'%' + field_gml_id + '%\''):
                building_id = '' if str(building_feature.attribute("idBudynku")) == 'NULL' else str(
                    building_feature.attribute("idBudynku"))
                building_overground_storeys = '' if str(
                    building_feature.attribute("liczbaKondygnacjiNadziemnych")) == 'NULL' else str(
                    building_feature.attribute("liczbaKondygnacjiNadziemnych"))
                building_underground_storeys = '' if str(
                    building_feature.attribute("liczbaKondygnacjiPodziemnych")) == 'NULL' else str(
                    building_feature.attribute("liczbaKondygnacjiPodziemnych"))
                building_area = '' if str(building_feature.attribute("powZabudowy")) == 'NULL' else str(
                    building_feature.attribute("powZabudowy"))
                rownum = table.rowCount()
                table.insertRow(rownum)
                field_item = QTableWidgetItem(field_id)
                field_item.setWhatsThis(str(building_feature.id()))
                table.setItem(rownum, 0, field_item)
                table.setItem(rownum, 1, QTableWidgetItem(building_id))
                table.setItem(rownum, 2, QTableWidgetItem(building_overground_storeys))
                table.setItem(rownum, 3, QTableWidgetItem(building_underground_storeys))
                table.setItem(rownum, 4, QTableWidgetItem(building_area))
                csv_list.append(
                    [field_id, building_id, building_overground_storeys, building_underground_storeys,
                     building_area])
            dialog.exec()
        elif len(project.mapLayersByName('EGB_Budynek_powierzchnia')) == 0:
            showMessage('Budynki przynależne do działki', 'Do projektu nie została wczytana warstwa EGB_Budynek_powierzchnia')