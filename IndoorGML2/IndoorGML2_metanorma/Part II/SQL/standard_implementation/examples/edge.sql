INSERT INTO "Edge" (
    "EdgeID", "DualSpaceLayerID", "duality", "weight", "geometry",
    "connects_node1", "connects_node2"
) VALUES (
    'E1', 'DS-1', 'B1', 1.0,
    ST_SetSRID(ST_GeomFromGeoJSON(
        '{"type":"LineString","coordinates":[[0.75,0.125],[0.75,0.875],[1.625,0.875]]}'
    ), 0),
    'N-D1', 'N-R1'
);
