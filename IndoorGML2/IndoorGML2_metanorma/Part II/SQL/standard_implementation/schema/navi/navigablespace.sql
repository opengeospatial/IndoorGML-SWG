CREATE TABLE "Navigablespace"
(
    "Locomotiontype" "LocomotionAccessType" NULL,
    "NavigablespaceID" varchar(100) NOT NULL,
    CONSTRAINT "PK_Navigablespace" PRIMARY KEY ("NavigablespaceID"),
    CONSTRAINT "FK_NavigableSpace_CellSpace"
        FOREIGN KEY ("NavigablespaceID") REFERENCES "Cellspace" ("CellspaceID")
);
