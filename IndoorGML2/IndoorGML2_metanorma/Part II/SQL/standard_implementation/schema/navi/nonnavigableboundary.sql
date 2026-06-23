CREATE TABLE "Nonnavigableboundary"
(
    "NonnavigableboundaryID" varchar(100) NOT NULL,
    CONSTRAINT "PK_Nonnavigableboundary" PRIMARY KEY ("NonnavigableboundaryID"),
    CONSTRAINT "FK_NonNavigableBoundary_CellBoundary"
        FOREIGN KEY ("NonnavigableboundaryID") REFERENCES "Cellboundary" ("CellboundaryID")
);
