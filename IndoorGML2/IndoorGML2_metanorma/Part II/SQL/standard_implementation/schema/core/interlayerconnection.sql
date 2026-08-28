CREATE TABLE "InterLayerConnection"
(
    "typeOfTopoExpression" "TopoExpressionValue" NOT NULL,
    "comment" text NULL,
    "InterLayerConnectionID" varchar(100) NOT NULL,
    "IndoorFeaturesID" varchar(100) NULL,
    "connectedLayers_1" varchar(100) NOT NULL,
    "connectedLayers_2" varchar(100) NOT NULL,
    "connectedNodes_1" varchar(100) NULL,
    "connectedNodes_2" varchar(100) NULL,
    "connectedCells_1" varchar(100) NULL,
    "connectedCells_2" varchar(100) NULL,
    CONSTRAINT "PK_InterLayerConnection" PRIMARY KEY ("InterLayerConnectionID"),
    CONSTRAINT "FK_InterLayerConnection_layerConnections"
        FOREIGN KEY ("IndoorFeaturesID") REFERENCES "IndoorFeatures" ("IndoorFeaturesID"),
    CONSTRAINT "FK_InterLayerConnection_connectedLayers_1"
        FOREIGN KEY ("connectedLayers_1") REFERENCES "ThematicLayer" ("ThematicLayerID"),
    CONSTRAINT "FK_InterLayerConnection_connectedLayers_2"
        FOREIGN KEY ("connectedLayers_2") REFERENCES "ThematicLayer" ("ThematicLayerID"),
    CONSTRAINT "FK_InterLayerConnection_connectedNodes_1"
        FOREIGN KEY ("connectedNodes_1") REFERENCES "Node" ("NodeID"),
    CONSTRAINT "FK_InterLayerConnection_connectedNodes_2"
        FOREIGN KEY ("connectedNodes_2") REFERENCES "Node" ("NodeID"),
    CONSTRAINT "FK_InterLayerConnection_connectedCells_1"
        FOREIGN KEY ("connectedCells_1") REFERENCES "CellSpace" ("CellSpaceID"),
    CONSTRAINT "FK_InterLayerConnection_connectedCells_2"
        FOREIGN KEY ("connectedCells_2") REFERENCES "CellSpace" ("CellSpaceID"),
    CONSTRAINT "chk_InterLayerConnection_connectedNodes_pair" CHECK (
        ("connectedNodes_1" IS NULL AND "connectedNodes_2" IS NULL)
        OR ("connectedNodes_1" IS NOT NULL AND "connectedNodes_2" IS NOT NULL)
    ),
    CONSTRAINT "chk_InterLayerConnection_connectedCells_pair" CHECK (
        ("connectedCells_1" IS NULL AND "connectedCells_2" IS NULL)
        OR ("connectedCells_1" IS NOT NULL AND "connectedCells_2" IS NOT NULL)
    )
);

COMMENT ON TABLE "InterLayerConnection"
    IS 'Describes the connection between two thematic layers. ';

COMMENT ON COLUMN "InterLayerConnection"."typeOfTopoExpression"
    IS 'Describes the topological relationship between two layers (e.g. overlaps, contains, etc.).';
