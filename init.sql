dROP DATABASE IF EXISTS db_test;
CREATE DATABASE db_test;
USE db_test;
DROP TABLE IF EXISTS `tbl_mroonga`;
CREATE TABLE `tbl_mroonga` (
        `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
        `t1_date` TIMESTAMP NOT NULL DEFAULT current_timestamp,
        `t2_date` TIMESTAMP NOT NULL DEFAULT '0000-00-00',
        `a_id` BIGINT(20) NOT NULL Default 0,
        `t_text` LONGTEXT,
        PRIMARY KEY (`id`),
        UNIQUE KEY `a_id` (`a_id`),
        INDEX `t2_date` (`t2_date`),
        FULLTEXT INDEX `t_text` (`t_text` ) COMMENT 'normalizer "NormalizerMySQLUnicodeCIExceptKanaCIKanaWithVoicedSoundMark"'
) ENGINE=mroonga DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `tbl_innodb`;
CREATE TABLE `tbl_innodb` (
        `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
        `t1_date` TIMESTAMP NOT NULL DEFAULT current_timestamp,
        `t2_date` TIMESTAMP NOT NULL DEFAULT '0000-00-00',
        `oa_id` BIGINT(20) NOT NULL Default 0,
        PRIMARY KEY (`id`),
        INDEX `oa_id` (`oa_id`),
        INDEX `t2_date` (`t2_date`)

) ENGINE=Innodb DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

DROP TABLE IF EXISTS `tbl_dummy`;
CREATE TABLE `tbl_dummy` (
        `id` BIGINT(20) PRIMARY KEY AUTO_INCREMENT,
        `t2_date` TIMESTAMP NOT NULL DEFAULT current_timestamp
) ENGINE=Innodb DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- レコードを増やす
INSERT INTO tbl_dummy (t2_date) VALUES ((SELECT ADDTIME(CONCAT_WS(' ','2015-06-01' + INTERVAL RAND() * 365 DAY, '00:00:00'), SEC_TO_TIME(FLOOR(0 + (RAND() * 86401))))));
INSERT INTO tbl_dummy (t2_date) SELECT ADDTIME(CONCAT_WS(' ','2015-06-01' + INTERVAL RAND() * 365 DAY, '00:00:00'), SEC_TO_TIME(FLOOR(0 + (RAND() * 86401)))) FROM tbl_dummy;
INSERT INTO tbl_dummy (t2_date) SELECT ADDTIME(CONCAT_WS(' ','2015-06-01' + INTERVAL RAND() * 365 DAY, '00:00:00'), SEC_TO_TIME(FLOOR(0 + (RAND() * 86401)))) FROM tbl_dummy;
INSERT INTO tbl_dummy (t2_date) SELECT ADDTIME(CONCAT_WS(' ','2015-06-01' + INTERVAL RAND() * 365 DAY, '00:00:00'), SEC_TO_TIME(FLOOR(0 + (RAND() * 86401)))) FROM tbl_dummy;
INSERT INTO tbl_dummy (t2_date) SELECT ADDTIME(CONCAT_WS(' ','2015-06-01' + INTERVAL RAND() * 365 DAY, '00:00:00'), SEC_TO_TIME(FLOOR(0 + (RAND() * 86401)))) FROM tbl_dummy;
INSERT INTO tbl_dummy (t2_date) SELECT ADDTIME(CONCAT_WS(' ','2015-06-01' + INTERVAL RAND() * 365 DAY, '00:00:00'), SEC_TO_TIME(FLOOR(0 + (RAND() * 86401)))) FROM tbl_dummy;
INSERT INTO tbl_dummy (t2_date) SELECT ADDTIME(CONCAT_WS(' ','2015-06-01' + INTERVAL RAND() * 365 DAY, '00:00:00'), SEC_TO_TIME(FLOOR(0 + (RAND() * 86401)))) FROM tbl_dummy;
INSERT INTO tbl_dummy (t2_date) SELECT ADDTIME(CONCAT_WS(' ','2015-06-01' + INTERVAL RAND() * 365 DAY, '00:00:00'), SEC_TO_TIME(FLOOR(0 + (RAND() * 86401)))) FROM tbl_dummy;
INSERT INTO tbl_dummy (t2_date) SELECT ADDTIME(CONCAT_WS(' ','2015-06-01' + INTERVAL RAND() * 365 DAY, '00:00:00'), SEC_TO_TIME(FLOOR(0 + (RAND() * 86401)))) FROM tbl_dummy;
INSERT INTO tbl_dummy (t2_date) SELECT ADDTIME(CONCAT_WS(' ','2015-06-01' + INTERVAL RAND() * 365 DAY, '00:00:00'), SEC_TO_TIME(FLOOR(0 + (RAND() * 86401)))) FROM tbl_dummy;
INSERT INTO tbl_dummy (t2_date) SELECT ADDTIME(CONCAT_WS(' ','2015-06-01' + INTERVAL RAND() * 365 DAY, '00:00:00'), SEC_TO_TIME(FLOOR(0 + (RAND() * 86401)))) FROM tbl_dummy;
INSERT INTO tbl_dummy (t2_date) SELECT ADDTIME(CONCAT_WS(' ','2015-06-01' + INTERVAL RAND() * 365 DAY, '00:00:00'), SEC_TO_TIME(FLOOR(0 + (RAND() * 86401)))) FROM tbl_dummy;
INSERT INTO tbl_dummy (t2_date) SELECT ADDTIME(CONCAT_WS(' ','2015-06-01' + INTERVAL RAND() * 365 DAY, '00:00:00'), SEC_TO_TIME(FLOOR(0 + (RAND() * 86401)))) FROM tbl_dummy;
INSERT INTO tbl_dummy (t2_date) SELECT ADDTIME(CONCAT_WS(' ','2015-06-01' + INTERVAL RAND() * 365 DAY, '00:00:00'), SEC_TO_TIME(FLOOR(0 + (RAND() * 86401)))) FROM tbl_dummy;
INSERT INTO tbl_dummy (t2_date) SELECT ADDTIME(CONCAT_WS(' ','2015-06-01' + INTERVAL RAND() * 365 DAY, '00:00:00'), SEC_TO_TIME(FLOOR(0 + (RAND() * 86401)))) FROM tbl_dummy;
