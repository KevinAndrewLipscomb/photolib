START TRANSACTION;

update photo_comment
set email_address = concat(replace(replace(concat("commenter_",nickname),".","")," ",""),"@frompaper2web.com");

COMMIT