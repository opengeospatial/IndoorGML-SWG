CREATE EXTENSION IF NOT EXISTS postgis;

INSERT INTO "IndoorFeatures" ("IndoorFeaturesID", "layers")
VALUES ('IF-1', 'TL-1');

INSERT INTO "ThematicLayer" (
    "ThematicLayerID", "IndoorFeaturesID", "semanticExtension", "theme"
) VALUES ('TL-1', 'IF-1', false, 'Physical');

INSERT INTO "PrimalSpaceLayer" ("PrimalSpaceLayerID", "ThematicLayerID", "creationDate")
VALUES ('PS-1', 'TL-1', '2025-10-30 13:00:00');

INSERT INTO "DualSpaceLayer" (
    "DualSpaceLayerID", "ThematicLayerID", "creationDate", "isLogical", "isDirected"
) VALUES ('DS-1', 'TL-1', '2025-10-30 13:00:00', false, false);

INSERT INTO "CellSpace" (
    "CellSpaceID", "PrimalSpaceLayerID", "level", "PoI", "cellSpaceGeom_Geometry2D"
) VALUES (
    'C1', 'PS-1', '1', false,
    ST_SetSRID(ST_GeomFromGeoJSON('{"type":"Polygon","coordinates":[[[0,0],[2,0],[2,2],[0,2],[0,0]]]}'), 0)
);

INSERT INTO "CellSpace" (
    "CellSpaceID", "PrimalSpaceLayerID", "level", "PoI", "cellSpaceGeom_Geometry2D"
) VALUES (
    'C2', 'PS-1', '1', false,
    ST_SetSRID(ST_GeomFromGeoJSON('{"type":"Polygon","coordinates":[[[2,0],[4,0],[4,2],[2,2],[2,0]]]}'), 0)
);

INSERT INTO "CellBoundary" (
    "CellBoundaryID", "PrimalSpaceLayerID", "isVirtual", "boundedBy", "cellBoundaryGeom_Geometry1D"
) VALUES (
    'B1', 'PS-1', false, 'C1',
    ST_SetSRID(ST_GeomFromGeoJSON('{"type":"LineString","coordinates":[[2,0],[2,2]]}'), 0)
);

INSERT INTO "Node" ("NodeID", "DualSpaceLayerID", "duality", "geometry", connects)
VALUES (
    'N1', 'DS-1', 'C1',
    ST_SetSRID(ST_GeomFromGeoJSON('{"type":"Point","coordinates":[1,1]}'), 0),
    '["E1"]'::jsonb
);

INSERT INTO "Node" ("NodeID", "DualSpaceLayerID", "duality", "geometry", connects)
VALUES (
    'N2', 'DS-1', 'C2',
    ST_SetSRID(ST_GeomFromGeoJSON('{"type":"Point","coordinates":[3,1]}'), 0),
    '["E1"]'::jsonb
);

UPDATE "CellSpace" SET "duality" = 'N1' WHERE "CellSpaceID" = 'C1';
UPDATE "CellSpace" SET "duality" = 'N2' WHERE "CellSpaceID" = 'C2';

INSERT INTO "Edge" ("EdgeID", "DualSpaceLayerID", "duality", "weight", "geometry", connects_node1, connects_node2)
VALUES (
    'E1', 'DS-1', 'B1', 1.0,
    ST_SetSRID(ST_GeomFromGeoJSON('{"type":"LineString","coordinates":[[1,1],[3,1]]}'), 0),
    'N1', 'N2'
);
