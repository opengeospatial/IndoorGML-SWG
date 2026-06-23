CREATE TABLE "InterLayerConnection_CellSpace"
(
    "connectedCells" varchar(100) NULL,
    "InterlayerconnectionID" varchar(100) NULL,
    CONSTRAINT "FK_InterLayerConnection_CellSpace_connectedCells"
        FOREIGN KEY ("connectedCells") REFERENCES "Cellspace" ("CellspaceID"),
    CONSTRAINT "FK_InterLayerConnection_CellSpace_InterLayerConnection"
        FOREIGN KEY ("InterlayerconnectionID") REFERENCES "Interlayerconnection" ("InterlayerconnectionID")
);
