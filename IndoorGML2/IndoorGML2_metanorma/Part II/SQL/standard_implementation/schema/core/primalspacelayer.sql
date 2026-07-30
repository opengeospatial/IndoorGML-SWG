CREATE TABLE "PrimalSpaceLayer"
(
    "Creationdate" timestamp without time zone NULL,
    "Terminationdate" timestamp without time zone NULL,
    "PrimalSpaceLayerID" varchar(100) NOT NULL,
    "ThematicLayerID" varchar(100) NULL,
    CONSTRAINT "PK_PrimalSpaceLayer" PRIMARY KEY ("PrimalSpaceLayerID"),
    CONSTRAINT "FK_PrimalSpaceLayer_primalSpace"
        FOREIGN KEY ("ThematicLayerID") REFERENCES "ThematicLayer" ("ThematicLayerID")
);
