DROP DATABASE IF EXISTS `sampledb`;
CREATE DATABASE  IF NOT EXISTS `sampledb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sampledb`;

--
-- Table structure for table `shain_info`
--

DROP TABLE IF EXISTS `shain_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shain_info` (
  `SHAIN_NO` char(4) NOT NULL COMMENT '社員番号',
  `SHAIN_NAME_KJ` varchar(20) NOT NULL COMMENT '氏名（漢字）',
  `SHAIN_NAME_KN` varchar(40) NOT NULL COMMENT '氏名（カナ）',
  `BUSHO_CD` char(3) NOT NULL  COMMENT '部署コード',
  PRIMARY KEY (`SHAIN_NO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shain_info`
--

LOCK TABLES `shain_info` WRITE;
/*!40000 ALTER TABLE `shain_info` DISABLE KEYS */;
INSERT INTO `shain_info` VALUES ('0001','鈴木　イチロー','スズキ　イチロー','001'),('0002','田中 将大','タナカ　マサヒロ','002'),('0003','大谷　翔平','オオタニ　ショウヘイ','003');
/*!40000 ALTER TABLE `shain_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `busho_info`
--

DROP TABLE IF EXISTS `busho_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `busho_info` (
  `BUSHO_CD` char(3) NOT NULL COMMENT '部署名',
  `BUSHO_NAME` varchar(60) NOT NULL COMMENT '部署名',
  PRIMARY KEY (`BUSHO_CD`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `busho_info`
--

LOCK TABLES `busho_info` WRITE;
/*!40000 ALTER TABLE `busho_info` DISABLE KEYS */;
INSERT INTO `busho_info` VALUES ('001','営業部'),('002','開発部'),('003','総務部'),('004','人事部');
/*!40000 ALTER TABLE `busho_info` ENABLE KEYS */;
UNLOCK TABLES;

CREATE USER 'jin'@'localhost' IDENTIFIED with mysql_native_password BY 'jin';
/* grant all */ 
GRANT ALL PRIVILEGES ON sampledb.* TO jin@localhost;
FLUSH PRIVILEGES;

-- Dump completed on 2015-11-20 20:30:57
SELECT * FROM SHAIN_INFO;

