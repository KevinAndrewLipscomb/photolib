START TRANSACTION;

update photo_detail
set placement = concat(placement," oscarsystem")
where placement not like "%oscarsystem%"
  and
    (
      placement like "%eye-candy%"
    or
      placement like "%sasquatch%"
    );

COMMIT