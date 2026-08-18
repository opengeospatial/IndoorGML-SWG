SELECT
    "CellSpaceID"                 AS id,
    'CellSpace'                   AS "featureType",
    "PoI"                         AS poi,
    "cellSpaceGeom_Geometry2D"    AS "geometry2D",
    "cellSpaceGeom_Geometry3D"    AS "geometry3D",
    "cellSpaceName"               AS name,
    "duality"                     AS duality,
    "level"                       AS level,
    "externalReference"           AS "externalReference"
FROM "CellSpace"
ORDER BY "CellSpaceID";
