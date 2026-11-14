SELECT
    n."NodeID" AS id,
    'Node' AS "featureType",
    n."geometry" AS geometry,
    n."duality" AS duality,
    n.connects AS connects
FROM "Node" n
ORDER BY n."NodeID";
