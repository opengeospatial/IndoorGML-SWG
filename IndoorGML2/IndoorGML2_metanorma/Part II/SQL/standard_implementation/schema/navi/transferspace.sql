CREATE TABLE "Transferspace"
(
    "Function" "TransferSpaceFunctionType" NULL,
    "Type" "TransferSpaceCategoryType" NULL,
    "TransferspaceID" varchar(100) NOT NULL,
    CONSTRAINT "PK_Transferspace" PRIMARY KEY ("TransferspaceID"),
    CONSTRAINT "FK_TransferSpace_NavigableSpace"
        FOREIGN KEY ("TransferspaceID") REFERENCES "Navigablespace" ("NavigablespaceID")
);
