CREATE TABLE "GeneralSpace"
(
    "function" "GeneralSpaceFunctionType" NOT NULL,
    "GeneralSpaceID" varchar(100) NOT NULL,
    CONSTRAINT "PK_GeneralSpace" PRIMARY KEY ("GeneralSpaceID"),
    CONSTRAINT "FK_GeneralSpace_NavigableSpace"
        FOREIGN KEY ("GeneralSpaceID") REFERENCES "NavigableSpace" ("NavigableSpaceID")
);
