START TRANSACTION;

ALTER TABLE `photo_detail`
  MODIFY COLUMN `div_spec` VARCHAR(255) NOT NULL,
  MODIFY COLUMN `frame_num` VARCHAR(8) NOT NULL DEFAULT 000;

delete from photo_detail
where div_spec > "2007-014"
  or frame_num = "000";

COMMIT