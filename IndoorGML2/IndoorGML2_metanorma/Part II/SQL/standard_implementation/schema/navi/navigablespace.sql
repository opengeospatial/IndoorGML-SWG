CREATE TABLE "NavigableSpace"
(
    "locomotionType" "LocomotionAccessType" NOT NULL,
    "NavigableSpaceID" varchar(100) NOT NULL,
    CONSTRAINT "PK_NavigableSpace" PRIMARY KEY ("NavigableSpaceID"),
    CONSTRAINT "FK_NavigableSpace_CellSpace"
        FOREIGN KEY ("NavigableSpaceID") REFERENCES "CellSpace" ("CellSpaceID")
);
