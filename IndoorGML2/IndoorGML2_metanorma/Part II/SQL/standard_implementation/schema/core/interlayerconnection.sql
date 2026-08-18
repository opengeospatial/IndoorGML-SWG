CREATE TABLE "InterLayerConnection"
(
    "typeOfTopoExpression" "TopoExpressionValue" NOT NULL,
    "comment" text NULL,
    "InterLayerConnectionID" varchar(100) NOT NULL,
    "IndoorFeaturesID" varchar(100) NULL,
    CONSTRAINT "PK_InterLayerConnection" PRIMARY KEY ("InterLayerConnectionID"),
    CONSTRAINT "FK_InterLayerConnection_layerConnections"
        FOREIGN KEY ("IndoorFeaturesID") REFERENCES "IndoorFeatures" ("IndoorFeaturesID")
);

COMMENT ON TABLE "InterLayerConnection"
    IS 'Describes the connection between two thematic layers. ';

COMMENT ON COLUMN "InterLayerConnection"."typeOfTopoExpression"
    IS 'Describes the topological relationship between two layers (e.g. overlaps, contains, etc.).';
