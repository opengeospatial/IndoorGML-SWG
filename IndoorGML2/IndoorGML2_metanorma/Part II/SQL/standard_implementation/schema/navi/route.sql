CREATE TABLE "Route"
(
    "creationDate" timestamp without time zone NULL,
    "RouteID" varchar(100) NOT NULL,
    "routeNode" jsonb NOT NULL,
    "routeEdge" jsonb NOT NULL,
    CONSTRAINT "PK_Route" PRIMARY KEY ("RouteID"),
    CONSTRAINT "chk_Route_nodes_and_edges" CHECK (
        jsonb_typeof("routeNode") = 'array'
        AND jsonb_typeof("routeEdge") = 'array'
        AND jsonb_array_length("routeNode") >= 2
        AND jsonb_array_length("routeEdge") >= 1
    )
);
