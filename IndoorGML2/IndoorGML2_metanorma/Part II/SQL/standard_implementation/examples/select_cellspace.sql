SELECT
    "CellSpaceID"                 AS id,
    'CellSpace'                   AS "featureType",
    "Poi"                         AS poi,
    "cellSpaceGeom_geometry2D"    AS "geometry2D",
    "cellSpaceGeom_geometry3D"    AS "geometry3D",
    "CellSpaceName"               AS name,
    "duality"                     AS duality,
    "Level"                       AS level,
    "externalReference"           AS "externalReference"
FROM "CellSpace"
ORDER BY "CellSpaceID";
