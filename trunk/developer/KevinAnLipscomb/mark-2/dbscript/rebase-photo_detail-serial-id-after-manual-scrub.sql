START TRANSACTION
;
alter table photo_detail drop column id
;
alter table photo_detail order by div_spec,frame_num
;
alter table photo_detail add column id serial first
;
COMMIT