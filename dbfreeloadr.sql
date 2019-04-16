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
  `typer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fieldid`),
  UNIQUE KEY `fielddesc` (`fielddesc`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_field`
--

LOCK TABLES `dim_field` WRITE;
/*!40000 ALTER TABLE `dim_field` DISABLE KEYS */;
INSERT INTO `dim_field` VALUES (7,'prodid',NULL),(8,'cid',NULL),(9,'ctypeid',NULL),(10,'pid',NULL),(11,'ptypeid',NULL),(12,'weight',NULL),(13,'pctcinp',NULL),(14,'pctpinc',NULL),(25,'variable',NULL),(26,' Sum of oldv ',NULL),(27,' Sum of newv ',NULL),(28,' Sum of Field1 ',NULL),(31,'Sumofoldv',NULL),(32,'Sumofnewv',NULL),(33,'SumofField1',NULL),(50,'bucket',NULL);
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
  `mime` varchar(255) DEFAULT NULL,
  `typer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fileid`),
  UNIQUE KEY `filedesc` (`filedesc`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_file`
--

LOCK TABLES `dim_file` WRITE;
/*!40000 ALTER TABLE `dim_file` DISABLE KEYS */;
INSERT INTO `dim_file` VALUES (1,'barimage.bmp',NULL,NULL,'raster-image'),(2,'MPZ SCHEMA 20190327.xlsx',NULL,NULL,'executablearchivedocument'),(3,'x2.csv',NULL,NULL,'text/ascii'),(121,'issues.csv',NULL,NULL,'text/ascii'),(128,'issues - Copy.csv',NULL,NULL,'text/ascii'),(129,'mpz_base_variable_tactic_ref_ca.csv',NULL,NULL,'text/ascii');
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
  `typer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`setid`),
  UNIQUE KEY `setdesc` (`setdesc`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dim_set`
--

LOCK TABLES `dim_set` WRITE;
/*!40000 ALTER TABLE `dim_set` DISABLE KEYS */;
INSERT INTO `dim_set` VALUES (1,'x2.csv',NULL),(11,'issues.csv',NULL),(18,'issues - Copy.csv',NULL),(19,'mpz_base_variable_tactic_ref_ca.csv',NULL);
/*!40000 ALTER TABLE `dim_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lkup_file_set`
--

DROP TABLE IF EXISTS `lkup_file_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lkup_file_set` (
  `fileid` int(11) NOT NULL,
  `setid` int(11) NOT NULL,
  PRIMARY KEY (`fileid`,`setid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lkup_file_set`
--

LOCK TABLES `lkup_file_set` WRITE;
/*!40000 ALTER TABLE `lkup_file_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `lkup_file_set` ENABLE KEYS */;
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
INSERT INTO `lkup_set_field` VALUES (1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(11,7),(11,25),(11,26),(11,27),(11,28),(11,31),(11,32),(11,33),(18,7),(18,25),(18,31),(18,32),(18,33),(19,25),(19,50);
/*!40000 ALTER TABLE `lkup_set_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp1`
--

DROP TABLE IF EXISTS `temp1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp1` (
  `index` bigint(20) DEFAULT NULL,
  `variable` varchar(63) DEFAULT NULL,
  `bucket` varchar(63) DEFAULT NULL,
  KEY `ix_temp1_index` (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp1`
--

LOCK TABLES `temp1` WRITE;
/*!40000 ALTER TABLE `temp1` DISABLE KEYS */;
INSERT INTO `temp1` VALUES (0,'cbs_gas','BASE'),(1,'cbs_temp','BASE'),(2,'cbs_unemp','BASE'),(3,'comp_budlight_other_spend','BASE'),(4,'comp_budweiser_other_spend','BASE'),(5,'comp_corona_other_spend','BASE'),(6,'comp_heinekennv_other_spend','BASE'),(7,'comp_TV_BUDLIGHT_spend','BASE'),(8,'comp_TV_BUDWEISER_spend','BASE'),(9,'comp_TV_CANADIAN_spend','BASE'),(10,'comp_TV_CANADIAN67_spend','BASE'),(11,'comp_TV_COORSBANQUET_spend','BASE'),(12,'comp_TV_COORSLIGHT_spend','BASE'),(13,'comp_TV_CORONA_spend','BASE'),(14,'comp_TV_HEINEKENNV_spend','BASE'),(15,'comp_TV_MGD_spend','BASE'),(16,'comp_TV_STELLAARTOIS_spend','BASE'),(17,'comp1_netpr','BASE'),(18,'comp10_netpr','BASE'),(19,'comp11_netpr','BASE'),(20,'comp2_netpr','BASE'),(21,'comp3_netpr','BASE'),(22,'comp4_netpr','BASE'),(23,'comp5_netpr','BASE'),(24,'comp6_netpr','BASE'),(25,'comp7_netpr','BASE'),(26,'comp8_netpr','BASE'),(27,'comp9_netpr','BASE'),(28,'hol_canada','BASE'),(29,'hol_newyear','BASE'),(30,'hol_province','BASE'),(31,'hol_thx','BASE'),(32,'hol_victoria','BASE'),(33,'hol_xmass','BASE'),(34,'nit_cat_economy','BASE'),(35,'nit_catshr_abovepremium','BASE'),(36,'season','BASE'),(37,'stm_basenetpr','BASE'),(38,'stm_pts_ma13','BASE'),(39,'comp_heineken00_dig_imps','COMP'),(40,'comp_heineken00_ooh_cost','COMP'),(41,'comp_heineken00_social_imps','COMP'),(42,'comp_heineken00_tv_trps','COMP'),(43,'mec_digao_imps','DIGITAL'),(44,'mec_digonvideo_imps','DIGITAL'),(45,'stm_pctdisc12pk','DISCOUNTING'),(46,'stm_pctdisc12pk_cost','DISCOUNTING'),(47,'stm_pctdisc18pk','DISCOUNTING'),(48,'stm_pctdisc18pk_cost','DISCOUNTING'),(49,'stm_pctdisc24pk','DISCOUNTING'),(50,'stm_pctdisc24pk_cost','DISCOUNTING'),(51,'stm_pctdisc6pk','DISCOUNTING'),(52,'stm_pctdisc6pk_cost','DISCOUNTING'),(53,'stm_pctdiscaopk','DISCOUNTING'),(54,'stm_pctdiscaopk_cost','DISCOUNTING'),(55,'DV','DV'),(56,'mec_ooh_cost','OOH'),(57,'mec_publicrelations_imps','PR'),(58,'mec_print_cost','PRNT'),(59,'mec_print20132016_cost','PRNT'),(60,'mec_print2017_cost','PRNT'),(61,'moc_display_cost','PTE'),(62,'moc_incentive_cost','PTE'),(63,'moc_merch_cost','PTE'),(64,'moc_pos_cost','PTE'),(65,'moc_sampling_cost','PTE'),(66,'moc_sponsor_cost','PTE'),(67,'moc_sweeps_cost','PTE'),(68,'mec_radio_grps','RADIO'),(69,'mec_radio2013201704_grps','RADIO'),(70,'mec_radio20170506_grps','RADIO'),(71,'lto_stuff','RETAILING'),(72,'moc_retailpromotion_cost','RETAILING'),(73,'mec_digsearch_clicks','SEARCH'),(74,'mec_digsnap_imps','SOCIAL'),(75,'mec_fb_imps','SOCIAL'),(76,'mec_insta_imps','SOCIAL'),(77,'mec_twtr_imps','SOCIAL'),(78,'mec_tv_trps','TV'),(79,'mec_tv20132016_trps','TV'),(80,'mec_tv2017_trps','TV');
/*!40000 ALTER TABLE `temp1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dbfreeloadr'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-16 10:04:22
