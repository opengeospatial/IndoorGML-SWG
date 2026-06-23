CREATE TABLE "Edge"
(
    "Geometry" geometry NULL,
    "Weight" real NULL,
    "EdgeID" varchar(100) NOT NULL,
    "duality" varchar(100) NULL,
    "DualspacelayerID" varchar(100) NULL,
    connects jsonb NULL,
    CONSTRAINT "PK_Edge" PRIMARY KEY ("EdgeID"),
    CONSTRAINT "FK_Edge_duality"
        FOREIGN KEY ("duality") REFERENCES "Cellboundary" ("CellboundaryID"),
    CONSTRAINT "FK_Edge_Dualspacelayer"
        FOREIGN KEY ("DualspacelayerID") REFERENCES "Dualspacelayer" ("DualspacelayerID")
);
