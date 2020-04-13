CREATE DATABASE  IF NOT EXISTS `mm_cpsc5910team08` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mm_cpsc5910team08`;
-- MySQL dump 10.13  Distrib 8.0.11, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mm_cpsc5910team08
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Temporary view structure for view `2bedcondo_sellers`
--

DROP TABLE IF EXISTS `2bedcondo_sellers`;
/*!50001 DROP VIEW IF EXISTS `2bedcondo_sellers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `2bedcondo_sellers` AS SELECT 
 1 AS `SellerFirstName`,
 1 AS `SellerLastName`,
 1 AS `PropertyType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `2buyers`
--

DROP TABLE IF EXISTS `2buyers`;
/*!50001 DROP VIEW IF EXISTS `2buyers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `2buyers` AS SELECT 
 1 AS `AgentFirstName`,
 1 AS `AgentsLastName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ads_avg_sales`
--

DROP TABLE IF EXISTS `ads_avg_sales`;
/*!50001 DROP VIEW IF EXISTS `ads_avg_sales`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `ads_avg_sales` AS SELECT 
 1 AS `AdID`,
 1 AS `AdType`,
 1 AS `AvgListingPrice`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `advertisement`
--

DROP TABLE IF EXISTS `advertisement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `advertisement` (
  `AdID` int(11) NOT NULL,
  `AdType` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`AdID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertisement`
--

LOCK TABLES `advertisement` WRITE;
/*!40000 ALTER TABLE `advertisement` DISABLE KEYS */;
INSERT INTO `advertisement` VALUES (1,'Newspaper'),(2,'Website'),(3,'Poster'),(4,'Social Media'),(5,'Road Show');
/*!40000 ALTER TABLE `advertisement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `agent_performance`
--

DROP TABLE IF EXISTS `agent_performance`;
/*!50001 DROP VIEW IF EXISTS `agent_performance`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `agent_performance` AS SELECT 
 1 AS `AgentID`,
 1 AS `AgentFirstName`,
 1 AS `AgentsLastName`,
 1 AS `NumberofSales`,
 1 AS `SalesRevenue`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `agents` (
  `AgentID` int(11) NOT NULL,
  `AgentFirstName` varchar(45) DEFAULT NULL,
  `AgentsLastName` varchar(45) DEFAULT NULL,
  `AgentPhoneNumber` varchar(45) DEFAULT NULL,
  `AgentLicenseNumber` int(11) DEFAULT NULL,
  `BranchID` int(11) DEFAULT NULL,
  PRIMARY KEY (`AgentID`),
  KEY `fk_Agents_Branch1_idx` (`BranchID`),
  CONSTRAINT `fk_Agents_Branch1` FOREIGN KEY (`BranchID`) REFERENCES `branch` (`branchid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agents`
--

LOCK TABLES `agents` WRITE;
/*!40000 ALTER TABLE `agents` DISABLE KEYS */;
INSERT INTO `agents` VALUES (1,'April','Setio','2533291688',189238676,1),(2,'Miguel','Tennyson','2533291689',566467746,2),(3,'Crystal','Xu','2545495944',343647347,3),(4,'Jenna','Yang','2545948948',535363789,4),(5,'Kristina','Moss','4535454545',535647658,5),(6,'Renato','Nguyen','2655454545',737638737,1),(7,'Freeland','Phan','2535554774',767558585,2),(8,'Gloria','Pricila','2036574903',336573736,3),(9,'Justin','Lee','2532589403',354778456,4),(10,'Akshaya','Lin','4782944930',409382567,5),(11,'Irene','Lim','4336894525',445968503,1),(12,'Cici','Fardi','2454930584',609480367,2),(13,'Siqi','Ham','2354893656',604984065,3),(14,'Chenyi','Ko','2643960543',627638356,4),(15,'Jodie','Albolea','2345465474',596038296,5);
/*!40000 ALTER TABLE `agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `branch` (
  `BranchID` int(11) NOT NULL,
  `BranchRegion` varchar(45) DEFAULT NULL,
  `BranchName` varchar(45) DEFAULT NULL,
  `BranchAddress` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`BranchID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'Seattle','Sea','1603 Union Street, Seattle, WA 98119'),(2,'Bellevue','Bel','1948 Conifer Drive, Bellevue, WA 98004'),(3,'Redmond','Red','1014 Honeysuckle Lane, Redmond, WA 98052'),(4,'Renton','Ren','3831 Ryder Avenue, Renton, WA 98055'),(5,'Bothell','Bot','317 Main Street, Bothell, WA 98011');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `branch_sales`
--

DROP TABLE IF EXISTS `branch_sales`;
/*!50001 DROP VIEW IF EXISTS `branch_sales`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `branch_sales` AS SELECT 
 1 AS `BranchName`,
 1 AS `BranchRegion`,
 1 AS `TotalSales`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `buyer`
--

DROP TABLE IF EXISTS `buyer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `buyer` (
  `BuyerID` int(11) NOT NULL,
  `BuyerFirstName` varchar(45) DEFAULT NULL,
  `BuyerLastName` varchar(45) DEFAULT NULL,
  `BuyerAddress` varchar(45) DEFAULT NULL,
  `AgentID` int(11) DEFAULT NULL,
  PRIMARY KEY (`BuyerID`),
  KEY `represents_idx` (`AgentID`),
  CONSTRAINT `represents` FOREIGN KEY (`AgentID`) REFERENCES `agents` (`agentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buyer`
--

LOCK TABLES `buyer` WRITE;
/*!40000 ALTER TABLE `buyer` DISABLE KEYS */;
INSERT INTO `buyer` VALUES (1,'Michael','Richards','47 Oak Ave. Paterson, NJ 07501',2),(2,'Sue','Lee','2581 Elliot Avenue, Seattle WA',4),(3,'Roger','Nixon','3964 Biddie Lane, Seattle WA',6),(4,'Lexi','Bush','4934 Fannie Street, Seattle WA',8),(5,'Sam','Smith','2100 Mercer Street, Seattle WA',3),(6,'Elizabeth','Warren','4954 Patton Lane, Seattle WA',12),(7,'Michael','Jackson','2950 Hillview Street, Seattle WA',15),(8,'Paris','Hilton','2981 Turkey Pen Road, Seattle WA',7),(9,'Luis','Rodriguez','1732 Timberbrook Lane, Seattle WA',8),(10,'Naomi','State','2868 Ferguson Street, Seattle WA',6),(11,'Ariana','Grande','4501 Timber Oak Drive, Seattle WA',4),(12,'Lucas','Toro','3796 Golf Course Drive, Seattle WA',2),(13,'Karen','Smith','4616 Flinderation Road, Seattle WA',1),(14,'Robert','Zevala','3270 Hill Croft Farm Road, Seattle WA',15),(15,'Gladys','Yurus','2707 Patterson Fork Road, Seattle WA',12),(16,'Nick','Eldon','2771 Randall Drive, Seattle WA',9);
/*!40000 ALTER TABLE `buyer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contracts`
--

DROP TABLE IF EXISTS `contracts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contracts` (
  `ContractID` int(11) NOT NULL,
  `ContractType` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ContractID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contracts`
--

LOCK TABLES `contracts` WRITE;
/*!40000 ALTER TABLE `contracts` DISABLE KEYS */;
INSERT INTO `contracts` VALUES (1,'Single','Active'),(2,'Multiple','Inactive'),(3,'Single','Active'),(4,'Multiple','Inactive'),(5,'Single','Active'),(6,'Multiple','Inactive'),(7,'Single','Active'),(8,'Multiple','Inactive'),(9,'Single','Active'),(10,'Multiple','Inactive'),(11,'Single','Active'),(12,'Multiple','Inactive'),(13,'Single','Active'),(14,'Multiple','Inactive'),(15,'Single','Active'),(16,'Multiple','Inactive'),(17,'Single','Active'),(18,'Multiple','Inactive'),(19,'Single','Active'),(20,'Multiple','Inactive'),(21,'Single','Active'),(22,'Multiple','Inactive'),(23,'Single','Active'),(24,'Multiple','Inactive'),(25,'Single','Active'),(26,'Multiple','Inactive'),(27,'Single','Active'),(28,'Multiple','Inactive'),(29,'Single','Active'),(30,'Multiple','Inactive'),(31,'Single','Active'),(32,'Multiple','Inactive'),(33,'Single','Active'),(34,'Multiple','Inactive'),(35,'Single','Active'),(36,'Multiple','Inactive'),(37,'Single','Active'),(38,'Multiple','Inactive'),(39,'Single','Active'),(40,'Multiple','Inactive'),(41,'Single','Active'),(42,'Multiple','Inactive'),(43,'Single','Active'),(44,'Multiple','Inactive'),(45,'Single','Active'),(46,'Multiple','Inactive'),(47,'Single','Active'),(48,'Multiple','Inactive'),(49,'Single','Active');
/*!40000 ALTER TABLE `contracts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fact_salesamount_abl _aggregated`
--

DROP TABLE IF EXISTS `fact_salesamount_abl _aggregated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `fact_salesamount_abl _aggregated` (
  `AgentID` int(11) NOT NULL,
  `BranchID` int(11) NOT NULL,
  `ListingID` int(11) NOT NULL,
  `SalesAmount` float DEFAULT NULL,
  PRIMARY KEY (`AgentID`,`BranchID`,`ListingID`),
  KEY `ListingID_idx` (`ListingID`),
  KEY `BranchID_idx` (`BranchID`),
  CONSTRAINT `ByAgent` FOREIGN KEY (`AgentID`) REFERENCES `agents` (`agentid`),
  CONSTRAINT `FromBranch` FOREIGN KEY (`BranchID`) REFERENCES `branch` (`branchid`),
  CONSTRAINT `OnListing` FOREIGN KEY (`ListingID`) REFERENCES `listings` (`listingid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fact_salesamount_abl _aggregated`
--

LOCK TABLES `fact_salesamount_abl _aggregated` WRITE;
/*!40000 ALTER TABLE `fact_salesamount_abl _aggregated` DISABLE KEYS */;
/*!40000 ALTER TABLE `fact_salesamount_abl _aggregated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listings`
--

DROP TABLE IF EXISTS `listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `listings` (
  `ListingID` int(11) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `DateListed` date DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `AgentID` int(11) DEFAULT NULL,
  `PropertyID` int(11) DEFAULT NULL,
  `CampaignID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ListingID`),
  KEY `lists_idx` (`PropertyID`),
  KEY `publishes_idx` (`AgentID`),
  KEY `chooses_idx1` (`CampaignID`),
  CONSTRAINT `chooses` FOREIGN KEY (`CampaignID`) REFERENCES `marketingchannel` (`campaignid`),
  CONSTRAINT `lists` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`propertyid`),
  CONSTRAINT `publishes` FOREIGN KEY (`AgentID`) REFERENCES `agents` (`agentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listings`
--

LOCK TABLES `listings` WRITE;
/*!40000 ALTER TABLE `listings` DISABLE KEYS */;
INSERT INTO `listings` VALUES (1,719945,'2014-08-29','Active',15,1,1),(2,1264779,'2014-10-21','Active',11,2,2),(3,1168383,'2014-11-28','Inactive',8,3,3),(4,732004,'2014-12-29','Inactive',9,4,4),(5,653174,'2015-03-13','Inactive',7,5,5),(6,1018461,'2015-04-21','Inactive',4,6,6),(7,555174,'2015-05-06','Inactive',2,7,1),(8,760414,'2015-07-16','Active',7,8,2),(9,1329171,'2015-07-28','Active',2,9,3),(10,1146405,'2015-12-18','Active',6,10,4),(11,889931,'2016-03-01','Active',5,11,5),(12,758692,'2016-04-20','Active',13,12,6),(13,1911601,'2016-09-22','Active',13,13,1),(14,123375,'2016-09-29','Active',9,14,2),(15,356863,'2017-02-15','Active',14,15,3),(16,298764,'2017-03-28','Active',1,16,4),(17,1911601,'2017-05-31','Active',1,17,5),(18,232324,'2017-12-27','Inactive',3,18,6),(19,1716581,'2018-02-19','Inactive',1,19,1),(20,921929,'2018-03-06','Inactive',4,20,2),(21,638016,'2018-07-05','Inactive',3,21,3),(22,1272356,'2018-08-16','Inactive',10,22,4),(23,1911501,'2018-08-29','Active',13,23,5),(24,1800816,'2018-10-11','Active',9,24,6),(25,1498957,'2018-12-19','Active',9,25,1),(26,896105,'2014-08-29','Active',13,26,2),(27,1272356,'2014-10-21','Active',2,27,3),(28,1716581,'2014-11-28','Active',11,28,4),(29,896157,'2014-12-29','Active',14,29,5),(30,3486768,'2015-03-13','Inactive',3,30,6);
/*!40000 ALTER TABLE `listings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketingchannel`
--

DROP TABLE IF EXISTS `marketingchannel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `marketingchannel` (
  `CampaignID` int(11) NOT NULL,
  `CampaignTime` varchar(45) DEFAULT NULL,
  `CampaignName` varchar(45) DEFAULT NULL,
  `CampaignBudget` varchar(45) DEFAULT NULL,
  `AdID` int(11) DEFAULT NULL,
  PRIMARY KEY (`CampaignID`),
  KEY `contains_idx` (`AdID`),
  CONSTRAINT `contains` FOREIGN KEY (`AdID`) REFERENCES `advertisement` (`adid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketingchannel`
--

LOCK TABLES `marketingchannel` WRITE;
/*!40000 ALTER TABLE `marketingchannel` DISABLE KEYS */;
INSERT INTO `marketingchannel` VALUES (1,'2017-01-01','Go For it','1000',1),(2,'2017-01-05','Best Time','530',2),(3,'2018-01-03','Good to Know','2569',3),(4,'2018-01-04','Fighting','3500',4),(5,'2018-01-05','Green Property','2578',5),(6,'2018-01-06','Keep it up','1357',1);
/*!40000 ALTER TABLE `marketingchannel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `max_sales`
--

DROP TABLE IF EXISTS `max_sales`;
/*!50001 DROP VIEW IF EXISTS `max_sales`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `max_sales` AS SELECT 
 1 AS `BranchRegion`,
 1 AS `HighestSale`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `mktg`
--

DROP TABLE IF EXISTS `mktg`;
/*!50001 DROP VIEW IF EXISTS `mktg`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `mktg` AS SELECT 
 1 AS `CampaignName`,
 1 AS `CountofCampaign`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `one_property_seller`
--

DROP TABLE IF EXISTS `one_property_seller`;
/*!50001 DROP VIEW IF EXISTS `one_property_seller`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `one_property_seller` AS SELECT 
 1 AS `SellerID`,
 1 AS `SellerFirstName`,
 1 AS `SellerLastName`,
 1 AS `NumberOfProperties`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `price_eval`
--

DROP TABLE IF EXISTS `price_eval`;
/*!50001 DROP VIEW IF EXISTS `price_eval`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `price_eval` AS SELECT 
 1 AS `YearBuilt`,
 1 AS `AvgSalesPrice`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `property` (
  `PropertyID` int(11) NOT NULL,
  `PropertyType` varchar(45) DEFAULT NULL,
  `Sqft` int(11) DEFAULT NULL,
  `Bedrooms` int(11) DEFAULT NULL,
  `Bathrooms` int(11) DEFAULT NULL,
  `YearBuilt` int(11) DEFAULT NULL,
  `YearRennovated` int(11) DEFAULT NULL,
  `SellerID` int(11) NOT NULL,
  PRIMARY KEY (`PropertyID`,`SellerID`),
  KEY `has_idx` (`SellerID`),
  CONSTRAINT `has` FOREIGN KEY (`SellerID`) REFERENCES `seller` (`sellerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,'Condominium',853,2,1,1970,2005,18),(2,'Single-Family Home',980,2,1,1972,2007,20),(3,'Single-Family Home',1900,4,2,1970,2017,13),(4,'Townhouse',1690,3,4,1999,2019,2),(5,'Single-Family Home',1560,4,2,1886,2015,16),(6,'Condominium',603,1,1,1990,2015,10),(7,'Condominium',1006,2,2,1991,2017,6),(8,'Single-Family Home',1500,3,2,1995,2016,1),(9,'Townhouse',1830,3,2,1875,2017,8),(10,'Townhouse',1500,2,2,1990,2019,15),(11,'Condominium',862,2,2,1890,2013,17),(12,'Single-Family Home',810,2,1,1870,2016,10),(13,'Condominium',480,0,1,1899,2015,6),(14,'Townhouse',1467,3,2,1880,2006,4),(15,'Townhouse',1765,3,3,1990,2013,6),(16,'Single-Family Home',2333,3,3,1970,2019,13),(17,'Single-Family Home',751,1,1,1872,2017,3),(18,'Condominium',764,1,1,1992,2018,15),(19,'Townhouse',2944,4,3,1972,2015,19),(20,'Single-Family Home',1702,3,3,1995,2019,6),(21,'Single-Family Home',2180,4,3,1890,2015,11),(22,'Condominium',1006,2,2,1895,2019,14),(23,'Condominium',1702,3,3,1993,2019,5),(24,'Townhouse',2431,4,4,1980,2018,19);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `property_list`
--

DROP TABLE IF EXISTS `property_list`;
/*!50001 DROP VIEW IF EXISTS `property_list`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `property_list` AS SELECT 
 1 AS `PropertyID`,
 1 AS `Sqft`,
 1 AS `SalesPrice`,
 1 AS `TransactionDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `seller`
--

DROP TABLE IF EXISTS `seller`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `seller` (
  `SellerID` int(11) NOT NULL,
  `SellerAddress` varchar(45) DEFAULT NULL,
  `SellerRegion` varchar(45) DEFAULT NULL,
  `SellerFirstName` varchar(45) DEFAULT NULL,
  `SellerLastName` varchar(45) DEFAULT NULL,
  `AgentID` int(11) DEFAULT NULL,
  PRIMARY KEY (`SellerID`),
  KEY `AgentID_idx` (`AgentID`),
  CONSTRAINT `AgentID` FOREIGN KEY (`AgentID`) REFERENCES `agents` (`agentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller`
--

LOCK TABLES `seller` WRITE;
/*!40000 ALTER TABLE `seller` DISABLE KEYS */;
INSERT INTO `seller` VALUES (1,'307 Ryder Avenue, Seattle, WA 98101','Seattle','Dorian','Kennith',13),(2,'1141 Hillcrest Drive, Tacoma, WA 98408','Tacoma','Marcia','Wernher',4),(3,'4323 Union Street, Seattle, WA 98107','Seattle','Marta','Caye',13),(4,'1713 Pinnickinick Street, Renton, WA 98055','Renton','Jaclyn','Kristan',1),(5,'2535 Mutton Town Road, Redmond, WA 98052','Redmond','Aurelea','Forest',10),(6,'3785 Owagner Lane, Seattle, WA 98121','Seattle','Obidiah','Rafaelia',11),(7,'4633 Hershell Hollow Road, Bothell, WA 98011','Bothell','Elnar','Inez',4),(8,'2914 Terra Street, Bellingham, WA 98225','Bellingham','Elisabet','Rhetta',12),(9,'3667 Conifer Drive, Bellevue, WA 98007','Bellevue','Vaughan','Laurette',2),(10,'1986 Elliot Avenue, Seattle, WA 98109','Seattle','Samantha','Morrie',1),(11,'4765 Dale Avenue, Seattle, WA 98109','Seattle','Rozanne','Delila',7),(12,'19819 136th Avenue NE, Woodinville, WA 98072','Woodinville','Gigi','Damiano',8),(13,'89 Pratt Avenue, Kirkland, WA 98034','Kirkland','Cori','Emmery',3),(14,'2824 Conifer Drive, Bellevue, WA 98004','Bellevue','Boyd','Dorine',15),(15,'3479 Hillcrest Drive, Renton, WA, 98055','Renton','Bellina','Addy',9),(16,'3670 Stockert Hollow Road, Tukwila, WA 98168','Tukwila','Stephenie','Osbourn',3),(17,'403 Stockert Hollow Road, Kirkland, WA 98034','Kirkland','Fin','Adolph',5),(18,'67 Honeysuckle Lane, Everett, WA 98201','Everett','Marylou','Georgeanna',6),(19,'3098 Conifer Drive, Bellevue, WA 98004','Bellevue','Emmalynne','Ev',14),(20,'317 Main Street, Bothell, WA 98011','Bothell','Sonny','Gabriel',9);
/*!40000 ALTER TABLE `seller` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `sold_goforit`
--

DROP TABLE IF EXISTS `sold_goforit`;
/*!50001 DROP VIEW IF EXISTS `sold_goforit`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `sold_goforit` AS SELECT 
 1 AS `PropertyType`,
 1 AS `SalesPrice`,
 1 AS `Status`,
 1 AS `CampaignName`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `townhouse_buyers`
--

DROP TABLE IF EXISTS `townhouse_buyers`;
/*!50001 DROP VIEW IF EXISTS `townhouse_buyers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `townhouse_buyers` AS SELECT 
 1 AS `BuyerFirstName`,
 1 AS `BuyerLastName`,
 1 AS `SalesPrice`,
 1 AS `TransactionDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `transactions` (
  `TransactionID` int(11) NOT NULL,
  `SalesPrice` int(11) DEFAULT NULL,
  `TransactionDate` date DEFAULT NULL,
  `SellerID` int(11) NOT NULL,
  `BuyerID` int(11) NOT NULL,
  `ContractID` int(11) NOT NULL,
  `PropertyID` int(11) NOT NULL,
  PRIMARY KEY (`TransactionID`,`SellerID`,`BuyerID`,`ContractID`,`PropertyID`),
  KEY `fk_Transactions_Seller1_idx` (`SellerID`),
  KEY `fk_Transactions_Buyer1_idx` (`BuyerID`),
  KEY `fk_Transactions_Contracts1_idx` (`ContractID`),
  KEY `fk_Transactions_Property1_idx` (`PropertyID`),
  CONSTRAINT `fk_Transactions_Buyer1` FOREIGN KEY (`BuyerID`) REFERENCES `buyer` (`buyerid`),
  CONSTRAINT `fk_Transactions_Contracts1` FOREIGN KEY (`ContractID`) REFERENCES `contracts` (`contractid`),
  CONSTRAINT `fk_Transactions_Property1` FOREIGN KEY (`PropertyID`) REFERENCES `property` (`propertyid`),
  CONSTRAINT `fk_Transactions_Seller1` FOREIGN KEY (`SellerID`) REFERENCES `seller` (`sellerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,487234,'2017-03-20',19,12,13,10),(2,1995099,'2017-10-17',19,2,47,17),(3,1197748,'2017-11-23',18,2,20,16),(4,1024629,'2017-12-01',10,10,4,7),(5,794517,'2018-01-01',3,8,24,23),(6,1235148,'2018-03-26',11,13,20,11),(7,621070,'2018-05-16',6,5,5,21),(8,1870628,'2018-06-19',8,10,27,18),(9,1212467,'2018-07-27',5,11,23,8),(10,799151,'2018-10-15',8,12,12,18),(11,1782425,'2018-11-26',15,6,41,11),(12,1140677,'2018-12-27',20,5,36,22),(13,1010094,'2019-01-16',12,4,19,4),(14,1507838,'2019-04-08',9,1,23,22),(15,571418,'2019-04-19',15,11,5,11),(16,430019,'2019-08-02',18,7,41,24),(17,1768908,'2020-01-01',18,10,6,8),(18,588912,'2020-01-02',20,2,42,22),(19,1490498,'2020-02-14',9,5,22,2),(20,1527093,'2020-03-03',7,14,44,12),(21,487228,'2020-03-04',20,12,42,16),(22,1002591,'2020-04-03',13,5,24,18),(23,931622,'2020-05-13',17,15,23,18),(24,1372400,'2020-05-20',20,10,19,20),(25,911574,'2020-12-31',9,2,3,6),(26,1051580,'2017-03-20',20,3,16,16),(27,1390000,'2017-10-17',20,9,24,24),(28,648367,'2017-11-23',1,9,36,21),(29,1337576,'2017-12-01',8,4,31,12),(30,1555188,'2018-01-01',9,15,6,10),(31,1239096,'2018-03-26',5,4,20,4),(32,303972,'2018-05-16',16,2,24,9),(33,1267058,'2018-06-19',20,5,8,16),(34,1364047,'2018-07-27',10,9,42,20),(35,523607,'2018-10-15',18,2,31,12),(36,1671142,'2018-11-26',6,14,48,21),(37,1208801,'2018-12-27',19,15,47,19),(38,1678554,'2019-01-16',12,7,32,5),(39,1717506,'2019-04-08',16,12,8,21),(40,1971901,'2019-04-19',16,1,48,4),(41,736309,'2019-08-02',10,13,21,6),(42,1164902,'2020-01-01',15,11,45,17),(43,1273683,'2020-01-02',9,9,6,5),(44,387753,'2020-02-14',1,1,31,24),(45,850188,'2020-03-03',16,15,49,14),(46,1410635,'2020-03-04',2,7,39,20),(47,1584667,'2020-04-03',10,9,18,13),(48,1647694,'2020-05-13',9,15,2,3),(49,587759,'2020-05-20',3,7,4,4),(50,1694553,'2020-12-31',16,7,23,6),(51,747103,'2017-03-20',11,1,49,19),(52,1429628,'2017-10-17',18,3,39,19),(53,1661169,'2017-11-23',11,12,49,5),(54,1956582,'2017-12-01',15,14,14,1),(55,1722490,'2018-01-01',20,11,25,20),(56,1427086,'2018-03-26',11,1,14,20),(57,852364,'2018-05-16',9,15,33,8),(58,436646,'2018-06-19',2,13,6,23),(59,1445585,'2018-07-27',1,8,26,12);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `2bedcondo_sellers`
--

/*!50001 DROP VIEW IF EXISTS `2bedcondo_sellers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `2bedcondo_sellers` AS select `s`.`SellerFirstName` AS `SellerFirstName`,`s`.`SellerLastName` AS `SellerLastName`,`p`.`PropertyType` AS `PropertyType` from (`seller` `s` join `property` `p`) where ((`s`.`SellerID` = `p`.`SellerID`) and (`p`.`PropertyType` = 'Condominium') and (`p`.`Bedrooms` = 2)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `2buyers`
--

/*!50001 DROP VIEW IF EXISTS `2buyers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `2buyers` AS select `a`.`AgentFirstName` AS `AgentFirstName`,`a`.`AgentsLastName` AS `AgentsLastName` from (`agents` `a` join `buyer` `b`) where (`a`.`AgentID` = `b`.`AgentID`) group by `a`.`AgentID` having (count(`b`.`BuyerID`) <= 2) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ads_avg_sales`
--

/*!50001 DROP VIEW IF EXISTS `ads_avg_sales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ads_avg_sales` AS select `m`.`AdID` AS `AdID`,`a`.`AdType` AS `AdType`,concat('$',convert(format(round(avg(`l`.`Price`),2),2) using utf8mb4)) AS `AvgListingPrice` from ((`listings` `l` join `marketingchannel` `m`) join `advertisement` `a`) where ((`l`.`CampaignID` = `m`.`CampaignID`) and (`m`.`AdID` = `a`.`AdID`) and (`l`.`Status` = 'Inactive')) group by `m`.`AdID` order by avg(`l`.`Price`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `agent_performance`
--

/*!50001 DROP VIEW IF EXISTS `agent_performance`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `agent_performance` AS select `a`.`AgentID` AS `AgentID`,`a`.`AgentFirstName` AS `AgentFirstName`,`a`.`AgentsLastName` AS `AgentsLastName`,count(`t`.`TransactionID`) AS `NumberofSales`,concat('$',convert(format(sum(`t`.`SalesPrice`),2) using utf8mb4)) AS `SalesRevenue` from ((`agents` `a` join `transactions` `t`) join `seller` `s`) where ((`a`.`AgentID` = `s`.`AgentID`) and (`s`.`SellerID` = `t`.`SellerID`)) group by `a`.`AgentID`,`a`.`AgentFirstName`,`a`.`AgentsLastName` having (count(`NumberofSales`) > 2) order by `NumberofSales` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `branch_sales`
--

/*!50001 DROP VIEW IF EXISTS `branch_sales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `branch_sales` AS select `br`.`BranchName` AS `BranchName`,`br`.`BranchRegion` AS `BranchRegion`,concat('$',convert(format(sum(`t`.`SalesPrice`),2) using utf8mb4)) AS `TotalSales` from (((`branch` `br` join `agents` `a`) join `seller` `s`) join `transactions` `t`) where ((`br`.`BranchID` = `a`.`BranchID`) and (`a`.`AgentID` = `s`.`AgentID`) and (`s`.`SellerID` = `t`.`SellerID`)) group by `br`.`BranchName`,`br`.`BranchRegion` order by sum(`t`.`SalesPrice`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `max_sales`
--

/*!50001 DROP VIEW IF EXISTS `max_sales`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `max_sales` AS select `br`.`BranchRegion` AS `BranchRegion`,concat('$',convert(format(max(`t`.`SalesPrice`),2) using utf8mb4)) AS `HighestSale` from ((((`branch` `br` join `agents` `a`) join `seller` `s`) join `transactions` `t`) join `property` `p`) where ((`br`.`BranchID` = `a`.`BranchID`) and (`a`.`AgentID` = `s`.`AgentID`) and (`s`.`SellerID` = `t`.`SellerID`) and (`t`.`PropertyID` = `p`.`PropertyID`)) group by `br`.`BranchRegion` order by max(`t`.`SalesPrice`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `mktg`
--

/*!50001 DROP VIEW IF EXISTS `mktg`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `mktg` AS select `m`.`CampaignName` AS `CampaignName`,count(`l`.`CampaignID`) AS `CountofCampaign` from (`marketingchannel` `m` join `listings` `l`) where (`m`.`CampaignID` = `l`.`CampaignID`) group by `l`.`CampaignID` having (`CountofCampaign` > 3) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `one_property_seller`
--

/*!50001 DROP VIEW IF EXISTS `one_property_seller`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `one_property_seller` AS select `s`.`SellerID` AS `SellerID`,`s`.`SellerFirstName` AS `SellerFirstName`,`s`.`SellerLastName` AS `SellerLastName`,count(`p`.`PropertyID`) AS `NumberOfProperties` from (`seller` `s` join `property` `p`) where (`s`.`SellerID` = `p`.`SellerID`) group by `s`.`SellerID` having (count(`p`.`PropertyID`) > 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `price_eval`
--

/*!50001 DROP VIEW IF EXISTS `price_eval`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `price_eval` AS select `p`.`YearBuilt` AS `YearBuilt`,concat('$',convert(format(round(avg(`t`.`SalesPrice`),2),2) using utf8mb4)) AS `AvgSalesPrice` from (`transactions` `t` join `property` `p`) where ((`t`.`PropertyID` = `p`.`PropertyID`) and (`p`.`YearBuilt` > 1980)) group by `p`.`YearBuilt` order by `p`.`YearBuilt` asc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `property_list`
--

/*!50001 DROP VIEW IF EXISTS `property_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `property_list` AS select `p`.`PropertyID` AS `PropertyID`,`p`.`Sqft` AS `Sqft`,concat('$',convert(format(`t`.`SalesPrice`,2) using utf8mb4)) AS `SalesPrice`,`t`.`TransactionDate` AS `TransactionDate` from (`property` `p` join `transactions` `t`) where ((`t`.`PropertyID` = `p`.`PropertyID`) and (`p`.`Sqft` > 800) and (`p`.`Bedrooms` >= 2) and (`p`.`Bathrooms` >= 2) and (`t`.`SalesPrice` <= 700000) and (`p`.`YearRennovated` >= 2019)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `sold_goforit`
--

/*!50001 DROP VIEW IF EXISTS `sold_goforit`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sold_goforit` AS select `p`.`PropertyType` AS `PropertyType`,concat('$',convert(format(`t`.`SalesPrice`,2) using utf8mb4)) AS `SalesPrice`,`l`.`Status` AS `Status`,`m`.`CampaignName` AS `CampaignName` from (((`transactions` `t` join `listings` `l`) join `property` `p`) join `marketingchannel` `m`) where ((`t`.`PropertyID` = `p`.`PropertyID`) and (`p`.`PropertyID` = `l`.`PropertyID`) and (`l`.`CampaignID` = `m`.`CampaignID`) and (`l`.`Status` = 'Inactive') and (`m`.`CampaignName` = 'Go for it')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `townhouse_buyers`
--

/*!50001 DROP VIEW IF EXISTS `townhouse_buyers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `townhouse_buyers` AS select `b`.`BuyerFirstName` AS `BuyerFirstName`,`b`.`BuyerLastName` AS `BuyerLastName`,concat('$',convert(format(`t`.`SalesPrice`,2) using utf8mb4)) AS `SalesPrice`,`t`.`TransactionDate` AS `TransactionDate` from ((`buyer` `b` join `transactions` `t`) join `property` `p`) where ((`b`.`BuyerID` = `t`.`BuyerID`) and (`t`.`PropertyID` = `p`.`PropertyID`) and (`p`.`PropertyType` = 'Townhouse')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-15 22:55:27
