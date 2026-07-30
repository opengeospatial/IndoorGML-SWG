/* UML DataType ExternalObjectReferenceType / ExternalReferenceType
   Encoded as PostgreSQL composite types (not tables).
   Apply before creating CellSpace / CellBoundary. */

CREATE TYPE "ExternalObjectReferenceType" AS (
    "Name" varchar(100),
    "Uri" text
);

CREATE TYPE "ExternalReferenceType" AS (
    "ExternalObject" "ExternalObjectReferenceType",
    "InformationSystem" text
);
