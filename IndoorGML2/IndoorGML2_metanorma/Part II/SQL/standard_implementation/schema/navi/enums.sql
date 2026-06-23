CREATE TYPE "GeneralSpaceFunctionType" AS ENUM (
    'Administration',
    'Business, trade',
    'Education, training',
    'Recreation',
    'Laboratory',
    'Storage',
    'Security'
);

CREATE TYPE "LocomotionAccessType" AS ENUM (
    'Walking',
    'Flying',
    'Rolling',
    'Unspecified'
);

CREATE TYPE "NavigableBoundaryFunctionType" AS ENUM (
    'AnchorBoundary',
    'ConnectionBoundary'
);

CREATE TYPE "TransferSpaceFunctionType" AS ENUM (
    'ConnectionSpace',
    'AnchorSpace'
);

CREATE TYPE "TransferSpaceCategoryType" AS ENUM (
    'Door',
    'Window'
);
