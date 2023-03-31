from qgis.PyQt.QtCore import Qt
from qgis.PyQt.QtWidgets import QDialog, QTableWidget, QHeaderView, QTableWidgetItem, QPushButton, QFileDialog, QMessageBox
import re
import csv

csv_list = []


def configureDialog():
    dialog = QDialog()
    dialog.setWindowFlags(Qt.WindowStaysOnTopHint)
    dialog.setWindowTitle('Właściciele działki ewidencyjnej')
    dialog.setFixedHeight(405)
    dialog.setFixedWidth(1200)
    table = QTableWidget(0, 7, dialog)
    table.move(5, 35)
    table.horizontalHeader().setSectionResizeMode(QHeaderView.Stretch)
    table.setColumnWidth(0, 134)
    table.setColumnWidth(1, 134)
    table.setColumnWidth(2, 134)
    table.setColumnWidth(3, 134)
    table.setColumnWidth(4, 134)
    table.setColumnWidth(5, 250)
    table.setColumnWidth(6, 134)
    table.setHorizontalHeaderLabels(
        ['nrdzialki', 'właściciel', 'udzial', 'ulica', 'numer', 'kod pocztowy', 'miejscowość'])
    table.setFixedHeight(360)
    table.setFixedWidth(1190)
    table.itemSelectionChanged.connect(zoomToSelectedField)
    button = QPushButton(dialog)
    button.move(5, 5)
    button.setFixedHeight(25)
    button.setFixedWidth(115)
    button.setText('Eksport do pliku csv')
    button.clicked.connect(saveToCsv)
    return dialog, table

def zoomToSelectedField():
    for field_layer in project.mapLayersByName('[% @layer_name %]'):
        if field_layer.id() == '[% @layer_id %]':
            field_layer.removeSelection()
            field_layer.select(int(table.item(table.currentRow(),0).whatsThis()))
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
            write.writerow(['nrdzialki', 'właściciel', 'udzial', 'ulica', 'numer', 'kod pocztowy', 'miejscowość'])
            write.writerows(csv_list)
        showMessage('Właściciele działki ewidencyjnej', 'Zestawienie zostało zapisane we wskazanej lokalizacji')

