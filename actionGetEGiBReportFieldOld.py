from qgis.PyQt.QtCore import Qt
from qgis.PyQt.QtWidgets import QDialog, QTableWidget, QHeaderView, QTableWidgetItem, QPushButton, QFileDialog, QMessageBox
import re
import csv

csv_list = []


def configureDialog():
    dialog = QDialog()
    dialog.setWindowFlags(Qt.WindowStaysOnTopHint)
    dialog.setWindowTitle('Zestawienie EGiB')
    dialog.setFixedHeight(405)
    dialog.setFixedWidth(1200)
    table = QTableWidget(0, 8, dialog)
    table.move(5, 35)
    table.horizontalHeader().setSectionResizeMode(QHeaderView.Stretch)
    table.setColumnWidth(0, 134)
    table.setColumnWidth(1, 134)
    table.setColumnWidth(2, 134)
    table.setColumnWidth(3, 134)
    table.setColumnWidth(4, 134)
    table.setColumnWidth(5, 250)
    table.setColumnWidth(6, 134)
    table.setColumnWidth(7, 134)
    table.setHorizontalHeaderLabels(
        ['nazwaWlasnaObrebu', 'nrdzialki', 'iddzialki', 'powierzchniaEwidencyjna', 'klasouzytek',
         'powierzchniaEwidencyjnaKlasouzytku', 'nazwa', 'udzial'])
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
            write.writerow(['nazwaWlasnaObrebu', 'nrdzialki', 'iddzialki', 'powierzchniaEwidencyjna', 'klasouzytek',
                            'powierzchniaEwidencyjnaKlasouzytku', 'nazwa', 'udzial'])
            write.writerows(csv_list)
        showMessage('Zestawienie EGiB - działka', 'Zestawienie zostało zapisane we wskazanej lokalizacji')

