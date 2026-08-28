INSERT INTO "InterLayerConnection" (
    "InterLayerConnectionID", "IndoorFeaturesID", "typeOfTopoExpression",
    "connectedLayers_1", "connectedLayers_2",
    "connectedCells_1", "connectedCells_2",
    "connectedNodes_1", "connectedNodes_2"
) VALUES (
    'ILC-R1-1', 'IFs', 'Contains',
    'TL-Pedestrian', 'TL-Wheelchair',
    'R1', 'R1-1',
    'N-R1', 'N-R1-1'
);
