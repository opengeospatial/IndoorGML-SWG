CREATE TABLE "NonNavigableSpace"
(
    "NonNavigableSpaceID" varchar(100) NOT NULL,
    CONSTRAINT "PK_NonNavigableSpace" PRIMARY KEY ("NonNavigableSpaceID"),
    CONSTRAINT "FK_NonNavigableSpace_CellSpace"
        FOREIGN KEY ("NonNavigableSpaceID") REFERENCES "CellSpace" ("CellSpaceID")
);
