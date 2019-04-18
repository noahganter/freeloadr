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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_file`
--

LOCK TABLES `dim_file` WRITE;
/*!40000 ALTER TABLE `dim_file` DISABLE KEYS */;
INSERT INTO `dim_file` VALUES (1,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text',1,'2019-04-18 14:06:14',NULL,NULL),(2,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text',1,'2019-04-18 14:06:36',NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_set`
--

LOCK TABLES `dim_set` WRITE;
/*!40000 ALTER TABLE `dim_set` DISABLE KEYS */;
INSERT INTO `dim_set` VALUES (1,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text','2019-04-18 14:06:14',1,40,NULL),(2,'Book1.csv','.csv','9f120146a38aebaefda0479e3a94283b','text','2019-04-18 14:06:36',2,40,NULL);
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
  `cardinality` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfields`
--

LOCK TABLES `tblfields` WRITE;
/*!40000 ALTER TABLE `tblfields` DISABLE KEYS */;
INSERT INTO `tblfields` VALUES ('product','product','product','text','NONE',2,0.95),('week','week','period','text','NONE',39,0.025),('volume','volume','volume','double','NONE',40,0),('Market','Market','Market','text','NONE',2,0.95);
/*!40000 ALTER TABLE `tblfields` ENABLE KEYS */;
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_cardinality`()
BEGIN
declare done INT DEFAULT FALSE;
declare vColumn varchar(255);
declare testn INT;
declare vOutputSQL varchar(1000);
declare vSpend varchar(255);
declare vImps varchar(255);
declare cur_header cursor for
select clean_name
from tblFields;



DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
/***insert any fact names into dim_fact where the fact is not in dim fact****/

/***now begin inserting****/
open cur_header;
read_loop: LOOP

fetch cur_header into vColumn;
IF done THEN
	LEAVE read_loop;
END IF;

set @ex=concat('select @val:= count(*) 
               from (select distinct ',vcolumn,' from temp1) a');
prepare stmt from @ex;
execute stmt;
deallocate prepare stmt;
update tblFields set unique_values=@val where clean_name=vColumn;


set @ex=concat('select @bal:=1-(@val/count(*)) ',vcolumn,' from temp1');
prepare stmt from @ex;
execute stmt;
deallocate prepare stmt;
update tblFields set cardinality=@bal where clean_name=vColumn;


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
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_fieldCheck`()
BEGIN
	update tblFields a, (
    select column_name, data_type from 
    information_Schema.columns
    where table_schema=schema()
    and table_name='temp1') b
    set a.data_type=b.data_type
    where a.clean_name=b.column_name;
    
    call sp_cardinality();
    update tblFields set mapsto='NONE';
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

-- Dump completed on 2019-04-18 16:04:55
