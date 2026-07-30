CREATE TABLE "ObjectSpace"
(
    "Description" text NULL,
    "Containedfeatures" varchar(100) NULL,
    "ObjectSpaceID" varchar(100) NOT NULL,
    CONSTRAINT "PK_ObjectSpace" PRIMARY KEY ("ObjectSpaceID"),
    CONSTRAINT "FK_ObjectSpace_NonNavigableSpace"
        FOREIGN KEY ("ObjectSpaceID") REFERENCES "NonNavigableSpace" ("NonNavigableSpaceID")
);
