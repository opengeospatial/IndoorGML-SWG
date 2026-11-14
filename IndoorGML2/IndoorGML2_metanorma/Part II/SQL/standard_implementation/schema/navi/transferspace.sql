CREATE TABLE "TransferSpace"
(
    "function" "TransferSpaceFunctionType" NOT NULL,
    "category" "TransferSpaceCategoryType" NOT NULL,
    "TransferSpaceID" varchar(100) NOT NULL,
    CONSTRAINT "PK_TransferSpace" PRIMARY KEY ("TransferSpaceID"),
    CONSTRAINT "FK_TransferSpace_NavigableSpace"
        FOREIGN KEY ("TransferSpaceID") REFERENCES "NavigableSpace" ("NavigableSpaceID")
);
