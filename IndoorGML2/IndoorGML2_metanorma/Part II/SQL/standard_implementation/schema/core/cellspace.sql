CREATE TABLE "CellSpace"
(
    "cellSpaceGeom_geometry2D" geometry NULL,
    "cellSpaceGeom_geometry3D" geometry NULL,
    "CellSpaceName" varchar(100) NULL,
    "externalReference" "ExternalReferenceType" NULL,
    "Level" varchar(100) NULL,
    "Poi" boolean NULL,
    "CellSpaceID" varchar(100) NOT NULL,
    "PrimalSpaceLayerID" varchar(100) NOT NULL,
    "duality" varchar(100) NULL,
    CONSTRAINT "PK_CellSpace" PRIMARY KEY ("CellSpaceID"),
    CONSTRAINT "chk_CellSpace_geom_xor" CHECK (
        NOT ("cellSpaceGeom_geometry2D" IS NOT NULL AND "cellSpaceGeom_geometry3D" IS NOT NULL)
    ),
    CONSTRAINT "FK_CellSpace_cellSpaceMember"
        FOREIGN KEY ("PrimalSpaceLayerID") REFERENCES "PrimalSpaceLayer" ("PrimalSpaceLayerID")
);
