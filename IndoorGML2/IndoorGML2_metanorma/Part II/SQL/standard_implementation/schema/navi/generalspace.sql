CREATE TABLE "Generalspace"
(
    "Function" "GeneralSpaceFunctionType" NULL,
    "GeneralspaceID" varchar(100) NOT NULL,
    CONSTRAINT "PK_Generalspace" PRIMARY KEY ("GeneralspaceID"),
    CONSTRAINT "FK_GeneralSpace_NavigableSpace"
        FOREIGN KEY ("GeneralspaceID") REFERENCES "Navigablespace" ("NavigablespaceID")
);
