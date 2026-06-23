CREATE TABLE "InterLayerConnection_Node"
(
    "connectedNodes" varchar(100) NULL,
    "InterlayerconnectionID" varchar(100) NULL,
    CONSTRAINT "FK_InterLayerConnection_Node_connectedNodes"
        FOREIGN KEY ("connectedNodes") REFERENCES "Node" ("NodeID"),
    CONSTRAINT "FK_InterLayerConnection_Node_InterLayerConnection"
        FOREIGN KEY ("InterlayerconnectionID") REFERENCES "Interlayerconnection" ("InterlayerconnectionID")
);
