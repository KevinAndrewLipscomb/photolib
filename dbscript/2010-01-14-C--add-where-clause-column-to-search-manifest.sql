START TRANSACTION;

ALTER TABLE `search_manifest` ADD COLUMN `where_clause` VARCHAR(255) NOT NULL;

COMMIT