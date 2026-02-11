import os

from qgis.core import QgsMapLayer, QgsProject


def select_group(name: str) -> bool:
    """
    Select group item of a node tree
    """

    view = iface.layerTreeView()
    m = view.model()

    listIndexes = m.match(
        m.index(0, 0),
        Qt.DisplayRole,
        name,
        1,
        Qt.MatchFixedString | Qt.MatchRecursive | Qt.MatchCaseSensitive | Qt.MatchWrap,
    )

    if listIndexes:
        i = listIndexes[0]
        view.selectionModel().setCurrentIndex(i, QItemSelectionModel.ClearAndSelect)
        return True

    else:
        return False


def apply_rasterStyle(layers):
    project = QgsProject.instance()
    root = project.layerTreeRoot()

    # Get or create the "fims" group
    fims_group = root.findGroup("fims")
    if fims_group is None:
        fims_group = root.insertGroup(0, "fims")

    select_group("fims")

    for layer in layers:
        if layer.type() != QgsMapLayer.RasterLayer:
            continue

        source = layer.source()

        # Only .wd files
        if not source.lower().endswith(".wd"):
            continue

        # Apply style
        layer.loadNamedStyle("/home/abdul.siddiqui/data/twod-data/fims_0to6_firststreet_darkened.qml")

        # --- Rename layer ---
        path = source.split("|")[0]
        parts = path.split(os.sep)

        if len(parts) >= 4:
            third_parent = parts[-4]
            base_name = os.path.splitext(os.path.basename(path))[0]
            layer.setName(f"{third_parent}_{base_name}")

        layer.triggerRepaint()
        qgis.utils.iface.layerTreeView().refreshLayerSymbology(layer.id())


QgsProject.instance().layersAdded.connect(apply_rasterStyle)
