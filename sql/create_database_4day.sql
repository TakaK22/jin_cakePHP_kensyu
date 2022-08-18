CREATE DATABASE  IF NOT EXISTS `sampledb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sampledb`;

--
-- Table structure for table `SHAIN_INFO`
--

DROP TABLE IF EXISTS `SHAIN_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SHAIN_INFO` (
  `SHAIN_NO` char(4) NOT NULL COMMENT '社員番号',
  `SHAIN_NAME_KJ` varchar(20) NOT NULL COMMENT '氏名（漢字）',
  `SHAIN_NAME_KN` varchar(40) NOT NULL COMMENT '氏名（カナ）',
  `BUSHO_CD` char(3) NOT NULL  COMMENT '部署コード',
  `PREF_CD` char(2) NOT NULL COMMENT '都道府県コード',
  PRIMARY KEY (`SHAIN_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='社員情報';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SHAIN_INFO`
--

LOCK TABLES `SHAIN_INFO` WRITE;
/*!40000 ALTER TABLE `shain_info` DISABLE KEYS */;
INSERT INTO `SHAIN_INFO` VALUES ('0001','鈴木　イチロー','スズキ　イチロー','001','01'),('0002','田中 将大','タナカ　マサヒロ','002','02'),('0003','大谷　翔平','オオタニ　ショウヘイ','003','03'),('0004','坂本　勇人','サカモト　ハヤト','003','04'),('0005','藤浪　晋太郎','フジナミ　シンタロウ','001','05'),('0006','松井 　裕樹','マツイ　ユウキ','002','01'),('0007','内川　聖一','ウチカワ　セイイチ','003','05'),('0008','入社前　研修','ニュウシャマエ　ケンシュウ','005','88');
/*!40000 ALTER TABLE `SHAIN_INFO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `busho_info`
--

DROP TABLE IF EXISTS `BUSHO_INFO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BUSHO_INFO` (
  `BUSHO_CD` char(3) NOT NULL COMMENT '部署コード',
  `BUSHO_NAME` varchar(60) NOT NULL COMMENT '部署名',
  PRIMARY KEY (`BUSHO_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部署情報';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BUSHO_INFO`
--

LOCK TABLES `BUSHO_INFO` WRITE;
/*!40000 ALTER TABLE `BUSHO_INFO` DISABLE KEYS */;
INSERT INTO `BUSHO_INFO` VALUES ('001','営業部'),('002','開発部'),('003','総務部'),('004','人事部');
/*!40000 ALTER TABLE `BUSHO_INFO` ENABLE KEYS */;
UNLOCK TABLES;

DROP TABLE IF EXISTS `PREF_MST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PREF_MST` (
  `PREF_CD` char(2) NOT NULL COMMENT '都道府県コード',
  `PREF_NM` varchar(4) NOT NULL COMMENT '都道府県名',
  PRIMARY KEY (`PREF_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='都道府県マスタ';

--
-- Dumping data for table `PREF_MST`
--
LOCK TABLES `PREF_MST` WRITE;
/*!40000 ALTER TABLE `PREF_MST` DISABLE KEYS */;
INSERT INTO `PREF_MST` VALUES ('01','北海道'),('02','青森県'),('03','岩手県'),('04','宮城県'),('05','秋田県'),('06','山形県'),('07','福島県'),('08','茨城県'),('09','栃木県'),('10','群馬県'),('11','埼玉県'),('12','千葉県'),('13','東京都'),('14','神奈川県'),('15','新潟県'),('16','富山県'),('17','石川県'),('18','福井県'),('19','山梨県'),('20','長野県'),('21','岐阜県'),('22','静岡県'),('23','愛知県'),('24','三重県'),('25','滋賀県'),('26','京都府'),('27','大阪府'),('28','兵庫県'),('29','奈良県'),('30','和歌山県'),('31','鳥取県'),('32','島根県'),('33','岡山県'),('34','広島県'),('35','山口県'),('36','徳島県'),('37','香川県'),('38','愛媛県'),('39','高知県'),('40','福岡県'),('41','佐賀県'),('42','長崎県'),('43','熊本県'),('44','大分県'),('45','宮崎県'),('46','鹿児島県'),('47','沖縄県'),('70','台湾'),('99','その他');
/*!40000 ALTER TABLE `PREF_MST` ENABLE KEYS */;
UNLOCK TABLES;

CREATE USER 'jin'@'localhost' IDENTIFIED with mysql_native_password BY 'jin';
/* grant all */ 
GRANT ALL PRIVILEGES ON sampledb.* TO jin@localhost;
FLUSH PRIVILEGES;

-- Dump completed on 2015-11-20 20:30:57
SELECT * FROM SHAIN_INFO;

