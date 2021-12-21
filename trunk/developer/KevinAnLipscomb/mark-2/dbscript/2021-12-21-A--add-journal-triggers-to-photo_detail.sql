DELIMITER $$
DROP TRIGGER IF EXISTS `photo_detail_AFTER_INSERT`
$$
CREATE DEFINER = CURRENT_USER TRIGGER `photo_detail_AFTER_INSERT` AFTER INSERT ON `photo_detail` FOR EACH ROW
BEGIN
insert into journal
set actor = CURRENT_USER()
, action = CONCAT('INSERTED id:',NEW.id,' div_spec:',NEW.div_spec,' frame_num:',NEW.frame_num);
END
$$
DROP TRIGGER IF EXISTS `photo_detail_AFTER_UPDATE`
$$
CREATE DEFINER = CURRENT_USER TRIGGER `photo_detail_AFTER_UPDATE` AFTER UPDATE ON `photo_detail` FOR EACH ROW
BEGIN
insert into journal
set actor = CURRENT_USER()
, action = CONCAT('UPDATED id:',OLD.id,'/',NEW.id,' div_spec:',OLD.div_spec,'/',NEW.div_spec,' frame_num:',OLD.frame_num,'/',NEW.frame_num);
END
$$
DROP TRIGGER IF EXISTS `photo_detail_AFTER_DELETE`
$$
CREATE DEFINER = CURRENT_USER TRIGGER `photo_detail_AFTER_DELETE` AFTER DELETE ON `photo_detail` FOR EACH ROW
BEGIN
insert into journal
set actor = CURRENT_USER()
, action = CONCAT('DELETED id:',OLD.id,' div_spec:',OLD.div_spec,' frame_num:',OLD.frame_num);
END
$$
DELIMITER ;