project = QgsProject().instance()
dialog, table = configureDialog()
for field_layer in project.mapLayersByName('[% @layer_name %]'):
    if field_layer.id() == '[% @layer_id %]':
        field_feature = field_layer.getFeature([% $id %])
        field_id = field_feature.attribute("idDzialki")
        field_number = re.sub("(.*)\\.(.*)$", r"\2", field_id)
        ownerships = []
        for field in field_layer.fields():
            if field.comment() == 'EGB_JednostkaRejestrowaGruntow':
                if len(project.mapLayersByName(field.comment())) == 0:
                    showMessage('Właściciele działki ewidencyjnej', 'Do projektu nie została wczytana warstwa EGB_JednostkaRejestrowaGruntow')
                else:
                    jrg_layer = project.mapLayersByName(field.comment())[0]
                    jrg_ids = field_feature.attribute(field.name())
                    jrg_ids = '' if jrg_ids == NULL else jrg_ids
                    if len(project.mapLayersByName('EGB_UdzialWeWlasnosci')) == 0:
                        showMessage('Właściciele działki ewidencyjnej', 'Do projektu nie została wczytana warstwa EGB_UdzialWlasnosci')
                    else:
                        ownership_layer = project.mapLayersByName('EGB_UdzialWeWlasnosci')[0]
                        for jrg_id in jrg_ids.split(', '):
                            for ownership_field in ownership_layer.fields():
                                if ownership_field.comment() == field.comment():
                                    for ownership_feature in ownership_layer.getFeatures(
                                            ownership_field.name() + " LIKE '%" + jrg_id + "%'"):
                                        try:
                                            ownership_share = ownership_feature.attribute(
                                                "licznikUlamkaOkreslajacegoWartoscUdzialu")
                                        except:
                                            ownership_share = ''
                                        try:
                                            ownership_share += '/%s' % ownership_feature.attribute(
                                                "mianownikUlamkaOkreslajacegoWartoscUdzialu")
                                        except:
                                            ownership_share = ''
                                        try:
                                            ownership_single = ownership_feature.attribute(
                                                "podmiotUdzialuWlasnosci_EGBPodmiot_osobaFizyczna")
                                        except:
                                            ownership_single = NULL
                                        try:
                                            ownership_marriage = ownership_feature.attribute(
                                                "podmiotUdzialuWlasnosci_EGBPodmiot_malzenstwo")
                                        except:
                                            ownership_marriage = NULL
                                        try:
                                            ownership_institution = ownership_feature.attribute(
                                                "podmiotUdzialuWlasnosci_EGBPodmiot_instytucja1")
                                        except:
                                            ownership_institution = NULL
                                        street = ''
                                        number = ''
                                        town = ''
                                        postal_code = ''
                                        if len(project.mapLayersByName('EGB_AdresPodmiotu')) > 0:
                                            address_layer = project.mapLayersByName('EGB_AdresPodmiotu')[0]
                                            for address_feature in address_layer.getFeatures("gml_id = '%s'" % ownership_feature.attribute("podmiotUdzialuWlasnosci_EGBPodmiot_adresPodmiotu")):
                                                try:
                                                    street = address_feature.attribute("ulica")
                                                except:
                                                    street = ''
                                                try:
                                                    number = address_feature.attribute("numerPorzadkowy")
                                                    local_number = address_feature.attribute("numerLokalu")
                                                    if local_number != NULL:
                                                        number += '/%s' % local_number
                                                except:
                                                    number = ''
                                                try:
                                                    town = address_feature.attribute("miejscowosc")
                                                except:
                                                    town = ''
                                                try:
                                                    postal_code = address_feature.attribute("kodPocztowy")
                                                except:
                                                    postal_code = ''
                                        if ownership_single != NULL:
                                            owner_ids = ownership_single
                                            owner_ids = '' if owner_ids == NULL else "'%s'" % owner_ids.replace(", ",
                                                                                                                "', '")
                                            if len(project.mapLayersByName("EGB_OsobaFizyczna")) == 0:
                                                showMessage('Zestawienie EGiB - działka',
                                                            'Do projektu nie została wczytana warstwa EGB_OsobaFizyczna')
                                            else:
                                                owner_layer = project.mapLayersByName("EGB_OsobaFizyczna")[0]
                                                for owner_feature in owner_layer.getFeatures(
                                                        "gml_id IN(%s)" % owner_ids):
                                                    try:
                                                        owner = owner_feature.attribute("pierwszeImie")
                                                    except:
                                                        owner = ''
                                                    try:
                                                        surname_first = owner_feature.attribute(
                                                            "pierwszyCzlonNazwiska")
                                                    except:
                                                        surname_first = ''
                                                    owner = '%s %s' % (
                                                    owner, surname_first) if surname_first != NULL else owner
                                                    try:
                                                        surname_second = owner_feature.attribute(
                                                            "drugiCzlonNazwiska")
                                                    except:
                                                        surname_second = ''
                                                    owner = '%s %s' % (
                                                    owner, surname_second) if surname_second != NULL else owner
                                                    ownerships.append((owner, ownership_share, street, number, postal_code, town))
                                        elif ownership_marriage != NULL:
                                            owner_ids = ownership_marriage
                                            owner_ids = '' if owner_ids == NULL else "'%s'" % owner_ids.replace(", ",
                                                                                                                "', '")
                                            if len(project.mapLayersByName("EGB_Malzenstwo")) == 0:
                                                showMessage('Zestawienie EGiB - działka',
                                                            'Do projektu nie została wczytana warstwa EGB_Malzenstwo')
                                            else:
                                                owner_layer = project.mapLayersByName("EGB_Malzenstwo")[0]
                                                for owner_feature in owner_layer.getFeatures(
                                                        "gml_id IN(%s)" % owner_ids):
                                                    try:
                                                        marriage_ids = "'%s'" % owner_feature.attribute(
                                                            "osobaFizyczna2")
                                                    except:
                                                        marriage_ids = ''
                                                    try:
                                                        marriage_partner = owner_feature.attribute("osobaFizyczna3")
                                                    except:
                                                        marriage_partner = ''
                                                    marriage_ids = "%s, '%s'" % (marriage_ids,
                                                                                 marriage_partner) if marriage_ids != NULL else "'%s'" % marriage_partner
                                                    if len(project.mapLayersByName("EGB_OsobaFizyczna")) == 0:
                                                        showMessage('Zestawienie EGiB - działka',
                                                                    'Do projektu nie została wczytana warstwa EGB_OsobaFizyczna')
                                                    else:
                                                        owner_sub_layer = project.mapLayersByName("EGB_OsobaFizyczna")[
                                                            0]
                                                        owners = ''
                                                        for owner_sub_feature in owner_sub_layer.getFeatures(
                                                                "gml_id in (%s)" % marriage_ids):
                                                            try:
                                                                owner = owner_sub_feature.attribute("pierwszeImie")
                                                            except:
                                                                owner = ''
                                                            try:
                                                                surname_first = owner_sub_feature.attribute(
                                                                    "pierwszyCzlonNazwiska")
                                                            except:
                                                                surname_first = ''
                                                            owner = '%s %s' % (
                                                            owner, surname_first) if surname_first != NULL else owner
                                                            try:
                                                                surname_second = owner_sub_feature.attribute(
                                                                    "drugiCzlonNazwiska")
                                                            except:
                                                                surname_second = ''
                                                            owner = '%s %s' % (
                                                            owner, surname_second) if surname_second != NULL else owner
                                                            owners += owner if owners == '' else ", %s" % owner
                                                            owners = '' if owners.strip() == ',' else owners
                                                        ownerships.append((owners, ownership_share, street, number, postal_code, town))
                                        elif ownership_institution != NULL:
                                            owner_ids = ownership_institution
                                            owner_ids = '' if owner_ids == NULL else "'%s'" % owner_ids.replace(", ",
                                                                                                                "', '")
                                            if len(project.mapLayersByName("EGB_Instytucja")) == 0:
                                                showMessage('Zestawienie EGiB - działka',
                                                            'Do projektu nie została wczytana warstwa EGB_Instytucja')
                                            else:
                                                owner_layer = project.mapLayersByName("EGB_Instytucja")[0]
                                                for owner_feature in owner_layer.getFeatures(
                                                        "gml_id IN(%s)" % owner_ids):
                                                    try:
                                                        owner = owner_feature.attribute("nazwaSkrocona")
                                                    except:
                                                        owner = ''
                                                    ownerships.append((owner, ownership_share, street, number, postal_code, town))
        if len(ownerships) > 0:
            for ownership in ownerships:
                rownum = table.rowCount()
                table.insertRow(rownum)
                field_number_item = QTableWidgetItem(field_number)
                field_number_item.setWhatsThis(str([% $id %]))
                table.setItem(rownum, 0, field_number_item)
                table.setItem(rownum, 1, QTableWidgetItem('' if ownership[0] == NULL else ownership[0]))
                table.setItem(rownum, 2, QTableWidgetItem('' if ownership[1] == NULL else ownership[1]))
                table.setItem(rownum, 3, QTableWidgetItem('' if ownership[2] == NULL else ownership[2]))
                table.setItem(rownum, 4, QTableWidgetItem('' if ownership[3] == NULL else ownership[3]))
                table.setItem(rownum, 5, QTableWidgetItem('' if ownership[4] == NULL else ownership[4]))
                table.setItem(rownum, 6, QTableWidgetItem('' if ownership[5] == NULL else ownership[5]))
                csv_list.append(
                    [field_number, ownership[0], ownership[1], ownership[2], ownership[3], ownership[4], ownership[5]])
        dialog.show()