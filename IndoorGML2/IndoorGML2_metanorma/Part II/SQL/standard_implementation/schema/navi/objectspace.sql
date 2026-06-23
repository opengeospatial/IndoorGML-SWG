CREATE TABLE "Objectspace"
(
    "Description" text NULL,
    "Containedfeatures" varchar(100) NULL,
    "ObjectspaceID" varchar(100) NOT NULL,
    CONSTRAINT "PK_Objectspace" PRIMARY KEY ("ObjectspaceID"),
    CONSTRAINT "FK_ObjectSpace_NonNavigableSpace"
        FOREIGN KEY ("ObjectspaceID") REFERENCES "Nonnavigablespace" ("NonnavigablespaceID")
);
