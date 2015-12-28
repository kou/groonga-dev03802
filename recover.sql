TRUNCATE TABLE tbl_mroonga;
INSERT INTO tbl_mroonga (a_id, t2_date)
SELECT id, t2_date FROM tbl_dummy ORDER BY id;

TRUNCATE TABLE tbl_innodb;
INSERT INTO tbl_innodb (oa_id, t2_date)
SELECT id, t2_date FROM tbl_dummy ORDER BY id;
