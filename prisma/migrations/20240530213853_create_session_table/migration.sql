-- CreateTable
CREATE TABLE "Session" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "shop" TEXT NOT NULL,
    "state" TEXT NOT NULL,
    "isOnline" BOOLEAN NOT NULL DEFAULT false,
    "scope" TEXT,
    "expires" DATETIME,
    "accessToken" TEXT NOT NULL,
    "userId" BIGINT,
    "firstName" TEXT,
    "lastName" TEXT,
    "email" TEXT,
    "accountOwner" BOOLEAN NOT NULL DEFAULT false,
    "locale" TEXT,
    "collaborator" BOOLEAN DEFAULT false,
    "emailVerified" BOOLEAN DEFAULT false
);

CREATE TABLE "QRCode" (
  "id"               TEXT NOT NULL PRIMARY KEY,
  "title"            TEXT,
  "shop"             TEXT,
  "productId"        TEXT,
  "productHandle"    TEXT,
  "productVariantId" TEXT,
  "destination"      TEXT,
  "scans"            INT DEFAULT 0,
  "createdAt"        DATETIME
);