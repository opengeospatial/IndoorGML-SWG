/* UML DataType ExternalObjectReferenceType / ExternalReferenceType
   Encoded as PostgreSQL composite types (not tables).
   Apply before creating CellSpace / CellBoundary. */

CREATE TYPE "ExternalObjectReferenceType" AS (
    "name" varchar(100),
    "uri" text
);

CREATE TYPE "ExternalReferenceType" AS (
    "externalObject" "ExternalObjectReferenceType",
    "informationSystem" text
);
