CREATE TABLE "Node"
(
    "Geometry" geometry NULL,
    "NodeID" varchar(100) NOT NULL,
    "duality" varchar(100) NULL,
    "DualSpaceLayerID" varchar(100) NOT NULL,
    connects jsonb NULL,
    CONSTRAINT "PK_Node" PRIMARY KEY ("NodeID"),
    CONSTRAINT "FK_Node_duality"
        FOREIGN KEY ("duality") REFERENCES "CellSpace" ("CellSpaceID"),
    CONSTRAINT "FK_Node_DualSpaceLayer"
        FOREIGN KEY ("DualSpaceLayerID") REFERENCES "DualSpaceLayer" ("DualSpaceLayerID")
);

ALTER TABLE "CellSpace" ADD CONSTRAINT "FK_CellSpace_duality"
    FOREIGN KEY ("duality") REFERENCES "Node" ("NodeID");
