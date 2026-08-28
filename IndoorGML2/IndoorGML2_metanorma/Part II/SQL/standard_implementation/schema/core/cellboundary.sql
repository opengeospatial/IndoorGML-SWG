CREATE TABLE "CellBoundary"
(
    "cellBoundaryGeom_Geometry1D" geometry NULL,
    "cellBoundaryGeom_Geometry2D" geometry NULL,
    "externalReference" "ExternalReferenceType" NULL,
    "isVirtual" boolean NOT NULL,
    "CellBoundaryID" varchar(100) NOT NULL,
    "boundedBy" varchar(100) NULL,
    "PrimalSpaceLayerID" varchar(100) NOT NULL,
    CONSTRAINT "PK_CellBoundary" PRIMARY KEY ("CellBoundaryID"),
    CONSTRAINT "chk_CellBoundary_geom1d_curve" CHECK (
        "cellBoundaryGeom_Geometry1D" IS NULL
        OR GeometryType("cellBoundaryGeom_Geometry1D") IN ('LINESTRING', 'MULTILINESTRING')
    ),
    CONSTRAINT "chk_CellBoundary_geom2d_surface" CHECK (
        "cellBoundaryGeom_Geometry2D" IS NULL
        OR GeometryType("cellBoundaryGeom_Geometry2D") IN ('POLYGON', 'MULTIPOLYGON')
    ),
    CONSTRAINT "FK_CellBoundary_boundedBy"
        FOREIGN KEY ("boundedBy") REFERENCES "CellSpace" ("CellSpaceID"),
    CONSTRAINT "FK_CellBoundary_cellBoundaryMember"
        FOREIGN KEY ("PrimalSpaceLayerID") REFERENCES "PrimalSpaceLayer" ("PrimalSpaceLayerID")
);
