START TRANSACTION
;
ALTER TABLE `photo_comment` 
  CHANGE COLUMN `frame_num` `frame_num` VARCHAR(13) NOT NULL
;
ALTER TABLE `photo_detail` 
  CHANGE COLUMN `frame_num` `frame_num` VARCHAR(13) NOT NULL DEFAULT '000'
;
COMMIT
