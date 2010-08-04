START TRANSACTION;

ALTER TABLE `search_manifest`
 ADD COLUMN `origin` VARCHAR(255) NOT NULL AFTER `id`,
 ADD COLUMN `time_of_first_reference` DATETIME NOT NULL AFTER `origin`;

COMMIT