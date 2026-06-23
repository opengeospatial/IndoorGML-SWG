CREATE TABLE "Node"
(
    "Geometry" geometry NULL,
    "NodeID" varchar(100) NOT NULL,
    "duality" varchar(100) NULL,
    "DualspacelayerID" varchar(100) NOT NULL,
    connects jsonb NULL,
    CONSTRAINT "PK_Node" PRIMARY KEY ("NodeID"),
    CONSTRAINT "FK_Node_duality"
        FOREIGN KEY ("duality") REFERENCES "Cellspace" ("CellspaceID"),
    CONSTRAINT "FK_Node_Dualspacelayer"
        FOREIGN KEY ("DualspacelayerID") REFERENCES "Dualspacelayer" ("DualspacelayerID")
);

ALTER TABLE "Cellspace" ADD CONSTRAINT "FK_Cellspace_duality"
    FOREIGN KEY ("duality") REFERENCES "Node" ("NodeID");
