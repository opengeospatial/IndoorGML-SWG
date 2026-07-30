CREATE TABLE "InterLayerConnection_Node"
(
    "connectedNodes" varchar(100) NULL,
    "InterLayerConnectionID" varchar(100) NULL,
    CONSTRAINT "FK_InterLayerConnection_Node_connectedNodes"
        FOREIGN KEY ("connectedNodes") REFERENCES "Node" ("NodeID"),
    CONSTRAINT "FK_InterLayerConnection_Node_InterLayerConnection"
        FOREIGN KEY ("InterLayerConnectionID") REFERENCES "InterLayerConnection" ("InterLayerConnectionID")
);
