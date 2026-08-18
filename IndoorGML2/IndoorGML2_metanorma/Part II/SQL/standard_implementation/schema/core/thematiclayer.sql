CREATE TABLE "ThematicLayer"
(
    "semanticExtension" boolean NOT NULL,
    "theme" "ThemeLayerValue" NOT NULL,
    "ThematicLayerID" varchar(100) NOT NULL,
    "IndoorFeaturesID" varchar(100) NOT NULL,
    CONSTRAINT "PK_ThematicLayer" PRIMARY KEY ("ThematicLayerID"),
    CONSTRAINT "FK_ThematicLayer_layers"
        FOREIGN KEY ("IndoorFeaturesID") REFERENCES "IndoorFeatures" ("IndoorFeaturesID")
);

COMMENT ON TABLE "ThematicLayer"
    IS 'A layer of specific theme aggregating a primal and/or a dual space of a given environment.';

COMMENT ON COLUMN "ThematicLayer"."semanticExtension"
    IS 'Indicates whether semantic information is associated (true) or not (false) to the primal space of the thematic layer.';

COMMENT ON COLUMN "ThematicLayer"."theme"
    IS 'Determines the theme of the layer (e.g topographic, logical, etc.).';
