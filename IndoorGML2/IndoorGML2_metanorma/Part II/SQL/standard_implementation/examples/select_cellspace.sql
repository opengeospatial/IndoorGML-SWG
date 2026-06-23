SELECT
    "CellspaceID"    AS id,
    'CellSpace'      AS "featureType",
    "Poi"            AS poi,
    "Cellspacegeom"  AS "cellSpaceGeom",
    "Cellspacename"  AS name,
    "duality"        AS duality,
    "Level"          AS level
FROM "Cellspace"
ORDER BY "CellspaceID";
