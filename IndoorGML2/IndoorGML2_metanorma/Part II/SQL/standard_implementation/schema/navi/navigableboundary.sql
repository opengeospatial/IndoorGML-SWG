CREATE TABLE "Navigableboundary"
(
    "Navigableboundaryfunction" "NavigableBoundaryFunctionType" NULL,
    "Boundaryorientation" boolean NULL,
    "NavigableboundaryID" varchar(100) NOT NULL,
    CONSTRAINT "PK_Navigableboundary" PRIMARY KEY ("NavigableboundaryID"),
    CONSTRAINT "FK_NavigableBoundary_CellBoundary"
        FOREIGN KEY ("NavigableboundaryID") REFERENCES "Cellboundary" ("CellboundaryID")
);
