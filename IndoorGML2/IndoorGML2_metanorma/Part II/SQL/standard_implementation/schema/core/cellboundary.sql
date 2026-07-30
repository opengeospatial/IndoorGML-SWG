CREATE TABLE "CellBoundary"
(
    "cellBoundaryGeom_geometry1D" geometry NULL,
    "cellBoundaryGeom_geometry2D" geometry NULL,
    "externalReference" "ExternalReferenceType" NULL,
    "Isvirtual" boolean NULL,
    "CellBoundaryID" varchar(100) NOT NULL,
    bounds varchar(100) NULL,
    "PrimalSpaceLayerID" varchar(100) NULL,
    CONSTRAINT "PK_CellBoundary" PRIMARY KEY ("CellBoundaryID"),
    CONSTRAINT "chk_CellBoundary_geom_xor" CHECK (
        NOT ("cellBoundaryGeom_geometry1D" IS NOT NULL AND "cellBoundaryGeom_geometry2D" IS NOT NULL)
    ),
    CONSTRAINT "FK_CellBoundary_boundedBy"
        FOREIGN KEY (bounds) REFERENCES "CellSpace" ("CellSpaceID"),
    CONSTRAINT "FK_CellBoundary_cellBoundaryMember"
        FOREIGN KEY ("PrimalSpaceLayerID") REFERENCES "PrimalSpaceLayer" ("PrimalSpaceLayerID")
);
