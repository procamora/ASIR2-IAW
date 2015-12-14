CREATE DATABASE  IF NOT EXISTS `prestadeporte_db` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `prestadeporte_db`;
-- MySQL dump 10.13  Distrib 5.5.16, for Win32 (x86)
--
-- Host: localhost    Database: prestadeporte_db
-- ------------------------------------------------------
-- Server version	5.5.25a

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
-- Table structure for table `ps_2access`
--

DROP TABLE IF EXISTS `ps_2access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2access` (
  `id_profile` int(10) unsigned NOT NULL,
  `id_tab` int(10) unsigned NOT NULL,
  `view` int(11) NOT NULL,
  `add` int(11) NOT NULL,
  `edit` int(11) NOT NULL,
  `delete` int(11) NOT NULL,
  PRIMARY KEY (`id_profile`,`id_tab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2access`
--

LOCK TABLES `ps_2access` WRITE;
/*!40000 ALTER TABLE `ps_2access` DISABLE KEYS */;
INSERT INTO `ps_2access` VALUES (1,0,1,1,1,1),(1,1,1,1,1,1),(1,5,1,1,1,1),(1,7,1,1,1,1),(1,9,1,1,1,1),(1,10,1,1,1,1),(1,11,1,1,1,1),(1,13,1,1,1,1),(1,14,1,1,1,1),(1,15,1,1,1,1),(1,16,1,1,1,1),(1,19,1,1,1,1),(1,20,1,1,1,1),(1,21,1,1,1,1),(1,22,1,1,1,1),(1,23,1,1,1,1),(1,24,1,1,1,1),(1,25,1,1,1,1),(1,26,1,1,1,1),(1,27,1,1,1,1),(1,28,1,1,1,1),(1,29,1,1,1,1),(1,30,1,1,1,1),(1,32,1,1,1,1),(1,33,1,1,1,1),(1,34,1,1,1,1),(1,35,1,1,1,1),(1,36,1,1,1,1),(1,37,1,1,1,1),(1,39,1,1,1,1),(1,40,1,1,1,1),(1,41,1,1,1,1),(1,42,1,1,1,1),(1,43,1,1,1,1),(1,45,1,1,1,1),(1,46,1,1,1,1),(1,49,1,1,1,1),(1,50,1,1,1,1),(1,51,1,1,1,1),(1,53,1,1,1,1),(1,54,1,1,1,1),(1,55,1,1,1,1),(1,56,1,1,1,1),(1,57,1,1,1,1),(1,58,1,1,1,1),(1,59,1,1,1,1),(1,60,1,1,1,1),(1,62,1,1,1,1),(1,63,1,1,1,1),(1,64,1,1,1,1),(1,67,1,1,1,1),(1,68,1,1,1,1),(1,69,1,1,1,1),(1,70,1,1,1,1),(1,71,1,1,1,1),(1,72,1,1,1,1),(1,74,1,1,1,1),(1,75,1,1,1,1),(1,76,1,1,1,1),(1,77,1,1,1,1),(1,78,1,1,1,1),(1,79,1,1,1,1),(1,81,1,1,1,1),(1,82,1,1,1,1),(1,83,1,1,1,1),(1,84,1,1,1,1),(1,85,1,1,1,1),(1,87,1,1,1,1),(1,88,1,1,1,1),(1,89,1,1,1,1),(1,90,1,1,1,1),(1,93,1,1,1,1),(1,94,1,1,1,1),(1,95,1,1,1,1),(1,96,1,1,1,1),(1,97,1,1,1,1),(1,100,1,1,1,1),(1,101,1,1,1,1);
/*!40000 ALTER TABLE `ps_2access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2accessory`
--

DROP TABLE IF EXISTS `ps_2accessory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2accessory` (
  `id_product_1` int(10) unsigned NOT NULL,
  `id_product_2` int(10) unsigned NOT NULL,
  KEY `accessory_product` (`id_product_1`,`id_product_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2accessory`
--

LOCK TABLES `ps_2accessory` WRITE;
/*!40000 ALTER TABLE `ps_2accessory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2accessory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2address`
--

DROP TABLE IF EXISTS `ps_2address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2address` (
  `id_address` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(10) unsigned NOT NULL,
  `id_state` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned NOT NULL DEFAULT '0',
  `id_manufacturer` int(10) unsigned NOT NULL DEFAULT '0',
  `id_supplier` int(10) unsigned NOT NULL DEFAULT '0',
  `id_warehouse` int(10) unsigned NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL,
  `company` varchar(64) DEFAULT NULL,
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `postcode` varchar(12) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `other` text,
  `phone` varchar(16) DEFAULT NULL,
  `phone_mobile` varchar(16) DEFAULT NULL,
  `vat_number` varchar(32) DEFAULT NULL,
  `dni` varchar(16) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_address`),
  KEY `address_customer` (`id_customer`),
  KEY `id_country` (`id_country`),
  KEY `id_state` (`id_state`),
  KEY `id_manufacturer` (`id_manufacturer`),
  KEY `id_supplier` (`id_supplier`),
  KEY `id_warehouse` (`id_warehouse`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2address`
--

LOCK TABLES `ps_2address` WRITE;
/*!40000 ALTER TABLE `ps_2address` DISABLE KEYS */;
INSERT INTO `ps_2address` VALUES (1,6,0,1,0,0,0,'kike','','lopez','kike','c/wssell de guimbarda','','30210','cartagena','','666666666','','','222222222r','2013-03-06 17:45:30','2013-03-06 18:17:45',1,1),(2,6,0,1,0,0,0,'kike2','Bluegarlic Electronic Trade Ltd.','lopez','kike','c/carlos III','','30210','cartagena','','888888888','','','33333333e','2013-03-06 17:52:05','2013-03-06 18:17:49',1,1),(3,6,0,2,0,0,0,'luis','Bluegarlic Electronic Trade Ltd.','rodriguez','luis','c/carlos III','c/wssell de guimbarda','30210','cartagena','','968081516','654789321','','23055447T','2013-03-06 18:04:42','2013-03-06 18:17:52',1,1),(4,6,0,2,0,0,0,'kike','Bluegarlic Electronic Trade Ltd.','rodriguez','luis','c/wssell de guimbarda','','30210','cartagena','','968081516','654789321','','23055447T','2013-03-06 18:18:54','2013-03-06 18:20:58',1,1),(5,6,0,1,0,0,0,'kike','Bluegarlic Electronic Trade Ltd.','lopez','kike','c/wssell de guimbarda','c/carlosIII','30210','cartagena','','968081516','654789321','','222222222r','2013-03-06 18:21:42','2013-03-06 18:29:16',1,1),(6,6,0,2,0,0,0,'luis1','Bluegarlic Electronic Trade Ltd.','rodriguez','luis','c/wssell de guimbarda','c/carlosIII','30210','cartagena','','968081516','654789321','','222222222r','2013-03-06 18:23:07','2013-03-06 18:29:24',1,0);
/*!40000 ALTER TABLE `ps_2address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2address_format`
--

DROP TABLE IF EXISTS `ps_2address_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2address_format` (
  `id_country` int(10) unsigned NOT NULL,
  `format` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2address_format`
--

LOCK TABLES `ps_2address_format` WRITE;
/*!40000 ALTER TABLE `ps_2address_format` DISABLE KEYS */;
INSERT INTO `ps_2address_format` VALUES (1,'firstname lastname\r\ncompany\r\nvat_number\r\naddress1\r\naddress2\r\npostcode city\r\nCountry:name\r\nphone'),(2,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(3,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(4,'firstname lastname\ncompany\naddress1\naddress2\ncity State:name postcode\nCountry:name\nphone'),(5,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(6,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(7,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(8,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(9,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(10,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone'),(11,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone'),(12,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(13,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(14,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(15,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(16,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(17,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(18,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(19,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(20,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(21,'firstname lastname\ncompany\naddress1 address2\ncity, State:name postcode\nCountry:name\nphone'),(22,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(23,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(24,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(25,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(26,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(27,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(28,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(29,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(30,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(31,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(32,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(33,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(34,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(35,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(36,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(37,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(38,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(39,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(40,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(41,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(42,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(43,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(44,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone'),(45,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(46,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(47,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(48,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(49,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(50,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(51,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(52,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(53,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(54,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(55,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(56,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(57,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(58,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(59,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(60,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(61,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(62,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(63,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(64,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(65,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(66,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(67,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(68,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(69,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(70,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(71,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(72,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(73,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(74,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(75,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(76,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(77,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(78,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(79,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(80,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(81,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(82,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(83,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(84,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(85,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(86,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(87,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(88,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(89,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(90,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(91,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(92,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(93,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(94,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(95,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(96,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(97,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(98,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(99,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(100,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(101,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(102,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(103,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(104,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(105,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(106,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(107,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(108,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(109,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(110,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(111,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone'),(112,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(113,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(114,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(115,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(116,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(117,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(118,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(119,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(120,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(121,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(122,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(123,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(124,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(125,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(126,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(127,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(128,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(129,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(130,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(131,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(132,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(133,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(134,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(135,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(136,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(137,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(138,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(139,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(140,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(141,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(142,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(143,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(144,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(145,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone'),(146,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(147,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(148,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(149,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(150,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(151,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(152,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(153,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(154,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(155,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(156,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(157,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(158,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(159,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(160,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(161,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(162,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(163,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(164,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(165,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(166,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(167,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(168,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(169,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(170,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(171,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(172,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(173,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(174,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(175,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(176,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(177,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(178,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(179,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(180,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(181,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(182,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(183,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(184,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(185,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(186,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(187,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(188,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(189,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(190,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(191,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(192,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(193,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(194,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(195,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(196,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(197,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(198,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(199,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(200,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(201,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(202,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(203,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(204,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(205,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(206,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(207,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(208,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(209,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(210,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(211,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(212,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(213,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(214,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(215,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(216,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(217,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(218,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(219,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(220,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(221,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(222,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(223,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(224,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(225,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(226,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(227,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(228,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(229,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(230,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(231,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(232,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(233,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(234,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(235,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(236,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(237,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(238,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(239,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(240,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(241,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(242,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(243,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(244,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone'),(245,'firstname lastname\r\ncompany\r\nvat_number\r\naddress1\r\naddress2\r\npostcode city\r\nCountry:name\r\nphone');
/*!40000 ALTER TABLE `ps_2address_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2alias`
--

DROP TABLE IF EXISTS `ps_2alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2alias` (
  `id_alias` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `search` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_alias`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2alias`
--

LOCK TABLES `ps_2alias` WRITE;
/*!40000 ALTER TABLE `ps_2alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2attachment`
--

DROP TABLE IF EXISTS `ps_2attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2attachment` (
  `id_attachment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(40) NOT NULL,
  `file_name` varchar(128) NOT NULL,
  `mime` varchar(128) NOT NULL,
  PRIMARY KEY (`id_attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2attachment`
--

LOCK TABLES `ps_2attachment` WRITE;
/*!40000 ALTER TABLE `ps_2attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2attachment_lang`
--

DROP TABLE IF EXISTS `ps_2attachment_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2attachment_lang` (
  `id_attachment` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id_attachment`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2attachment_lang`
--

LOCK TABLES `ps_2attachment_lang` WRITE;
/*!40000 ALTER TABLE `ps_2attachment_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2attachment_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2attribute`
--

DROP TABLE IF EXISTS `ps_2attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2attribute` (
  `id_attribute` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_attribute_group` int(10) unsigned NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_attribute`),
  KEY `attribute_group` (`id_attribute_group`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2attribute`
--

LOCK TABLES `ps_2attribute` WRITE;
/*!40000 ALTER TABLE `ps_2attribute` DISABLE KEYS */;
INSERT INTO `ps_2attribute` VALUES (1,1,'',0),(2,1,'',1),(3,1,'',2),(4,1,'',3),(5,1,'',4),(6,2,'#ff0000',0),(7,2,'#ffffff',1),(8,2,'#000000',2),(9,2,'#ff8a3d',3),(10,2,'#ff0000',4),(11,2,'#000000',5),(12,2,'#ffffff',6);
/*!40000 ALTER TABLE `ps_2attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2attribute_group`
--

DROP TABLE IF EXISTS `ps_2attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2attribute_group` (
  `id_attribute_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_color_group` tinyint(1) NOT NULL DEFAULT '0',
  `group_type` enum('select','radio','color') NOT NULL DEFAULT 'select',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_attribute_group`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2attribute_group`
--

LOCK TABLES `ps_2attribute_group` WRITE;
/*!40000 ALTER TABLE `ps_2attribute_group` DISABLE KEYS */;
INSERT INTO `ps_2attribute_group` VALUES (1,0,'select',0),(2,0,'color',1);
/*!40000 ALTER TABLE `ps_2attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2attribute_group_lang`
--

DROP TABLE IF EXISTS `ps_2attribute_group_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2attribute_group_lang` (
  `id_attribute_group` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `public_name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_attribute_group`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2attribute_group_lang`
--

LOCK TABLES `ps_2attribute_group_lang` WRITE;
/*!40000 ALTER TABLE `ps_2attribute_group_lang` DISABLE KEYS */;
INSERT INTO `ps_2attribute_group_lang` VALUES (1,1,'talla','talla'),(1,2,'talla','talla'),(1,3,'talla','talla'),(1,4,'talla','talla'),(1,5,'talla','talla'),(1,6,'talla','talla'),(1,7,'talla','talla'),(1,8,'talla','talla'),(2,1,'color','color'),(2,2,'color','color'),(2,3,'color','color'),(2,4,'color','color'),(2,5,'color','color'),(2,6,'color','color'),(2,7,'color','color'),(2,8,'color','color');
/*!40000 ALTER TABLE `ps_2attribute_group_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2attribute_group_shop`
--

DROP TABLE IF EXISTS `ps_2attribute_group_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2attribute_group_shop` (
  `id_attribute_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_attribute_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2attribute_group_shop`
--

LOCK TABLES `ps_2attribute_group_shop` WRITE;
/*!40000 ALTER TABLE `ps_2attribute_group_shop` DISABLE KEYS */;
INSERT INTO `ps_2attribute_group_shop` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `ps_2attribute_group_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2attribute_impact`
--

DROP TABLE IF EXISTS `ps_2attribute_impact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2attribute_impact` (
  `id_attribute_impact` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_attribute` int(11) unsigned NOT NULL,
  `weight` decimal(20,6) NOT NULL,
  `price` decimal(17,2) NOT NULL,
  PRIMARY KEY (`id_attribute_impact`),
  UNIQUE KEY `id_product` (`id_product`,`id_attribute`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2attribute_impact`
--

LOCK TABLES `ps_2attribute_impact` WRITE;
/*!40000 ALTER TABLE `ps_2attribute_impact` DISABLE KEYS */;
INSERT INTO `ps_2attribute_impact` VALUES (1,4,6,0.000000,0.00),(2,4,7,0.000000,0.00),(3,4,8,0.000000,0.00),(4,4,1,0.000000,0.00),(5,4,2,0.000000,0.00),(6,4,3,0.000000,0.00),(7,4,4,0.000000,0.00),(8,4,5,0.000000,0.00),(9,5,9,0.000000,0.00),(10,5,1,0.000000,0.00),(11,5,2,0.000000,0.00),(12,5,3,0.000000,0.00),(13,5,4,0.000000,0.00),(14,5,5,0.000000,0.00),(15,6,6,0.000000,0.00),(16,6,7,0.000000,0.00),(17,6,8,0.000000,0.00),(18,6,9,0.000000,0.00),(19,6,10,0.000000,0.00),(20,6,11,0.000000,0.00),(21,6,12,0.000000,0.00),(22,6,1,0.000000,0.00),(23,6,2,0.000000,0.00),(24,6,3,0.000000,0.00),(25,6,4,0.000000,0.00),(26,6,5,0.000000,0.00),(27,7,6,0.000000,0.00),(28,7,7,0.000000,0.00),(29,7,8,0.000000,0.00),(30,7,3,0.000000,0.00),(31,7,4,0.000000,0.00),(32,7,5,0.000000,0.00);
/*!40000 ALTER TABLE `ps_2attribute_impact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2attribute_lang`
--

DROP TABLE IF EXISTS `ps_2attribute_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2attribute_lang` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_lang`),
  KEY `id_lang` (`id_lang`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2attribute_lang`
--

LOCK TABLES `ps_2attribute_lang` WRITE;
/*!40000 ALTER TABLE `ps_2attribute_lang` DISABLE KEYS */;
INSERT INTO `ps_2attribute_lang` VALUES (11,1,'black'),(7,1,'blanco'),(2,1,'L'),(3,1,'M'),(9,1,'naranja'),(8,1,'negro'),(10,1,'red'),(6,1,'rojo'),(1,1,'s'),(12,1,'white'),(4,1,'xl'),(5,1,'XXL'),(11,2,'black'),(7,2,'blanco'),(2,2,'L'),(3,2,'M'),(9,2,'naranja'),(8,2,'negro'),(10,2,'red'),(6,2,'rojo'),(1,2,'s'),(12,2,'white'),(4,2,'xl'),(5,2,'XXL'),(11,3,'black'),(7,3,'blanco'),(2,3,'L'),(3,3,'M'),(9,3,'naranja'),(8,3,'negro'),(10,3,'red'),(6,3,'rojo'),(1,3,'s'),(12,3,'white'),(4,3,'xl'),(5,3,'XXL'),(11,4,'black'),(7,4,'blanco'),(2,4,'L'),(3,4,'M'),(9,4,'naranja'),(8,4,'negro'),(10,4,'red'),(6,4,'rojo'),(1,4,'s'),(12,4,'white'),(4,4,'xl'),(5,4,'XXL'),(11,5,'black'),(7,5,'blanco'),(2,5,'L'),(3,5,'M'),(9,5,'naranja'),(8,5,'negro'),(10,5,'red'),(6,5,'rojo'),(1,5,'s'),(12,5,'white'),(4,5,'xl'),(5,5,'XXL'),(11,6,'black'),(7,6,'blanco'),(2,6,'L'),(3,6,'M'),(9,6,'naranja'),(8,6,'negro'),(10,6,'red'),(6,6,'rojo'),(1,6,'s'),(12,6,'white'),(4,6,'xl'),(5,6,'XXL'),(11,7,'black'),(7,7,'blanco'),(2,7,'L'),(3,7,'M'),(9,7,'naranja'),(8,7,'negro'),(10,7,'red'),(6,7,'rojo'),(1,7,'s'),(12,7,'white'),(4,7,'xl'),(5,7,'XXL'),(11,8,'black'),(7,8,'blanco'),(2,8,'L'),(3,8,'M'),(9,8,'naranja'),(8,8,'negro'),(10,8,'red'),(6,8,'rojo'),(1,8,'s'),(12,8,'white'),(4,8,'xl'),(5,8,'XXL');
/*!40000 ALTER TABLE `ps_2attribute_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2attribute_shop`
--

DROP TABLE IF EXISTS `ps_2attribute_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2attribute_shop` (
  `id_attribute` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2attribute_shop`
--

LOCK TABLES `ps_2attribute_shop` WRITE;
/*!40000 ALTER TABLE `ps_2attribute_shop` DISABLE KEYS */;
INSERT INTO `ps_2attribute_shop` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1);
/*!40000 ALTER TABLE `ps_2attribute_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2carrier`
--

DROP TABLE IF EXISTS `ps_2carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2carrier` (
  `id_carrier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_reference` int(10) unsigned NOT NULL,
  `id_tax_rules_group` int(10) unsigned DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_handling` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `range_behavior` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_module` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_free` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipping_external` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `need_range` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `external_module_name` varchar(64) DEFAULT NULL,
  `shipping_method` int(2) NOT NULL DEFAULT '0',
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `max_width` int(10) DEFAULT '0',
  `max_height` int(10) DEFAULT '0',
  `max_depth` int(10) DEFAULT '0',
  `max_weight` int(10) DEFAULT '0',
  `grade` int(10) DEFAULT '0',
  PRIMARY KEY (`id_carrier`),
  KEY `deleted` (`deleted`,`active`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2carrier`
--

LOCK TABLES `ps_2carrier` WRITE;
/*!40000 ALTER TABLE `ps_2carrier` DISABLE KEYS */;
INSERT INTO `ps_2carrier` VALUES (1,1,0,'Bluegarlic Electronic Trade Ltd.','',1,1,0,0,0,0,0,0,'',0,0,0,0,0,0,0),(2,1,0,'Bluegarlic Electronic Trade Ltd.','',1,1,0,0,0,0,0,0,'',0,0,0,0,0,0,0),(3,1,0,'Bluegarlic Electronic Trade Ltd.','',1,1,0,0,0,0,0,0,'',0,0,0,0,0,10,1),(4,1,0,'Bluegarlic Electronic Trade Ltd.','',1,0,0,0,0,0,0,0,'',0,0,0,0,0,10,1);
/*!40000 ALTER TABLE `ps_2carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2carrier_group`
--

DROP TABLE IF EXISTS `ps_2carrier_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2carrier_group` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2carrier_group`
--

LOCK TABLES `ps_2carrier_group` WRITE;
/*!40000 ALTER TABLE `ps_2carrier_group` DISABLE KEYS */;
INSERT INTO `ps_2carrier_group` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,3);
/*!40000 ALTER TABLE `ps_2carrier_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2carrier_lang`
--

DROP TABLE IF EXISTS `ps_2carrier_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2carrier_lang` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `delay` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_lang`,`id_shop`,`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2carrier_lang`
--

LOCK TABLES `ps_2carrier_lang` WRITE;
/*!40000 ALTER TABLE `ps_2carrier_lang` DISABLE KEYS */;
INSERT INTO `ps_2carrier_lang` VALUES (1,1,1,'Pick up in-store'),(2,1,1,'Pick up in-store'),(3,1,1,'Pick up in-store'),(4,1,1,'Pick up in-store'),(1,1,2,'Pick up in-store'),(2,1,2,'Pick up in-store'),(3,1,2,'Pick up in-store'),(4,1,2,'Pick up in-store'),(1,1,3,'Abholung im Geschäft'),(2,1,3,'Abholung im Geschäft'),(3,1,3,'Abholung im Geschäft'),(4,1,3,'Abholung im Geschäft'),(1,1,4,'Recogida en la tienda'),(2,1,4,'Recogida en la tienda'),(3,1,4,'Recogida en la tienda'),(4,1,4,'Recogida en la tienda'),(1,1,5,'Retrait au magasin'),(2,1,5,'Retrait au magasin'),(3,1,5,'Retrait au magasin'),(4,1,5,'Retrait au magasin'),(1,1,6,'Ritiro in magazzino'),(2,1,6,'Ritiro in magazzino'),(3,1,6,'Ritiro in magazzino'),(4,1,6,'Ritiro in magazzino'),(1,1,7,'Recogida en la tienda'),(2,1,7,'Recogida en la tienda'),(3,1,7,'Recogida en la tienda'),(4,1,7,'Recogida en la tienda'),(1,1,8,'Recogida en la tienda'),(2,1,8,'Recogida en la tienda'),(3,1,8,'Recogida en la tienda'),(4,1,8,'Recogida en la tienda');
/*!40000 ALTER TABLE `ps_2carrier_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2carrier_shop`
--

DROP TABLE IF EXISTS `ps_2carrier_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2carrier_shop` (
  `id_carrier` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2carrier_shop`
--

LOCK TABLES `ps_2carrier_shop` WRITE;
/*!40000 ALTER TABLE `ps_2carrier_shop` DISABLE KEYS */;
INSERT INTO `ps_2carrier_shop` VALUES (1,1),(2,1),(3,1),(4,1);
/*!40000 ALTER TABLE `ps_2carrier_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2carrier_tax_rules_group_shop`
--

DROP TABLE IF EXISTS `ps_2carrier_tax_rules_group_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2carrier_tax_rules_group_shop` (
  `id_carrier` int(11) unsigned NOT NULL,
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_tax_rules_group`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2carrier_tax_rules_group_shop`
--

LOCK TABLES `ps_2carrier_tax_rules_group_shop` WRITE;
/*!40000 ALTER TABLE `ps_2carrier_tax_rules_group_shop` DISABLE KEYS */;
INSERT INTO `ps_2carrier_tax_rules_group_shop` VALUES (1,1,1),(2,1,1),(3,1,1),(4,1,1);
/*!40000 ALTER TABLE `ps_2carrier_tax_rules_group_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2carrier_zone`
--

DROP TABLE IF EXISTS `ps_2carrier_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2carrier_zone` (
  `id_carrier` int(10) unsigned NOT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_zone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2carrier_zone`
--

LOCK TABLES `ps_2carrier_zone` WRITE;
/*!40000 ALTER TABLE `ps_2carrier_zone` DISABLE KEYS */;
INSERT INTO `ps_2carrier_zone` VALUES (1,1),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(4,1),(4,7);
/*!40000 ALTER TABLE `ps_2carrier_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cart`
--

DROP TABLE IF EXISTS `ps_2cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cart` (
  `id_cart` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_carrier` int(10) unsigned NOT NULL,
  `delivery_option` text NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL,
  `id_address_invoice` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_guest` int(10) unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `recyclable` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `gift` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `allow_seperated_package` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_cart`),
  KEY `cart_customer` (`id_customer`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_guest` (`id_guest`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cart`
--

LOCK TABLES `ps_2cart` WRITE;
/*!40000 ALTER TABLE `ps_2cart` DISABLE KEYS */;
INSERT INTO `ps_2cart` VALUES (1,1,1,0,'',4,1,1,1,1,1,'8840744415831542c9b93b8312c21cfe',1,0,'',0,'2013-03-06 17:43:42','2013-03-06 17:45:30'),(2,1,1,0,'',4,3,3,1,2,2,'1e20016f56fa3023cb38df82cfb90a3b',1,0,'',0,'2013-03-06 18:03:02','2013-03-06 18:04:42'),(3,1,1,4,'a:1:{i:6;s:2:\"4,\";}',4,6,6,1,2,2,'1e20016f56fa3023cb38df82cfb90a3b',0,0,'',0,'2013-03-06 18:22:29','2013-03-06 18:23:41');
/*!40000 ALTER TABLE `ps_2cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cart_cart_rule`
--

DROP TABLE IF EXISTS `ps_2cart_cart_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cart_cart_rule` (
  `id_cart` int(10) unsigned NOT NULL,
  `id_cart_rule` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart`,`id_cart_rule`),
  KEY `id_cart_rule` (`id_cart_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cart_cart_rule`
--

LOCK TABLES `ps_2cart_cart_rule` WRITE;
/*!40000 ALTER TABLE `ps_2cart_cart_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2cart_cart_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cart_product`
--

DROP TABLE IF EXISTS `ps_2cart_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cart_product` (
  `id_cart` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned DEFAULT '0',
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_product_attribute` int(10) unsigned DEFAULT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  KEY `cart_product_index` (`id_cart`,`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cart_product`
--

LOCK TABLES `ps_2cart_product` WRITE;
/*!40000 ALTER TABLE `ps_2cart_product` DISABLE KEYS */;
INSERT INTO `ps_2cart_product` VALUES (1,4,1,1,16,1,'2013-03-06 17:43:42'),(2,4,3,1,16,1,'2013-03-06 18:03:02'),(3,4,6,1,16,1,'2013-03-06 18:22:29');
/*!40000 ALTER TABLE `ps_2cart_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cart_rule`
--

DROP TABLE IF EXISTS `ps_2cart_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cart_rule` (
  `id_cart_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL DEFAULT '0',
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `description` text,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `quantity_per_user` int(10) unsigned NOT NULL DEFAULT '0',
  `priority` int(10) unsigned NOT NULL DEFAULT '1',
  `partial_use` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `code` varchar(254) NOT NULL,
  `minimum_amount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `minimum_amount_tax` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_amount_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `minimum_amount_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `country_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `carrier_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cart_rule_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `product_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shop_restriction` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `reduction_percent` decimal(5,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `reduction_tax` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `reduction_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `reduction_product` int(10) NOT NULL DEFAULT '0',
  `gift_product` int(10) unsigned NOT NULL DEFAULT '0',
  `gift_product_attribute` int(10) unsigned NOT NULL DEFAULT '0',
  `highlight` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_cart_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cart_rule`
--

LOCK TABLES `ps_2cart_rule` WRITE;
/*!40000 ALTER TABLE `ps_2cart_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2cart_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cart_rule_carrier`
--

DROP TABLE IF EXISTS `ps_2cart_rule_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cart_rule_carrier` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_carrier` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cart_rule_carrier`
--

LOCK TABLES `ps_2cart_rule_carrier` WRITE;
/*!40000 ALTER TABLE `ps_2cart_rule_carrier` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2cart_rule_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cart_rule_combination`
--

DROP TABLE IF EXISTS `ps_2cart_rule_combination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cart_rule_combination` (
  `id_cart_rule_1` int(10) unsigned NOT NULL,
  `id_cart_rule_2` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule_1`,`id_cart_rule_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cart_rule_combination`
--

LOCK TABLES `ps_2cart_rule_combination` WRITE;
/*!40000 ALTER TABLE `ps_2cart_rule_combination` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2cart_rule_combination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cart_rule_country`
--

DROP TABLE IF EXISTS `ps_2cart_rule_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cart_rule_country` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cart_rule_country`
--

LOCK TABLES `ps_2cart_rule_country` WRITE;
/*!40000 ALTER TABLE `ps_2cart_rule_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2cart_rule_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cart_rule_group`
--

DROP TABLE IF EXISTS `ps_2cart_rule_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cart_rule_group` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cart_rule_group`
--

LOCK TABLES `ps_2cart_rule_group` WRITE;
/*!40000 ALTER TABLE `ps_2cart_rule_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2cart_rule_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cart_rule_lang`
--

DROP TABLE IF EXISTS `ps_2cart_rule_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cart_rule_lang` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(254) NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cart_rule_lang`
--

LOCK TABLES `ps_2cart_rule_lang` WRITE;
/*!40000 ALTER TABLE `ps_2cart_rule_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2cart_rule_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cart_rule_product_rule`
--

DROP TABLE IF EXISTS `ps_2cart_rule_product_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cart_rule_product_rule` (
  `id_product_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product_rule_group` int(10) unsigned NOT NULL,
  `type` enum('products','categories','attributes','manufacturers','suppliers') NOT NULL,
  PRIMARY KEY (`id_product_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cart_rule_product_rule`
--

LOCK TABLES `ps_2cart_rule_product_rule` WRITE;
/*!40000 ALTER TABLE `ps_2cart_rule_product_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2cart_rule_product_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cart_rule_product_rule_group`
--

DROP TABLE IF EXISTS `ps_2cart_rule_product_rule_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cart_rule_product_rule_group` (
  `id_product_rule_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cart_rule` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_rule_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cart_rule_product_rule_group`
--

LOCK TABLES `ps_2cart_rule_product_rule_group` WRITE;
/*!40000 ALTER TABLE `ps_2cart_rule_product_rule_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2cart_rule_product_rule_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cart_rule_product_rule_value`
--

DROP TABLE IF EXISTS `ps_2cart_rule_product_rule_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cart_rule_product_rule_value` (
  `id_product_rule` int(10) unsigned NOT NULL,
  `id_item` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product_rule`,`id_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cart_rule_product_rule_value`
--

LOCK TABLES `ps_2cart_rule_product_rule_value` WRITE;
/*!40000 ALTER TABLE `ps_2cart_rule_product_rule_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2cart_rule_product_rule_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cart_rule_shop`
--

DROP TABLE IF EXISTS `ps_2cart_rule_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cart_rule_shop` (
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cart_rule_shop`
--

LOCK TABLES `ps_2cart_rule_shop` WRITE;
/*!40000 ALTER TABLE `ps_2cart_rule_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2cart_rule_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2category`
--

DROP TABLE IF EXISTS `ps_2category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2category` (
  `id_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) unsigned NOT NULL,
  `id_shop_default` int(10) unsigned NOT NULL DEFAULT '1',
  `level_depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `nleft` int(10) unsigned NOT NULL DEFAULT '0',
  `nright` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `is_root_category` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`),
  KEY `category_parent` (`id_parent`),
  KEY `nleftright` (`nleft`,`nright`),
  KEY `nleftrightactive` (`nleft`,`nright`,`active`),
  KEY `level_depth` (`level_depth`),
  KEY `nright` (`nright`),
  KEY `nleft` (`nleft`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2category`
--

LOCK TABLES `ps_2category` WRITE;
/*!40000 ALTER TABLE `ps_2category` DISABLE KEYS */;
INSERT INTO `ps_2category` VALUES (1,0,1,0,1,22,1,'2013-02-21 22:04:13','2013-02-21 22:04:13',0,0),(2,1,1,1,2,21,1,'2013-02-21 22:04:13','2013-02-21 22:04:13',0,1),(3,7,1,3,4,5,1,'2013-02-21 22:14:33','2013-02-21 22:49:11',0,0),(4,7,1,3,8,9,1,'2013-02-21 22:16:52','2013-02-21 22:49:59',2,0),(5,7,1,3,10,11,1,'2013-02-21 22:18:40','2013-02-21 22:50:10',3,0),(6,7,1,3,6,7,1,'2013-02-21 22:19:44','2013-02-21 22:49:44',1,0),(7,2,1,2,3,12,1,'2013-02-21 22:29:08','2013-02-21 22:48:37',0,0),(10,2,1,2,13,20,1,'2013-02-21 22:35:51','2013-02-21 22:50:41',1,0),(11,10,1,3,14,15,1,'2013-02-21 22:38:15','2013-02-21 22:51:15',1,0),(12,10,1,3,16,17,1,'2013-02-21 22:38:53','2013-02-21 22:51:34',1,0),(13,10,1,3,18,19,1,'2013-02-21 22:39:17','2013-02-21 22:51:59',2,0);
/*!40000 ALTER TABLE `ps_2category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2category_group`
--

DROP TABLE IF EXISTS `ps_2category_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2category_group` (
  `id_category` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_category`,`id_group`),
  KEY `id_category` (`id_category`),
  KEY `id_group` (`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2category_group`
--

LOCK TABLES `ps_2category_group` WRITE;
/*!40000 ALTER TABLE `ps_2category_group` DISABLE KEYS */;
INSERT INTO `ps_2category_group` VALUES (1,0),(2,0),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3),(5,1),(5,2),(5,3),(6,1),(6,2),(6,3),(7,1),(7,2),(7,3),(10,1),(10,2),(10,3),(11,1),(11,2),(11,3),(12,1),(12,2),(12,3),(13,1),(13,2),(13,3);
/*!40000 ALTER TABLE `ps_2category_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2category_lang`
--

DROP TABLE IF EXISTS `ps_2category_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2category_lang` (
  `id_category` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_category`,`id_shop`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2category_lang`
--

LOCK TABLES `ps_2category_lang` WRITE;
/*!40000 ALTER TABLE `ps_2category_lang` DISABLE KEYS */;
INSERT INTO `ps_2category_lang` VALUES (1,1,1,'Root','','root','','',''),(1,1,2,'Root','','root','','',''),(1,1,3,'Root','','root','','',''),(1,1,4,'Root','','root','','',''),(1,1,5,'Root','','root','','',''),(1,1,6,'Root','','root','','',''),(1,1,7,'Root','','root','','',''),(1,1,8,'Root','','root','','',''),(2,1,1,'Home','','home','','',''),(2,1,2,'Home','','home','','',''),(2,1,3,'Start','','home','','',''),(2,1,4,'Inicio','','home','','',''),(2,1,5,'Accueil','','home','','',''),(2,1,6,'Home page','','home','','',''),(2,1,7,'Inicio','','home','','',''),(2,1,8,'Inicio','','home','','',''),(3,1,1,'football','','football','','',''),(3,1,2,'futbol','','futbol','','',''),(3,1,3,'futbol','','futbol','','',''),(3,1,4,'futbol','','futbol','','',''),(3,1,5,'futbol','','futbol','','',''),(3,1,6,'futbol','','futbol','','',''),(3,1,7,'futbol','','futbol','','',''),(3,1,8,'futbol','','futbol','','',''),(4,1,1,'basketball','','basketball','','',''),(4,1,2,'baloncesto','','baloncesto','','',''),(4,1,3,'baloncesto','','baloncesto','','',''),(4,1,4,'baloncesto','baloncesto','baloncesto','','',''),(4,1,5,'baloncesto','','baloncesto','','',''),(4,1,6,'baloncesto','','baloncesto','','',''),(4,1,7,'baloncesto','','baloncesto','','',''),(4,1,8,'baloncesto','','baloncesto','','',''),(5,1,1,'tennis','','tennis','','',''),(5,1,2,'tenis','','tenis','','',''),(5,1,3,'tenis','','tenis','','',''),(5,1,4,'tenis','tenis','tenis','','',''),(5,1,5,'tenis','','tenis','','',''),(5,1,6,'tenis','','tenis','','',''),(5,1,7,'tenis','','tenis','','',''),(5,1,8,'tenis','','tenis','','',''),(6,1,1,'cyclism','','cyclism','','',''),(6,1,2,'ciclismo','','ciclismo','','',''),(6,1,3,'ciclismo','','ciclismo','','',''),(6,1,4,'ciclismo','ciclismo','ciclismo','','',''),(6,1,5,'ciclismo','','ciclismo','','',''),(6,1,6,'ciclismo','','ciclismo','','',''),(6,1,7,'ciclismo','','ciclismo','','',''),(6,1,8,'ciclismo','','ciclismo','','',''),(7,1,1,'sports','','sports','','',''),(7,1,2,'deportes','','deportes','','',''),(7,1,3,'deportes','','deportes','','',''),(7,1,4,'deportes','aqui tenemos deportes','deportes','','',''),(7,1,5,'deportes','','deportes','','',''),(7,1,6,'deportes','','deportes','','',''),(7,1,7,'deportes','','deportes','','',''),(7,1,8,'deportes','','deportes','','',''),(10,1,1,'area','','area','','',''),(10,1,2,'area','','area','','',''),(10,1,3,'area','','area','','',''),(10,1,4,'area','areas','area','','',''),(10,1,5,'area','','area','','',''),(10,1,6,'area','','area','','',''),(10,1,7,'area','','area','','',''),(10,1,8,'area','','area','','',''),(11,1,1,'duds','','duds','','',''),(11,1,2,'prendas de vestir','','prendas-de-vestir','','',''),(11,1,3,'prendas de vestir','','prendas-de-vestir','','',''),(11,1,4,'prendas de vestir','areas','prendas-de-vestir','','',''),(11,1,5,'prendas de vestir','','prendas-de-vestir','','',''),(11,1,6,'prendas de vestir','','prendas-de-vestir','','',''),(11,1,7,'prendas de vestir','','prendas-de-vestir','','',''),(11,1,8,'prendas de vestir','','prendas-de-vestir','','',''),(12,1,1,'footwear','','footwear','','',''),(12,1,2,'calzado','','calzado','','',''),(12,1,3,'calzado','','calzado','','',''),(12,1,4,'calzado','calzado','c','','',''),(12,1,5,'calzado','','calzado','','',''),(12,1,6,'calzado','','calzado','','',''),(12,1,7,'calzado','','calzado','','',''),(12,1,8,'calzado','','calzado','','',''),(13,1,1,'kits and accessories','','kits-and-accessories','','',''),(13,1,2,'equipaciones y complementos','','equipaciones-y-complementos','','',''),(13,1,3,'equipaciones y complementos','','equipaciones-y-complementos','','',''),(13,1,4,'equipaciones y complementos','equipaciones y complementos','equipaciones-y-complementos','','',''),(13,1,5,'equipaciones y complementos','','equipaciones-y-complementos','','',''),(13,1,6,'equipaciones y complementos','','equipaciones-y-complementos','','',''),(13,1,7,'equipaciones y complementos','','equipaciones-y-complementos','','',''),(13,1,8,'equipaciones y complementos','','equipaciones-y-complementos','','','');
/*!40000 ALTER TABLE `ps_2category_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2category_product`
--

DROP TABLE IF EXISTS `ps_2category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2category_product` (
  `id_category` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`,`id_product`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2category_product`
--

LOCK TABLES `ps_2category_product` WRITE;
/*!40000 ALTER TABLE `ps_2category_product` DISABLE KEYS */;
INSERT INTO `ps_2category_product` VALUES (2,4,0),(2,5,1),(2,6,2),(2,7,3),(3,4,0),(4,5,0),(5,7,0),(6,6,0);
/*!40000 ALTER TABLE `ps_2category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2category_shop`
--

DROP TABLE IF EXISTS `ps_2category_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2category_shop` (
  `id_category` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2category_shop`
--

LOCK TABLES `ps_2category_shop` WRITE;
/*!40000 ALTER TABLE `ps_2category_shop` DISABLE KEYS */;
INSERT INTO `ps_2category_shop` VALUES (1,1,1),(2,1,1),(3,1,0),(4,1,2),(5,1,3),(6,1,1),(7,1,0),(10,1,1),(11,1,0),(12,1,1),(13,1,2);
/*!40000 ALTER TABLE `ps_2category_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cms`
--

DROP TABLE IF EXISTS `ps_2cms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cms` (
  `id_cms` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_category` int(10) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_cms`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cms`
--

LOCK TABLES `ps_2cms` WRITE;
/*!40000 ALTER TABLE `ps_2cms` DISABLE KEYS */;
INSERT INTO `ps_2cms` VALUES (1,1,0,1),(2,1,1,1),(3,1,2,1),(4,1,3,1),(5,1,4,1);
/*!40000 ALTER TABLE `ps_2cms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cms_block`
--

DROP TABLE IF EXISTS `ps_2cms_block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cms_block` (
  `id_cms_block` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_category` int(10) unsigned NOT NULL,
  `location` tinyint(1) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `display_store` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_cms_block`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cms_block`
--

LOCK TABLES `ps_2cms_block` WRITE;
/*!40000 ALTER TABLE `ps_2cms_block` DISABLE KEYS */;
INSERT INTO `ps_2cms_block` VALUES (1,1,0,0,1);
/*!40000 ALTER TABLE `ps_2cms_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cms_block_lang`
--

DROP TABLE IF EXISTS `ps_2cms_block_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cms_block_lang` (
  `id_cms_block` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_cms_block`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cms_block_lang`
--

LOCK TABLES `ps_2cms_block_lang` WRITE;
/*!40000 ALTER TABLE `ps_2cms_block_lang` DISABLE KEYS */;
INSERT INTO `ps_2cms_block_lang` VALUES (1,1,'Información'),(1,2,'Información'),(1,3,'Información'),(1,4,'Información'),(1,5,'Información'),(1,6,'Información'),(1,7,'Información'),(1,8,'Información');
/*!40000 ALTER TABLE `ps_2cms_block_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cms_block_page`
--

DROP TABLE IF EXISTS `ps_2cms_block_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cms_block_page` (
  `id_cms_block_page` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_block` int(10) unsigned NOT NULL,
  `id_cms` int(10) unsigned NOT NULL,
  `is_category` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id_cms_block_page`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cms_block_page`
--

LOCK TABLES `ps_2cms_block_page` WRITE;
/*!40000 ALTER TABLE `ps_2cms_block_page` DISABLE KEYS */;
INSERT INTO `ps_2cms_block_page` VALUES (1,1,1,0),(2,1,2,0),(3,1,3,0),(4,1,4,0),(5,1,5,0);
/*!40000 ALTER TABLE `ps_2cms_block_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cms_block_shop`
--

DROP TABLE IF EXISTS `ps_2cms_block_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cms_block_shop` (
  `id_cms_block` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_cms_block`,`id_shop`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cms_block_shop`
--

LOCK TABLES `ps_2cms_block_shop` WRITE;
/*!40000 ALTER TABLE `ps_2cms_block_shop` DISABLE KEYS */;
INSERT INTO `ps_2cms_block_shop` VALUES (1,1);
/*!40000 ALTER TABLE `ps_2cms_block_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cms_category`
--

DROP TABLE IF EXISTS `ps_2cms_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cms_category` (
  `id_cms_category` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(10) unsigned NOT NULL,
  `level_depth` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_cms_category`),
  KEY `category_parent` (`id_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cms_category`
--

LOCK TABLES `ps_2cms_category` WRITE;
/*!40000 ALTER TABLE `ps_2cms_category` DISABLE KEYS */;
INSERT INTO `ps_2cms_category` VALUES (1,0,1,1,'2013-02-21 22:04:13','2013-02-21 22:04:13',0);
/*!40000 ALTER TABLE `ps_2cms_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cms_category_lang`
--

DROP TABLE IF EXISTS `ps_2cms_category_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cms_category_lang` (
  `id_cms_category` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cms_category`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cms_category_lang`
--

LOCK TABLES `ps_2cms_category_lang` WRITE;
/*!40000 ALTER TABLE `ps_2cms_category_lang` DISABLE KEYS */;
INSERT INTO `ps_2cms_category_lang` VALUES (1,1,'Home','','home','','',''),(1,2,'Home','','home','','',''),(1,3,'Start','','Start','','',''),(1,4,'Inicio','','home','','',''),(1,5,'Accueil','','home','','',''),(1,6,'Home','','home','','',''),(1,7,'Inicio','','home','','',''),(1,8,'Inicio','','home','','','');
/*!40000 ALTER TABLE `ps_2cms_category_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cms_lang`
--

DROP TABLE IF EXISTS `ps_2cms_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cms_lang` (
  `id_cms` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `meta_title` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `content` longtext,
  `link_rewrite` varchar(128) NOT NULL,
  PRIMARY KEY (`id_cms`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cms_lang`
--

LOCK TABLES `ps_2cms_lang` WRITE;
/*!40000 ALTER TABLE `ps_2cms_lang` DISABLE KEYS */;
INSERT INTO `ps_2cms_lang` VALUES (1,1,'Delivery','Our terms and conditions of delivery','conditions, delivery, delay, shipment, pack','<h2>Shipments and returns</h2><h3>Your pack shipment</h3><p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p><p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>','delivery'),(1,2,'Delivery','Our terms and conditions of delivery','conditions, delivery, delay, shipment, pack','<h2>Shipments and returns</h2><h3>Your pack shipment</h3><p>Packages are generally dispatched within 2 days after receipt of payment and are shipped via UPS with tracking and drop-off without signature. If you prefer delivery by UPS Extra with required signature, an additional cost will be applied, so please contact us before choosing this method. Whichever shipment choice you make, we will provide you with a link to track your package online.</p><p>Shipping fees include handling and packing fees as well as postage costs. Handling fees are fixed, whereas transport fees vary according to total weight of the shipment. We advise you to group your items in one order. We cannot group two distinct orders placed separately, and shipping fees will apply to each of them. Your package will be dispatched at your own risk, but special care is taken to protect fragile objects.<br /><br />Boxes are amply sized and your items are well-protected.</p>','delivery'),(1,3,'Lieferung','Unsere Lieferbedingungen','Bedingungen, Lieferung, Frist, Versand, Verpackung','<h2>Versand und Rücknahme</h2><h3>Ihre Versandverpackung</h3><p>Pakete werden normalerweise 2 Tage nach Zahlungseingang mit UPS mit Bestellverfolgemöglichkeit und Ablieferung ohne Unterschrift geliefert. Wenn Sie lieber eine UPS-Sendung per Einschreiben erhalten möchten, entstehen zusätzliche Kosten. Bitte kontaktieren Sie uns, bevor Sie dieses Liefermethode wählen. Wir senden Ihnen einen Link für die Bestellverfolgung unabhängig davon, welche Liefermethode Sie wählen.</p><p>Die Versandkosten beinhalten Lade- und Verpackungsgebühren sowie die Portokosten. Die Verladegebühren stehen fest, wobei Transportkosten schwanken, je nach Gesamtgewicht des Pakets. Wir raten Ihnen, mehrere Artikel in einer Bestellung zusammenzufassen. Wir können zwei verschiedene Bestellungen nicht zusammenlegen, und die Versandkosten werden separat für jede Bestellung gerechnet. Ihr Paket wird auf Ihr Risiko versandt, aber zerbrechliche Ware wird besonders sorgsam behandelt.<br /><br />Die Versandschachteln sind weit geschnitten und ihre Ware wird gut geschützt verpackt.</p>','Lieferung'),(1,4,'Entrega','Nuestras condiciones de entrega','condiciones, plazos de entrega, transporte, paquetería','<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Livraisons et retours\">shipping & Returns</span></span></h2>\r\n<h3><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Le transport de votre colis\">El transporte de su paquete</span></span></h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Les colis sont généralement expédiés en 48h après réception de votre paiement.\">Los paquetes son generalmente enviados en 48 horas después de la recepción de su pago. </span><span style=\"background-color: #ffffff;\" title=\"Le mode d\'expédition standard est le Colissimo suivi, remis sans signature.\">La moda es el estándar expédition Colissimo seguido, entrega sin firma. </span><span style=\"background-color: #ffffff;\" title=\"Si vous souhaitez une remise avec signature, un coût supplémentaire s\'applique, merci de nous contacter.\">Si desea una entrega con la firma, un cargo adicional, gracias al contacto con nosotros. </span><span style=\"background-color: #ffffff;\" title=\"Quel que soit le mode d\'expédition choisi, nous vous fournirons dès que possible un lien qui vous permettra de suivre en ligne la livraison de votre colis.\">Sea cual sea el método de envío seleccionado, vamos a presentar lo antes posible, un vínculo que le permite rastrear el envío en línea de su paquete.<br /><br /></span><span style=\"background-color: #ffffff;\" title=\"Les frais d\'expédition comprennent l\'emballage, la manutention et les frais postaux.\">Gastos de envío incluyen el embalaje, la manipulación y envío. </span><span style=\"background-color: #ffffff;\" title=\"Ils peuvent contenir une partie fixe et une partie variable en fonction du prix ou du poids de votre commande.\">Pueden contener un fijo y una parte variable basado en el precio o el peso de su solicitud. </span><span style=\"background-color: #ffffff;\" title=\"Nous vous conseillons de regrouper vos achats en une unique commande.\">Le recomendamos que para consolidar sus compras en un solo comando. </span><span style=\"background-color: #ffffff;\" title=\"Nous ne pouvons pas grouper deux commandes distinctes et vous devrez vous acquitter des frais de port pour chacune d\'entre elles.\">No podemos grupo de dos órdenes distintos y hay que pagar gastos de envío para cada uno. </span><span style=\"background-color: #ffffff;\" title=\"Votre colis est expédié à vos propres risques, un soin particulier est apporté au colis contenant des produits fragiles..\">Su paquete es enviado a su propio riesgo, se presta especial atención a las parcelas que contienen objetos frágiles ..<br /><br /></span><span style=\"background-color: #ffffff;\" title=\"Les colis sont surdimensionnés et protégés.\">Los paquetes son de gran tamaño y protegidas.</span></span></p>','entrega'),(1,5,'Livraison','Nos conditions générales de livraison','conditions, livraison, délais, transport, colis','<h2>Livraisons et retours</h2><h3>Le transport de votre colis</h3><p>Les colis sont g&eacute;n&eacute;ralement exp&eacute;di&eacute;s en 48h apr&egrave;s r&eacute;ception de votre paiement. Le mode d\'expédition standard est le Colissimo suivi, remis sans signature. Si vous souhaitez une remise avec signature, un co&ucirc;t suppl&eacute;mentaire s\'applique, merci de nous contacter. Quel que soit le mode d\'expédition choisi, nous vous fournirons d&egrave;s que possible un lien qui vous permettra de suivre en ligne la livraison de votre colis.</p><p>Les frais d\'exp&eacute;dition comprennent l\'emballage, la manutention et les frais postaux. Ils peuvent contenir une partie fixe et une partie variable en fonction du prix ou du poids de votre commande. Nous vous conseillons de regrouper vos achats en une unique commande. Nous ne pouvons pas grouper deux commandes distinctes et vous devrez vous acquitter des frais de port pour chacune d\'entre elles. Votre colis est exp&eacute;di&eacute; &agrave; vos propres risques, un soin particulier est apport&eacute; au colis contenant des produits fragiles..<br /><br />Les colis sont surdimensionn&eacute;s et prot&eacute;g&eacute;s.</p>','livraison'),(1,6,'Consegna','I nostri termini e condizioni di consegna','condizioni, consegna, tempo, spedizione, pacco','<h2>Spedizioni e resi</h2><h3>Spedizione del tuo pacco</h3><p>I pacchi sono solitamente spediti entro 2 giorni dopo il ricevimento del pagamento e inviati tramite UPS con controllo e consegna senza firma. Se preferisci una consegna con UPS Extra con richiesta di firma, sarà applicato un costo aggiuntivo, pertanto contattaci prima di scegliere questo mezzo. Qualunque tipo di spedizione tu scelga, ti garantiremo un link per controllare online il percorso del tuo pacco.</p><p>Le spese di spedizione comprendono le spese di imballaggio e affrancatura. Le spese di imballaggio sono fisse, mentre quelle di trasporto variano in base al peso totale della spedizione. Ti consigliamo di raggruppare i tuoi articoli in un unico ordine. Non possiamo raggruppare due ordini distinti eseguiti separatamente, e ad ognuno di esso saranno applicate le spese di spedizione. Il tuo pacco sarà inviato sotto la tua responsabilità, ma un\'attenzione particolare è riservata agli oggetti fragili.<br /><br />Le scatole hanno dimensioni ragionevoli e i tuoi articoli sono ben protetti.</p>','consegna'),(1,7,'Entrega','Nuestras condiciones de entrega','condiciones, plazos de entrega, transporte, paquetería','<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Livraisons et retours\">shipping & Returns</span></span></h2>\r\n<h3><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Le transport de votre colis\">El transporte de su paquete</span></span></h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Les colis sont généralement expédiés en 48h après réception de votre paiement.\">Los paquetes son generalmente enviados en 48 horas después de la recepción de su pago. </span><span style=\"background-color: #ffffff;\" title=\"Le mode d\'expédition standard est le Colissimo suivi, remis sans signature.\">La moda es el estándar expédition Colissimo seguido, entrega sin firma. </span><span style=\"background-color: #ffffff;\" title=\"Si vous souhaitez une remise avec signature, un coût supplémentaire s\'applique, merci de nous contacter.\">Si desea una entrega con la firma, un cargo adicional, gracias al contacto con nosotros. </span><span style=\"background-color: #ffffff;\" title=\"Quel que soit le mode d\'expédition choisi, nous vous fournirons dès que possible un lien qui vous permettra de suivre en ligne la livraison de votre colis.\">Sea cual sea el método de envío seleccionado, vamos a presentar lo antes posible, un vínculo que le permite rastrear el envío en línea de su paquete.<br /><br /></span><span style=\"background-color: #ffffff;\" title=\"Les frais d\'expédition comprennent l\'emballage, la manutention et les frais postaux.\">Gastos de envío incluyen el embalaje, la manipulación y envío. </span><span style=\"background-color: #ffffff;\" title=\"Ils peuvent contenir une partie fixe et une partie variable en fonction du prix ou du poids de votre commande.\">Pueden contener un fijo y una parte variable basado en el precio o el peso de su solicitud. </span><span style=\"background-color: #ffffff;\" title=\"Nous vous conseillons de regrouper vos achats en une unique commande.\">Le recomendamos que para consolidar sus compras en un solo comando. </span><span style=\"background-color: #ffffff;\" title=\"Nous ne pouvons pas grouper deux commandes distinctes et vous devrez vous acquitter des frais de port pour chacune d\'entre elles.\">No podemos grupo de dos órdenes distintos y hay que pagar gastos de envío para cada uno. </span><span style=\"background-color: #ffffff;\" title=\"Votre colis est expédié à vos propres risques, un soin particulier est apporté au colis contenant des produits fragiles..\">Su paquete es enviado a su propio riesgo, se presta especial atención a las parcelas que contienen objetos frágiles ..<br /><br /></span><span style=\"background-color: #ffffff;\" title=\"Les colis sont surdimensionnés et protégés.\">Los paquetes son de gran tamaño y protegidas.</span></span></p>','entrega'),(1,8,'Entrega','Nuestras condiciones de entrega','condiciones, plazos de entrega, transporte, paquetería','<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Livraisons et retours\">shipping & Returns</span></span></h2>\r\n<h3><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Le transport de votre colis\">El transporte de su paquete</span></span></h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Les colis sont généralement expédiés en 48h après réception de votre paiement.\">Los paquetes son generalmente enviados en 48 horas después de la recepción de su pago. </span><span style=\"background-color: #ffffff;\" title=\"Le mode d\'expédition standard est le Colissimo suivi, remis sans signature.\">La moda es el estándar expédition Colissimo seguido, entrega sin firma. </span><span style=\"background-color: #ffffff;\" title=\"Si vous souhaitez une remise avec signature, un coût supplémentaire s\'applique, merci de nous contacter.\">Si desea una entrega con la firma, un cargo adicional, gracias al contacto con nosotros. </span><span style=\"background-color: #ffffff;\" title=\"Quel que soit le mode d\'expédition choisi, nous vous fournirons dès que possible un lien qui vous permettra de suivre en ligne la livraison de votre colis.\">Sea cual sea el método de envío seleccionado, vamos a presentar lo antes posible, un vínculo que le permite rastrear el envío en línea de su paquete.<br /><br /></span><span style=\"background-color: #ffffff;\" title=\"Les frais d\'expédition comprennent l\'emballage, la manutention et les frais postaux.\">Gastos de envío incluyen el embalaje, la manipulación y envío. </span><span style=\"background-color: #ffffff;\" title=\"Ils peuvent contenir une partie fixe et une partie variable en fonction du prix ou du poids de votre commande.\">Pueden contener un fijo y una parte variable basado en el precio o el peso de su solicitud. </span><span style=\"background-color: #ffffff;\" title=\"Nous vous conseillons de regrouper vos achats en une unique commande.\">Le recomendamos que para consolidar sus compras en un solo comando. </span><span style=\"background-color: #ffffff;\" title=\"Nous ne pouvons pas grouper deux commandes distinctes et vous devrez vous acquitter des frais de port pour chacune d\'entre elles.\">No podemos grupo de dos órdenes distintos y hay que pagar gastos de envío para cada uno. </span><span style=\"background-color: #ffffff;\" title=\"Votre colis est expédié à vos propres risques, un soin particulier est apporté au colis contenant des produits fragiles..\">Su paquete es enviado a su propio riesgo, se presta especial atención a las parcelas que contienen objetos frágiles ..<br /><br /></span><span style=\"background-color: #ffffff;\" title=\"Les colis sont surdimensionnés et protégés.\">Los paquetes son de gran tamaño y protegidas.</span></span></p>','entrega'),(2,1,'Legal Notice','Legal notice','notice, legal, credits','<h2>Legal</h2><h3>Credits</h3><p>Concept and production:</p><p>This Web site was created using <a href=\"http://www.prestashop.com\">PrestaShop</a>&trade; open-source software.</p>','legal-notice'),(2,2,'Legal Notice','Legal notice','notice, legal, credits','<h2>Legal</h2><h3>Credits</h3><p>Concept and production:</p><p>This Web site was created using <a href=\"http://www.prestashop.com\">PrestaShop</a>&trade; open-source software.</p>','legal-notice'),(2,3,'Rechtliche Hinweise','Rechtliche Hinweise','Hinweise, rechtlich, Gutscheine','<h2>Legal</h2><h3>Credits</h3><p>Konzept und Gestaltung:</p><p>Diese Webseite wurde hergestellt unter Verwendung von <a href=\"http://www.prestashop.com\">PrestaShop</a>&trade; open-source software.</p>','rechtliche-hinweise'),(2,4,'Aviso legal','Aviso legal','términos, condiciones y créditos fotográficos','<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Mentions légales\">Pie de imprenta</span></span></h2>\r\n<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Mentions légales\"> </span></span><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Crédits\">Créditos</span></span></h2>\r\n<h3><span id=\"result_box\"></span></h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Crédits\"><br /></span><span style=\"background-color: #ffffff;\" title=\"Concept et production :\">Concepto y producción:<br /><br /></span><span style=\"background-color: #ffffff;\" title=\"Ce site internet a été réalisé en utilisant la solution open-source PrestaShop™ .\">Este sitio web fue creado utilizando la solución de código abierto <a href=\"http://www.prestashop.com\" target=\"_blank\">PrestaShop</a>™.</span></span></p>','aviso-legal'),(2,5,'Mentions légales','Mentions légales','mentions, légales, crédits','<h2>Mentions l&eacute;gales</h2><h3>Cr&eacute;dits</h3><p>Concept et production :</p><p>Ce site internet a &eacute;t&eacute; r&eacute;alis&eacute; en utilisant la solution open-source <a href=\"http://www.prestashop.com\">PrestaShop</a>&trade; .</p>','mentions-legales'),(2,6,'Nota Legale','Nota legale','nota, legale, crediti','<h2>Legale</h2><h3>Crediti</h3><p>Creazione e produzione:</p><p>Questo sito web è stato realizzato usando un software open-source<a href=\"http://www.prestashop.com\">PrestaShop</a>&trade;.</p>','nota-legale'),(2,7,'Aviso legal','Aviso legal','términos, condiciones y créditos fotográficos','<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Mentions légales\">Pie de imprenta</span></span></h2>\r\n<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Mentions légales\"> </span></span><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Crédits\">Créditos</span></span></h2>\r\n<h3><span id=\"result_box\"></span></h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Crédits\"><br /></span><span style=\"background-color: #ffffff;\" title=\"Concept et production :\">Concepto y producción:<br /><br /></span><span style=\"background-color: #ffffff;\" title=\"Ce site internet a été réalisé en utilisant la solution open-source PrestaShop™ .\">Este sitio web fue creado utilizando la solución de código abierto <a href=\"http://www.prestashop.com\" target=\"_blank\">PrestaShop</a>™.</span></span></p>','aviso-legal'),(2,8,'Aviso legal','Aviso legal','términos, condiciones y créditos fotográficos','<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Mentions légales\">Pie de imprenta</span></span></h2>\r\n<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Mentions légales\"> </span></span><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Crédits\">Créditos</span></span></h2>\r\n<h3><span id=\"result_box\"></span></h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Crédits\"><br /></span><span style=\"background-color: #ffffff;\" title=\"Concept et production :\">Concepto y producción:<br /><br /></span><span style=\"background-color: #ffffff;\" title=\"Ce site internet a été réalisé en utilisant la solution open-source PrestaShop™ .\">Este sitio web fue creado utilizando la solución de código abierto <a href=\"http://www.prestashop.com\" target=\"_blank\">PrestaShop</a>™.</span></span></p>','aviso-legal'),(3,1,'Terms and conditions of use','Our terms and conditions of use','conditions, terms, use, sell','<h2>Your terms and conditions of use</h2><h3>Rule 1</h3><p>Here is the rule 1 content</p>\r\n<h3>Rule 2</h3><p>Here is the rule 2 content</p>\r\n<h3>Rule 3</h3><p>Here is the rule 3 content</p>','terms-and-conditions-of-use'),(3,2,'Terms and conditions of use','Our terms and conditions of use','conditions, terms, use, sell','<h2>Your terms and conditions of use</h2><h3>Rule 1</h3><p>Here is the rule 1 content</p>\r\n<h3>Rule 2</h3><p>Here is the rule 2 content</p>\r\n<h3>Rule 3</h3><p>Here is the rule 3 content</p>','terms-and-conditions-of-use'),(3,3,'Allgemeine Nutzungsbedingungen','Unsere allgemeinen Nutzungsbedingungen','Voraussetzungen, Bedingungen, nutzen, verkaufen','<h2>Your terms and conditions of use</h2><h3>Rule 1</h3><p>Here is the rule 1 content</p>\r\n<h3>Rule 2</h3><p>Here is the rule 2 content</p>\r\n<h3>Rule 3</h3><p>Here is the rule 3 content</p>','allgemeine-nutzungsbedingungen'),(3,4,'Condiciones de uso','Condiciones de uso','condiciones, el consumo, las ventas generales','<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Vos conditions de ventes\">Sus condiciones de venta</span></span></h2>\r\n<h3>Regla N º 1</h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Contenu de la règle numéro 1\">Contenido de la Regla Número 1</span></span></p>\r\n<h3><span id=\"result_box\"></span>Regla N º 2</h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Contenu de la règle numéro 2\">Contenido de la Regla N º 2</span></span></p>\r\n<h3><span id=\"result_box\"></span>Regla N º 3</h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Contenu de la règle numéro 3\">Contenido de la Regla Número 3</span></span></p>','condiciones-de-uso'),(3,5,'Conditions d\'utilisation','Nos conditions générales de ventes','conditions, utilisation, générales, ventes','<h2>Vos conditions de ventes</h2><h3>Règle n°1</h3><p>Contenu de la règle numéro 1</p>\r\n<h3>Règle n°2</h3><p>Contenu de la règle numéro 2</p>\r\n<h3>Règle n°3</h3><p>Contenu de la règle numéro 3</p>','conditions-generales-de-ventes'),(3,6,'Termini e condizioni d\'uso','I nostri termini e condizioni d\'uso','condizioni, termini, uso, vendi','<h2>I tuoi termini e condizioni d\'uso</h2><h3>Regola 1</h3><p>Ecco il contenuto della regola 1</p>\r\n<h3>Regola 2</h3><p>Ecco il contenuto della regola 2</p>\r\n<h3>Regola 3</h3><p>Ecco il contenuto della regola 3</p>','termini-e-condizioni-di-uso'),(3,7,'Condiciones de uso','Condiciones de uso','condiciones, el consumo, las ventas generales','<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Vos conditions de ventes\">Sus condiciones de venta</span></span></h2>\r\n<h3>Regla N º 1</h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Contenu de la règle numéro 1\">Contenido de la Regla Número 1</span></span></p>\r\n<h3><span id=\"result_box\"></span>Regla N º 2</h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Contenu de la règle numéro 2\">Contenido de la Regla N º 2</span></span></p>\r\n<h3><span id=\"result_box\"></span>Regla N º 3</h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Contenu de la règle numéro 3\">Contenido de la Regla Número 3</span></span></p>','condiciones-de-uso'),(3,8,'Condiciones de uso','Condiciones de uso','condiciones, el consumo, las ventas generales','<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Vos conditions de ventes\">Sus condiciones de venta</span></span></h2>\r\n<h3>Regla N º 1</h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Contenu de la règle numéro 1\">Contenido de la Regla Número 1</span></span></p>\r\n<h3><span id=\"result_box\"></span>Regla N º 2</h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Contenu de la règle numéro 2\">Contenido de la Regla N º 2</span></span></p>\r\n<h3><span id=\"result_box\"></span>Regla N º 3</h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Contenu de la règle numéro 3\">Contenido de la Regla Número 3</span></span></p>','condiciones-de-uso'),(4,1,'About us','Learn more about us','about us, informations','<h2>About us</h2>\r\n<h3>Our company</h3><p>Our company</p>\r\n<h3>Our team</h3><p>Our team</p>\r\n<h3>Informations</h3><p>Informations</p>','about-us'),(4,2,'About us','Learn more about us','about us, informations','<h2>About us</h2>\r\n<h3>Our company</h3><p>Our company</p>\r\n<h3>Our team</h3><p>Our team</p>\r\n<h3>Informations</h3><p>Informations</p>','about-us'),(4,3,'Über uns','Learn more about us','über uns, Informationen','<h2>About us</h2>\r\n<h3>Our company</h3><p>Our company</p>\r\n<h3>Our team</h3><p>Our team</p>\r\n<h3>Informations</h3><p>Informations</p>','uber-uns'),(4,4,'Sobre','Conozca más sobre nosotros','sobre, información','<h2>Sobre</h2>','sobre'),(4,5,'A propos','Apprenez-en d\'avantage sur nous','à propos, informations','<h2>A propos</h2>\r\n<h3>Notre entreprise</h3><p>Notre entreprise</p>\r\n<h3>Notre équipe</h3><p>Notre équipe</p>\r\n<h3>Informations</h3><p>Informations</p>','a-propos'),(4,6,'Chi siamo','Per sapere chi siamo','chi siamo, informazioni','<h2>Chi siamo</h2>\r\n<h3>La nostra azienda</h3><p>La nostra azienda</p>\r\n<h3>Il nostro team</h3><p>Il nostro team</p>\r\n<h3>Informazioni</h3><p>Informazioni</p>','chi-siamo'),(4,7,'Sobre','Conozca más sobre nosotros','sobre, información','<h2>Sobre</h2>','sobre'),(4,8,'Sobre','Conozca más sobre nosotros','sobre, información','<h2>Sobre</h2>','sobre'),(5,1,'Secure payment','Our secure payment mean','secure payment, ssl, visa, mastercard, paypal','<h2>Secure payment</h2>\r\n<h3>Our secure payment</h3><p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3><p>About this services</p>','secure-payment'),(5,2,'Secure payment','Our secure payment mean','secure payment, ssl, visa, mastercard, paypal','<h2>Secure payment</h2>\r\n<h3>Our secure payment</h3><p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3><p>About this services</p>','secure-payment'),(5,3,'Sichere Zahlung','Unsere Sicherheits-Zahlungsmethoden','Sichere Zahlung, SSL, Visa, MasterCard, PayPal','<h2>Secure payment</h2>\r\n<h3>Our secure payment</h3><p>With SSL</p>\r\n<h3>Using Visa/Mastercard/Paypal</h3><p>About this services</p>','sichere-zahlung'),(5,4,'Pago seguro','Ofrecemos pago seguro','pago seguro, ssl, visa, mastercard, paypal','<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Paiement sécurisé\">Pago seguro</span></span></h2>\r\n<h3><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Notre offre de paiement sécurisé\">Ofrecemos pago seguro</span></span></h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Avec SSL\">SSL</span></span></p>\r\n<h3><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Utilisation de Visa/Mastercard/Paypal\">Utilice Visa / Mastercard / Paypal</span></span></h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"A propos de ces services\">Acerca de estos servicios</span></span></p>','pago-seguro'),(5,5,'Paiement sécurisé','Notre offre de paiement sécurisé','paiement sécurisé, ssl, visa, mastercard, paypal','<h2>Paiement sécurisé</h2>\r\n<h3>Notre offre de paiement sécurisé</h3><p>Avec SSL</p>\r\n<h3>Utilisation de Visa/Mastercard/Paypal</h3><p>A propos de ces services</p>','paiement-securise'),(5,6,'Pagamento sicuro','Il nostro mezzo di pagamento sicuro','pagamento sicuro, ssl, visa, mastercard, paypal','<h2>Pagamento sicuro</h2>\r\n<h3>Il nostro pagamento sicuro</h3><p>Con SSL</p>\r\n<h3>Usando Visa/Mastercard/Paypal</h3><p>Cosa sono questi servizi</p>','pagamento-sicuro'),(5,7,'Pago seguro','Ofrecemos pago seguro','pago seguro, ssl, visa, mastercard, paypal','<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Paiement sécurisé\">Pago seguro</span></span></h2>\r\n<h3><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Notre offre de paiement sécurisé\">Ofrecemos pago seguro</span></span></h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Avec SSL\">SSL</span></span></p>\r\n<h3><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Utilisation de Visa/Mastercard/Paypal\">Utilice Visa / Mastercard / Paypal</span></span></h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"A propos de ces services\">Acerca de estos servicios</span></span></p>','pago-seguro'),(5,8,'Pago seguro','Ofrecemos pago seguro','pago seguro, ssl, visa, mastercard, paypal','<h2><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Paiement sécurisé\">Pago seguro</span></span></h2>\r\n<h3><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Notre offre de paiement sécurisé\">Ofrecemos pago seguro</span></span></h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Avec SSL\">SSL</span></span></p>\r\n<h3><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"Utilisation de Visa/Mastercard/Paypal\">Utilice Visa / Mastercard / Paypal</span></span></h3>\r\n<p><span id=\"result_box\"><span style=\"background-color: #ffffff;\" title=\"A propos de ces services\">Acerca de estos servicios</span></span></p>','pago-seguro');
/*!40000 ALTER TABLE `ps_2cms_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2cms_shop`
--

DROP TABLE IF EXISTS `ps_2cms_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2cms_shop` (
  `id_cms` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_cms`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2cms_shop`
--

LOCK TABLES `ps_2cms_shop` WRITE;
/*!40000 ALTER TABLE `ps_2cms_shop` DISABLE KEYS */;
INSERT INTO `ps_2cms_shop` VALUES (1,1),(2,1),(3,1),(4,1),(5,1);
/*!40000 ALTER TABLE `ps_2cms_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2compare`
--

DROP TABLE IF EXISTS `ps_2compare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2compare` (
  `id_compare` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_compare`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2compare`
--

LOCK TABLES `ps_2compare` WRITE;
/*!40000 ALTER TABLE `ps_2compare` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2compare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2compare_product`
--

DROP TABLE IF EXISTS `ps_2compare_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2compare_product` (
  `id_compare` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_compare`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2compare_product`
--

LOCK TABLES `ps_2compare_product` WRITE;
/*!40000 ALTER TABLE `ps_2compare_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2compare_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2configuration`
--

DROP TABLE IF EXISTS `ps_2configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2configuration` (
  `id_configuration` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned DEFAULT NULL,
  `id_shop` int(11) unsigned DEFAULT NULL,
  `name` varchar(32) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_configuration`),
  KEY `name` (`name`),
  KEY `id_shop` (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2configuration`
--

LOCK TABLES `ps_2configuration` WRITE;
/*!40000 ALTER TABLE `ps_2configuration` DISABLE KEYS */;
INSERT INTO `ps_2configuration` VALUES (1,NULL,NULL,'PS_LANG_DEFAULT','4','2013-02-21 22:04:07','2013-02-21 22:04:07'),(2,NULL,NULL,'PS_CARRIER_DEFAULT','4','2013-02-21 22:04:12','2013-03-06 18:13:12'),(3,NULL,NULL,'PS_GROUP_FEATURE_ACTIVE','1','2013-02-21 22:04:13','2013-02-21 22:04:13'),(4,NULL,NULL,'PS_SEARCH_INDEXATION','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,NULL,NULL,'PS_ONE_PHONE_AT_LEAST','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,NULL,NULL,'PS_CURRENCY_DEFAULT','1','0000-00-00 00:00:00','2013-02-21 22:04:50'),(7,NULL,NULL,'PS_COUNTRY_DEFAULT','6','0000-00-00 00:00:00','2013-02-21 22:04:27'),(8,NULL,NULL,'PS_REWRITING_SETTINGS','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,NULL,NULL,'PS_ORDER_OUT_OF_STOCK','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,NULL,NULL,'PS_LAST_QTIES','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,NULL,NULL,'PS_CART_REDIRECT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,NULL,NULL,'PS_HELPBOX','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,NULL,NULL,'PS_CONDITIONS','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,NULL,NULL,'PS_RECYCLABLE_PACK','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,NULL,NULL,'PS_GIFT_WRAPPING','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,NULL,NULL,'PS_GIFT_WRAPPING_PRICE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,NULL,NULL,'PS_STOCK_MANAGEMENT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,NULL,NULL,'PS_NAVIGATION_PIPE','>','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,NULL,NULL,'PS_PRODUCTS_PER_PAGE','10','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,NULL,NULL,'PS_PURCHASE_MINIMUM','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,NULL,NULL,'PS_PRODUCTS_ORDER_WAY','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,NULL,NULL,'PS_PRODUCTS_ORDER_BY','4','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,NULL,NULL,'PS_DISPLAY_QTIES','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,NULL,NULL,'PS_SHIPPING_HANDLING','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,NULL,NULL,'PS_SHIPPING_FREE_PRICE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,NULL,NULL,'PS_SHIPPING_FREE_WEIGHT','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,NULL,NULL,'PS_SHIPPING_METHOD','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,NULL,NULL,'PS_TAX','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,NULL,NULL,'PS_SHOP_ENABLE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,NULL,NULL,'PS_NB_DAYS_NEW_PRODUCT','20','0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,NULL,NULL,'PS_SSL_ENABLED','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,NULL,NULL,'PS_WEIGHT_UNIT','kg','0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,NULL,NULL,'PS_BLOCK_CART_AJAX','1','0000-00-00 00:00:00','2013-02-21 22:04:55'),(34,NULL,NULL,'PS_ORDER_RETURN','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,NULL,NULL,'PS_ORDER_RETURN_NB_DAYS','7','0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,NULL,NULL,'PS_MAIL_TYPE','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,NULL,NULL,'PS_PRODUCT_PICTURE_MAX_SIZE','8388608','0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,NULL,NULL,'PS_PRODUCT_PICTURE_WIDTH','64','0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,NULL,NULL,'PS_PRODUCT_PICTURE_HEIGHT','64','0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,NULL,NULL,'PS_INVOICE_PREFIX','IN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,NULL,NULL,'PS_INVOICE_NUMBER','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,NULL,NULL,'PS_DELIVERY_PREFIX','DE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,NULL,NULL,'PS_DELIVERY_NUMBER','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,NULL,NULL,'PS_INVOICE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,NULL,NULL,'PS_PASSWD_TIME_BACK','360','0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,NULL,NULL,'PS_PASSWD_TIME_FRONT','360','0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,NULL,NULL,'PS_DISP_UNAVAILABLE_ATTR','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,NULL,NULL,'PS_SEARCH_MINWORDLEN','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,NULL,NULL,'PS_SEARCH_BLACKLIST','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,NULL,NULL,'PS_SEARCH_WEIGHT_PNAME','6','0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,NULL,NULL,'PS_SEARCH_WEIGHT_REF','10','0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,NULL,NULL,'PS_SEARCH_WEIGHT_SHORTDESC','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,NULL,NULL,'PS_SEARCH_WEIGHT_DESC','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,NULL,NULL,'PS_SEARCH_WEIGHT_CNAME','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,NULL,NULL,'PS_SEARCH_WEIGHT_MNAME','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,NULL,NULL,'PS_SEARCH_WEIGHT_TAG','4','0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,NULL,NULL,'PS_SEARCH_WEIGHT_ATTRIBUTE','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,NULL,NULL,'PS_SEARCH_WEIGHT_FEATURE','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,NULL,NULL,'PS_SEARCH_AJAX','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,NULL,NULL,'PS_TIMEZONE','Europe/Madrid','0000-00-00 00:00:00','2013-02-21 22:04:27'),(61,NULL,NULL,'PS_THEME_V11','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,NULL,NULL,'PRESTASTORE_LIVE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,NULL,NULL,'PS_TIN_ACTIVE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,NULL,NULL,'PS_SHOW_ALL_MODULES','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,NULL,NULL,'PS_BACKUP_ALL','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,NULL,NULL,'PS_1_3_UPDATE_DATE','2011-12-27 10:20:42','0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,NULL,NULL,'PS_PRICE_ROUND_MODE','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,NULL,NULL,'PS_1_3_2_UPDATE_DATE','2011-12-27 10:20:42','0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,NULL,NULL,'PS_CONDITIONS_CMS_ID','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,NULL,NULL,'TRACKING_DIRECT_TRAFFIC','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,NULL,NULL,'PS_META_KEYWORDS','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,NULL,NULL,'PS_DISPLAY_JQZOOM','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,NULL,NULL,'PS_VOLUME_UNIT','L','0000-00-00 00:00:00','2013-02-21 22:04:28'),(74,NULL,NULL,'PS_CIPHER_ALGORITHM','1','0000-00-00 00:00:00','2013-02-21 22:04:27'),(75,NULL,NULL,'PS_ATTRIBUTE_CATEGORY_DISPLAY','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,NULL,NULL,'PS_CUSTOMER_SERVICE_FILE_UPLOAD','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,NULL,NULL,'PS_CUSTOMER_SERVICE_SIGNATURE','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,NULL,NULL,'PS_BLOCK_BESTSELLERS_DISPLAY','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,NULL,NULL,'PS_BLOCK_NEWPRODUCTS_DISPLAY','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,NULL,NULL,'PS_BLOCK_SPECIALS_DISPLAY','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,NULL,NULL,'PS_STOCK_MVT_REASON_DEFAULT','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,NULL,NULL,'PS_COMPARATOR_MAX_ITEM','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,NULL,NULL,'PS_ORDER_PROCESS_TYPE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,NULL,NULL,'PS_SPECIFIC_PRICE_PRIORITIES','id_shop;id_currency;id_country;id_group','0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,NULL,NULL,'PS_TAX_DISPLAY','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,NULL,NULL,'PS_SMARTY_FORCE_COMPILE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,NULL,NULL,'PS_DISTANCE_UNIT','km','0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,NULL,NULL,'PS_STORES_DISPLAY_CMS','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,NULL,NULL,'PS_STORES_DISPLAY_FOOTER','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,NULL,NULL,'PS_STORES_SIMPLIFIED','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,NULL,NULL,'SHOP_LOGO_WIDTH','209','0000-00-00 00:00:00','2013-02-21 22:04:27'),(92,NULL,NULL,'SHOP_LOGO_HEIGHT','52','0000-00-00 00:00:00','2013-02-21 22:04:27'),(93,NULL,NULL,'EDITORIAL_IMAGE_WIDTH','530','0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,NULL,NULL,'EDITORIAL_IMAGE_HEIGHT','228','0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,NULL,NULL,'PS_STATSDATA_CUSTOMER_PAGESVIEWS','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,NULL,NULL,'PS_STATSDATA_PAGESVIEWS','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,NULL,NULL,'PS_STATSDATA_PLUGINS','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,NULL,NULL,'PS_GEOLOCATION_ENABLED','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,NULL,NULL,'PS_ALLOWED_COUNTRIES','AF;ZA;AX;AL;DZ;DE;AD;AO;AI;AQ;AG;AN;SA;AR;AM;AW;AU;AT;AZ;BS;BH;BD;BB;BY;BE;BZ;BJ;BM;BT;BO;BA;BW;BV;BR;BN;BG;BF;MM;BI;KY;KH;CM;CA;CV;CF;CL;CN;CX;CY;CC;CO;KM;CG;CD;CK;KR;KP;CR;CI;HR;CU;DK;DJ;DM;EG;IE;SV;AE;EC;ER;ES;EE;ET;FK;FO;FJ;FI;FR;GA;GM;GE;GS;GH;GI;GR;GD;GL;GP;GU;GT;GG;GN;GQ;GW;GY;GF;HT;HM;HN;HK;HU;IM;MU;VG;VI;IN;ID;IR;IQ;IS;IL;IT;JM;JP;JE;JO;KZ;KE;KG;KI;KW;LA;LS;LV;LB;LR;LY;LI;LT;LU;MO;MK;MG;MY;MW;MV;ML;MT;MP;MA;MH;MQ;MR;YT;MX;FM;MD;MC;MN;ME;MS;MZ;NA;NR;NP;NI;NE;NG;NU;NF;NO;NC;NZ;IO;OM;UG;UZ;PK;PW;PS;PA;PG;PY;NL;PE;PH;PN;PL;PF;PR;PT;QA;DO;CZ;RE;RO;GB;RU;RW;EH;BL;KN;SM;MF;PM;VA;VC;LC;SB;WS;AS;ST;SN;RS;SC;SL;SG;SK;SI;SO;SD;LK;SE;CH;SR;SJ;SZ;SY;TJ;TW;TZ;TD;TF;TH;TL;TG;TK;TO;TT;TN;TM;TC;TR;TV;UA;UY;US;VU;VE;VN;WF;YE;ZM;ZW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,NULL,NULL,'PS_GEOLOCATION_BEHAVIOR','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,NULL,NULL,'PS_LOCALE_LANGUAGE','es','0000-00-00 00:00:00','2013-02-21 22:04:27'),(102,NULL,NULL,'PS_LOCALE_COUNTRY','es','0000-00-00 00:00:00','2013-02-21 22:04:27'),(103,NULL,NULL,'PS_ATTACHMENT_MAXIMUM_SIZE','8','0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,NULL,NULL,'PS_SMARTY_CACHE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,NULL,NULL,'PS_DIMENSION_UNIT','cm','0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,NULL,NULL,'PS_GUEST_CHECKOUT_ENABLED','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,NULL,NULL,'PS_DISPLAY_SUPPLIERS','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,NULL,NULL,'PS_CATALOG_MODE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,NULL,NULL,'PS_GEOLOCATION_WHITELIST','127;209.185.108;209.185.253;209.85.238;209.85.238.11;209.85.238.4;216.239.33.96;216.239.33.97;216.239.33.98;216.239.33.99;216.239.37.98;216.239.37.99;216.239.39.98;216.239.39.99;216.239.41.96;216.239.41.97;216.239.41.98;216.239.41.99;216.239.45.4;216.239.46;216.239.51.96;216.239.51.97;216.239.51.98;216.239.51.99;216.239.53.98;216.239.53.99;216.239.57.96;216.239.57.97;216.239.57.98;216.239.57.99;216.239.59.98;216.239.59.99;216.33.229.163;64.233.173.193;64.233.173.194;64.233.173.195;64.233.173.196;64.233.173.197;64.233.173.198;64.233.173.199;64.233.173.200;64.233.173.201;64.233.173.202;64.233.173.203;64.233.173.204;64.233.173.205;64.233.173.206;64.233.173.207;64.233.173.208;64.233.173.209;64.233.173.210;64.233.173.211;64.233.173.212;64.233.173.213;64.233.173.214;64.233.173.215;64.233.173.216;64.233.173.217;64.233.173.218;64.233.173.219;64.233.173.220;64.233.173.221;64.233.173.222;64.233.173.223;64.233.173.224;64.233.173.225;64.233.173.226;64.233.173.227;64.233.173.228;64.233.173.229;64.233.173.230;64.233.173.231;64.233.173.232;64.233.173.233;64.233.173.234;64.233.173.235;64.233.173.236;64.233.173.237;64.233.173.238;64.233.173.239;64.233.173.240;64.233.173.241;64.233.173.242;64.233.173.243;64.233.173.244;64.233.173.245;64.233.173.246;64.233.173.247;64.233.173.248;64.233.173.249;64.233.173.250;64.233.173.251;64.233.173.252;64.233.173.253;64.233.173.254;64.233.173.255;64.68.80;64.68.81;64.68.82;64.68.83;64.68.84;64.68.85;64.68.86;64.68.87;64.68.88;64.68.89;64.68.90.1;64.68.90.10;64.68.90.11;64.68.90.12;64.68.90.129;64.68.90.13;64.68.90.130;64.68.90.131;64.68.90.132;64.68.90.133;64.68.90.134;64.68.90.135;64.68.90.136;64.68.90.137;64.68.90.138;64.68.90.139;64.68.90.14;64.68.90.140;64.68.90.141;64.68.90.142;64.68.90.143;64.68.90.144;64.68.90.145;64.68.90.146;64.68.90.147;64.68.90.148;64.68.90.149;64.68.90.15;64.68.90.150;64.68.90.151;64.68.90.152;64.68.90.153;64.68.90.154;64.68.90.155;64.68.90.156;64.68.90.157;64.68.90.158;64.68.90.159;64.68.90.16;64.68.90.160;64.68.90.161;64.68.90.162;64.68.90.163;64.68.90.164;64.68.90.165;64.68.90.166;64.68.90.167;64.68.90.168;64.68.90.169;64.68.90.17;64.68.90.170;64.68.90.171;64.68.90.172;64.68.90.173;64.68.90.174;64.68.90.175;64.68.90.176;64.68.90.177;64.68.90.178;64.68.90.179;64.68.90.18;64.68.90.180;64.68.90.181;64.68.90.182;64.68.90.183;64.68.90.184;64.68.90.185;64.68.90.186;64.68.90.187;64.68.90.188;64.68.90.189;64.68.90.19;64.68.90.190;64.68.90.191;64.68.90.192;64.68.90.193;64.68.90.194;64.68.90.195;64.68.90.196;64.68.90.197;64.68.90.198;64.68.90.199;64.68.90.2;64.68.90.20;64.68.90.200;64.68.90.201;64.68.90.202;64.68.90.203;64.68.90.204;64.68.90.205;64.68.90.206;64.68.90.207;64.68.90.208;64.68.90.21;64.68.90.22;64.68.90.23;64.68.90.24;64.68.90.25;64.68.90.26;64.68.90.27;64.68.90.28;64.68.90.29;64.68.90.3;64.68.90.30;64.68.90.31;64.68.90.32;64.68.90.33;64.68.90.34;64.68.90.35;64.68.90.36;64.68.90.37;64.68.90.38;64.68.90.39;64.68.90.4;64.68.90.40;64.68.90.41;64.68.90.42;64.68.90.43;64.68.90.44;64.68.90.45;64.68.90.46;64.68.90.47;64.68.90.48;64.68.90.49;64.68.90.5;64.68.90.50;64.68.90.51;64.68.90.52;64.68.90.53;64.68.90.54;64.68.90.55;64.68.90.56;64.68.90.57;64.68.90.58;64.68.90.59;64.68.90.6;64.68.90.60;64.68.90.61;64.68.90.62;64.68.90.63;64.68.90.64;64.68.90.65;64.68.90.66;64.68.90.67;64.68.90.68;64.68.90.69;64.68.90.7;64.68.90.70;64.68.90.71;64.68.90.72;64.68.90.73;64.68.90.74;64.68.90.75;64.68.90.76;64.68.90.77;64.68.90.78;64.68.90.79;64.68.90.8;64.68.90.80;64.68.90.9;64.68.91;64.68.92;66.249.64;66.249.65;66.249.66;66.249.67;66.249.68;66.249.69;66.249.70;66.249.71;66.249.72;66.249.73;66.249.78;66.249.79;72.14.199;8.6.48','0000-00-00 00:00:00','0000-00-00 00:00:00'),(110,NULL,NULL,'PS_LOGS_BY_EMAIL','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(111,NULL,NULL,'PS_COOKIE_CHECKIP','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(112,NULL,NULL,'PS_STORES_CENTER_LAT','25.948969','0000-00-00 00:00:00','0000-00-00 00:00:00'),(113,NULL,NULL,'PS_STORES_CENTER_LONG','-80.226439','0000-00-00 00:00:00','0000-00-00 00:00:00'),(114,NULL,NULL,'PS_USE_ECOTAX','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(115,NULL,NULL,'PS_CANONICAL_REDIRECT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(116,NULL,NULL,'PS_IMG_UPDATE_TIME','1324977642','0000-00-00 00:00:00','0000-00-00 00:00:00'),(117,NULL,NULL,'PS_BACKUP_DROP_TABLE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(118,NULL,NULL,'PS_OS_CHEQUE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(119,NULL,NULL,'PS_OS_PAYMENT','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(120,NULL,NULL,'PS_OS_PREPARATION','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(121,NULL,NULL,'PS_OS_SHIPPING','4','0000-00-00 00:00:00','0000-00-00 00:00:00'),(122,NULL,NULL,'PS_OS_DELIVERED','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(123,NULL,NULL,'PS_OS_CANCELED','6','0000-00-00 00:00:00','0000-00-00 00:00:00'),(124,NULL,NULL,'PS_OS_REFUND','7','0000-00-00 00:00:00','0000-00-00 00:00:00'),(125,NULL,NULL,'PS_OS_ERROR','8','0000-00-00 00:00:00','0000-00-00 00:00:00'),(126,NULL,NULL,'PS_OS_OUTOFSTOCK','9','0000-00-00 00:00:00','0000-00-00 00:00:00'),(127,NULL,NULL,'PS_OS_BANKWIRE','10','0000-00-00 00:00:00','0000-00-00 00:00:00'),(128,NULL,NULL,'PS_OS_PAYPAL','11','0000-00-00 00:00:00','0000-00-00 00:00:00'),(129,NULL,NULL,'PS_OS_WS_PAYMENT','12','0000-00-00 00:00:00','0000-00-00 00:00:00'),(130,NULL,NULL,'PS_LEGACY_IMAGES','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(131,NULL,NULL,'PS_IMAGE_QUALITY','jpg','0000-00-00 00:00:00','0000-00-00 00:00:00'),(132,NULL,NULL,'PS_PNG_QUALITY','7','0000-00-00 00:00:00','0000-00-00 00:00:00'),(133,NULL,NULL,'PS_JPEG_QUALITY','90','0000-00-00 00:00:00','0000-00-00 00:00:00'),(134,NULL,NULL,'PS_COOKIE_LIFETIME_FO','480','0000-00-00 00:00:00','0000-00-00 00:00:00'),(135,NULL,NULL,'PS_COOKIE_LIFETIME_BO','480','0000-00-00 00:00:00','0000-00-00 00:00:00'),(136,NULL,NULL,'PS_RESTRICT_DELIVERED_COUNTRIES','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(137,NULL,NULL,'PS_SHOW_NEW_ORDERS','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(138,NULL,NULL,'PS_SHOW_NEW_CUSTOMERS','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(139,NULL,NULL,'PS_SHOW_NEW_MESSAGES','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(140,NULL,NULL,'PS_FEATURE_FEATURE_ACTIVE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(141,NULL,NULL,'PS_COMBINATION_FEATURE_ACTIVE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(142,NULL,NULL,'PS_SPECIFIC_PRICE_FEATURE_ACTIVE','1','0000-00-00 00:00:00','2013-02-26 20:57:56'),(143,NULL,NULL,'PS_SCENE_FEATURE_ACTIVE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(144,NULL,NULL,'PS_VIRTUAL_PROD_FEATURE_ACTIVE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(145,NULL,NULL,'PS_CUSTOMIZATION_FEATURE_ACTIVE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(146,NULL,NULL,'PS_CART_RULE_FEATURE_ACTIVE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(147,NULL,NULL,'PS_PACK_FEATURE_ACTIVE',NULL,'0000-00-00 00:00:00','2013-03-04 22:25:58'),(148,NULL,NULL,'PS_ALIAS_FEATURE_ACTIVE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(149,NULL,NULL,'PS_TAX_ADDRESS_TYPE','id_address_delivery','0000-00-00 00:00:00','0000-00-00 00:00:00'),(150,NULL,NULL,'PS_SHOP_DEFAULT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(151,NULL,NULL,'PS_CARRIER_DEFAULT_SORT','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(152,NULL,NULL,'PS_STOCK_MVT_INC_REASON_DEFAULT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(153,NULL,NULL,'PS_STOCK_MVT_DEC_REASON_DEFAULT','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(154,NULL,NULL,'PS_ADVANCED_STOCK_MANAGEMENT','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(155,NULL,NULL,'PS_ADMINREFRESH_NOTIFICATION','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(156,NULL,NULL,'PS_STOCK_MVT_TRANSFER_TO','7','0000-00-00 00:00:00','0000-00-00 00:00:00'),(157,NULL,NULL,'PS_STOCK_MVT_TRANSFER_FROM','6','0000-00-00 00:00:00','0000-00-00 00:00:00'),(158,NULL,NULL,'PS_CARRIER_DEFAULT_ORDER','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(159,NULL,NULL,'PS_STOCK_MVT_SUPPLY_ORDER','8','0000-00-00 00:00:00','0000-00-00 00:00:00'),(160,NULL,NULL,'PS_STOCK_CUSTOMER_ORDER_REASON','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(161,NULL,NULL,'PS_UNIDENTIFIED_GROUP','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(162,NULL,NULL,'PS_GUEST_GROUP','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(163,NULL,NULL,'PS_CUSTOMER_GROUP','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(164,NULL,NULL,'PS_SMARTY_CONSOLE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(165,NULL,NULL,'PS_INVOICE_MODEL','invoice','0000-00-00 00:00:00','0000-00-00 00:00:00'),(166,NULL,NULL,'PS_LIMIT_UPLOAD_IMAGE_VALUE','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(167,NULL,NULL,'PS_LIMIT_UPLOAD_FILE_VALUE','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(168,NULL,NULL,'MB_PAY_TO_EMAIL','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(169,NULL,NULL,'MB_SECRET_WORD','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(170,NULL,NULL,'MB_HIDE_LOGIN','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(171,NULL,NULL,'MB_ID_LOGO','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(172,NULL,NULL,'MB_ID_LOGO_WALLET','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(173,NULL,NULL,'MB_PARAMETERS','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(174,NULL,NULL,'MB_PARAMETERS_2','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(175,NULL,NULL,'MB_DISPLAY_MODE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(176,NULL,NULL,'MB_CANCEL_URL','http://www.yoursite.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),(177,NULL,NULL,'MB_LOCAL_METHODS','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(178,NULL,NULL,'MB_INTER_METHODS','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(179,NULL,NULL,'BANK_WIRE_CURRENCIES','2,1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(180,NULL,NULL,'CHEQUE_CURRENCIES','2,1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(181,NULL,NULL,'PRODUCTS_VIEWED_NBR','2','0000-00-00 00:00:00','2013-02-21 22:04:56'),(182,NULL,NULL,'BLOCK_CATEG_DHTML','1','0000-00-00 00:00:00','2013-02-21 22:04:55'),(183,NULL,NULL,'BLOCK_CATEG_MAX_DEPTH','4','0000-00-00 00:00:00','2013-02-21 22:04:55'),(184,NULL,NULL,'MANUFACTURER_DISPLAY_FORM','1','0000-00-00 00:00:00','2013-02-21 22:04:55'),(185,NULL,NULL,'MANUFACTURER_DISPLAY_TEXT','1','0000-00-00 00:00:00','2013-02-21 22:04:55'),(186,NULL,NULL,'MANUFACTURER_DISPLAY_TEXT_NB','5','0000-00-00 00:00:00','2013-02-21 22:04:55'),(187,NULL,NULL,'NEW_PRODUCTS_NBR','5','0000-00-00 00:00:00','2013-02-21 22:04:56'),(188,NULL,NULL,'PS_TOKEN_ENABLE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(189,NULL,NULL,'PS_STATS_RENDER','graphxmlswfcharts','0000-00-00 00:00:00','2013-02-21 22:04:57'),(190,NULL,NULL,'PS_STATS_OLD_CONNECT_AUTO_CLEAN','never','0000-00-00 00:00:00','0000-00-00 00:00:00'),(191,NULL,NULL,'PS_STATS_GRID_RENDER','gridhtml','0000-00-00 00:00:00','0000-00-00 00:00:00'),(192,NULL,NULL,'BLOCKTAGS_NBR','10','0000-00-00 00:00:00','2013-02-21 22:04:56'),(193,NULL,NULL,'CHECKUP_DESCRIPTIONS_LT','100','0000-00-00 00:00:00','0000-00-00 00:00:00'),(194,NULL,NULL,'CHECKUP_DESCRIPTIONS_GT','400','0000-00-00 00:00:00','0000-00-00 00:00:00'),(195,NULL,NULL,'CHECKUP_IMAGES_LT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(196,NULL,NULL,'CHECKUP_IMAGES_GT','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(197,NULL,NULL,'CHECKUP_SALES_LT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(198,NULL,NULL,'CHECKUP_SALES_GT','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(199,NULL,NULL,'CHECKUP_STOCK_LT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(200,NULL,NULL,'CHECKUP_STOCK_GT','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(201,NULL,NULL,'FOOTER_CMS','0_3|0_4','0000-00-00 00:00:00','2013-02-21 22:04:55'),(202,NULL,NULL,'FOOTER_BLOCK_ACTIVATION','0_3|0_4','0000-00-00 00:00:00','2013-02-21 22:04:55'),(203,NULL,NULL,'FOOTER_POWEREDBY','1','0000-00-00 00:00:00','2013-02-21 22:04:55'),(204,NULL,NULL,'BLOCKADVERT_LINK','http://www.prestashop.com','0000-00-00 00:00:00','2013-02-21 22:04:55'),(205,NULL,NULL,'BLOCKSTORE_IMG','store.jpg','0000-00-00 00:00:00','0000-00-00 00:00:00'),(206,NULL,NULL,'BLOCKADVERT_IMG_EXT','jpg','0000-00-00 00:00:00','0000-00-00 00:00:00'),(207,NULL,NULL,'MOD_BLOCKTOPMENU_ITEMS','CAT2,CAT3,CAT4','0000-00-00 00:00:00','2013-02-21 22:04:56'),(208,NULL,NULL,'MOD_BLOCKTOPMENU_SEARCH','','0000-00-00 00:00:00','2013-02-21 22:04:56'),(209,NULL,NULL,'blocksocial_facebook','http://www.facebook.com/prestashop','0000-00-00 00:00:00','2013-02-21 22:04:56'),(210,NULL,NULL,'blocksocial_twitter','http://www.twitter.com/prestashop','0000-00-00 00:00:00','2013-02-21 22:04:56'),(211,NULL,NULL,'blocksocial_rss','http://www.prestashop.com/blog/en/feed/','0000-00-00 00:00:00','2013-02-21 22:04:56'),(212,NULL,NULL,'blockcontactinfos_company','My Company','0000-00-00 00:00:00','2013-02-21 22:04:55'),(213,NULL,NULL,'blockcontactinfos_address','42 avenue des Champs Elysées\n75000 Paris\nFrance','0000-00-00 00:00:00','2013-02-21 22:04:55'),(214,NULL,NULL,'blockcontactinfos_phone','+33 (0)1.23.45.67.89','0000-00-00 00:00:00','2013-02-21 22:04:55'),(215,NULL,NULL,'blockcontactinfos_email','sales@yourcompany.com','0000-00-00 00:00:00','2013-02-21 22:04:55'),(216,NULL,NULL,'blockcontact_telnumber','+33 (0)1.23.45.67.89','0000-00-00 00:00:00','2013-02-21 22:04:55'),(217,NULL,NULL,'blockcontact_email','sales@yourcompany.com','0000-00-00 00:00:00','2013-02-21 22:04:55'),(218,NULL,NULL,'SUPPLIER_DISPLAY_TEXT','1','0000-00-00 00:00:00','2013-02-21 22:04:56'),(219,NULL,NULL,'SUPPLIER_DISPLAY_TEXT_NB','5','0000-00-00 00:00:00','2013-02-21 22:04:56'),(220,NULL,NULL,'SUPPLIER_DISPLAY_FORM','1','0000-00-00 00:00:00','2013-02-21 22:04:56'),(221,NULL,NULL,'BLOCK_CATEG_NBR_COLUMN_FOOTER','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(222,NULL,NULL,'UPGRADER_BACKUPDB_FILENAME','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(223,NULL,NULL,'UPGRADER_BACKUPFILES_FILENAME','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(224,NULL,NULL,'blockreinsurance_nbblocks','5','0000-00-00 00:00:00','2013-02-21 22:04:56'),(225,NULL,NULL,'HOMESLIDER_WIDTH','535','0000-00-00 00:00:00','0000-00-00 00:00:00'),(226,NULL,NULL,'HOMESLIDER_HEIGHT','300','0000-00-00 00:00:00','0000-00-00 00:00:00'),(227,NULL,NULL,'HOMESLIDER_SPEED','500','0000-00-00 00:00:00','2013-02-21 22:04:57'),(228,NULL,NULL,'HOMESLIDER_PAUSE','3000','0000-00-00 00:00:00','2013-02-21 22:04:57'),(229,NULL,NULL,'PS_VERSION_DB','1.5.0.9','0000-00-00 00:00:00','0000-00-00 00:00:00'),(230,NULL,NULL,'PS_BASE_DISTANCE_UNIT','m','0000-00-00 00:00:00','0000-00-00 00:00:00'),(231,NULL,NULL,'PS_SHOP_DOMAIN','localhost','0000-00-00 00:00:00','0000-00-00 00:00:00'),(232,NULL,NULL,'PS_SHOP_DOMAIN_SSL','localhost','0000-00-00 00:00:00','0000-00-00 00:00:00'),(233,NULL,NULL,'PS_INSTALL_VERSION','1.5.3.1','0000-00-00 00:00:00','2013-02-21 22:04:27'),(234,NULL,NULL,'PS_SHOP_NAME','Bluegarlic Electronic Trade Ltd.','0000-00-00 00:00:00','2013-02-21 22:04:27'),(235,NULL,NULL,'PS_SHOP_EMAIL','klopez.18@gmail.com','0000-00-00 00:00:00','2013-02-21 22:04:50'),(236,NULL,NULL,'PS_MAIL_METHOD','1','0000-00-00 00:00:00','2013-02-21 22:04:27'),(237,NULL,NULL,'PS_SHOP_ACTIVITY','Deporte y ocio','0000-00-00 00:00:00','2013-02-21 22:04:27'),(238,NULL,NULL,'PS_LOGO','logo.jpg','0000-00-00 00:00:00','0000-00-00 00:00:00'),(239,NULL,NULL,'PS_FAVICON','favicon.ico','0000-00-00 00:00:00','0000-00-00 00:00:00'),(240,NULL,NULL,'PS_STORES_ICON','logo_stores.gif','0000-00-00 00:00:00','0000-00-00 00:00:00'),(241,NULL,NULL,'PS_ROOT_CATEGORY','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(242,NULL,NULL,'PS_HOME_CATEGORY','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(243,NULL,NULL,'PS_CONFIGURATION_AGREMENT','1','0000-00-00 00:00:00','2013-02-21 22:04:27'),(244,NULL,NULL,'PS_MAIL_SERVER','smtp.','0000-00-00 00:00:00','0000-00-00 00:00:00'),(245,NULL,NULL,'PS_MAIL_USER','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(246,NULL,NULL,'PS_MAIL_PASSWD','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(247,NULL,NULL,'PS_MAIL_SMTP_ENCRYPTION','off','0000-00-00 00:00:00','0000-00-00 00:00:00'),(248,NULL,NULL,'PS_MAIL_SMTP_PORT','25','0000-00-00 00:00:00','2013-02-21 22:04:27'),(249,NULL,NULL,'PS_MAIL_COLOR','#db3484','0000-00-00 00:00:00','0000-00-00 00:00:00'),(250,NULL,NULL,'NW_SALT','xDsWi6UzJMbKPSIy','0000-00-00 00:00:00','2013-02-21 22:04:56'),(251,NULL,NULL,'PS_PAYMENT_LOGO_CMS_ID','0','0000-00-00 00:00:00','2013-02-21 22:04:56'),(252,NULL,NULL,'HOME_FEATURED_NBR','8','0000-00-00 00:00:00','2013-02-21 22:04:57'),(253,NULL,NULL,'SEK_MIN_OCCURENCES','1','0000-00-00 00:00:00','2013-02-21 22:04:57'),(254,NULL,NULL,'SEK_FILTER_KW','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(255,NULL,NULL,'PS_ALLOW_MOBILE_DEVICE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(256,NULL,NULL,'BLOCKADVERT_TITLE','PrestaShop','2013-02-21 22:04:55','2013-02-21 22:04:55'),(257,NULL,NULL,'CUSTPRIV_MESSAGE',NULL,'2013-02-21 22:04:55','2013-02-21 22:04:55'),(258,NULL,NULL,'HOMESLIDER_LOOP','1','2013-02-21 22:04:57','2013-02-21 22:04:57'),(259,NULL,NULL,'PS_LAST_VERSION','a:10:{s:4:\"name\";s:12:\"1.5.3 stable\";s:3:\"num\";s:7:\"1.5.3.1\";s:4:\"link\";s:37:\"http://www.prestashop.com/en/download\";s:3:\"md5\";s:32:\"c7490320cf300a0791da3d0a94637fc3\";s:11:\"autoupgrade\";i:1;s:18:\"autoupgrade_module\";i:1;s:24:\"autoupgrade_last_version\";s:5:\"1.0.8\";s:23:\"autoupgrade_module_link\";s:50:\"http://www.prestashop.com/download/autoupgrade.zip\";s:9:\"changelog\";s:0:\"\";s:4:\"desc\";s:0:\"\";}','2013-02-21 22:10:34','2013-02-28 20:33:55'),(260,NULL,NULL,'PS_LAST_VERSION_CHECK','1362588191','2013-02-21 22:10:34','2013-03-06 17:43:11');
/*!40000 ALTER TABLE `ps_2configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2configuration_lang`
--

DROP TABLE IF EXISTS `ps_2configuration_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2configuration_lang` (
  `id_configuration` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL,
  PRIMARY KEY (`id_configuration`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2configuration_lang`
--

LOCK TABLES `ps_2configuration_lang` WRITE;
/*!40000 ALTER TABLE `ps_2configuration_lang` DISABLE KEYS */;
INSERT INTO `ps_2configuration_lang` VALUES (40,1,'IN',NULL),(40,2,'IN',NULL),(40,3,'FA',NULL),(40,4,'CU',NULL),(40,5,'FA',NULL),(40,6,'FA',NULL),(42,1,'DE',NULL),(42,2,'DE',NULL),(42,3,'LI',NULL),(42,4,'EN',NULL),(42,5,'LI',NULL),(42,6,'BC',NULL),(49,1,'a|the|of|on|in|and|to',NULL),(49,2,'a|the|of|on|in|and|to',NULL),(49,3,'',NULL),(49,4,'de|los|las|lo|la|en|de|y|el|a',NULL),(49,5,'le|les|de|et|en|des|les|une',NULL),(49,6,'',NULL),(71,1,'0',NULL),(71,2,'0',NULL),(71,3,'0',NULL),(71,4,'0',NULL),(71,5,'0',NULL),(71,6,'0',NULL),(77,1,'Dear Customer,\r\n\r\nRegards,\r\nCustomer service',NULL),(77,2,'Prezado Cliente,\r\n\r\nAtenciosamente,\r\natendimento ao cliente',NULL),(77,3,'Lieber Kunde,\r\n\r\nMit freundlichen Grüßen,\r\nIhr Kundenservice',NULL),(77,4,'Estimado cliente,\r\n\r\nUn cordial saludo,\r\nAtención al cliente',NULL),(77,5,'Cher client,\r\n\r\nCordialement,\r\nLe service client',NULL),(77,6,'Gentile Cliente,\r\n\r\nCordiali saluti,\r\nServizio Clienti',NULL),(257,4,'El dato personal que da esta utilizado para responder a sus búsquedas, procesa sus ordenes o autorizase el acceso especifico a la información.  Tiene derecho de modificar todas las informaciones personales que tenemos sobre usted en pagina &quot;my account&quot;.','2013-02-21 22:04:55');
/*!40000 ALTER TABLE `ps_2configuration_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2connections`
--

DROP TABLE IF EXISTS `ps_2connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2connections` (
  `id_connections` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_guest` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `ip_address` bigint(20) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_connections`),
  KEY `id_guest` (`id_guest`),
  KEY `date_add` (`date_add`),
  KEY `id_page` (`id_page`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2connections`
--

LOCK TABLES `ps_2connections` WRITE;
/*!40000 ALTER TABLE `ps_2connections` DISABLE KEYS */;
INSERT INTO `ps_2connections` VALUES (1,1,1,1,1,2130706433,'2013-02-21 22:06:54',''),(2,1,1,1,1,2130706433,'2013-02-26 20:20:14',''),(3,1,1,1,1,2130706433,'2013-02-28 20:16:46',''),(4,1,1,1,1,2130706433,'2013-03-04 21:32:14',''),(5,1,1,1,1,2130706433,'2013-03-04 22:10:26',''),(6,1,1,2,12,2130706433,'2013-03-06 18:02:34',''),(7,1,1,2,12,2130706433,'2013-03-06 18:22:01','');
/*!40000 ALTER TABLE `ps_2connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2connections_page`
--

DROP TABLE IF EXISTS `ps_2connections_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2connections_page` (
  `id_connections` int(10) unsigned NOT NULL,
  `id_page` int(10) unsigned NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime DEFAULT NULL,
  PRIMARY KEY (`id_connections`,`id_page`,`time_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2connections_page`
--

LOCK TABLES `ps_2connections_page` WRITE;
/*!40000 ALTER TABLE `ps_2connections_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2connections_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2connections_source`
--

DROP TABLE IF EXISTS `ps_2connections_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2connections_source` (
  `id_connections_source` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_connections` int(10) unsigned NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `request_uri` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_connections_source`),
  KEY `connections` (`id_connections`),
  KEY `orderby` (`date_add`),
  KEY `http_referer` (`http_referer`),
  KEY `request_uri` (`request_uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2connections_source`
--

LOCK TABLES `ps_2connections_source` WRITE;
/*!40000 ALTER TABLE `ps_2connections_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2connections_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2contact`
--

DROP TABLE IF EXISTS `ps_2contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2contact` (
  `id_contact` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `customer_service` tinyint(1) NOT NULL DEFAULT '0',
  `position` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_contact`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2contact`
--

LOCK TABLES `ps_2contact` WRITE;
/*!40000 ALTER TABLE `ps_2contact` DISABLE KEYS */;
INSERT INTO `ps_2contact` VALUES (1,'klopez.18@gmail.com',1,0),(2,'klopez.18@gmail.com',1,0);
/*!40000 ALTER TABLE `ps_2contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2contact_lang`
--

DROP TABLE IF EXISTS `ps_2contact_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2contact_lang` (
  `id_contact` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text,
  PRIMARY KEY (`id_contact`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2contact_lang`
--

LOCK TABLES `ps_2contact_lang` WRITE;
/*!40000 ALTER TABLE `ps_2contact_lang` DISABLE KEYS */;
INSERT INTO `ps_2contact_lang` VALUES (1,1,'Webmaster','If a technical problem occurs on this website'),(1,2,'Webmaster','Se ocorrer um problema técnico no site'),(1,3,'Webmaster','Falls ein technisches Problem auf der Webseite auftritt'),(1,4,'Webmaster','Si se produce un problema técnico en el sitio'),(1,5,'Webmaster','Si un problème technique survient sur le site'),(1,6,'Webmaster','Se nel sito interviene un problema tecnico'),(1,7,'Webmaster','Si se produce un problema técnico en el sitio'),(1,8,'Webmaster','Si se produce un problema técnico en el sitio'),(2,1,'Customer service','For any question about a product, an order'),(2,2,'Atendimento ao Cliente','Para qualquer pergunta sobre um produto, uma ordem'),(2,3,'Kundenservice','Bei Fragen oder Reklamationen zu einer Bestellung'),(2,4,'Service client','Para cualquier pregunta o queja acerca de un pedido'),(2,5,'Service client','Pour toute question ou réclamation sur une commande'),(2,6,'Servizio clienti','Per qualsiasi domanda o reclamo riguardo ad un ordine'),(2,7,'Service client','Para cualquier pregunta o queja acerca de un pedido'),(2,8,'Service client','Para cualquier pregunta o queja acerca de un pedido');
/*!40000 ALTER TABLE `ps_2contact_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2contact_shop`
--

DROP TABLE IF EXISTS `ps_2contact_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2contact_shop` (
  `id_contact` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_contact`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2contact_shop`
--

LOCK TABLES `ps_2contact_shop` WRITE;
/*!40000 ALTER TABLE `ps_2contact_shop` DISABLE KEYS */;
INSERT INTO `ps_2contact_shop` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `ps_2contact_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2country`
--

DROP TABLE IF EXISTS `ps_2country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2country` (
  `id_country` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_zone` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL DEFAULT '0',
  `iso_code` varchar(3) NOT NULL,
  `call_prefix` int(10) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `contains_states` tinyint(1) NOT NULL DEFAULT '0',
  `need_identification_number` tinyint(1) NOT NULL DEFAULT '0',
  `need_zip_code` tinyint(1) NOT NULL DEFAULT '1',
  `zip_code_format` varchar(12) NOT NULL DEFAULT '',
  `display_tax_label` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_country`),
  KEY `country_iso_code` (`iso_code`),
  KEY `country_` (`id_zone`)
) ENGINE=InnoDB AUTO_INCREMENT=246 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2country`
--

LOCK TABLES `ps_2country` WRITE;
/*!40000 ALTER TABLE `ps_2country` DISABLE KEYS */;
INSERT INTO `ps_2country` VALUES (1,1,0,'DE',49,0,0,0,1,'NNNNN',1),(2,1,0,'AT',43,0,0,0,1,'NNNN',1),(3,1,0,'BE',32,0,0,0,1,'NNNN',1),(4,2,0,'CA',1,0,1,0,1,'LNL NLN',0),(5,3,0,'CN',86,0,0,0,1,'NNNNNN',1),(6,1,0,'ES',34,1,0,1,1,'NNNNN',1),(7,1,0,'FI',358,0,0,0,1,'NNNNN',1),(8,1,0,'FR',33,0,0,0,1,'NNNNN',1),(9,1,0,'GR',30,0,0,0,1,'NNNNN',1),(10,1,0,'IT',39,0,1,0,1,'NNNNN',1),(11,3,0,'JP',81,0,1,0,1,'NNN-NNNN',1),(12,1,0,'LU',352,0,0,0,1,'NNNN',1),(13,1,0,'NL',31,0,0,0,1,'NNNN LL',1),(14,1,0,'PL',48,0,0,0,1,'NN-NNN',1),(15,1,0,'PT',351,0,0,0,1,'NNNN NNN',1),(16,1,0,'CZ',420,0,0,0,1,'NNN NN',1),(17,1,0,'GB',44,0,0,0,1,'',1),(18,1,0,'SE',46,0,0,0,1,'NNN NN',1),(19,7,0,'CH',41,0,0,0,1,'NNNN',1),(20,1,0,'DK',45,0,0,0,1,'NNNN',1),(21,2,0,'US',1,0,1,0,1,'NNNNN',0),(22,3,0,'HK',852,0,0,0,0,'',1),(23,7,0,'NO',47,0,0,0,1,'NNNN',1),(24,5,0,'AU',61,0,0,0,1,'NNNN',1),(25,3,0,'SG',65,0,0,0,1,'NNNNNN',1),(26,1,0,'IE',353,0,0,0,1,'',1),(27,5,0,'NZ',64,0,0,0,1,'NNNN',1),(28,3,0,'KR',82,0,0,0,1,'NNN-NNN',1),(29,3,0,'IL',972,0,0,0,1,'NNNNN',1),(30,4,0,'ZA',27,0,0,0,1,'NNNN',1),(31,4,0,'NG',234,0,0,0,1,'',1),(32,4,0,'CI',225,0,0,0,1,'',1),(33,4,0,'TG',228,0,0,0,1,'',1),(34,6,0,'BO',591,0,0,0,1,'',1),(35,4,0,'MU',230,0,0,0,1,'',1),(36,1,0,'RO',40,0,0,0,1,'NNNNNN',1),(37,1,0,'SK',421,0,0,0,1,'NNN NN',1),(38,4,0,'DZ',213,0,0,0,1,'NNNNN',1),(39,2,0,'AS',0,0,0,0,1,'',1),(40,7,0,'AD',376,0,0,0,1,'CNNN',1),(41,4,0,'AO',244,0,0,0,0,'',1),(42,8,0,'AI',0,0,0,0,1,'',1),(43,2,0,'AG',0,0,0,0,1,'',1),(44,6,0,'AR',54,0,1,0,1,'LNNNN',1),(45,3,0,'AM',374,0,0,0,1,'NNNN',1),(46,8,0,'AW',297,0,0,0,1,'',1),(47,3,0,'AZ',994,0,0,0,1,'CNNNN',1),(48,2,0,'BS',0,0,0,0,1,'',1),(49,3,0,'BH',973,0,0,0,1,'',1),(50,3,0,'BD',880,0,0,0,1,'NNNN',1),(51,2,0,'BB',0,0,0,0,1,'CNNNNN',1),(52,7,0,'BY',0,0,0,0,1,'NNNNNN',1),(53,8,0,'BZ',501,0,0,0,0,'',1),(54,4,0,'BJ',229,0,0,0,0,'',1),(55,2,0,'BM',0,0,0,0,1,'',1),(56,3,0,'BT',975,0,0,0,1,'',1),(57,4,0,'BW',267,0,0,0,1,'',1),(58,6,0,'BR',55,0,0,0,1,'NNNNN-NNN',1),(59,3,0,'BN',673,0,0,0,1,'LLNNNN',1),(60,4,0,'BF',226,0,0,0,1,'',1),(61,3,0,'MM',95,0,0,0,1,'',1),(62,4,0,'BI',257,0,0,0,1,'',1),(63,3,0,'KH',855,0,0,0,1,'NNNNN',1),(64,4,0,'CM',237,0,0,0,1,'',1),(65,4,0,'CV',238,0,0,0,1,'NNNN',1),(66,4,0,'CF',236,0,0,0,1,'',1),(67,4,0,'TD',235,0,0,0,1,'',1),(68,6,0,'CL',56,0,0,0,1,'NNN-NNNN',1),(69,6,0,'CO',57,0,0,0,1,'NNNNNN',1),(70,4,0,'KM',269,0,0,0,1,'',1),(71,4,0,'CD',242,0,0,0,1,'',1),(72,4,0,'CG',243,0,0,0,1,'',1),(73,8,0,'CR',506,0,0,0,1,'NNNNN',1),(74,7,0,'HR',385,0,0,0,1,'NNNNN',1),(75,8,0,'CU',53,0,0,0,1,'',1),(76,1,0,'CY',357,0,0,0,1,'NNNN',1),(77,4,0,'DJ',253,0,0,0,1,'',1),(78,8,0,'DM',0,0,0,0,1,'',1),(79,8,0,'DO',0,0,0,0,1,'',1),(80,3,0,'TL',670,0,0,0,1,'',1),(81,6,0,'EC',593,0,0,0,1,'CNNNNNN',1),(82,4,0,'EG',20,0,0,0,0,'',1),(83,8,0,'SV',503,0,0,0,1,'',1),(84,4,0,'GQ',240,0,0,0,1,'',1),(85,4,0,'ER',291,0,0,0,1,'',1),(86,1,0,'EE',372,0,0,0,1,'NNNNN',1),(87,4,0,'ET',251,0,0,0,1,'',1),(88,8,0,'FK',0,0,0,0,1,'LLLL NLL',1),(89,7,0,'FO',298,0,0,0,1,'',1),(90,5,0,'FJ',679,0,0,0,1,'',1),(91,4,0,'GA',241,0,0,0,1,'',1),(92,4,0,'GM',220,0,0,0,1,'',1),(93,3,0,'GE',995,0,0,0,1,'NNNN',1),(94,4,0,'GH',233,0,0,0,1,'',1),(95,8,0,'GD',0,0,0,0,1,'',1),(96,7,0,'GL',299,0,0,0,1,'',1),(97,7,0,'GI',350,0,0,0,1,'',1),(98,8,0,'GP',590,0,0,0,1,'',1),(99,5,0,'GU',0,0,0,0,1,'',1),(100,8,0,'GT',502,0,0,0,1,'',1),(101,7,0,'GG',0,0,0,0,1,'LLN NLL',1),(102,4,0,'GN',224,0,0,0,1,'',1),(103,4,0,'GW',245,0,0,0,1,'',1),(104,6,0,'GY',592,0,0,0,1,'',1),(105,8,0,'HT',509,0,0,0,1,'',1),(106,5,0,'HM',0,0,0,0,1,'',1),(107,7,0,'VA',379,0,0,0,1,'NNNNN',1),(108,8,0,'HN',504,0,0,0,1,'',1),(109,7,0,'IS',354,0,0,0,1,'NNN',1),(110,3,0,'IN',91,0,0,0,1,'NNN NNN',1),(111,3,0,'ID',62,0,1,0,1,'NNNNN',1),(112,3,0,'IR',98,0,0,0,1,'NNNNN-NNNNN',1),(113,3,0,'IQ',964,0,0,0,1,'NNNNN',1),(114,7,0,'IM',0,0,0,0,1,'CN NLL',1),(115,8,0,'JM',0,0,0,0,1,'',1),(116,7,0,'JE',0,0,0,0,1,'CN NLL',1),(117,3,0,'JO',962,0,0,0,1,'',1),(118,3,0,'KZ',7,0,0,0,1,'NNNNNN',1),(119,4,0,'KE',254,0,0,0,1,'',1),(120,5,0,'KI',686,0,0,0,1,'',1),(121,3,0,'KP',850,0,0,0,1,'',1),(122,3,0,'KW',965,0,0,0,1,'',1),(123,3,0,'KG',996,0,0,0,1,'',1),(124,3,0,'LA',856,0,0,0,1,'',1),(125,1,0,'LV',371,0,0,0,1,'C-NNNN',1),(126,3,0,'LB',961,0,0,0,1,'',1),(127,4,0,'LS',266,0,0,0,1,'',1),(128,4,0,'LR',231,0,0,0,1,'',1),(129,4,0,'LY',218,0,0,0,1,'',1),(130,1,0,'LI',423,0,0,0,1,'NNNN',1),(131,1,0,'LT',370,0,0,0,1,'NNNNN',1),(132,3,0,'MO',853,0,0,0,0,'',1),(133,7,0,'MK',389,0,0,0,1,'',1),(134,4,0,'MG',261,0,0,0,1,'',1),(135,4,0,'MW',265,0,0,0,1,'',1),(136,3,0,'MY',60,0,0,0,1,'NNNNN',1),(137,3,0,'MV',960,0,0,0,1,'',1),(138,4,0,'ML',223,0,0,0,1,'',1),(139,1,0,'MT',356,0,0,0,1,'LLL NNNN',1),(140,5,0,'MH',692,0,0,0,1,'',1),(141,8,0,'MQ',596,0,0,0,1,'',1),(142,4,0,'MR',222,0,0,0,1,'',1),(143,1,0,'HU',36,0,0,0,1,'NNNN',1),(144,4,0,'YT',262,0,0,0,1,'',1),(145,2,0,'MX',52,0,1,1,1,'NNNNN',1),(146,5,0,'FM',691,0,0,0,1,'',1),(147,7,0,'MD',373,0,0,0,1,'C-NNNN',1),(148,7,0,'MC',377,0,0,0,1,'980NN',1),(149,3,0,'MN',976,0,0,0,1,'',1),(150,7,0,'ME',382,0,0,0,1,'NNNNN',1),(151,8,0,'MS',0,0,0,0,1,'',1),(152,4,0,'MA',212,0,0,0,1,'NNNNN',1),(153,4,0,'MZ',258,0,0,0,1,'',1),(154,4,0,'NA',264,0,0,0,1,'',1),(155,5,0,'NR',674,0,0,0,1,'',1),(156,3,0,'NP',977,0,0,0,1,'',1),(157,8,0,'AN',599,0,0,0,1,'',1),(158,5,0,'NC',687,0,0,0,1,'',1),(159,8,0,'NI',505,0,0,0,1,'NNNNNN',1),(160,4,0,'NE',227,0,0,0,1,'',1),(161,5,0,'NU',683,0,0,0,1,'',1),(162,5,0,'NF',0,0,0,0,1,'',1),(163,5,0,'MP',0,0,0,0,1,'',1),(164,3,0,'OM',968,0,0,0,1,'',1),(165,3,0,'PK',92,0,0,0,1,'',1),(166,5,0,'PW',680,0,0,0,1,'',1),(167,3,0,'PS',0,0,0,0,1,'',1),(168,8,0,'PA',507,0,0,0,1,'NNNNNN',1),(169,5,0,'PG',675,0,0,0,1,'',1),(170,6,0,'PY',595,0,0,0,1,'',1),(171,6,0,'PE',51,0,0,0,1,'',1),(172,3,0,'PH',63,0,0,0,1,'NNNN',1),(173,5,0,'PN',0,0,0,0,1,'LLLL NLL',1),(174,8,0,'PR',0,0,0,0,1,'NNNNN',1),(175,3,0,'QA',974,0,0,0,1,'',1),(176,4,0,'RE',262,0,0,0,1,'',1),(177,7,0,'RU',7,0,0,0,1,'NNNNNN',1),(178,4,0,'RW',250,0,0,0,1,'',1),(179,8,0,'BL',0,0,0,0,1,'',1),(180,8,0,'KN',0,0,0,0,1,'',1),(181,8,0,'LC',0,0,0,0,1,'',1),(182,8,0,'MF',0,0,0,0,1,'',1),(183,8,0,'PM',508,0,0,0,1,'',1),(184,8,0,'VC',0,0,0,0,1,'',1),(185,5,0,'WS',685,0,0,0,1,'',1),(186,7,0,'SM',378,0,0,0,1,'NNNNN',1),(187,4,0,'ST',239,0,0,0,1,'',1),(188,3,0,'SA',966,0,0,0,1,'',1),(189,4,0,'SN',221,0,0,0,1,'',1),(190,7,0,'RS',381,0,0,0,1,'NNNNN',1),(191,4,0,'SC',248,0,0,0,1,'',1),(192,4,0,'SL',232,0,0,0,1,'',1),(193,1,0,'SI',386,0,0,0,1,'C-NNNN',1),(194,5,0,'SB',677,0,0,0,1,'',1),(195,4,0,'SO',252,0,0,0,1,'',1),(196,8,0,'GS',0,0,0,0,1,'LLLL NLL',1),(197,3,0,'LK',94,0,0,0,1,'NNNNN',1),(198,4,0,'SD',249,0,0,0,1,'',1),(199,8,0,'SR',597,0,0,0,1,'',1),(200,7,0,'SJ',0,0,0,0,1,'',1),(201,4,0,'SZ',268,0,0,0,1,'',1),(202,3,0,'SY',963,0,0,0,1,'',1),(203,3,0,'TW',886,0,0,0,1,'NNNNN',1),(204,3,0,'TJ',992,0,0,0,1,'',1),(205,4,0,'TZ',255,0,0,0,1,'',1),(206,3,0,'TH',66,0,0,0,1,'NNNNN',1),(207,5,0,'TK',690,0,0,0,1,'',1),(208,5,0,'TO',676,0,0,0,1,'',1),(209,6,0,'TT',0,0,0,0,1,'',1),(210,4,0,'TN',216,0,0,0,1,'',1),(211,7,0,'TR',90,0,0,0,1,'NNNNN',1),(212,3,0,'TM',993,0,0,0,1,'',1),(213,8,0,'TC',0,0,0,0,1,'LLLL NLL',1),(214,5,0,'TV',688,0,0,0,1,'',1),(215,4,0,'UG',256,0,0,0,1,'',1),(216,1,0,'UA',380,0,0,0,1,'NNNNN',1),(217,3,0,'AE',971,0,0,0,1,'',1),(218,6,0,'UY',598,0,0,0,1,'',1),(219,3,0,'UZ',998,0,0,0,1,'',1),(220,5,0,'VU',678,0,0,0,1,'',1),(221,6,0,'VE',58,0,0,0,1,'',1),(222,3,0,'VN',84,0,0,0,1,'NNNNNN',1),(223,2,0,'VG',0,0,0,0,1,'CNNNN',1),(224,2,0,'VI',0,0,0,0,1,'',1),(225,5,0,'WF',681,0,0,0,1,'',1),(226,4,0,'EH',0,0,0,0,1,'',1),(227,3,0,'YE',967,0,0,0,1,'',1),(228,4,0,'ZM',260,0,0,0,1,'',1),(229,4,0,'ZW',263,0,0,0,1,'',1),(230,7,0,'AL',355,0,0,0,1,'NNNN',1),(231,3,0,'AF',93,0,0,0,0,'',1),(232,5,0,'AQ',0,0,0,0,1,'',1),(233,1,0,'BA',387,0,0,0,1,'',1),(234,5,0,'BV',0,0,0,0,1,'',1),(235,5,0,'IO',0,0,0,0,1,'LLLL NLL',1),(236,1,0,'BG',359,0,0,0,1,'NNNN',1),(237,8,0,'KY',0,0,0,0,1,'',1),(238,3,0,'CX',0,0,0,0,1,'',1),(239,3,0,'CC',0,0,0,0,1,'',1),(240,5,0,'CK',682,0,0,0,1,'',1),(241,6,0,'GF',594,0,0,0,1,'',1),(242,5,0,'PF',689,0,0,0,1,'',1),(243,5,0,'TF',0,0,0,0,1,'',1),(244,7,0,'AX',0,0,0,0,1,'NNNNN',1),(245,7,1,'chk',666,1,0,0,1,'NNNNN',1);
/*!40000 ALTER TABLE `ps_2country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2country_lang`
--

DROP TABLE IF EXISTS `ps_2country_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2country_lang` (
  `id_country` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_country`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2country_lang`
--

LOCK TABLES `ps_2country_lang` WRITE;
/*!40000 ALTER TABLE `ps_2country_lang` DISABLE KEYS */;
INSERT INTO `ps_2country_lang` VALUES (1,1,'Germany2'),(1,2,'Alemanha'),(1,3,'Deutschland'),(1,4,'Alemania2'),(1,5,'Allemagne'),(1,6,'Germany'),(1,7,'Alemania'),(1,8,'Alemania'),(2,1,'Austria'),(2,2,'Áustria'),(2,3,'Österreich'),(2,4,'Austria'),(2,5,'Autriche'),(2,6,'Austria'),(2,7,'Austria'),(2,8,'Austria'),(3,1,'Belgium'),(3,2,'Bélgica'),(3,3,'Belgien'),(3,4,'Bélgica'),(3,5,'Belgique'),(3,6,'Belgium'),(3,7,'Bélgica'),(3,8,'Bélgica'),(4,1,'Canada'),(4,2,'Canadá'),(4,3,'Kanada'),(4,4,'Canadá'),(4,5,'Canada'),(4,6,'Canada'),(4,7,'Canadá'),(4,8,'Canadá'),(5,1,'China'),(5,2,'China'),(5,3,'China'),(5,4,'Porcelana'),(5,5,'Chine'),(5,6,'China'),(5,7,'Porcelana'),(5,8,'Porcelana'),(6,1,'Spain'),(6,2,'Espanha'),(6,3,'Spanien'),(6,4,'España'),(6,5,'Espagne'),(6,6,'Spain'),(6,7,'España'),(6,8,'España'),(7,1,'Finland'),(7,2,'Finlândia'),(7,3,'Finnland'),(7,4,'Finlandia'),(7,5,'Finlande'),(7,6,'Finland'),(7,7,'Finlandia'),(7,8,'Finlandia'),(8,1,'France'),(8,2,'França'),(8,3,'Frankreich'),(8,4,'Francia'),(8,5,'France'),(8,6,'France'),(8,7,'Francia'),(8,8,'Francia'),(9,1,'Greece'),(9,2,'Grécia'),(9,3,'Griechenland'),(9,4,'Grecia'),(9,5,'Grèce'),(9,6,'Greece'),(9,7,'Grecia'),(9,8,'Grecia'),(10,1,'Italy'),(10,2,'Itália'),(10,3,'Italien'),(10,4,'Italia'),(10,5,'Italie'),(10,6,'Italy'),(10,7,'Italia'),(10,8,'Italia'),(11,1,'Japan'),(11,2,'Japão'),(11,3,'Japan'),(11,4,'Japón'),(11,5,'Japon'),(11,6,'Japan'),(11,7,'Japón'),(11,8,'Japón'),(12,1,'Luxemburg'),(12,2,'Luxemburgo'),(12,3,'Luxemburg'),(12,4,'Luxemburgo'),(12,5,'Luxembourg'),(12,6,'Luxemburg'),(12,7,'Luxemburgo'),(12,8,'Luxemburgo'),(13,1,'Netherlands'),(13,2,'Holanda'),(13,3,'Niederlande'),(13,4,'Países Bajos'),(13,5,'Pays-bas'),(13,6,'Netherlands'),(13,7,'Países Bajos'),(13,8,'Países Bajos'),(14,1,'Poland'),(14,2,'Polônia'),(14,3,'Polen'),(14,4,'Polonia'),(14,5,'Pologne'),(14,6,'Poland'),(14,7,'Polonia'),(14,8,'Polonia'),(15,1,'Portugal'),(15,2,'Portugal'),(15,3,'Portugal'),(15,4,'Portugal'),(15,5,'Portugal'),(15,6,'Portugal'),(15,7,'Portugal'),(15,8,'Portugal'),(16,1,'Czech Republic'),(16,2,'República Tcheca'),(16,3,'Tschechische Republik'),(16,4,'República Checa'),(16,5,'République Tchèque'),(16,6,'Czech Republic'),(16,7,'República Checa'),(16,8,'República Checa'),(17,1,'United Kingdom'),(17,2,'Reino Unido'),(17,3,'Vereinigtes Königreich'),(17,4,'Reino Unido'),(17,5,'Royaume-Uni'),(17,6,'United Kingdom'),(17,7,'Reino Unido'),(17,8,'Reino Unido'),(18,1,'Sweden'),(18,2,'Suécia'),(18,3,'Schweden'),(18,4,'Suecia'),(18,5,'Suède'),(18,6,'Sweden'),(18,7,'Suecia'),(18,8,'Suecia'),(19,1,'Switzerland'),(19,2,'Suíça'),(19,3,'Schweiz'),(19,4,'Suiza'),(19,5,'Suisse'),(19,6,'Switzerland'),(19,7,'Suiza'),(19,8,'Suiza'),(20,1,'Denmark'),(20,2,'Dinamarca'),(20,3,'Dänemark'),(20,4,'Dinamarca'),(20,5,'Danemark'),(20,6,'Denmark'),(20,7,'Dinamarca'),(20,8,'Dinamarca'),(21,1,'United States'),(21,2,'Estados Unidos'),(21,3,'Vereinigte Staaten'),(21,4,'EE.UU.'),(21,5,'États-Unis'),(21,6,'United States'),(21,7,'EE.UU.'),(21,8,'EE.UU.'),(22,1,'HongKong'),(22,2,'HongKong'),(22,3,'Hongkong'),(22,4,'Hong Kong'),(22,5,'Hong-Kong'),(22,6,'HongKong'),(22,7,'Hong Kong'),(22,8,'Hong Kong'),(23,1,'Norway'),(23,2,'Noruega'),(23,3,'Norwegen'),(23,4,'Noruega'),(23,5,'Norvège'),(23,6,'Norway'),(23,7,'Noruega'),(23,8,'Noruega'),(24,1,'Australia'),(24,2,'Australia'),(24,3,'Australien'),(24,4,'Australia'),(24,5,'Australie'),(24,6,'Australia'),(24,7,'Australia'),(24,8,'Australia'),(25,1,'Singapore'),(25,2,'Singapura'),(25,3,'Singapur'),(25,4,'Singapur'),(25,5,'Singapour'),(25,6,'Singapore'),(25,7,'Singapur'),(25,8,'Singapur'),(26,1,'Ireland'),(26,2,'Irlanda'),(26,3,'Irland'),(26,4,'Irlanda'),(26,5,'Ireland'),(26,6,'Ireland'),(26,7,'Irlanda'),(26,8,'Irlanda'),(27,1,'New Zealand'),(27,2,'Nova Zelândia'),(27,3,'Neuseeland'),(27,4,'Nueva Zelanda'),(27,5,'Nouvelle-Zélande'),(27,6,'New Zealand'),(27,7,'Nueva Zelanda'),(27,8,'Nueva Zelanda'),(28,1,'South Korea'),(28,2,'Coréa do Sul'),(28,3,'Südkorea'),(28,4,'Corea del Sur'),(28,5,'Corée du Sud'),(28,6,'South Korea'),(28,7,'Corea del Sur'),(28,8,'Corea del Sur'),(29,1,'Israel'),(29,2,'Israel'),(29,3,'Israel'),(29,4,'Israel'),(29,5,'Israël'),(29,6,'Israel'),(29,7,'Israel'),(29,8,'Israel'),(30,1,'South Africa'),(30,2,'África do Sul'),(30,3,'Südafrika'),(30,4,'Sudáfrica'),(30,5,'Afrique du Sud'),(30,6,'South Africa'),(30,7,'Sudáfrica'),(30,8,'Sudáfrica'),(31,1,'Nigeria'),(31,2,'Nigeria'),(31,3,'Nigeria'),(31,4,'Nigeria'),(31,5,'Nigeria'),(31,6,'Nigeria'),(31,7,'Nigeria'),(31,8,'Nigeria'),(32,1,'Ivory Coast'),(32,2,'Costa do Marfim'),(32,3,'Côte d\'Ivoire'),(32,4,'Costa de Marfil'),(32,5,'Côte d\'Ivoire'),(32,6,'Ivory Coast'),(32,7,'Costa de Marfil'),(32,8,'Costa de Marfil'),(33,1,'Togo'),(33,2,'Togo'),(33,3,'Togo'),(33,4,'Togo'),(33,5,'Togo'),(33,6,'Togo'),(33,7,'Togo'),(33,8,'Togo'),(34,1,'Bolivia'),(34,2,'Bolivia'),(34,3,'Bolivien'),(34,4,'Bolivia'),(34,5,'Bolivie'),(34,6,'Bolivia'),(34,7,'Bolivia'),(34,8,'Bolivia'),(35,1,'Mauritius'),(35,2,'Mauritius'),(35,3,'Mauritius'),(35,4,'Mauricio'),(35,5,'Ile Maurice'),(35,6,'Mauritius'),(35,7,'Mauricio'),(35,8,'Mauricio'),(36,1,'Romania'),(36,2,'Romania'),(36,3,'Rumänien'),(36,4,'Rumania'),(36,5,'Roumanie'),(36,6,'Romania'),(36,7,'Rumania'),(36,8,'Rumania'),(37,1,'Slovakia'),(37,2,'Slovakia'),(37,3,'Slowakei'),(37,4,'Eslovaquia'),(37,5,'Slovaquie'),(37,6,'Slovakia'),(37,7,'Eslovaquia'),(37,8,'Eslovaquia'),(38,1,'Algeria'),(38,2,'Algeria'),(38,3,'Algerien'),(38,4,'Argelia'),(38,5,'Algérie'),(38,6,'Algeria'),(38,7,'Argelia'),(38,8,'Argelia'),(39,1,'American Samoa'),(39,2,'Samoa Americana'),(39,3,'Amerikanisch-Samoa'),(39,4,'Samoa Americana'),(39,5,'Samoa Américaines'),(39,6,'American Samoa'),(39,7,'Samoa Americana'),(39,8,'Samoa Americana'),(40,1,'Andorra'),(40,2,'Andorra'),(40,3,'Andorra'),(40,4,'Andorra'),(40,5,'Andorre'),(40,6,'Andorra'),(40,7,'Andorra'),(40,8,'Andorra'),(41,1,'Angola'),(41,2,'Angola'),(41,3,'Angola'),(41,4,'Angola'),(41,5,'Angola'),(41,6,'Angola'),(41,7,'Angola'),(41,8,'Angola'),(42,1,'Anguilla'),(42,2,'Anguilla'),(42,3,'Anguilla'),(42,4,'Anguila'),(42,5,'Anguilla'),(42,6,'Anguilla'),(42,7,'Anguila'),(42,8,'Anguila'),(43,1,'Antigua and Barbuda'),(43,2,'Antigua and Barbuda'),(43,3,'Antigua und Barbuda'),(43,4,'Antigua y Barbuda'),(43,5,'Antigua et Barbuda'),(43,6,'Antigua and Barbuda'),(43,7,'Antigua y Barbuda'),(43,8,'Antigua y Barbuda'),(44,1,'Argentina'),(44,2,'Argentina'),(44,3,'Argentinien'),(44,4,'Argentina'),(44,5,'Argentine'),(44,6,'Argentina'),(44,7,'Argentina'),(44,8,'Argentina'),(45,1,'Armenia'),(45,2,'Armenia'),(45,3,'Armenien'),(45,4,'Armenia'),(45,5,'Arménie'),(45,6,'Armenia'),(45,7,'Armenia'),(45,8,'Armenia'),(46,1,'Aruba'),(46,2,'Aruba'),(46,3,'Aruba'),(46,4,'Aruba'),(46,5,'Aruba'),(46,6,'Aruba'),(46,7,'Aruba'),(46,8,'Aruba'),(47,1,'Azerbaijan'),(47,2,'Azerbaijan'),(47,3,'Aserbaidschan'),(47,4,'Azerbaiyán'),(47,5,'Azerbaïdjan'),(47,6,'Azerbaijan'),(47,7,'Azerbaiyán'),(47,8,'Azerbaiyán'),(48,1,'Bahamas'),(48,2,'Bahamas'),(48,3,'Bahamas'),(48,4,'Bahamas'),(48,5,'Bahamas'),(48,6,'Bahamas'),(48,7,'Bahamas'),(48,8,'Bahamas'),(49,1,'Bahrain'),(49,2,'Bahrain'),(49,3,'Bahrain'),(49,4,'Bahrein'),(49,5,'Bahreïn'),(49,6,'Bahrain'),(49,7,'Bahrein'),(49,8,'Bahrein'),(50,1,'Bangladesh'),(50,2,'Bangladesh'),(50,3,'Bangladesch'),(50,4,'Bangladesh'),(50,5,'Bangladesh'),(50,6,'Bangladesh'),(50,7,'Bangladesh'),(50,8,'Bangladesh'),(51,1,'Barbados'),(51,2,'Barbados'),(51,3,'Barbados'),(51,4,'Barbados'),(51,5,'Barbade'),(51,6,'Barbados'),(51,7,'Barbados'),(51,8,'Barbados'),(52,1,'Belarus'),(52,2,'Belarus'),(52,3,'Weißrussland'),(52,4,'Belarús'),(52,5,'Bélarus'),(52,6,'Belarus'),(52,7,'Belarús'),(52,8,'Belarús'),(53,1,'Belize'),(53,2,'Belize'),(53,3,'Belize'),(53,4,'Belice'),(53,5,'Belize'),(53,6,'Belize'),(53,7,'Belice'),(53,8,'Belice'),(54,1,'Benin'),(54,2,'Benin'),(54,3,'Benin'),(54,4,'Benin'),(54,5,'Bénin'),(54,6,'Benin'),(54,7,'Benin'),(54,8,'Benin'),(55,1,'Bermuda'),(55,2,'Bermuda'),(55,3,'Bermuda'),(55,4,'Bermudas'),(55,5,'Bermudes'),(55,6,'Bermuda'),(55,7,'Bermudas'),(55,8,'Bermudas'),(56,1,'Bhutan'),(56,2,'Bhutan'),(56,3,'Bhutan'),(56,4,'Bhután'),(56,5,'Bhoutan'),(56,6,'Bhutan'),(56,7,'Bhután'),(56,8,'Bhután'),(57,1,'Botswana'),(57,2,'Botswana'),(57,3,'Botswana'),(57,4,'Botswana'),(57,5,'Botswana'),(57,6,'Botswana'),(57,7,'Botswana'),(57,8,'Botswana'),(58,1,'Brazil'),(58,2,'Brazil'),(58,3,'Brasilien'),(58,4,'Brasil'),(58,5,'Brésil'),(58,6,'Brazil'),(58,7,'Brasil'),(58,8,'Brasil'),(59,1,'Brunei'),(59,2,'Brunei'),(59,3,'Brunei Darussalam'),(59,4,'Brunei'),(59,5,'Brunéi Darussalam'),(59,6,'Brunei'),(59,7,'Brunei'),(59,8,'Brunei'),(60,1,'Burkina Faso'),(60,2,'Burkina Faso'),(60,3,'Burkina Faso'),(60,4,'Burkina Faso'),(60,5,'Burkina Faso'),(60,6,'Burkina Faso'),(60,7,'Burkina Faso'),(60,8,'Burkina Faso'),(61,1,'Burma (Myanmar)'),(61,2,'Burma (Myanmar)'),(61,3,'Myanmar (Burma)'),(61,4,'Birmania (Myanmar)'),(61,5,'Burma (Myanmar)'),(61,6,'Burma (Myanmar)'),(61,7,'Birmania (Myanmar)'),(61,8,'Birmania (Myanmar)'),(62,1,'Burundi'),(62,2,'Burundi'),(62,3,'Burundi'),(62,4,'Burundi'),(62,5,'Burundi'),(62,6,'Burundi'),(62,7,'Burundi'),(62,8,'Burundi'),(63,1,'Cambodia'),(63,2,'Cambodia'),(63,3,'Kambodscha'),(63,4,'Camboya'),(63,5,'Cambodge'),(63,6,'Cambodia'),(63,7,'Camboya'),(63,8,'Camboya'),(64,1,'Cameroon'),(64,2,'Cameroon'),(64,3,'Kamerun'),(64,4,'Camerún'),(64,5,'Cameroun'),(64,6,'Cameroon'),(64,7,'Camerún'),(64,8,'Camerún'),(65,1,'Cape Verde'),(65,2,'Cape Verde'),(65,3,'Kap Verde'),(65,4,'Cabo Verde'),(65,5,'Cap-Vert'),(65,6,'Cape Verde'),(65,7,'Cabo Verde'),(65,8,'Cabo Verde'),(66,1,'Central African Republic'),(66,2,'Central African Republic'),(66,3,'Zentralafrikanische Republik'),(66,4,'República Centroafricana'),(66,5,'Centrafricaine, République'),(66,6,'Central African Republic'),(66,7,'República Centroafricana'),(66,8,'República Centroafricana'),(67,1,'Chad'),(67,2,'Chad'),(67,3,'Tschad'),(67,4,'Chad'),(67,5,'Tchad'),(67,6,'Chad'),(67,7,'Chad'),(67,8,'Chad'),(68,1,'Chile'),(68,2,'Chile'),(68,3,'Chile'),(68,4,'Chile'),(68,5,'Chili'),(68,6,'Chile'),(68,7,'Chile'),(68,8,'Chile'),(69,1,'Colombia'),(69,2,'Colombia'),(69,3,'Kolumbien'),(69,4,'Colombia'),(69,5,'Colombie'),(69,6,'Colombia'),(69,7,'Colombia'),(69,8,'Colombia'),(70,1,'Comoros'),(70,2,'Comoros'),(70,3,'Komoren'),(70,4,'Comoras'),(70,5,'Comores'),(70,6,'Comoros'),(70,7,'Comoras'),(70,8,'Comoras'),(71,1,'Congo, Dem. Republic'),(71,2,'Congo, Dem. Republic'),(71,3,'Demokratische Republik Kongo'),(71,4,'Congo, Rep. Dem.'),(71,5,'Congo, Rép. Dém.'),(71,6,'Congo, Dem. Republic'),(71,7,'Congo, Rep. Dem.'),(71,8,'Congo, Rep. Dem.'),(72,1,'Congo, Republic'),(72,2,'Congo, Republic'),(72,3,'Kongo'),(72,4,'Congo, República'),(72,5,'Congo, Rép.'),(72,6,'Congo, Republic'),(72,7,'Congo, República'),(72,8,'Congo, República'),(73,1,'Costa Rica'),(73,2,'Costa Rica'),(73,3,'Costa Rica'),(73,4,'Costa Rica'),(73,5,'Costa Rica'),(73,6,'Costa Rica'),(73,7,'Costa Rica'),(73,8,'Costa Rica'),(74,1,'Croatia'),(74,2,'Croatia'),(74,3,'Kroatien'),(74,4,'Croacia'),(74,5,'Croatie'),(74,6,'Croatia'),(74,7,'Croacia'),(74,8,'Croacia'),(75,1,'Cuba'),(75,2,'Cuba'),(75,3,'Kuba'),(75,4,'Cuba'),(75,5,'Cuba'),(75,6,'Cuba'),(75,7,'Cuba'),(75,8,'Cuba'),(76,1,'Cyprus'),(76,2,'Cyprus'),(76,3,'Zypern'),(76,4,'Chipre'),(76,5,'Chypre'),(76,6,'Cyprus'),(76,7,'Chipre'),(76,8,'Chipre'),(77,1,'Djibouti'),(77,2,'Djibouti'),(77,3,'Dschibuti'),(77,4,'Djibouti'),(77,5,'Djibouti'),(77,6,'Djibouti'),(77,7,'Djibouti'),(77,8,'Djibouti'),(78,1,'Dominica'),(78,2,'Dominica'),(78,3,'Dominica'),(78,4,'Dominica'),(78,5,'Dominica'),(78,6,'Dominica'),(78,7,'Dominica'),(78,8,'Dominica'),(79,1,'Dominican Republic'),(79,2,'Dominican Republic'),(79,3,'Dominikanische Republik'),(79,4,'República Dominicana'),(79,5,'République Dominicaine'),(79,6,'Dominican Republic'),(79,7,'República Dominicana'),(79,8,'República Dominicana'),(80,1,'East Timor'),(80,2,'East Timor'),(80,3,'Timor-Leste'),(80,4,'Timor Oriental'),(80,5,'Timor oriental'),(80,6,'East Timor'),(80,7,'Timor Oriental'),(80,8,'Timor Oriental'),(81,1,'Ecuador'),(81,2,'Ecuador'),(81,3,'Ecuador'),(81,4,'Ecuador'),(81,5,'Équateur'),(81,6,'Ecuador'),(81,7,'Ecuador'),(81,8,'Ecuador'),(82,1,'Egypt'),(82,2,'Egypt'),(82,3,'Ägypten'),(82,4,'Egipto'),(82,5,'Égypte'),(82,6,'Egypt'),(82,7,'Egipto'),(82,8,'Egipto'),(83,1,'El Salvador'),(83,2,'El Salvador'),(83,3,'El Salvador'),(83,4,'El Salvador'),(83,5,'El Salvador'),(83,6,'El Salvador'),(83,7,'El Salvador'),(83,8,'El Salvador'),(84,1,'Equatorial Guinea'),(84,2,'Equatorial Guinea'),(84,3,'Äquatorialguinea'),(84,4,'Guinea Ecuatorial'),(84,5,'Guinée Équatoriale'),(84,6,'Equatorial Guinea'),(84,7,'Guinea Ecuatorial'),(84,8,'Guinea Ecuatorial'),(85,1,'Eritrea'),(85,2,'Eritrea'),(85,3,'Eritrea'),(85,4,'Eritrea'),(85,5,'Érythrée'),(85,6,'Eritrea'),(85,7,'Eritrea'),(85,8,'Eritrea'),(86,1,'Estonia'),(86,2,'Estonia'),(86,3,'Estland'),(86,4,'Estonia'),(86,5,'Estonie'),(86,6,'Estonia'),(86,7,'Estonia'),(86,8,'Estonia'),(87,1,'Ethiopia'),(87,2,'Ethiopia'),(87,3,'Äthiopien'),(87,4,'Etiopía'),(87,5,'Éthiopie'),(87,6,'Ethiopia'),(87,7,'Etiopía'),(87,8,'Etiopía'),(88,1,'Falkland Islands'),(88,2,'Falkland Islands'),(88,3,'Falklandinseln'),(88,4,'Islas Malvinas'),(88,5,'Falkland, Îles'),(88,6,'Falkland Islands'),(88,7,'Islas Malvinas'),(88,8,'Islas Malvinas'),(89,1,'Faroe Islands'),(89,2,'Faroe Islands'),(89,3,'Färöer-Inseln'),(89,4,'Islas Feroe'),(89,5,'Féroé, Îles'),(89,6,'Faroe Islands'),(89,7,'Islas Feroe'),(89,8,'Islas Feroe'),(90,1,'Fiji'),(90,2,'Fiji'),(90,3,'Fidschi'),(90,4,'Fiji'),(90,5,'Fidji'),(90,6,'Fiji'),(90,7,'Fiji'),(90,8,'Fiji'),(91,1,'Gabon'),(91,2,'Gabon'),(91,3,'Gabun'),(91,4,'Gabón'),(91,5,'Gabon'),(91,6,'Gabon'),(91,7,'Gabón'),(91,8,'Gabón'),(92,1,'Gambia'),(92,2,'Gambia'),(92,3,'Gambia'),(92,4,'Gambia'),(92,5,'Gambie'),(92,6,'Gambia'),(92,7,'Gambia'),(92,8,'Gambia'),(93,1,'Georgia'),(93,2,'Georgia'),(93,3,'Georgien'),(93,4,'Georgia'),(93,5,'Géorgie'),(93,6,'Georgia'),(93,7,'Georgia'),(93,8,'Georgia'),(94,1,'Ghana'),(94,2,'Ghana'),(94,3,'Ghana'),(94,4,'Ghana'),(94,5,'Ghana'),(94,6,'Ghana'),(94,7,'Ghana'),(94,8,'Ghana'),(95,1,'Grenada'),(95,2,'Grenada'),(95,3,'Grenada'),(95,4,'Granada'),(95,5,'Grenade'),(95,6,'Grenada'),(95,7,'Granada'),(95,8,'Granada'),(96,1,'Greenland'),(96,2,'Greenland'),(96,3,'Grönland'),(96,4,'Groenlandia'),(96,5,'Groenland'),(96,6,'Greenland'),(96,7,'Groenlandia'),(96,8,'Groenlandia'),(97,1,'Gibraltar'),(97,2,'Gibraltar'),(97,3,'Gibraltar'),(97,4,'Gibraltar'),(97,5,'Gibraltar'),(97,6,'Gibraltar'),(97,7,'Gibraltar'),(97,8,'Gibraltar'),(98,1,'Guadeloupe'),(98,2,'Guadeloupe'),(98,3,'Guadeloupe'),(98,4,'Guadalupe'),(98,5,'Guadeloupe'),(98,6,'Guadeloupe'),(98,7,'Guadalupe'),(98,8,'Guadalupe'),(99,1,'Guam'),(99,2,'Guam'),(99,3,'Guam'),(99,4,'Guam'),(99,5,'Guam'),(99,6,'Guam'),(99,7,'Guam'),(99,8,'Guam'),(100,1,'Guatemala'),(100,2,'Guatemala'),(100,3,'Guatemala'),(100,4,'Guatemala'),(100,5,'Guatemala'),(100,6,'Guatemala'),(100,7,'Guatemala'),(100,8,'Guatemala'),(101,1,'Guernsey'),(101,2,'Guernsey'),(101,3,'Guernsey'),(101,4,'Guernsey'),(101,5,'Guernesey'),(101,6,'Guernsey'),(101,7,'Guernsey'),(101,8,'Guernsey'),(102,1,'Guinea'),(102,2,'Guinea'),(102,3,'Guinea'),(102,4,'Guinea'),(102,5,'Guinée'),(102,6,'Guinea'),(102,7,'Guinea'),(102,8,'Guinea'),(103,1,'Guinea-Bissau'),(103,2,'Guinea-Bissau'),(103,3,'Guinea-Bissau'),(103,4,'Guinea-Bissau'),(103,5,'Guinée-Bissau'),(103,6,'Guinea-Bissau'),(103,7,'Guinea-Bissau'),(103,8,'Guinea-Bissau'),(104,1,'Guyana'),(104,2,'Guyana'),(104,3,'Guyana'),(104,4,'Guyana'),(104,5,'Guyana'),(104,6,'Guyana'),(104,7,'Guyana'),(104,8,'Guyana'),(105,1,'Haiti'),(105,2,'Haiti'),(105,3,'Haiti'),(105,4,'Haití'),(105,5,'Haîti'),(105,6,'Haiti'),(105,7,'Haití'),(105,8,'Haití'),(106,1,'Heard Island and McDonald Islands'),(106,2,'Heard Island and McDonald Islands'),(106,3,'Heard und McDonaldinseln'),(106,4,'Islas Heard y McDonald Islas'),(106,5,'Heard, Île et Mcdonald, Îles'),(106,6,'Heard Island and McDonald Islands'),(106,7,'Islas Heard y McDonald Islas'),(106,8,'Islas Heard y McDonald Islas'),(107,1,'Vatican City State'),(107,2,'Vatican City State'),(107,3,'Vatikanstadt'),(107,4,'Ciudad del Vaticano'),(107,5,'Saint-Siege (État de la Cité du Vatican)'),(107,6,'Vatican City State'),(107,7,'Ciudad del Vaticano'),(107,8,'Ciudad del Vaticano'),(108,1,'Honduras'),(108,2,'Honduras'),(108,3,'Honduras'),(108,4,'Honduras'),(108,5,'Honduras'),(108,6,'Honduras'),(108,7,'Honduras'),(108,8,'Honduras'),(109,1,'Iceland'),(109,2,'Iceland'),(109,3,'Island'),(109,4,'Islandia'),(109,5,'Islande'),(109,6,'Iceland'),(109,7,'Islandia'),(109,8,'Islandia'),(110,1,'India'),(110,2,'India'),(110,3,'Indien'),(110,4,'India'),(110,5,'Inde'),(110,6,'India'),(110,7,'India'),(110,8,'India'),(111,1,'Indonesia'),(111,2,'Indonesia'),(111,3,'Indonesien'),(111,4,'Indonesia'),(111,5,'Indonésie'),(111,6,'Indonesia'),(111,7,'Indonesia'),(111,8,'Indonesia'),(112,1,'Iran'),(112,2,'Iran'),(112,3,'Iran'),(112,4,'Irán'),(112,5,'Iran'),(112,6,'Iran'),(112,7,'Irán'),(112,8,'Irán'),(113,1,'Iraq'),(113,2,'Iraq'),(113,3,'Irak'),(113,4,'Iraq'),(113,5,'Iraq'),(113,6,'Iraq'),(113,7,'Iraq'),(113,8,'Iraq'),(114,1,'Man Island'),(114,2,'Man Island'),(114,3,'Insel Man'),(114,4,'Man, Isla'),(114,5,'Man, Île de'),(114,6,'Man Island'),(114,7,'Man, Isla'),(114,8,'Man, Isla'),(115,1,'Jamaica'),(115,2,'Jamaica'),(115,3,'Jamaika'),(115,4,'Jamaica'),(115,5,'Jamaique'),(115,6,'Jamaica'),(115,7,'Jamaica'),(115,8,'Jamaica'),(116,1,'Jersey'),(116,2,'Jersey'),(116,3,'Jersey'),(116,4,'Jersey'),(116,5,'Jersey'),(116,6,'Jersey'),(116,7,'Jersey'),(116,8,'Jersey'),(117,1,'Jordan'),(117,2,'Jordan'),(117,3,'Jordanien'),(117,4,'Jordania'),(117,5,'Jordanie'),(117,6,'Jordan'),(117,7,'Jordania'),(117,8,'Jordania'),(118,1,'Kazakhstan'),(118,2,'Kazakhstan'),(118,3,'Kasachstan'),(118,4,'Kazajstán'),(118,5,'Kazakhstan'),(118,6,'Kazakhstan'),(118,7,'Kazajstán'),(118,8,'Kazajstán'),(119,1,'Kenya'),(119,2,'Kenya'),(119,3,'Kenia'),(119,4,'Kenya'),(119,5,'Kenya'),(119,6,'Kenya'),(119,7,'Kenya'),(119,8,'Kenya'),(120,1,'Kiribati'),(120,2,'Kiribati'),(120,3,'Kiribati'),(120,4,'Kiribati'),(120,5,'Kiribati'),(120,6,'Kiribati'),(120,7,'Kiribati'),(120,8,'Kiribati'),(121,1,'Korea, Dem. Republic of'),(121,2,'Korea, Dem. Republic of'),(121,3,'Nordkorea'),(121,4,'KOREA, DEM. República de'),(121,5,'Corée, Rép. Populaire Dém. de'),(121,6,'Korea, Dem. Republic of'),(121,7,'KOREA, DEM. República de'),(121,8,'KOREA, DEM. República de'),(122,1,'Kuwait'),(122,2,'Kuwait'),(122,3,'Kuwait'),(122,4,'Kuwait'),(122,5,'Koweït'),(122,6,'Kuwait'),(122,7,'Kuwait'),(122,8,'Kuwait'),(123,1,'Kyrgyzstan'),(123,2,'Kyrgyzstan'),(123,3,'Kirgisistan'),(123,4,'Kirguistán'),(123,5,'Kirghizistan'),(123,6,'Kyrgyzstan'),(123,7,'Kirguistán'),(123,8,'Kirguistán'),(124,1,'Laos'),(124,2,'Laos'),(124,3,'Laos'),(124,4,'Laos'),(124,5,'Laos'),(124,6,'Laos'),(124,7,'Laos'),(124,8,'Laos'),(125,1,'Latvia'),(125,2,'Latvia'),(125,3,'Lettland'),(125,4,'Letonia'),(125,5,'Lettonie'),(125,6,'Latvia'),(125,7,'Letonia'),(125,8,'Letonia'),(126,1,'Lebanon'),(126,2,'Lebanon'),(126,3,'Libanon'),(126,4,'Líbano'),(126,5,'Liban'),(126,6,'Lebanon'),(126,7,'Líbano'),(126,8,'Líbano'),(127,1,'Lesotho'),(127,2,'Lesotho'),(127,3,'Lesotho'),(127,4,'Lesotho'),(127,5,'Lesotho'),(127,6,'Lesotho'),(127,7,'Lesotho'),(127,8,'Lesotho'),(128,1,'Liberia'),(128,2,'Liberia'),(128,3,'Liberia'),(128,4,'Liberia'),(128,5,'Libéria'),(128,6,'Liberia'),(128,7,'Liberia'),(128,8,'Liberia'),(129,1,'Libya'),(129,2,'Libya'),(129,3,'Libyen'),(129,4,'Libia'),(129,5,'Libyenne, Jamahiriya Arabe'),(129,6,'Libya'),(129,7,'Libia'),(129,8,'Libia'),(130,1,'Liechtenstein'),(130,2,'Liechtenstein'),(130,3,'Liechtenstein'),(130,4,'Liechtenstein'),(130,5,'Liechtenstein'),(130,6,'Liechtenstein'),(130,7,'Liechtenstein'),(130,8,'Liechtenstein'),(131,1,'Lithuania'),(131,2,'Lithuania'),(131,3,'Litauen'),(131,4,'Lituania'),(131,5,'Lituanie'),(131,6,'Lithuania'),(131,7,'Lituania'),(131,8,'Lituania'),(132,1,'Macau'),(132,2,'Macau'),(132,3,'Macau'),(132,4,'Macao'),(132,5,'Macao'),(132,6,'Macau'),(132,7,'Macao'),(132,8,'Macao'),(133,1,'Macedonia'),(133,2,'Macedonia'),(133,3,'Mazedonien'),(133,4,'Macedonia'),(133,5,'Macédoine'),(133,6,'Macedonia'),(133,7,'Macedonia'),(133,8,'Macedonia'),(134,1,'Madagascar'),(134,2,'Madagascar'),(134,3,'Madagaskar'),(134,4,'Madagascar'),(134,5,'Madagascar'),(134,6,'Madagascar'),(134,7,'Madagascar'),(134,8,'Madagascar'),(135,1,'Malawi'),(135,2,'Malawi'),(135,3,'Malawi'),(135,4,'Malawi'),(135,5,'Malawi'),(135,6,'Malawi'),(135,7,'Malawi'),(135,8,'Malawi'),(136,1,'Malaysia'),(136,2,'Malaysia'),(136,3,'Malaysia'),(136,4,'Malasia'),(136,5,'Malaisie'),(136,6,'Malaysia'),(136,7,'Malasia'),(136,8,'Malasia'),(137,1,'Maldives'),(137,2,'Maldives'),(137,3,'Malediven'),(137,4,'Maldivas'),(137,5,'Maldives'),(137,6,'Maldives'),(137,7,'Maldivas'),(137,8,'Maldivas'),(138,1,'Mali'),(138,2,'Mali'),(138,3,'Mali'),(138,4,'Malí'),(138,5,'Mali'),(138,6,'Mali'),(138,7,'Malí'),(138,8,'Malí'),(139,1,'Malta'),(139,2,'Malta'),(139,3,'Malta'),(139,4,'Malta'),(139,5,'Malte'),(139,6,'Malta'),(139,7,'Malta'),(139,8,'Malta'),(140,1,'Marshall Islands'),(140,2,'Marshall Islands'),(140,3,'Marshallinseln'),(140,4,'Marshall, Islas'),(140,5,'Marshall, Îles'),(140,6,'Marshall Islands'),(140,7,'Marshall, Islas'),(140,8,'Marshall, Islas'),(141,1,'Martinique'),(141,2,'Martinique'),(141,3,'Martinique'),(141,4,'Martinica'),(141,5,'Martinique'),(141,6,'Martinique'),(141,7,'Martinica'),(141,8,'Martinica'),(142,1,'Mauritania'),(142,2,'Mauritania'),(142,3,'Mauretanien'),(142,4,'Mauritania'),(142,5,'Mauritanie'),(142,6,'Mauritania'),(142,7,'Mauritania'),(142,8,'Mauritania'),(143,1,'Hungary'),(143,2,'Hungary'),(143,3,'Ungarn'),(143,4,'Hungría'),(143,5,'Hongrie'),(143,6,'Hungary'),(143,7,'Hungría'),(143,8,'Hungría'),(144,1,'Mayotte'),(144,2,'Mayotte'),(144,3,'Mayotte'),(144,4,'Mayotte'),(144,5,'Mayotte'),(144,6,'Mayotte'),(144,7,'Mayotte'),(144,8,'Mayotte'),(145,1,'Mexico'),(145,2,'Mexico'),(145,3,'Mexiko'),(145,4,'México'),(145,5,'Mexique'),(145,6,'Mexico'),(145,7,'México'),(145,8,'México'),(146,1,'Micronesia'),(146,2,'Micronesia'),(146,3,'Mikronesien'),(146,4,'Micronesia'),(146,5,'Micronésie'),(146,6,'Micronesia'),(146,7,'Micronesia'),(146,8,'Micronesia'),(147,1,'Moldova'),(147,2,'Moldova'),(147,3,'Republik Moldau'),(147,4,'Moldavia'),(147,5,'Moldova'),(147,6,'Moldova'),(147,7,'Moldavia'),(147,8,'Moldavia'),(148,1,'Monaco'),(148,2,'Monaco'),(148,3,'Monaco'),(148,4,'Mónaco'),(148,5,'Monaco'),(148,6,'Monaco'),(148,7,'Mónaco'),(148,8,'Mónaco'),(149,1,'Mongolia'),(149,2,'Mongolia'),(149,3,'Mongolei'),(149,4,'Mongolia'),(149,5,'Mongolie'),(149,6,'Mongolia'),(149,7,'Mongolia'),(149,8,'Mongolia'),(150,1,'Montenegro'),(150,2,'Montenegro'),(150,3,'Montenegro'),(150,4,'Montenegro'),(150,5,'Monténégro'),(150,6,'Montenegro'),(150,7,'Montenegro'),(150,8,'Montenegro'),(151,1,'Montserrat'),(151,2,'Montserrat'),(151,3,'Montserrat'),(151,4,'Montserrat'),(151,5,'Montserrat'),(151,6,'Montserrat'),(151,7,'Montserrat'),(151,8,'Montserrat'),(152,1,'Morocco'),(152,2,'Morocco'),(152,3,'Marokko'),(152,4,'Marruecos'),(152,5,'Maroc'),(152,6,'Morocco'),(152,7,'Marruecos'),(152,8,'Marruecos'),(153,1,'Mozambique'),(153,2,'Mozambique'),(153,3,'Mosambik'),(153,4,'Mozambique'),(153,5,'Mozambique'),(153,6,'Mozambique'),(153,7,'Mozambique'),(153,8,'Mozambique'),(154,1,'Namibia'),(154,2,'Namibia'),(154,3,'Namibia'),(154,4,'Namibia'),(154,5,'Namibie'),(154,6,'Namibia'),(154,7,'Namibia'),(154,8,'Namibia'),(155,1,'Nauru'),(155,2,'Nauru'),(155,3,'Nauru'),(155,4,'Nauru'),(155,5,'Nauru'),(155,6,'Nauru'),(155,7,'Nauru'),(155,8,'Nauru'),(156,1,'Nepal'),(156,2,'Nepal'),(156,3,'Nepal'),(156,4,'Nepal'),(156,5,'Népal'),(156,6,'Nepal'),(156,7,'Nepal'),(156,8,'Nepal'),(157,1,'Netherlands Antilles'),(157,2,'Netherlands Antilles'),(157,3,'Niederländische Antillen'),(157,4,'Antillas Neerlandesas'),(157,5,'Antilles Néerlandaises'),(157,6,'Netherlands Antilles'),(157,7,'Antillas Neerlandesas'),(157,8,'Antillas Neerlandesas'),(158,1,'New Caledonia'),(158,2,'New Caledonia'),(158,3,'Neukaledonien'),(158,4,'Nueva Caledonia'),(158,5,'Nouvelle-Calédonie'),(158,6,'New Caledonia'),(158,7,'Nueva Caledonia'),(158,8,'Nueva Caledonia'),(159,1,'Nicaragua'),(159,2,'Nicaragua'),(159,3,'Nicaragua'),(159,4,'Nicaragua'),(159,5,'Nicaragua'),(159,6,'Nicaragua'),(159,7,'Nicaragua'),(159,8,'Nicaragua'),(160,1,'Niger'),(160,2,'Niger'),(160,3,'Niger'),(160,4,'Níger'),(160,5,'Niger'),(160,6,'Niger'),(160,7,'Níger'),(160,8,'Níger'),(161,1,'Niue'),(161,2,'Niue'),(161,3,'Niue'),(161,4,'Niue'),(161,5,'Niué'),(161,6,'Niue'),(161,7,'Niue'),(161,8,'Niue'),(162,1,'Norfolk Island'),(162,2,'Norfolk Island'),(162,3,'Norfolkinsel'),(162,4,'Norfolk Island'),(162,5,'Norfolk, Île'),(162,6,'Norfolk Island'),(162,7,'Norfolk Island'),(162,8,'Norfolk Island'),(163,1,'Northern Mariana Islands'),(163,2,'Northern Mariana Islands'),(163,3,'Nördliche Mariana-Inseln'),(163,4,'Islas Marianas del Norte'),(163,5,'Mariannes du Nord, Îles'),(163,6,'Northern Mariana Islands'),(163,7,'Islas Marianas del Norte'),(163,8,'Islas Marianas del Norte'),(164,1,'Oman'),(164,2,'Oman'),(164,3,'Oman'),(164,4,'Omán'),(164,5,'Oman'),(164,6,'Oman'),(164,7,'Omán'),(164,8,'Omán'),(165,1,'Pakistan'),(165,2,'Pakistan'),(165,3,'Pakistan'),(165,4,'Pakistán'),(165,5,'Pakistan'),(165,6,'Pakistan'),(165,7,'Pakistán'),(165,8,'Pakistán'),(166,1,'Palau'),(166,2,'Palau'),(166,3,'Palau'),(166,4,'Palau'),(166,5,'Palaos'),(166,6,'Palau'),(166,7,'Palau'),(166,8,'Palau'),(167,1,'Palestinian Territories'),(167,2,'Palestinian Territories'),(167,3,'Palästinensische Autonomiegebiete'),(167,4,'Territorios Palestinos'),(167,5,'Palestinien Occupé, Territoire'),(167,6,'Palestinian Territories'),(167,7,'Territorios Palestinos'),(167,8,'Territorios Palestinos'),(168,1,'Panama'),(168,2,'Panama'),(168,3,'Panama'),(168,4,'Panamá'),(168,5,'Panama'),(168,6,'Panama'),(168,7,'Panamá'),(168,8,'Panamá'),(169,1,'Papua New Guinea'),(169,2,'Papua New Guinea'),(169,3,'Papua-Neuguinea'),(169,4,'Papua Nueva Guinea'),(169,5,'Papouasie-Nouvelle-Guinée'),(169,6,'Papua New Guinea'),(169,7,'Papua Nueva Guinea'),(169,8,'Papua Nueva Guinea'),(170,1,'Paraguay'),(170,2,'Paraguay'),(170,3,'Paraguay'),(170,4,'Paraguay'),(170,5,'Paraguay'),(170,6,'Paraguay'),(170,7,'Paraguay'),(170,8,'Paraguay'),(171,1,'Peru'),(171,2,'Peru'),(171,3,'Peru'),(171,4,'Perú'),(171,5,'Pérou'),(171,6,'Peru'),(171,7,'Perú'),(171,8,'Perú'),(172,1,'Philippines'),(172,2,'Philippines'),(172,3,'Philippinen'),(172,4,'Filipinas'),(172,5,'Philippines'),(172,6,'Philippines'),(172,7,'Filipinas'),(172,8,'Filipinas'),(173,1,'Pitcairn'),(173,2,'Pitcairn'),(173,3,'Pitcairn'),(173,4,'Pitcairn'),(173,5,'Pitcairn'),(173,6,'Pitcairn'),(173,7,'Pitcairn'),(173,8,'Pitcairn'),(174,1,'Puerto Rico'),(174,2,'Puerto Rico'),(174,3,'Puerto Rico'),(174,4,'Puerto Rico'),(174,5,'Porto Rico'),(174,6,'Puerto Rico'),(174,7,'Puerto Rico'),(174,8,'Puerto Rico'),(175,1,'Qatar'),(175,2,'Qatar'),(175,3,'Katar'),(175,4,'Qatar'),(175,5,'Qatar'),(175,6,'Qatar'),(175,7,'Qatar'),(175,8,'Qatar'),(176,1,'Reunion Island'),(176,2,'Reunion Island'),(176,3,'Réunion'),(176,4,'Reunión, Isla de la'),(176,5,'Réunion, Île de la'),(176,6,'Reunion Island'),(176,7,'Reunión, Isla de la'),(176,8,'Reunión, Isla de la'),(177,1,'Russian Federation'),(177,2,'Russian Federation'),(177,3,'Russische Föderation'),(177,4,'Rusia, Federación de'),(177,5,'Russie, Fédération de'),(177,6,'Russian Federation'),(177,7,'Rusia, Federación de'),(177,8,'Rusia, Federación de'),(178,1,'Rwanda'),(178,2,'Rwanda'),(178,3,'Ruanda'),(178,4,'Rwanda'),(178,5,'Rwanda'),(178,6,'Rwanda'),(178,7,'Rwanda'),(178,8,'Rwanda'),(179,1,'Saint Barthelemy'),(179,2,'Saint Barthelemy'),(179,3,'Saint-Barthélemy'),(179,4,'San Bartolomé'),(179,5,'Saint-Barthélemy'),(179,6,'Saint Barthelemy'),(179,7,'San Bartolomé'),(179,8,'San Bartolomé'),(180,1,'Saint Kitts and Nevis'),(180,2,'Saint Kitts and Nevis'),(180,3,'St. Kitts und Nevis'),(180,4,'Saint Kitts y Nevis'),(180,5,'Saint-Kitts-et-Nevis'),(180,6,'Saint Kitts and Nevis'),(180,7,'Saint Kitts y Nevis'),(180,8,'Saint Kitts y Nevis'),(181,1,'Saint Lucia'),(181,2,'Saint Lucia'),(181,3,'St. Lucia'),(181,4,'Santa Lucía'),(181,5,'Sainte-Lucie'),(181,6,'Saint Lucia'),(181,7,'Santa Lucía'),(181,8,'Santa Lucía'),(182,1,'Saint Martin'),(182,2,'Saint Martin'),(182,3,'Saint Martin'),(182,4,'Saint Martin'),(182,5,'Saint-Martin'),(182,6,'Saint Martin'),(182,7,'Saint Martin'),(182,8,'Saint Martin'),(183,1,'Saint Pierre and Miquelon'),(183,2,'Saint Pierre and Miquelon'),(183,3,'St. Pierre und Miquelon'),(183,4,'San Pedro y Miquelón'),(183,5,'Saint-Pierre-et-Miquelon'),(183,6,'Saint Pierre and Miquelon'),(183,7,'San Pedro y Miquelón'),(183,8,'San Pedro y Miquelón'),(184,1,'Saint Vincent and the Grenadines'),(184,2,'Saint Vincent and the Grenadines'),(184,3,'St. Vincent und die Grenadinen'),(184,4,'San Vicente y las Granadinas'),(184,5,'Saint-Vincent-et-Les Grenadines'),(184,6,'Saint Vincent and the Grenadines'),(184,7,'San Vicente y las Granadinas'),(184,8,'San Vicente y las Granadinas'),(185,1,'Samoa'),(185,2,'Samoa'),(185,3,'Samoa'),(185,4,'Samoa'),(185,5,'Samoa'),(185,6,'Samoa'),(185,7,'Samoa'),(185,8,'Samoa'),(186,1,'San Marino'),(186,2,'San Marino'),(186,3,'San Marino'),(186,4,'San Marino'),(186,5,'Saint-Marin'),(186,6,'San Marino'),(186,7,'San Marino'),(186,8,'San Marino'),(187,1,'São Tomé and Príncipe'),(187,2,'São Tomé and Príncipe'),(187,3,'São Tomé und Príncipe'),(187,4,'Santo Tomé y Príncipe'),(187,5,'Sao Tomé-et-Principe'),(187,6,'São Tomé and Príncipe'),(187,7,'Santo Tomé y Príncipe'),(187,8,'Santo Tomé y Príncipe'),(188,1,'Saudi Arabia'),(188,2,'Saudi Arabia'),(188,3,'Saudi-Arabien'),(188,4,'Arabia Saudita'),(188,5,'Arabie Saoudite'),(188,6,'Saudi Arabia'),(188,7,'Arabia Saudita'),(188,8,'Arabia Saudita'),(189,1,'Senegal'),(189,2,'Senegal'),(189,3,'Senegal'),(189,4,'Senegal'),(189,5,'Sénégal'),(189,6,'Senegal'),(189,7,'Senegal'),(189,8,'Senegal'),(190,1,'Serbia'),(190,2,'Serbia'),(190,3,'Serbien'),(190,4,'Serbia'),(190,5,'Serbie'),(190,6,'Serbia'),(190,7,'Serbia'),(190,8,'Serbia'),(191,1,'Seychelles'),(191,2,'Seychelles'),(191,3,'Seychellen'),(191,4,'Seychelles'),(191,5,'Seychelles'),(191,6,'Seychelles'),(191,7,'Seychelles'),(191,8,'Seychelles'),(192,1,'Sierra Leone'),(192,2,'Sierra Leone'),(192,3,'Sierra Leone'),(192,4,'Sierra Leona'),(192,5,'Sierra Leone'),(192,6,'Sierra Leone'),(192,7,'Sierra Leona'),(192,8,'Sierra Leona'),(193,1,'Slovenia'),(193,2,'Slovenia'),(193,3,'Slowenien'),(193,4,'Eslovenia'),(193,5,'Slovénie'),(193,6,'Slovenia'),(193,7,'Eslovenia'),(193,8,'Eslovenia'),(194,1,'Solomon Islands'),(194,2,'Solomon Islands'),(194,3,'Salomoninseln'),(194,4,'Salomón, Islas'),(194,5,'Salomon, Îles'),(194,6,'Solomon Islands'),(194,7,'Salomón, Islas'),(194,8,'Salomón, Islas'),(195,1,'Somalia'),(195,2,'Somalia'),(195,3,'Somalia'),(195,4,'Somalia'),(195,5,'Somalie'),(195,6,'Somalia'),(195,7,'Somalia'),(195,8,'Somalia'),(196,1,'South Georgia and the South Sandwich Islands'),(196,2,'South Georgia and the South Sandwich Islands'),(196,3,'South Georgia und die Südlichen Sandwichinseln'),(196,4,'Georgia del Sur e Islas Sandwich del Sur'),(196,5,'Géorgie du Sud et les Îles Sandwich du Sud'),(196,6,'South Georgia and the South Sandwich Islands'),(196,7,'Georgia del Sur e Islas Sandwich del Sur'),(196,8,'Georgia del Sur e Islas Sandwich del Sur'),(197,1,'Sri Lanka'),(197,2,'Sri Lanka'),(197,3,'Sri Lanka'),(197,4,'Sri Lanka'),(197,5,'Sri Lanka'),(197,6,'Sri Lanka'),(197,7,'Sri Lanka'),(197,8,'Sri Lanka'),(198,1,'Sudan'),(198,2,'Sudan'),(198,3,'Sudan'),(198,4,'Sudán'),(198,5,'Soudan'),(198,6,'Sudan'),(198,7,'Sudán'),(198,8,'Sudán'),(199,1,'Suriname'),(199,2,'Suriname'),(199,3,'Suriname'),(199,4,'Suriname'),(199,5,'Suriname'),(199,6,'Suriname'),(199,7,'Suriname'),(199,8,'Suriname'),(200,1,'Svalbard and Jan Mayen'),(200,2,'Svalbard and Jan Mayen'),(200,3,'Svalbard und Jan Mayen'),(200,4,'Svalbard y Jan Mayen'),(200,5,'Svalbard et Île Jan Mayen'),(200,6,'Svalbard and Jan Mayen'),(200,7,'Svalbard y Jan Mayen'),(200,8,'Svalbard y Jan Mayen'),(201,1,'Swaziland'),(201,2,'Swaziland'),(201,3,'Swasiland'),(201,4,'Swazilandia'),(201,5,'Swaziland'),(201,6,'Swaziland'),(201,7,'Swazilandia'),(201,8,'Swazilandia'),(202,1,'Syria'),(202,2,'Syria'),(202,3,'Syrien'),(202,4,'Siria'),(202,5,'Syrienne'),(202,6,'Syria'),(202,7,'Siria'),(202,8,'Siria'),(203,1,'Taiwan'),(203,2,'Taiwan'),(203,3,'Taiwan'),(203,4,'Taiwán'),(203,5,'Taïwan'),(203,6,'Taiwan'),(203,7,'Taiwán'),(203,8,'Taiwán'),(204,1,'Tajikistan'),(204,2,'Tajikistan'),(204,3,'Tadschikistan'),(204,4,'Tayikistán'),(204,5,'Tadjikistan'),(204,6,'Tajikistan'),(204,7,'Tayikistán'),(204,8,'Tayikistán'),(205,1,'Tanzania'),(205,2,'Tanzania'),(205,3,'Vereinigte Republik Tansania'),(205,4,'Tanzania'),(205,5,'Tanzanie'),(205,6,'Tanzania'),(205,7,'Tanzania'),(205,8,'Tanzania'),(206,1,'Thailand'),(206,2,'Thailand'),(206,3,'Thailand'),(206,4,'Tailandia'),(206,5,'Thaïlande'),(206,6,'Thailand'),(206,7,'Tailandia'),(206,8,'Tailandia'),(207,1,'Tokelau'),(207,2,'Tokelau'),(207,3,'Tokelau'),(207,4,'Tokelau'),(207,5,'Tokelau'),(207,6,'Tokelau'),(207,7,'Tokelau'),(207,8,'Tokelau'),(208,1,'Tonga'),(208,2,'Tonga'),(208,3,'Tonga'),(208,4,'Tonga'),(208,5,'Tonga'),(208,6,'Tonga'),(208,7,'Tonga'),(208,8,'Tonga'),(209,1,'Trinidad and Tobago'),(209,2,'Trinidad and Tobago'),(209,3,'Trinidad und Tobago'),(209,4,'Trinidad y Tobago'),(209,5,'Trinité-et-Tobago'),(209,6,'Trinidad and Tobago'),(209,7,'Trinidad y Tobago'),(209,8,'Trinidad y Tobago'),(210,1,'Tunisia'),(210,2,'Tunisia'),(210,3,'Tunesien'),(210,4,'Túnez'),(210,5,'Tunisie'),(210,6,'Tunisia'),(210,7,'Túnez'),(210,8,'Túnez'),(211,1,'Turkey'),(211,2,'Turkey'),(211,3,'Türkei'),(211,4,'Turquía'),(211,5,'Turquie'),(211,6,'Turkey'),(211,7,'Turquía'),(211,8,'Turquía'),(212,1,'Turkmenistan'),(212,2,'Turkmenistan'),(212,3,'Turkmenistan'),(212,4,'Turkmenistán'),(212,5,'Turkménistan'),(212,6,'Turkmenistan'),(212,7,'Turkmenistán'),(212,8,'Turkmenistán'),(213,1,'Turks and Caicos Islands'),(213,2,'Turks and Caicos Islands'),(213,3,'Turks- und Caicosinseln'),(213,4,'Islas Turcas y Caicos'),(213,5,'Turks et Caiques, Îles'),(213,6,'Turks and Caicos Islands'),(213,7,'Islas Turcas y Caicos'),(213,8,'Islas Turcas y Caicos'),(214,1,'Tuvalu'),(214,2,'Tuvalu'),(214,3,'Tuvalu'),(214,4,'Tuvalu'),(214,5,'Tuvalu'),(214,6,'Tuvalu'),(214,7,'Tuvalu'),(214,8,'Tuvalu'),(215,1,'Uganda'),(215,2,'Uganda'),(215,3,'Uganda'),(215,4,'Uganda'),(215,5,'Ouganda'),(215,6,'Uganda'),(215,7,'Uganda'),(215,8,'Uganda'),(216,1,'Ukraine'),(216,2,'Ukraine'),(216,3,'Ukraine'),(216,4,'Ucrania'),(216,5,'Ukraine'),(216,6,'Ukraine'),(216,7,'Ucrania'),(216,8,'Ucrania'),(217,1,'United Arab Emirates'),(217,2,'United Arab Emirates'),(217,3,'Vereinigte Arabische Emirate'),(217,4,'Emiratos ÿrabes Unidos'),(217,5,'Émirats Arabes Unis'),(217,6,'United Arab Emirates'),(217,7,'Emiratos ÿrabes Unidos'),(217,8,'Emiratos ÿrabes Unidos'),(218,1,'Uruguay'),(218,2,'Uruguay'),(218,3,'Uruguay'),(218,4,'Uruguay'),(218,5,'Uruguay'),(218,6,'Uruguay'),(218,7,'Uruguay'),(218,8,'Uruguay'),(219,1,'Uzbekistan'),(219,2,'Uzbekistan'),(219,3,'Usbekistan'),(219,4,'Uzbekistán'),(219,5,'Ouzbékistan'),(219,6,'Uzbekistan'),(219,7,'Uzbekistán'),(219,8,'Uzbekistán'),(220,1,'Vanuatu'),(220,2,'Vanuatu'),(220,3,'Vanuatu'),(220,4,'Vanuatu'),(220,5,'Vanuatu'),(220,6,'Vanuatu'),(220,7,'Vanuatu'),(220,8,'Vanuatu'),(221,1,'Venezuela'),(221,2,'Venezuela'),(221,3,'Venezuela'),(221,4,'Venezuela'),(221,5,'Venezuela'),(221,6,'Venezuela'),(221,7,'Venezuela'),(221,8,'Venezuela'),(222,1,'Vietnam'),(222,2,'Vietnam'),(222,3,'Vietnam'),(222,4,'Vietnam'),(222,5,'Vietnam'),(222,6,'Vietnam'),(222,7,'Vietnam'),(222,8,'Vietnam'),(223,1,'Virgin Islands (British)'),(223,2,'Virgin Islands (British)'),(223,3,'Britische Jungferninseln'),(223,4,'Islas Vírgenes (Británicas)'),(223,5,'Îles Vierges Britanniques'),(223,6,'Virgin Islands (British)'),(223,7,'Islas Vírgenes (Británicas)'),(223,8,'Islas Vírgenes (Británicas)'),(224,1,'Virgin Islands (U.S.)'),(224,2,'Virgin Islands (U.S.)'),(224,3,'Amerikanische Jungferninseln'),(224,4,'Islas Vírgenes (EE.UU.)'),(224,5,'Îles Vierges des États-Unis'),(224,6,'Virgin Islands (U.S.)'),(224,7,'Islas Vírgenes (EE.UU.)'),(224,8,'Islas Vírgenes (EE.UU.)'),(225,1,'Wallis and Futuna'),(225,2,'Wallis and Futuna'),(225,3,'Wallis und Futuna'),(225,4,'Wallis y Futuna'),(225,5,'Wallis et Futuna'),(225,6,'Wallis and Futuna'),(225,7,'Wallis y Futuna'),(225,8,'Wallis y Futuna'),(226,1,'Western Sahara'),(226,2,'Western Sahara'),(226,3,'Westsahara'),(226,4,'Sáhara Occidental'),(226,5,'Sahara Occidental'),(226,6,'Western Sahara'),(226,7,'Sáhara Occidental'),(226,8,'Sáhara Occidental'),(227,1,'Yemen'),(227,2,'Yemen'),(227,3,'Jemen'),(227,4,'Yemen'),(227,5,'Yémen'),(227,6,'Yemen'),(227,7,'Yemen'),(227,8,'Yemen'),(228,1,'Zambia'),(228,2,'Zambia'),(228,3,'Sambia'),(228,4,'Zambia'),(228,5,'Zambie'),(228,6,'Zambia'),(228,7,'Zambia'),(228,8,'Zambia'),(229,1,'Zimbabwe'),(229,2,'Zimbabwe'),(229,3,'Simbabwe'),(229,4,'Zimbabwe'),(229,5,'Zimbabwe'),(229,6,'Zimbabwe'),(229,7,'Zimbabwe'),(229,8,'Zimbabwe'),(230,1,'Albania'),(230,2,'Albania'),(230,3,'Albanien'),(230,4,'Albania'),(230,5,'Albanie'),(230,6,'Albania'),(230,7,'Albania'),(230,8,'Albania'),(231,1,'Afghanistan'),(231,2,'Afghanistan'),(231,3,'Afghanistan'),(231,4,'Afganistán'),(231,5,'Afghanistan'),(231,6,'Afghanistan'),(231,7,'Afganistán'),(231,8,'Afganistán'),(232,1,'Antarctica'),(232,2,'Antarctica'),(232,3,'Antarktis'),(232,4,'Antártida'),(232,5,'Antarctique'),(232,6,'Antarctica'),(232,7,'Antártida'),(232,8,'Antártida'),(233,1,'Bosnia and Herzegovina'),(233,2,'Bosnia and Herzegovina'),(233,3,'Bosnien und Herzegowina'),(233,4,'Bosnia y Herzegovina'),(233,5,'Bosnie-Herzégovine'),(233,6,'Bosnia and Herzegovina'),(233,7,'Bosnia y Herzegovina'),(233,8,'Bosnia y Herzegovina'),(234,1,'Bouvet Island'),(234,2,'Bouvet Island'),(234,3,'Bouvet-Insel'),(234,4,'Isla Bouvet'),(234,5,'Bouvet, Île'),(234,6,'Bouvet Island'),(234,7,'Isla Bouvet'),(234,8,'Isla Bouvet'),(235,1,'British Indian Ocean Territory'),(235,2,'British Indian Ocean Territory'),(235,3,'Britisches Territorium im Indischen Ozean'),(235,4,'British Indian Ocean Territory'),(235,5,'Océan Indien, Territoire Britannique de L\''),(235,6,'British Indian Ocean Territory'),(235,7,'British Indian Ocean Territory'),(235,8,'British Indian Ocean Territory'),(236,1,'Bulgaria'),(236,2,'Bulgaria'),(236,3,'Bulgarien'),(236,4,'Bulgaria'),(236,5,'Bulgarie'),(236,6,'Bulgaria'),(236,7,'Bulgaria'),(236,8,'Bulgaria'),(237,1,'Cayman Islands'),(237,2,'Cayman Islands'),(237,3,'Cayman-Inseln'),(237,4,'Caimán, Islas'),(237,5,'Caïmans, Îles'),(237,6,'Cayman Islands'),(237,7,'Caimán, Islas'),(237,8,'Caimán, Islas'),(238,1,'Christmas Island'),(238,2,'Christmas Island'),(238,3,'Weihnachtsinseln'),(238,4,'Navidad, Isla de'),(238,5,'Christmas, Île'),(238,6,'Christmas Island'),(238,7,'Navidad, Isla de'),(238,8,'Navidad, Isla de'),(239,1,'Cocos (Keeling) Islands'),(239,2,'Cocos (Keeling) Islands'),(239,3,'Kokos- (Keeling-)Inseln'),(239,4,'Cocos (Keeling), Islas'),(239,5,'Cocos (Keeling), Îles'),(239,6,'Cocos (Keeling) Islands'),(239,7,'Cocos (Keeling), Islas'),(239,8,'Cocos (Keeling), Islas'),(240,1,'Cook Islands'),(240,2,'Cook Islands'),(240,3,'Cookinseln'),(240,4,'Cook, Islas'),(240,5,'Cook, Îles'),(240,6,'Cook Islands'),(240,7,'Cook, Islas'),(240,8,'Cook, Islas'),(241,1,'French Guiana'),(241,2,'French Guiana'),(241,3,'Französisch-Guyana'),(241,4,'Francés Guayana'),(241,5,'Guyane Française'),(241,6,'French Guiana'),(241,7,'Francés Guayana'),(241,8,'Francés Guayana'),(242,1,'French Polynesia'),(242,2,'French Polynesia'),(242,3,'Französisch-Polynesien'),(242,4,'Polinesia francés'),(242,5,'Polynésie Française'),(242,6,'French Polynesia'),(242,7,'Polinesia francés'),(242,8,'Polinesia francés'),(243,1,'French Southern Territories'),(243,2,'French Southern Territories'),(243,3,'Französische Süd- und Antarktisgebiete'),(243,4,'Territorios del sur francés'),(243,5,'Terres Australes Françaises'),(243,6,'French Southern Territories'),(243,7,'Territorios del sur francés'),(243,8,'Territorios del sur francés'),(244,1,'Åland Islands'),(244,2,'Åland Islands'),(244,3,'Åland-Inseln'),(244,4,'Islas Åland'),(244,5,'Åland, Îles'),(244,6,'Åland Islands'),(244,7,'Islas Åland'),(244,8,'Islas Åland'),(245,1,'chiquitisenglish'),(245,2,'chiquitistan'),(245,3,'chiquitistan'),(245,4,'chiquitistan'),(245,5,'chiquitistan'),(245,6,'chiquitistan'),(245,7,'chiquitistan'),(245,8,'chiquitistan');
/*!40000 ALTER TABLE `ps_2country_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2country_shop`
--

DROP TABLE IF EXISTS `ps_2country_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2country_shop` (
  `id_country` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_country`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2country_shop`
--

LOCK TABLES `ps_2country_shop` WRITE;
/*!40000 ALTER TABLE `ps_2country_shop` DISABLE KEYS */;
INSERT INTO `ps_2country_shop` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,1),(118,1),(119,1),(120,1),(121,1),(122,1),(123,1),(124,1),(125,1),(126,1),(127,1),(128,1),(129,1),(130,1),(131,1),(132,1),(133,1),(134,1),(135,1),(136,1),(137,1),(138,1),(139,1),(140,1),(141,1),(142,1),(143,1),(144,1),(145,1),(146,1),(147,1),(148,1),(149,1),(150,1),(151,1),(152,1),(153,1),(154,1),(155,1),(156,1),(157,1),(158,1),(159,1),(160,1),(161,1),(162,1),(163,1),(164,1),(165,1),(166,1),(167,1),(168,1),(169,1),(170,1),(171,1),(172,1),(173,1),(174,1),(175,1),(176,1),(177,1),(178,1),(179,1),(180,1),(181,1),(182,1),(183,1),(184,1),(185,1),(186,1),(187,1),(188,1),(189,1),(190,1),(191,1),(192,1),(193,1),(194,1),(195,1),(196,1),(197,1),(198,1),(199,1),(200,1),(201,1),(202,1),(203,1),(204,1),(205,1),(206,1),(207,1),(208,1),(209,1),(210,1),(211,1),(212,1),(213,1),(214,1),(215,1),(216,1),(217,1),(218,1),(219,1),(220,1),(221,1),(222,1),(223,1),(224,1),(225,1),(226,1),(227,1),(228,1),(229,1),(230,1),(231,1),(232,1),(233,1),(234,1),(235,1),(236,1),(237,1),(238,1),(239,1),(240,1),(241,1),(242,1),(243,1),(244,1),(245,1);
/*!40000 ALTER TABLE `ps_2country_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2currency`
--

DROP TABLE IF EXISTS `ps_2currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2currency` (
  `id_currency` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `iso_code` varchar(3) NOT NULL DEFAULT '0',
  `iso_code_num` varchar(3) NOT NULL DEFAULT '0',
  `sign` varchar(8) NOT NULL,
  `blank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `format` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `conversion_rate` decimal(13,6) NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_currency`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2currency`
--

LOCK TABLES `ps_2currency` WRITE;
/*!40000 ALTER TABLE `ps_2currency` DISABLE KEYS */;
INSERT INTO `ps_2currency` VALUES (1,'Euro','EUR','978','€',1,2,1,1.000000,0,1);
/*!40000 ALTER TABLE `ps_2currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2currency_shop`
--

DROP TABLE IF EXISTS `ps_2currency_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2currency_shop` (
  `id_currency` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL,
  PRIMARY KEY (`id_currency`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2currency_shop`
--

LOCK TABLES `ps_2currency_shop` WRITE;
/*!40000 ALTER TABLE `ps_2currency_shop` DISABLE KEYS */;
INSERT INTO `ps_2currency_shop` VALUES (1,1,1.000000);
/*!40000 ALTER TABLE `ps_2currency_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2customer`
--

DROP TABLE IF EXISTS `ps_2customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2customer` (
  `id_customer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_gender` int(10) unsigned NOT NULL,
  `id_default_group` int(10) unsigned NOT NULL DEFAULT '1',
  `id_risk` int(10) unsigned NOT NULL DEFAULT '1',
  `company` varchar(64) DEFAULT NULL,
  `siret` varchar(14) DEFAULT NULL,
  `ape` varchar(5) DEFAULT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthday` date DEFAULT NULL,
  `newsletter` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ip_registration_newsletter` varchar(15) DEFAULT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `optin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `website` varchar(128) DEFAULT NULL,
  `outstanding_allow_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `show_public_prices` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `max_payment_days` int(10) unsigned NOT NULL DEFAULT '60',
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `note` text,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_customer`),
  KEY `customer_email` (`email`),
  KEY `customer_login` (`email`,`passwd`),
  KEY `id_customer_passwd` (`id_customer`,`passwd`),
  KEY `id_gender` (`id_gender`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2customer`
--

LOCK TABLES `ps_2customer` WRITE;
/*!40000 ALTER TABLE `ps_2customer` DISABLE KEYS */;
INSERT INTO `ps_2customer` VALUES (1,1,1,1,3,0,NULL,NULL,NULL,'kike','lopez','klopez.18@gmail.com','52f518f51cc4ca8f00822a8cf134e682','2013-02-21 15:09:00','1989-09-16',0,NULL,'0000-00-00 00:00:00',0,NULL,0.000000,0,0,'8840744415831542c9b93b8312c21cfe',NULL,1,0,0,'2013-02-21 22:09:00','2013-03-06 18:00:57'),(2,1,1,1,3,0,NULL,NULL,NULL,'luis','rodriguez','luis.19@gmail.com','52f518f51cc4ca8f00822a8cf134e682','2013-03-04 12:40:15','1989-05-03',0,NULL,'0000-00-00 00:00:00',0,NULL,0.000000,0,0,'1e20016f56fa3023cb38df82cfb90a3b',NULL,1,0,0,'2013-03-04 19:40:15','2013-03-06 18:01:51');
/*!40000 ALTER TABLE `ps_2customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2customer_group`
--

DROP TABLE IF EXISTS `ps_2customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2customer_group` (
  `id_customer` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_customer`,`id_group`),
  KEY `customer_login` (`id_group`),
  KEY `id_customer` (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2customer_group`
--

LOCK TABLES `ps_2customer_group` WRITE;
/*!40000 ALTER TABLE `ps_2customer_group` DISABLE KEYS */;
INSERT INTO `ps_2customer_group` VALUES (1,3),(2,3);
/*!40000 ALTER TABLE `ps_2customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2customer_message`
--

DROP TABLE IF EXISTS `ps_2customer_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2customer_message` (
  `id_customer_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer_thread` int(11) DEFAULT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `message` text NOT NULL,
  `file_name` varchar(18) DEFAULT NULL,
  `ip_address` int(11) DEFAULT NULL,
  `user_agent` varchar(128) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `private` tinyint(4) NOT NULL DEFAULT '0',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_customer_message`),
  KEY `id_customer_thread` (`id_customer_thread`),
  KEY `id_employee` (`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2customer_message`
--

LOCK TABLES `ps_2customer_message` WRITE;
/*!40000 ALTER TABLE `ps_2customer_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2customer_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2customer_message_sync_imap`
--

DROP TABLE IF EXISTS `ps_2customer_message_sync_imap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2customer_message_sync_imap` (
  `md5_header` varbinary(32) NOT NULL,
  KEY `md5_header_index` (`md5_header`(4))
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2customer_message_sync_imap`
--

LOCK TABLES `ps_2customer_message_sync_imap` WRITE;
/*!40000 ALTER TABLE `ps_2customer_message_sync_imap` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2customer_message_sync_imap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2customer_thread`
--

DROP TABLE IF EXISTS `ps_2customer_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2customer_thread` (
  `id_customer_thread` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `id_contact` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned DEFAULT NULL,
  `id_order` int(10) unsigned DEFAULT NULL,
  `id_product` int(10) unsigned DEFAULT NULL,
  `status` enum('open','closed','pending1','pending2') NOT NULL DEFAULT 'open',
  `email` varchar(128) NOT NULL,
  `token` varchar(12) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_customer_thread`),
  KEY `id_shop` (`id_shop`),
  KEY `id_lang` (`id_lang`),
  KEY `id_contact` (`id_contact`),
  KEY `id_customer` (`id_customer`),
  KEY `id_order` (`id_order`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2customer_thread`
--

LOCK TABLES `ps_2customer_thread` WRITE;
/*!40000 ALTER TABLE `ps_2customer_thread` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2customer_thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2customization`
--

DROP TABLE IF EXISTS `ps_2customization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2customization` (
  `id_customization` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product_attribute` int(10) unsigned NOT NULL DEFAULT '0',
  `id_address_delivery` int(10) unsigned NOT NULL DEFAULT '0',
  `id_cart` int(10) unsigned NOT NULL,
  `id_product` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `quantity_refunded` int(11) NOT NULL DEFAULT '0',
  `quantity_returned` int(11) NOT NULL DEFAULT '0',
  `in_cart` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_customization`,`id_cart`,`id_product`,`id_address_delivery`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2customization`
--

LOCK TABLES `ps_2customization` WRITE;
/*!40000 ALTER TABLE `ps_2customization` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2customization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2customization_field`
--

DROP TABLE IF EXISTS `ps_2customization_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2customization_field` (
  `id_customization_field` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_customization_field`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2customization_field`
--

LOCK TABLES `ps_2customization_field` WRITE;
/*!40000 ALTER TABLE `ps_2customization_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2customization_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2customization_field_lang`
--

DROP TABLE IF EXISTS `ps_2customization_field_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2customization_field_lang` (
  `id_customization_field` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customization_field`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2customization_field_lang`
--

LOCK TABLES `ps_2customization_field_lang` WRITE;
/*!40000 ALTER TABLE `ps_2customization_field_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2customization_field_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2customized_data`
--

DROP TABLE IF EXISTS `ps_2customized_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2customized_data` (
  `id_customization` int(10) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `index` int(3) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customization`,`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2customized_data`
--

LOCK TABLES `ps_2customized_data` WRITE;
/*!40000 ALTER TABLE `ps_2customized_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2customized_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2date_range`
--

DROP TABLE IF EXISTS `ps_2date_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2date_range` (
  `id_date_range` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  PRIMARY KEY (`id_date_range`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2date_range`
--

LOCK TABLES `ps_2date_range` WRITE;
/*!40000 ALTER TABLE `ps_2date_range` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2date_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2delivery`
--

DROP TABLE IF EXISTS `ps_2delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2delivery` (
  `id_delivery` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned DEFAULT NULL,
  `id_shop_group` int(10) unsigned DEFAULT NULL,
  `id_carrier` int(10) unsigned NOT NULL,
  `id_range_price` int(10) unsigned DEFAULT NULL,
  `id_range_weight` int(10) unsigned DEFAULT NULL,
  `id_zone` int(10) unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_delivery`),
  KEY `id_zone` (`id_zone`),
  KEY `id_carrier` (`id_carrier`,`id_zone`),
  KEY `id_range_price` (`id_range_price`),
  KEY `id_range_weight` (`id_range_weight`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2delivery`
--

LOCK TABLES `ps_2delivery` WRITE;
/*!40000 ALTER TABLE `ps_2delivery` DISABLE KEYS */;
INSERT INTO `ps_2delivery` VALUES (1,1,1,4,1,0,1,0.000000),(2,1,1,4,1,0,7,0.000000),(3,1,1,4,0,1,1,0.000000),(4,1,1,4,0,1,7,0.000000);
/*!40000 ALTER TABLE `ps_2delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2employee`
--

DROP TABLE IF EXISTS `ps_2employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2employee` (
  `id_employee` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_profile` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL DEFAULT '0',
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stats_date_from` date DEFAULT NULL,
  `stats_date_to` date DEFAULT NULL,
  `bo_color` varchar(32) DEFAULT NULL,
  `bo_theme` varchar(32) DEFAULT NULL,
  `default_tab` int(10) unsigned NOT NULL DEFAULT '0',
  `bo_width` int(10) unsigned NOT NULL DEFAULT '0',
  `bo_show_screencast` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `id_last_order` int(10) unsigned NOT NULL DEFAULT '0',
  `id_last_customer_message` int(10) unsigned NOT NULL DEFAULT '0',
  `id_last_customer` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_employee`),
  KEY `employee_login` (`email`,`passwd`),
  KEY `id_employee_passwd` (`id_employee`,`passwd`),
  KEY `id_profile` (`id_profile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2employee`
--

LOCK TABLES `ps_2employee` WRITE;
/*!40000 ALTER TABLE `ps_2employee` DISABLE KEYS */;
INSERT INTO `ps_2employee` VALUES (1,1,4,'Lopez','Kike','klopez.18@gmail.com','52f518f51cc4ca8f00822a8cf134e682','2013-02-21 15:04:50','2013-02-21','2013-02-21',NULL,'default',0,0,1,1,0,0,0);
/*!40000 ALTER TABLE `ps_2employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2employee_shop`
--

DROP TABLE IF EXISTS `ps_2employee_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2employee_shop` (
  `id_employee` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_employee`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2employee_shop`
--

LOCK TABLES `ps_2employee_shop` WRITE;
/*!40000 ALTER TABLE `ps_2employee_shop` DISABLE KEYS */;
INSERT INTO `ps_2employee_shop` VALUES (1,1);
/*!40000 ALTER TABLE `ps_2employee_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2favorite_product`
--

DROP TABLE IF EXISTS `ps_2favorite_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2favorite_product` (
  `id_favorite_product` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_favorite_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2favorite_product`
--

LOCK TABLES `ps_2favorite_product` WRITE;
/*!40000 ALTER TABLE `ps_2favorite_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2favorite_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2feature`
--

DROP TABLE IF EXISTS `ps_2feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2feature` (
  `id_feature` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_feature`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2feature`
--

LOCK TABLES `ps_2feature` WRITE;
/*!40000 ALTER TABLE `ps_2feature` DISABLE KEYS */;
INSERT INTO `ps_2feature` VALUES (1,0),(2,1),(3,2),(4,3);
/*!40000 ALTER TABLE `ps_2feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2feature_lang`
--

DROP TABLE IF EXISTS `ps_2feature_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2feature_lang` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_feature`,`id_lang`),
  KEY `id_lang` (`id_lang`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2feature_lang`
--

LOCK TABLES `ps_2feature_lang` WRITE;
/*!40000 ALTER TABLE `ps_2feature_lang` DISABLE KEYS */;
INSERT INTO `ps_2feature_lang` VALUES (1,1,'100% algodon'),(4,1,'100% poliester'),(2,1,'50% algodon'),(3,1,'50%poliester'),(1,2,'100% algodon'),(4,2,'100% poliester'),(2,2,'50% algodon'),(3,2,'50%poliester'),(1,3,'100% algodon'),(4,3,'100% poliester'),(2,3,'50% algodon'),(3,3,'50%poliester'),(1,4,'100% algodon'),(4,4,'100% poliester'),(2,4,'50% algodon'),(3,4,'50%poliester'),(1,5,'100% algodon'),(4,5,'100% poliester'),(2,5,'50% algodon'),(3,5,'50%poliester'),(1,6,'100% algodon'),(4,6,'100% poliester'),(2,6,'50% algodon'),(3,6,'50%poliester'),(1,7,'100% algodon'),(4,7,'100% poliester'),(2,7,'50% algodon'),(3,7,'50%poliester'),(1,8,'100% algodon'),(4,8,'100% poliester'),(2,8,'50% algodon'),(3,8,'50%poliester');
/*!40000 ALTER TABLE `ps_2feature_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2feature_product`
--

DROP TABLE IF EXISTS `ps_2feature_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2feature_product` (
  `id_feature` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_feature_value` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_feature`,`id_product`),
  KEY `id_feature_value` (`id_feature_value`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2feature_product`
--

LOCK TABLES `ps_2feature_product` WRITE;
/*!40000 ALTER TABLE `ps_2feature_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2feature_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2feature_shop`
--

DROP TABLE IF EXISTS `ps_2feature_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2feature_shop` (
  `id_feature` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_feature`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2feature_shop`
--

LOCK TABLES `ps_2feature_shop` WRITE;
/*!40000 ALTER TABLE `ps_2feature_shop` DISABLE KEYS */;
INSERT INTO `ps_2feature_shop` VALUES (1,1),(2,1),(3,1),(4,1);
/*!40000 ALTER TABLE `ps_2feature_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2feature_value`
--

DROP TABLE IF EXISTS `ps_2feature_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2feature_value` (
  `id_feature_value` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_feature` int(10) unsigned NOT NULL,
  `custom` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`),
  KEY `feature` (`id_feature`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2feature_value`
--

LOCK TABLES `ps_2feature_value` WRITE;
/*!40000 ALTER TABLE `ps_2feature_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2feature_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2feature_value_lang`
--

DROP TABLE IF EXISTS `ps_2feature_value_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2feature_value_lang` (
  `id_feature_value` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2feature_value_lang`
--

LOCK TABLES `ps_2feature_value_lang` WRITE;
/*!40000 ALTER TABLE `ps_2feature_value_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2feature_value_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2gender`
--

DROP TABLE IF EXISTS `ps_2gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2gender` (
  `id_gender` int(11) NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_gender`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2gender`
--

LOCK TABLES `ps_2gender` WRITE;
/*!40000 ALTER TABLE `ps_2gender` DISABLE KEYS */;
INSERT INTO `ps_2gender` VALUES (1,0),(2,1),(3,1);
/*!40000 ALTER TABLE `ps_2gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2gender_lang`
--

DROP TABLE IF EXISTS `ps_2gender_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2gender_lang` (
  `id_gender` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_gender`,`id_lang`),
  KEY `id_gender` (`id_gender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2gender_lang`
--

LOCK TABLES `ps_2gender_lang` WRITE;
/*!40000 ALTER TABLE `ps_2gender_lang` DISABLE KEYS */;
INSERT INTO `ps_2gender_lang` VALUES (1,1,'Mr.'),(1,2,'Sr.'),(1,3,'Herr'),(1,4,'Sr.'),(1,5,'M.'),(1,6,'Sig.'),(1,7,'Sr.'),(1,8,'Sr.'),(2,1,'Ms.'),(2,2,'Sr.'),(2,3,'Frau'),(2,4,'Sra.'),(2,5,'Mme'),(2,6,'Sig.ra'),(2,7,'Sra.'),(2,8,'Sra.'),(3,1,'Miss'),(3,2,'Senhorita'),(3,3,'Miss'),(3,4,'Miss'),(3,5,'Melle'),(3,6,'Miss'),(3,7,'Miss'),(3,8,'Miss');
/*!40000 ALTER TABLE `ps_2gender_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2group`
--

DROP TABLE IF EXISTS `ps_2group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2group` (
  `id_group` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reduction` decimal(17,2) NOT NULL DEFAULT '0.00',
  `price_display_method` tinyint(4) NOT NULL DEFAULT '0',
  `show_prices` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2group`
--

LOCK TABLES `ps_2group` WRITE;
/*!40000 ALTER TABLE `ps_2group` DISABLE KEYS */;
INSERT INTO `ps_2group` VALUES (1,0.00,0,1,'2013-02-21 22:04:12','2013-02-21 22:04:12'),(2,0.00,0,1,'2013-02-21 22:04:13','2013-02-21 22:04:13'),(3,0.00,0,1,'2013-02-21 22:04:13','2013-02-21 22:04:13');
/*!40000 ALTER TABLE `ps_2group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2group_lang`
--

DROP TABLE IF EXISTS `ps_2group_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2group_lang` (
  `id_group` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_group`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2group_lang`
--

LOCK TABLES `ps_2group_lang` WRITE;
/*!40000 ALTER TABLE `ps_2group_lang` DISABLE KEYS */;
INSERT INTO `ps_2group_lang` VALUES (1,1,'Visitor'),(1,2,'Visitante'),(1,3,'Visitor'),(1,4,'Visitor'),(1,5,'Visiteur'),(1,6,'Visitor'),(1,7,'Visitor'),(1,8,'Visitor'),(2,1,'Guest'),(2,2,'Comprador sem Cadastro'),(2,3,'Guest'),(2,4,'Guest'),(2,5,'Invité'),(2,6,'Guest'),(2,7,'Guest'),(2,8,'Guest'),(3,1,'Customer'),(3,2,'Cliente'),(3,3,'Customer'),(3,4,'Customer'),(3,5,'Client'),(3,6,'Customer'),(3,7,'Customer'),(3,8,'Customer');
/*!40000 ALTER TABLE `ps_2group_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2group_reduction`
--

DROP TABLE IF EXISTS `ps_2group_reduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2group_reduction` (
  `id_group_reduction` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `id_group` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  `reduction` decimal(4,3) NOT NULL,
  PRIMARY KEY (`id_group_reduction`),
  UNIQUE KEY `id_group` (`id_group`,`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2group_reduction`
--

LOCK TABLES `ps_2group_reduction` WRITE;
/*!40000 ALTER TABLE `ps_2group_reduction` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2group_reduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2group_shop`
--

DROP TABLE IF EXISTS `ps_2group_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2group_shop` (
  `id_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2group_shop`
--

LOCK TABLES `ps_2group_shop` WRITE;
/*!40000 ALTER TABLE `ps_2group_shop` DISABLE KEYS */;
INSERT INTO `ps_2group_shop` VALUES (1,1),(2,1),(3,1);
/*!40000 ALTER TABLE `ps_2group_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2guest`
--

DROP TABLE IF EXISTS `ps_2guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2guest` (
  `id_guest` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_operating_system` int(10) unsigned DEFAULT NULL,
  `id_web_browser` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned DEFAULT NULL,
  `javascript` tinyint(1) DEFAULT '0',
  `screen_resolution_x` smallint(5) unsigned DEFAULT NULL,
  `screen_resolution_y` smallint(5) unsigned DEFAULT NULL,
  `screen_color` tinyint(3) unsigned DEFAULT NULL,
  `sun_java` tinyint(1) DEFAULT NULL,
  `adobe_flash` tinyint(1) DEFAULT NULL,
  `adobe_director` tinyint(1) DEFAULT NULL,
  `apple_quicktime` tinyint(1) DEFAULT NULL,
  `real_player` tinyint(1) DEFAULT NULL,
  `windows_media` tinyint(1) DEFAULT NULL,
  `accept_language` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id_guest`),
  KEY `id_customer` (`id_customer`),
  KEY `id_operating_system` (`id_operating_system`),
  KEY `id_web_browser` (`id_web_browser`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2guest`
--

LOCK TABLES `ps_2guest` WRITE;
/*!40000 ALTER TABLE `ps_2guest` DISABLE KEYS */;
INSERT INTO `ps_2guest` VALUES (1,1,3,1,0,0,0,0,0,0,0,0,0,0,'es-es'),(2,1,3,2,0,0,0,0,0,0,0,0,0,0,'es');
/*!40000 ALTER TABLE `ps_2guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2help_access`
--

DROP TABLE IF EXISTS `ps_2help_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2help_access` (
  `id_help_access` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(45) NOT NULL,
  `version` varchar(8) NOT NULL,
  PRIMARY KEY (`id_help_access`),
  UNIQUE KEY `label` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2help_access`
--

LOCK TABLES `ps_2help_access` WRITE;
/*!40000 ALTER TABLE `ps_2help_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2help_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2homeslider`
--

DROP TABLE IF EXISTS `ps_2homeslider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2homeslider` (
  `id_homeslider_slides` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_homeslider_slides`,`id_shop`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2homeslider`
--

LOCK TABLES `ps_2homeslider` WRITE;
/*!40000 ALTER TABLE `ps_2homeslider` DISABLE KEYS */;
INSERT INTO `ps_2homeslider` VALUES (1,1),(2,1),(3,1),(4,1),(5,1);
/*!40000 ALTER TABLE `ps_2homeslider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2homeslider_slides`
--

DROP TABLE IF EXISTS `ps_2homeslider_slides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2homeslider_slides` (
  `id_homeslider_slides` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position` int(10) unsigned NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_homeslider_slides`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2homeslider_slides`
--

LOCK TABLES `ps_2homeslider_slides` WRITE;
/*!40000 ALTER TABLE `ps_2homeslider_slides` DISABLE KEYS */;
INSERT INTO `ps_2homeslider_slides` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1);
/*!40000 ALTER TABLE `ps_2homeslider_slides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2homeslider_slides_lang`
--

DROP TABLE IF EXISTS `ps_2homeslider_slides_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2homeslider_slides_lang` (
  `id_homeslider_slides` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `legend` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`id_homeslider_slides`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2homeslider_slides_lang`
--

LOCK TABLES `ps_2homeslider_slides_lang` WRITE;
/*!40000 ALTER TABLE `ps_2homeslider_slides_lang` DISABLE KEYS */;
INSERT INTO `ps_2homeslider_slides_lang` VALUES (1,1,'Sample 1','This is a sample picture','sample-1','http://www.prestashop.com','sample-1.jpg'),(1,2,'Sample 1','This is a sample picture','sample-1','http://www.prestashop.com','sample-1.jpg'),(1,3,'Sample 1','This is a sample picture','sample-1','http://www.prestashop.com','sample-1.jpg'),(1,4,'Sample 1','This is a sample picture','sample-1','http://www.prestashop.com','sample-1.jpg'),(1,5,'Sample 1','This is a sample picture','sample-1','http://www.prestashop.com','sample-1.jpg'),(1,6,'Sample 1','This is a sample picture','sample-1','http://www.prestashop.com','sample-1.jpg'),(1,7,'Sample 1','This is a sample picture','sample-1','http://www.prestashop.com','sample-1.jpg'),(1,8,'Sample 1','This is a sample picture','sample-1','http://www.prestashop.com','sample-1.jpg'),(2,1,'Sample 2','This is a sample picture','sample-2','http://www.prestashop.com','sample-2.jpg'),(2,2,'Sample 2','This is a sample picture','sample-2','http://www.prestashop.com','sample-2.jpg'),(2,3,'Sample 2','This is a sample picture','sample-2','http://www.prestashop.com','sample-2.jpg'),(2,4,'Sample 2','This is a sample picture','sample-2','http://www.prestashop.com','sample-2.jpg'),(2,5,'Sample 2','This is a sample picture','sample-2','http://www.prestashop.com','sample-2.jpg'),(2,6,'Sample 2','This is a sample picture','sample-2','http://www.prestashop.com','sample-2.jpg'),(2,7,'Sample 2','This is a sample picture','sample-2','http://www.prestashop.com','sample-2.jpg'),(2,8,'Sample 2','This is a sample picture','sample-2','http://www.prestashop.com','sample-2.jpg'),(3,1,'Sample 3','This is a sample picture','sample-3','http://www.prestashop.com','sample-3.jpg'),(3,2,'Sample 3','This is a sample picture','sample-3','http://www.prestashop.com','sample-3.jpg'),(3,3,'Sample 3','This is a sample picture','sample-3','http://www.prestashop.com','sample-3.jpg'),(3,4,'Sample 3','This is a sample picture','sample-3','http://www.prestashop.com','sample-3.jpg'),(3,5,'Sample 3','This is a sample picture','sample-3','http://www.prestashop.com','sample-3.jpg'),(3,6,'Sample 3','This is a sample picture','sample-3','http://www.prestashop.com','sample-3.jpg'),(3,7,'Sample 3','This is a sample picture','sample-3','http://www.prestashop.com','sample-3.jpg'),(3,8,'Sample 3','This is a sample picture','sample-3','http://www.prestashop.com','sample-3.jpg'),(4,1,'Sample 4','This is a sample picture','sample-4','http://www.prestashop.com','sample-4.jpg'),(4,2,'Sample 4','This is a sample picture','sample-4','http://www.prestashop.com','sample-4.jpg'),(4,3,'Sample 4','This is a sample picture','sample-4','http://www.prestashop.com','sample-4.jpg'),(4,4,'Sample 4','This is a sample picture','sample-4','http://www.prestashop.com','sample-4.jpg'),(4,5,'Sample 4','This is a sample picture','sample-4','http://www.prestashop.com','sample-4.jpg'),(4,6,'Sample 4','This is a sample picture','sample-4','http://www.prestashop.com','sample-4.jpg'),(4,7,'Sample 4','This is a sample picture','sample-4','http://www.prestashop.com','sample-4.jpg'),(4,8,'Sample 4','This is a sample picture','sample-4','http://www.prestashop.com','sample-4.jpg'),(5,1,'Sample 5','This is a sample picture','sample-5','http://www.prestashop.com','sample-5.jpg'),(5,2,'Sample 5','This is a sample picture','sample-5','http://www.prestashop.com','sample-5.jpg'),(5,3,'Sample 5','This is a sample picture','sample-5','http://www.prestashop.com','sample-5.jpg'),(5,4,'Sample 5','This is a sample picture','sample-5','http://www.prestashop.com','sample-5.jpg'),(5,5,'Sample 5','This is a sample picture','sample-5','http://www.prestashop.com','sample-5.jpg'),(5,6,'Sample 5','This is a sample picture','sample-5','http://www.prestashop.com','sample-5.jpg'),(5,7,'Sample 5','This is a sample picture','sample-5','http://www.prestashop.com','sample-5.jpg'),(5,8,'Sample 5','This is a sample picture','sample-5','http://www.prestashop.com','sample-5.jpg');
/*!40000 ALTER TABLE `ps_2homeslider_slides_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2hook`
--

DROP TABLE IF EXISTS `ps_2hook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2hook` (
  `id_hook` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text,
  `position` tinyint(1) NOT NULL DEFAULT '1',
  `live_edit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_hook`),
  UNIQUE KEY `hook_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2hook`
--

LOCK TABLES `ps_2hook` WRITE;
/*!40000 ALTER TABLE `ps_2hook` DISABLE KEYS */;
INSERT INTO `ps_2hook` VALUES (1,'displayPayment','Payment','',1,1),(2,'actionValidateOrder','New orders','',1,0),(3,'actionPaymentConfirmation','Payment confirmation','',1,0),(4,'displayPaymentReturn','Payment return','',1,0),(5,'actionUpdateQuantity','Quantity update','Quantity is updated only when the customer effectively place his order.',1,0),(6,'displayRightColumn','Right column blocks','',1,1),(7,'displayLeftColumn','Left column blocks','',1,1),(8,'displayHome','Homepage content','',1,1),(9,'displayHeader','Header of pages','A hook which allow you to do things in the header of each pages',1,0),(10,'actionCartSave','Cart creation and update','',1,0),(11,'actionAuthentication','Successful customer authentication','',1,0),(12,'actionProductAdd','Product creation','',1,0),(13,'actionProductUpdate','Product Update','',1,0),(14,'displayTop','Top of pages','A hook which allow you to do things a the top of each pages.',1,0),(15,'displayRightColumnProduct','Extra actions on the product page (right column).','',1,0),(16,'actionProductDelete','Product deletion','This hook is called when a product is deleted',1,0),(17,'displayFooterProduct','Product footer','Add new blocks under the product description',1,1),(18,'displayInvoice','Invoice','Add blocks to invoice (order)',1,0),(19,'actionOrderStatusUpdate','Order\'s status update event','Launch modules when the order\'s status of an order change.',1,0),(20,'displayAdminOrder','Display in Back-Office, tab AdminOrder','Launch modules when the tab AdminOrder is displayed on back-office.',1,0),(21,'displayFooter','Footer','Add block in footer',1,0),(22,'displayPDFInvoice','PDF Invoice','Allow the display of extra informations into the PDF invoice',1,0),(23,'displayAdminCustomers','Display in Back-Office, tab AdminCustomers','Launch modules when the tab AdminCustomers is displayed on back-office.',1,0),(24,'displayOrderConfirmation','Order confirmation page','Called on order confirmation page',1,0),(25,'actionCustomerAccountAdd','Successful customer create account','Called when new customer create account successfuled',1,0),(26,'displayCustomerAccount','Customer account page display in front office','Display on page account of the customer',1,0),(27,'actionOrderSlipAdd','Called when a order slip is created','Called when a quantity of one product change in an order.',1,0),(28,'displayProductTab','Tabs on product page','Called on order product page tabs',1,0),(29,'displayProductTabContent','Content of tabs on product page','Called on order product page tabs',1,0),(30,'displayShoppingCartFooter','Shopping cart footer','Display some specific informations on the shopping cart page',1,0),(31,'displayCustomerAccountForm','Customer account creation form','Display some information on the form to create a customer account',1,0),(32,'displayAdminStatsModules','Stats - Modules','',1,0),(33,'displayAdminStatsGraphEngine','Graph Engines','',1,0),(34,'actionOrderReturn','Product returned','',1,0),(35,'displayProductButtons','Product actions','Put new action buttons on product page',1,0),(36,'displayBackOfficeHome','Administration panel homepage','',1,0),(37,'displayAdminStatsGridEngine','Grid Engines','',1,0),(38,'actionWatermark','Watermark','',1,0),(39,'actionProductCancel','Product cancelled','This hook is called when you cancel a product in an order',1,0),(40,'displayLeftColumnProduct','Extra actions on the product page (left column).','',1,0),(41,'actionProductOutOfStock','Product out of stock','Make action while product is out of stock',1,0),(42,'actionProductAttributeUpdate','Product attribute update','',1,0),(43,'displayCarrierList','Extra carrier (module mode)','',1,0),(44,'displayShoppingCart','Shopping cart extra button','Display some specific informations',1,0),(45,'actionSearch','Search','',1,0),(46,'displayBeforePayment','Redirect in order process','Redirect user to the module instead of displaying payment modules',1,0),(47,'actionCarrierUpdate','Carrier Update','This hook is called when a carrier is updated',1,0),(48,'actionOrderStatusPostUpdate','Post update of order status','',1,0),(49,'displayCustomerAccountFormTop','Block above the form for create an account','',1,0),(50,'displayBackOfficeHeader','Administration panel header','',1,0),(51,'displayBackOfficeTop','Administration panel hover the tabs','',1,0),(52,'displayBackOfficeFooter','Administration panel footer','',1,0),(53,'actionProductAttributeDelete','Product Attribute Deletion','',1,0),(54,'actionCarrierProcess','Carrier Process','',1,0),(55,'actionOrderDetail','Order Detail','To set the follow-up in smarty when order detail is called',1,0),(56,'displayBeforeCarrier','Before carrier list','This hook is display before the carrier list on Front office',1,0),(57,'displayOrderDetail','Order detail displayed','Displayed on order detail on front office',1,0),(58,'actionPaymentCCAdd','Payment CC added','Payment CC added',1,0),(59,'displayProductComparison','Extra Product Comparison','Extra Product Comparison',1,0),(60,'actionCategoryAdd','Category creation','',1,0),(61,'actionCategoryUpdate','Category modification','',1,0),(62,'actionCategoryDelete','Category removal','',1,0),(63,'actionBeforeAuthentication','Before Authentication','Before authentication',1,0),(64,'displayPaymentTop','Top of payment page','Top of payment page',1,0),(65,'actionHtaccessCreate','After htaccess creation','After htaccess creation',1,0),(66,'actionAdminMetaSave','After save configuration in AdminMeta','After save configuration in AdminMeta',1,0),(67,'displayAttributeGroupForm','Add fields to the form \"attribute group\"','Add fields to the form \"attribute group\"',1,0),(68,'actionAttributeGroupSave','On saving attribute group','On saving attribute group',1,0),(69,'actionAttributeGroupDelete','On deleting attribute group','On deleting attribute group',1,0),(70,'displayFeatureForm','Add fields to the form \"feature\"','Add fields to the form \"feature\"',1,0),(71,'actionFeatureSave','On saving attribute feature','On saving attribute feature',1,0),(72,'actionFeatureDelete','On deleting attribute feature','On deleting attribute feature',1,0),(73,'actionProductSave','On saving products','On saving products',1,0),(74,'actionProductListOverride','Assign product list to a category','Assign product list to a category',1,0),(75,'displayAttributeGroupPostProcess','On post-process in admin attribute group','On post-process in admin attribute group',1,0),(76,'displayFeaturePostProcess','On post-process in admin feature','On post-process in admin feature',1,0),(77,'displayFeatureValueForm','Add fields to the form \"feature value\"','Add fields to the form \"feature value\"',1,0),(78,'displayFeatureValuePostProcess','On post-process in admin feature value','On post-process in admin feature value',1,0),(79,'actionFeatureValueDelete','On deleting attribute feature value','On deleting attribute feature value',1,0),(80,'actionFeatureValueSave','On saving attribute feature value','On saving attribute feature value',1,0),(81,'displayAttributeForm','Add fields to the form \"attribute value\"','Add fields to the form \"attribute value\"',1,0),(82,'actionAttributePostProcess','On post-process in admin feature value','On post-process in admin feature value',1,0),(83,'actionAttributeDelete','On deleting attribute feature value','On deleting attribute feature value',1,0),(84,'actionAttributeSave','On saving attribute feature value','On saving attribute feature value',1,0),(85,'actionTaxManager','Tax Manager Factory','',1,0),(86,'displayMyAccountBlock','My account block','Display extra informations inside the \"my account\" block',1,0),(87,'actionAdminMetaControllerUpdate_optionsBefore','actionAdminMetaControllerUpdate_optionsBefore','',0,0),(88,'actionAdminLanguagesControllerStatusBefore','actionAdminLanguagesControllerStatusBefore','',0,0),(89,'actionShopDataDuplication','actionShopDataDuplication','',0,0),(90,'actionBeforeSubmitAccount','actionBeforeSubmitAccount','',0,0),(92,'displayMyAccountBlockfooter','My account block','Display extra informations inside the \"my account\" block',1,0),(93,'displayMobileTopSiteMap','displayMobileTopSiteMap','',0,0),(94,'actionObjectCategoryUpdateAfter','actionObjectCategoryUpdateAfter','',0,0),(95,'actionObjectCategoryDeleteAfter','actionObjectCategoryDeleteAfter','',0,0),(96,'actionObjectCmsUpdateAfter','actionObjectCmsUpdateAfter','',0,0),(97,'actionObjectCmsDeleteAfter','actionObjectCmsDeleteAfter','',0,0),(98,'actionObjectSupplierUpdateAfter','actionObjectSupplierUpdateAfter','',0,0),(99,'actionObjectSupplierDeleteAfter','actionObjectSupplierDeleteAfter','',0,0),(100,'actionObjectManufacturerUpdateAfter','actionObjectManufacturerUpdateAfter','',0,0),(101,'actionObjectManufacturerDeleteAfter','actionObjectManufacturerDeleteAfter','',0,0),(102,'actionObjectProductUpdateAfter','actionObjectProductUpdateAfter','',0,0),(103,'actionObjectProductDeleteAfter','actionObjectProductDeleteAfter','',0,0);
/*!40000 ALTER TABLE `ps_2hook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2hook_alias`
--

DROP TABLE IF EXISTS `ps_2hook_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2hook_alias` (
  `id_hook_alias` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_hook_alias`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2hook_alias`
--

LOCK TABLES `ps_2hook_alias` WRITE;
/*!40000 ALTER TABLE `ps_2hook_alias` DISABLE KEYS */;
INSERT INTO `ps_2hook_alias` VALUES (1,'payment','displayPayment'),(2,'newOrder','actionValidateOrder'),(3,'paymentConfirm','actionPaymentConfirmation'),(4,'paymentReturn','displayPaymentReturn'),(5,'updateQuantity','actionUpdateQuantity'),(6,'rightColumn','displayRightColumn'),(7,'leftColumn','displayLeftColumn'),(8,'home','displayHome'),(9,'header','displayHeader'),(10,'cart','actionCartSave'),(11,'authentication','actionAuthentication'),(12,'addproduct','actionProductAdd'),(13,'updateproduct','actionProductUpdate'),(14,'top','displayTop'),(15,'extraRight','displayRightColumnProduct'),(16,'deleteproduct','actionProductDelete'),(17,'productfooter','displayFooterProduct'),(18,'invoice','displayInvoice'),(19,'updateOrderStatus','actionOrderStatusUpdate'),(20,'adminOrder','displayAdminOrder'),(21,'footer','displayFooter'),(22,'PDFInvoice','displayPDFInvoice'),(23,'adminCustomers','displayAdminCustomers'),(24,'orderConfirmation','displayOrderConfirmation'),(25,'createAccount','actionCustomerAccountAdd'),(26,'customerAccount','displayCustomerAccount'),(27,'orderSlip','actionOrderSlipAdd'),(28,'productTab','displayProductTab'),(29,'productTabContent','displayProductTabContent'),(30,'shoppingCart','displayShoppingCartFooter'),(31,'createAccountForm','displayCustomerAccountForm'),(32,'AdminStatsModules','displayAdminStatsModules'),(33,'GraphEngine','displayAdminStatsGraphEngine'),(34,'orderReturn','actionOrderReturn'),(35,'productActions','displayProductButtons'),(36,'backOfficeHome','displayBackOfficeHome'),(37,'GridEngine','displayAdminStatsGridEngine'),(38,'watermark','actionWatermark'),(39,'cancelProduct','actionProductCancel'),(40,'extraLeft','displayLeftColumnProduct'),(41,'productOutOfStock','actionProductOutOfStock'),(42,'updateProductAttribute','actionProductAttributeUpdate'),(43,'extraCarrier','displayCarrierList'),(44,'shoppingCartExtra','displayShoppingCart'),(45,'search','actionSearch'),(46,'backBeforePayment','displayBeforePayment'),(47,'updateCarrier','actionCarrierUpdate'),(48,'postUpdateOrderStatus','actionOrderStatusPostUpdate'),(49,'createAccountTop','displayCustomerAccountFormTop'),(50,'backOfficeHeader','displayBackOfficeHeader'),(51,'backOfficeTop','displayBackOfficeTop'),(52,'backOfficeFooter','displayBackOfficeFooter'),(53,'deleteProductAttribute','actionProductAttributeDelete'),(54,'processCarrier','actionCarrierProcess'),(55,'orderDetail','actionOrderDetail'),(56,'beforeCarrier','displayBeforeCarrier'),(57,'orderDetailDisplayed','displayOrderDetail'),(58,'paymentCCAdded','actionPaymentCCAdd'),(59,'extraProductComparison','displayProductComparison'),(60,'categoryAddition','actionCategoryAdd'),(61,'categoryUpdate','actionCategoryUpdate'),(62,'categoryDeletion','actionCategoryDelete'),(63,'beforeAuthentication','actionBeforeAuthentication'),(64,'paymentTop','displayPaymentTop'),(65,'afterCreateHtaccess','actionHtaccessCreate'),(66,'afterSaveAdminMeta','actionAdminMetaSave'),(67,'attributeGroupForm','displayAttributeGroupForm'),(68,'afterSaveAttributeGroup','actionAttributeGroupSave'),(69,'afterDeleteAttributeGroup','actionAttributeGroupDelete'),(70,'featureForm','displayFeatureForm'),(71,'afterSaveFeature','actionFeatureSave'),(72,'afterDeleteFeature','actionFeatureDelete'),(73,'afterSaveProduct','actionProductSave'),(74,'productListAssign','actionProductListOverride'),(75,'postProcessAttributeGroup','displayAttributeGroupPostProcess'),(76,'postProcessFeature','displayFeaturePostProcess'),(77,'featureValueForm','displayFeatureValueForm'),(78,'postProcessFeatureValue','displayFeatureValuePostProcess'),(79,'afterDeleteFeatureValue','actionFeatureValueDelete'),(80,'afterSaveFeatureValue','actionFeatureValueSave'),(81,'attributeForm','displayAttributeForm'),(82,'postProcessAttribute','actionAttributePostProcess'),(83,'afterDeleteAttribute','actionAttributeDelete'),(84,'afterSaveAttribute','actionAttributeSave'),(85,'taxManager','actionTaxManager'),(86,'myAccountBlock','displayMyAccountBlock');
/*!40000 ALTER TABLE `ps_2hook_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2hook_module`
--

DROP TABLE IF EXISTS `ps_2hook_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2hook_module` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_hook` int(10) unsigned NOT NULL,
  `position` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_hook`,`id_shop`),
  KEY `id_hook` (`id_hook`),
  KEY `id_module` (`id_module`),
  KEY `position` (`id_shop`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2hook_module`
--

LOCK TABLES `ps_2hook_module` WRITE;
/*!40000 ALTER TABLE `ps_2hook_module` DISABLE KEYS */;
INSERT INTO `ps_2hook_module` VALUES (3,1,6,1),(3,1,9,1),(3,1,19,1),(5,1,60,1),(5,1,61,1),(5,1,62,1),(5,1,87,1),(5,1,88,1),(6,1,89,1),(10,1,31,1),(10,1,90,1),(11,1,14,1),(19,1,21,1),(20,1,93,1),(21,1,40,1),(27,1,94,1),(27,1,95,1),(27,1,96,1),(27,1,97,1),(27,1,98,1),(27,1,99,1),(27,1,100,1),(27,1,101,1),(27,1,102,1),(27,1,103,1),(30,1,1,1),(30,1,4,1),(31,1,26,1),(31,1,86,1),(35,1,33,1),(37,1,37,1),(40,1,8,1),(40,1,89,1),(51,1,11,1),(51,1,25,1),(61,1,45,1),(63,1,32,1),(1,1,1,2),(1,1,4,2),(5,1,21,2),(9,1,14,2),(15,1,6,2),(17,1,9,2),(26,1,7,2),(27,1,61,2),(27,1,89,2),(31,1,40,2),(36,1,33,2),(39,1,8,2),(60,1,32,2),(5,1,7,3),(18,1,9,3),(18,1,14,3),(34,1,33,3),(59,1,32,3),(6,1,21,4),(14,1,21,4),(20,1,14,4),(23,1,6,4),(29,1,7,4),(29,1,9,4),(33,1,33,4),(57,1,32,4),(4,1,9,5),(6,1,6,5),(7,1,9,5),(12,1,7,5),(22,1,9,5),(22,1,21,5),(25,1,7,5),(28,1,14,5),(54,1,32,5),(6,1,7,6),(8,1,21,6),(13,1,9,6),(24,1,6,6),(27,1,14,6),(52,1,32,6),(2,1,7,7),(4,1,14,7),(42,1,14,7),(47,1,32,7),(49,1,32,7),(51,1,21,7),(10,1,9,8),(17,1,7,8),(41,1,14,8),(44,1,32,8),(5,1,9,9),(16,1,7,9),(56,1,32,9),(23,1,9,10),(41,1,32,10),(9,1,9,11),(42,1,32,11),(14,1,9,12),(15,1,9,12),(58,1,32,12),(28,1,9,13),(45,1,32,13),(11,1,9,14),(12,1,9,15),(43,1,32,15),(6,1,9,16),(46,1,32,16),(48,1,32,17),(26,1,9,18),(55,1,32,18),(24,1,9,19),(61,1,32,19),(20,1,9,20),(50,1,32,20),(8,1,9,21),(62,1,32,21),(53,1,32,22),(31,1,9,23),(39,1,9,24),(16,1,9,25),(7,1,6,26),(25,1,9,27),(32,1,9,28);
/*!40000 ALTER TABLE `ps_2hook_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2hook_module_exceptions`
--

DROP TABLE IF EXISTS `ps_2hook_module_exceptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2hook_module_exceptions` (
  `id_hook_module_exceptions` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_module` int(10) unsigned NOT NULL,
  `id_hook` int(10) unsigned NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_hook_module_exceptions`),
  KEY `id_module` (`id_module`),
  KEY `id_hook` (`id_hook`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2hook_module_exceptions`
--

LOCK TABLES `ps_2hook_module_exceptions` WRITE;
/*!40000 ALTER TABLE `ps_2hook_module_exceptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2hook_module_exceptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2image`
--

DROP TABLE IF EXISTS `ps_2image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2image` (
  `id_image` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `position` smallint(2) unsigned NOT NULL DEFAULT '0',
  `cover` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_image`),
  UNIQUE KEY `idx_product_image` (`id_image`,`id_product`,`cover`),
  KEY `image_product` (`id_product`),
  KEY `id_product_cover` (`id_product`,`cover`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2image`
--

LOCK TABLES `ps_2image` WRITE;
/*!40000 ALTER TABLE `ps_2image` DISABLE KEYS */;
INSERT INTO `ps_2image` VALUES (1,4,1,1),(2,5,1,1),(3,6,1,1),(4,7,1,1);
/*!40000 ALTER TABLE `ps_2image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2image_lang`
--

DROP TABLE IF EXISTS `ps_2image_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2image_lang` (
  `id_image` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `legend` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_image`,`id_lang`),
  KEY `id_image` (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2image_lang`
--

LOCK TABLES `ps_2image_lang` WRITE;
/*!40000 ALTER TABLE `ps_2image_lang` DISABLE KEYS */;
INSERT INTO `ps_2image_lang` VALUES (1,1,NULL),(1,2,NULL),(1,3,NULL),(1,4,NULL),(1,5,NULL),(1,6,NULL),(1,7,NULL),(1,8,NULL),(2,1,NULL),(2,2,NULL),(2,3,NULL),(2,4,NULL),(2,5,NULL),(2,6,NULL),(2,7,NULL),(2,8,NULL),(3,1,NULL),(3,2,NULL),(3,3,NULL),(3,4,NULL),(3,5,NULL),(3,6,NULL),(3,7,NULL),(3,8,NULL),(4,1,NULL),(4,2,NULL),(4,3,NULL),(4,4,NULL),(4,5,NULL),(4,6,NULL),(4,7,NULL),(4,8,NULL);
/*!40000 ALTER TABLE `ps_2image_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2image_shop`
--

DROP TABLE IF EXISTS `ps_2image_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2image_shop` (
  `id_image` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `cover` tinyint(1) NOT NULL,
  KEY `id_image` (`id_image`,`id_shop`,`cover`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2image_shop`
--

LOCK TABLES `ps_2image_shop` WRITE;
/*!40000 ALTER TABLE `ps_2image_shop` DISABLE KEYS */;
INSERT INTO `ps_2image_shop` VALUES (1,1,1),(2,1,1),(3,1,1),(4,1,1);
/*!40000 ALTER TABLE `ps_2image_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2image_type`
--

DROP TABLE IF EXISTS `ps_2image_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2image_type` (
  `id_image_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(16) NOT NULL,
  `width` int(10) unsigned NOT NULL,
  `height` int(10) unsigned NOT NULL,
  `products` tinyint(1) NOT NULL DEFAULT '1',
  `categories` tinyint(1) NOT NULL DEFAULT '1',
  `manufacturers` tinyint(1) NOT NULL DEFAULT '1',
  `suppliers` tinyint(1) NOT NULL DEFAULT '1',
  `scenes` tinyint(1) NOT NULL DEFAULT '1',
  `stores` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_image_type`),
  KEY `image_type_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2image_type`
--

LOCK TABLES `ps_2image_type` WRITE;
/*!40000 ALTER TABLE `ps_2image_type` DISABLE KEYS */;
INSERT INTO `ps_2image_type` VALUES (1,'small_default',45,45,1,1,1,1,0,0),(2,'medium_default',58,58,1,1,1,1,0,1),(3,'large_default',264,264,1,1,1,1,0,0),(4,'thickbox_default',600,600,1,0,0,0,0,0),(5,'category_default',500,150,0,1,0,0,0,0),(6,'home_default',124,124,1,0,0,0,0,0),(7,'scene_default',520,189,0,0,0,0,1,0),(8,'m_scene_default',161,58,0,0,0,0,1,0);
/*!40000 ALTER TABLE `ps_2image_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2import_match`
--

DROP TABLE IF EXISTS `ps_2import_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2import_match` (
  `id_import_match` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `match` text NOT NULL,
  `skip` int(2) NOT NULL,
  PRIMARY KEY (`id_import_match`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2import_match`
--

LOCK TABLES `ps_2import_match` WRITE;
/*!40000 ALTER TABLE `ps_2import_match` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2import_match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2lang`
--

DROP TABLE IF EXISTS `ps_2lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2lang` (
  `id_lang` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `active` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `iso_code` char(2) NOT NULL,
  `language_code` char(5) NOT NULL,
  `date_format_lite` char(32) NOT NULL DEFAULT 'Y-m-d',
  `date_format_full` char(32) NOT NULL DEFAULT 'Y-m-d H:i:s',
  `is_rtl` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_lang`),
  KEY `lang_iso_code` (`iso_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2lang`
--

LOCK TABLES `ps_2lang` WRITE;
/*!40000 ALTER TABLE `ps_2lang` DISABLE KEYS */;
INSERT INTO `ps_2lang` VALUES (1,'English (English)',1,'en','en-us','m/j/Y','m/j/Y H:i:s',0),(2,'Português (Portuguese)',0,'br','pt-br','d/m/Y','d/m/Y H:i:s',0),(3,'Deutsch (German)',0,'de','de','d.m.Y','d.m.Y H:i:s',0),(4,'Español (Spanish)',1,'es','es','d/m/Y','d/m/Y H:i:s',0),(5,'Français (French)',0,'fr','fr','d/m/Y','d/m/Y H:i:s',0),(6,'Italiano (Italian)',0,'it','it','d/m/Y','d/m/Y H:i:s',0),(7,'Catalan',0,'ca','ca','Y-m-d','Y-m-d H:i:s',0),(8,'Galician',0,'gl','gl','Y-m-d','Y-m-d H:i:s',0);
/*!40000 ALTER TABLE `ps_2lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2lang_shop`
--

DROP TABLE IF EXISTS `ps_2lang_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2lang_shop` (
  `id_lang` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_lang`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2lang_shop`
--

LOCK TABLES `ps_2lang_shop` WRITE;
/*!40000 ALTER TABLE `ps_2lang_shop` DISABLE KEYS */;
INSERT INTO `ps_2lang_shop` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1);
/*!40000 ALTER TABLE `ps_2lang_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2linksmenutop`
--

DROP TABLE IF EXISTS `ps_2linksmenutop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2linksmenutop` (
  `id_linksmenutop` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL,
  `new_window` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_linksmenutop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2linksmenutop`
--

LOCK TABLES `ps_2linksmenutop` WRITE;
/*!40000 ALTER TABLE `ps_2linksmenutop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2linksmenutop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2linksmenutop_lang`
--

DROP TABLE IF EXISTS `ps_2linksmenutop_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2linksmenutop_lang` (
  `id_linksmenutop` int(11) NOT NULL,
  `id_lang` int(11) NOT NULL,
  `id_shop` int(11) NOT NULL,
  `label` varchar(128) NOT NULL,
  `link` varchar(128) NOT NULL,
  KEY `id_linksmenutop` (`id_linksmenutop`,`id_lang`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2linksmenutop_lang`
--

LOCK TABLES `ps_2linksmenutop_lang` WRITE;
/*!40000 ALTER TABLE `ps_2linksmenutop_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2linksmenutop_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2log`
--

DROP TABLE IF EXISTS `ps_2log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2log` (
  `id_log` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `severity` tinyint(1) NOT NULL,
  `error_code` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `object_type` varchar(32) DEFAULT NULL,
  `object_id` int(10) unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2log`
--

LOCK TABLES `ps_2log` WRITE;
/*!40000 ALTER TABLE `ps_2log` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2manufacturer`
--

DROP TABLE IF EXISTS `ps_2manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2manufacturer` (
  `id_manufacturer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_manufacturer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2manufacturer`
--

LOCK TABLES `ps_2manufacturer` WRITE;
/*!40000 ALTER TABLE `ps_2manufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2manufacturer_lang`
--

DROP TABLE IF EXISTS `ps_2manufacturer_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2manufacturer_lang` (
  `id_manufacturer` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `short_description` varchar(254) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_manufacturer`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2manufacturer_lang`
--

LOCK TABLES `ps_2manufacturer_lang` WRITE;
/*!40000 ALTER TABLE `ps_2manufacturer_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2manufacturer_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2manufacturer_shop`
--

DROP TABLE IF EXISTS `ps_2manufacturer_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2manufacturer_shop` (
  `id_manufacturer` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_manufacturer`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2manufacturer_shop`
--

LOCK TABLES `ps_2manufacturer_shop` WRITE;
/*!40000 ALTER TABLE `ps_2manufacturer_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2manufacturer_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2memcached_servers`
--

DROP TABLE IF EXISTS `ps_2memcached_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2memcached_servers` (
  `id_memcached_server` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(254) NOT NULL,
  `port` int(11) unsigned NOT NULL,
  `weight` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_memcached_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2memcached_servers`
--

LOCK TABLES `ps_2memcached_servers` WRITE;
/*!40000 ALTER TABLE `ps_2memcached_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2memcached_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2message`
--

DROP TABLE IF EXISTS `ps_2message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2message` (
  `id_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_cart` int(10) unsigned DEFAULT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned DEFAULT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `message` text NOT NULL,
  `private` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`),
  KEY `message_order` (`id_order`),
  KEY `id_cart` (`id_cart`),
  KEY `id_customer` (`id_customer`),
  KEY `id_employee` (`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2message`
--

LOCK TABLES `ps_2message` WRITE;
/*!40000 ALTER TABLE `ps_2message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2message_readed`
--

DROP TABLE IF EXISTS `ps_2message_readed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2message_readed` (
  `id_message` int(10) unsigned NOT NULL,
  `id_employee` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`,`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2message_readed`
--

LOCK TABLES `ps_2message_readed` WRITE;
/*!40000 ALTER TABLE `ps_2message_readed` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2message_readed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2meta`
--

DROP TABLE IF EXISTS `ps_2meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2meta` (
  `id_meta` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page` varchar(64) NOT NULL,
  PRIMARY KEY (`id_meta`),
  KEY `meta_name` (`page`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2meta`
--

LOCK TABLES `ps_2meta` WRITE;
/*!40000 ALTER TABLE `ps_2meta` DISABLE KEYS */;
INSERT INTO `ps_2meta` VALUES (1,'404'),(11,'address'),(12,'addresses'),(13,'authentication'),(2,'best-sales'),(14,'cart'),(3,'contact'),(15,'discount'),(25,'guest-tracking'),(16,'history'),(17,'identity'),(4,'index'),(5,'manufacturer'),(18,'my-account'),(6,'new-products'),(21,'order'),(19,'order-follow'),(24,'order-opc'),(20,'order-slip'),(7,'password'),(8,'prices-drop'),(22,'search'),(9,'sitemap'),(23,'stores'),(10,'supplier');
/*!40000 ALTER TABLE `ps_2meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2meta_lang`
--

DROP TABLE IF EXISTS `ps_2meta_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2meta_lang` (
  `id_meta` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `url_rewrite` varchar(254) NOT NULL,
  PRIMARY KEY (`id_meta`,`id_shop`,`id_lang`),
  KEY `id_shop` (`id_shop`),
  KEY `id_lang` (`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2meta_lang`
--

LOCK TABLES `ps_2meta_lang` WRITE;
/*!40000 ALTER TABLE `ps_2meta_lang` DISABLE KEYS */;
INSERT INTO `ps_2meta_lang` VALUES (1,1,1,'404 error','This page cannot be found','error, 404, not found','page-not-found'),(1,1,2,'erro 404','Esta página não pode ser encontrada','error, 404, not found','page-not-found'),(1,1,3,'Fehler 404','Seite wurde nicht gefunden','Fehler 404, nicht gefunden','seite-nicht-gefunden'),(1,1,4,'Error 404','Esta página no se encuentra','error, 404, No se ha encontrado','pagina-no-encuentra'),(1,1,5,'Erreur 404','Cette page est introuvable','erreur, 404, introuvable','page-non-trouvee'),(1,1,6,'errore 404','Impossibile trovare questa pagina','errore, 404, non trovato','pagina-non-trovata'),(1,1,7,'Error 404','Esta página no se encuentra','error, 404, No se ha encontrado','pagina-no-encuentra'),(1,1,8,'Error 404','Esta página no se encuentra','error, 404, No se ha encontrado','pagina-no-encuentra'),(2,1,1,'Best sales','Our best sales','best sales','best-sales'),(2,1,2,'Mais vendidos','Nossos produto mais vendidos','best sales','best-sales'),(2,1,3,'Verkaufshits','Unsere Verkaufshits','Verkaufshits','verkaufshits'),(2,1,4,'Los más vendidos','Lista de los de mayor venta de productos','los más vendidos','mas-vendidos'),(2,1,5,'Meilleures ventes','Liste de nos produits les mieux vendus','meilleures ventes','meilleures-ventes'),(2,1,6,'Vendite migliori','Le nostre vendite migliori','vendite migliori','vendite-migliori'),(2,1,7,'Los más vendidos','Lista de los de mayor venta de productos','los más vendidos','mas-vendidos'),(2,1,8,'Los más vendidos','Lista de los de mayor venta de productos','los más vendidos','mas-vendidos'),(3,1,1,'Contact us','Use our form to contact us','contact, form, e-mail','contact-us'),(3,1,2,'Entre em Contato','Use nosso formulário para nos contatar','contact, form, e-mail','contact-us'),(3,1,3,'Kontaktieren Sie uns','Nutzen Sie unser Kontaktformular','Kontakt, Formular, E-Mail','kontaktieren-sie-uns'),(3,1,4,'Contáctenos','Use nuestro formulario de contacto con nosotros','formulario de contacto, e-mail','contactenos'),(3,1,5,'Contactez-nous','Utilisez notre formulaire pour nous contacter','contact, formulaire, e-mail','contactez-nous'),(3,1,6,'Contattaci','Usa il nostro modulo per contattarci','contatto, modulo, e-mail','contattaci'),(3,1,7,'Contáctenos','Use nuestro formulario de contacto con nosotros','formulario de contacto, e-mail','contactenos'),(3,1,8,'Contáctenos','Use nuestro formulario de contacto con nosotros','formulario de contacto, e-mail','contactenos'),(4,1,1,'','Shop powered by PrestaShop','shop, prestashop',''),(4,1,2,'','Shop powered by PrestaShop','shop, prestashop',''),(4,1,3,'','Shop powered by PrestaShop','Shop, prestashop',''),(4,1,4,'','Shop powered by PrestaShop','tienda, prestashop',''),(4,1,5,'','Boutique propulsée par PrestaShop','boutique, prestashop',''),(4,1,6,'','Negozio powered by PrestaShop','negozio, prestashop',''),(4,1,7,'','Shop powered by PrestaShop','tienda, prestashop',''),(4,1,8,'','Shop powered by PrestaShop','tienda, prestashop',''),(5,1,1,'Manufacturers','Manufacturers list','manufacturer','manufacturers'),(5,1,2,'Fabricantes','Lista de Fabricantes','manufacturer','manufacturers'),(5,1,3,'Hersteller','Herstellerliste','Hersteller','hersteller'),(5,1,4,'Fabricantes','Lista de Fabricantes','fabricantes','fabricantes'),(5,1,5,'Fabricants','Liste de nos fabricants','fabricants','fabricants'),(5,1,6,'Produttori','Elenco produttori','produttore','produttori'),(5,1,7,'Fabricantes','Lista de Fabricantes','fabricantes','fabricantes'),(5,1,8,'Fabricantes','Lista de Fabricantes','fabricantes','fabricantes'),(6,1,1,'New products','Our new products','new, products','new-products'),(6,1,2,'Novos produtos','Nossos novos produtos','new, products','new-products'),(6,1,3,'Neue Produkte','Unsere neuen Produkte','neu, Produkte','neue-Produkte'),(6,1,4,'Nuevos Productos','Lista de nuestros nuevos productos','nuevo, productos','nuevos-productos'),(6,1,5,'Nouveaux produits','Liste de nos nouveaux produits','nouveau, produit','nouveaux-produits'),(6,1,6,'Nuovi prodotti','I nostri nuovi prodotti','nuovi, prodotti','nuovi-prodotti'),(6,1,7,'Nuevos Productos','Lista de nuestros nuevos productos','nuevo, productos','nuevos-productos'),(6,1,8,'Nuevos Productos','Lista de nuestros nuevos productos','nuevo, productos','nuevos-productos'),(7,1,1,'Forgot your password','Enter your e-mail address used to register in goal to get e-mail with your new password','forgot, password, e-mail, new, reset','password-recovery'),(7,1,2,'Esqueceu sua senha','Digite seu e-mail usado para registrar para obter um e-mail com a nova senha','forgot, password, e-mail, new, reset','password-recovery'),(7,1,3,'Kennwort vergessen','Geben Sie die E-Mailadresse ein, die Sie zum Einloggen benutzen, damit Sie eine E-Mail mit dem neuen Kennwort erhalt','vergessen, Kennwort, E-Mail, neu, Reset','kennwort-wiederherstellung'),(7,1,4,'Olvidaste tu contraseña','Ingrese su dirección de correo electrónico para recibir su nueva contraseña.','contraseña, has olvidado, e-mail, nuevo, regeneración','contrasena-olvidado'),(7,1,5,'Mot de passe oublié','Renseignez votre adresse e-mail afin de recevoir votre nouveau mot de passe.','mot de passe, oublié, e-mail, nouveau, regénération','mot-de-passe-oublie'),(7,1,6,'Hai dimenticato la password','Inserisci l\'indirizzo e-mail usato per registrarti per poter ottenere una e-mail with con la tua nuova password','dimenticato, password, e-mail, nuovo, reset','password-recupero'),(7,1,7,'Olvidaste tu contraseña','Ingrese su dirección de correo electrónico para recibir su nueva contraseña.','contraseña, has olvidado, e-mail, nuevo, regeneración','contrasena-olvidado'),(7,1,8,'Olvidaste tu contraseña','Ingrese su dirección de correo electrónico para recibir su nueva contraseña.','contraseña, has olvidado, e-mail, nuevo, regeneración','contrasena-olvidado'),(8,1,1,'Prices drop','Our special products','special, prices drop','prices-drop'),(8,1,2,'Promoção','Nossos produtos em especiais','special, prices drop','prices-drop'),(8,1,3,'Angebote','Unsere Sonderangebote','besonders, Angebote','angebote'),(8,1,4,'Promociones','Nuestros productos promocionales','promoción, reducción','promocion'),(8,1,5,'Promotions','Nos produits en promotion','promotion, réduction','promotions'),(8,1,6,'Riduzioni prezzi','I nostri prodotti speciali','speciali, riduzione prezzi','riduzione-prezzi'),(8,1,7,'Promociones','Nuestros productos promocionales','promoción, reducción','promocion'),(8,1,8,'Promociones','Nuestros productos promocionales','promoción, reducción','promocion'),(9,1,1,'Sitemap','Lost ? Find what your are looking for','sitemap','sitemap'),(9,1,2,'Sitemap','Lost ? Find what your are looking for','sitemap','sitemap'),(9,1,3,'Sitemap','Verloren? Finden Sie, was Sie suchen','sitemap','sitemap'),(9,1,4,'Mapa del sitio','¿Perdido? Encuentra lo que buscas','plan, sitio','mapa-del-sitio'),(9,1,5,'Plan du site','Perdu ? Trouvez ce que vous cherchez','plan, site','plan-du-site'),(9,1,6,'Mappa del sito','Ti sei perso? Trova quello che stai cercando','sitemap','sitemap'),(9,1,7,'Mapa del sitio','¿Perdido? Encuentra lo que buscas','plan, sitio','mapa-del-sitio'),(9,1,8,'Mapa del sitio','¿Perdido? Encuentra lo que buscas','plan, sitio','mapa-del-sitio'),(10,1,1,'Suppliers','Suppliers list','supplier','supplier'),(10,1,2,'Fornecedores','Lista de Fornecedores','supplier','supplier'),(10,1,3,'Zulieferer','Zuliefererliste','Zulieferer','zulieferer'),(10,1,4,'Proveedores','Lista de Proveedores','proveedores','proveedores'),(10,1,5,'Fournisseurs','Liste de nos fournisseurs','fournisseurs','fournisseurs'),(10,1,6,'Fornitori','Elenco fornitori','fornitori','fornitore'),(10,1,7,'Proveedores','Lista de Proveedores','proveedores','proveedores'),(10,1,8,'Proveedores','Lista de Proveedores','proveedores','proveedores'),(11,1,1,'Address','','','address'),(11,1,2,'Endereço','','','address'),(11,1,3,'Adresse','','','adresse'),(11,1,4,'Dirección','','','direccion'),(11,1,5,'Adresse','','','adresse'),(11,1,6,'Indirizzo','','','indirizzo'),(11,1,7,'Dirección','','','direccion'),(11,1,8,'Dirección','','','direccion'),(12,1,1,'Addresses','','','addresses'),(12,1,2,'Endereços','','','addresses'),(12,1,3,'Adressen','','','adressen'),(12,1,4,'Direcciones','','','direcciones'),(12,1,5,'Adresses','','','adresses'),(12,1,6,'Indirizzi','','','indirizzi'),(12,1,7,'Direcciones','','','direcciones'),(12,1,8,'Direcciones','','','direcciones'),(13,1,1,'Authentication','','','authentication'),(13,1,2,'Autentificação','','','authentication'),(13,1,3,'Authentifizierung','','','authentifizierung'),(13,1,4,'Autenticación','','','autenticacion'),(13,1,5,'Authentification','','','authentification'),(13,1,6,'Autenticazione','','','autenticazione'),(13,1,7,'Autenticación','','','autenticacion'),(13,1,8,'Autenticación','','','autenticacion'),(14,1,1,'Cart','','','cart'),(14,1,2,'Carrinho de compra','','','cart'),(14,1,3,'Warenkorb','','','warenkorb'),(14,1,4,'Carro de la compra','','','carro-de-la-compra'),(14,1,5,'Panier','','','panier'),(14,1,6,'Carrello','','','carrello'),(14,1,7,'Carro de la compra','','','carro-de-la-compra'),(14,1,8,'Carro de la compra','','','carro-de-la-compra'),(15,1,1,'Discount','','','discount'),(15,1,2,'Descontos','','','discount'),(15,1,3,'Discount','','','discount'),(15,1,4,'Descuento','','','descuento'),(15,1,5,'Bons de réduction','','','bons-de-reduction'),(15,1,6,'Sconto','','','sconto'),(15,1,7,'Descuento','','','descuento'),(15,1,8,'Descuento','','','descuento'),(16,1,1,'Order history','','','order-history'),(16,1,2,'Histórico de Pedidos','','','order-history'),(16,1,3,'Bestellungsverlauf','','','bestellungsverlauf'),(16,1,4,'Historial de pedidos','','','historial-de-pedidos'),(16,1,5,'Historique des commandes','','','historique-des-commandes'),(16,1,6,'Storico ordine','','','storico-ordine'),(16,1,7,'Historial de pedidos','','','historial-de-pedidos'),(16,1,8,'Historial de pedidos','','','historial-de-pedidos'),(17,1,1,'Identity','','','identity'),(17,1,2,'Identidade','','','identity'),(17,1,3,'Kennung','','','kennung'),(17,1,4,'Identidad','','','identidad'),(17,1,5,'Identité','','','identite'),(17,1,6,'Identità','','','identita'),(17,1,7,'Identidad','','','identidad'),(17,1,8,'Identidad','','','identidad'),(18,1,1,'My account','','','my-account'),(18,1,2,'Minha conta','','','my-account'),(18,1,3,'Mein Konto','','','mein-Konto'),(18,1,4,'Mi Cuenta','','','mi-cuenta'),(18,1,5,'Mon compte','','','mon-compte'),(18,1,6,'Il mio account','','','il-mio-account'),(18,1,7,'Mi Cuenta','','','mi-cuenta'),(18,1,8,'Mi Cuenta','','','mi-cuenta'),(19,1,1,'Order follow','','','order-follow'),(19,1,2,'Acompanhar Pedido','','','order-follow'),(19,1,3,'Bestellungsverfolgung','','','bestellungsverfolgung'),(19,1,4,'Devolución de productos','','','devolucion-de-productos'),(19,1,5,'Détails de la commande','','','details-de-la-commande'),(19,1,6,'Seguito ordine','','','seguito-ordine'),(19,1,7,'Devolución de productos','','','devolucion-de-productos'),(19,1,8,'Devolución de productos','','','devolucion-de-productos'),(20,1,1,'Order slip','','','order-slip'),(20,1,2,'Order slip','','','order-slip'),(20,1,3,'Bestellschein','','','bestellschein'),(20,1,4,'Vales','','','vales'),(20,1,5,'Avoirs','','','avoirs'),(20,1,6,'Nota di ordine','','','nota-di-ordine'),(20,1,7,'Vales','','','vales'),(20,1,8,'Vales','','','vales'),(21,1,1,'Order','','','order'),(21,1,2,'Pedido','','','order'),(21,1,3,'Bestellung','','','bestellung'),(21,1,4,'Carrito','','','carrito'),(21,1,5,'Commande','','','commande'),(21,1,6,'Ordine','','','ordine'),(21,1,7,'Carrito','','','carrito'),(21,1,8,'Carrito','','','carrito'),(22,1,1,'Search','','','search'),(22,1,2,'Pesquisa','','','search'),(22,1,3,'Suche','','','suche'),(22,1,4,'Buscar','','','buscar'),(22,1,5,'Recherche','','','recherche'),(22,1,6,'Cerca','','','cerca'),(22,1,7,'Buscar','','','buscar'),(22,1,8,'Buscar','','','buscar'),(23,1,1,'Stores','','','stores'),(23,1,2,'Lojas','','','stores'),(23,1,3,'Shops','','','shops'),(23,1,4,'Tiendas','','','tiendas'),(23,1,5,'Magasins','','','magasins'),(23,1,6,'Negozi','','','negozi'),(23,1,7,'Tiendas','','','tiendas'),(23,1,8,'Tiendas','','','tiendas'),(24,1,1,'Order','','','quick-order'),(24,1,2,'Pedido','','','quick-order'),(24,1,3,'Bestellung','','','schnell-bestellung'),(24,1,4,'Carrito','','','pedido-rapido'),(24,1,5,'Commande','','','commande-rapide'),(24,1,6,'Ordine','','','ordine-veloce'),(24,1,7,'Carrito','','','pedido-rapido'),(24,1,8,'Carrito','','','pedido-rapido'),(25,1,1,'Guest tracking','','','guest-tracking'),(25,1,2,'Acompanhar comprador sem cadastro','','','guest-tracking'),(25,1,3,'Auftragsverfolgung Gast','','','auftragsverfolgung-gast'),(25,1,4,'Estado del pedido','','','estado-pedido'),(25,1,5,'Suivi de commande invité','','','suivi-commande-invite'),(25,1,6,'Ospite di monitoraggio','','','ospite-monitoraggio'),(25,1,7,'Estado del pedido','','','estado-pedido'),(25,1,8,'Estado del pedido','','','estado-pedido');
/*!40000 ALTER TABLE `ps_2meta_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2module`
--

DROP TABLE IF EXISTS `ps_2module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2module` (
  `id_module` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `version` varchar(8) NOT NULL,
  PRIMARY KEY (`id_module`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2module`
--

LOCK TABLES `ps_2module` WRITE;
/*!40000 ALTER TABLE `ps_2module` DISABLE KEYS */;
INSERT INTO `ps_2module` VALUES (1,'bankwire',1,'0.5'),(2,'blockadvertising',1,'0.5'),(3,'blockbestsellers',1,'1.1'),(4,'blockcart',1,'1.2'),(5,'blockcategories',1,'2.0'),(6,'blockcms',1,'1.1.1'),(7,'blockcontact',1,'1.0'),(8,'blockcontactinfos',1,'1.0'),(9,'blockcurrencies',1,'0.1'),(10,'blockcustomerprivacy',1,'1.0'),(11,'blocklanguages',1,'1.1'),(12,'blockmanufacturer',1,'1'),(13,'blockmyaccount',1,'1.2'),(14,'blockmyaccountfooter',1,'1.2'),(15,'blocknewproducts',1,'0.9'),(16,'blocknewsletter',1,'1.4'),(17,'blockpaymentlogo',1,'0.2'),(18,'blockpermanentlinks',1,'0.1'),(19,'blockreinsurance',1,'2.0'),(20,'blocksearch',1,'1.2'),(21,'blocksharefb',1,'1.0'),(22,'blocksocial',1,'1.0'),(23,'blockspecials',1,'0.8'),(24,'blockstore',1,'1'),(25,'blocksupplier',1,'1'),(26,'blocktags',1,'1.1'),(27,'blocktopmenu',1,'1.5'),(28,'blockuserinfo',1,'0.1'),(29,'blockviewed',1,'0.9'),(30,'cheque',1,'2.3'),(31,'favoriteproducts',1,'1'),(32,'feeder',1,'0.3'),(33,'graphartichow',1,'1'),(34,'graphgooglechart',1,'1'),(35,'graphvisifire',1,'1'),(36,'graphxmlswfcharts',1,'1'),(37,'gridhtml',1,'1'),(38,'gsitemap',1,'1.9'),(39,'homefeatured',1,'0.9'),(40,'homeslider',1,'1.2.1'),(41,'pagesnotfound',1,'1'),(42,'sekeywords',1,'1'),(43,'statsbestcategories',1,'1'),(44,'statsbestcustomers',1,'1'),(45,'statsbestproducts',1,'1'),(46,'statsbestsuppliers',1,'1'),(47,'statsbestvouchers',1,'1'),(48,'statscarrier',1,'1'),(49,'statscatalog',1,'1'),(50,'statscheckup',1,'1'),(51,'statsdata',1,'1'),(52,'statsequipment',1,'1'),(53,'statsforecast',1,'1'),(54,'statslive',1,'1'),(55,'statsnewsletter',1,'1'),(56,'statsorigin',1,'1'),(57,'statspersonalinfos',1,'1'),(58,'statsproduct',1,'1'),(59,'statsregistrations',1,'1'),(60,'statssales',1,'1'),(61,'statssearch',1,'1'),(62,'statsstock',1,'1'),(63,'statsvisits',1,'1');
/*!40000 ALTER TABLE `ps_2module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2module_access`
--

DROP TABLE IF EXISTS `ps_2module_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2module_access` (
  `id_profile` int(10) unsigned NOT NULL,
  `id_module` int(10) unsigned NOT NULL,
  `view` tinyint(1) NOT NULL,
  `configure` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_profile`,`id_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2module_access`
--

LOCK TABLES `ps_2module_access` WRITE;
/*!40000 ALTER TABLE `ps_2module_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2module_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2module_country`
--

DROP TABLE IF EXISTS `ps_2module_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2module_country` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_country` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2module_country`
--

LOCK TABLES `ps_2module_country` WRITE;
/*!40000 ALTER TABLE `ps_2module_country` DISABLE KEYS */;
INSERT INTO `ps_2module_country` VALUES (1,1,6),(30,1,6);
/*!40000 ALTER TABLE `ps_2module_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2module_currency`
--

DROP TABLE IF EXISTS `ps_2module_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2module_currency` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_currency` int(11) NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_currency`),
  KEY `id_module` (`id_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2module_currency`
--

LOCK TABLES `ps_2module_currency` WRITE;
/*!40000 ALTER TABLE `ps_2module_currency` DISABLE KEYS */;
INSERT INTO `ps_2module_currency` VALUES (1,1,1),(30,1,1);
/*!40000 ALTER TABLE `ps_2module_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2module_group`
--

DROP TABLE IF EXISTS `ps_2module_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2module_group` (
  `id_module` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_group` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2module_group`
--

LOCK TABLES `ps_2module_group` WRITE;
/*!40000 ALTER TABLE `ps_2module_group` DISABLE KEYS */;
INSERT INTO `ps_2module_group` VALUES (1,1,1),(1,1,2),(1,1,3),(2,1,1),(2,1,2),(2,1,3),(3,1,1),(3,1,2),(3,1,3),(4,1,1),(4,1,2),(4,1,3),(5,1,1),(5,1,2),(5,1,3),(6,1,1),(6,1,2),(6,1,3),(7,1,1),(7,1,2),(7,1,3),(8,1,1),(8,1,2),(8,1,3),(9,1,1),(9,1,2),(9,1,3),(10,1,1),(10,1,2),(10,1,3),(11,1,1),(11,1,2),(11,1,3),(12,1,1),(12,1,2),(12,1,3),(13,1,1),(13,1,2),(13,1,3),(14,1,1),(14,1,2),(14,1,3),(15,1,1),(15,1,2),(15,1,3),(16,1,1),(16,1,2),(16,1,3),(17,1,1),(17,1,2),(17,1,3),(18,1,1),(18,1,2),(18,1,3),(19,1,1),(19,1,2),(19,1,3),(20,1,1),(20,1,2),(20,1,3),(21,1,1),(21,1,2),(21,1,3),(22,1,1),(22,1,2),(22,1,3),(23,1,1),(23,1,2),(23,1,3),(24,1,1),(24,1,2),(24,1,3),(25,1,1),(25,1,2),(25,1,3),(26,1,1),(26,1,2),(26,1,3),(27,1,1),(27,1,2),(27,1,3),(28,1,1),(28,1,2),(28,1,3),(29,1,1),(29,1,2),(29,1,3),(30,1,1),(30,1,2),(30,1,3),(31,1,1),(31,1,2),(31,1,3),(32,1,1),(32,1,2),(32,1,3),(33,1,1),(33,1,2),(33,1,3),(34,1,1),(34,1,2),(34,1,3),(35,1,1),(35,1,2),(35,1,3),(36,1,1),(36,1,2),(36,1,3),(37,1,1),(37,1,2),(37,1,3),(38,1,1),(38,1,2),(38,1,3),(39,1,1),(39,1,2),(39,1,3),(40,1,1),(40,1,2),(40,1,3),(41,1,1),(41,1,2),(41,1,3),(42,1,1),(42,1,2),(42,1,3),(43,1,1),(43,1,2),(43,1,3),(44,1,1),(44,1,2),(44,1,3),(45,1,1),(45,1,2),(45,1,3),(46,1,1),(46,1,2),(46,1,3),(47,1,1),(47,1,2),(47,1,3),(48,1,1),(48,1,2),(48,1,3),(49,1,1),(49,1,2),(49,1,3),(50,1,1),(50,1,2),(50,1,3),(51,1,1),(51,1,2),(51,1,3),(52,1,1),(52,1,2),(52,1,3),(53,1,1),(53,1,2),(53,1,3),(54,1,1),(54,1,2),(54,1,3),(55,1,1),(55,1,2),(55,1,3),(56,1,1),(56,1,2),(56,1,3),(57,1,1),(57,1,2),(57,1,3),(58,1,1),(58,1,2),(58,1,3),(59,1,1),(59,1,2),(59,1,3),(60,1,1),(60,1,2),(60,1,3),(61,1,1),(61,1,2),(61,1,3),(62,1,1),(62,1,2),(62,1,3),(63,1,1),(63,1,2),(63,1,3);
/*!40000 ALTER TABLE `ps_2module_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2module_preference`
--

DROP TABLE IF EXISTS `ps_2module_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2module_preference` (
  `id_module_preference` int(11) NOT NULL AUTO_INCREMENT,
  `id_employee` int(11) NOT NULL,
  `module` varchar(255) NOT NULL,
  `interest` tinyint(1) DEFAULT NULL,
  `favorite` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_module_preference`),
  UNIQUE KEY `employee_module` (`id_employee`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2module_preference`
--

LOCK TABLES `ps_2module_preference` WRITE;
/*!40000 ALTER TABLE `ps_2module_preference` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2module_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2module_shop`
--

DROP TABLE IF EXISTS `ps_2module_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2module_shop` (
  `id_module` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2module_shop`
--

LOCK TABLES `ps_2module_shop` WRITE;
/*!40000 ALTER TABLE `ps_2module_shop` DISABLE KEYS */;
INSERT INTO `ps_2module_shop` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1);
/*!40000 ALTER TABLE `ps_2module_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2newsletter`
--

DROP TABLE IF EXISTS `ps_2newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2newsletter` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `email` varchar(255) NOT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `ip_registration_newsletter` varchar(15) NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2newsletter`
--

LOCK TABLES `ps_2newsletter` WRITE;
/*!40000 ALTER TABLE `ps_2newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2operating_system`
--

DROP TABLE IF EXISTS `ps_2operating_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2operating_system` (
  `id_operating_system` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_operating_system`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2operating_system`
--

LOCK TABLES `ps_2operating_system` WRITE;
/*!40000 ALTER TABLE `ps_2operating_system` DISABLE KEYS */;
INSERT INTO `ps_2operating_system` VALUES (1,'Windows XP'),(2,'Windows Vista'),(3,'Windows 7'),(4,'Windows 8'),(5,'MacOsX'),(6,'Linux'),(7,'Android');
/*!40000 ALTER TABLE `ps_2operating_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2order_carrier`
--

DROP TABLE IF EXISTS `ps_2order_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2order_carrier` (
  `id_order_carrier` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` int(11) unsigned NOT NULL,
  `id_carrier` int(11) unsigned NOT NULL,
  `id_order_invoice` int(11) unsigned DEFAULT NULL,
  `weight` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_excl` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_incl` decimal(20,6) DEFAULT NULL,
  `tracking_number` varchar(64) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_carrier`),
  KEY `id_order` (`id_order`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_order_invoice` (`id_order_invoice`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2order_carrier`
--

LOCK TABLES `ps_2order_carrier` WRITE;
/*!40000 ALTER TABLE `ps_2order_carrier` DISABLE KEYS */;
INSERT INTO `ps_2order_carrier` VALUES (1,1,4,0,0.000000,0.000000,0.000000,'','2013-03-06 18:24:01');
/*!40000 ALTER TABLE `ps_2order_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2order_cart_rule`
--

DROP TABLE IF EXISTS `ps_2order_cart_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2order_cart_rule` (
  `id_order_cart_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `id_cart_rule` int(10) unsigned NOT NULL,
  `id_order_invoice` int(10) unsigned DEFAULT '0',
  `name` varchar(254) NOT NULL,
  `value` decimal(17,2) NOT NULL DEFAULT '0.00',
  `value_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id_order_cart_rule`),
  KEY `id_order` (`id_order`),
  KEY `id_cart_rule` (`id_cart_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2order_cart_rule`
--

LOCK TABLES `ps_2order_cart_rule` WRITE;
/*!40000 ALTER TABLE `ps_2order_cart_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2order_cart_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2order_detail`
--

DROP TABLE IF EXISTS `ps_2order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2order_detail` (
  `id_order_detail` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(10) unsigned NOT NULL,
  `id_order_invoice` int(11) DEFAULT NULL,
  `id_warehouse` int(10) unsigned DEFAULT '0',
  `id_shop` int(11) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `product_attribute_id` int(10) unsigned DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_in_stock` int(10) NOT NULL DEFAULT '0',
  `product_quantity_refunded` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_return` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity_reinjected` int(10) unsigned NOT NULL DEFAULT '0',
  `product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `group_reduction` decimal(10,2) NOT NULL DEFAULT '0.00',
  `product_quantity_discount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `product_ean13` varchar(13) DEFAULT NULL,
  `product_upc` varchar(12) DEFAULT NULL,
  `product_reference` varchar(32) DEFAULT NULL,
  `product_supplier_reference` varchar(32) DEFAULT NULL,
  `product_weight` decimal(20,6) NOT NULL,
  `tax_computation_method` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tax_name` varchar(16) NOT NULL,
  `tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `ecotax` decimal(21,6) NOT NULL DEFAULT '0.000000',
  `ecotax_tax_rate` decimal(5,3) NOT NULL DEFAULT '0.000',
  `discount_quantity_applied` tinyint(1) NOT NULL DEFAULT '0',
  `download_hash` varchar(255) DEFAULT NULL,
  `download_nb` int(10) unsigned DEFAULT '0',
  `download_deadline` datetime DEFAULT NULL,
  `total_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `purchase_supplier_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `original_product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`id_order_detail`),
  KEY `order_detail_order` (`id_order`),
  KEY `product_id` (`product_id`),
  KEY `product_attribute_id` (`product_attribute_id`),
  KEY `id_order_id_order_detail` (`id_order`,`id_order_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2order_detail`
--

LOCK TABLES `ps_2order_detail` WRITE;
/*!40000 ALTER TABLE `ps_2order_detail` DISABLE KEYS */;
INSERT INTO `ps_2order_detail` VALUES (1,1,0,0,1,4,16,'camiseta Real madrid - color : rojo, talla : s',1,1,0,0,0,40.000000,0.00,0.000000,0.000000,0.000000,0.00,48.380000,'','','','',0.000000,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',47.200000,40.000000,47.200000,40.000000,0.000000,0.000000,40.000000,40.000000);
/*!40000 ALTER TABLE `ps_2order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2order_detail_tax`
--

DROP TABLE IF EXISTS `ps_2order_detail_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2order_detail_tax` (
  `id_order_detail` int(11) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `unit_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_amount` decimal(16,6) NOT NULL DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2order_detail_tax`
--

LOCK TABLES `ps_2order_detail_tax` WRITE;
/*!40000 ALTER TABLE `ps_2order_detail_tax` DISABLE KEYS */;
INSERT INTO `ps_2order_detail_tax` VALUES (1,1,7.200000,7.200000);
/*!40000 ALTER TABLE `ps_2order_detail_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2order_history`
--

DROP TABLE IF EXISTS `ps_2order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2order_history` (
  `id_order_history` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_employee` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `id_order_state` int(10) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_history`),
  KEY `order_history_order` (`id_order`),
  KEY `id_employee` (`id_employee`),
  KEY `id_order_state` (`id_order_state`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2order_history`
--

LOCK TABLES `ps_2order_history` WRITE;
/*!40000 ALTER TABLE `ps_2order_history` DISABLE KEYS */;
INSERT INTO `ps_2order_history` VALUES (1,0,1,1,'2013-03-06 18:24:02');
/*!40000 ALTER TABLE `ps_2order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2order_invoice`
--

DROP TABLE IF EXISTS `ps_2order_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2order_invoice` (
  `id_order_invoice` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `delivery_number` int(11) NOT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `total_discount_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_discount_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products_wt` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `shipping_tax_computation_method` int(10) unsigned NOT NULL,
  `total_wrapping_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_wrapping_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `note` text,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_invoice`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2order_invoice`
--

LOCK TABLES `ps_2order_invoice` WRITE;
/*!40000 ALTER TABLE `ps_2order_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2order_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2order_invoice_payment`
--

DROP TABLE IF EXISTS `ps_2order_invoice_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2order_invoice_payment` (
  `id_order_invoice` int(11) unsigned NOT NULL,
  `id_order_payment` int(11) unsigned NOT NULL,
  `id_order` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_order_invoice`,`id_order_payment`),
  KEY `order_payment` (`id_order_payment`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2order_invoice_payment`
--

LOCK TABLES `ps_2order_invoice_payment` WRITE;
/*!40000 ALTER TABLE `ps_2order_invoice_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2order_invoice_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2order_invoice_tax`
--

DROP TABLE IF EXISTS `ps_2order_invoice_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2order_invoice_tax` (
  `id_order_invoice` int(11) NOT NULL,
  `type` varchar(15) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `amount` decimal(10,6) NOT NULL DEFAULT '0.000000'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2order_invoice_tax`
--

LOCK TABLES `ps_2order_invoice_tax` WRITE;
/*!40000 ALTER TABLE `ps_2order_invoice_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2order_invoice_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2order_message`
--

DROP TABLE IF EXISTS `ps_2order_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2order_message` (
  `id_order_message` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2order_message`
--

LOCK TABLES `ps_2order_message` WRITE;
/*!40000 ALTER TABLE `ps_2order_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2order_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2order_message_lang`
--

DROP TABLE IF EXISTS `ps_2order_message_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2order_message_lang` (
  `id_order_message` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id_order_message`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2order_message_lang`
--

LOCK TABLES `ps_2order_message_lang` WRITE;
/*!40000 ALTER TABLE `ps_2order_message_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2order_message_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2order_payment`
--

DROP TABLE IF EXISTS `ps_2order_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2order_payment` (
  `id_order_payment` int(11) NOT NULL AUTO_INCREMENT,
  `order_reference` varchar(9) DEFAULT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `transaction_id` varchar(254) DEFAULT NULL,
  `card_number` varchar(254) DEFAULT NULL,
  `card_brand` varchar(254) DEFAULT NULL,
  `card_expiration` char(7) DEFAULT NULL,
  `card_holder` varchar(254) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_payment`),
  KEY `order_reference` (`order_reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2order_payment`
--

LOCK TABLES `ps_2order_payment` WRITE;
/*!40000 ALTER TABLE `ps_2order_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2order_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2order_return`
--

DROP TABLE IF EXISTS `ps_2order_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2order_return` (
  `id_order_return` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `question` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_return`),
  KEY `order_return_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2order_return`
--

LOCK TABLES `ps_2order_return` WRITE;
/*!40000 ALTER TABLE `ps_2order_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2order_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2order_return_detail`
--

DROP TABLE IF EXISTS `ps_2order_return_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2order_return_detail` (
  `id_order_return` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `id_customization` int(10) unsigned NOT NULL DEFAULT '0',
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_return`,`id_order_detail`,`id_customization`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2order_return_detail`
--

LOCK TABLES `ps_2order_return_detail` WRITE;
/*!40000 ALTER TABLE `ps_2order_return_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2order_return_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2order_return_state`
--

DROP TABLE IF EXISTS `ps_2order_return_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2order_return_state` (
  `id_order_return_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_order_return_state`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2order_return_state`
--

LOCK TABLES `ps_2order_return_state` WRITE;
/*!40000 ALTER TABLE `ps_2order_return_state` DISABLE KEYS */;
INSERT INTO `ps_2order_return_state` VALUES (1,'RoyalBlue'),(2,'BlueViolet'),(3,'LimeGreen'),(4,'Crimson'),(5,'#108510');
/*!40000 ALTER TABLE `ps_2order_return_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2order_return_state_lang`
--

DROP TABLE IF EXISTS `ps_2order_return_state_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2order_return_state_lang` (
  `id_order_return_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_order_return_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2order_return_state_lang`
--

LOCK TABLES `ps_2order_return_state_lang` WRITE;
/*!40000 ALTER TABLE `ps_2order_return_state_lang` DISABLE KEYS */;
INSERT INTO `ps_2order_return_state_lang` VALUES (1,1,'Waiting for confirmation'),(1,2,'Waiting for confirmation'),(1,3,'Bestätigung wird erwartet'),(1,4,'Pendiente de confirmación'),(1,5,'En attente de confirmation'),(1,6,'In attesa di conferma'),(1,7,'Pendiente de confirmación'),(1,8,'Pendiente de confirmación'),(2,1,'Waiting for package'),(2,2,'Waiting for package'),(2,3,'Paket wird erwartet'),(2,4,'En espera de paquetes'),(2,5,'En attente du colis'),(2,6,'In attesa del pacco'),(2,7,'En espera de paquetes'),(2,8,'En espera de paquetes'),(3,1,'Package received'),(3,2,'Package received'),(3,3,'Paket erhalten'),(3,4,'Paquetes recibidos'),(3,5,'Colis reçu'),(3,6,'Pacco ricevuto'),(3,7,'Paquetes recibidos'),(3,8,'Paquetes recibidos'),(4,1,'Return denied'),(4,2,'Return denied'),(4,3,'Rücksendung abgelehnt'),(4,4,'Volver negó'),(4,5,'Retour refusé'),(4,6,'Restituzione non accettata'),(4,7,'Volver negó'),(4,8,'Volver negó'),(5,1,'Return completed'),(5,2,'Return completed'),(5,3,'Rücksendung beendet'),(5,4,'Diligenciados'),(5,5,'Retour terminé'),(5,6,'Restituzione terminata'),(5,7,'Diligenciados'),(5,8,'Diligenciados');
/*!40000 ALTER TABLE `ps_2order_return_state_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2order_slip`
--

DROP TABLE IF EXISTS `ps_2order_slip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2order_slip` (
  `id_order_slip` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `id_customer` int(10) unsigned NOT NULL,
  `id_order` int(10) unsigned NOT NULL,
  `shipping_cost` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL,
  `shipping_cost_amount` decimal(10,2) NOT NULL,
  `partial` tinyint(1) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_slip`),
  KEY `order_slip_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2order_slip`
--

LOCK TABLES `ps_2order_slip` WRITE;
/*!40000 ALTER TABLE `ps_2order_slip` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2order_slip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2order_slip_detail`
--

DROP TABLE IF EXISTS `ps_2order_slip_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2order_slip_detail` (
  `id_order_slip` int(10) unsigned NOT NULL,
  `id_order_detail` int(10) unsigned NOT NULL,
  `product_quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `amount_tax_excl` decimal(10,2) DEFAULT NULL,
  `amount_tax_incl` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id_order_slip`,`id_order_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2order_slip_detail`
--

LOCK TABLES `ps_2order_slip_detail` WRITE;
/*!40000 ALTER TABLE `ps_2order_slip_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2order_slip_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2order_state`
--

DROP TABLE IF EXISTS `ps_2order_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2order_state` (
  `id_order_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `invoice` tinyint(1) unsigned DEFAULT '0',
  `send_email` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) DEFAULT NULL,
  `color` varchar(32) DEFAULT NULL,
  `unremovable` tinyint(1) unsigned NOT NULL,
  `hidden` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `logable` tinyint(1) NOT NULL DEFAULT '0',
  `delivery` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `shipped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `paid` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_state`),
  KEY `module_name` (`module_name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2order_state`
--

LOCK TABLES `ps_2order_state` WRITE;
/*!40000 ALTER TABLE `ps_2order_state` DISABLE KEYS */;
INSERT INTO `ps_2order_state` VALUES (1,0,1,'cheque','RoyalBlue',1,0,0,0,0,0,0),(2,1,1,'','LimeGreen',1,0,1,0,0,1,0),(3,1,1,'','DarkOrange',1,0,1,0,0,1,0),(4,1,1,'','BlueViolet',1,0,1,1,1,1,0),(5,1,0,'','#108510',1,0,1,1,1,1,0),(6,0,1,'','Crimson',1,0,0,0,0,0,0),(7,1,1,'','#ec2e15',1,0,0,0,0,0,0),(8,0,1,'','#8f0621',1,0,0,0,0,0,0),(9,1,1,'','HotPink',1,0,0,0,0,1,0),(10,0,1,'bankwire','RoyalBlue',1,0,0,0,0,0,0),(11,0,0,'','RoyalBlue',1,0,0,0,0,0,0),(12,1,1,'','LimeGreen',1,0,1,0,0,1,0);
/*!40000 ALTER TABLE `ps_2order_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2order_state_lang`
--

DROP TABLE IF EXISTS `ps_2order_state_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2order_state_lang` (
  `id_order_state` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `template` varchar(64) NOT NULL,
  PRIMARY KEY (`id_order_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2order_state_lang`
--

LOCK TABLES `ps_2order_state_lang` WRITE;
/*!40000 ALTER TABLE `ps_2order_state_lang` DISABLE KEYS */;
INSERT INTO `ps_2order_state_lang` VALUES (1,1,'Awaiting cheque payment','cheque'),(1,2,'Awaiting cheque payment','cheque'),(1,3,'Scheckzahlung wird erwartet','cheque'),(1,4,'En espera de pago por cheque','cheque'),(1,5,'En attente du paiement par chèque','cheque'),(1,6,'In attesa di pagamento con assegno','cheque'),(1,7,'En espera de pago por cheque','cheque'),(1,8,'En espera de pago por cheque','cheque'),(2,1,'Payment accepted','payment'),(2,2,'Payment accepted','payment'),(2,3,'Zahlung eingegangen','payment'),(2,4,'Pago aceptamos','payment'),(2,5,'Paiement accepté','payment'),(2,6,'Pagamento accettato','payment'),(2,7,'Pago aceptamos','payment'),(2,8,'Pago aceptamos','payment'),(3,1,'Preparation in progress','preparation'),(3,2,'Preparation in progress','preparation'),(3,3,'Bestellung eingegangen','preparation'),(3,4,'Preparación en curso','preparation'),(3,5,'Préparation en cours','preparation'),(3,6,'Preparazione in corso','preparation'),(3,7,'Preparación en curso','preparation'),(3,8,'Preparación en curso','preparation'),(4,1,'Shipped','shipped'),(4,2,'Shipped','shipped'),(4,3,'Versendet','shipped'),(4,4,'Enviado','shipped'),(4,5,'En cours de livraison','shipped'),(4,6,'Consegna in corso','shipped'),(4,7,'Enviado','shipped'),(4,8,'Enviado','shipped'),(5,1,'Delivered',''),(5,2,'Delivered',''),(5,3,'Erfolgreich abgeschlossen',''),(5,4,'Entregado',''),(5,5,'Livré',''),(5,6,'Consegnato',''),(5,7,'Entregado',''),(5,8,'Entregado',''),(6,1,'Canceled','order_canceled'),(6,2,'Canceled','order_canceled'),(6,3,'Storniert','order_canceled'),(6,4,'Cancelada','order_canceled'),(6,5,'Annulé','order_canceled'),(6,6,'Annullato','order_canceled'),(6,7,'Cancelada','order_canceled'),(6,8,'Cancelada','order_canceled'),(7,1,'Refund','refund'),(7,2,'Refund','refund'),(7,3,'Erstattet','refund'),(7,4,'Reembolsado','refund'),(7,5,'Remboursé','refund'),(7,6,'Rimborsato','refund'),(7,7,'Reembolsado','refund'),(7,8,'Reembolsado','refund'),(8,1,'Payment error','payment_error'),(8,2,'Payment error','payment_error'),(8,3,'Fehler bei der Bezahlung','payment_error'),(8,4,'Error de pago','payment_error'),(8,5,'Erreur de paiement','payment_error'),(8,6,'Errore di pagamento','payment_error'),(8,7,'Error de pago','payment_error'),(8,8,'Error de pago','payment_error'),(9,1,'On backorder','outofstock'),(9,2,'On backorder','outofstock'),(9,3,'Artikel erwartet','outofstock'),(9,4,'Productos fuera de línea','outofstock'),(9,5,'En attente de réapprovisionnement','outofstock'),(9,6,'In attesa di rifornimento','outofstock'),(9,7,'Productos fuera de línea','outofstock'),(9,8,'Productos fuera de línea','outofstock'),(10,1,'Awaiting bank wire payment','bankwire'),(10,2,'Awaiting bank wire payment','bankwire'),(10,3,'Warten auf Zahlungseingang','bankwire'),(10,4,'En espera de pago por transferencia bancaria','bankwire'),(10,5,'En attente du paiement par virement bancaire','bankwire'),(10,6,'In attesa di pagamento con bonifico bancario','bankwire'),(10,7,'En espera de pago por transferencia bancaria','bankwire'),(10,8,'En espera de pago por transferencia bancaria','bankwire'),(11,1,'Awaiting PayPal payment',''),(11,2,'Awaiting PayPal payment',''),(11,3,'Warten auf Zahlungseingang von PayPal',''),(11,4,'En espera de pago por PayPal',''),(11,5,'En attente du paiement par PayPal',''),(11,6,'In attesa di pagamento con PayPal',''),(11,7,'En espera de pago por PayPal',''),(11,8,'En espera de pago por PayPal',''),(12,1,'Payment remotely accepted','payment'),(12,2,'Payment remotely accepted','payment'),(12,3,'Payment Anmeldung erfolgreich','payment'),(12,4,'Payment remotely accepted','payment'),(12,5,'Paiement à distance accepté','payment'),(12,6,'Payment remotely accepted','payment'),(12,7,'Payment remotely accepted','payment'),(12,8,'Payment remotely accepted','payment');
/*!40000 ALTER TABLE `ps_2order_state_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2orders`
--

DROP TABLE IF EXISTS `ps_2orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2orders` (
  `id_order` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(9) DEFAULT NULL,
  `id_shop_group` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_carrier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_cart` int(10) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_address_delivery` int(10) unsigned NOT NULL,
  `id_address_invoice` int(10) unsigned NOT NULL,
  `current_state` int(10) unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `payment` varchar(255) NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `module` varchar(255) DEFAULT NULL,
  `recyclable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `shipping_number` varchar(32) DEFAULT NULL,
  `total_discounts` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_discounts_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_discounts_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_paid_real` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_products_wt` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_shipping_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `carrier_tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `total_wrapping` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_wrapping_tax_incl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `total_wrapping_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `invoice_number` int(10) unsigned NOT NULL DEFAULT '0',
  `delivery_number` int(10) unsigned NOT NULL DEFAULT '0',
  `invoice_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `valid` int(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `id_customer` (`id_customer`),
  KEY `id_cart` (`id_cart`),
  KEY `invoice_number` (`invoice_number`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_shop` (`id_shop`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2orders`
--

LOCK TABLES `ps_2orders` WRITE;
/*!40000 ALTER TABLE `ps_2orders` DISABLE KEYS */;
INSERT INTO `ps_2orders` VALUES (1,'OVJEKXTMP',1,1,4,4,2,3,1,6,6,1,'1e20016f56fa3023cb38df82cfb90a3b','Cheque',1.000000,'cheque',0,0,'','',0.00,0.00,0.00,47.20,47.20,40.00,0.00,40.00,47.20,0.00,0.00,0.00,18.000,0.00,0.00,0.00,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'2013-03-06 18:24:01','2013-03-06 18:24:02');
/*!40000 ALTER TABLE `ps_2orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2pack`
--

DROP TABLE IF EXISTS `ps_2pack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2pack` (
  `id_product_pack` int(10) unsigned NOT NULL,
  `id_product_item` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_pack`,`id_product_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2pack`
--

LOCK TABLES `ps_2pack` WRITE;
/*!40000 ALTER TABLE `ps_2pack` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2pack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2page`
--

DROP TABLE IF EXISTS `ps_2page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2page` (
  `id_page` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_page_type` int(10) unsigned NOT NULL,
  `id_object` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_page`),
  KEY `id_page_type` (`id_page_type`),
  KEY `id_object` (`id_object`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2page`
--

LOCK TABLES `ps_2page` WRITE;
/*!40000 ALTER TABLE `ps_2page` DISABLE KEYS */;
INSERT INTO `ps_2page` VALUES (1,1,NULL),(2,2,NULL),(3,3,NULL),(4,4,3),(5,5,3),(6,5,0),(7,4,7),(8,6,NULL),(9,5,4),(10,7,NULL),(11,5,5),(12,8,0),(13,9,NULL),(14,8,1),(15,8,2),(16,8,3),(17,10,NULL),(18,11,NULL);
/*!40000 ALTER TABLE `ps_2page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2page_type`
--

DROP TABLE IF EXISTS `ps_2page_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2page_type` (
  `id_page_type` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_page_type`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2page_type`
--

LOCK TABLES `ps_2page_type` WRITE;
/*!40000 ALTER TABLE `ps_2page_type` DISABLE KEYS */;
INSERT INTO `ps_2page_type` VALUES (9,'address'),(2,'authentication'),(4,'category'),(6,'cms'),(1,'index'),(3,'myaccount'),(8,'order'),(11,'orderconfirmation'),(7,'pagenotfound'),(10,'payment'),(5,'product');
/*!40000 ALTER TABLE `ps_2page_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2page_viewed`
--

DROP TABLE IF EXISTS `ps_2page_viewed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2page_viewed` (
  `id_page` int(10) unsigned NOT NULL,
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_date_range` int(10) unsigned NOT NULL,
  `counter` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_page`,`id_date_range`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2page_viewed`
--

LOCK TABLES `ps_2page_viewed` WRITE;
/*!40000 ALTER TABLE `ps_2page_viewed` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2page_viewed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2pagenotfound`
--

DROP TABLE IF EXISTS `ps_2pagenotfound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2pagenotfound` (
  `id_pagenotfound` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `request_uri` varchar(256) NOT NULL,
  `http_referer` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_pagenotfound`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2pagenotfound`
--

LOCK TABLES `ps_2pagenotfound` WRITE;
/*!40000 ALTER TABLE `ps_2pagenotfound` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2pagenotfound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2product`
--

DROP TABLE IF EXISTS `ps_2product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2product` (
  `id_product` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int(10) unsigned DEFAULT NULL,
  `id_manufacturer` int(10) unsigned DEFAULT NULL,
  `id_category_default` int(10) unsigned DEFAULT NULL,
  `id_shop_default` int(10) unsigned NOT NULL DEFAULT '1',
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `on_sale` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `width` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `height` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `depth` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `out_of_stock` int(10) unsigned NOT NULL DEFAULT '2',
  `quantity_discount` tinyint(1) DEFAULT '0',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301','302') NOT NULL DEFAULT '',
  `id_product_redirected` int(10) unsigned NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date NOT NULL,
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_is_pack` tinyint(1) NOT NULL DEFAULT '0',
  `cache_has_attachments` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `cache_default_attribute` int(10) unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_product`),
  KEY `product_supplier` (`id_supplier`),
  KEY `product_manufacturer` (`id_manufacturer`),
  KEY `id_category_default` (`id_category_default`),
  KEY `indexed` (`indexed`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2product`
--

LOCK TABLES `ps_2product` WRITE;
/*!40000 ALTER TABLE `ps_2product` DISABLE KEYS */;
INSERT INTO `ps_2product` VALUES (4,0,0,2,1,1,0,0,'','',0.000000,0,1,40.000000,40.000000,'',0.000000,0.00,'','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'404',0,1,'0000-00-00','new',1,1,'both',0,0,0,0,'2013-02-26 20:32:13','2013-03-04 22:10:01',0),(5,0,0,2,1,1,0,0,'','',0.000000,0,1,50.000000,50.000000,'',0.000000,0.00,'','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'404',0,1,'0000-00-00','new',1,1,'both',0,0,0,0,'2013-03-04 22:04:00','2013-03-04 22:20:16',0),(6,0,0,2,1,1,0,0,'','',0.000000,0,1,18.000000,20.000000,'',0.000000,0.00,'','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'404',0,1,'0000-00-00','new',1,1,'both',0,0,0,0,'2013-03-04 22:14:44','2013-03-04 22:25:17',0),(7,0,0,2,1,1,0,0,'','',0.000000,0,1,23.000000,25.000000,'',0.000000,0.00,'','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'404',0,1,'0000-00-00','new',1,1,'both',0,0,0,0,'2013-03-04 22:16:49','2013-03-04 22:25:58',0);
/*!40000 ALTER TABLE `ps_2product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2product_attachment`
--

DROP TABLE IF EXISTS `ps_2product_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2product_attachment` (
  `id_product` int(10) unsigned NOT NULL,
  `id_attachment` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2product_attachment`
--

LOCK TABLES `ps_2product_attachment` WRITE;
/*!40000 ALTER TABLE `ps_2product_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2product_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2product_attribute`
--

DROP TABLE IF EXISTS `ps_2product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2product_attribute` (
  `id_product_attribute` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int(10) NOT NULL DEFAULT '0',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(17,2) NOT NULL DEFAULT '0.00',
  `default_on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `available_date` date NOT NULL,
  PRIMARY KEY (`id_product_attribute`),
  KEY `product_attribute_product` (`id_product`),
  KEY `reference` (`reference`),
  KEY `supplier_reference` (`supplier_reference`),
  KEY `product_default` (`id_product`,`default_on`),
  KEY `id_product_id_product_attribute` (`id_product_attribute`,`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2product_attribute`
--

LOCK TABLES `ps_2product_attribute` WRITE;
/*!40000 ALTER TABLE `ps_2product_attribute` DISABLE KEYS */;
INSERT INTO `ps_2product_attribute` VALUES (16,4,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,1,1,'0000-00-00'),(17,4,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(18,4,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(19,4,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(20,4,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(21,4,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(22,4,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(23,4,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(24,4,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(25,4,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(26,4,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(27,4,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(28,4,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(29,4,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(30,4,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(31,5,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,1,1,'0000-00-00'),(32,5,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(33,5,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(34,5,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(35,5,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(36,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,1,1,'0000-00-00'),(37,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(38,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(39,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(40,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(41,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(42,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(43,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(44,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(45,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(46,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(47,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(48,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(49,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(50,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(51,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(52,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(53,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(54,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(55,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(56,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(57,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(58,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(59,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(60,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(61,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(62,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(63,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(64,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(65,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(66,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(67,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(68,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(69,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(70,6,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(71,7,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,1,1,'0000-00-00'),(72,7,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(73,7,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(74,7,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(75,7,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(76,7,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(77,7,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(78,7,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00'),(79,7,'','','','','',0.000000,0.000000,0.000000,0,0.000000,0.00,0,1,'0000-00-00');
/*!40000 ALTER TABLE `ps_2product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2product_attribute_combination`
--

DROP TABLE IF EXISTS `ps_2product_attribute_combination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2product_attribute_combination` (
  `id_attribute` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_product_attribute`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2product_attribute_combination`
--

LOCK TABLES `ps_2product_attribute_combination` WRITE;
/*!40000 ALTER TABLE `ps_2product_attribute_combination` DISABLE KEYS */;
INSERT INTO `ps_2product_attribute_combination` VALUES (1,16),(6,16),(1,17),(7,17),(1,18),(8,18),(2,19),(6,19),(2,20),(7,20),(2,21),(8,21),(3,22),(6,22),(3,23),(7,23),(3,24),(8,24),(4,25),(6,25),(4,26),(7,26),(4,27),(8,27),(5,28),(6,28),(5,29),(7,29),(5,30),(8,30),(1,31),(9,31),(2,32),(9,32),(3,33),(9,33),(4,34),(9,34),(5,35),(9,35),(1,36),(6,36),(1,37),(7,37),(1,38),(8,38),(1,39),(9,39),(1,40),(10,40),(1,41),(11,41),(1,42),(12,42),(2,43),(6,43),(2,44),(7,44),(2,45),(8,45),(2,46),(9,46),(2,47),(10,47),(2,48),(11,48),(2,49),(12,49),(3,50),(6,50),(3,51),(7,51),(3,52),(8,52),(3,53),(9,53),(3,54),(10,54),(3,55),(11,55),(3,56),(12,56),(4,57),(6,57),(4,58),(7,58),(4,59),(8,59),(4,60),(9,60),(4,61),(10,61),(4,62),(11,62),(4,63),(12,63),(5,64),(6,64),(5,65),(7,65),(5,66),(8,66),(5,67),(9,67),(5,68),(10,68),(5,69),(11,69),(5,70),(12,70),(3,71),(6,71),(3,72),(7,72),(3,73),(8,73),(4,74),(6,74),(4,75),(7,75),(4,76),(8,76),(5,77),(6,77),(5,78),(7,78),(5,79),(8,79);
/*!40000 ALTER TABLE `ps_2product_attribute_combination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2product_attribute_image`
--

DROP TABLE IF EXISTS `ps_2product_attribute_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2product_attribute_image` (
  `id_product_attribute` int(10) unsigned NOT NULL,
  `id_image` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product_attribute`,`id_image`),
  KEY `id_image` (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2product_attribute_image`
--

LOCK TABLES `ps_2product_attribute_image` WRITE;
/*!40000 ALTER TABLE `ps_2product_attribute_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2product_attribute_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2product_attribute_shop`
--

DROP TABLE IF EXISTS `ps_2product_attribute_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2product_attribute_shop` (
  `id_product_attribute` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(17,2) NOT NULL DEFAULT '0.00',
  `default_on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `available_date` date NOT NULL,
  PRIMARY KEY (`id_product_attribute`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2product_attribute_shop`
--

LOCK TABLES `ps_2product_attribute_shop` WRITE;
/*!40000 ALTER TABLE `ps_2product_attribute_shop` DISABLE KEYS */;
INSERT INTO `ps_2product_attribute_shop` VALUES (16,1,0.000000,0.000000,0.000000,0.000000,0.00,1,1,'0000-00-00'),(17,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(18,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(19,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(20,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(21,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(22,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(23,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(24,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(25,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(26,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(27,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(28,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(29,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(30,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(31,1,0.000000,0.000000,0.000000,0.000000,0.00,1,1,'0000-00-00'),(32,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(33,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(34,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(35,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(36,1,0.000000,0.000000,0.000000,0.000000,0.00,1,1,'0000-00-00'),(37,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(38,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(39,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(40,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(41,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(42,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(43,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(44,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(45,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(46,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(47,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(48,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(49,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(50,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(51,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(52,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(53,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(54,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(55,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(56,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(57,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(58,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(59,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(60,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(61,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(62,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(63,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(64,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(65,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(66,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(67,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(68,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(69,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(70,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(71,1,0.000000,0.000000,0.000000,0.000000,0.00,1,1,'0000-00-00'),(72,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(73,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(74,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(75,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(76,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(77,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(78,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00'),(79,1,0.000000,0.000000,0.000000,0.000000,0.00,0,1,'0000-00-00');
/*!40000 ALTER TABLE `ps_2product_attribute_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2product_carrier`
--

DROP TABLE IF EXISTS `ps_2product_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2product_carrier` (
  `id_product` int(10) unsigned NOT NULL,
  `id_carrier_reference` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_carrier_reference`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2product_carrier`
--

LOCK TABLES `ps_2product_carrier` WRITE;
/*!40000 ALTER TABLE `ps_2product_carrier` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2product_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2product_country_tax`
--

DROP TABLE IF EXISTS `ps_2product_country_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2product_country_tax` (
  `id_product` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_tax` int(11) NOT NULL,
  PRIMARY KEY (`id_product`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2product_country_tax`
--

LOCK TABLES `ps_2product_country_tax` WRITE;
/*!40000 ALTER TABLE `ps_2product_country_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2product_country_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2product_download`
--

DROP TABLE IF EXISTS `ps_2product_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2product_download` (
  `id_product_download` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(10) unsigned NOT NULL,
  `display_filename` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_expiration` datetime DEFAULT NULL,
  `nb_days_accessible` int(10) unsigned DEFAULT NULL,
  `nb_downloadable` int(10) unsigned DEFAULT '1',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `is_shareable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_product_download`),
  KEY `product_active` (`id_product`,`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2product_download`
--

LOCK TABLES `ps_2product_download` WRITE;
/*!40000 ALTER TABLE `ps_2product_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2product_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2product_group_reduction_cache`
--

DROP TABLE IF EXISTS `ps_2product_group_reduction_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2product_group_reduction_cache` (
  `id_product` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `reduction` decimal(4,3) NOT NULL,
  PRIMARY KEY (`id_product`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2product_group_reduction_cache`
--

LOCK TABLES `ps_2product_group_reduction_cache` WRITE;
/*!40000 ALTER TABLE `ps_2product_group_reduction_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2product_group_reduction_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2product_lang`
--

DROP TABLE IF EXISTS `ps_2product_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2product_lang` (
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `description_short` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `available_now` varchar(255) DEFAULT NULL,
  `available_later` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_product`,`id_shop`,`id_lang`),
  KEY `id_lang` (`id_lang`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2product_lang`
--

LOCK TABLES `ps_2product_lang` WRITE;
/*!40000 ALTER TABLE `ps_2product_lang` DISABLE KEYS */;
INSERT INTO `ps_2product_lang` VALUES (4,1,1,'','','camiseta-ct','','','','Real Madrid Football Shirt','',''),(4,1,2,'','','camiseta-ct','','','','camiseta CT','',''),(4,1,3,'','','camiseta-ct','','','','camiseta CT','',''),(4,1,4,'','','camiseta-ct','','','','camiseta Real madrid','',''),(4,1,5,'','','camiseta-ct','','','','camiseta CT','',''),(4,1,6,'','','camiseta-ct','','','','camiseta CT','',''),(4,1,7,'','','camiseta-ct','','','','camiseta CT','',''),(4,1,8,'','','camiseta-ct','','','','camiseta CT','',''),(5,1,1,'','','camiseta-ny-knicks-de-carmelo-anthony','','','','new york knicks carmelo antony shirt','',''),(5,1,2,'','','camiseta-ny-knicks-de-carmelo-anthony','','','','camiseta NY knicks De Carmelo Anthony','',''),(5,1,3,'','','camiseta-ny-knicks-de-carmelo-anthony','','','','camiseta NY knicks De Carmelo Anthony','',''),(5,1,4,'','','camiseta-ny-knicks-de-carmelo-anthony','','','','camiseta NY knicks De Carmelo Anthony','',''),(5,1,5,'','','camiseta-ny-knicks-de-carmelo-anthony','','','','camiseta NY knicks De Carmelo Anthony','',''),(5,1,6,'','','camiseta-ny-knicks-de-carmelo-anthony','','','','camiseta NY knicks De Carmelo Anthony','',''),(5,1,7,'','','camiseta-ny-knicks-de-carmelo-anthony','','','','camiseta NY knicks De Carmelo Anthony','',''),(5,1,8,'','','camiseta-ny-knicks-de-carmelo-anthony','','','','camiseta NY knicks De Carmelo Anthony','',''),(6,1,1,'','','casco-ciclismo','','','','cyclism helmet','',''),(6,1,2,'','','casco-ciclismo','','','','Casco ciclismo','',''),(6,1,3,'','','casco-ciclismo','','','','Casco ciclismo','',''),(6,1,4,'','','casco-ciclismo','','','','Casco ciclismo','',''),(6,1,5,'','','casco-ciclismo','','','','Casco ciclismo','',''),(6,1,6,'','','casco-ciclismo','','','','Casco ciclismo','',''),(6,1,7,'','','casco-ciclismo','','','','Casco ciclismo','',''),(6,1,8,'','','casco-ciclismo','','','','Casco ciclismo','',''),(7,1,1,'','','raqueta-tenis','','','','Tennis racket','',''),(7,1,2,'','','raqueta-tenis','','','','Raqueta Tenis','',''),(7,1,3,'','','raqueta-tenis','','','','Raqueta Tenis','',''),(7,1,4,'','','raqueta-tenis','','','','Raqueta Tenis','',''),(7,1,5,'','','raqueta-tenis','','','','Raqueta Tenis','',''),(7,1,6,'','','raqueta-tenis','','','','Raqueta Tenis','',''),(7,1,7,'','','raqueta-tenis','','','','Raqueta Tenis','',''),(7,1,8,'','','raqueta-tenis','','','','Raqueta Tenis','','');
/*!40000 ALTER TABLE `ps_2product_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2product_sale`
--

DROP TABLE IF EXISTS `ps_2product_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2product_sale` (
  `id_product` int(10) unsigned NOT NULL,
  `quantity` int(10) unsigned NOT NULL DEFAULT '0',
  `sale_nbr` int(10) unsigned NOT NULL DEFAULT '0',
  `date_upd` date NOT NULL,
  PRIMARY KEY (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2product_sale`
--

LOCK TABLES `ps_2product_sale` WRITE;
/*!40000 ALTER TABLE `ps_2product_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2product_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2product_shop`
--

DROP TABLE IF EXISTS `ps_2product_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2product_shop` (
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(10) unsigned NOT NULL,
  `id_category_default` int(10) unsigned DEFAULT NULL,
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `on_sale` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `online_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `minimal_quantity` int(10) unsigned NOT NULL DEFAULT '1',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `customizable` tinyint(2) NOT NULL DEFAULT '0',
  `uploadable_files` tinyint(4) NOT NULL DEFAULT '0',
  `text_fields` tinyint(4) NOT NULL DEFAULT '0',
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301','302') NOT NULL DEFAULT '',
  `id_product_redirected` int(10) unsigned NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date NOT NULL,
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_default_attribute` int(10) unsigned DEFAULT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_product`,`id_shop`),
  KEY `id_category_default` (`id_category_default`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2product_shop`
--

LOCK TABLES `ps_2product_shop` WRITE;
/*!40000 ALTER TABLE `ps_2product_shop` DISABLE KEYS */;
INSERT INTO `ps_2product_shop` VALUES (4,1,2,1,0,0,0.000000,1,40.000000,40.000000,'',0.000000,0.00,0,0,0,1,'404',0,1,'0000-00-00','new',1,1,'both',16,0,'2013-02-26 20:32:13','2013-03-04 22:10:01'),(5,1,2,1,0,0,0.000000,1,50.000000,50.000000,'',0.000000,0.00,0,0,0,1,'404',0,1,'0000-00-00','new',1,1,'both',0,0,'2013-03-04 22:04:00','2013-03-04 22:20:16'),(6,1,2,1,0,0,0.000000,1,18.000000,20.000000,'',0.000000,0.00,0,0,0,1,'404',0,1,'0000-00-00','new',1,1,'both',0,0,'2013-03-04 22:14:44','2013-03-04 22:25:17'),(7,1,2,1,0,0,0.000000,1,23.000000,25.000000,'',0.000000,0.00,0,0,0,1,'404',0,1,'0000-00-00','new',1,1,'both',0,0,'2013-03-04 22:16:49','2013-03-04 22:25:58');
/*!40000 ALTER TABLE `ps_2product_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2product_supplier`
--

DROP TABLE IF EXISTS `ps_2product_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2product_supplier` (
  `id_product_supplier` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL DEFAULT '0',
  `id_supplier` int(11) unsigned NOT NULL,
  `product_supplier_reference` varchar(32) DEFAULT NULL,
  `product_supplier_price_te` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `id_currency` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_product_supplier`),
  UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2product_supplier`
--

LOCK TABLES `ps_2product_supplier` WRITE;
/*!40000 ALTER TABLE `ps_2product_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2product_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2product_tag`
--

DROP TABLE IF EXISTS `ps_2product_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2product_tag` (
  `id_product` int(10) unsigned NOT NULL,
  `id_tag` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_tag`),
  KEY `id_tag` (`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2product_tag`
--

LOCK TABLES `ps_2product_tag` WRITE;
/*!40000 ALTER TABLE `ps_2product_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2product_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2profile`
--

DROP TABLE IF EXISTS `ps_2profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2profile` (
  `id_profile` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_profile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2profile`
--

LOCK TABLES `ps_2profile` WRITE;
/*!40000 ALTER TABLE `ps_2profile` DISABLE KEYS */;
INSERT INTO `ps_2profile` VALUES (1);
/*!40000 ALTER TABLE `ps_2profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2profile_lang`
--

DROP TABLE IF EXISTS `ps_2profile_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2profile_lang` (
  `id_lang` int(10) unsigned NOT NULL,
  `id_profile` int(10) unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id_profile`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2profile_lang`
--

LOCK TABLES `ps_2profile_lang` WRITE;
/*!40000 ALTER TABLE `ps_2profile_lang` DISABLE KEYS */;
INSERT INTO `ps_2profile_lang` VALUES (1,1,'SuperAdmin'),(2,1,'SuperAdmin'),(3,1,'SuperAdmin'),(4,1,'SuperAdmin'),(5,1,'SuperAdmin'),(6,1,'SuperAdmin'),(7,1,'SuperAdmin'),(8,1,'SuperAdmin');
/*!40000 ALTER TABLE `ps_2profile_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2quick_access`
--

DROP TABLE IF EXISTS `ps_2quick_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2quick_access` (
  `id_quick_access` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `new_window` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(128) NOT NULL,
  PRIMARY KEY (`id_quick_access`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2quick_access`
--

LOCK TABLES `ps_2quick_access` WRITE;
/*!40000 ALTER TABLE `ps_2quick_access` DISABLE KEYS */;
INSERT INTO `ps_2quick_access` VALUES (1,0,'index.php'),(2,1,'../'),(3,0,'index.php?controller=AdminCategories&addcategory'),(4,0,'index.php?controller=AdminProducts&addproduct'),(5,0,'index.php?controller=AdminCartRules&addcart_rule');
/*!40000 ALTER TABLE `ps_2quick_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2quick_access_lang`
--

DROP TABLE IF EXISTS `ps_2quick_access_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2quick_access_lang` (
  `id_quick_access` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_quick_access`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2quick_access_lang`
--

LOCK TABLES `ps_2quick_access_lang` WRITE;
/*!40000 ALTER TABLE `ps_2quick_access_lang` DISABLE KEYS */;
INSERT INTO `ps_2quick_access_lang` VALUES (1,1,'Home'),(1,2,'Home'),(1,3,'Start'),(1,4,'Inicio'),(1,5,'Accueil'),(1,6,'Home page'),(1,7,'Inicio'),(1,8,'Inicio'),(2,1,'My Shop'),(2,2,'My Shop'),(2,3,'Mein Shop'),(2,4,'Mi tienda'),(2,5,'Ma boutique'),(2,6,'Il mio negozio'),(2,7,'Mi tienda'),(2,8,'Mi tienda'),(3,1,'New category'),(3,2,'New category'),(3,3,'Neue Kategorie'),(3,4,'Nueva categoría'),(3,5,'Nouvelle catégorie'),(3,6,'Nuova categoria'),(3,7,'Nueva categoría'),(3,8,'Nueva categoría'),(4,1,'New product'),(4,2,'New product'),(4,3,'Neues Produkt'),(4,4,'Nuevo producto'),(4,5,'Nouveau produit'),(4,6,'Nuovo prodotto'),(4,7,'Nuevo producto'),(4,8,'Nuevo producto'),(5,1,'New voucher'),(5,2,'New voucher'),(5,3,'Neuer Ermäßigungsgutschein'),(5,4,'Nuevo cupón'),(5,5,'Nouveau bon de réduction'),(5,6,'Nuovo buono sconto'),(5,7,'Nuevo cupón'),(5,8,'Nuevo cupón');
/*!40000 ALTER TABLE `ps_2quick_access_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2range_price`
--

DROP TABLE IF EXISTS `ps_2range_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2range_price` (
  `id_range_price` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_price`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2range_price`
--

LOCK TABLES `ps_2range_price` WRITE;
/*!40000 ALTER TABLE `ps_2range_price` DISABLE KEYS */;
INSERT INTO `ps_2range_price` VALUES (1,4,5.000000,10.000000);
/*!40000 ALTER TABLE `ps_2range_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2range_weight`
--

DROP TABLE IF EXISTS `ps_2range_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2range_weight` (
  `id_range_weight` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int(10) unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_weight`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2range_weight`
--

LOCK TABLES `ps_2range_weight` WRITE;
/*!40000 ALTER TABLE `ps_2range_weight` DISABLE KEYS */;
INSERT INTO `ps_2range_weight` VALUES (1,4,2.000000,10.000000);
/*!40000 ALTER TABLE `ps_2range_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2referrer`
--

DROP TABLE IF EXISTS `ps_2referrer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2referrer` (
  `id_referrer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `passwd` varchar(32) DEFAULT NULL,
  `http_referer_regexp` varchar(64) DEFAULT NULL,
  `http_referer_like` varchar(64) DEFAULT NULL,
  `request_uri_regexp` varchar(64) DEFAULT NULL,
  `request_uri_like` varchar(64) DEFAULT NULL,
  `http_referer_regexp_not` varchar(64) DEFAULT NULL,
  `http_referer_like_not` varchar(64) DEFAULT NULL,
  `request_uri_regexp_not` varchar(64) DEFAULT NULL,
  `request_uri_like_not` varchar(64) DEFAULT NULL,
  `base_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `percent_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `click_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_referrer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2referrer`
--

LOCK TABLES `ps_2referrer` WRITE;
/*!40000 ALTER TABLE `ps_2referrer` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2referrer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2referrer_cache`
--

DROP TABLE IF EXISTS `ps_2referrer_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2referrer_cache` (
  `id_connections_source` int(11) unsigned NOT NULL,
  `id_referrer` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_connections_source`,`id_referrer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2referrer_cache`
--

LOCK TABLES `ps_2referrer_cache` WRITE;
/*!40000 ALTER TABLE `ps_2referrer_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2referrer_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2referrer_shop`
--

DROP TABLE IF EXISTS `ps_2referrer_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2referrer_shop` (
  `id_referrer` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_visitors` int(11) DEFAULT NULL,
  `cache_visits` int(11) DEFAULT NULL,
  `cache_pages` int(11) DEFAULT NULL,
  `cache_registrations` int(11) DEFAULT NULL,
  `cache_orders` int(11) DEFAULT NULL,
  `cache_sales` decimal(17,2) DEFAULT NULL,
  `cache_reg_rate` decimal(5,4) DEFAULT NULL,
  `cache_order_rate` decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (`id_referrer`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2referrer_shop`
--

LOCK TABLES `ps_2referrer_shop` WRITE;
/*!40000 ALTER TABLE `ps_2referrer_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2referrer_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2reinsurance`
--

DROP TABLE IF EXISTS `ps_2reinsurance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2reinsurance` (
  `id_reinsurance` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL,
  `file_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_reinsurance`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2reinsurance`
--

LOCK TABLES `ps_2reinsurance` WRITE;
/*!40000 ALTER TABLE `ps_2reinsurance` DISABLE KEYS */;
INSERT INTO `ps_2reinsurance` VALUES (1,1,'reinsurance-1-1.jpg'),(2,1,'reinsurance-2-1.jpg'),(3,1,'reinsurance-3-1.jpg'),(4,1,'reinsurance-4-1.jpg'),(5,1,'reinsurance-5-1.jpg');
/*!40000 ALTER TABLE `ps_2reinsurance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2reinsurance_lang`
--

DROP TABLE IF EXISTS `ps_2reinsurance_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2reinsurance_lang` (
  `id_reinsurance` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `text` varchar(300) NOT NULL,
  PRIMARY KEY (`id_reinsurance`,`id_lang`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2reinsurance_lang`
--

LOCK TABLES `ps_2reinsurance_lang` WRITE;
/*!40000 ALTER TABLE `ps_2reinsurance_lang` DISABLE KEYS */;
INSERT INTO `ps_2reinsurance_lang` VALUES (1,1,'Reembolso de dinero'),(1,2,'Reembolso de dinero'),(1,3,'Reembolso de dinero'),(1,4,'Reembolso de dinero'),(1,5,'Reembolso de dinero'),(1,6,'Reembolso de dinero'),(1,7,'Reembolso de dinero'),(1,8,'Reembolso de dinero'),(2,1,'Cambio en tienda'),(2,2,'Cambio en tienda'),(2,3,'Cambio en tienda'),(2,4,'Cambio en tienda'),(2,5,'Cambio en tienda'),(2,6,'Cambio en tienda'),(2,7,'Cambio en tienda'),(2,8,'Cambio en tienda'),(3,1,'Pago después del recibo'),(3,2,'Pago después del recibo'),(3,3,'Pago después del recibo'),(3,4,'Pago después del recibo'),(3,5,'Pago después del recibo'),(3,6,'Pago después del recibo'),(3,7,'Pago después del recibo'),(3,8,'Pago después del recibo'),(4,1,'Transportista gratuito'),(4,2,'Transportista gratuito'),(4,3,'Transportista gratuito'),(4,4,'Transportista gratuito'),(4,5,'Transportista gratuito'),(4,6,'Transportista gratuito'),(4,7,'Transportista gratuito'),(4,8,'Transportista gratuito'),(5,1,'Pago asegurado al 100%'),(5,2,'Pago asegurado al 100%'),(5,3,'Pago asegurado al 100%'),(5,4,'Pago asegurado al 100%'),(5,5,'Pago asegurado al 100%'),(5,6,'Pago asegurado al 100%'),(5,7,'Pago asegurado al 100%'),(5,8,'Pago asegurado al 100%');
/*!40000 ALTER TABLE `ps_2reinsurance_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2request_sql`
--

DROP TABLE IF EXISTS `ps_2request_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2request_sql` (
  `id_request_sql` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `sql` text NOT NULL,
  PRIMARY KEY (`id_request_sql`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2request_sql`
--

LOCK TABLES `ps_2request_sql` WRITE;
/*!40000 ALTER TABLE `ps_2request_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2request_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2required_field`
--

DROP TABLE IF EXISTS `ps_2required_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2required_field` (
  `id_required_field` int(11) NOT NULL AUTO_INCREMENT,
  `object_name` varchar(32) NOT NULL,
  `field_name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_required_field`),
  KEY `object_name` (`object_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2required_field`
--

LOCK TABLES `ps_2required_field` WRITE;
/*!40000 ALTER TABLE `ps_2required_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2required_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2risk`
--

DROP TABLE IF EXISTS `ps_2risk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2risk` (
  `id_risk` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `percent` tinyint(3) NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_risk`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2risk`
--

LOCK TABLES `ps_2risk` WRITE;
/*!40000 ALTER TABLE `ps_2risk` DISABLE KEYS */;
INSERT INTO `ps_2risk` VALUES (1,0,'LimeGreen'),(2,35,'DarkOrange'),(3,75,'Crimson'),(4,100,'#ec2e15');
/*!40000 ALTER TABLE `ps_2risk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2risk_lang`
--

DROP TABLE IF EXISTS `ps_2risk_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2risk_lang` (
  `id_risk` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_risk`,`id_lang`),
  KEY `id_risk` (`id_risk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2risk_lang`
--

LOCK TABLES `ps_2risk_lang` WRITE;
/*!40000 ALTER TABLE `ps_2risk_lang` DISABLE KEYS */;
INSERT INTO `ps_2risk_lang` VALUES (1,1,'None'),(1,2,'None'),(1,3,'None'),(1,4,'None'),(1,5,'Aucun'),(1,6,'None'),(1,7,'None'),(1,8,'None'),(2,1,'Low'),(2,2,'Low'),(2,3,'Low'),(2,4,'Low'),(2,5,'Faible'),(2,6,'Low'),(2,7,'Low'),(2,8,'Low'),(3,1,'Medium'),(3,2,'Medium'),(3,3,'Medium'),(3,4,'Medium'),(3,5,'Moyen'),(3,6,'Medium'),(3,7,'Medium'),(3,8,'Medium'),(4,1,'High'),(4,2,'High'),(4,3,'High'),(4,4,'High'),(4,5,'Élevé'),(4,6,'High'),(4,7,'High'),(4,8,'High');
/*!40000 ALTER TABLE `ps_2risk_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2scene`
--

DROP TABLE IF EXISTS `ps_2scene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2scene` (
  `id_scene` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_scene`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2scene`
--

LOCK TABLES `ps_2scene` WRITE;
/*!40000 ALTER TABLE `ps_2scene` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2scene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2scene_category`
--

DROP TABLE IF EXISTS `ps_2scene_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2scene_category` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_category` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id_scene`,`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2scene_category`
--

LOCK TABLES `ps_2scene_category` WRITE;
/*!40000 ALTER TABLE `ps_2scene_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2scene_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2scene_lang`
--

DROP TABLE IF EXISTS `ps_2scene_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2scene_lang` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_scene`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2scene_lang`
--

LOCK TABLES `ps_2scene_lang` WRITE;
/*!40000 ALTER TABLE `ps_2scene_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2scene_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2scene_products`
--

DROP TABLE IF EXISTS `ps_2scene_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2scene_products` (
  `id_scene` int(10) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `x_axis` int(4) NOT NULL,
  `y_axis` int(4) NOT NULL,
  `zone_width` int(3) NOT NULL,
  `zone_height` int(3) NOT NULL,
  PRIMARY KEY (`id_scene`,`id_product`,`x_axis`,`y_axis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2scene_products`
--

LOCK TABLES `ps_2scene_products` WRITE;
/*!40000 ALTER TABLE `ps_2scene_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2scene_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2scene_shop`
--

DROP TABLE IF EXISTS `ps_2scene_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2scene_shop` (
  `id_scene` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_scene`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2scene_shop`
--

LOCK TABLES `ps_2scene_shop` WRITE;
/*!40000 ALTER TABLE `ps_2scene_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2scene_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2search_engine`
--

DROP TABLE IF EXISTS `ps_2search_engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2search_engine` (
  `id_search_engine` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `server` varchar(64) NOT NULL,
  `getvar` varchar(16) NOT NULL,
  PRIMARY KEY (`id_search_engine`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2search_engine`
--

LOCK TABLES `ps_2search_engine` WRITE;
/*!40000 ALTER TABLE `ps_2search_engine` DISABLE KEYS */;
INSERT INTO `ps_2search_engine` VALUES (1,'google','q'),(2,'aol','q'),(3,'yandex','text'),(4,'ask.com','q'),(5,'nhl.com','q'),(6,'yahoo','p'),(7,'baidu','wd'),(8,'lycos','query'),(9,'exalead','q'),(10,'search.live','q'),(11,'voila','rdata'),(12,'altavista','q'),(13,'bing','q'),(14,'daum','q'),(15,'eniro','search_word'),(16,'naver','query'),(17,'msn','q'),(18,'netscape','query'),(19,'cnn','query'),(20,'about','terms'),(21,'mamma','query'),(22,'alltheweb','q'),(23,'virgilio','qs'),(24,'alice','qs'),(25,'najdi','q'),(26,'mama','query'),(27,'seznam','q'),(28,'onet','qt'),(29,'szukacz','q'),(30,'yam','k'),(31,'pchome','q'),(32,'kvasir','q'),(33,'sesam','q'),(34,'ozu','q'),(35,'terra','query'),(36,'mynet','q'),(37,'ekolay','q'),(38,'rambler','words');
/*!40000 ALTER TABLE `ps_2search_engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2search_index`
--

DROP TABLE IF EXISTS `ps_2search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2search_index` (
  `id_product` int(11) unsigned NOT NULL,
  `id_word` int(11) unsigned NOT NULL,
  `weight` smallint(4) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_word`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2search_index`
--

LOCK TABLES `ps_2search_index` WRITE;
/*!40000 ALTER TABLE `ps_2search_index` DISABLE KEYS */;
INSERT INTO `ps_2search_index` VALUES (4,53,3),(5,53,3),(6,53,3),(7,53,3),(4,54,6),(5,54,6),(4,55,3),(5,55,3),(6,55,3),(7,55,3),(4,56,6),(5,56,6),(4,57,3),(5,57,3),(6,57,3),(7,57,3),(4,58,6),(5,58,6),(4,59,3),(5,59,3),(6,59,3),(7,59,3),(4,60,6),(5,60,6),(4,61,3),(5,61,3),(6,61,3),(7,61,3),(4,62,6),(5,62,6),(4,63,3),(5,63,3),(6,63,3),(7,63,3),(4,64,3),(5,64,3),(6,64,3),(7,64,3),(4,65,6),(5,65,6),(4,66,3),(5,66,3),(6,66,3),(7,66,3),(4,67,6),(5,67,6),(4,68,3),(5,68,3),(6,68,3),(7,68,3),(4,69,10),(6,69,10),(7,69,6),(4,70,10),(6,70,10),(7,70,6),(4,71,10),(6,71,10),(7,71,6),(4,72,6),(5,72,2),(6,72,14),(7,72,6),(4,73,10),(6,73,10),(7,73,6),(4,74,10),(6,74,10),(7,74,6),(4,75,10),(6,75,10),(7,75,6),(4,76,6),(5,76,2),(6,76,14),(7,76,6),(4,77,10),(6,77,10),(7,77,6),(4,78,10),(6,78,10),(7,78,6),(4,79,10),(6,79,10),(7,79,6),(4,80,6),(5,80,2),(6,80,14),(7,80,6),(4,81,10),(6,81,10),(7,81,6),(4,82,10),(6,82,10),(7,82,6),(4,83,10),(6,83,10),(7,83,6),(4,84,6),(5,84,2),(6,84,14),(7,84,6),(4,85,10),(6,85,10),(7,85,6),(4,86,10),(6,86,10),(7,86,6),(4,87,10),(6,87,10),(7,87,6),(4,88,6),(5,88,2),(6,88,14),(7,88,6),(4,89,10),(6,89,10),(7,89,6),(4,90,10),(6,90,10),(7,90,6),(4,91,10),(6,91,10),(7,91,6),(4,92,6),(5,92,2),(6,92,14),(7,92,6),(4,93,10),(6,93,10),(7,93,6),(4,94,10),(6,94,10),(7,94,6),(4,95,10),(6,95,10),(7,95,6),(4,96,6),(5,96,2),(6,96,14),(7,96,6),(4,97,10),(6,97,10),(7,97,6),(4,98,10),(6,98,10),(7,98,6),(4,99,10),(6,99,10),(7,99,6),(4,100,6),(5,100,2),(6,100,14),(7,100,6),(4,101,6),(4,102,6),(4,103,6),(4,104,6),(4,105,6),(4,106,6),(5,106,6),(5,107,6),(5,108,6),(5,110,6),(5,111,6),(5,112,6),(5,113,6),(5,114,6),(5,115,6),(5,116,6),(5,117,6),(5,118,6),(5,119,6),(5,120,6),(5,121,6),(5,122,6),(5,123,6),(5,124,6),(5,125,6),(5,126,6),(5,127,6),(5,128,6),(5,129,6),(5,130,6),(5,131,10),(6,131,10),(5,132,10),(6,132,10),(5,133,10),(6,133,10),(5,134,10),(6,134,10),(5,135,10),(6,135,10),(5,136,10),(6,136,10),(5,137,10),(6,137,10),(5,138,10),(6,138,10),(6,141,6),(6,142,6),(6,143,6),(6,144,6),(6,145,6),(6,146,6),(6,147,6),(6,148,6),(6,149,6),(6,150,6),(6,151,6),(6,152,6),(6,153,6),(6,154,6),(6,155,10),(6,156,10),(6,157,10),(6,158,10),(6,159,10),(6,160,10),(6,161,10),(6,162,10),(6,163,10),(6,164,10),(6,165,10),(6,166,10),(6,167,10),(6,168,10),(6,169,10),(6,170,10),(6,171,10),(6,172,10),(6,173,10),(6,174,10),(6,175,10),(6,176,10),(6,177,10),(6,178,10),(7,181,6),(7,182,6),(7,183,6),(7,184,6),(7,185,6),(7,186,6),(7,187,6),(7,188,6),(7,189,6),(7,190,6),(7,191,6),(7,192,6),(7,193,6),(7,194,6),(5,195,6),(5,196,6),(5,197,6),(6,198,6),(6,199,6),(7,200,6),(7,201,6);
/*!40000 ALTER TABLE `ps_2search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2search_word`
--

DROP TABLE IF EXISTS `ps_2search_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2search_word` (
  `id_word` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_lang` int(10) unsigned NOT NULL,
  `word` varchar(15) NOT NULL,
  PRIMARY KEY (`id_word`),
  UNIQUE KEY `id_lang` (`id_lang`,`id_shop`,`word`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2search_word`
--

LOCK TABLES `ps_2search_word` WRITE;
/*!40000 ALTER TABLE `ps_2search_word` DISABLE KEYS */;
INSERT INTO `ps_2search_word` VALUES (109,1,1,'anthony'),(197,1,1,'antony'),(156,1,1,'black'),(70,1,1,'blanco'),(52,1,1,'camiseta'),(108,1,1,'carmelo'),(139,1,1,'casco'),(140,1,1,'ciclismo'),(198,1,1,'cyclism'),(105,1,1,'football'),(199,1,1,'helmet'),(53,1,1,'home'),(107,1,1,'knicks'),(104,1,1,'madrid'),(131,1,1,'naranja'),(71,1,1,'negro'),(195,1,1,'new'),(201,1,1,'racket'),(179,1,1,'raqueta'),(103,1,1,'real'),(155,1,1,'red'),(69,1,1,'rojo'),(106,1,1,'shirt'),(180,1,1,'tenis'),(200,1,1,'tennis'),(157,1,1,'white'),(72,1,1,'xxl'),(196,1,1,'york'),(112,1,2,'anthony'),(159,1,2,'black'),(74,1,2,'blanco'),(54,1,2,'camiseta'),(111,1,2,'carmelo'),(141,1,2,'casco'),(142,1,2,'ciclismo'),(55,1,2,'home'),(110,1,2,'knicks'),(132,1,2,'naranja'),(75,1,2,'negro'),(181,1,2,'raqueta'),(158,1,2,'red'),(73,1,2,'rojo'),(182,1,2,'tenis'),(160,1,2,'white'),(76,1,2,'xxl'),(115,1,3,'anthony'),(162,1,3,'black'),(78,1,3,'blanco'),(56,1,3,'camiseta'),(114,1,3,'carmelo'),(143,1,3,'casco'),(144,1,3,'ciclismo'),(113,1,3,'knicks'),(133,1,3,'naranja'),(79,1,3,'negro'),(183,1,3,'raqueta'),(161,1,3,'red'),(77,1,3,'rojo'),(57,1,3,'start'),(184,1,3,'tenis'),(163,1,3,'white'),(80,1,3,'xxl'),(118,1,4,'anthony'),(165,1,4,'black'),(82,1,4,'blanco'),(58,1,4,'camiseta'),(117,1,4,'carmelo'),(145,1,4,'casco'),(146,1,4,'ciclismo'),(59,1,4,'inicio'),(116,1,4,'knicks'),(102,1,4,'madrid'),(134,1,4,'naranja'),(83,1,4,'negro'),(185,1,4,'raqueta'),(101,1,4,'real'),(164,1,4,'red'),(81,1,4,'rojo'),(186,1,4,'tenis'),(166,1,4,'white'),(84,1,4,'xxl'),(61,1,5,'accueil'),(121,1,5,'anthony'),(168,1,5,'black'),(86,1,5,'blanco'),(60,1,5,'camiseta'),(120,1,5,'carmelo'),(147,1,5,'casco'),(148,1,5,'ciclismo'),(119,1,5,'knicks'),(135,1,5,'naranja'),(87,1,5,'negro'),(187,1,5,'raqueta'),(167,1,5,'red'),(85,1,5,'rojo'),(188,1,5,'tenis'),(169,1,5,'white'),(88,1,5,'xxl'),(124,1,6,'anthony'),(171,1,6,'black'),(90,1,6,'blanco'),(62,1,6,'camiseta'),(123,1,6,'carmelo'),(149,1,6,'casco'),(150,1,6,'ciclismo'),(63,1,6,'home'),(122,1,6,'knicks'),(136,1,6,'naranja'),(91,1,6,'negro'),(64,1,6,'page'),(189,1,6,'raqueta'),(170,1,6,'red'),(89,1,6,'rojo'),(190,1,6,'tenis'),(172,1,6,'white'),(92,1,6,'xxl'),(127,1,7,'anthony'),(174,1,7,'black'),(94,1,7,'blanco'),(65,1,7,'camiseta'),(126,1,7,'carmelo'),(151,1,7,'casco'),(152,1,7,'ciclismo'),(66,1,7,'inicio'),(125,1,7,'knicks'),(137,1,7,'naranja'),(95,1,7,'negro'),(191,1,7,'raqueta'),(173,1,7,'red'),(93,1,7,'rojo'),(192,1,7,'tenis'),(175,1,7,'white'),(96,1,7,'xxl'),(130,1,8,'anthony'),(177,1,8,'black'),(98,1,8,'blanco'),(67,1,8,'camiseta'),(129,1,8,'carmelo'),(153,1,8,'casco'),(154,1,8,'ciclismo'),(68,1,8,'inicio'),(128,1,8,'knicks'),(138,1,8,'naranja'),(99,1,8,'negro'),(193,1,8,'raqueta'),(176,1,8,'red'),(97,1,8,'rojo'),(194,1,8,'tenis'),(178,1,8,'white'),(100,1,8,'xxl');
/*!40000 ALTER TABLE `ps_2search_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2sekeyword`
--

DROP TABLE IF EXISTS `ps_2sekeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2sekeyword` (
  `id_sekeyword` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `keyword` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_sekeyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2sekeyword`
--

LOCK TABLES `ps_2sekeyword` WRITE;
/*!40000 ALTER TABLE `ps_2sekeyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2sekeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2shop`
--

DROP TABLE IF EXISTS `ps_2shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2shop` (
  `id_shop` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `id_category` int(11) unsigned NOT NULL DEFAULT '1',
  `id_theme` int(1) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_category` (`id_category`),
  KEY `id_theme` (`id_theme`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2shop`
--

LOCK TABLES `ps_2shop` WRITE;
/*!40000 ALTER TABLE `ps_2shop` DISABLE KEYS */;
INSERT INTO `ps_2shop` VALUES (1,1,'Bluegarlic Electronic Trade Ltd.',2,1,1,0);
/*!40000 ALTER TABLE `ps_2shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2shop_group`
--

DROP TABLE IF EXISTS `ps_2shop_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2shop_group` (
  `id_shop_group` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `share_customer` tinyint(1) NOT NULL,
  `share_order` tinyint(1) NOT NULL,
  `share_stock` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_shop_group`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2shop_group`
--

LOCK TABLES `ps_2shop_group` WRITE;
/*!40000 ALTER TABLE `ps_2shop_group` DISABLE KEYS */;
INSERT INTO `ps_2shop_group` VALUES (1,'Default',0,0,0,1,0);
/*!40000 ALTER TABLE `ps_2shop_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2shop_url`
--

DROP TABLE IF EXISTS `ps_2shop_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2shop_url` (
  `id_shop_url` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(11) unsigned NOT NULL,
  `domain` varchar(150) NOT NULL,
  `domain_ssl` varchar(150) NOT NULL,
  `physical_uri` varchar(64) NOT NULL,
  `virtual_uri` varchar(64) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_shop_url`),
  UNIQUE KEY `full_shop_url` (`domain`,`physical_uri`,`virtual_uri`),
  UNIQUE KEY `full_shop_url_ssl` (`domain_ssl`,`physical_uri`,`virtual_uri`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2shop_url`
--

LOCK TABLES `ps_2shop_url` WRITE;
/*!40000 ALTER TABLE `ps_2shop_url` DISABLE KEYS */;
INSERT INTO `ps_2shop_url` VALUES (1,1,'localhost','localhost','/prestadeporte/','',1,1);
/*!40000 ALTER TABLE `ps_2shop_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2specific_price`
--

DROP TABLE IF EXISTS `ps_2specific_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2specific_price` (
  `id_specific_price` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule` int(11) unsigned NOT NULL,
  `id_cart` int(11) unsigned NOT NULL,
  `id_product` int(10) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(11) unsigned NOT NULL,
  `id_currency` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `id_customer` int(10) unsigned NOT NULL,
  `id_product_attribute` int(10) unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL,
  `from_quantity` mediumint(8) unsigned NOT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  PRIMARY KEY (`id_specific_price`),
  KEY `id_product` (`id_product`,`id_shop`,`id_currency`,`id_country`,`id_group`,`id_customer`,`from_quantity`,`from`,`to`),
  KEY `from_quantity` (`from_quantity`),
  KEY `id_specific_price_rule` (`id_specific_price_rule`),
  KEY `id_cart` (`id_cart`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2specific_price`
--

LOCK TABLES `ps_2specific_price` WRITE;
/*!40000 ALTER TABLE `ps_2specific_price` DISABLE KEYS */;
INSERT INTO `ps_2specific_price` VALUES (29,1,0,4,1,0,0,0,0,0,0,-1.000000,10,0.050000,'percentage','0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,4,0,4,1,0,0,0,0,0,0,-1.000000,10,0.080000,'percentage','0000-00-00 00:00:00','0000-00-00 00:00:00'),(155,1,0,5,1,0,0,0,0,0,0,-1.000000,10,0.050000,'percentage','0000-00-00 00:00:00','0000-00-00 00:00:00'),(156,4,0,5,1,0,0,0,0,0,0,-1.000000,10,0.080000,'percentage','0000-00-00 00:00:00','0000-00-00 00:00:00'),(159,1,0,6,1,0,0,0,0,0,0,-1.000000,10,0.050000,'percentage','0000-00-00 00:00:00','0000-00-00 00:00:00'),(160,4,0,6,1,0,0,0,0,0,0,-1.000000,10,0.080000,'percentage','0000-00-00 00:00:00','0000-00-00 00:00:00'),(163,1,0,7,1,0,0,0,0,0,0,-1.000000,10,0.050000,'percentage','0000-00-00 00:00:00','0000-00-00 00:00:00'),(164,4,0,7,1,0,0,0,0,0,0,-1.000000,10,0.080000,'percentage','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `ps_2specific_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2specific_price_priority`
--

DROP TABLE IF EXISTS `ps_2specific_price_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2specific_price_priority` (
  `id_specific_price_priority` int(11) NOT NULL AUTO_INCREMENT,
  `id_product` int(11) NOT NULL,
  `priority` varchar(80) NOT NULL,
  PRIMARY KEY (`id_specific_price_priority`,`id_product`),
  UNIQUE KEY `id_product` (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2specific_price_priority`
--

LOCK TABLES `ps_2specific_price_priority` WRITE;
/*!40000 ALTER TABLE `ps_2specific_price_priority` DISABLE KEYS */;
INSERT INTO `ps_2specific_price_priority` VALUES (1,1,'id_shop;id_currency;id_country;id_group'),(2,2,'id_shop;id_currency;id_country;id_group'),(3,3,'id_shop;id_currency;id_country;id_group'),(4,4,'id_shop;id_currency;id_country;id_group'),(6,5,'id_shop;id_currency;id_country;id_group'),(12,6,'id_shop;id_currency;id_country;id_group'),(15,7,'id_shop;id_currency;id_country;id_group');
/*!40000 ALTER TABLE `ps_2specific_price_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2specific_price_rule`
--

DROP TABLE IF EXISTS `ps_2specific_price_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2specific_price_rule` (
  `id_specific_price_rule` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `id_shop` int(11) unsigned NOT NULL DEFAULT '1',
  `id_currency` int(10) unsigned NOT NULL,
  `id_country` int(10) unsigned NOT NULL,
  `id_group` int(10) unsigned NOT NULL,
  `from_quantity` mediumint(8) unsigned NOT NULL,
  `price` decimal(20,6) DEFAULT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  PRIMARY KEY (`id_specific_price_rule`),
  KEY `id_product` (`id_shop`,`id_currency`,`id_country`,`id_group`,`from_quantity`,`from`,`to`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2specific_price_rule`
--

LOCK TABLES `ps_2specific_price_rule` WRITE;
/*!40000 ALTER TABLE `ps_2specific_price_rule` DISABLE KEYS */;
INSERT INTO `ps_2specific_price_rule` VALUES (1,'caracter general',1,0,0,0,10,-1.000000,5.000000,'percentage','0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,'caracter general 2',1,0,0,0,10,-1.000000,8.000000,'percentage','0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `ps_2specific_price_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2specific_price_rule_condition`
--

DROP TABLE IF EXISTS `ps_2specific_price_rule_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2specific_price_rule_condition` (
  `id_specific_price_rule_condition` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule_condition_group` int(11) unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_specific_price_rule_condition`),
  KEY `id_specific_price_rule_condition_group` (`id_specific_price_rule_condition_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2specific_price_rule_condition`
--

LOCK TABLES `ps_2specific_price_rule_condition` WRITE;
/*!40000 ALTER TABLE `ps_2specific_price_rule_condition` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2specific_price_rule_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2specific_price_rule_condition_group`
--

DROP TABLE IF EXISTS `ps_2specific_price_rule_condition_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2specific_price_rule_condition_group` (
  `id_specific_price_rule_condition_group` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_specific_price_rule_condition_group`,`id_specific_price_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2specific_price_rule_condition_group`
--

LOCK TABLES `ps_2specific_price_rule_condition_group` WRITE;
/*!40000 ALTER TABLE `ps_2specific_price_rule_condition_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2specific_price_rule_condition_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2state`
--

DROP TABLE IF EXISTS `ps_2state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2state` (
  `id_state` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(11) unsigned NOT NULL,
  `id_zone` int(11) unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `iso_code` varchar(7) NOT NULL,
  `tax_behavior` smallint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_state`),
  KEY `id_country` (`id_country`),
  KEY `name` (`name`),
  KEY `id_zone` (`id_zone`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2state`
--

LOCK TABLES `ps_2state` WRITE;
/*!40000 ALTER TABLE `ps_2state` DISABLE KEYS */;
INSERT INTO `ps_2state` VALUES (1,21,2,'Alabama','AL',0,1),(2,21,2,'Alaska','AK',0,1),(3,21,2,'Arizona','AZ',0,1),(4,21,2,'Arkansas','AR',0,1),(5,21,2,'California','CA',0,1),(6,21,2,'Colorado','CO',0,1),(7,21,2,'Connecticut','CT',0,1),(8,21,2,'Delaware','DE',0,1),(9,21,2,'Florida','FL',0,1),(10,21,2,'Georgia','GA',0,1),(11,21,2,'Hawaii','HI',0,1),(12,21,2,'Idaho','ID',0,1),(13,21,2,'Illinois','IL',0,1),(14,21,2,'Indiana','IN',0,1),(15,21,2,'Iowa','IA',0,1),(16,21,2,'Kansas','KS',0,1),(17,21,2,'Kentucky','KY',0,1),(18,21,2,'Louisiana','LA',0,1),(19,21,2,'Maine','ME',0,1),(20,21,2,'Maryland','MD',0,1),(21,21,2,'Massachusetts','MA',0,1),(22,21,2,'Michigan','MI',0,1),(23,21,2,'Minnesota','MN',0,1),(24,21,2,'Mississippi','MS',0,1),(25,21,2,'Missouri','MO',0,1),(26,21,2,'Montana','MT',0,1),(27,21,2,'Nebraska','NE',0,1),(28,21,2,'Nevada','NV',0,1),(29,21,2,'New Hampshire','NH',0,1),(30,21,2,'New Jersey','NJ',0,1),(31,21,2,'New Mexico','NM',0,1),(32,21,2,'New York','NY',0,1),(33,21,2,'North Carolina','NC',0,1),(34,21,2,'North Dakota','ND',0,1),(35,21,2,'Ohio','OH',0,1),(36,21,2,'Oklahoma','OK',0,1),(37,21,2,'Oregon','OR',0,1),(38,21,2,'Pennsylvania','PA',0,1),(39,21,2,'Rhode Island','RI',0,1),(40,21,2,'South Carolina','SC',0,1),(41,21,2,'South Dakota','SD',0,1),(42,21,2,'Tennessee','TN',0,1),(43,21,2,'Texas','TX',0,1),(44,21,2,'Utah','UT',0,1),(45,21,2,'Vermont','VT',0,1),(46,21,2,'Virginia','VA',0,1),(47,21,2,'Washington','WA',0,1),(48,21,2,'West Virginia','WV',0,1),(49,21,2,'Wisconsin','WI',0,1),(50,21,2,'Wyoming','WY',0,1),(51,21,2,'Puerto Rico','PR',0,1),(52,21,2,'US Virgin Islands','VI',0,1),(53,21,2,'District of Columbia','DC',0,1),(54,145,2,'Aguascalientes','AGS',0,1),(55,145,2,'Baja California','BCN',0,1),(56,145,2,'Baja California Sur','BCS',0,1),(57,145,2,'Campeche','CAM',0,1),(58,145,2,'Chiapas','CHP',0,1),(59,145,2,'Chihuahua','CHH',0,1),(60,145,2,'Coahuila','COA',0,1),(61,145,2,'Colima','COL',0,1),(62,145,2,'Distrito Federal','DIF',0,1),(63,145,2,'Durango','DUR',0,1),(64,145,2,'Guanajuato','GUA',0,1),(65,145,2,'Guerrero','GRO',0,1),(66,145,2,'Hidalgo','HID',0,1),(67,145,2,'Jalisco','JAL',0,1),(68,145,2,'Estado de México','MEX',0,1),(69,145,2,'Michoacán','MIC',0,1),(70,145,2,'Morelos','MOR',0,1),(71,145,2,'Nayarit','NAY',0,1),(72,145,2,'Nuevo León','NLE',0,1),(73,145,2,'Oaxaca','OAX',0,1),(74,145,2,'Puebla','PUE',0,1),(75,145,2,'Querétaro','QUE',0,1),(76,145,2,'Quintana Roo','ROO',0,1),(77,145,2,'San Luis Potosí','SLP',0,1),(78,145,2,'Sinaloa','SIN',0,1),(79,145,2,'Sonora','SON',0,1),(80,145,2,'Tabasco','TAB',0,1),(81,145,2,'Tamaulipas','TAM',0,1),(82,145,2,'Tlaxcala','TLA',0,1),(83,145,2,'Veracruz','VER',0,1),(84,145,2,'Yucatán','YUC',0,1),(85,145,2,'Zacatecas','ZAC',0,1),(86,4,2,'Ontario','ON',0,1),(87,4,2,'Quebec','QC',0,1),(88,4,2,'British Columbia','BC',0,1),(89,4,2,'Alberta','AB',0,1),(90,4,2,'Manitoba','MB',0,1),(91,4,2,'Saskatchewan','SK',0,1),(92,4,2,'Nova Scotia','NS',0,1),(93,4,2,'New Brunswick','NB',0,1),(94,4,2,'Newfoundland and Labrador','NL',0,1),(95,4,2,'Prince Edward Island','PE',0,1),(96,4,2,'Northwest Territories','NT',0,1),(97,4,2,'Yukon','YT',0,1),(98,4,2,'Nunavut','NU',0,1),(99,44,6,'Buenos Aires','B',0,1),(100,44,6,'Catamarca','K',0,1),(101,44,6,'Chaco','H',0,1),(102,44,6,'Chubut','U',0,1),(103,44,6,'Ciudad de Buenos Aires','C',0,1),(104,44,6,'Córdoba','X',0,1),(105,44,6,'Corrientes','W',0,1),(106,44,6,'Entre Ríos','E',0,1),(107,44,6,'Formosa','P',0,1),(108,44,6,'Jujuy','Y',0,1),(109,44,6,'La Pampa','L',0,1),(110,44,6,'La Rioja','F',0,1),(111,44,6,'Mendoza','M',0,1),(112,44,6,'Misiones','N',0,1),(113,44,6,'Neuquén','Q',0,1),(114,44,6,'Río Negro','R',0,1),(115,44,6,'Salta','A',0,1),(116,44,6,'San Juan','J',0,1),(117,44,6,'San Luis','D',0,1),(118,44,6,'Santa Cruz','Z',0,1),(119,44,6,'Santa Fe','S',0,1),(120,44,6,'Santiago del Estero','G',0,1),(121,44,6,'Tierra del Fuego','V',0,1),(122,44,6,'Tucumán','T',0,1),(123,10,1,'Agrigento','AG',0,1),(124,10,1,'Alessandria','AL',0,1),(125,10,1,'Ancona','AN',0,1),(126,10,1,'Aosta','AO',0,1),(127,10,1,'Arezzo','AR',0,1),(128,10,1,'Ascoli Piceno','AP',0,1),(129,10,1,'Asti','AT',0,1),(130,10,1,'Avellino','AV',0,1),(131,10,1,'Bari','BA',0,1),(132,10,1,'Barletta-Andria-Trani','BT',0,1),(133,10,1,'Belluno','BL',0,1),(134,10,1,'Benevento','BN',0,1),(135,10,1,'Bergamo','BG',0,1),(136,10,1,'Biella','BI',0,1),(137,10,1,'Bologna','BO',0,1),(138,10,1,'Bolzano','BZ',0,1),(139,10,1,'Brescia','BS',0,1),(140,10,1,'Brindisi','BR',0,1),(141,10,1,'Cagliari','CA',0,1),(142,10,1,'Caltanissetta','CL',0,1),(143,10,1,'Campobasso','CB',0,1),(144,10,1,'Carbonia-Iglesias','CI',0,1),(145,10,1,'Caserta','CE',0,1),(146,10,1,'Catania','CT',0,1),(147,10,1,'Catanzaro','CZ',0,1),(148,10,1,'Chieti','CH',0,1),(149,10,1,'Como','CO',0,1),(150,10,1,'Cosenza','CS',0,1),(151,10,1,'Cremona','CR',0,1),(152,10,1,'Crotone','KR',0,1),(153,10,1,'Cuneo','CN',0,1),(154,10,1,'Enna','EN',0,1),(155,10,1,'Fermo','FM',0,1),(156,10,1,'Ferrara','FE',0,1),(157,10,1,'Firenze','FI',0,1),(158,10,1,'Foggia','FG',0,1),(159,10,1,'Forlì-Cesena','FC',0,1),(160,10,1,'Frosinone','FR',0,1),(161,10,1,'Genova','GE',0,1),(162,10,1,'Gorizia','GO',0,1),(163,10,1,'Grosseto','GR',0,1),(164,10,1,'Imperia','IM',0,1),(165,10,1,'Isernia','IS',0,1),(166,10,1,'L\'Aquila','AQ',0,1),(167,10,1,'La Spezia','SP',0,1),(168,10,1,'Latina','LT',0,1),(169,10,1,'Lecce','LE',0,1),(170,10,1,'Lecco','LC',0,1),(171,10,1,'Livorno','LI',0,1),(172,10,1,'Lodi','LO',0,1),(173,10,1,'Lucca','LU',0,1),(174,10,1,'Macerata','MC',0,1),(175,10,1,'Mantova','MN',0,1),(176,10,1,'Massa','MS',0,1),(177,10,1,'Matera','MT',0,1),(178,10,1,'Medio Campidano','VS',0,1),(179,10,1,'Messina','ME',0,1),(180,10,1,'Milano','MI',0,1),(181,10,1,'Modena','MO',0,1),(182,10,1,'Monza e della Brianza','MB',0,1),(183,10,1,'Napoli','NA',0,1),(184,10,1,'Novara','NO',0,1),(185,10,1,'Nuoro','NU',0,1),(186,10,1,'Ogliastra','OG',0,1),(187,10,1,'Olbia-Tempio','OT',0,1),(188,10,1,'Oristano','OR',0,1),(189,10,1,'Padova','PD',0,1),(190,10,1,'Palermo','PA',0,1),(191,10,1,'Parma','PR',0,1),(192,10,1,'Pavia','PV',0,1),(193,10,1,'Perugia','PG',0,1),(194,10,1,'Pesaro-Urbino','PU',0,1),(195,10,1,'Pescara','PE',0,1),(196,10,1,'Piacenza','PC',0,1),(197,10,1,'Pisa','PI',0,1),(198,10,1,'Pistoia','PT',0,1),(199,10,1,'Pordenone','PN',0,1),(200,10,1,'Potenza','PZ',0,1),(201,10,1,'Prato','PO',0,1),(202,10,1,'Ragusa','RG',0,1),(203,10,1,'Ravenna','RA',0,1),(204,10,1,'Reggio Calabria','RC',0,1),(205,10,1,'Reggio Emilia','RE',0,1),(206,10,1,'Rieti','RI',0,1),(207,10,1,'Rimini','RN',0,1),(208,10,1,'Roma','RM',0,1),(209,10,1,'Rovigo','RO',0,1),(210,10,1,'Salerno','SA',0,1),(211,10,1,'Sassari','SS',0,1),(212,10,1,'Savona','SV',0,1),(213,10,1,'Siena','SI',0,1),(214,10,1,'Siracusa','SR',0,1),(215,10,1,'Sondrio','SO',0,1),(216,10,1,'Taranto','TA',0,1),(217,10,1,'Teramo','TE',0,1),(218,10,1,'Terni','TR',0,1),(219,10,1,'Torino','TO',0,1),(220,10,1,'Trapani','TP',0,1),(221,10,1,'Trento','TN',0,1),(222,10,1,'Treviso','TV',0,1),(223,10,1,'Trieste','TS',0,1),(224,10,1,'Udine','UD',0,1),(225,10,1,'Varese','VA',0,1),(226,10,1,'Venezia','VE',0,1),(227,10,1,'Verbano-Cusio-Ossola','VB',0,1),(228,10,1,'Vercelli','VC',0,1),(229,10,1,'Verona','VR',0,1),(230,10,1,'Vibo Valentia','VV',0,1),(231,10,1,'Vicenza','VI',0,1),(232,10,1,'Viterbo','VT',0,1),(233,111,3,'Aceh','AC',0,1),(234,111,3,'Bali','BA',0,1),(235,111,3,'Bangka','BB',0,1),(236,111,3,'Banten','BT',0,1),(237,111,3,'Bengkulu','BE',0,1),(238,111,3,'Central Java','JT',0,1),(239,111,3,'Central Kalimantan','KT',0,1),(240,111,3,'Central Sulawesi','ST',0,1),(241,111,3,'Coat of arms of East Java','JI',0,1),(242,111,3,'East kalimantan','KI',0,1),(243,111,3,'East Nusa Tenggara','NT',0,1),(244,111,3,'Lambang propinsi','GO',0,1),(245,111,3,'Jakarta','JK',0,1),(246,111,3,'Jambi','JA',0,1),(247,111,3,'Lampung','LA',0,1),(248,111,3,'Maluku','MA',0,1),(249,111,3,'North Maluku','MU',0,1),(250,111,3,'North Sulawesi','SA',0,1),(251,111,3,'North Sumatra','SU',0,1),(252,111,3,'Papua','PA',0,1),(253,111,3,'Riau','RI',0,1),(254,111,3,'Lambang Riau','KR',0,1),(255,111,3,'Southeast Sulawesi','SG',0,1),(256,111,3,'South Kalimantan','KS',0,1),(257,111,3,'South Sulawesi','SN',0,1),(258,111,3,'South Sumatra','SS',0,1),(259,111,3,'West Java','JB',0,1),(260,111,3,'West Kalimantan','KB',0,1),(261,111,3,'West Nusa Tenggara','NB',0,1),(262,111,3,'Lambang Provinsi Papua Barat','PB',0,1),(263,111,3,'West Sulawesi','SR',0,1),(264,111,3,'West Sumatra','SB',0,1),(265,111,3,'Yogyakarta','YO',0,1),(266,11,3,'Aichi','23',0,1),(267,11,3,'Akita','05',0,1),(268,11,3,'Aomori','02',0,1),(269,11,3,'Chiba','12',0,1),(270,11,3,'Ehime','38',0,1),(271,11,3,'Fukui','18',0,1),(272,11,3,'Fukuoka','40',0,1),(273,11,3,'Fukushima','07',0,1),(274,11,3,'Gifu','21',0,1),(275,11,3,'Gunma','10',0,1),(276,11,3,'Hiroshima','34',0,1),(277,11,3,'Hokkaido','01',0,1),(278,11,3,'Hyogo','28',0,1),(279,11,3,'Ibaraki','08',0,1),(280,11,3,'Ishikawa','17',0,1),(281,11,3,'Iwate','03',0,1),(282,11,3,'Kagawa','37',0,1),(283,11,3,'Kagoshima','46',0,1),(284,11,3,'Kanagawa','14',0,1),(285,11,3,'Kochi','39',0,1),(286,11,3,'Kumamoto','43',0,1),(287,11,3,'Kyoto','26',0,1),(288,11,3,'Mie','24',0,1),(289,11,3,'Miyagi','04',0,1),(290,11,3,'Miyazaki','45',0,1),(291,11,3,'Nagano','20',0,1),(292,11,3,'Nagasaki','42',0,1),(293,11,3,'Nara','29',0,1),(294,11,3,'Niigata','15',0,1),(295,11,3,'Oita','44',0,1),(296,11,3,'Okayama','33',0,1),(297,11,3,'Okinawa','47',0,1),(298,11,3,'Osaka','27',0,1),(299,11,3,'Saga','41',0,1),(300,11,3,'Saitama','11',0,1),(301,11,3,'Shiga','25',0,1),(302,11,3,'Shimane','32',0,1),(303,11,3,'Shizuoka','22',0,1),(304,11,3,'Tochigi','09',0,1),(305,11,3,'Tokushima','36',0,1),(306,11,3,'Tokyo','13',0,1),(307,11,3,'Tottori','31',0,1),(308,11,3,'Toyama','16',0,1),(309,11,3,'Wakayama','30',0,1),(310,11,3,'Yamagata','06',0,1),(311,11,3,'Yamaguchi','35',0,1),(312,11,3,'Yamanashi','19',0,1);
/*!40000 ALTER TABLE `ps_2state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2statssearch`
--

DROP TABLE IF EXISTS `ps_2statssearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2statssearch` (
  `id_statssearch` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int(10) unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int(10) unsigned NOT NULL DEFAULT '1',
  `keywords` varchar(255) NOT NULL,
  `results` int(6) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_statssearch`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2statssearch`
--

LOCK TABLES `ps_2statssearch` WRITE;
/*!40000 ALTER TABLE `ps_2statssearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2statssearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2stock`
--

DROP TABLE IF EXISTS `ps_2stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2stock` (
  `id_stock` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_warehouse` int(11) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `reference` varchar(32) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `physical_quantity` int(11) unsigned NOT NULL,
  `usable_quantity` int(11) unsigned NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000',
  PRIMARY KEY (`id_stock`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2stock`
--

LOCK TABLES `ps_2stock` WRITE;
/*!40000 ALTER TABLE `ps_2stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2stock_available`
--

DROP TABLE IF EXISTS `ps_2stock_available`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2stock_available` (
  `id_stock_available` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `id_shop_group` int(11) unsigned NOT NULL,
  `quantity` int(10) NOT NULL DEFAULT '0',
  `depends_on_stock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `out_of_stock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_stock_available`),
  UNIQUE KEY `product_sqlstock` (`id_product`,`id_product_attribute`,`id_shop`),
  KEY `id_shop` (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2stock_available`
--

LOCK TABLES `ps_2stock_available` WRITE;
/*!40000 ALTER TABLE `ps_2stock_available` DISABLE KEYS */;
INSERT INTO `ps_2stock_available` VALUES (4,4,0,1,0,14,0,2),(20,4,16,1,0,0,0,2),(21,4,17,1,0,1,0,2),(22,4,18,1,0,1,0,2),(23,4,19,1,0,1,0,2),(24,4,20,1,0,1,0,2),(25,4,21,1,0,1,0,2),(26,4,22,1,0,1,0,2),(27,4,23,1,0,1,0,2),(28,4,24,1,0,1,0,2),(29,4,25,1,0,1,0,2),(30,4,26,1,0,1,0,2),(31,4,27,1,0,1,0,2),(32,4,28,1,0,1,0,2),(33,4,29,1,0,1,0,2),(34,4,30,1,0,1,0,2),(35,5,0,1,0,5,0,2),(36,5,31,1,0,1,0,2),(37,5,32,1,0,1,0,2),(38,5,33,1,0,1,0,2),(39,5,34,1,0,1,0,2),(40,5,35,1,0,1,0,2),(41,6,0,1,0,35,0,2),(42,6,36,1,0,1,0,2),(43,6,37,1,0,1,0,2),(44,6,38,1,0,1,0,2),(45,6,39,1,0,1,0,2),(46,6,40,1,0,1,0,2),(47,6,41,1,0,1,0,2),(48,6,42,1,0,1,0,2),(49,6,43,1,0,1,0,2),(50,6,44,1,0,1,0,2),(51,6,45,1,0,1,0,2),(52,6,46,1,0,1,0,2),(53,6,47,1,0,1,0,2),(54,6,48,1,0,1,0,2),(55,6,49,1,0,1,0,2),(56,6,50,1,0,1,0,2),(57,6,51,1,0,1,0,2),(58,6,52,1,0,1,0,2),(59,6,53,1,0,1,0,2),(60,6,54,1,0,1,0,2),(61,6,55,1,0,1,0,2),(62,6,56,1,0,1,0,2),(63,6,57,1,0,1,0,2),(64,6,58,1,0,1,0,2),(65,6,59,1,0,1,0,2),(66,6,60,1,0,1,0,2),(67,6,61,1,0,1,0,2),(68,6,62,1,0,1,0,2),(69,6,63,1,0,1,0,2),(70,6,64,1,0,1,0,2),(71,6,65,1,0,1,0,2),(72,6,66,1,0,1,0,2),(73,6,67,1,0,1,0,2),(74,6,68,1,0,1,0,2),(75,6,69,1,0,1,0,2),(76,6,70,1,0,1,0,2),(77,7,0,1,0,9,0,2),(78,7,71,1,0,1,0,2),(79,7,72,1,0,1,0,2),(80,7,73,1,0,1,0,2),(81,7,74,1,0,1,0,2),(82,7,75,1,0,1,0,2),(83,7,76,1,0,1,0,2),(84,7,77,1,0,1,0,2),(85,7,78,1,0,1,0,2),(86,7,79,1,0,1,0,2);
/*!40000 ALTER TABLE `ps_2stock_available` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2stock_mvt`
--

DROP TABLE IF EXISTS `ps_2stock_mvt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2stock_mvt` (
  `id_stock_mvt` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_stock` int(11) unsigned NOT NULL,
  `id_order` int(11) unsigned DEFAULT NULL,
  `id_supply_order` int(11) unsigned DEFAULT NULL,
  `id_stock_mvt_reason` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `physical_quantity` int(11) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `sign` tinyint(1) NOT NULL DEFAULT '1',
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `last_wa` decimal(20,6) DEFAULT '0.000000',
  `current_wa` decimal(20,6) DEFAULT '0.000000',
  `referer` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id_stock_mvt`),
  KEY `id_stock` (`id_stock`),
  KEY `id_stock_mvt_reason` (`id_stock_mvt_reason`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2stock_mvt`
--

LOCK TABLES `ps_2stock_mvt` WRITE;
/*!40000 ALTER TABLE `ps_2stock_mvt` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2stock_mvt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2stock_mvt_reason`
--

DROP TABLE IF EXISTS `ps_2stock_mvt_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2stock_mvt_reason` (
  `id_stock_mvt_reason` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sign` tinyint(1) NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_stock_mvt_reason`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2stock_mvt_reason`
--

LOCK TABLES `ps_2stock_mvt_reason` WRITE;
/*!40000 ALTER TABLE `ps_2stock_mvt_reason` DISABLE KEYS */;
INSERT INTO `ps_2stock_mvt_reason` VALUES (1,1,'2013-02-21 22:04:15','2013-02-21 22:04:15',0),(2,-1,'2013-02-21 22:04:15','2013-02-21 22:04:15',0),(3,-1,'2013-02-21 22:04:15','2013-02-21 22:04:15',0),(4,-1,'2013-02-21 22:04:15','2013-02-21 22:04:15',0),(5,1,'2013-02-21 22:04:15','2013-02-21 22:04:15',0),(6,-1,'2013-02-21 22:04:15','2013-02-21 22:04:15',0),(7,1,'2013-02-21 22:04:15','2013-02-21 22:04:15',0),(8,1,'2013-02-21 22:04:15','2013-02-21 22:04:15',0);
/*!40000 ALTER TABLE `ps_2stock_mvt_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2stock_mvt_reason_lang`
--

DROP TABLE IF EXISTS `ps_2stock_mvt_reason_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2stock_mvt_reason_lang` (
  `id_stock_mvt_reason` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_stock_mvt_reason`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2stock_mvt_reason_lang`
--

LOCK TABLES `ps_2stock_mvt_reason_lang` WRITE;
/*!40000 ALTER TABLE `ps_2stock_mvt_reason_lang` DISABLE KEYS */;
INSERT INTO `ps_2stock_mvt_reason_lang` VALUES (1,1,'Increase'),(1,2,'Increase'),(1,3,'Erhöhen'),(1,4,'Aumentar'),(1,5,'Augmenter'),(1,6,'Increase'),(1,7,'Aumentar'),(1,8,'Aumentar'),(2,1,'Decrease'),(2,2,'Decrease'),(2,3,'Reduzieren'),(2,4,'Disminuir'),(2,5,'Diminuer'),(2,6,'Decrease'),(2,7,'Disminuir'),(2,8,'Disminuir'),(3,1,'Customer Order'),(3,2,'Customer Order'),(3,3,'Bestellung'),(3,4,'Pedido'),(3,5,'Commande client'),(3,6,'Ordine'),(3,7,'Pedido'),(3,8,'Pedido'),(4,1,'Regulation following an inventory of stock'),(4,2,'Regulation following an inventory of stock'),(4,3,'Regulation following an inventory of stock'),(4,4,'Regulation following an inventory of stock'),(4,5,'Régularisation du stock suite à un inventaire'),(4,6,'Regulation following an inventory of stock'),(4,7,'Regulation following an inventory of stock'),(4,8,'Regulation following an inventory of stock'),(5,1,'Regulation following an inventory of stock'),(5,2,'Regulation following an inventory of stock'),(5,3,'Regulation following an inventory of stock'),(5,4,'Regulation following an inventory of stock'),(5,5,'Régularisation du stock suite à un inventaire'),(5,6,'Regulation following an inventory of stock'),(5,7,'Regulation following an inventory of stock'),(5,8,'Regulation following an inventory of stock'),(6,1,'Transfer to another warehouse'),(6,2,'Transfer to another warehouse'),(6,3,'Transfer to another warehouse'),(6,4,'Transfer to another warehouse'),(6,5,'Transfert vers un autre entrepôt'),(6,6,'Transfer to another warehouse'),(6,7,'Transfer to another warehouse'),(6,8,'Transfer to another warehouse'),(7,1,'Transfer from another warehouse'),(7,2,'Transfer from another warehouse'),(7,3,'Transfer from another warehouse'),(7,4,'Transfer from another warehouse'),(7,5,'Transfert depuis un autre entrepôt'),(7,6,'Transfer from another warehouse'),(7,7,'Transfer from another warehouse'),(7,8,'Transfer from another warehouse'),(8,1,'Supply Order'),(8,2,'Supply Order'),(8,3,'Supply Order'),(8,4,'Supply Order'),(8,5,'Commande fournisseur'),(8,6,'Supply Order'),(8,7,'Supply Order'),(8,8,'Supply Order');
/*!40000 ALTER TABLE `ps_2stock_mvt_reason_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2store`
--

DROP TABLE IF EXISTS `ps_2store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2store` (
  `id_store` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int(10) unsigned NOT NULL,
  `id_state` int(10) unsigned DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `postcode` varchar(12) NOT NULL,
  `latitude` decimal(11,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `hours` varchar(254) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `note` text,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_store`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2store`
--

LOCK TABLES `ps_2store` WRITE;
/*!40000 ALTER TABLE `ps_2store` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2store_shop`
--

DROP TABLE IF EXISTS `ps_2store_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2store_shop` (
  `id_store` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_store`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2store_shop`
--

LOCK TABLES `ps_2store_shop` WRITE;
/*!40000 ALTER TABLE `ps_2store_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2store_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2supplier`
--

DROP TABLE IF EXISTS `ps_2supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2supplier` (
  `id_supplier` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2supplier`
--

LOCK TABLES `ps_2supplier` WRITE;
/*!40000 ALTER TABLE `ps_2supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2supplier_lang`
--

DROP TABLE IF EXISTS `ps_2supplier_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2supplier_lang` (
  `id_supplier` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `description` text,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_supplier`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2supplier_lang`
--

LOCK TABLES `ps_2supplier_lang` WRITE;
/*!40000 ALTER TABLE `ps_2supplier_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2supplier_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2supplier_shop`
--

DROP TABLE IF EXISTS `ps_2supplier_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2supplier_shop` (
  `id_supplier` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_supplier`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2supplier_shop`
--

LOCK TABLES `ps_2supplier_shop` WRITE;
/*!40000 ALTER TABLE `ps_2supplier_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2supplier_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2supply_order`
--

DROP TABLE IF EXISTS `ps_2supply_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2supply_order` (
  `id_supply_order` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int(11) unsigned NOT NULL,
  `supplier_name` varchar(64) NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  `id_supply_order_state` int(11) unsigned NOT NULL,
  `id_currency` int(11) unsigned NOT NULL,
  `id_ref_currency` int(11) unsigned NOT NULL,
  `reference` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `date_delivery_expected` datetime DEFAULT NULL,
  `total_te` decimal(20,6) DEFAULT '0.000000',
  `total_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `total_tax` decimal(20,6) DEFAULT '0.000000',
  `total_ti` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `is_template` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_supply_order`),
  KEY `id_supplier` (`id_supplier`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `reference` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2supply_order`
--

LOCK TABLES `ps_2supply_order` WRITE;
/*!40000 ALTER TABLE `ps_2supply_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2supply_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2supply_order_detail`
--

DROP TABLE IF EXISTS `ps_2supply_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2supply_order_detail` (
  `id_supply_order_detail` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order` int(11) unsigned NOT NULL,
  `id_currency` int(11) unsigned NOT NULL,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `reference` varchar(32) NOT NULL,
  `supplier_reference` varchar(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `exchange_rate` decimal(20,6) DEFAULT '0.000000',
  `unit_price_te` decimal(20,6) DEFAULT '0.000000',
  `quantity_expected` int(11) unsigned NOT NULL,
  `quantity_received` int(11) unsigned NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `price_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `tax_rate` decimal(20,6) DEFAULT '0.000000',
  `tax_value` decimal(20,6) DEFAULT '0.000000',
  `price_ti` decimal(20,6) DEFAULT '0.000000',
  `tax_value_with_order_discount` decimal(20,6) DEFAULT '0.000000',
  `price_with_order_discount_te` decimal(20,6) DEFAULT '0.000000',
  PRIMARY KEY (`id_supply_order_detail`),
  KEY `id_supply_order` (`id_supply_order`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_product_product_attribute` (`id_product`,`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2supply_order_detail`
--

LOCK TABLES `ps_2supply_order_detail` WRITE;
/*!40000 ALTER TABLE `ps_2supply_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2supply_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2supply_order_history`
--

DROP TABLE IF EXISTS `ps_2supply_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2supply_order_history` (
  `id_supply_order_history` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `id_state` int(11) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_supply_order_history`),
  KEY `id_supply_order` (`id_supply_order`),
  KEY `id_employee` (`id_employee`),
  KEY `id_state` (`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2supply_order_history`
--

LOCK TABLES `ps_2supply_order_history` WRITE;
/*!40000 ALTER TABLE `ps_2supply_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2supply_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2supply_order_receipt_history`
--

DROP TABLE IF EXISTS `ps_2supply_order_receipt_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2supply_order_receipt_history` (
  `id_supply_order_receipt_history` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order_detail` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `id_supply_order_state` int(11) unsigned NOT NULL,
  `quantity` int(11) unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_supply_order_receipt_history`),
  KEY `id_supply_order_detail` (`id_supply_order_detail`),
  KEY `id_supply_order_state` (`id_supply_order_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2supply_order_receipt_history`
--

LOCK TABLES `ps_2supply_order_receipt_history` WRITE;
/*!40000 ALTER TABLE `ps_2supply_order_receipt_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2supply_order_receipt_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2supply_order_state`
--

DROP TABLE IF EXISTS `ps_2supply_order_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2supply_order_state` (
  `id_supply_order_state` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `delivery_note` tinyint(1) NOT NULL DEFAULT '0',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  `receipt_state` tinyint(1) NOT NULL DEFAULT '0',
  `pending_receipt` tinyint(1) NOT NULL DEFAULT '0',
  `enclosed` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_supply_order_state`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2supply_order_state`
--

LOCK TABLES `ps_2supply_order_state` WRITE;
/*!40000 ALTER TABLE `ps_2supply_order_state` DISABLE KEYS */;
INSERT INTO `ps_2supply_order_state` VALUES (1,0,1,0,0,0,'#faab00'),(2,1,0,0,0,0,'#273cff'),(3,0,0,0,1,0,'#ff37f5'),(4,0,0,1,1,0,'#ff3e33'),(5,0,0,1,0,1,'#00d60c'),(6,0,0,0,0,1,'#666666');
/*!40000 ALTER TABLE `ps_2supply_order_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2supply_order_state_lang`
--

DROP TABLE IF EXISTS `ps_2supply_order_state_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2supply_order_state_lang` (
  `id_supply_order_state` int(11) unsigned NOT NULL,
  `id_lang` int(11) unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_supply_order_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2supply_order_state_lang`
--

LOCK TABLES `ps_2supply_order_state_lang` WRITE;
/*!40000 ALTER TABLE `ps_2supply_order_state_lang` DISABLE KEYS */;
INSERT INTO `ps_2supply_order_state_lang` VALUES (1,1,'1 - Creation in progress'),(1,2,'1 - Creation in progress'),(1,3,'1 - Creation in progress'),(1,4,'1 - Creation in progress'),(1,5,'1 - Création en cours'),(1,6,'1 - Cretion in progress'),(1,7,'1 - Creation in progress'),(1,8,'1 - Creation in progress'),(2,1,'2 - Order validated'),(2,2,'2 - Order validated'),(2,3,'2 - Order validated'),(2,4,'2 - Order validated'),(2,5,'2 - Commande validée'),(2,6,'2 - Order validated'),(2,7,'2 - Order validated'),(2,8,'2 - Order validated'),(3,1,'3 - Pending receipt'),(3,2,'3 - Pending receipt'),(3,3,'3 - Pending receipt'),(3,4,'3 - Pending receipt'),(3,5,'3 - En attente de réception'),(3,6,'3 - Pending receipt'),(3,7,'3 - Pending receipt'),(3,8,'3 - Pending receipt'),(4,1,'4 - Order received in part'),(4,2,'4 - Order received in part'),(4,3,'4 - Order received in part'),(4,4,'4 - Order received in part'),(4,5,'4 - Commande réceptionnée partiellement'),(4,6,'4 - Order received in part'),(4,7,'4 - Order received in part'),(4,8,'4 - Order received in part'),(5,1,'5 - Order received completely'),(5,2,'5 - Order received completely'),(5,3,'5 - Order received completely'),(5,4,'5 - Order received completely'),(5,5,'5 - Commande réceptionnée totalement'),(5,6,'5 - Order received completely'),(5,7,'5 - Order received completely'),(5,8,'5 - Order received completely'),(6,1,'6 - Order canceled'),(6,2,'6 - Order canceled'),(6,3,'6 - Order canceled'),(6,4,'6 - Order canceled'),(6,5,'6 - Commande annulée'),(6,6,'6 - Order canceled'),(6,7,'6 - Order canceled'),(6,8,'6 - Order canceled');
/*!40000 ALTER TABLE `ps_2supply_order_state_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2tab`
--

DROP TABLE IF EXISTS `ps_2tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2tab` (
  `id_tab` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int(11) NOT NULL,
  `class_name` varchar(64) NOT NULL,
  `module` varchar(64) DEFAULT NULL,
  `position` int(10) unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_tab`),
  KEY `class_name` (`class_name`),
  KEY `id_parent` (`id_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2tab`
--

LOCK TABLES `ps_2tab` WRITE;
/*!40000 ALTER TABLE `ps_2tab` DISABLE KEYS */;
INSERT INTO `ps_2tab` VALUES (1,-1,'AdminHome','',0,1),(2,-1,'AdminCms','',1,1),(3,-1,'AdminCmsCategories','',2,1),(4,-1,'AdminAttributeGenerator','',3,1),(5,-1,'AdminSearch','',4,1),(6,-1,'AdminLogin','',5,1),(7,-1,'AdminShop','',6,1),(8,-1,'AdminShopUrl','',7,1),(9,0,'AdminCatalog','',0,1),(10,0,'AdminParentOrders','',1,1),(11,0,'AdminParentCustomer','',2,1),(12,0,'AdminPriceRule','',3,1),(13,0,'AdminParentShipping','',4,1),(14,0,'AdminParentLocalization','',5,1),(15,0,'AdminParentModules','',6,1),(16,0,'AdminParentPreferences','',7,1),(17,0,'AdminTools','',8,1),(18,0,'AdminAdmin','',9,1),(19,0,'AdminParentStats','',10,1),(20,0,'AdminStock','',11,1),(21,9,'AdminProducts','',0,1),(22,9,'AdminCategories','',1,1),(23,9,'AdminTracking','',2,1),(24,9,'AdminAttributesGroups','',3,1),(25,9,'AdminFeatures','',4,1),(26,9,'AdminManufacturers','',5,1),(27,9,'AdminSuppliers','',6,1),(28,9,'AdminScenes','',7,1),(29,9,'AdminTags','',8,1),(30,9,'AdminAttachments','',9,1),(31,10,'AdminOrders','',0,1),(32,10,'AdminInvoices','',1,1),(33,10,'AdminReturn','',2,1),(34,10,'AdminDeliverySlip','',3,1),(35,10,'AdminSlip','',4,1),(36,10,'AdminStatuses','',5,1),(37,10,'AdminOrderMessage','',6,1),(38,11,'AdminCustomers','',0,1),(39,11,'AdminAddresses','',1,1),(40,11,'AdminGroups','',2,1),(41,11,'AdminCarts','',3,1),(42,11,'AdminCustomerThreads','',4,1),(43,11,'AdminContacts','',5,1),(44,11,'AdminGenders','',6,1),(45,11,'AdminOutstanding','',7,0),(46,12,'AdminCartRules','',0,1),(47,12,'AdminSpecificPriceRule','',1,1),(48,13,'AdminShipping','',0,1),(49,13,'AdminCarriers','',1,1),(50,13,'AdminRangePrice','',2,1),(51,13,'AdminRangeWeight','',3,1),(52,14,'AdminLocalization','',0,1),(53,14,'AdminLanguages','',1,1),(54,14,'AdminZones','',2,1),(55,14,'AdminCountries','',3,1),(56,14,'AdminStates','',4,1),(57,14,'AdminCurrencies','',5,1),(58,14,'AdminTaxes','',6,1),(59,14,'AdminTaxRulesGroup','',7,1),(60,14,'AdminTranslations','',8,1),(61,15,'AdminModules','',0,1),(62,15,'AdminAddonsCatalog','',1,1),(63,15,'AdminModulesPositions','',2,1),(64,15,'AdminPayment','',3,1),(65,16,'AdminPreferences','',0,1),(66,16,'AdminOrderPreferences','',1,1),(67,16,'AdminPPreferences','',2,1),(68,16,'AdminCustomerPreferences','',3,1),(69,16,'AdminThemes','',4,1),(70,16,'AdminMeta','',5,1),(71,16,'AdminCmsContent','',6,1),(72,16,'AdminImages','',7,1),(73,16,'AdminStores','',8,1),(74,16,'AdminSearchConf','',9,1),(75,16,'AdminMaintenance','',10,1),(76,16,'AdminGeolocation','',11,1),(77,17,'AdminInformation','',0,1),(78,17,'AdminPerformance','',1,1),(79,17,'AdminEmails','',2,1),(80,17,'AdminShopGroup','',3,0),(81,17,'AdminImport','',4,1),(82,17,'AdminBackup','',5,1),(83,17,'AdminRequestSql','',6,1),(84,17,'AdminLogs','',7,1),(85,17,'AdminWebservice','',8,1),(86,18,'AdminAdminPreferences','',0,1),(87,18,'AdminQuickAccesses','',1,1),(88,18,'AdminEmployees','',2,1),(89,18,'AdminProfiles','',3,1),(90,18,'AdminAccess','',4,1),(91,18,'AdminTabs','',5,1),(92,19,'AdminStats','',0,1),(93,19,'AdminSearchEngines','',1,1),(94,19,'AdminReferrers','',2,1),(95,20,'AdminWarehouses','',0,1),(96,20,'AdminStockManagement','',1,1),(97,20,'AdminStockMvt','',2,1),(98,20,'AdminStockInstantState','',3,1),(99,20,'AdminStockCover','',4,1),(100,20,'AdminSupplyOrders','',5,1),(101,20,'AdminStockConfiguration','',6,1);
/*!40000 ALTER TABLE `ps_2tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2tab_lang`
--

DROP TABLE IF EXISTS `ps_2tab_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2tab_lang` (
  `id_tab` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_tab`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2tab_lang`
--

LOCK TABLES `ps_2tab_lang` WRITE;
/*!40000 ALTER TABLE `ps_2tab_lang` DISABLE KEYS */;
INSERT INTO `ps_2tab_lang` VALUES (1,1,'Home'),(1,2,'Home'),(1,3,'Home'),(1,4,'Inicio'),(1,5,'Accueil'),(1,6,'Home'),(1,7,'Inicio'),(1,8,'Inicio'),(2,1,'CMS Pages'),(2,2,'CMS Pages'),(2,3,'CMS-Seiten'),(2,4,'Páginas CMS'),(2,5,'Pages CMS'),(2,6,'Pagine CMS'),(2,7,'Páginas CMS'),(2,8,'Páginas CMS'),(3,1,'CMS Categories'),(3,2,'CMS Categories'),(3,3,'CMS-Kategorien'),(3,4,'Categorías CMS'),(3,5,'Catégories CMS'),(3,6,'Categorie CMS'),(3,7,'Categorías CMS'),(3,8,'Categorías CMS'),(4,1,'Combinations Generator'),(4,2,'Combinations Generator'),(4,3,'Kombinationsgenerator'),(4,4,'Generador de combinaciones'),(4,5,'Générateur de déclinaisons'),(4,6,'Generatore di combinazioni'),(4,7,'Generador de combinaciones'),(4,8,'Generador de combinaciones'),(5,1,'Search'),(5,2,'Search'),(5,3,'Suche'),(5,4,'Búsqueda'),(5,5,'Recherche'),(5,6,'Cerca'),(5,7,'Búsqueda'),(5,8,'Búsqueda'),(6,1,'Login'),(6,2,'Login'),(6,3,'Anmeldung'),(6,4,'Login'),(6,5,'Connexion'),(6,6,'Login'),(6,7,'Login'),(6,8,'Login'),(7,1,'Shops'),(7,2,'Shops'),(7,3,'Shops'),(7,4,'Tiendas'),(7,5,'Boutiques'),(7,6,'Negozi'),(7,7,'Tiendas'),(7,8,'Tiendas'),(8,1,'Shop URLs'),(8,2,'Shop URLs'),(8,3,'Shop URLs'),(8,4,'URL de las tiendas'),(8,5,'URLs de boutique'),(8,6,'Url Negozio'),(8,7,'URL de las tiendas'),(8,8,'URL de las tiendas'),(9,1,'Catalog'),(9,2,'Catálogo'),(9,3,'Katalog'),(9,4,'Catálogo'),(9,5,'Catalogue'),(9,6,'Catalogo'),(9,7,'Catálogo'),(9,8,'Catálogo'),(10,1,'Orders'),(10,2,'Pedidos'),(10,3,'Bestellungen'),(10,4,'Pedidos'),(10,5,'Commandes'),(10,6,'Ordini'),(10,7,'Pedidos'),(10,8,'Pedidos'),(11,1,'Customers'),(11,2,'Clientes'),(11,3,'Kunden'),(11,4,'Clientes'),(11,5,'Clients'),(11,6,'Clienti'),(11,7,'Clientes'),(11,8,'Clientes'),(12,1,'Price Rules'),(12,2,'Regras para preço'),(12,3,'Preisregeln'),(12,4,'Reglas de precios'),(12,5,'Promotions'),(12,6,'Regole Prezzi'),(12,7,'Reglas de precios'),(12,8,'Reglas de precios'),(13,1,'Shipping'),(13,2,'Entrega'),(13,3,'Versand'),(13,4,'Envío'),(13,5,'Transport'),(13,6,'Spedizione'),(13,7,'Envío'),(13,8,'Envío'),(14,1,'Localization'),(14,2,'Localização'),(14,3,'Lokalisierung'),(14,4,'Localización'),(14,5,'Localisation'),(14,6,'Localizzazione'),(14,7,'Localización'),(14,8,'Localización'),(15,1,'Modules'),(15,2,'Módulos'),(15,3,'Module'),(15,4,'Módulos'),(15,5,'Modules'),(15,6,'Moduli'),(15,7,'Módulos'),(15,8,'Módulos'),(16,1,'Preferences'),(16,2,'Preferências'),(16,3,'Voreinstellungen'),(16,4,'Preferencias'),(16,5,'Préférences'),(16,6,'Preferenze'),(16,7,'Preferencias'),(16,8,'Preferencias'),(17,1,'Advanced Parameters'),(17,2,'Parâmetros Avançados'),(17,3,'Erweiterte Parameter'),(17,4,'Parametros avanzados'),(17,5,'Paramètres avancés'),(17,6,'Parametri Avanzati'),(17,7,'Parametros avanzados'),(17,8,'Parametros avanzados'),(18,1,'Administration'),(18,2,'Administração'),(18,3,'Verwaltung'),(18,4,'Administración'),(18,5,'Administration'),(18,6,'Amministrazione'),(18,7,'Administración'),(18,8,'Administración'),(19,1,'Stats'),(19,2,'Estatísticas'),(19,3,'Statistiken'),(19,4,'Estadísticas'),(19,5,'Stats'),(19,6,'Statistiche'),(19,7,'Estadísticas'),(19,8,'Estadísticas'),(20,1,'Stock'),(20,2,'Stock'),(20,3,'Lager'),(20,4,'Existencias'),(20,5,'Stock'),(20,6,'Magazzino'),(20,7,'Existencias'),(20,8,'Existencias'),(21,1,'Products'),(21,2,'Products'),(21,3,'Produkte'),(21,4,'Productos'),(21,5,'Produits'),(21,6,'Prodotti'),(21,7,'Productos'),(21,8,'Productos'),(22,1,'Categories'),(22,2,'Categories'),(22,3,'Kategorien'),(22,4,'Categorías'),(22,5,'Catégories'),(22,6,'Categorie'),(22,7,'Categorías'),(22,8,'Categorías'),(23,1,'Monitoring'),(23,2,'Monitoring'),(23,3,'Kontrollübersicht'),(23,4,'Monitoreo'),(23,5,'Suivi'),(23,6,'Monitoring'),(23,7,'Monitoreo'),(23,8,'Monitoreo'),(24,1,'Attributes and Values'),(24,2,'Attributes and Values'),(24,3,'Attribute und Werte'),(24,4,'Atributos y Valores'),(24,5,'Attributs et Valeurs'),(24,6,'Attributi e Valori'),(24,7,'Atributos y Valores'),(24,8,'Atributos y Valores'),(25,1,'Features'),(25,2,'Features'),(25,3,'Produktmerkmale'),(25,4,'Características'),(25,5,'Caractéristiques'),(25,6,'Caratteristiche'),(25,7,'Características'),(25,8,'Características'),(26,1,'Manufacturers'),(26,2,'Manufacturers'),(26,3,'Hersteller'),(26,4,'Fabricantes'),(26,5,'Marques'),(26,6,'Produttori'),(26,7,'Fabricantes'),(26,8,'Fabricantes'),(27,1,'Suppliers'),(27,2,'Suppliers'),(27,3,'Zulieferer'),(27,4,'Distribuidores'),(27,5,'Fournisseurs'),(27,6,'Fornitori'),(27,7,'Distribuidores'),(27,8,'Distribuidores'),(28,1,'Image Mapping'),(28,2,'Image Mapping'),(28,3,'Bild-Diagramme'),(28,4,'Mapeo de imágenes'),(28,5,'Scènes'),(28,6,'Mappatura Immagine'),(28,7,'Mapeo de imágenes'),(28,8,'Mapeo de imágenes'),(29,1,'Tags'),(29,2,'Tags'),(29,3,'Tags'),(29,4,'Etiquetas'),(29,5,'Tags'),(29,6,'Tags'),(29,7,'Etiquetas'),(29,8,'Etiquetas'),(30,1,'Attachments'),(30,2,'Attachments'),(30,3,'Anhänge'),(30,4,'Adjuntos'),(30,5,'Documents joints'),(30,6,'Allegati'),(30,7,'Adjuntos'),(30,8,'Adjuntos'),(31,1,'Orders'),(31,2,'Orders'),(31,3,'Bestellungen'),(31,4,'Pedidos'),(31,5,'Commandes'),(31,6,'Ordini'),(31,7,'Pedidos'),(31,8,'Pedidos'),(32,1,'Invoices'),(32,2,'Invoices'),(32,3,'Rechnungen'),(32,4,'Facturas'),(32,5,'Factures'),(32,6,'Fatture'),(32,7,'Facturas'),(32,8,'Facturas'),(33,1,'Merchandise Returns'),(33,2,'Merchandise Returns'),(33,3,'Warenrücksendungen'),(33,4,'Retorno de mercancía'),(33,5,'Retours produits'),(33,6,'Resi Prodotti'),(33,7,'Retorno de mercancía'),(33,8,'Retorno de mercancía'),(34,1,'Delivery Slips'),(34,2,'Delivery Slips'),(34,3,'Lieferscheine'),(34,4,'Comprobantes de entrega'),(34,5,'Bons de livraison'),(34,6,'Note di credito'),(34,7,'Comprobantes de entrega'),(34,8,'Comprobantes de entrega'),(35,1,'Credit Slips'),(35,2,'Credit Slips'),(35,3,'Gutschriften'),(35,4,'Creditos'),(35,5,'Avoirs'),(35,6,'Resi Clienti'),(35,7,'Creditos'),(35,8,'Creditos'),(36,1,'Statuses'),(36,2,'Statuses'),(36,3,'Status'),(36,4,'Estados'),(36,5,'Statuts'),(36,6,'Stati Ordine'),(36,7,'Estados'),(36,8,'Estados'),(37,1,'Order Messages'),(37,2,'Order Messages'),(37,3,'Bestellnachrichten'),(37,4,'Mensajes de pedidos'),(37,5,'Messages prédéfinis'),(37,6,'Messaggi ordine'),(37,7,'Mensajes de pedidos'),(37,8,'Mensajes de pedidos'),(38,1,'Customers'),(38,2,'Customers'),(38,3,'Kunden'),(38,4,'Clientes'),(38,5,'Clients'),(38,6,'Clienti'),(38,7,'Clientes'),(38,8,'Clientes'),(39,1,'Addresses'),(39,2,'Addresses'),(39,3,'Adressen'),(39,4,'Direcciones'),(39,5,'Adresses'),(39,6,'Indirizzi'),(39,7,'Direcciones'),(39,8,'Direcciones'),(40,1,'Groups'),(40,2,'Groups'),(40,3,'Gruppen'),(40,4,'Grupos'),(40,5,'Groupes'),(40,6,'Gruppi'),(40,7,'Grupos'),(40,8,'Grupos'),(41,1,'Shopping Carts'),(41,2,'Shopping Carts'),(41,3,'Warenkörbe'),(41,4,'Carro de compras'),(41,5,'Paniers'),(41,6,'Carrelli'),(41,7,'Carro de compras'),(41,8,'Carro de compras'),(42,1,'Customer Service'),(42,2,'Customer Service'),(42,3,'Kundenservice'),(42,4,'Atención al cliente'),(42,5,'SAV'),(42,6,'Servizio clienti'),(42,7,'Atención al cliente'),(42,8,'Atención al cliente'),(43,1,'Contacts'),(43,2,'Contacts'),(43,3,'Kontakte'),(43,4,'Contacto'),(43,5,'Contacts'),(43,6,'Contatti'),(43,7,'Contacto'),(43,8,'Contacto'),(44,1,'Titles'),(44,2,'Titles'),(44,3,'Geschlechter'),(44,4,'Generos'),(44,5,'Titres de civilité'),(44,6,'Genere'),(44,7,'Generos'),(44,8,'Generos'),(45,1,'Outstanding'),(45,2,'Outstanding'),(45,3,'Offene Forderungen'),(45,4,'No resuelto'),(45,5,'Encours'),(45,6,'Insoluti'),(45,7,'No resuelto'),(45,8,'No resuelto'),(46,1,'Cart Rules'),(46,2,'Cart Rules'),(46,3,'Warenkorb Preisregeln'),(46,4,'Reglas de cesta'),(46,5,'Règles paniers'),(46,6,'Regole Carrello'),(46,7,'Reglas de cesta'),(46,8,'Reglas de cesta'),(47,1,'Catalog Price Rules'),(47,2,'Catalog Price Rules'),(47,3,'Katalog Preisregeln'),(47,4,'Reglas de precio del catálogo'),(47,5,'Règles de prix catalogue'),(47,6,'Regole catalogo prezzi'),(47,7,'Reglas de precio del catálogo'),(47,8,'Reglas de precio del catálogo'),(48,1,'Shipping'),(48,2,'Shipping'),(48,3,'Versand'),(48,4,'Envío'),(48,5,'Transport'),(48,6,'Spedizione'),(48,7,'Envío'),(48,8,'Envío'),(49,1,'Carriers'),(49,2,'Carriers'),(49,3,'Versanddienste'),(49,4,'Transportistas'),(49,5,'Transporteurs'),(49,6,'Corrieri'),(49,7,'Transportistas'),(49,8,'Transportistas'),(50,1,'Price Ranges'),(50,2,'Price Ranges'),(50,3,'Preisklassen'),(50,4,'Rangos de precio'),(50,5,'Tranches de prix'),(50,6,'Range di prezzi'),(50,7,'Rangos de precio'),(50,8,'Rangos de precio'),(51,1,'Weight Ranges'),(51,2,'Weight Ranges'),(51,3,'Gewichtsklassen'),(51,4,'Rangos de peso'),(51,5,'Tranches de poids'),(51,6,'Range di pesi'),(51,7,'Rangos de peso'),(51,8,'Rangos de peso'),(52,1,'Localization'),(52,2,'Localization'),(52,3,'Lokalisierung'),(52,4,'Localización'),(52,5,'Localisation'),(52,6,'Localizzazione'),(52,7,'Localización'),(52,8,'Localización'),(53,1,'Languages'),(53,2,'Languages'),(53,3,'Sprachen'),(53,4,'Idiomas'),(53,5,'Langues'),(53,6,'Lingue'),(53,7,'Idiomas'),(53,8,'Idiomas'),(54,1,'Zones'),(54,2,'Zones'),(54,3,'Zonen'),(54,4,'Zonas'),(54,5,'Zones'),(54,6,'Zone'),(54,7,'Zonas'),(54,8,'Zonas'),(55,1,'Countries'),(55,2,'Countries'),(55,3,'Länder'),(55,4,'Países'),(55,5,'Pays'),(55,6,'Nazioni'),(55,7,'Países'),(55,8,'Países'),(56,1,'States'),(56,2,'States'),(56,3,'Staaten'),(56,4,'Estados'),(56,5,'Etats'),(56,6,'Stati'),(56,7,'Estados'),(56,8,'Estados'),(57,1,'Currencies'),(57,2,'Currencies'),(57,3,'Währungen'),(57,4,'Monedas'),(57,5,'Devises'),(57,6,'Valute'),(57,7,'Monedas'),(57,8,'Monedas'),(58,1,'Taxes'),(58,2,'Taxes'),(58,3,'Steuern'),(58,4,'Impuestos'),(58,5,'Taxes'),(58,6,'Tasse'),(58,7,'Impuestos'),(58,8,'Impuestos'),(59,1,'Tax Rules'),(59,2,'Tax Rules'),(59,3,'Steuerregeln'),(59,4,'Reglas de impuestos'),(59,5,'Règles de taxes'),(59,6,'Regole Tasse'),(59,7,'Reglas de impuestos'),(59,8,'Reglas de impuestos'),(60,1,'Translations'),(60,2,'Translations'),(60,3,'Übersetzungen'),(60,4,'Traducciones'),(60,5,'Traductions'),(60,6,'Traduzioni'),(60,7,'Traducciones'),(60,8,'Traducciones'),(61,1,'Modules'),(61,2,'Modules'),(61,3,'Module'),(61,4,'Módulos'),(61,5,'Modules'),(61,6,'Moduli'),(61,7,'Módulos'),(61,8,'Módulos'),(62,1,'Modules & Themes Catalog'),(62,2,'Modules & Themes Catalog'),(62,3,'Module & Themenkatalog'),(62,4,'Catálogo de modulos y temas'),(62,5,'Catalogue de modules et thèmes'),(62,6,'Catalogo moduli e temi'),(62,7,'Catálogo de modulos y temas'),(62,8,'Catálogo de modulos y temas'),(63,1,'Positions'),(63,2,'Positions'),(63,3,'Postionen'),(63,4,'Posiciones'),(63,5,'Positions'),(63,6,'Posizioni'),(63,7,'Posiciones'),(63,8,'Posiciones'),(64,1,'Payment'),(64,2,'Payment'),(64,3,'Zahlung'),(64,4,'Pago'),(64,5,'Paiement'),(64,6,'Pagamenti'),(64,7,'Pago'),(64,8,'Pago'),(65,1,'General'),(65,2,'General'),(65,3,'Allgemein'),(65,4,'General'),(65,5,'Générales'),(65,6,'Generale'),(65,7,'General'),(65,8,'General'),(66,1,'Orders'),(66,2,'Orders'),(66,3,'Bestellungen'),(66,4,'Pedidos'),(66,5,'Commandes'),(66,6,'Ordini'),(66,7,'Pedidos'),(66,8,'Pedidos'),(67,1,'Products'),(67,2,'Products'),(67,3,'Produkte'),(67,4,'Productos'),(67,5,'Produits'),(67,6,'Prodotti'),(67,7,'Productos'),(67,8,'Productos'),(68,1,'Customers'),(68,2,'Customers'),(68,3,'Kunden'),(68,4,'Clientes'),(68,5,'Clients'),(68,6,'Clienti'),(68,7,'Clientes'),(68,8,'Clientes'),(69,1,'Themes'),(69,2,'Themes'),(69,3,'Themen'),(69,4,'Temas'),(69,5,'Thèmes'),(69,6,'Temi'),(69,7,'Temas'),(69,8,'Temas'),(70,1,'SEO & URLs'),(70,2,'SEO & URLs'),(70,3,'SEO & URLs'),(70,4,'SEO y URL'),(70,5,'SEO & URLs'),(70,6,'URL e SEO'),(70,7,'SEO y URL'),(70,8,'SEO y URL'),(71,1,'CMS'),(71,2,'CMS'),(71,3,'CMS'),(71,4,'CMS'),(71,5,'CMS'),(71,6,'CMS'),(71,7,'CMS'),(71,8,'CMS'),(72,1,'Images'),(72,2,'Images'),(72,3,'Bilder'),(72,4,'Imágenes'),(72,5,'Images'),(72,6,'Immagini'),(72,7,'Imágenes'),(72,8,'Imágenes'),(73,1,'Store Contacts'),(73,2,'Store Contacts'),(73,3,'Shopadressen'),(73,4,'Contacto y tiendas'),(73,5,'Coordonnées & magasins'),(73,6,'Contatti e Negozi'),(73,7,'Contacto y tiendas'),(73,8,'Contacto y tiendas'),(74,1,'Search'),(74,2,'Search'),(74,3,'Suche'),(74,4,'Búsqueda'),(74,5,'Recherche'),(74,6,'Ricerca'),(74,7,'Búsqueda'),(74,8,'Búsqueda'),(75,1,'Maintenance'),(75,2,'Maintenance'),(75,3,'Wartung'),(75,4,'Mantenimiento'),(75,5,'Maintenance'),(75,6,'Manutenzione'),(75,7,'Mantenimiento'),(75,8,'Mantenimiento'),(76,1,'Geolocation'),(76,2,'Geolocation'),(76,3,'Geotargeting'),(76,4,'Geolocalización'),(76,5,'Géolocalisation'),(76,6,'Geolocalizzazione'),(76,7,'Geolocalización'),(76,8,'Geolocalización'),(77,1,'Configuration Information'),(77,2,'Configuration Information'),(77,3,'Konfigurationsinformationen'),(77,4,'Información de configuración'),(77,5,'Informations'),(77,6,'Informazioni configurazione'),(77,7,'Información de configuración'),(77,8,'Información de configuración'),(78,1,'Performance'),(78,2,'Performance'),(78,3,'Leistung'),(78,4,'Rendimiento'),(78,5,'Performances'),(78,6,'Performance'),(78,7,'Rendimiento'),(78,8,'Rendimiento'),(79,1,'E-mail'),(79,2,'E-mail'),(79,3,'E-Mail'),(79,4,'E-mail'),(79,5,'Emails'),(79,6,'E-mail'),(79,7,'E-mail'),(79,8,'E-mail'),(80,1,'Multistore'),(80,2,'Multistore'),(80,3,'Shopgruppe'),(80,4,'Multi-tienda'),(80,5,'Multiboutique'),(80,6,'Multi-negozio'),(80,7,'Multi-tienda'),(80,8,'Multi-tienda'),(81,1,'CSV Import'),(81,2,'CSV Import'),(81,3,'CSV Import'),(81,4,'Importar CVS'),(81,5,'Import'),(81,6,'Import CSV'),(81,7,'Importar CVS'),(81,8,'Importar CVS'),(82,1,'DB Backup'),(82,2,'DB Backup'),(82,3,'DB-Sicherung'),(82,4,'Backup de BD'),(82,5,'Sauvegarde BDD'),(82,6,'Backup DB'),(82,7,'Backup de BD'),(82,8,'Backup de BD'),(83,1,'SQL Manager'),(83,2,'SQL Manager'),(83,3,'SQL Manager'),(83,4,'Administrador SQL'),(83,5,'SQL Manager'),(83,6,'SQL Manager'),(83,7,'Administrador SQL'),(83,8,'Administrador SQL'),(84,1,'Logs'),(84,2,'Logs'),(84,3,'Log'),(84,4,'Registros'),(84,5,'Log'),(84,6,'Logs'),(84,7,'Registros'),(84,8,'Registros'),(85,1,'Webservice'),(85,2,'Webservice'),(85,3,'Webservice'),(85,4,'Servicio web'),(85,5,'Service web'),(85,6,'Webservice'),(85,7,'Servicio web'),(85,8,'Servicio web'),(86,1,'Preferences'),(86,2,'Preferences'),(86,3,'Voreinstellungen'),(86,4,'Preferencias'),(86,5,'Préférences'),(86,6,'Preferenze'),(86,7,'Preferencias'),(86,8,'Preferencias'),(87,1,'Quick Access'),(87,2,'Quick Access'),(87,3,'Schnellzugriff'),(87,4,'Acceso rápido'),(87,5,'Accès rapide'),(87,6,'Accesso Rapido'),(87,7,'Acceso rápido'),(87,8,'Acceso rápido'),(88,1,'Employees'),(88,2,'Employees'),(88,3,'Mitarbeiter'),(88,4,'Empleados'),(88,5,'Employés'),(88,6,'Impiegati'),(88,7,'Empleados'),(88,8,'Empleados'),(89,1,'Profiles'),(89,2,'Profiles'),(89,3,'Profile'),(89,4,'Perfiles'),(89,5,'Profils'),(89,6,'Profili'),(89,7,'Perfiles'),(89,8,'Perfiles'),(90,1,'Permissions'),(90,2,'Permissions'),(90,3,'Berechtigungen'),(90,4,'Permisos'),(90,5,'Permissions'),(90,6,'Permessi'),(90,7,'Permisos'),(90,8,'Permisos'),(91,1,'Menus'),(91,2,'Menus'),(91,3,'Tabs'),(91,4,'Pestañas'),(91,5,'Menus'),(91,6,'Tabs'),(91,7,'Pestañas'),(91,8,'Pestañas'),(92,1,'Stats'),(92,2,'Stats'),(92,3,'Statistiken'),(92,4,'Estadísticas'),(92,5,'Stats'),(92,6,'Statistiche'),(92,7,'Estadísticas'),(92,8,'Estadísticas'),(93,1,'Search Engines'),(93,2,'Search Engines'),(93,3,'Suchmaschinen'),(93,4,'Motores de búsqueda'),(93,5,'Moteurs de recherche'),(93,6,'Motori di ricerca'),(93,7,'Motores de búsqueda'),(93,8,'Motores de búsqueda'),(94,1,'Referrers'),(94,2,'Referrers'),(94,3,'Referrer'),(94,4,'Referidos'),(94,5,'Sites affluents'),(94,6,'Referenti'),(94,7,'Referidos'),(94,8,'Referidos'),(95,1,'Warehouses'),(95,2,'Warehouses'),(95,3,'Lagerhäuser'),(95,4,'Almacenes'),(95,5,'Entrepôts'),(95,6,'Magazzini'),(95,7,'Almacenes'),(95,8,'Almacenes'),(96,1,'Stock Management'),(96,2,'Stock Management'),(96,3,'Lagerverwaltung'),(96,4,'Administración de existencias'),(96,5,'Gestion du stock'),(96,6,'Gestione Magazzino'),(96,7,'Administración de existencias'),(96,8,'Administración de existencias'),(97,1,'Stock Movement'),(97,2,'Stock Movement'),(97,3,'Lagerbewegung'),(97,4,'Movimiento de existencias'),(97,5,'Mouvements de Stock'),(97,6,'Movimenti Magazzino'),(97,7,'Movimiento de existencias'),(97,8,'Movimiento de existencias'),(98,1,'Instant Stock Status'),(98,2,'Instant Stock Status'),(98,3,'Aktuelle Bestandsinformation'),(98,4,'Estado instantaneo de existencia'),(98,5,'Etat instantané du stock'),(98,6,'Stato Magazzino'),(98,7,'Estado instantaneo de existencia'),(98,8,'Estado instantaneo de existencia'),(99,1,'Stock Coverage'),(99,2,'Stock Coverage'),(99,3,'Berechnete Bestandsinformation'),(99,4,'Portada de existencias'),(99,5,'Couverture du stock'),(99,6,'Scorte'),(99,7,'Portada de existencias'),(99,8,'Portada de existencias'),(100,1,'Supply orders'),(100,2,'Supply orders'),(100,3,'Zulieferer-Bestellungen'),(100,4,'Pedidos de distribuidores'),(100,5,'Commandes fournisseurs'),(100,6,'Ordini fornitori'),(100,7,'Pedidos de distribuidores'),(100,8,'Pedidos de distribuidores'),(101,1,'Configuration'),(101,2,'Configuration'),(101,3,'Konfiguration'),(101,4,'Configuración'),(101,5,'Configuration'),(101,6,'Configurazione'),(101,7,'Configuración'),(101,8,'Configuración');
/*!40000 ALTER TABLE `ps_2tab_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2tag`
--

DROP TABLE IF EXISTS `ps_2tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2tag` (
  `id_tag` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_tag`),
  KEY `tag_name` (`name`),
  KEY `id_lang` (`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2tag`
--

LOCK TABLES `ps_2tag` WRITE;
/*!40000 ALTER TABLE `ps_2tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2tax`
--

DROP TABLE IF EXISTS `ps_2tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2tax` (
  `id_tax` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rate` decimal(10,3) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tax`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2tax`
--

LOCK TABLES `ps_2tax` WRITE;
/*!40000 ALTER TABLE `ps_2tax` DISABLE KEYS */;
INSERT INTO `ps_2tax` VALUES (1,18.000,1,0),(2,8.000,1,0),(3,4.000,1,0);
/*!40000 ALTER TABLE `ps_2tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2tax_lang`
--

DROP TABLE IF EXISTS `ps_2tax_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2tax_lang` (
  `id_tax` int(10) unsigned NOT NULL,
  `id_lang` int(10) unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_tax`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2tax_lang`
--

LOCK TABLES `ps_2tax_lang` WRITE;
/*!40000 ALTER TABLE `ps_2tax_lang` DISABLE KEYS */;
INSERT INTO `ps_2tax_lang` VALUES (1,1,'IVA ES 18%'),(1,2,'IVA ES 18%'),(1,3,'IVA ES 18%'),(1,4,'IVA ES 18%'),(1,5,'IVA ES 18%'),(1,6,'IVA ES 18%'),(1,7,'IVA ES 18%'),(1,8,'IVA ES 18%'),(2,1,'IVA ES 8%'),(2,2,'IVA ES 8%'),(2,3,'IVA ES 8%'),(2,4,'IVA ES 8%'),(2,5,'IVA ES 8%'),(2,6,'IVA ES 8%'),(2,7,'IVA ES 8%'),(2,8,'IVA ES 8%'),(3,1,'IVA ES 4%'),(3,2,'IVA ES 4%'),(3,3,'IVA ES 4%'),(3,4,'IVA ES 4%'),(3,5,'IVA ES 4%'),(3,6,'IVA ES 4%'),(3,7,'IVA ES 4%'),(3,8,'IVA ES 4%');
/*!40000 ALTER TABLE `ps_2tax_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2tax_rule`
--

DROP TABLE IF EXISTS `ps_2tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2tax_rule` (
  `id_tax_rule` int(11) NOT NULL AUTO_INCREMENT,
  `id_tax_rules_group` int(11) NOT NULL,
  `id_country` int(11) NOT NULL,
  `id_state` int(11) NOT NULL,
  `zipcode_from` varchar(12) NOT NULL,
  `zipcode_to` varchar(12) NOT NULL,
  `id_tax` int(11) NOT NULL,
  `behavior` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tax_rule`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`),
  KEY `id_tax` (`id_tax`),
  KEY `category_getproducts` (`id_tax_rules_group`,`id_country`,`id_state`,`zipcode_from`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2tax_rule`
--

LOCK TABLES `ps_2tax_rule` WRITE;
/*!40000 ALTER TABLE `ps_2tax_rule` DISABLE KEYS */;
INSERT INTO `ps_2tax_rule` VALUES (1,1,3,0,'0','0',1,0,''),(2,1,236,0,'0','0',1,0,''),(3,1,16,0,'0','0',1,0,''),(4,1,20,0,'0','0',1,0,''),(5,1,1,0,'0','0',1,0,''),(6,1,86,0,'0','0',1,0,''),(7,1,9,0,'0','0',1,0,''),(8,1,6,0,'0','0',1,0,''),(9,1,8,0,'0','0',1,0,''),(10,1,26,0,'0','0',1,0,''),(11,1,10,0,'0','0',1,0,''),(12,1,76,0,'0','0',1,0,''),(13,1,125,0,'0','0',1,0,''),(14,1,131,0,'0','0',1,0,''),(15,1,12,0,'0','0',1,0,''),(16,1,143,0,'0','0',1,0,''),(17,1,139,0,'0','0',1,0,''),(18,1,13,0,'0','0',1,0,''),(19,1,2,0,'0','0',1,0,''),(20,1,14,0,'0','0',1,0,''),(21,1,15,0,'0','0',1,0,''),(22,1,36,0,'0','0',1,0,''),(23,1,193,0,'0','0',1,0,''),(24,1,37,0,'0','0',1,0,''),(25,1,7,0,'0','0',1,0,''),(26,1,18,0,'0','0',1,0,''),(27,2,3,0,'0','0',2,0,''),(28,2,236,0,'0','0',2,0,''),(29,2,16,0,'0','0',2,0,''),(30,2,20,0,'0','0',2,0,''),(31,2,1,0,'0','0',2,0,''),(32,2,86,0,'0','0',2,0,''),(33,2,9,0,'0','0',2,0,''),(34,2,6,0,'0','0',2,0,''),(35,2,8,0,'0','0',2,0,''),(36,2,26,0,'0','0',2,0,''),(37,2,10,0,'0','0',2,0,''),(38,2,76,0,'0','0',2,0,''),(39,2,125,0,'0','0',2,0,''),(40,2,131,0,'0','0',2,0,''),(41,2,12,0,'0','0',2,0,''),(42,2,143,0,'0','0',2,0,''),(43,2,139,0,'0','0',2,0,''),(44,2,13,0,'0','0',2,0,''),(45,2,2,0,'0','0',2,0,''),(46,2,14,0,'0','0',2,0,''),(47,2,15,0,'0','0',2,0,''),(48,2,36,0,'0','0',2,0,''),(49,2,193,0,'0','0',2,0,''),(50,2,37,0,'0','0',2,0,''),(51,2,7,0,'0','0',2,0,''),(52,2,18,0,'0','0',2,0,''),(53,3,3,0,'0','0',3,0,''),(54,3,236,0,'0','0',3,0,''),(55,3,16,0,'0','0',3,0,''),(56,3,20,0,'0','0',3,0,''),(57,3,1,0,'0','0',3,0,''),(58,3,86,0,'0','0',3,0,''),(59,3,9,0,'0','0',3,0,''),(60,3,6,0,'0','0',3,0,''),(61,3,8,0,'0','0',3,0,''),(62,3,26,0,'0','0',3,0,''),(63,3,10,0,'0','0',3,0,''),(64,3,76,0,'0','0',3,0,''),(65,3,125,0,'0','0',3,0,''),(66,3,131,0,'0','0',3,0,''),(67,3,12,0,'0','0',3,0,''),(68,3,143,0,'0','0',3,0,''),(69,3,139,0,'0','0',3,0,''),(70,3,13,0,'0','0',3,0,''),(71,3,2,0,'0','0',3,0,''),(72,3,14,0,'0','0',3,0,''),(73,3,15,0,'0','0',3,0,''),(74,3,36,0,'0','0',3,0,''),(75,3,193,0,'0','0',3,0,''),(76,3,37,0,'0','0',3,0,''),(77,3,7,0,'0','0',3,0,''),(78,3,18,0,'0','0',3,0,''),(79,4,3,0,'0','0',3,0,''),(80,4,236,0,'0','0',3,0,''),(81,4,16,0,'0','0',3,0,''),(82,4,20,0,'0','0',3,0,''),(83,4,1,0,'0','0',3,0,''),(84,4,86,0,'0','0',3,0,''),(85,4,9,0,'0','0',3,0,''),(86,4,6,0,'0','0',3,0,''),(87,4,8,0,'0','0',3,0,''),(88,4,26,0,'0','0',3,0,''),(89,4,10,0,'0','0',3,0,''),(90,4,76,0,'0','0',3,0,''),(91,4,125,0,'0','0',3,0,''),(92,4,131,0,'0','0',3,0,''),(93,4,12,0,'0','0',3,0,''),(94,4,143,0,'0','0',3,0,''),(95,4,139,0,'0','0',3,0,''),(96,4,13,0,'0','0',3,0,''),(97,4,2,0,'0','0',3,0,''),(98,4,14,0,'0','0',3,0,''),(99,4,15,0,'0','0',3,0,''),(100,4,36,0,'0','0',3,0,''),(101,4,193,0,'0','0',3,0,''),(102,4,37,0,'0','0',3,0,''),(103,4,7,0,'0','0',3,0,''),(104,4,18,0,'0','0',3,0,''),(105,5,3,0,'0','0',3,0,''),(106,5,236,0,'0','0',3,0,''),(107,5,16,0,'0','0',3,0,''),(108,5,20,0,'0','0',3,0,''),(109,5,1,0,'0','0',3,0,''),(110,5,86,0,'0','0',3,0,''),(111,5,9,0,'0','0',3,0,''),(112,5,6,0,'0','0',3,0,''),(113,5,8,0,'0','0',3,0,''),(114,5,26,0,'0','0',3,0,''),(115,5,10,0,'0','0',3,0,''),(116,5,76,0,'0','0',3,0,''),(117,5,125,0,'0','0',3,0,''),(118,5,131,0,'0','0',3,0,''),(119,5,12,0,'0','0',3,0,''),(120,5,143,0,'0','0',3,0,''),(121,5,139,0,'0','0',3,0,''),(122,5,13,0,'0','0',3,0,''),(123,5,2,0,'0','0',3,0,''),(124,5,14,0,'0','0',3,0,''),(125,5,15,0,'0','0',3,0,''),(126,5,36,0,'0','0',3,0,''),(127,5,193,0,'0','0',3,0,''),(128,5,37,0,'0','0',3,0,''),(129,5,7,0,'0','0',3,0,''),(130,5,18,0,'0','0',3,0,'');
/*!40000 ALTER TABLE `ps_2tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2tax_rules_group`
--

DROP TABLE IF EXISTS `ps_2tax_rules_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2tax_rules_group` (
  `id_tax_rules_group` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `active` int(11) NOT NULL,
  PRIMARY KEY (`id_tax_rules_group`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2tax_rules_group`
--

LOCK TABLES `ps_2tax_rules_group` WRITE;
/*!40000 ALTER TABLE `ps_2tax_rules_group` DISABLE KEYS */;
INSERT INTO `ps_2tax_rules_group` VALUES (1,'ES Standard rate (18%)',1),(2,'ES Reduced Rate (8%)',1),(3,'ES Super Reduced Rate (4%)',1),(4,'ES Foodstuff Rate (4%)',1),(5,'ES Books Rate (4%)',1);
/*!40000 ALTER TABLE `ps_2tax_rules_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2tax_rules_group_shop`
--

DROP TABLE IF EXISTS `ps_2tax_rules_group_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2tax_rules_group_shop` (
  `id_tax_rules_group` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_tax_rules_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2tax_rules_group_shop`
--

LOCK TABLES `ps_2tax_rules_group_shop` WRITE;
/*!40000 ALTER TABLE `ps_2tax_rules_group_shop` DISABLE KEYS */;
INSERT INTO `ps_2tax_rules_group_shop` VALUES (1,1),(2,1),(3,1),(4,1),(5,1);
/*!40000 ALTER TABLE `ps_2tax_rules_group_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2theme`
--

DROP TABLE IF EXISTS `ps_2theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2theme` (
  `id_theme` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `directory` varchar(64) NOT NULL,
  PRIMARY KEY (`id_theme`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2theme`
--

LOCK TABLES `ps_2theme` WRITE;
/*!40000 ALTER TABLE `ps_2theme` DISABLE KEYS */;
INSERT INTO `ps_2theme` VALUES (1,'default','default');
/*!40000 ALTER TABLE `ps_2theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2theme_specific`
--

DROP TABLE IF EXISTS `ps_2theme_specific`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2theme_specific` (
  `id_theme` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  `entity` int(11) unsigned NOT NULL,
  `id_object` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_theme`,`id_shop`,`entity`,`id_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2theme_specific`
--

LOCK TABLES `ps_2theme_specific` WRITE;
/*!40000 ALTER TABLE `ps_2theme_specific` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2theme_specific` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2timezone`
--

DROP TABLE IF EXISTS `ps_2timezone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2timezone` (
  `id_timezone` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_timezone`)
) ENGINE=InnoDB AUTO_INCREMENT=561 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2timezone`
--

LOCK TABLES `ps_2timezone` WRITE;
/*!40000 ALTER TABLE `ps_2timezone` DISABLE KEYS */;
INSERT INTO `ps_2timezone` VALUES (1,'Africa/Abidjan'),(2,'Africa/Accra'),(3,'Africa/Addis_Ababa'),(4,'Africa/Algiers'),(5,'Africa/Asmara'),(6,'Africa/Asmera'),(7,'Africa/Bamako'),(8,'Africa/Bangui'),(9,'Africa/Banjul'),(10,'Africa/Bissau'),(11,'Africa/Blantyre'),(12,'Africa/Brazzaville'),(13,'Africa/Bujumbura'),(14,'Africa/Cairo'),(15,'Africa/Casablanca'),(16,'Africa/Ceuta'),(17,'Africa/Conakry'),(18,'Africa/Dakar'),(19,'Africa/Dar_es_Salaam'),(20,'Africa/Djibouti'),(21,'Africa/Douala'),(22,'Africa/El_Aaiun'),(23,'Africa/Freetown'),(24,'Africa/Gaborone'),(25,'Africa/Harare'),(26,'Africa/Johannesburg'),(27,'Africa/Kampala'),(28,'Africa/Khartoum'),(29,'Africa/Kigali'),(30,'Africa/Kinshasa'),(31,'Africa/Lagos'),(32,'Africa/Libreville'),(33,'Africa/Lome'),(34,'Africa/Luanda'),(35,'Africa/Lubumbashi'),(36,'Africa/Lusaka'),(37,'Africa/Malabo'),(38,'Africa/Maputo'),(39,'Africa/Maseru'),(40,'Africa/Mbabane'),(41,'Africa/Mogadishu'),(42,'Africa/Monrovia'),(43,'Africa/Nairobi'),(44,'Africa/Ndjamena'),(45,'Africa/Niamey'),(46,'Africa/Nouakchott'),(47,'Africa/Ouagadougou'),(48,'Africa/Porto-Novo'),(49,'Africa/Sao_Tome'),(50,'Africa/Timbuktu'),(51,'Africa/Tripoli'),(52,'Africa/Tunis'),(53,'Africa/Windhoek'),(54,'America/Adak'),(55,'America/Anchorage '),(56,'America/Anguilla'),(57,'America/Antigua'),(58,'America/Araguaina'),(59,'America/Argentina/Buenos_Aires'),(60,'America/Argentina/Catamarca'),(61,'America/Argentina/ComodRivadavia'),(62,'America/Argentina/Cordoba'),(63,'America/Argentina/Jujuy'),(64,'America/Argentina/La_Rioja'),(65,'America/Argentina/Mendoza'),(66,'America/Argentina/Rio_Gallegos'),(67,'America/Argentina/Salta'),(68,'America/Argentina/San_Juan'),(69,'America/Argentina/San_Luis'),(70,'America/Argentina/Tucuman'),(71,'America/Argentina/Ushuaia'),(72,'America/Aruba'),(73,'America/Asuncion'),(74,'America/Atikokan'),(75,'America/Atka'),(76,'America/Bahia'),(77,'America/Barbados'),(78,'America/Belem'),(79,'America/Belize'),(80,'America/Blanc-Sablon'),(81,'America/Boa_Vista'),(82,'America/Bogota'),(83,'America/Boise'),(84,'America/Buenos_Aires'),(85,'America/Cambridge_Bay'),(86,'America/Campo_Grande'),(87,'America/Cancun'),(88,'America/Caracas'),(89,'America/Catamarca'),(90,'America/Cayenne'),(91,'America/Cayman'),(92,'America/Chicago'),(93,'America/Chihuahua'),(94,'America/Coral_Harbour'),(95,'America/Cordoba'),(96,'America/Costa_Rica'),(97,'America/Cuiaba'),(98,'America/Curacao'),(99,'America/Danmarkshavn'),(100,'America/Dawson'),(101,'America/Dawson_Creek'),(102,'America/Denver'),(103,'America/Detroit'),(104,'America/Dominica'),(105,'America/Edmonton'),(106,'America/Eirunepe'),(107,'America/El_Salvador'),(108,'America/Ensenada'),(109,'America/Fort_Wayne'),(110,'America/Fortaleza'),(111,'America/Glace_Bay'),(112,'America/Godthab'),(113,'America/Goose_Bay'),(114,'America/Grand_Turk'),(115,'America/Grenada'),(116,'America/Guadeloupe'),(117,'America/Guatemala'),(118,'America/Guayaquil'),(119,'America/Guyana'),(120,'America/Halifax'),(121,'America/Havana'),(122,'America/Hermosillo'),(123,'America/Indiana/Indianapolis'),(124,'America/Indiana/Knox'),(125,'America/Indiana/Marengo'),(126,'America/Indiana/Petersburg'),(127,'America/Indiana/Tell_City'),(128,'America/Indiana/Vevay'),(129,'America/Indiana/Vincennes'),(130,'America/Indiana/Winamac'),(131,'America/Indianapolis'),(132,'America/Inuvik'),(133,'America/Iqaluit'),(134,'America/Jamaica'),(135,'America/Jujuy'),(136,'America/Juneau'),(137,'America/Kentucky/Louisville'),(138,'America/Kentucky/Monticello'),(139,'America/Knox_IN'),(140,'America/La_Paz'),(141,'America/Lima'),(142,'America/Los_Angeles'),(143,'America/Louisville'),(144,'America/Maceio'),(145,'America/Managua'),(146,'America/Manaus'),(147,'America/Marigot'),(148,'America/Martinique'),(149,'America/Mazatlan'),(150,'America/Mendoza'),(151,'America/Menominee'),(152,'America/Merida'),(153,'America/Mexico_City'),(154,'America/Miquelon'),(155,'America/Moncton'),(156,'America/Monterrey'),(157,'America/Montevideo'),(158,'America/Montreal'),(159,'America/Montserrat'),(160,'America/Nassau'),(161,'America/New_York'),(162,'America/Nipigon'),(163,'America/Nome'),(164,'America/Noronha'),(165,'America/North_Dakota/Center'),(166,'America/North_Dakota/New_Salem'),(167,'America/Panama'),(168,'America/Pangnirtung'),(169,'America/Paramaribo'),(170,'America/Phoenix'),(171,'America/Port-au-Prince'),(172,'America/Port_of_Spain'),(173,'America/Porto_Acre'),(174,'America/Porto_Velho'),(175,'America/Puerto_Rico'),(176,'America/Rainy_River'),(177,'America/Rankin_Inlet'),(178,'America/Recife'),(179,'America/Regina'),(180,'America/Resolute'),(181,'America/Rio_Branco'),(182,'America/Rosario'),(183,'America/Santarem'),(184,'America/Santiago'),(185,'America/Santo_Domingo'),(186,'America/Sao_Paulo'),(187,'America/Scoresbysund'),(188,'America/Shiprock'),(189,'America/St_Barthelemy'),(190,'America/St_Johns'),(191,'America/St_Kitts'),(192,'America/St_Lucia'),(193,'America/St_Thomas'),(194,'America/St_Vincent'),(195,'America/Swift_Current'),(196,'America/Tegucigalpa'),(197,'America/Thule'),(198,'America/Thunder_Bay'),(199,'America/Tijuana'),(200,'America/Toronto'),(201,'America/Tortola'),(202,'America/Vancouver'),(203,'America/Virgin'),(204,'America/Whitehorse'),(205,'America/Winnipeg'),(206,'America/Yakutat'),(207,'America/Yellowknife'),(208,'Antarctica/Casey'),(209,'Antarctica/Davis'),(210,'Antarctica/DumontDUrville'),(211,'Antarctica/Mawson'),(212,'Antarctica/McMurdo'),(213,'Antarctica/Palmer'),(214,'Antarctica/Rothera'),(215,'Antarctica/South_Pole'),(216,'Antarctica/Syowa'),(217,'Antarctica/Vostok'),(218,'Arctic/Longyearbyen'),(219,'Asia/Aden'),(220,'Asia/Almaty'),(221,'Asia/Amman'),(222,'Asia/Anadyr'),(223,'Asia/Aqtau'),(224,'Asia/Aqtobe'),(225,'Asia/Ashgabat'),(226,'Asia/Ashkhabad'),(227,'Asia/Baghdad'),(228,'Asia/Bahrain'),(229,'Asia/Baku'),(230,'Asia/Bangkok'),(231,'Asia/Beirut'),(232,'Asia/Bishkek'),(233,'Asia/Brunei'),(234,'Asia/Calcutta'),(235,'Asia/Choibalsan'),(236,'Asia/Chongqing'),(237,'Asia/Chungking'),(238,'Asia/Colombo'),(239,'Asia/Dacca'),(240,'Asia/Damascus'),(241,'Asia/Dhaka'),(242,'Asia/Dili'),(243,'Asia/Dubai'),(244,'Asia/Dushanbe'),(245,'Asia/Gaza'),(246,'Asia/Harbin'),(247,'Asia/Ho_Chi_Minh'),(248,'Asia/Hong_Kong'),(249,'Asia/Hovd'),(250,'Asia/Irkutsk'),(251,'Asia/Istanbul'),(252,'Asia/Jakarta'),(253,'Asia/Jayapura'),(254,'Asia/Jerusalem'),(255,'Asia/Kabul'),(256,'Asia/Kamchatka'),(257,'Asia/Karachi'),(258,'Asia/Kashgar'),(259,'Asia/Kathmandu'),(260,'Asia/Katmandu'),(261,'Asia/Kolkata'),(262,'Asia/Krasnoyarsk'),(263,'Asia/Kuala_Lumpur'),(264,'Asia/Kuching'),(265,'Asia/Kuwait'),(266,'Asia/Macao'),(267,'Asia/Macau'),(268,'Asia/Magadan'),(269,'Asia/Makassar'),(270,'Asia/Manila'),(271,'Asia/Muscat'),(272,'Asia/Nicosia'),(273,'Asia/Novosibirsk'),(274,'Asia/Omsk'),(275,'Asia/Oral'),(276,'Asia/Phnom_Penh'),(277,'Asia/Pontianak'),(278,'Asia/Pyongyang'),(279,'Asia/Qatar'),(280,'Asia/Qyzylorda'),(281,'Asia/Rangoon'),(282,'Asia/Riyadh'),(283,'Asia/Saigon'),(284,'Asia/Sakhalin'),(285,'Asia/Samarkand'),(286,'Asia/Seoul'),(287,'Asia/Shanghai'),(288,'Asia/Singapore'),(289,'Asia/Taipei'),(290,'Asia/Tashkent'),(291,'Asia/Tbilisi'),(292,'Asia/Tehran'),(293,'Asia/Tel_Aviv'),(294,'Asia/Thimbu'),(295,'Asia/Thimphu'),(296,'Asia/Tokyo'),(297,'Asia/Ujung_Pandang'),(298,'Asia/Ulaanbaatar'),(299,'Asia/Ulan_Bator'),(300,'Asia/Urumqi'),(301,'Asia/Vientiane'),(302,'Asia/Vladivostok'),(303,'Asia/Yakutsk'),(304,'Asia/Yekaterinburg'),(305,'Asia/Yerevan'),(306,'Atlantic/Azores'),(307,'Atlantic/Bermuda'),(308,'Atlantic/Canary'),(309,'Atlantic/Cape_Verde'),(310,'Atlantic/Faeroe'),(311,'Atlantic/Faroe'),(312,'Atlantic/Jan_Mayen'),(313,'Atlantic/Madeira'),(314,'Atlantic/Reykjavik'),(315,'Atlantic/South_Georgia'),(316,'Atlantic/St_Helena'),(317,'Atlantic/Stanley'),(318,'Australia/ACT'),(319,'Australia/Adelaide'),(320,'Australia/Brisbane'),(321,'Australia/Broken_Hill'),(322,'Australia/Canberra'),(323,'Australia/Currie'),(324,'Australia/Darwin'),(325,'Australia/Eucla'),(326,'Australia/Hobart'),(327,'Australia/LHI'),(328,'Australia/Lindeman'),(329,'Australia/Lord_Howe'),(330,'Australia/Melbourne'),(331,'Australia/North'),(332,'Australia/NSW'),(333,'Australia/Perth'),(334,'Australia/Queensland'),(335,'Australia/South'),(336,'Australia/Sydney'),(337,'Australia/Tasmania'),(338,'Australia/Victoria'),(339,'Australia/West'),(340,'Australia/Yancowinna'),(341,'Europe/Amsterdam'),(342,'Europe/Andorra'),(343,'Europe/Athens'),(344,'Europe/Belfast'),(345,'Europe/Belgrade'),(346,'Europe/Berlin'),(347,'Europe/Bratislava'),(348,'Europe/Brussels'),(349,'Europe/Bucharest'),(350,'Europe/Budapest'),(351,'Europe/Chisinau'),(352,'Europe/Copenhagen'),(353,'Europe/Dublin'),(354,'Europe/Gibraltar'),(355,'Europe/Guernsey'),(356,'Europe/Helsinki'),(357,'Europe/Isle_of_Man'),(358,'Europe/Istanbul'),(359,'Europe/Jersey'),(360,'Europe/Kaliningrad'),(361,'Europe/Kiev'),(362,'Europe/Lisbon'),(363,'Europe/Ljubljana'),(364,'Europe/London'),(365,'Europe/Luxembourg'),(366,'Europe/Madrid'),(367,'Europe/Malta'),(368,'Europe/Mariehamn'),(369,'Europe/Minsk'),(370,'Europe/Monaco'),(371,'Europe/Moscow'),(372,'Europe/Nicosia'),(373,'Europe/Oslo'),(374,'Europe/Paris'),(375,'Europe/Podgorica'),(376,'Europe/Prague'),(377,'Europe/Riga'),(378,'Europe/Rome'),(379,'Europe/Samara'),(380,'Europe/San_Marino'),(381,'Europe/Sarajevo'),(382,'Europe/Simferopol'),(383,'Europe/Skopje'),(384,'Europe/Sofia'),(385,'Europe/Stockholm'),(386,'Europe/Tallinn'),(387,'Europe/Tirane'),(388,'Europe/Tiraspol'),(389,'Europe/Uzhgorod'),(390,'Europe/Vaduz'),(391,'Europe/Vatican'),(392,'Europe/Vienna'),(393,'Europe/Vilnius'),(394,'Europe/Volgograd'),(395,'Europe/Warsaw'),(396,'Europe/Zagreb'),(397,'Europe/Zaporozhye'),(398,'Europe/Zurich'),(399,'Indian/Antananarivo'),(400,'Indian/Chagos'),(401,'Indian/Christmas'),(402,'Indian/Cocos'),(403,'Indian/Comoro'),(404,'Indian/Kerguelen'),(405,'Indian/Mahe'),(406,'Indian/Maldives'),(407,'Indian/Mauritius'),(408,'Indian/Mayotte'),(409,'Indian/Reunion'),(410,'Pacific/Apia'),(411,'Pacific/Auckland'),(412,'Pacific/Chatham'),(413,'Pacific/Easter'),(414,'Pacific/Efate'),(415,'Pacific/Enderbury'),(416,'Pacific/Fakaofo'),(417,'Pacific/Fiji'),(418,'Pacific/Funafuti'),(419,'Pacific/Galapagos'),(420,'Pacific/Gambier'),(421,'Pacific/Guadalcanal'),(422,'Pacific/Guam'),(423,'Pacific/Honolulu'),(424,'Pacific/Johnston'),(425,'Pacific/Kiritimati'),(426,'Pacific/Kosrae'),(427,'Pacific/Kwajalein'),(428,'Pacific/Majuro'),(429,'Pacific/Marquesas'),(430,'Pacific/Midway'),(431,'Pacific/Nauru'),(432,'Pacific/Niue'),(433,'Pacific/Norfolk'),(434,'Pacific/Noumea'),(435,'Pacific/Pago_Pago'),(436,'Pacific/Palau'),(437,'Pacific/Pitcairn'),(438,'Pacific/Ponape'),(439,'Pacific/Port_Moresby'),(440,'Pacific/Rarotonga'),(441,'Pacific/Saipan'),(442,'Pacific/Samoa'),(443,'Pacific/Tahiti'),(444,'Pacific/Tarawa'),(445,'Pacific/Tongatapu'),(446,'Pacific/Truk'),(447,'Pacific/Wake'),(448,'Pacific/Wallis'),(449,'Pacific/Yap'),(450,'Brazil/Acre'),(451,'Brazil/DeNoronha'),(452,'Brazil/East'),(453,'Brazil/West'),(454,'Canada/Atlantic'),(455,'Canada/Central'),(456,'Canada/East-Saskatchewan'),(457,'Canada/Eastern'),(458,'Canada/Mountain'),(459,'Canada/Newfoundland'),(460,'Canada/Pacific'),(461,'Canada/Saskatchewan'),(462,'Canada/Yukon'),(463,'CET'),(464,'Chile/Continental'),(465,'Chile/EasterIsland'),(466,'CST6CDT'),(467,'Cuba'),(468,'EET'),(469,'Egypt'),(470,'Eire'),(471,'EST'),(472,'EST5EDT'),(473,'Etc/GMT'),(474,'Etc/GMT+0'),(475,'Etc/GMT+1'),(476,'Etc/GMT+10'),(477,'Etc/GMT+11'),(478,'Etc/GMT+12'),(479,'Etc/GMT+2'),(480,'Etc/GMT+3'),(481,'Etc/GMT+4'),(482,'Etc/GMT+5'),(483,'Etc/GMT+6'),(484,'Etc/GMT+7'),(485,'Etc/GMT+8'),(486,'Etc/GMT+9'),(487,'Etc/GMT-0'),(488,'Etc/GMT-1'),(489,'Etc/GMT-10'),(490,'Etc/GMT-11'),(491,'Etc/GMT-12'),(492,'Etc/GMT-13'),(493,'Etc/GMT-14'),(494,'Etc/GMT-2'),(495,'Etc/GMT-3'),(496,'Etc/GMT-4'),(497,'Etc/GMT-5'),(498,'Etc/GMT-6'),(499,'Etc/GMT-7'),(500,'Etc/GMT-8'),(501,'Etc/GMT-9'),(502,'Etc/GMT0'),(503,'Etc/Greenwich'),(504,'Etc/UCT'),(505,'Etc/Universal'),(506,'Etc/UTC'),(507,'Etc/Zulu'),(508,'Factory'),(509,'GB'),(510,'GB-Eire'),(511,'GMT'),(512,'GMT+0'),(513,'GMT-0'),(514,'GMT0'),(515,'Greenwich'),(516,'Hongkong'),(517,'HST'),(518,'Iceland'),(519,'Iran'),(520,'Israel'),(521,'Jamaica'),(522,'Japan'),(523,'Kwajalein'),(524,'Libya'),(525,'MET'),(526,'Mexico/BajaNorte'),(527,'Mexico/BajaSur'),(528,'Mexico/General'),(529,'MST'),(530,'MST7MDT'),(531,'Navajo'),(532,'NZ'),(533,'NZ-CHAT'),(534,'Poland'),(535,'Portugal'),(536,'PRC'),(537,'PST8PDT'),(538,'ROC'),(539,'ROK'),(540,'Singapore'),(541,'Turkey'),(542,'UCT'),(543,'Universal'),(544,'US/Alaska'),(545,'US/Aleutian'),(546,'US/Arizona'),(547,'US/Central'),(548,'US/East-Indiana'),(549,'US/Eastern'),(550,'US/Hawaii'),(551,'US/Indiana-Starke'),(552,'US/Michigan'),(553,'US/Mountain'),(554,'US/Pacific'),(555,'US/Pacific-New'),(556,'US/Samoa'),(557,'UTC'),(558,'W-SU'),(559,'WET'),(560,'Zulu');
/*!40000 ALTER TABLE `ps_2timezone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2warehouse`
--

DROP TABLE IF EXISTS `ps_2warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2warehouse` (
  `id_warehouse` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_currency` int(11) unsigned NOT NULL,
  `id_address` int(11) unsigned NOT NULL,
  `id_employee` int(11) unsigned NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `management_type` enum('WA','FIFO','LIFO') NOT NULL DEFAULT 'WA',
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2warehouse`
--

LOCK TABLES `ps_2warehouse` WRITE;
/*!40000 ALTER TABLE `ps_2warehouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2warehouse_carrier`
--

DROP TABLE IF EXISTS `ps_2warehouse_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2warehouse_carrier` (
  `id_carrier` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_warehouse`,`id_carrier`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_carrier` (`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2warehouse_carrier`
--

LOCK TABLES `ps_2warehouse_carrier` WRITE;
/*!40000 ALTER TABLE `ps_2warehouse_carrier` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2warehouse_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2warehouse_product_location`
--

DROP TABLE IF EXISTS `ps_2warehouse_product_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2warehouse_product_location` (
  `id_warehouse_product_location` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int(11) unsigned NOT NULL,
  `id_product_attribute` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  `location` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_warehouse_product_location`),
  UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2warehouse_product_location`
--

LOCK TABLES `ps_2warehouse_product_location` WRITE;
/*!40000 ALTER TABLE `ps_2warehouse_product_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2warehouse_product_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2warehouse_shop`
--

DROP TABLE IF EXISTS `ps_2warehouse_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2warehouse_shop` (
  `id_shop` int(11) unsigned NOT NULL,
  `id_warehouse` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_warehouse`,`id_shop`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2warehouse_shop`
--

LOCK TABLES `ps_2warehouse_shop` WRITE;
/*!40000 ALTER TABLE `ps_2warehouse_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2warehouse_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2web_browser`
--

DROP TABLE IF EXISTS `ps_2web_browser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2web_browser` (
  `id_web_browser` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_web_browser`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2web_browser`
--

LOCK TABLES `ps_2web_browser` WRITE;
/*!40000 ALTER TABLE `ps_2web_browser` DISABLE KEYS */;
INSERT INTO `ps_2web_browser` VALUES (1,'Safari'),(2,'Safari iPad'),(3,'Firefox'),(4,'Opera'),(5,'IE 6'),(6,'IE 7'),(7,'IE 8'),(8,'IE 9'),(9,'IE 10'),(10,'Chrome');
/*!40000 ALTER TABLE `ps_2web_browser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2webservice_account`
--

DROP TABLE IF EXISTS `ps_2webservice_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2webservice_account` (
  `id_webservice_account` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `description` text,
  `class_name` varchar(50) NOT NULL DEFAULT 'WebserviceRequest',
  `is_module` tinyint(2) NOT NULL DEFAULT '0',
  `module_name` varchar(50) DEFAULT NULL,
  `active` tinyint(2) NOT NULL,
  PRIMARY KEY (`id_webservice_account`),
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2webservice_account`
--

LOCK TABLES `ps_2webservice_account` WRITE;
/*!40000 ALTER TABLE `ps_2webservice_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2webservice_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2webservice_account_shop`
--

DROP TABLE IF EXISTS `ps_2webservice_account_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2webservice_account_shop` (
  `id_webservice_account` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_webservice_account`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2webservice_account_shop`
--

LOCK TABLES `ps_2webservice_account_shop` WRITE;
/*!40000 ALTER TABLE `ps_2webservice_account_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2webservice_account_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2webservice_permission`
--

DROP TABLE IF EXISTS `ps_2webservice_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2webservice_permission` (
  `id_webservice_permission` int(11) NOT NULL AUTO_INCREMENT,
  `resource` varchar(50) NOT NULL,
  `method` enum('GET','POST','PUT','DELETE','HEAD') NOT NULL,
  `id_webservice_account` int(11) NOT NULL,
  PRIMARY KEY (`id_webservice_permission`),
  UNIQUE KEY `resource_2` (`resource`,`method`,`id_webservice_account`),
  KEY `resource` (`resource`),
  KEY `method` (`method`),
  KEY `id_webservice_account` (`id_webservice_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2webservice_permission`
--

LOCK TABLES `ps_2webservice_permission` WRITE;
/*!40000 ALTER TABLE `ps_2webservice_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ps_2webservice_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2zone`
--

DROP TABLE IF EXISTS `ps_2zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2zone` (
  `id_zone` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_zone`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2zone`
--

LOCK TABLES `ps_2zone` WRITE;
/*!40000 ALTER TABLE `ps_2zone` DISABLE KEYS */;
INSERT INTO `ps_2zone` VALUES (1,'Europe',1),(2,'North America',1),(3,'Asia',1),(4,'Africa',1),(5,'Oceania',1),(6,'South America',1),(7,'Europe (out E.U)',1),(8,'Central America/Antilla',1);
/*!40000 ALTER TABLE `ps_2zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ps_2zone_shop`
--

DROP TABLE IF EXISTS `ps_2zone_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ps_2zone_shop` (
  `id_zone` int(11) unsigned NOT NULL,
  `id_shop` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id_zone`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ps_2zone_shop`
--

LOCK TABLES `ps_2zone_shop` WRITE;
/*!40000 ALTER TABLE `ps_2zone_shop` DISABLE KEYS */;
INSERT INTO `ps_2zone_shop` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1);
/*!40000 ALTER TABLE `ps_2zone_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'prestadeporte_db'
--

--
-- Dumping routines for database 'prestadeporte_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-03-06 18:29:58
