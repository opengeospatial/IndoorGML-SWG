CREATE TABLE "DualSpaceLayer"
(
    "creationDate" timestamp without time zone NULL,
    "terminationDate" timestamp without time zone NULL,
    "isLogical" boolean NOT NULL,
    "isDirected" boolean NOT NULL,
    "DualSpaceLayerID" varchar(100) NOT NULL,
    "ThematicLayerID" varchar(100) NOT NULL,
    CONSTRAINT "PK_DualSpaceLayer" PRIMARY KEY ("DualSpaceLayerID"),
    CONSTRAINT "FK_DualSpaceLayer_dualSpace"
        FOREIGN KEY ("ThematicLayerID") REFERENCES "ThematicLayer" ("ThematicLayerID")
);
