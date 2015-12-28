SELECT a_id
FROM tbl_mroonga AS tav_origin
WHERE tav_origin.t2_date <= current_timestamp
ORDER BY a_id;
