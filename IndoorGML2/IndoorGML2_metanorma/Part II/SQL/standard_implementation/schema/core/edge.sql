CREATE TABLE "Edge"
(
    "geometry" geometry NULL,
    "weight" real NOT NULL,
    "EdgeID" varchar(100) NOT NULL,
    "duality" varchar(100) NULL,
    "DualSpaceLayerID" varchar(100) NOT NULL,
    connects_node1 varchar(100) NOT NULL,
    connects_node2 varchar(100) NOT NULL,
    CONSTRAINT "PK_Edge" PRIMARY KEY ("EdgeID"),
    CONSTRAINT "chk_Edge_geometry_curve" CHECK (
        "geometry" IS NULL
        OR GeometryType("geometry") IN ('LINESTRING', 'MULTILINESTRING')
    ),
    CONSTRAINT "FK_Edge_duality"
        FOREIGN KEY ("duality") REFERENCES "CellBoundary" ("CellBoundaryID"),
    CONSTRAINT "FK_Edge_DualSpaceLayer"
        FOREIGN KEY ("DualSpaceLayerID") REFERENCES "DualSpaceLayer" ("DualSpaceLayerID"),
    CONSTRAINT "FK_Edge_connects_node1"
        FOREIGN KEY (connects_node1) REFERENCES "Node" ("NodeID"),
    CONSTRAINT "FK_Edge_connects_node2"
        FOREIGN KEY (connects_node2) REFERENCES "Node" ("NodeID")
);
