SELECT a_id
FROM tbl_mroonga AS tav_ignore
IGNORE INDEX (t2_date)
WHERE t2_date <= current_timestamp
ORDER BY a_id;
