CREATE TABLE "CellSpace"
(
    "cellSpaceGeom_Geometry2D" geometry NULL,
    "cellSpaceGeom_Geometry3D" geometry NULL,
    "cellSpaceName" varchar(100) NULL,
    "externalReference" "ExternalReferenceType" NULL,
    "level" varchar(100) NULL,
    "PoI" boolean NOT NULL,
    "CellSpaceID" varchar(100) NOT NULL,
    "PrimalSpaceLayerID" varchar(100) NOT NULL,
    "duality" varchar(100) NOT NULL,
    CONSTRAINT "PK_CellSpace" PRIMARY KEY ("CellSpaceID"),
    CONSTRAINT "chk_CellSpace_geom_xor" CHECK (
        NOT ("cellSpaceGeom_Geometry2D" IS NOT NULL AND "cellSpaceGeom_Geometry3D" IS NOT NULL)
    ),
    CONSTRAINT "chk_CellSpace_geom2d_surface" CHECK (
        "cellSpaceGeom_Geometry2D" IS NULL
        OR GeometryType("cellSpaceGeom_Geometry2D") IN ('POLYGON', 'MULTIPOLYGON')
    ),
    CONSTRAINT "chk_CellSpace_geom3d_solid" CHECK (
        "cellSpaceGeom_Geometry3D" IS NULL
        OR GeometryType("cellSpaceGeom_Geometry3D") IN ('POLYHEDRALSURFACE', 'TIN')
    ),
    CONSTRAINT "FK_CellSpace_cellSpaceMember"
        FOREIGN KEY ("PrimalSpaceLayerID") REFERENCES "PrimalSpaceLayer" ("PrimalSpaceLayerID")
);
