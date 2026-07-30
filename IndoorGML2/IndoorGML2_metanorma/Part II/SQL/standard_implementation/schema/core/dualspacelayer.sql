CREATE TABLE "DualSpaceLayer"
(
    "Creationdate" timestamp without time zone NULL,
    "Terminationdate" timestamp without time zone NULL,
    "Islogical" boolean NULL,
    "Isdirected" boolean NULL,
    "DualSpaceLayerID" varchar(100) NOT NULL,
    "ThematicLayerID" varchar(100) NULL,
    CONSTRAINT "PK_DualSpaceLayer" PRIMARY KEY ("DualSpaceLayerID"),
    CONSTRAINT "FK_DualSpaceLayer_dualSpace"
        FOREIGN KEY ("ThematicLayerID") REFERENCES "ThematicLayer" ("ThematicLayerID")
);
