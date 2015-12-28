SET @a_id:=(SELECT a_id FROM tbl_mroonga WHERE t2_date <= current_timestamp ORDER BY RAND() LIMIT 1);
SELECT CONCAT('START TRANSACTION; UPDATE tbl_innodb SET oa_id = 0 WHERE oa_id =',@a_id,'; DELETE FROM tbl_mroonga WHERE a_id = ',@a_id,'; COMMIT WORK;') AS '';
DELETE FROM tbl_mroonga WHERE a_id = @a_id;
