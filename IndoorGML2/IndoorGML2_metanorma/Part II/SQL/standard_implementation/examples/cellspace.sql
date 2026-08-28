INSERT INTO "CellSpace" (
    "CellSpaceID", "PrimalSpaceLayerID", "level", "PoI",
    "cellSpaceGeom_Geometry2D", "duality"
) VALUES (
    'R1', 'PS-1', '1', false,
    ST_SetSRID(ST_GeomFromGeoJSON(
        '{"type":"Polygon","coordinates":[[[0,0.25],[3.25,0.25],[3.25,1.5],[0,1.5],[0,0.25]]]}'
    ), 0),
    'N-R1'
);

-- CellBoundary rows B1, B2, B7, and B8 reference this cell space through boundedBy.
