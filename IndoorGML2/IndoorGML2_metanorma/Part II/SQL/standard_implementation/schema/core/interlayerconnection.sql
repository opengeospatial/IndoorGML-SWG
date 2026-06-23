CREATE TABLE "Interlayerconnection"
(
    "Typeoftopoexpression" "TopoExpressionValue" NULL,
    "Comment" text NULL,
    "InterlayerconnectionID" varchar(100) NOT NULL,
    "IndoorfeaturesID" varchar(100) NULL,
    CONSTRAINT "PK_Interlayerconnection" PRIMARY KEY ("InterlayerconnectionID"),
    CONSTRAINT "FK_InterLayerConnection_layerConnections"
        FOREIGN KEY ("IndoorfeaturesID") REFERENCES "Indoorfeatures" ("IndoorfeaturesID")
);

COMMENT ON TABLE "Interlayerconnection"
    IS 'Describes the connection between two thematic layers. ';

COMMENT ON COLUMN "Interlayerconnection"."Typeoftopoexpression"
    IS 'Describes the topological relationship between two layers (e.g. overlaps, contains, etc.).';
