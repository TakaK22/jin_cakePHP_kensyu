/* ���C�Ŏg�p�����e�[�u���̕ύX�Ɏg�p�����R�}���h */
ALTER TABLE `SHAIN_INFO` ADD `SHAIN_AGE` tinyint(4) UNSIGNED COMMENT '�N��' AFTER `SHAIN_NAME_KN`;
INSERT INTO `SHAIN_INFO` VALUES ('0004','�c���@����','�^�i�J�@�P���X�P',37,'002');
INSERT INTO `SHAIN_INFO` VALUES ('0005','�֓��@�C��','�T�C�g�E�@���E�L',NULL,'003');
INSERT INTO `SHAIN_INFO` (SHAIN_NO, SHAIN_NAME_KJ, SHAIN_NAME_KN, BUSHO_CD) VALUES ('9999','�e�X�g�@���Y','�e�X�g�@�^���E','999');
UPDATE `SHAIN_INFO` SET `SHAIN_AGE` = 45 WHERE `SHAIN_NO` = '0001';
UPDATE `SHAIN_INFO` SET `SHAIN_AGE` = 30 WHERE `SHAIN_NO` = '0002';
UPDATE `SHAIN_INFO` SET `SHAIN_AGE` = 24 WHERE `SHAIN_NO` = '0003';
SELECT * FROM SHAIN_INFO;

/* UNION�Ŏg�p�����ڋq���e�[�u�� */
CREATE TABLE `CUST_INFO` (
  `CUST_NO` char(4) NOT NULL COMMENT '�ڋq�ԍ�',
  `CUST_NAME_KJ` varchar(20) NOT NULL COMMENT '�����i�����j',
  `CUST_NAME_KN` varchar(40) NOT NULL COMMENT '�����i�J�i�j',
  `CUST_AGE` tinyint(4) UNSIGNED COMMENT '�N��',
  `PREF_CD` char(2) NOT NULL  COMMENT '�n��R�[�h',
  PRIMARY KEY (`CUST_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `CUST_INFO` VALUES ('0001','�~��@�L��','�J�V�m�@���J',30,'01',NULL),
('0002','���e�@����','�j�V���L�@�A���J',29,'02'),
('0003','��{�@�ʔT','�I�I���g�@�A���m',30,'03');
SELECT * FROM CUST_INFO;