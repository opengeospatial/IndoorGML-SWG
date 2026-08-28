INSERT INTO "Node" ("NodeID", "DualSpaceLayerID", "duality", "geometry", connects)
VALUES (
    'N-R1', 'DS-1', 'R1',
    ST_SetSRID(ST_GeomFromGeoJSON('{"type":"Point","coordinates":[1.625,0.875]}'), 0),
    '["E1","E2","E7","E8"]'::jsonb
);
