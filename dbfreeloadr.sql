CREATE DATABASE  IF NOT EXISTS `dbfreeloadr` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dbfreeloadr`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win32 (AMD64)
--
-- Host: localhost    Database: dbfreeloadr
-- ------------------------------------------------------
-- Server version	5.7.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dim_field`
--

DROP TABLE IF EXISTS `dim_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_field` (
  `fieldid` int(11) NOT NULL AUTO_INCREMENT,
  `fielddesc` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `setid` int(11) NOT NULL,
  PRIMARY KEY (`fieldid`,`setid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_field`
--

LOCK TABLES `dim_field` WRITE;
/*!40000 ALTER TABLE `dim_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `dim_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_file`
--

DROP TABLE IF EXISTS `dim_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_file` (
  `fileid` int(11) NOT NULL AUTO_INCREMENT,
  `filedesc` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `MD5` varchar(32) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `sets` int(11) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `records` int(11) DEFAULT NULL,
  `fields` int(11) DEFAULT NULL,
  PRIMARY KEY (`fileid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_file`
--

LOCK TABLES `dim_file` WRITE;
/*!40000 ALTER TABLE `dim_file` DISABLE KEYS */;
INSERT INTO `dim_file` VALUES (1,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text',1,'2019-04-18 17:03:00',NULL,NULL),(2,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text',1,'2019-04-18 17:08:32',NULL,NULL),(3,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text',1,'2019-04-18 17:09:05',NULL,NULL),(4,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text',1,'2019-04-19 10:31:21',NULL,NULL),(5,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text',1,'2019-04-19 10:37:21',NULL,NULL),(6,'Book2.csv','.csv','14ebab7f11a44efadbb6d1d1eaaf3286','text',1,'2019-04-19 10:38:31',NULL,NULL),(7,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text',1,'2019-04-19 12:19:49',NULL,NULL),(8,'Book2.csv','.csv','14ebab7f11a44efadbb6d1d1eaaf3286','text',1,'2019-04-19 12:25:20',NULL,NULL),(9,'Book2.csv','.csv','14ebab7f11a44efadbb6d1d1eaaf3286','text',1,'2019-04-19 13:15:45',NULL,NULL),(10,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text',1,'2019-04-19 13:58:38',NULL,NULL),(11,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text',1,'2019-04-19 14:05:51',NULL,NULL),(12,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text',1,'2019-04-19 14:13:03',NULL,NULL),(13,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text',1,'2019-04-19 14:14:36',NULL,NULL),(14,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text',1,'2019-04-19 14:25:56',NULL,NULL),(15,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text',1,'2019-04-19 14:30:06',NULL,NULL),(16,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text',1,'2019-04-19 14:37:01',NULL,NULL),(17,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text',1,'2019-04-19 14:38:39',NULL,NULL),(18,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text',1,'2019-04-19 14:40:11',NULL,NULL),(19,'Book2.csv','.csv','14ebab7f11a44efadbb6d1d1eaaf3286','text',1,'2019-04-19 14:40:37',NULL,NULL),(20,'Book3.csv','.csv','7860898d2ee68696b8e94e27041a3c16','text',1,'2019-04-19 14:41:24',NULL,NULL),(21,'Book4.csv','.csv','8fdb975300a9e6daee26a76e728000c5','text',1,'2019-04-19 14:42:01',NULL,NULL),(22,'Book1.csv','.csv','6d8a6e7d1fe02f412e051a1377bc1f1b','text',1,'2019-04-19 14:48:38',NULL,NULL),(23,'Book2.csv','.csv','cc794069e67a831d664527bc904627ef','text',1,'2019-04-19 14:52:17',NULL,NULL),(24,'Book4.csv','.csv','8fdb975300a9e6daee26a76e728000c5','text',1,'2019-04-19 14:54:38',NULL,NULL),(25,'Book1.csv','.csv','6d8a6e7d1fe02f412e051a1377bc1f1b','text',1,'2019-04-19 15:46:43',NULL,NULL),(26,'Book2.csv','.csv','cc794069e67a831d664527bc904627ef','text',1,'2019-04-19 15:47:07',NULL,NULL),(27,'Book1.csv','.csv','6d8a6e7d1fe02f412e051a1377bc1f1b','text',1,'2019-04-19 15:59:25',NULL,NULL),(28,'Book1.csv','.csv','6d8a6e7d1fe02f412e051a1377bc1f1b','text',1,'2019-04-19 16:01:50',NULL,NULL),(29,'Book2.csv','.csv','cc794069e67a831d664527bc904627ef','text',1,'2019-04-19 16:02:53',NULL,NULL),(30,'Book3.csv','.csv','7860898d2ee68696b8e94e27041a3c16','text',1,'2019-04-19 16:06:09',NULL,NULL),(31,'Book3.csv','.csv','7860898d2ee68696b8e94e27041a3c16','text',1,'2019-04-19 16:07:14',NULL,NULL),(32,'Book4.csv','.csv','8fdb975300a9e6daee26a76e728000c5','text',1,'2019-04-19 16:07:43',NULL,NULL),(33,'AdvilPM_XPM_SpPkACV.csv','.csv','2e201826a0ee58bfe075cea4c9fc97a7','text',1,'2019-04-19 16:12:08',NULL,NULL),(34,'AdvilPM_XPM_SpPkACV.csv','.csv','2e201826a0ee58bfe075cea4c9fc97a7','text',1,'2019-04-19 16:23:04',NULL,NULL);
/*!40000 ALTER TABLE `dim_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dim_set`
--

DROP TABLE IF EXISTS `dim_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dim_set` (
  `setid` int(11) NOT NULL AUTO_INCREMENT,
  `setdesc` varchar(255) DEFAULT NULL,
  `extension` varchar(255) DEFAULT NULL,
  `MD5` varchar(32) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `creation_date` datetime DEFAULT NULL,
  `fileid` int(11) NOT NULL,
  `records` int(11) DEFAULT NULL,
  `fields` int(11) DEFAULT NULL,
  PRIMARY KEY (`setid`,`fileid`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_set`
--

LOCK TABLES `dim_set` WRITE;
/*!40000 ALTER TABLE `dim_set` DISABLE KEYS */;
INSERT INTO `dim_set` VALUES (1,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text','2019-04-18 17:03:00',1,40,NULL),(2,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text','2019-04-18 17:08:32',2,40,NULL),(3,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text','2019-04-18 17:09:05',3,40,NULL),(4,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text','2019-04-19 10:31:21',4,40,NULL),(5,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text','2019-04-19 10:37:21',5,40,NULL),(6,'Book2.csv','.csv','14ebab7f11a44efadbb6d1d1eaaf3286','text','2019-04-19 10:38:31',6,40,NULL),(7,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text','2019-04-19 12:19:49',7,40,NULL),(8,'Book2.csv','.csv','14ebab7f11a44efadbb6d1d1eaaf3286','text','2019-04-19 12:25:20',8,40,NULL),(9,'Book2.csv','.csv','14ebab7f11a44efadbb6d1d1eaaf3286','text','2019-04-19 13:15:45',9,40,NULL),(10,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text','2019-04-19 13:58:38',10,40,NULL),(11,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text','2019-04-19 14:05:51',11,40,NULL),(12,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text','2019-04-19 14:13:03',12,40,NULL),(13,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text','2019-04-19 14:14:36',13,40,NULL),(14,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text','2019-04-19 14:25:56',14,40,NULL),(15,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text','2019-04-19 14:30:06',15,40,NULL),(16,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text','2019-04-19 14:37:01',16,40,NULL),(17,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text','2019-04-19 14:38:39',17,40,NULL),(18,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text','2019-04-19 14:40:11',18,40,NULL),(19,'Book2.csv','.csv','14ebab7f11a44efadbb6d1d1eaaf3286','text','2019-04-19 14:40:37',19,40,NULL),(20,'Book3.csv','.csv','7860898d2ee68696b8e94e27041a3c16','text','2019-04-19 14:41:24',20,40,NULL),(21,'Book4.csv','.csv','8fdb975300a9e6daee26a76e728000c5','text','2019-04-19 14:42:01',21,3,NULL),(22,'Book1.csv','.csv','6d8a6e7d1fe02f412e051a1377bc1f1b','text','2019-04-19 14:48:38',22,41,NULL),(23,'Book2.csv','.csv','cc794069e67a831d664527bc904627ef','text','2019-04-19 14:52:17',23,41,NULL),(24,'Book4.csv','.csv','8fdb975300a9e6daee26a76e728000c5','text','2019-04-19 14:54:38',24,3,NULL),(25,'Book1.csv','.csv','6d8a6e7d1fe02f412e051a1377bc1f1b','text','2019-04-19 15:46:43',25,41,NULL),(26,'Book2.csv','.csv','cc794069e67a831d664527bc904627ef','text','2019-04-19 15:47:07',26,41,NULL),(27,'Book1.csv','.csv','6d8a6e7d1fe02f412e051a1377bc1f1b','text','2019-04-19 15:59:25',27,41,NULL),(28,'Book1.csv','.csv','6d8a6e7d1fe02f412e051a1377bc1f1b','text','2019-04-19 16:01:50',28,41,NULL),(29,'Book2.csv','.csv','cc794069e67a831d664527bc904627ef','text','2019-04-19 16:02:53',29,41,NULL),(30,'Book3.csv','.csv','7860898d2ee68696b8e94e27041a3c16','text','2019-04-19 16:06:09',30,40,NULL),(31,'Book3.csv','.csv','7860898d2ee68696b8e94e27041a3c16','text','2019-04-19 16:07:14',31,40,NULL),(32,'Book4.csv','.csv','8fdb975300a9e6daee26a76e728000c5','text','2019-04-19 16:07:43',32,3,NULL),(33,'AdvilPM_XPM_SpPkACV.csv','.csv','2e201826a0ee58bfe075cea4c9fc97a7','text','2019-04-19 16:12:08',33,3606,NULL),(34,'AdvilPM_XPM_SpPkACV.csv','.csv','2e201826a0ee58bfe075cea4c9fc97a7','text','2019-04-19 16:23:04',34,3606,NULL);
/*!40000 ALTER TABLE `dim_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkup_set_field`
--

DROP TABLE IF EXISTS `lkup_set_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkup_set_field` (
  `setid` int(11) NOT NULL,
  `fieldid` int(11) NOT NULL,
  PRIMARY KEY (`setid`,`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkup_set_field`
--

LOCK TABLES `lkup_set_field` WRITE;
/*!40000 ALTER TABLE `lkup_set_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `lkup_set_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfields`
--

DROP TABLE IF EXISTS `tblfields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblfields` (
  `original_name` varchar(1000) DEFAULT NULL,
  `clean_name` varchar(255) DEFAULT NULL,
  `final_name` varchar(255) DEFAULT NULL,
  `data_type` varchar(255) DEFAULT NULL,
  `mapsto` varchar(255) DEFAULT 'NONE',
  `unique_values` int(11) DEFAULT NULL,
  `cardinality` float DEFAULT NULL,
  `quality` float DEFAULT NULL,
  `dimension` varchar(20) DEFAULT 'NO'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfields`
--

LOCK TABLES `tblfields` WRITE;
/*!40000 ALTER TABLE `tblfields` DISABLE KEYS */;
INSERT INTO `tblfields` VALUES ('Product','Product','Product','text','PRODUCT',2,0.999445,0,'NO'),('Geography','Geography','Geography','text','MARKET',22,0.993899,0,'NO'),('Time','Time','Time','text','PERIOD',104,0.971159,0,'NO'),('CATEGORY_AngPMxPMBrdAD  [ CATEGORY_AngPMxPMBrdAD ]','CATEGORY_AngPMxPMBrdADCATEGORY_AngPMxPMBrdAD','CATEGORY_AngPMxPMBrdADCATEGORY_AngPMxPMBrdAD','text','PRODUCT',1,0.999723,0,'NO'),('ANALGESICS PM X PM_AngPMxPMBrdAD  [ ANALGESICS PM X PM_AngPMxPMBrdAD ]','ANALGESICSPMXPM_AngPMxPMBrdADANALGESICSPMXPM_AngPMxPMBrdAD','ANALGESICSPMXPM_AngPMxPMBrdADANALGESICSPMXPM_AngPMxPMBrdAD','text','PRODUCT',2,0.999445,0,'NO'),('MAJOR BRAND_AngPMxPMBrdAD  [ MAJOR BRAND_AngPMxPMBrdAD ]','MAJORBRAND_AngPMxPMBrdADMAJORBRAND_AngPMxPMBrdAD','MAJORBRAND_AngPMxPMBrdADMAJORBRAND_AngPMxPMBrdAD','text','PRODUCT',1,0.999723,0,'NO'),('ACV Weighted Distribution Special Pack Only','ACVWeightedDistributionSpecialPackOnly','ACVWeightedDistributionSpecialPackOnly','double','FACT',3606,0,1,'NO');
/*!40000 ALTER TABLE `tblfields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsuccess`
--

DROP TABLE IF EXISTS `tblsuccess`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tblsuccess` (
  `success` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsuccess`
--

LOCK TABLES `tblsuccess` WRITE;
/*!40000 ALTER TABLE `tblsuccess` DISABLE KEYS */;
INSERT INTO `tblsuccess` VALUES (1);
/*!40000 ALTER TABLE `tblsuccess` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dbfreeloadr'
--
/*!50003 DROP FUNCTION IF EXISTS `cleanstring` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `cleanstring`(input TEXT) RETURNS text CHARSET latin1
BEGIN
  RETURN upper(replace(
  replace(replace(replace(replace(replace(replace(replace(
  replace(replace(replace(replace(replace(replace(replace(replace(
  replace(replace(replace(replace(replace(replace(replace(replace(
  replace(replace(
  replace(replace(replace(replace(replace(input,'?',''),'#',''),'$',''),'@',''),'{','')
  
  
  ,'}',''),'!',''),'^',''),'<',''),'>',''),'[',''),']',''),'|',''),'\\',''),'*',''),'`',''),'~',''),'%',''),';',''),',',''),':',''),'"',''),'.',''),'&',''),'/',''),'+',''),'(',''),')',''),'-',''),'''',''),' ',''));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `guessdate` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `guessdate`(input TEXT) RETURNS text CHARSET latin1
BEGIN
/*
Specifier	Description
%a	Abbreviated weekday name (Sun..Sat)
%b	Abbreviated month name (Jan..Dec)
%c	Month, numeric (0..12)
%D	Day of the month with English suffix (0th, 1st, 2nd, 3rd, …)
%d	Day of the month, numeric (00..31)
%e	Day of the month, numeric (0..31)
%f	Microseconds (000000..999999)
%H	Hour (00..23)
%h	Hour (01..12)
%I	Hour (01..12)
%i	Minutes, numeric (00..59)
%j	Day of year (001..366)
%k	Hour (0..23)
%l	Hour (1..12)
%M	Month name (January..December)
%m	Month, numeric (00..12)
%p	AM or PM
%r	Time, 12-hour (hh:mm:ss followed by AM or PM)
%S	Seconds (00..59)
%s	Seconds (00..59)
%T	Time, 24-hour (hh:mm:ss)
%U	Week (00..53), where Sunday is the first day of the week; WEEK() mode 0
%u	Week (00..53), where Monday is the first day of the week; WEEK() mode 1
%V	Week (01..53), where Sunday is the first day of the week; WEEK() mode 2; used with %X
%v	Week (01..53), where Monday is the first day of the week; WEEK() mode 3; used with %x
%W	Weekday name (Sunday..Saturday)
%w	Day of the week (0=Sunday..6=Saturday)
%X	Year for the week where Sunday is the first day of the week, numeric, four digits; used with %V
%x	Year for the week, where Monday is the first day of the week, numeric, four digits; used with %v
%Y	Year, numeric, four digits
%y	Year, numeric (two digits)
%%	A literal % character
%x	x, for any “x” not listed above*/
if (str_to_date(input,'%Y-%m-%d') is not null) then
	return str_to_date(input,'%Y-%m-%d');
end if;
if (str_to_date(input,'%Y/%m/%d') is not null) then
	set input=str_to_date(input,'%Y/%m/%d');
	return input;
end if;
if (str_to_date(input,'%m/%d/%Y') is not null) then
	set input=str_to_date(input,'%m/%d/%Y');
	return input;
end if;
if (str_to_date(input,'%b %d, %Y') is not null) then
	set input=str_to_date(input,'%b %d, %Y');
	return input;
else
	return NULL;
end if;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_cardinality` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cardinality`(IN schemanamen varchar(255),IN adminid INT)
BEGIN
declare done INT DEFAULT FALSE;
declare vColumn varchar(255);
declare vColumn2 varchar(255);
declare vDataType varchar(255);
declare testn INT;
declare vOutputSQL varchar(1000);
declare vSpend varchar(255);
declare vImps varchar(255);
declare cur_header cursor for
select clean_name,original_name,data_type
from tblFields;

/*field types
varchar
bigint
longtext
datetime
int
tinyint
decimal
double
date
char
float
text
bit
timestamp
set
binary
enum
longblob
mediumtext
mediumblob
smallint
blob
time*/

DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
/***insert any fact names into dim_fact where the fact is not in dim fact****/

/***now begin inserting****/
open cur_header;
read_loop: LOOP

fetch cur_header into vColumn,vColumn2,vDataType;
IF done THEN
	LEAVE read_loop;
END IF;
    insert admin1.tblProgress values (concat('cardinality:',vColumn,' '),NOW(),30);
    update tblFields set mapsto='NONE', quality=0 where clean_name=vColumn;	
	if vDataType in ('FLOAT','DOUBLE','INT','BIGINT','INT','DECIMAL','SMALLINT','TINYINT') then
		update tblFields set mapsto='FACT', quality=1 where clean_name=vColumn;
    end if;
	set @ex=concat('select @val:= count(*) 
				   from (select distinct `',vcolumn,'` from temp1) a');
	prepare stmt from @ex;
	execute stmt;
	deallocate prepare stmt;
	update tblFields set unique_values=@val where clean_name=vColumn;

	set @ex=concat('select @records:=count(*) from  temp1');
	prepare stmt from @ex;
	execute stmt;
	deallocate prepare stmt;
    

	set @ex=concat('select @bal:=1-(@val/count(*)) from temp1');
	prepare stmt from @ex;
	execute stmt;
	deallocate prepare stmt;
	update tblFields set cardinality=@bal where clean_name=vColumn;

	#does this field look like a date?
	set @ex=concat('select @gooddate:=count(guessdate(`',vcolumn,'`))/@records from temp1 where guessdate(`',vcolumn,'`) IS NOT NULL');
	prepare stmt from @ex;
	execute stmt;
	deallocate prepare stmt;    
    if @gooddate>.95 then
			update tblFields set mapsto='PERIOD',data_type='DATE', quality=@gooddate where clean_name=vColumn;
			set @ex=concat('update temp1 set `',vcolumn,'`=guessdate(`',vcolumn,'`)');
			prepare stmt from @ex;
			execute stmt;
			deallocate prepare stmt;           
    end if;
    insert admin1.tblProgress values (concat('cardinality major dimensions:',vColumn,' '),NOW(),50);
    ####technically we should enter another loop over the dimensions to do this checking
	if vDataType in ('TEXT','VARCHAR','CHAR') then
		#does this field look like a product?
		set @ex=concat('select @goodproduct:=count(*)/@records from temp1 where cleanstring(`',vcolumn,'`) in (select product from ',schemanamen,'.tblProduct)');
		prepare stmt from @ex;
		execute stmt;
		deallocate prepare stmt;    
		if  @goodproduct >.70 then
				update tblFields set mapsto='PRODUCT',data_type='TEXT', quality=@goodproduct where clean_name=vColumn;
		end if;
		
		#does this field look like a product?
		set @ex=concat('select @goodmarket:=count(*)/@records from temp1 where cleanstring(`',vcolumn,'`) in (select market from ',schemanamen,'.tblmarket)');
		prepare stmt from @ex;
		execute stmt;
		deallocate prepare stmt;    
		if  @goodmarket >.70 then
				update tblFields set mapsto='MARKET',data_type='TEXT', quality=@goodmarket where clean_name=vColumn;
		end if; 
		#does this field look like a product?
		set @ex=concat('select @goodmediatype:=count(*)/@records from temp1 where cleanstring(`',vcolumn,'`) in (select mediatype from ',schemanamen,'.tblMediatype)');
		prepare stmt from @ex;
		execute stmt;
		deallocate prepare stmt;   

		if  @goodmediatype >.70 then
				update tblFields set mapsto='MEDIATYPE',data_type='TEXT', quality=@goodmediatype where clean_name=vColumn;
		end if; 
		set @ex=concat('select @goodmeasure:=count(*)/@records from temp1 where cleanstring(`',vcolumn,'`) in (select measure from ',schemanamen,'.tblMEasure)');
		prepare stmt from @ex;
		execute stmt;
		deallocate prepare stmt;    
		if  @goodmeasure >.70 then
				update tblFields set mapsto='MEASURE',data_type='TEXT', quality=@goodmeasure where clean_name=vColumn;
		end if;   
	end if;
end LOOP;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_fieldCheck` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fieldCheck`(IN schemanamen varchar(255),IN adminidn INT)
BEGIN
declare testn INT;
declare ration float;
	insert admin1.tblProgress values ('taking file...',NOW(),10);
	update tblFields a, (
    select column_name, data_type from 
    information_Schema.columns
    where table_schema=schema()
    and table_name='temp1') b
    set a.data_type=b.data_type
    where a.clean_name=b.column_name;
	insert admin1.tblProgress values ('checking cardinality...',NOW(),20);
    call sp_cardinality(schemanamen,adminidn);
    
	#do we have a periods as fields?
    select count(*)
    into testn
    from tblfields;
    
    select @testn:=count(*)
    from tblfields;	
    
    select count(*)/testn
    into ration
    from tblFields where guessdate(original_name)  IS NOT NULL;
    
    if ration >.8 then
		update tblFields set dimension='PERIOD' where guessdate(original_name)  IS NOT NULL;
	end if;
    	insert admin1.tblProgress values ('guessing fields...',NOW(),70);
	#do we have a products as fields?
   set @ex=concat('select @ration:=count(*)/@testn
    from tblFields where cleanstring(original_name)  in (select product from ',schemanamen,'.tblProduct)');
 		prepare stmt from @ex;
		execute stmt;
		deallocate prepare stmt;
        
    if @ration > 0 then
	   set @ex=concat('update tblFields set dimension=\'PRODUCT\' where cleanstring(original_name)  in (select product from ',schemanamen,'.tblProduct)');
			prepare stmt from @ex;
			execute stmt;
			deallocate prepare stmt;
	end if;
    	insert admin1.tblProgress values ('checking checking dimensions as columns...',NOW(),80);
   set @ex=concat('select @ration:=count(*)/@testn
    from tblFields where cleanstring(original_name)  in (select market from ',schemanamen,'.tblMarket)');
 		prepare stmt from @ex;
		execute stmt;
		deallocate prepare stmt;
        
    if @ration > 0 then
	   set @ex=concat('update tblFields set dimension=\'MARKET\' where cleanstring(original_name)  in (select market from ',schemanamen,'.tblMarket)');
			prepare stmt from @ex;
			execute stmt;
			deallocate prepare stmt;
	end if;
        	insert admin1.tblProgress values ('finished with that...',NOW(),99);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_goodtogo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_goodtogo`(IN schemanamen varchar(255), IN adminidn INT)
BEGIN

####good to go needs to
##1. we may have more than 1 'product' dimension or market dimension. 
##   we have a distinct names and that is all good
##   but we may actually have to append heirarchies of IDs
##   but for simplicity sake, no - let's not do that
##2. It needs to figure out which columns it will need to tack on
##   add key fields puts everything on there which is overkill and
##   might not even work
##   so think about that more
##3. Once tacked on, it will need to score them - this should be rountine
##4. Once everything tacked on and key fields updated it will need
##   to come up with some clever name
##5. It will need to insert a new source ID to that database
##6. It will need to copy that table over
##7. It will need to normalize it to death and run a massive insert into the long thin table
/* 

The freeloader DB does not need to exist, all the file management can be done through a bespoke DB
create per-db repository of flat files
uploads go to their owners folders
Find dates needs to be more solid with regular expressions and what not
the 'clean' thingy needs to be better
tblProduct and so forth do not need to have all the values cleaned to death
need to figure out in angular how to allow for multi line work and cashing 
handling heirarchies is tricky business but critical:
	product, market and period hiearchies
columns with product names / fact combos! columns as a combo of dimensions and facts - fun fun need and way to deal with that
transposer capability needs to be implemented
the difference between facts and measures is vague. Measures should deal with incoming shit and be nuimbers. Facts
should be JMS created names - a measure is spend but a fact is mcm_ooh_spend
A great test of the system would be to try to load and recognize the mast file itself
a blend of codes and drescriptors will hit - how to handle coded data files
generally JMS needs code cleaning updates
	-passing admin id to progress bars so different users can work as admin
    -may need transaction locking if the system really is multi user
    -

*/
select 1;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_new_dimension` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = '' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_new_dimension`(IN schemanamen varchar(255), IN dimensionn Varchar(255))
thisProc: BEGIN
declare testn INT;
declare cleandimension varchar(255);
####1 is the dimension clean in terms of name?
set cleandimension=cleanstring(dimensionn);
####2 does the dimension already exist?
select count(*)
into testn
from information_schema.tables
where table_schema=schemanamen
and table_name=concat('dim_',cleandimension);

if testn>0 then
	update tblSuccess set success=0;
    LEAVE thisProc;
end if;
if testn=0 then
	set @ex=concat('create table ',schemanamen,'.dim_',lower(cleandimension),'(',lower(cleandimension),'id int auto_increment, ',lower(cleandimension),'desc varchar(255) unique, primary key(',cleandimension,'id))');
    prepare stmt from @ex;
    execute stmt;
    deallocate prepare stmt;
end if;

select count(*)
into testn
from information_schema.tables
where table_schema=schemanamen
and table_name=concat('tbl',cleandimension);
if testn>0 then
	update tblSuccess set success=0;
    LEAVE thisProc;
end if;

if testn=0 then
	set @ex=concat('create table ',schemanamen,'.tbl',cleandimension,'(',lower(cleandimension),'id int, ',lower(cleandimension),' varchar(1000) UNIQUE, primary key(',cleandimension,'))');
    prepare stmt from @ex;
    execute stmt;
    deallocate prepare stmt;
end if;
update tblSUccess set success=1;

set @ex=concat('insert ignore ',schemanamen,'.dim_dimension (dimensiondesc) values (\'',upper(cleandimension),'\')');
prepare stmt from @ex;
execute stmt;
deallocate prepare stmt;
####3 create tblDimension
####4 create dim_dimension


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-19 17:12:46
