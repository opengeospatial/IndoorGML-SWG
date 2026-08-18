CREATE TABLE "ObjectSpace"
(
    "description" text NULL,
    "containedFeatures" integer NULL,
    "ObjectSpaceID" varchar(100) NOT NULL,
    CONSTRAINT "PK_ObjectSpace" PRIMARY KEY ("ObjectSpaceID"),
    CONSTRAINT "FK_ObjectSpace_NonNavigableSpace"
        FOREIGN KEY ("ObjectSpaceID") REFERENCES "NonNavigableSpace" ("NonNavigableSpaceID")
);