project = QgsProject().instance()
dialog, table = configureDialog()
for field_layer in project.mapLayersByName('[% @layer_name %]'):
    if field_layer.id() == '[% @layer_id %]':
        field_feature = field_layer.getFeature([% $id %])
        district = ''
        try:
            field_id = field_feature.attribute("idDzialki")
        except:
            field_id = ''
        field_number = re.sub("(.*)\\.(.*)$", r"\2", field_id)
        try:
            field_area = field_feature.attribute("powierzchniaEwidencyjna")
        except:
            field_area = ''
        landuses = []
        ownerships = []
        for field in field_layer.fields():
            if field.comment() == 'EGB_JednostkaRejestrowaGruntow':
                if len(project.mapLayersByName(field.comment())) == 0:
                    showMessage('Zestawienie EGiB - działka', 'Do projektu nie została wczytana warstwa EGB_JednostkaRejestrowaGruntow')
                else:
                    jrg_layer = project.mapLayersByName(field.comment())[0]
                    jrg_ids = field_feature.attribute(field.name())
                    jrg_ids = '' if jrg_ids == NULL else jrg_ids
                    if len(project.mapLayersByName('EGB_UdzialWlasnosci')) == 0:
                        showMessage('Zestawienie EGiB - działka', 'Do projektu nie została wczytana warstwa EGB_UdzialWlasnosci')
                    else:
                        ownership_layer = project.mapLayersByName('EGB_UdzialWlasnosci')[0]
                        for jrg_id in jrg_ids.split(', '):
                            for jrg_feature in jrg_layer.getFeatures("gml_id = '%s'" % jrg_id):
                                for jrg_field in jrg_layer.fields():
                                    if jrg_field.comment() == 'EGB_ObrebEwidencyjny_powierzchnia':
                                        if len(project.mapLayersByName(jrg_field.comment())) == 0:
                                            showMessage('Zestawienie EGiB - działka', 'Do projektu nie została wczytana warstwa EGB_ObrebEwidencyjny_powierzchnia')
                                        else:
                                            district_layer = project.mapLayersByName(jrg_field.comment())[0]
                                            district_ids = jrg_feature.attribute(jrg_field.name())
                                            district_ids = '' if district_ids == NULL else "'%s'" % district_ids.replace(", ",                                                                       "', '")
                                            for district_feature in district_layer.getFeatures("gml_id IN(%s)" % district_ids):
                                                try:
                                                    district = district_feature.attribute("nazwaWlasna")
                                                except:
                                                    district = ''
                            for ownership_field in ownership_layer.fields():
                                if ownership_field.comment() == field.comment():
                                    for ownership_feature in ownership_layer.getFeatures(
                                            ownership_field.name() + " LIKE '%" + jrg_id + "%'"):
                                        try:
                                            ownership_share = ownership_feature.attribute("licznikUlamkaOkreslajacegoWartoscUdzialu")
                                        except:
                                            ownership_share = ''
                                        try:
                                            ownership_share += '/%s' % ownership_feature.attribute(
                                            "mianownikUlamkaOkreslajacegoWartoscUdzialu")
                                        except:
                                            ownership_share = ''
                                        try:
                                            ownership_single = ownership_feature.attribute(
                                            "podmiotUdzialuWlasnosci_EGBPodmiot_osobaFizyczna5")
                                        except:
                                            ownership_single = NULL
                                        try:
                                            ownership_marriage = ownership_feature.attribute(
                                            "podmiotUdzialuWlasnosci_EGBPodmiot_malzenstwo4")
                                        except:
                                            ownership_marriage = NULL
                                        try:
                                            ownership_institution = ownership_feature.attribute(
                                            "podmiotUdzialuWlasnosci_EGBPodmiot_instytucja3")
                                        except:
                                            ownership_institution = NULL
                                        if ownership_single != NULL:
                                            owner_ids = ownership_single
                                            owner_ids = '' if owner_ids == NULL else "'%s'" % owner_ids.replace(", ", "', '")
                                            if len(project.mapLayersByName("EGB_OsobaFizyczna")) == 0:
                                                showMessage('Zestawienie EGiB - działka', 'Do projektu nie została wczytana warstwa EGB_OsobaFizyczna')
                                            else:
                                                owner_layer = project.mapLayersByName("EGB_OsobaFizyczna")[0]
                                                for owner_feature in owner_layer.getFeatures("gml_id IN(%s)" % owner_ids):
                                                    try:
                                                        owner = owner_feature.attribute("pierwszeImie")
                                                    except:
                                                        owner = ''
                                                    try:
                                                        surname_first = owner_feature.attribute("pierwszyCzlonNazwiska")
                                                    except:
                                                        surname_first = ''
                                                    owner = '%s %s' % (owner,surname_first) if surname_first != NULL else owner
                                                    try:
                                                        surname_second = owner_feature.attribute("drugiCzlonNazwiska")
                                                    except:
                                                        surname_second = ''
                                                    owner = '%s %s' % (owner,surname_second) if surname_second != NULL else owner
                                                    ownerships.append((owner, ownership_share))
                                        elif ownership_marriage != NULL:
                                            owner_ids = ownership_marriage
                                            owner_ids = '' if owner_ids == NULL else "'%s'" % owner_ids.replace(", ", "', '")
                                            if len(project.mapLayersByName("EGB_Malzenstwo")) == 0:
                                                showMessage('Zestawienie EGiB - działka', 'Do projektu nie została wczytana warstwa EGB_Malzenstwo')
                                            else:
                                                owner_layer = project.mapLayersByName("EGB_Malzenstwo")[0]
                                                for owner_feature in owner_layer.getFeatures("gml_id IN(%s)" % owner_ids):
                                                    try:
                                                        marriage_ids = "'%s'" % owner_feature.attribute("osobaFizyczna2")
                                                    except:
                                                        marriage_ids = ''
                                                    marriage_partner = owner_feature.attribute("osobaFizyczna3")
                                                    marriage_ids = "%s, '%s'" % (marriage_ids, marriage_partner) if marriage_ids != NULL else "'%s'" % marriage_partner
                                                    if len(project.mapLayersByName("EGB_OsobaFizyczna")) == 0:
                                                        showMessage('Zestawienie EGiB - działka', 'Do projektu nie została wczytana warstwa EGB_OsobaFizyczna')
                                                    else:
                                                        owner_sub_layer = project.mapLayersByName("EGB_OsobaFizyczna")[0]
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
                                                            owner = '%s %s' % (owner,surname_first) if surname_first != NULL else owner
                                                            try:
                                                                surname_second = owner_sub_feature.attribute(
                                                                "drugiCzlonNazwiska")
                                                            except:
                                                                surname_second = ''
                                                            owner = '%s %s' % (owner,surname_second) if surname_second != NULL else owner
                                                            owners += owner if owners == '' else ", %s" % owner
                                                        ownerships.append((owners, ownership_share))
                                        elif ownership_institution != NULL:
                                            owner_ids = ownership_institution
                                            owner_ids = '' if owner_ids == NULL else "'%s'" % owner_ids.replace(", ", "', '")
                                            if len(project.mapLayersByName("EGB_Instytucja")) == 0:
                                                showMessage('Zestawienie EGiB - działka', 'Do projektu nie została wczytana warstwa EGB_Instytucja')
                                            else:
                                                owner_layer = project.mapLayersByName("EGB_Instytucja")[0]
                                                for owner_feature in owner_layer.getFeatures("gml_id IN(%s)" % owner_ids):
                                                    try:
                                                        owner = owner_feature.attribute("nazwaSkrocona")
                                                    except:
                                                        owner = ''
                                                    ownerships.append((owner, ownership_share))
            if field.comment() == 'EGB_Klasouzytek':
                if len(project.mapLayersByName(field.comment())) == 0:
                    showMessage('Zestawienie EGiB - działka', 'Do projektu nie została wczytana warstwa EGB_Klasouzytek')
                else:
                    landuse_layer = project.mapLayersByName(field.comment())[0]
                    landuse_ids = field_feature.attribute(field.name())
                    landuse_ids = '' if landuse_ids == NULL else "'%s'" % landuse_ids.replace(", ", "', '")
                    for landuse_feature in landuse_layer.getFeatures("gml_id IN(%s)" % landuse_ids):
                        try:
                            ozu = landuse_feature.attribute(
                            "oznaczenieKlasouzytku_EGBOznaczenieKlasouzytku_OZU")
                        except:
                            ozu = ''
                        try:
                            ozk = landuse_feature.attribute("oznaczenieKlasouzytku_EGBOznaczenieKlasouzytku_OZK")
                        except:
                            ozk = ''
                        try:
                            area = landuse_feature.attribute("powierzchniaEwidencyjnaKlasouzytku")
                        except:
                            area = ''
                        ozu = ozu
                        ozu = ozu if ozu != NULL else ''
                        ozk = ozk
                        ozk = ozk if ozk != NULL else ''
                        landuses.append(
                            ('%s-%s' % (ozu, ozk), area))
        if len(landuses) > 0:
            for landuse in landuses:
                if len(ownerships) > 0:
                    for ownership in ownerships:
                        rownum = table.rowCount()
                        table.insertRow(rownum)
                        district_item = QTableWidgetItem(district)
                        district_item.setWhatsThis(str([% $id %]))
                        table.setItem(rownum, 0, district_item)
                        table.setItem(rownum, 1, QTableWidgetItem(field_number))
                        table.setItem(rownum, 2, QTableWidgetItem(field_id))
                        table.setItem(rownum, 3, QTableWidgetItem(field_area))
                        table.setItem(rownum, 4, QTableWidgetItem('' if landuse[0] == NULL else landuse[0]))
                        table.setItem(rownum, 5, QTableWidgetItem('' if landuse[1] == NULL else landuse[1]))
                        table.setItem(rownum, 6, QTableWidgetItem('' if ownership[0] == NULL else ownership[0]))
                        table.setItem(rownum, 7, QTableWidgetItem('' if ownership[1] == NULL else ownership[1]))
                        csv_list.append(
                            [district, field_number, field_id, field_area, landuse[0], landuse[1], ownership[0], ownership[1]])
                else:
                    rownum = table.rowCount()
                    table.insertRow(rownum)
                    district_item = QTableWidgetItem(district)
                    district_item.setWhatsThis(str([% $id %]))
                    table.setItem(rownum, 0, district_item)
                    table.setItem(rownum, 1, QTableWidgetItem(field_number))
                    table.setItem(rownum, 2, QTableWidgetItem(field_id))
                    table.setItem(rownum, 3, QTableWidgetItem(field_area))
                    table.setItem(rownum, 4, QTableWidgetItem(landuse[0]))
                    table.setItem(rownum, 5, QTableWidgetItem(landuse[1]))
                    table.setItem(rownum, 6, QTableWidgetItem(''))
                    table.setItem(rownum, 7, QTableWidgetItem(''))
                    csv_list.append(
                        [district, field_number, field_id, field_area, landuse[0], landuse[1], '',
                         ''])
        dialog.show()