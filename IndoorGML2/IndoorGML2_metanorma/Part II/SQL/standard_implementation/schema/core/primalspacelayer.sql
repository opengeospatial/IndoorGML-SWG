CREATE TABLE "Primalspacelayer"
(
    "Creationdate" timestamp without time zone NULL,
    "Terminationdate" timestamp without time zone NULL,
    "PrimalspacelayerID" varchar(100) NOT NULL,
    "ThematiclayerID" varchar(100) NULL,
    CONSTRAINT "PK_Primalspacelayer" PRIMARY KEY ("PrimalspacelayerID"),
    CONSTRAINT "FK_PrimalSpaceLayer_primalSpace"
        FOREIGN KEY ("ThematiclayerID") REFERENCES "Thematiclayer" ("ThematiclayerID")
);
