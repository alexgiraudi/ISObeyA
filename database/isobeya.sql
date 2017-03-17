CREATE DATABASE  IF NOT EXISTS `ISObeyaDB` /*!40100 DEFAULT CHARACTER SET big5 */;
USE `ISObeyaDB`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: localhost    Database: ISObeyaDB
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
-- Table structure for table `Releases`
--

DROP TABLE IF EXISTS `Releases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Releases` (
  `Release` int(11) NOT NULL,
  `Date` varchar(45) DEFAULT NULL,
  `Description` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`Release`),
  UNIQUE KEY `Release_UNIQUE` (`Release`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Releases`
--

LOCK TABLES `Releases` WRITE;
/*!40000 ALTER TABLE `Releases` DISABLE KEYS */;
/*!40000 ALTER TABLE `Releases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cards` (
  `CarId` text,
  `Project` text,
  `Owner` text,
  `Priority` text,
  `Blocker` text,
  `Description` text,
  `DueDate` text,
  `Charge` int(11) DEFAULT NULL,
  `Raf` int(11) DEFAULT NULL,
  `OwnerClass` text,
  `Layer` text
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES ('Card1.231','Obso2003','AGI','H','no','C\'est une action 1','23/03/2017',4,3,'list-group-item-ISOP','Backlog'),('Card1.232','Obso2004','AGI','M','yes','C\'est une action 2','24/03/2017',4,3,'list-group-item-ISOP','WorkisProgress'),('Card1.233','Obso2005','AGI','L','no','C\'est une action 3','25/03/2017',4,3,'list-group-item-ISOP','WorkIsDone'),('Card1.234','Obso2006','JLF','H','yes','C\'est une action 4','26/03/2017',4,3,'list-group-item-ISOI','Rollout'),('Card1.235','Obso2007','JLF','M','no','C\'est une action 5','27/03/2017',4,3,'list-group-item-ISOI','Close'),('Card1.236','Obso2008','B.Trancart','L','yes','C\'est une action 6','28/03/2017',4,3,'list-group-item-GFI','Backlog'),('Card1.237','Obso2009','J.Argemi','H','no','C\'est une action 7','29/03/2017',4,3,'list-group-item-ISOP','WorkisProgress'),('Card1.238','Obso2010','J.Maurice','M','yes','C\'est une action 8','30/03/2017',4,3,'list-group-item-GFI','WorkIsDone'),('Card1.239','Obso2011','DFG','L','no','C\'est une action 9','31/03/2017',4,3,'list-group-item-ISO','Rollout'),('Card1.240','Obso2012','DRF','H','yes','C\'est une action 10','01/04/2017',4,3,'list-group-item-ISO','Close');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `projects` (
  `Id` int(11) DEFAULT NULL,
  `Name` text,
  `Domain` text,
  `Status` text,
  `KPIGlobal` text,
  `KPIBudget` text,
  `KPIPlanning` text,
  `KPIDesign` text,
  `KPIRFP` text,
  `KPIPurchasing` text,
  `KPIProvisioning` text,
  `KPIBuild` text,
  `KPIRollout` text,
  `KPIGolive` text,
  `KPIRemarks` text
) ENGINE=InnoDB DEFAULT CHARSET=big5;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'Obso 2003 Next','','','','','','','','','','','','',''),(2,'Obso 2003 interne ','','','','','','','','','','','','',''),(3,'NEXT 2.0 Lan2Lan','','','','','','','','','','','','',''),(4,'PKI V2','','','','','','','','','','','','',''),(5,'VLAN INDUS 2.0 Phase 4','','','','','','','','','','','','',''),(6,'FW Renewal','','','','','','','','','','','','',''),(7,'DURER Cannes','','','','','','','','','','','','',''),(8,'Zone Central','','','','','','','','','','','','',''),(9,'Event Log P3','','','','','','','','','','','','',''),(10,'ITASM v5','','','','','','','','','','','','',''),(11,'Event Log P4','','','','','','','','','','','','',''),(12,'DRF','','','','','','','','','','','','',''),(13,'LDAD JV','','','','','','','','','','','','',''),(14,'Internet on desktop Performance','','','','','','','','','','','','',''),(15,'TAS SESO','','','','','','','','','','','','',''),(16,'TAS CH','','','','','','','','','','','','',''),(17,'Security For Business Data Recovery','','','','','','','','','','','','',''),(18,'Security For Business Internet For Business','','','','','','','','','','','','',''),(19,'TNG','','','','','','','','','','','','',''),(20,'Refresh CD Phase 1','','','','','','','','','','','','',''),(21,'Refresh CD Phase 2','','','','','','','','','','','','',''),(22,'VLAN INDUS 2.0 Phase 4','','','','','','','','','','','','',''),(23,'Lean FileMon','','','','','','','','','','','','',''),(24,'Lean Cloud','','','','','','','','','','','','',''),(25,'Backup Refresh','','','','','','','','','','','','',''),(26,'Wifi Corner','','','','','','','','','','','','',''),(27,'Obso 2003 Naturelle','','','','','','','','','','','','',''),(28,'ToIP CD','','','','','','','','','','','','',''),(29,'Printer Renewal','','','','','','','','','','','','',''),(30,'SCCM','','','','','','','','','','','','',''),(31,'Thales Any Where 2016','','','','','','','','','','','','',''),(32,'Thales Any Where 2017','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ISObeyaDB'
--

--
-- Dumping routines for database 'ISObeyaDB'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-09 23:17:33
