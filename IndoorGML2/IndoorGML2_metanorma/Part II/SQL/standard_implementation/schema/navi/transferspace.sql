CREATE TABLE "TransferSpace"
(
    "Function" "TransferSpaceFunctionType" NULL,
    "Type" "TransferSpaceCategoryType" NULL,
    "TransferSpaceID" varchar(100) NOT NULL,
    CONSTRAINT "PK_TransferSpace" PRIMARY KEY ("TransferSpaceID"),
    CONSTRAINT "FK_TransferSpace_NavigableSpace"
        FOREIGN KEY ("TransferSpaceID") REFERENCES "NavigableSpace" ("NavigableSpaceID")
);
