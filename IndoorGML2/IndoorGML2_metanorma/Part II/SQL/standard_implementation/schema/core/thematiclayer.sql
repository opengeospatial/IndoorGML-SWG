CREATE TABLE "Thematiclayer"
(
    "Semanticextension" boolean NULL,
    "Theme" "ThemeLayerValue" NULL,
    "ThematiclayerID" varchar(100) NOT NULL,
    "IndoorfeaturesID" varchar(100) NOT NULL,
    CONSTRAINT "PK_Thematiclayer" PRIMARY KEY ("ThematiclayerID"),
    CONSTRAINT "FK_ThematicLayer_layers"
        FOREIGN KEY ("IndoorfeaturesID") REFERENCES "Indoorfeatures" ("IndoorfeaturesID")
);

COMMENT ON TABLE "Thematiclayer"
    IS 'A layer of specific theme aggregating a primal and/or a dual space of a given environment.';

COMMENT ON COLUMN "Thematiclayer"."Semanticextension"
    IS 'Indicates whether semantic information is associated (true) or not (false) to the primal space of the thematic layer.';

COMMENT ON COLUMN "Thematiclayer"."Theme"
    IS 'Determines the theme of the layer (e.g topographic, logical, etc.).';
