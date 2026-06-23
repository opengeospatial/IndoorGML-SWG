CREATE TABLE "Externalobjectreferencetype"
(
    "Name" varchar(100) NULL,
    "Uri" varchar(100) NULL,
    "ExternalobjectreferencetypeID" varchar(100) NOT NULL,
    CONSTRAINT "PK_Externalobjectreferencetype" PRIMARY KEY ("ExternalobjectreferencetypeID")
);

CREATE TABLE "Externalreferencetype"
(
    "Externalobject" varchar(100) NULL,
    "Informationsystem" varchar(100) NULL,
    "ExternalreferencetypeID" varchar(100) NOT NULL,
    CONSTRAINT "PK_Externalreferencetype" PRIMARY KEY ("ExternalreferencetypeID")
);
