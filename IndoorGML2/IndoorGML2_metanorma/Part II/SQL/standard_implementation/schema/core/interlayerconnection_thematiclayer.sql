CREATE TABLE "InterLayerConnection_ThematicLayer"
(
    "connectedLayers" varchar(100) NULL,
    "InterLayerConnectionID" varchar(100) NULL,
    CONSTRAINT "FK_InterLayerConnection_ThematicLayer_connectedLayers"
        FOREIGN KEY ("connectedLayers") REFERENCES "ThematicLayer" ("ThematicLayerID"),
    CONSTRAINT "FK_InterLayerConnection_ThematicLayer_InterLayerConnection"
        FOREIGN KEY ("InterLayerConnectionID") REFERENCES "InterLayerConnection" ("InterLayerConnectionID")
);
