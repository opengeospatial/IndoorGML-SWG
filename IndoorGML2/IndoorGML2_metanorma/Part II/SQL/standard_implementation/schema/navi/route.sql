CREATE TABLE "Route"
(
    "creationDate" timestamp without time zone NULL,
    "RouteID" varchar(100) NOT NULL,
    "routeNode" jsonb NULL,
    "routeEdge" jsonb NULL,
    CONSTRAINT "PK_Route" PRIMARY KEY ("RouteID")
);
