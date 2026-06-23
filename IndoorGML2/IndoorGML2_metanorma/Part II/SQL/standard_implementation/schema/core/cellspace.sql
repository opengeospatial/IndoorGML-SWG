CREATE TABLE "Cellspace"
(
    "Cellspacegeom" geometry NULL,
    "Cellspacename" varchar(100) NULL,
    "Externalreference" varchar(100) NULL,
    "Level" varchar(100) NULL,
    "Poi" boolean NULL,
    "CellspaceID" varchar(100) NOT NULL,
    "PrimalspacelayerID" varchar(100) NOT NULL,
    "duality" varchar(100) NULL,
    CONSTRAINT "PK_Cellspace" PRIMARY KEY ("CellspaceID"),
    CONSTRAINT "FK_CellSpace_cellSpaceMember"
        FOREIGN KEY ("PrimalspacelayerID") REFERENCES "Primalspacelayer" ("PrimalspacelayerID")
);
