from qgis.PyQt.QtCore import Qt
from qgis.PyQt.QtGui import QCursor
from qgis.PyQt.QtWidgets import QApplication, QDialog, QTreeWidget, QTreeWidgetItem, QHeaderView, QMenu, QMessageBox


iface = qgis.utils.iface

def configureDialog(layer_name):
    dialog = QDialog()
    dialog.setWindowFlags(Qt.WindowStaysOnTopHint)
    dialog.setWindowTitle('Relacje obiektu klasy %s' % layer_name)
    dialog.setMinimumWidth(200)
    dialog.setMinimumHeight(200)
    dialog.resizeEvent = adjustSize
    tree = QTreeWidget(dialog)
    tree.move(5, 5)
    tree.setColumnCount(1)
    tree.setHeaderHidden(True)
    tree.setAutoScroll(True)
    tree.header().setSectionResizeMode(0, QHeaderView.ResizeToContents)
    tree.itemExpanded.connect(fitFormToContent)
    tree.itemDoubleClicked.connect(zoomToReference)
    tree.setContextMenuPolicy(Qt.CustomContextMenu)
    tree.customContextMenuRequested.connect(showMenu)
    return dialog, tree

def fitFormToContent():
    tree.resizeColumnToContents(0)
    column_width = tree.columnWidth(0)
    dialog.resize(column_width + 25, dialog.height())

def adjustSize(event):
    width = event.size().width()
    height = event.size().height()
    tree.resize(width - 10, height - 10)

def zoomToReference():
    current_item = tree.currentItem()
    if current_item.parent() is not None:
        layer_name = current_item.parent().text(0)
        identifier = current_item.text(0)
        ref_layers = QgsProject.instance().mapLayersByName(layer_name)
        if len(ref_layers) == 1:
            ref_layer = ref_layers[0]
            ref_layer.selectByExpression("gml_id = '" + identifier + "'")
            iface.mapCanvas().zoomToSelected(ref_layer)

def showMenu():
    current_item = tree.currentItem()
    menu = QMenu('Menu', dialog)
    if current_item.data(1, 1) == 'href' and current_item is not None:
        menu.addAction('Identyfikuj')
        menu.addAction('Wyświetl relacje')
        menu.addAction('Kopiuj identyfikator')
    action = menu.exec(QCursor.pos())
    if action is not None:
        executeMenuAction(action, current_item)

def executeMenuAction(action, current_item):
    layer_name = current_item.parent().text(0)
    identifier = current_item.text(0)
    if action.text() == 'Identyfikuj':
        ref_layers = QgsProject.instance().mapLayersByName(layer_name)
        if len(ref_layers) == 1:
            ref_layer = ref_layers[0]
            ref_layer.selectByExpression("gml_id = '" + identifier + "'")
            for feature in ref_layer.selectedFeatures():
                iface.mapCanvas().zoomToSelected(ref_layer)
                iface.mapCanvas().waitWhileRendering()
                iface.openFeatureForm(ref_layer, feature)
    if action.text() == 'Wyświetl relacje':
        ref_layer, field_names = getRefLayerAndFields(current_item.parent().text(0))
        if ref_layer is not None:
            getReferences(current_item, ref_layer, field_names)
            tree.expandItem(current_item)
    if action.text() == 'Kopiuj identyfikator':
        cb = QApplication.clipboard()
        cb.clear(mode=cb.Clipboard)
        cb.setText(identifier, mode=cb.Clipboard)

def getRefLayerAndFields(layer_name):
    ref_layer = None
    field_names = {}
    layers = QgsProject.instance().mapLayersByName(layer_name)
    if len(layers) == 1:
        ref_layer = layers[0]
        for field in ref_layer.fields():
            if field.comment() != '':
                field_names[field.name()] = field.comment()
    return ref_layer, field_names

def getReferences(item, ref_layer, field_names):
    identifier = item.text(0)
    for feature in ref_layer.getFeatures("gml_id = '" + identifier + "'"):
        for field_name in field_names.keys():
            field_value = feature.attribute(field_name)
            if field_value is not None and field_value:
                class_item = QTreeWidgetItem(item)
                class_item.setText(0, field_names[field_name])
                class_item.setData(1, 1, 'class')
                addReferences(class_item, field_value)
                tree.expandItem(class_item)
    for other_layer in QgsProject().instance().mapLayers().values():
        if other_layer.id() != ref_layer.id():
            for field in other_layer.fields():
                if field.comment() == ref_layer.name():
                    for other_feature in other_layer.getFeatures("\"" + field.displayName() + "\" LIKE '%" + feature.attribute("gml_id") + "%'"):
                        class_item = QTreeWidgetItem(item)
                        class_item.setText(0, other_layer.name())
                        class_item.setData(1, 1, 'class')
                        addReferences(class_item, other_feature.attribute("gml_id"))
                        tree.expandItem(class_item)

def addReferences(class_item, field_value):
    for href in field_value.split(', '):
        ref_item = QTreeWidgetItem(class_item)
        ref_item.setText(0, href)
        ref_item.setData(1, 1, 'href')

def showMessage(title, text):
    mbox = QMessageBox(dialog)
    mbox.setWindowTitle(title)
    mbox.setText(text)
    mbox.exec()

project = QgsProject.instance()
layers = project.mapLayersByName('[% @layer_name %]')
for layer in layers:
    if layer.id() == '[% @layer_id %]':
        dialog, tree = configureDialog('[% @layer_name %]')
        feature = layer.getFeature([% $id %])
        has_hrefs = False
        for field in layer.fields():
            if field.comment() != '':
                field_value = feature.attribute(field.name())
                if field_value is not None and field_value:
                    has_hrefs = True
                    class_item = QTreeWidgetItem()
                    class_item.setText(0, field.comment())
                    class_item.setData(1, 1, 'class')
                    tree.addTopLevelItem(class_item)
                    addReferences(class_item, field_value)
        for other_layer in project.mapLayers().values():
            if other_layer.id() != layer.id():
                for field in other_layer.fields():
                    if field.comment() == layer.name():
                        class_item = QTreeWidgetItem()
                        class_item.setText(0, other_layer.name())
                        class_item.setData(1, 1, 'class')
                        for other_feature in other_layer.getFeatures("\"" + field.displayName() + "\" LIKE '%" + feature.attribute("gml_id") + "%'"):
                            has_hrefs = True
                            tree.addTopLevelItem(class_item)
                            addReferences(class_item, other_feature.attribute("gml_id"))
        if has_hrefs:
            dialog.show()
        else:
            showMessage('Relacje obiektu', 'Wskazany obiekt nie ma relacji do innych obiektów')