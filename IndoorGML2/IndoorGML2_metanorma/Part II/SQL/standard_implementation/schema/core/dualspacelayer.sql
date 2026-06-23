CREATE TABLE "Dualspacelayer"
(
    "Creationdate" timestamp without time zone NULL,
    "Terminationdate" timestamp without time zone NULL,
    "Islogical" boolean NULL,
    "Isdirected" boolean NULL,
    "DualspacelayerID" varchar(100) NOT NULL,
    "ThematiclayerID" varchar(100) NULL,
    CONSTRAINT "PK_Dualspacelayer" PRIMARY KEY ("DualspacelayerID"),
    CONSTRAINT "FK_DualSpaceLayer_dualSpace"
        FOREIGN KEY ("ThematiclayerID") REFERENCES "Thematiclayer" ("ThematiclayerID")
);
