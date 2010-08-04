START TRANSACTION;

CREATE TABLE `search_manifest` (
  `id` VARCHAR(19) NOT NULL,
  `time_of_last_reference` DATETIME NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `time_of_last_reference`(`time_of_last_reference`)
)
ENGINE = InnoDB;

COMMIT