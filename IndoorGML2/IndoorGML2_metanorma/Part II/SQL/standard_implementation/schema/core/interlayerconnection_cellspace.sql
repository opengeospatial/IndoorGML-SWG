CREATE TABLE "InterLayerConnection_CellSpace"
(
    "connectedCells" varchar(100) NULL,
    "InterLayerConnectionID" varchar(100) NULL,
    CONSTRAINT "FK_InterLayerConnection_CellSpace_connectedCells"
        FOREIGN KEY ("connectedCells") REFERENCES "CellSpace" ("CellSpaceID"),
    CONSTRAINT "FK_InterLayerConnection_CellSpace_InterLayerConnection"
        FOREIGN KEY ("InterLayerConnectionID") REFERENCES "InterLayerConnection" ("InterLayerConnectionID")
);
