CREATE TYPE "ThemeLayerValue" AS ENUM (
    'Virtual',
    'Physical',
    'Tags',
    'Unknown'
);

CREATE TYPE "TopoExpressionValue" AS ENUM (
    'Contains',
    'Overlaps',
    'Equals',
    'Within',
    'Crosses',
    'Other'
);
