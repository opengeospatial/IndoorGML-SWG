CREATE TABLE "NonNavigableBoundary"
(
    "NonNavigableBoundaryID" varchar(100) NOT NULL,
    CONSTRAINT "PK_NonNavigableBoundary" PRIMARY KEY ("NonNavigableBoundaryID"),
    CONSTRAINT "FK_NonNavigableBoundary_CellBoundary"
        FOREIGN KEY ("NonNavigableBoundaryID") REFERENCES "CellBoundary" ("CellBoundaryID")
);
