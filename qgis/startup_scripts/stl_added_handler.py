import os

from qgis.core import QgsMapLayer, QgsProject
from qgis.PyQt.QtCore import QItemSelectionModel, Qt


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


def apply_stl_vector_naming_and_group(layers):
    project = QgsProject.instance()
    root = project.layerTreeRoot()

    # Get or create the "stl" group
    stl_group = root.findGroup("stl")
    if stl_group is None:
        stl_group = root.insertGroup(0, "stl")

    for layer in layers:
        # Only vector layers
        if layer.type() != QgsMapLayer.VectorLayer:
            continue

        source = layer.source()
        path = source.split("|")[0]  # remove provider params if any

        # Only if "stl" is in the name or datasource
        if "stl" not in path.lower() and "stl" not in layer.name().lower():
            continue

        # Select group so the layer gets added under it
        select_group("stl")

        # Rename: <3rd parent>_<basename-without-ext>
        parts = path.split(os.sep)
        if len(parts) >= 3:
            third_parent = parts[-3]
            base_name = os.path.splitext(os.path.basename(path))[0]
            layer.setName(f"{third_parent}_{base_name}")

        layer.triggerRepaint()
        iface.layerTreeView().refreshLayerSymbology(layer.id())


QgsProject.instance().layersAdded.connect(apply_stl_vector_naming_and_group)
