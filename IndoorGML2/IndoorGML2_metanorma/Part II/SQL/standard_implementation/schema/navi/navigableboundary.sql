CREATE TABLE "NavigableBoundary"
(
    "NavigableBoundaryFunction" "NavigableBoundaryFunctionType" NULL,
    "Boundaryorientation" boolean NULL,
    "NavigableBoundaryID" varchar(100) NOT NULL,
    CONSTRAINT "PK_NavigableBoundary" PRIMARY KEY ("NavigableBoundaryID"),
    CONSTRAINT "FK_NavigableBoundary_CellBoundary"
        FOREIGN KEY ("NavigableBoundaryID") REFERENCES "CellBoundary" ("CellBoundaryID")
);
