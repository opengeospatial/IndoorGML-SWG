/* ---------------------------------------------------- */
/*  IndoorGML Navigation Schema Extension               */
/*  Apply AFTER IndoorGML_core.sql on the same database */
/* ---------------------------------------------------- */

/* Drop Navigation Tables */

DROP TABLE IF EXISTS "Transferspace" CASCADE
;

DROP TABLE IF EXISTS "Generalspace" CASCADE
;

DROP TABLE IF EXISTS "Objectspace" CASCADE
;

DROP TABLE IF EXISTS "Nonnavigablespace" CASCADE
;

DROP TABLE IF EXISTS "Navigableboundary" CASCADE
;

DROP TABLE IF EXISTS "Nonnavigableboundary" CASCADE
;

DROP TABLE IF EXISTS "Navigablespace" CASCADE
;

DROP TABLE IF EXISTS "Route" CASCADE
;

DROP TABLE IF EXISTS "Generalspacefunctiontype" CASCADE
;

DROP TABLE IF EXISTS "Locomotionaccesstype" CASCADE
;

DROP TABLE IF EXISTS "Navigableboundaryfunctiontype" CASCADE
;

DROP TABLE IF EXISTS "Networktype" CASCADE
;

DROP TABLE IF EXISTS "Transferspacefunctiontype" CASCADE
;

DROP TABLE IF EXISTS "Transferspacetype" CASCADE
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

CREATE TABLE "Navigablespace"
(
	"Locomotiontype" "LocomotionAccessType" NULL,
	"NavigablespaceID" varchar(100) NOT NULL
)
;

CREATE TABLE "Nonnavigablespace"
(
	"NonnavigablespaceID" varchar(100) NOT NULL
)
;

CREATE TABLE "Generalspace"
(
	"Function" "GeneralSpaceFunctionType" NULL,
	"GeneralspaceID" varchar(100) NOT NULL
)
;

CREATE TABLE "Transferspace"
(
	"Function" "TransferSpaceFunctionType" NULL,
	"Type" "TransferSpaceCategoryType" NULL,
	"TransferspaceID" varchar(100) NOT NULL
)
;

CREATE TABLE "Objectspace"
(
	"Description" text NULL,
	"Containedfeatures" varchar(100) NULL,
	"ObjectspaceID" varchar(100) NOT NULL
)
;

CREATE TABLE "Navigableboundary"
(
	"Navigableboundaryfunction" "NavigableBoundaryFunctionType" NULL,
	"Boundaryorientation" boolean NULL,
	"NavigableboundaryID" varchar(100) NOT NULL
)
;

CREATE TABLE "Nonnavigableboundary"
(
	"NonnavigableboundaryID" varchar(100) NOT NULL
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

ALTER TABLE "Navigablespace" ADD CONSTRAINT "PK_Navigablespace"
	PRIMARY KEY ("NavigablespaceID")
;

ALTER TABLE "Nonnavigablespace" ADD CONSTRAINT "PK_Nonnavigablespace"
	PRIMARY KEY ("NonnavigablespaceID")
;

ALTER TABLE "Generalspace" ADD CONSTRAINT "PK_Generalspace"
	PRIMARY KEY ("GeneralspaceID")
;

ALTER TABLE "Transferspace" ADD CONSTRAINT "PK_Transferspace"
	PRIMARY KEY ("TransferspaceID")
;

ALTER TABLE "Objectspace" ADD CONSTRAINT "PK_Objectspace"
	PRIMARY KEY ("ObjectspaceID")
;

ALTER TABLE "Navigableboundary" ADD CONSTRAINT "PK_Navigableboundary"
	PRIMARY KEY ("NavigableboundaryID")
;

ALTER TABLE "Nonnavigableboundary" ADD CONSTRAINT "PK_Nonnavigableboundary"
	PRIMARY KEY ("NonnavigableboundaryID")
;

ALTER TABLE "Route" ADD CONSTRAINT "PK_Route"
	PRIMARY KEY ("RouteID")
;

/* Foreign Keys */

ALTER TABLE "Navigablespace" ADD CONSTRAINT "FK_NavigableSpace_CellSpace"
	FOREIGN KEY ("NavigablespaceID") REFERENCES "Cellspace" ("CellspaceID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Nonnavigablespace" ADD CONSTRAINT "FK_NonNavigableSpace_CellSpace"
	FOREIGN KEY ("NonnavigablespaceID") REFERENCES "Cellspace" ("CellspaceID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Generalspace" ADD CONSTRAINT "FK_GeneralSpace_NavigableSpace"
	FOREIGN KEY ("GeneralspaceID") REFERENCES "Navigablespace" ("NavigablespaceID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Transferspace" ADD CONSTRAINT "FK_TransferSpace_NavigableSpace"
	FOREIGN KEY ("TransferspaceID") REFERENCES "Navigablespace" ("NavigablespaceID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Objectspace" ADD CONSTRAINT "FK_ObjectSpace_NonNavigableSpace"
	FOREIGN KEY ("ObjectspaceID") REFERENCES "Nonnavigablespace" ("NonnavigablespaceID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Navigableboundary" ADD CONSTRAINT "FK_NavigableBoundary_CellBoundary"
	FOREIGN KEY ("NavigableboundaryID") REFERENCES "Cellboundary" ("CellboundaryID") ON DELETE No Action ON UPDATE No Action
;

ALTER TABLE "Nonnavigableboundary" ADD CONSTRAINT "FK_NonNavigableBoundary_CellBoundary"
	FOREIGN KEY ("NonnavigableboundaryID") REFERENCES "Cellboundary" ("CellboundaryID") ON DELETE No Action ON UPDATE No Action
;
