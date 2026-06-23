CREATE TABLE "Cellboundary"
(
    "Cellboundarygeom" geometry NULL,
    "Externalreference" varchar(100) NULL,
    "Isvirtual" boolean NULL,
    "CellboundaryID" varchar(100) NOT NULL,
    bounds varchar(100) NULL,
    "PrimalspacelayerID" varchar(100) NULL,
    CONSTRAINT "PK_Cellboundary" PRIMARY KEY ("CellboundaryID"),
    CONSTRAINT "FK_CellBoundary_boundedBy"
        FOREIGN KEY (bounds) REFERENCES "Cellspace" ("CellspaceID"),
    CONSTRAINT "FK_CellBoundary_cellBoundaryMember"
        FOREIGN KEY ("PrimalspacelayerID") REFERENCES "Primalspacelayer" ("PrimalspacelayerID")
);
