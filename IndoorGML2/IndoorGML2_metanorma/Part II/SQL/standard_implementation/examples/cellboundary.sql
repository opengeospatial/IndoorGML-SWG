INSERT INTO "CellBoundary" (
    "CellBoundaryID", "PrimalSpaceLayerID", "isVirtual",
    "cellBoundaryGeom_Geometry1D", "boundedBy"
) VALUES (
    'B1', 'PS-1', false,
    ST_SetSRID(ST_GeomFromGeoJSON(
        '{"type":"LineString","coordinates":[[0.5,0.25],[1.0,0.25]]}'
    ), 0),
    'R1'
);

-- The dual Edge (E1) references this cell boundary through Edge.duality.
