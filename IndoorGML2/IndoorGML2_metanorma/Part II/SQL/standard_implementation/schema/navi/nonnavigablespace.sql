CREATE TABLE "Nonnavigablespace"
(
    "NonnavigablespaceID" varchar(100) NOT NULL,
    CONSTRAINT "PK_Nonnavigablespace" PRIMARY KEY ("NonnavigablespaceID"),
    CONSTRAINT "FK_NonNavigableSpace_CellSpace"
        FOREIGN KEY ("NonnavigablespaceID") REFERENCES "Cellspace" ("CellspaceID")
);
