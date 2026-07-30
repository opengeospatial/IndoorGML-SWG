CREATE TABLE "Edge"
(
    "Geometry" geometry NULL,
    "Weight" real NULL,
    "EdgeID" varchar(100) NOT NULL,
    "duality" varchar(100) NULL,
    "DualSpaceLayerID" varchar(100) NULL,
    connects jsonb NULL,
    CONSTRAINT "PK_Edge" PRIMARY KEY ("EdgeID"),
    CONSTRAINT "FK_Edge_duality"
        FOREIGN KEY ("duality") REFERENCES "CellBoundary" ("CellBoundaryID"),
    CONSTRAINT "FK_Edge_DualSpaceLayer"
        FOREIGN KEY ("DualSpaceLayerID") REFERENCES "DualSpaceLayer" ("DualSpaceLayerID")
);
