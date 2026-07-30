/* ---------------------------------------------------- */
/*  IndoorGML Navigation Schema Extension               */
/*  Apply AFTER IndoorGML_core.sql on the same database */
/* ---------------------------------------------------- */

/* Drop Navigation Tables */

DROP TABLE IF EXISTS "TransferSpace" CASCADE
;

DROP TABLE IF EXISTS "GeneralSpace" CASCADE
;

DROP TABLE IF EXISTS "ObjectSpace" CASCADE
;

DROP TABLE IF EXISTS "NonNavigableSpace" CASCADE
;

DROP TABLE IF EXISTS "NavigableBoundary" CASCADE
;

DROP TABLE IF EXISTS "NonNavigableBoundary" CASCADE
;

DROP TABLE IF EXISTS "NavigableSpace" CASCADE
;

DROP TABLE IF EXISTS "Route" CASCADE
;

DROP TABLE IF EXISTS "GeneralSpaceFunctionType" CASCADE
;

DROP TABLE IF EXISTS "LocomotionAccessType" CASCADE
;

DROP TABLE IF EXISTS "NavigableBoundaryFunctionType" CASCADE
;

DROP TABLE IF EXISTS "NetworkType" CASCADE
;

DROP TABLE IF EXISTS "TransferSpaceFunctionType" CASCADE
;

DROP TABLE IF EXISTS "TransferSpaceType" CASCADE
;

/* Drop ENUM Types */

DROP TYPE IF EXISTS "NavigableBoundaryFunctionType" CASCADE
;

DROP TYPE IF EXISTS "GeneralSpaceFunctionType" CASCADE
;

DROP TYPE IF EXISTS "LocomotionAccessType" CASCADE
;

DROP TYPE IF EXISTS "TransferSpaceCategoryType" CASCADE
;

DROP TYPE IF EXISTS "TransferSpaceFunctionType" CASCADE
;

/* Create ENUM Types */

CREATE TYPE "GeneralSpaceFunctionType" AS ENUM (
	'Administration',
	'Business, trade',
	'Education, training',
	'Recreation',
	'Laboratory',
	'Storage',
	'Security'
)
;

CREATE TYPE "LocomotionAccessType" AS ENUM (
	'Walking',
	'Flying',
	'Rolling',
	'Unspecified'
)
;

CREATE TYPE "NavigableBoundaryFunctionType" AS ENUM (
	'AnchorBoundary',
	'ConnectionBoundary'
)
;

CREATE TYPE "TransferSpaceFunctionType" AS ENUM (
	'ConnectionSpace',
	'AnchorSpace'
)
;

CREATE TYPE "TransferSpaceCategoryType" AS ENUM (
	'Door',
	'Window'
)
;

/* Create Navigation Tables */

CREATE TABLE "NavigableSpace"
(
	"Locomotiontype" "LocomotionAccessType" NULL,
	"NavigableSpaceID" varchar(100) NOT NULL
)
;

CREATE TABLE "NonNavigableSpace"
(
	"NonNavigableSpaceID" varchar(100) NOT NULL
)
;

CREATE TABLE "GeneralSpace"
(
	"Function" "GeneralSpaceFunctionType" NULL,
	"GeneralSpaceID" varchar(100) NOT NULL
)
;

CREATE TABLE "TransferSpace"
(
	"Function" "TransferSpaceFunctionType" NULL,
	"Type" "TransferSpaceCategoryType" NULL,
	"TransferSpaceID" varchar(100) NOT NULL
)
;

CREATE TABLE "ObjectSpace"
(
	"Description" text NULL,
	"Containedfeatures" varchar(100) NULL,
	"ObjectSpaceID" varchar(100) NOT NULL
)
;

CREATE TABLE "NavigableBoundary"
(
	"NavigableBoundaryFunction" "NavigableBoundaryFunctionType" NULL,
	"Boundaryorientation" boolean NULL,
	"NavigableBoundaryID" varchar(100) NOT NULL
)
;

CREATE TABLE "NonNavigableBoundary"
(
	"NonNavigableBoundaryID" varchar(100) NOT NULL
)
;

CREATE TABLE "Route"
(
	"Creationdate" timestamp without time zone NULL,
	"RouteID" varchar(100) NOT NULL,
	"routeNode" jsonb NULL,
	"routeEdge" jsonb NULL
)
;

/* Primary Keys */

ALTER TABLE "NavigableSpace" ADD CONSTRAINT "PK_NavigableSpace"
	PRIMARY KEY ("NavigableSpaceID")
;

ALTER TABLE "NonNavigableSpace" ADD CONSTRAINT "PK_NonNavigableSpace"
	PRIMARY KEY ("NonNavigableSpaceID")
;

ALTER TABLE "GeneralSpace" ADD CONSTRAINT "PK_GeneralSpace"
	PRIMARY KEY ("GeneralSpaceID")
;

ALTER TABLE "TransferSpace" ADD CONSTRAINT "PK_TransferSpace"
	PRIMARY KEY ("TransferSpaceID")
;

ALTER TABLE "ObjectSpace" ADD CONSTRAINT "PK_ObjectSpace"
	PRIMARY KEY ("ObjectSpaceID")
;

ALTER TABLE "NavigableBoundary" ADD CONSTRAINT "PK_NavigableBoundary"
	PRIMARY KEY ("NavigableBoundaryID")
;

ALTER TABLE "NonNavigableBoundary" ADD CONSTRAINT "PK_NonNavigableBoundary"
	PRIMARY KEY ("NonNavigableBoundaryID")
;

ALTER TABLE "Route" ADD CONSTRAINT "PK_Route"
	PRIMARY KEY ("RouteID")
;

/* Foreign Keys */

ALTER TABLE "NavigableSpace" ADD CONSTRAINT "FK_NavigableSpace_CellSpace"
	FOREIGN KEY ("NavigableSpaceID") REFERENCES "CellSpace" ("CellSpaceID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "NonNavigableSpace" ADD CONSTRAINT "FK_NonNavigableSpace_CellSpace"
	FOREIGN KEY ("NonNavigableSpaceID") REFERENCES "CellSpace" ("CellSpaceID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "GeneralSpace" ADD CONSTRAINT "FK_GeneralSpace_NavigableSpace"
	FOREIGN KEY ("GeneralSpaceID") REFERENCES "NavigableSpace" ("NavigableSpaceID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "TransferSpace" ADD CONSTRAINT "FK_TransferSpace_NavigableSpace"
	FOREIGN KEY ("TransferSpaceID") REFERENCES "NavigableSpace" ("NavigableSpaceID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "ObjectSpace" ADD CONSTRAINT "FK_ObjectSpace_NonNavigableSpace"
	FOREIGN KEY ("ObjectSpaceID") REFERENCES "NonNavigableSpace" ("NonNavigableSpaceID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "NavigableBoundary" ADD CONSTRAINT "FK_NavigableBoundary_CellBoundary"
	FOREIGN KEY ("NavigableBoundaryID") REFERENCES "CellBoundary" ("CellBoundaryID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "NonNavigableBoundary" ADD CONSTRAINT "FK_NonNavigableBoundary_CellBoundary"
	FOREIGN KEY ("NonNavigableBoundaryID") REFERENCES "CellBoundary" ("CellBoundaryID") ON DELETE No Action ON UPDATE No Action
;
