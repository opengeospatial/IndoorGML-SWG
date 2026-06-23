CREATE TABLE "InterLayerConnection_ThematicLayer"
(
    "connectedLayers" varchar(100) NULL,
    "InterlayerconnectionID" varchar(100) NULL,
    CONSTRAINT "FK_InterLayerConnection_ThematicLayer_connectedLayers"
        FOREIGN KEY ("connectedLayers") REFERENCES "Thematiclayer" ("ThematiclayerID"),
    CONSTRAINT "FK_InterLayerConnection_ThematicLayer_InterLayerConnection"
        FOREIGN KEY ("InterlayerconnectionID") REFERENCES "Interlayerconnection" ("InterlayerconnectionID")
);
