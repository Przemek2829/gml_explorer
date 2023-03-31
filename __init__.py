# -*- coding: utf-8 -*-
# noinspection PyPep8Naming


def classFactory(iface):  # pylint: disable=invalid-name
    """Load GMLExplorer class from file GMLExplorer.

    :param iface: A QGIS interface instance.
    :type iface: QgsInterface
    """
    #
    from .gml_explorer import GMLExplorer
    return GMLExplorer(iface)
