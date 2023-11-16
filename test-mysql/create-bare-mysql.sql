drop database if exists lportal;
create database lportal character set utf8;
use lportal;

-- MySQL dump 10.13  Distrib 5.6.39, for Linux (x86_64)

--
-- Host: localhost    Database: lportal
-- ------------------------------------------------------
-- Server version	5.6.39

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
-- Table structure for table `Account_`
--

DROP TABLE IF EXISTS `Account_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Account_` (
  `accountId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentAccountId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `legalName` varchar(75) DEFAULT NULL,
  `legalId` varchar(75) DEFAULT NULL,
  `legalType` varchar(75) DEFAULT NULL,
  `sicCode` varchar(75) DEFAULT NULL,
  `tickerSymbol` varchar(75) DEFAULT NULL,
  `industry` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `size_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account_`
--

LOCK TABLES `Account_` WRITE;
/*!40000 ALTER TABLE `Account_` DISABLE KEYS */;
INSERT INTO `Account_` VALUES (10157,10155,0,'','2018-06-13 01:30:11','2018-06-13 01:30:11',0,'Liferay','','','','','','','','');
/*!40000 ALTER TABLE `Account_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Address` (
  `uuid_` varchar(75) DEFAULT NULL,
  `addressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `street1` varchar(75) DEFAULT NULL,
  `street2` varchar(75) DEFAULT NULL,
  `street3` varchar(75) DEFAULT NULL,
  `city` varchar(75) DEFAULT NULL,
  `zip` varchar(75) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `mailing` tinyint(4) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`addressId`),
  KEY `IX_93D5AD4E` (`companyId`),
  KEY `IX_ABD7DAC0` (`companyId`,`classNameId`),
  KEY `IX_71CB1123` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_923BD178` (`companyId`,`classNameId`,`classPK`,`mailing`),
  KEY `IX_9226DBB4` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_5BC8B0D4` (`userId`),
  KEY `IX_381E55DA` (`uuid_`),
  KEY `IX_8FCB620E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AnnouncementsDelivery`
--

DROP TABLE IF EXISTS `AnnouncementsDelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AnnouncementsDelivery` (
  `deliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `email` tinyint(4) DEFAULT NULL,
  `sms` tinyint(4) DEFAULT NULL,
  `website` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`deliveryId`),
  UNIQUE KEY `IX_BA4413D5` (`userId`,`type_`),
  KEY `IX_6EDB9600` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnnouncementsDelivery`
--

LOCK TABLES `AnnouncementsDelivery` WRITE;
/*!40000 ALTER TABLE `AnnouncementsDelivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `AnnouncementsDelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AnnouncementsEntry`
--

DROP TABLE IF EXISTS `AnnouncementsEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AnnouncementsEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `content` longtext,
  `url` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `alert` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  KEY `IX_A6EF0B81` (`classNameId`,`classPK`),
  KEY `IX_14F06A6B` (`classNameId`,`classPK`,`alert`),
  KEY `IX_D49C2E66` (`userId`),
  KEY `IX_1AFBDE08` (`uuid_`),
  KEY `IX_F2949120` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnnouncementsEntry`
--

LOCK TABLES `AnnouncementsEntry` WRITE;
/*!40000 ALTER TABLE `AnnouncementsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `AnnouncementsEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AnnouncementsFlag`
--

DROP TABLE IF EXISTS `AnnouncementsFlag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AnnouncementsFlag` (
  `flagId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`flagId`),
  UNIQUE KEY `IX_4539A99C` (`userId`,`entryId`,`value`),
  KEY `IX_9C7EB9F` (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AnnouncementsFlag`
--

LOCK TABLES `AnnouncementsFlag` WRITE;
/*!40000 ALTER TABLE `AnnouncementsFlag` DISABLE KEYS */;
/*!40000 ALTER TABLE `AnnouncementsFlag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetCategory`
--

DROP TABLE IF EXISTS `AssetCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetCategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `leftCategoryId` bigint(20) DEFAULT NULL,
  `rightCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `vocabularyId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `IX_BE4DF2BF` (`parentCategoryId`,`name`,`vocabularyId`),
  UNIQUE KEY `IX_E8D019AA` (`uuid_`,`groupId`),
  KEY `IX_E639E2F6` (`groupId`),
  KEY `IX_C7F39FCA` (`groupId`,`name`,`vocabularyId`),
  KEY `IX_852EA801` (`groupId`,`parentCategoryId`,`name`,`vocabularyId`),
  KEY `IX_87603842` (`groupId`,`parentCategoryId`,`vocabularyId`),
  KEY `IX_2008FACB` (`groupId`,`vocabularyId`),
  KEY `IX_D61ABE08` (`name`,`vocabularyId`),
  KEY `IX_7BB1826B` (`parentCategoryId`),
  KEY `IX_9DDD15EA` (`parentCategoryId`,`name`),
  KEY `IX_B185E980` (`parentCategoryId`,`vocabularyId`),
  KEY `IX_4D37BB00` (`uuid_`),
  KEY `IX_BBAF6928` (`uuid_`,`companyId`),
  KEY `IX_287B1F89` (`vocabularyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetCategory`
--

LOCK TABLES `AssetCategory` WRITE;
/*!40000 ALTER TABLE `AssetCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetCategoryProperty`
--

DROP TABLE IF EXISTS `AssetCategoryProperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetCategoryProperty` (
  `categoryPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`categoryPropertyId`),
  UNIQUE KEY `IX_DBD111AA` (`categoryId`,`key_`),
  KEY `IX_99DA856` (`categoryId`),
  KEY `IX_8654719F` (`companyId`),
  KEY `IX_52340033` (`companyId`,`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetCategoryProperty`
--

LOCK TABLES `AssetCategoryProperty` WRITE;
/*!40000 ALTER TABLE `AssetCategoryProperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetCategoryProperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetEntries_AssetCategories`
--

DROP TABLE IF EXISTS `AssetEntries_AssetCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetEntries_AssetCategories` (
  `categoryId` bigint(20) NOT NULL,
  `entryId` bigint(20) NOT NULL,
  PRIMARY KEY (`categoryId`,`entryId`),
  KEY `IX_A188F560` (`categoryId`),
  KEY `IX_E119938A` (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetEntries_AssetCategories`
--

LOCK TABLES `AssetEntries_AssetCategories` WRITE;
/*!40000 ALTER TABLE `AssetEntries_AssetCategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetEntries_AssetCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetEntries_AssetTags`
--

DROP TABLE IF EXISTS `AssetEntries_AssetTags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetEntries_AssetTags` (
  `entryId` bigint(20) NOT NULL,
  `tagId` bigint(20) NOT NULL,
  PRIMARY KEY (`entryId`,`tagId`),
  KEY `IX_2ED82CAD` (`entryId`),
  KEY `IX_B2A61B55` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetEntries_AssetTags`
--

LOCK TABLES `AssetEntries_AssetTags` WRITE;
/*!40000 ALTER TABLE `AssetEntries_AssetTags` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetEntries_AssetTags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetEntry`
--

DROP TABLE IF EXISTS `AssetEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetEntry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `classTypeId` bigint(20) DEFAULT NULL,
  `visible` tinyint(4) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `publishDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `summary` longtext,
  `url` longtext,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_1E9D371D` (`classNameId`,`classPK`),
  KEY `IX_FC1F9C7B` (`classUuid`),
  KEY `IX_7306C60` (`companyId`),
  KEY `IX_75D42FF9` (`expirationDate`),
  KEY `IX_1EBA6821` (`groupId`,`classUuid`),
  KEY `IX_FEC4A201` (`layoutUuid`),
  KEY `IX_2E4E3885` (`publishDate`),
  KEY `IX_9029E15A` (`visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetEntry`
--

LOCK TABLES `AssetEntry` WRITE;
/*!40000 ALTER TABLE `AssetEntry` DISABLE KEYS */;
INSERT INTO `AssetEntry` VALUES (10180,10173,10155,10159,'','2018-06-13 01:30:12','2018-06-13 01:30:12',10116,10178,'93238ef5-c97c-4df4-5798-4704a69cf3a3',0,0,NULL,NULL,NULL,NULL,'text/html','10176','','','','',0,0,0,0),(10189,10182,10155,10159,'','2018-06-13 01:30:12','2018-06-13 01:30:12',10116,10187,'4fb15946-f887-1588-ae16-823a61baef80',0,0,NULL,NULL,NULL,NULL,'text/html','10185','','','','',0,0,0,0),(10204,10195,10155,10199,'Test Test','2018-06-13 01:30:12','2018-06-13 01:30:12',10005,10199,'46e10dd9-6bb4-1915-eb12-c18aec8c33ad',0,0,NULL,NULL,NULL,NULL,'','Test Test','','','','',0,0,0,0),(10325,10317,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14',10116,10322,'767d58bc-d308-5361-e34c-9fc72637748a',0,0,NULL,NULL,NULL,NULL,'text/html','10320','','','','',0,0,0,0),(10336,10329,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',10116,10334,'78a72f7d-9b59-743c-1044-a02eee3ddbb4',0,0,NULL,NULL,NULL,NULL,'text/html','10332','','','','',0,0,0,0),(10346,10339,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',10116,10344,'72d12b18-457c-7f3c-2c90-cb6c70625acb',0,0,NULL,NULL,NULL,NULL,'text/html','10342','','','','',0,0,0,0),(10365,10350,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',10116,10363,'7c360295-f258-f8a7-5500-1119946732a2',0,0,NULL,NULL,NULL,NULL,'text/html','10361','','','','',0,0,0,0),(10373,10350,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',10116,10371,'934645ed-b090-f89d-b043-64029debc735',0,0,NULL,NULL,NULL,NULL,'text/html','10369','','','','',0,0,0,0),(10391,10376,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',10116,10389,'4cabf156-8c6b-12af-d282-0c28e4d37290',0,0,NULL,NULL,NULL,NULL,'text/html','10387','','','','',0,0,0,0),(10400,10376,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',10116,10398,'8f9fc018-82e8-f18f-0342-b1c58c14c08c',0,0,NULL,NULL,NULL,NULL,'text/html','10396','','','','',0,0,0,0),(10408,10376,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',10116,10406,'946c5311-1c16-ef49-fe48-cd90ea080d60',0,0,NULL,NULL,NULL,NULL,'text/html','10404','','','','',0,0,0,0),(10455,10201,10155,10199,'Test Test','2018-06-13 01:31:27','2018-06-13 01:31:27',10116,10453,'edb2280a-fdc3-4140-f53b-aa39613e63e2',0,0,NULL,NULL,NULL,NULL,'text/html','10451','','','','',0,0,0,0),(10461,10201,10155,10199,'Test Test','2018-06-13 01:31:27','2018-06-13 01:31:27',10116,10459,'851a73b2-b8d2-cc3b-3614-47a0bfe8c04e',0,0,NULL,NULL,NULL,NULL,'text/html','10457','','','','',0,0,0,0),(10473,10182,10155,10199,'Test Test','2018-06-13 01:31:36','2018-06-13 01:31:36',10447,10464,'8eedc9c6-a3fe-8c11-4fc5-d916a7c34ab2',0,1,NULL,NULL,NULL,NULL,'text','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Liferay</Name></root>','','','','',0,0,0,0),(10478,10182,10155,10199,'Test Test','2018-06-13 01:31:43','2018-06-13 01:31:43',10116,10476,'20b9eb70-1f67-ad1e-9a66-21a15b019aea',0,0,NULL,NULL,NULL,NULL,'text/html','10474','','','','',0,0,0,0),(10491,10201,10155,10199,'Test Test','2018-06-13 01:31:53','2018-06-13 01:31:53',10447,10482,'7d160c25-dab9-6306-055c-de57b427d90c',0,1,NULL,NULL,NULL,NULL,'text','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Test Test</Name></root>','','','','',0,0,0,0),(10496,10182,10155,10199,'Test Test','2018-06-13 01:32:11','2018-06-13 01:32:11',10445,10492,'229c7fee-311e-1536-bb3f-9cdd789ff043',0,1,NULL,NULL,NULL,NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Calendar Event Title</Title></root>','','','','',0,0,0,0);
/*!40000 ALTER TABLE `AssetEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetLink`
--

DROP TABLE IF EXISTS `AssetLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetLink` (
  `linkId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId1` bigint(20) DEFAULT NULL,
  `entryId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  PRIMARY KEY (`linkId`),
  UNIQUE KEY `IX_8F542794` (`entryId1`,`entryId2`,`type_`),
  KEY `IX_128516C8` (`entryId1`),
  KEY `IX_56E0AB21` (`entryId1`,`entryId2`),
  KEY `IX_14D5A20D` (`entryId1`,`type_`),
  KEY `IX_12851A89` (`entryId2`),
  KEY `IX_91F132C` (`entryId2`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetLink`
--

LOCK TABLES `AssetLink` WRITE;
/*!40000 ALTER TABLE `AssetLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetTag`
--

DROP TABLE IF EXISTS `AssetTag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetTag` (
  `tagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagId`),
  KEY `IX_7C9E46BA` (`groupId`),
  KEY `IX_D63322F9` (`groupId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetTag`
--

LOCK TABLES `AssetTag` WRITE;
/*!40000 ALTER TABLE `AssetTag` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetTag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetTagProperty`
--

DROP TABLE IF EXISTS `AssetTagProperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetTagProperty` (
  `tagPropertyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tagPropertyId`),
  UNIQUE KEY `IX_2C944354` (`tagId`,`key_`),
  KEY `IX_DFF1F063` (`companyId`),
  KEY `IX_13805BF7` (`companyId`,`key_`),
  KEY `IX_3269E180` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetTagProperty`
--

LOCK TABLES `AssetTagProperty` WRITE;
/*!40000 ALTER TABLE `AssetTagProperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetTagProperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetTagStats`
--

DROP TABLE IF EXISTS `AssetTagStats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetTagStats` (
  `tagStatsId` bigint(20) NOT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagStatsId`),
  UNIQUE KEY `IX_56682CC4` (`tagId`,`classNameId`),
  KEY `IX_50702693` (`classNameId`),
  KEY `IX_9464CA` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetTagStats`
--

LOCK TABLES `AssetTagStats` WRITE;
/*!40000 ALTER TABLE `AssetTagStats` DISABLE KEYS */;
/*!40000 ALTER TABLE `AssetTagStats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `AssetVocabulary`
--

DROP TABLE IF EXISTS `AssetVocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `AssetVocabulary` (
  `uuid_` varchar(75) DEFAULT NULL,
  `vocabularyId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `settings_` longtext,
  PRIMARY KEY (`vocabularyId`),
  UNIQUE KEY `IX_1B2B8792` (`uuid_`,`groupId`),
  KEY `IX_B22D908C` (`companyId`),
  KEY `IX_B6B8CA0E` (`groupId`),
  KEY `IX_C0AAD74D` (`groupId`,`name`),
  KEY `IX_55F58818` (`uuid_`),
  KEY `IX_C4E6FD10` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `AssetVocabulary`
--

LOCK TABLES `AssetVocabulary` WRITE;
/*!40000 ALTER TABLE `AssetVocabulary` DISABLE KEYS */;
INSERT INTO `AssetVocabulary` VALUES ('21fcae26-d831-4fd1-3a2d-eea8c20dab22',10324,10195,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','','');
/*!40000 ALTER TABLE `AssetVocabulary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BackgroundTask`
--

DROP TABLE IF EXISTS `BackgroundTask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BackgroundTask` (
  `backgroundTaskId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `servletContextNames` varchar(255) DEFAULT NULL,
  `taskExecutorClassName` varchar(200) DEFAULT NULL,
  `taskContext` longtext,
  `completed` tinyint(4) DEFAULT NULL,
  `completionDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusMessage` longtext,
  PRIMARY KEY (`backgroundTaskId`),
  KEY `IX_C5A6C78F` (`companyId`),
  KEY `IX_5A09E5D1` (`groupId`),
  KEY `IX_98CC0AAB` (`groupId`,`name`,`taskExecutorClassName`),
  KEY `IX_579C63B0` (`groupId`,`name`,`taskExecutorClassName`,`completed`),
  KEY `IX_C71C3B7` (`groupId`,`status`),
  KEY `IX_A73B688A` (`groupId`,`taskExecutorClassName`),
  KEY `IX_7A9FF471` (`groupId`,`taskExecutorClassName`,`completed`),
  KEY `IX_7E757D70` (`groupId`,`taskExecutorClassName`,`status`),
  KEY `IX_C07CC7F8` (`name`),
  KEY `IX_75638CDF` (`status`),
  KEY `IX_2FCFE748` (`taskExecutorClassName`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BackgroundTask`
--

LOCK TABLES `BackgroundTask` WRITE;
/*!40000 ALTER TABLE `BackgroundTask` DISABLE KEYS */;
/*!40000 ALTER TABLE `BackgroundTask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogsEntry`
--

DROP TABLE IF EXISTS `BlogsEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlogsEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `displayDate` datetime DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `allowTrackbacks` tinyint(4) DEFAULT NULL,
  `trackbacks` longtext,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_DB780A20` (`groupId`,`urlTitle`),
  UNIQUE KEY `IX_1B1040FD` (`uuid_`,`groupId`),
  KEY `IX_72EF6041` (`companyId`),
  KEY `IX_430D791F` (`companyId`,`displayDate`),
  KEY `IX_BB0C2905` (`companyId`,`displayDate`,`status`),
  KEY `IX_EB2DCE27` (`companyId`,`status`),
  KEY `IX_8CACE77B` (`companyId`,`userId`),
  KEY `IX_A5F57B61` (`companyId`,`userId`,`status`),
  KEY `IX_2672F77F` (`displayDate`,`status`),
  KEY `IX_81A50303` (`groupId`),
  KEY `IX_621E19D` (`groupId`,`displayDate`),
  KEY `IX_F0E73383` (`groupId`,`displayDate`,`status`),
  KEY `IX_1EFD8EE9` (`groupId`,`status`),
  KEY `IX_FBDE0AA3` (`groupId`,`userId`,`displayDate`),
  KEY `IX_DA04F689` (`groupId`,`userId`,`displayDate`,`status`),
  KEY `IX_49E15A23` (`groupId`,`userId`,`status`),
  KEY `IX_69157A4D` (`uuid_`),
  KEY `IX_5E8307BB` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogsEntry`
--

LOCK TABLES `BlogsEntry` WRITE;
/*!40000 ALTER TABLE `BlogsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogsEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BlogsStatsUser`
--

DROP TABLE IF EXISTS `BlogsStatsUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BlogsStatsUser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `entryCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `ratingsTotalEntries` int(11) DEFAULT NULL,
  `ratingsTotalScore` double DEFAULT NULL,
  `ratingsAverageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsUserId`),
  UNIQUE KEY `IX_82254C25` (`groupId`,`userId`),
  KEY `IX_90CDA39A` (`companyId`,`entryCount`),
  KEY `IX_43840EEB` (`groupId`),
  KEY `IX_28C78D5C` (`groupId`,`entryCount`),
  KEY `IX_BB51F1D9` (`userId`),
  KEY `IX_507BA031` (`userId`,`lastPostDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BlogsStatsUser`
--

LOCK TABLES `BlogsStatsUser` WRITE;
/*!40000 ALTER TABLE `BlogsStatsUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `BlogsStatsUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BookmarksEntry`
--

DROP TABLE IF EXISTS `BookmarksEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BookmarksEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `description` longtext,
  `visits` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_EAA02A91` (`uuid_`,`groupId`),
  KEY `IX_1F90CA2D` (`companyId`),
  KEY `IX_276C8C13` (`companyId`,`status`),
  KEY `IX_5200100C` (`groupId`,`folderId`),
  KEY `IX_146382F2` (`groupId`,`folderId`,`status`),
  KEY `IX_416AD7D5` (`groupId`,`status`),
  KEY `IX_C78B61AC` (`groupId`,`userId`,`folderId`,`status`),
  KEY `IX_9D9CF70F` (`groupId`,`userId`,`status`),
  KEY `IX_E848278F` (`resourceBlockId`),
  KEY `IX_B670BA39` (`uuid_`),
  KEY `IX_89BEDC4F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BookmarksEntry`
--

LOCK TABLES `BookmarksEntry` WRITE;
/*!40000 ALTER TABLE `BookmarksEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `BookmarksEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BookmarksFolder`
--

DROP TABLE IF EXISTS `BookmarksFolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BookmarksFolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_DC2F8927` (`uuid_`,`groupId`),
  KEY `IX_2ABA25D7` (`companyId`),
  KEY `IX_C27C9DBD` (`companyId`,`status`),
  KEY `IX_7F703619` (`groupId`),
  KEY `IX_967799C0` (`groupId`,`parentFolderId`),
  KEY `IX_D16018A6` (`groupId`,`parentFolderId`,`status`),
  KEY `IX_28A49BB9` (`resourceBlockId`),
  KEY `IX_451E7AE3` (`uuid_`),
  KEY `IX_54F0ED65` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BookmarksFolder`
--

LOCK TABLES `BookmarksFolder` WRITE;
/*!40000 ALTER TABLE `BookmarksFolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `BookmarksFolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `BrowserTracker`
--

DROP TABLE IF EXISTS `BrowserTracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BrowserTracker` (
  `browserTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `browserKey` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`browserTrackerId`),
  UNIQUE KEY `IX_E7B95510` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BrowserTracker`
--

LOCK TABLES `BrowserTracker` WRITE;
/*!40000 ALTER TABLE `BrowserTracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `BrowserTracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CalEvent`
--

DROP TABLE IF EXISTS `CalEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalEvent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `eventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `location` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `durationHour` int(11) DEFAULT NULL,
  `durationMinute` int(11) DEFAULT NULL,
  `allDay` tinyint(4) DEFAULT NULL,
  `timeZoneSensitive` tinyint(4) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `repeating` tinyint(4) DEFAULT NULL,
  `recurrence` longtext,
  `remindBy` int(11) DEFAULT NULL,
  `firstReminder` int(11) DEFAULT NULL,
  `secondReminder` int(11) DEFAULT NULL,
  PRIMARY KEY (`eventId`),
  UNIQUE KEY `IX_5CCE79C8` (`uuid_`,`groupId`),
  KEY `IX_D6FD9496` (`companyId`),
  KEY `IX_12EE4898` (`groupId`),
  KEY `IX_4FDDD2BF` (`groupId`,`repeating`),
  KEY `IX_FCD7C63D` (`groupId`,`type_`),
  KEY `IX_FD93CBFA` (`groupId`,`type_`,`repeating`),
  KEY `IX_F6006202` (`remindBy`),
  KEY `IX_C1AD2122` (`uuid_`),
  KEY `IX_299639C6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CalEvent`
--

LOCK TABLES `CalEvent` WRITE;
/*!40000 ALTER TABLE `CalEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `CalEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Calendar`
--

DROP TABLE IF EXISTS `Calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Calendar` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `calendarResourceId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `timeZoneId` varchar(75) DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `defaultCalendar` tinyint(4) DEFAULT NULL,
  `enableComments` tinyint(4) DEFAULT NULL,
  `enableRatings` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`calendarId`),
  UNIQUE KEY `IX_3AE311A` (`uuid_`,`groupId`),
  KEY `IX_B53EB0E1` (`groupId`,`calendarResourceId`),
  KEY `IX_97FC174E` (`groupId`,`calendarResourceId`,`defaultCalendar`),
  KEY `IX_F0FAF226` (`resourceBlockId`),
  KEY `IX_96C8590` (`uuid_`),
  KEY `IX_97656498` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Calendar`
--

LOCK TABLES `Calendar` WRITE;
/*!40000 ALTER TABLE `Calendar` DISABLE KEYS */;
INSERT INTO `Calendar` VALUES ('cc21c700-1f2b-71e4-9c93-072d449fca39',10466,10182,10155,10199,'Test Test','2018-06-13 01:31:36','2018-06-13 01:31:36',4,10464,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Liferay</Name></root>','','UTC',14247526,1,0,0),('6e670112-5c33-ebbc-51c5-777e64933e07',10484,10201,10155,10199,'Test Test','2018-06-13 01:31:53','2018-06-13 01:31:53',8,10482,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Test Test</Name></root>','','UTC',14247526,1,0,0);
/*!40000 ALTER TABLE `Calendar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CalendarBooking`
--

DROP TABLE IF EXISTS `CalendarBooking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarBooking` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarBookingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `calendarId` bigint(20) DEFAULT NULL,
  `calendarResourceId` bigint(20) DEFAULT NULL,
  `parentCalendarBookingId` bigint(20) DEFAULT NULL,
  `vEventUid` varchar(255) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `location` longtext,
  `startTime` bigint(20) DEFAULT NULL,
  `endTime` bigint(20) DEFAULT NULL,
  `allDay` tinyint(4) DEFAULT NULL,
  `recurrence` longtext,
  `firstReminder` bigint(20) DEFAULT NULL,
  `firstReminderType` varchar(75) DEFAULT NULL,
  `secondReminder` bigint(20) DEFAULT NULL,
  `secondReminderType` varchar(75) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`calendarBookingId`),
  UNIQUE KEY `IX_113A264E` (`calendarId`,`parentCalendarBookingId`),
  UNIQUE KEY `IX_8B23DA0E` (`calendarId`,`vEventUid`),
  UNIQUE KEY `IX_F4C61797` (`uuid_`,`groupId`),
  KEY `IX_D300DFCE` (`calendarId`),
  KEY `IX_470170B4` (`calendarId`,`status`),
  KEY `IX_B198FFC` (`calendarResourceId`),
  KEY `IX_57EBF55B` (`parentCalendarBookingId`),
  KEY `IX_F7B8A941` (`parentCalendarBookingId`,`status`),
  KEY `IX_22DFDB49` (`resourceBlockId`),
  KEY `IX_F6E8EE73` (`uuid_`),
  KEY `IX_A21D9FD5` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CalendarBooking`
--

LOCK TABLES `CalendarBooking` WRITE;
/*!40000 ALTER TABLE `CalendarBooking` DISABLE KEYS */;
INSERT INTO `CalendarBooking` VALUES ('229c7fee-311e-1536-bb3f-9cdd789ff043',10492,10182,10155,10199,'Test Test','2018-06-13 01:32:11','2018-06-13 01:32:13',10,10466,10464,10492,'d049af85-6208-ec41-42e6-4c9a9b1d8e50','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Calendar Event Title</Title></root>','','',1528853520000,1528857120000,0,'RRULE:FREQ=DAILY;INTERVAL=1',0,'email',0,'email',0,10199,'Test Test','2018-06-13 01:32:13');
/*!40000 ALTER TABLE `CalendarBooking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CalendarNotificationTemplate`
--

DROP TABLE IF EXISTS `CalendarNotificationTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarNotificationTemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarNotificationTemplateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `calendarId` bigint(20) DEFAULT NULL,
  `notificationType` varchar(75) DEFAULT NULL,
  `notificationTypeSettings` varchar(75) DEFAULT NULL,
  `notificationTemplateType` varchar(75) DEFAULT NULL,
  `subject` varchar(75) DEFAULT NULL,
  `body` longtext,
  PRIMARY KEY (`calendarNotificationTemplateId`),
  UNIQUE KEY `IX_4012E97F` (`uuid_`,`groupId`),
  KEY `IX_A412E5B6` (`calendarId`),
  KEY `IX_7727A482` (`calendarId`,`notificationType`,`notificationTemplateType`),
  KEY `IX_A2D4D78B` (`uuid_`),
  KEY `IX_4D7D97BD` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CalendarNotificationTemplate`
--

LOCK TABLES `CalendarNotificationTemplate` WRITE;
/*!40000 ALTER TABLE `CalendarNotificationTemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `CalendarNotificationTemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CalendarResource`
--

DROP TABLE IF EXISTS `CalendarResource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CalendarResource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `calendarResourceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `code_` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`calendarResourceId`),
  UNIQUE KEY `IX_16A12327` (`classNameId`,`classPK`),
  UNIQUE KEY `IX_4ABD2BC8` (`uuid_`,`groupId`),
  KEY `IX_76DDD0F7` (`active_`),
  KEY `IX_4470A59D` (`companyId`,`code_`,`active_`),
  KEY `IX_1243D698` (`groupId`),
  KEY `IX_40678371` (`groupId`,`active_`),
  KEY `IX_55C2F8AA` (`groupId`,`code_`),
  KEY `IX_8BCB4D38` (`resourceBlockId`),
  KEY `IX_150E2F22` (`uuid_`),
  KEY `IX_56A06BC6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CalendarResource`
--

LOCK TABLES `CalendarResource` WRITE;
/*!40000 ALTER TABLE `CalendarResource` DISABLE KEYS */;
INSERT INTO `CalendarResource` VALUES ('8eedc9c6-a3fe-8c11-4fc5-d916a7c34ab2',10464,10182,10155,10199,'Test Test','2018-06-13 01:31:36','2018-06-13 01:31:36',1,10001,10182,'','10464','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Liferay</Name></root>','',1),('7d160c25-dab9-6306-055c-de57b427d90c',10482,10201,10155,10199,'Test Test','2018-06-13 01:31:53','2018-06-13 01:31:53',5,10005,10199,'','10482','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Test Test</Name></root>','',1);
/*!40000 ALTER TABLE `CalendarResource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClassName_`
--

DROP TABLE IF EXISTS `ClassName_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClassName_` (
  `classNameId` bigint(20) NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`classNameId`),
  UNIQUE KEY `IX_B27A301F` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClassName_`
--

LOCK TABLES `ClassName_` WRITE;
/*!40000 ALTER TABLE `ClassName_` DISABLE KEYS */;
INSERT INTO `ClassName_` VALUES (10444,'com.liferay.calendar.model.Calendar'),(10445,'com.liferay.calendar.model.CalendarBooking'),(10446,'com.liferay.calendar.model.CalendarNotificationTemplate'),(10447,'com.liferay.calendar.model.CalendarResource'),(10017,'com.liferay.counter.model.Counter'),(10433,'com.liferay.marketplace.model.App'),(10434,'com.liferay.marketplace.model.Module'),(10424,'com.liferay.portal.kernel.repository.model.FileEntry'),(10018,'com.liferay.portal.kernel.workflow.WorkflowTask'),(10019,'com.liferay.portal.model.Account'),(10020,'com.liferay.portal.model.Address'),(10021,'com.liferay.portal.model.BackgroundTask'),(10022,'com.liferay.portal.model.BrowserTracker'),(10023,'com.liferay.portal.model.ClassName'),(10024,'com.liferay.portal.model.ClusterGroup'),(10025,'com.liferay.portal.model.Company'),(10026,'com.liferay.portal.model.Contact'),(10027,'com.liferay.portal.model.Country'),(10028,'com.liferay.portal.model.EmailAddress'),(10001,'com.liferay.portal.model.Group'),(10029,'com.liferay.portal.model.Image'),(10002,'com.liferay.portal.model.Layout'),(10030,'com.liferay.portal.model.LayoutBranch'),(10031,'com.liferay.portal.model.LayoutFriendlyURL'),(10032,'com.liferay.portal.model.LayoutPrototype'),(10033,'com.liferay.portal.model.LayoutRevision'),(10034,'com.liferay.portal.model.LayoutSet'),(10035,'com.liferay.portal.model.LayoutSetBranch'),(10036,'com.liferay.portal.model.LayoutSetPrototype'),(10037,'com.liferay.portal.model.ListType'),(10038,'com.liferay.portal.model.Lock'),(10039,'com.liferay.portal.model.MembershipRequest'),(10003,'com.liferay.portal.model.Organization'),(10040,'com.liferay.portal.model.OrgGroupRole'),(10041,'com.liferay.portal.model.OrgLabor'),(10042,'com.liferay.portal.model.PasswordPolicy'),(10043,'com.liferay.portal.model.PasswordPolicyRel'),(10044,'com.liferay.portal.model.PasswordTracker'),(10045,'com.liferay.portal.model.Phone'),(10046,'com.liferay.portal.model.PluginSetting'),(10047,'com.liferay.portal.model.PortalPreferences'),(10048,'com.liferay.portal.model.Portlet'),(10049,'com.liferay.portal.model.PortletItem'),(10050,'com.liferay.portal.model.PortletPreferences'),(10051,'com.liferay.portal.model.Region'),(10052,'com.liferay.portal.model.Release'),(10053,'com.liferay.portal.model.Repository'),(10054,'com.liferay.portal.model.RepositoryEntry'),(10055,'com.liferay.portal.model.ResourceAction'),(10056,'com.liferay.portal.model.ResourceBlock'),(10057,'com.liferay.portal.model.ResourceBlockPermission'),(10058,'com.liferay.portal.model.ResourcePermission'),(10059,'com.liferay.portal.model.ResourceTypePermission'),(10004,'com.liferay.portal.model.Role'),(10060,'com.liferay.portal.model.ServiceComponent'),(10061,'com.liferay.portal.model.Shard'),(10062,'com.liferay.portal.model.Subscription'),(10063,'com.liferay.portal.model.SystemEvent'),(10064,'com.liferay.portal.model.Team'),(10065,'com.liferay.portal.model.Ticket'),(10005,'com.liferay.portal.model.User'),(10006,'com.liferay.portal.model.UserGroup'),(10066,'com.liferay.portal.model.UserGroupGroupRole'),(10067,'com.liferay.portal.model.UserGroupRole'),(10068,'com.liferay.portal.model.UserIdMapper'),(10069,'com.liferay.portal.model.UserNotificationDelivery'),(10070,'com.liferay.portal.model.UserNotificationEvent'),(10191,'com.liferay.portal.model.UserPersonalSite'),(10071,'com.liferay.portal.model.UserTracker'),(10072,'com.liferay.portal.model.UserTrackerPath'),(10073,'com.liferay.portal.model.VirtualHost'),(10074,'com.liferay.portal.model.WebDAVProps'),(10075,'com.liferay.portal.model.Website'),(10076,'com.liferay.portal.model.WorkflowDefinitionLink'),(10077,'com.liferay.portal.model.WorkflowInstanceLink'),(10078,'com.liferay.portlet.announcements.model.AnnouncementsDelivery'),(10079,'com.liferay.portlet.announcements.model.AnnouncementsEntry'),(10080,'com.liferay.portlet.announcements.model.AnnouncementsFlag'),(10081,'com.liferay.portlet.asset.model.AssetCategory'),(10082,'com.liferay.portlet.asset.model.AssetCategoryProperty'),(10083,'com.liferay.portlet.asset.model.AssetEntry'),(10084,'com.liferay.portlet.asset.model.AssetLink'),(10085,'com.liferay.portlet.asset.model.AssetTag'),(10086,'com.liferay.portlet.asset.model.AssetTagProperty'),(10087,'com.liferay.portlet.asset.model.AssetTagStats'),(10088,'com.liferay.portlet.asset.model.AssetVocabulary'),(10007,'com.liferay.portlet.blogs.model.BlogsEntry'),(10089,'com.liferay.portlet.blogs.model.BlogsStatsUser'),(10008,'com.liferay.portlet.bookmarks.model.BookmarksEntry'),(10009,'com.liferay.portlet.bookmarks.model.BookmarksFolder'),(10010,'com.liferay.portlet.calendar.model.CalEvent'),(10090,'com.liferay.portlet.documentlibrary.model.DLContent'),(10011,'com.liferay.portlet.documentlibrary.model.DLFileEntry'),(10091,'com.liferay.portlet.documentlibrary.model.DLFileEntryMetadata'),(10092,'com.liferay.portlet.documentlibrary.model.DLFileEntryType'),(10093,'com.liferay.portlet.documentlibrary.model.DLFileRank'),(10094,'com.liferay.portlet.documentlibrary.model.DLFileShortcut'),(10095,'com.liferay.portlet.documentlibrary.model.DLFileVersion'),(10012,'com.liferay.portlet.documentlibrary.model.DLFolder'),(10096,'com.liferay.portlet.documentlibrary.model.DLSyncEvent'),(10314,'com.liferay.portlet.documentlibrary.util.RawMetadataProcessor'),(10097,'com.liferay.portlet.dynamicdatalists.model.DDLRecord'),(10098,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet'),(10099,'com.liferay.portlet.dynamicdatalists.model.DDLRecordVersion'),(10100,'com.liferay.portlet.dynamicdatamapping.model.DDMContent'),(10101,'com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink'),(10102,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure'),(10103,'com.liferay.portlet.dynamicdatamapping.model.DDMStructureLink'),(10104,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate'),(10105,'com.liferay.portlet.expando.model.ExpandoColumn'),(10106,'com.liferay.portlet.expando.model.ExpandoRow'),(10107,'com.liferay.portlet.expando.model.ExpandoTable'),(10108,'com.liferay.portlet.expando.model.ExpandoValue'),(10109,'com.liferay.portlet.journal.model.JournalArticle'),(10110,'com.liferay.portlet.journal.model.JournalArticleImage'),(10111,'com.liferay.portlet.journal.model.JournalArticleResource'),(10112,'com.liferay.portlet.journal.model.JournalContentSearch'),(10113,'com.liferay.portlet.journal.model.JournalFeed'),(10013,'com.liferay.portlet.journal.model.JournalFolder'),(10114,'com.liferay.portlet.messageboards.model.MBBan'),(10115,'com.liferay.portlet.messageboards.model.MBCategory'),(10116,'com.liferay.portlet.messageboards.model.MBDiscussion'),(10117,'com.liferay.portlet.messageboards.model.MBMailingList'),(10014,'com.liferay.portlet.messageboards.model.MBMessage'),(10118,'com.liferay.portlet.messageboards.model.MBStatsUser'),(10015,'com.liferay.portlet.messageboards.model.MBThread'),(10119,'com.liferay.portlet.messageboards.model.MBThreadFlag'),(10120,'com.liferay.portlet.mobiledevicerules.model.MDRAction'),(10121,'com.liferay.portlet.mobiledevicerules.model.MDRRule'),(10122,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup'),(10123,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance'),(10124,'com.liferay.portlet.polls.model.PollsChoice'),(10125,'com.liferay.portlet.polls.model.PollsQuestion'),(10126,'com.liferay.portlet.polls.model.PollsVote'),(10127,'com.liferay.portlet.ratings.model.RatingsEntry'),(10128,'com.liferay.portlet.ratings.model.RatingsStats'),(10129,'com.liferay.portlet.shopping.model.ShoppingCart'),(10130,'com.liferay.portlet.shopping.model.ShoppingCategory'),(10131,'com.liferay.portlet.shopping.model.ShoppingCoupon'),(10132,'com.liferay.portlet.shopping.model.ShoppingItem'),(10133,'com.liferay.portlet.shopping.model.ShoppingItemField'),(10134,'com.liferay.portlet.shopping.model.ShoppingItemPrice'),(10135,'com.liferay.portlet.shopping.model.ShoppingOrder'),(10136,'com.liferay.portlet.shopping.model.ShoppingOrderItem'),(10137,'com.liferay.portlet.social.model.SocialActivity'),(10138,'com.liferay.portlet.social.model.SocialActivityAchievement'),(10139,'com.liferay.portlet.social.model.SocialActivityCounter'),(10140,'com.liferay.portlet.social.model.SocialActivityLimit'),(10141,'com.liferay.portlet.social.model.SocialActivitySet'),(10142,'com.liferay.portlet.social.model.SocialActivitySetting'),(10143,'com.liferay.portlet.social.model.SocialRelation'),(10144,'com.liferay.portlet.social.model.SocialRequest'),(10145,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion'),(10146,'com.liferay.portlet.softwarecatalog.model.SCLicense'),(10147,'com.liferay.portlet.softwarecatalog.model.SCProductEntry'),(10148,'com.liferay.portlet.softwarecatalog.model.SCProductScreenshot'),(10149,'com.liferay.portlet.softwarecatalog.model.SCProductVersion'),(10150,'com.liferay.portlet.trash.model.TrashEntry'),(10151,'com.liferay.portlet.trash.model.TrashVersion'),(10152,'com.liferay.portlet.wiki.model.WikiNode'),(10016,'com.liferay.portlet.wiki.model.WikiPage'),(10153,'com.liferay.portlet.wiki.model.WikiPageResource');
/*!40000 ALTER TABLE `ClassName_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ClusterGroup`
--

DROP TABLE IF EXISTS `ClusterGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ClusterGroup` (
  `clusterGroupId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `clusterNodeIds` varchar(75) DEFAULT NULL,
  `wholeCluster` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`clusterGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ClusterGroup`
--

LOCK TABLES `ClusterGroup` WRITE;
/*!40000 ALTER TABLE `ClusterGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `ClusterGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Company`
--

DROP TABLE IF EXISTS `Company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Company` (
  `companyId` bigint(20) NOT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `webId` varchar(75) DEFAULT NULL,
  `key_` longtext,
  `mx` varchar(75) DEFAULT NULL,
  `homeURL` longtext,
  `logoId` bigint(20) DEFAULT NULL,
  `system` tinyint(4) DEFAULT NULL,
  `maxUsers` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`companyId`),
  UNIQUE KEY `IX_EC00543C` (`webId`),
  KEY `IX_38EFE3FD` (`logoId`),
  KEY `IX_12566EC2` (`mx`),
  KEY `IX_35E3E7C6` (`system`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Company`
--

LOCK TABLES `Company` WRITE;
/*!40000 ALTER TABLE `Company` DISABLE KEYS */;
INSERT INTO `Company` VALUES (10155,10157,'liferay.com','rO0ABXNyAB9qYXZheC5jcnlwdG8uc3BlYy5TZWNyZXRLZXlTcGVjW0cLZuIwYU0CAAJMAAlhbGdvcml0aG10ABJMamF2YS9sYW5nL1N0cmluZztbAANrZXl0AAJbQnhwdAADQUVTdXIAAltCrPMX+AYIVOACAAB4cAAAABCkJcqtX6qhhigXackfyY1r','liferay.com','',0,0,0,1);
/*!40000 ALTER TABLE `Company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Contact_`
--

DROP TABLE IF EXISTS `Contact_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Contact_` (
  `contactId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `parentContactId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `prefixId` int(11) DEFAULT NULL,
  `suffixId` int(11) DEFAULT NULL,
  `male` tinyint(4) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `smsSn` varchar(75) DEFAULT NULL,
  `aimSn` varchar(75) DEFAULT NULL,
  `facebookSn` varchar(75) DEFAULT NULL,
  `icqSn` varchar(75) DEFAULT NULL,
  `jabberSn` varchar(75) DEFAULT NULL,
  `msnSn` varchar(75) DEFAULT NULL,
  `mySpaceSn` varchar(75) DEFAULT NULL,
  `skypeSn` varchar(75) DEFAULT NULL,
  `twitterSn` varchar(75) DEFAULT NULL,
  `ymSn` varchar(75) DEFAULT NULL,
  `employeeStatusId` varchar(75) DEFAULT NULL,
  `employeeNumber` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `jobClass` varchar(75) DEFAULT NULL,
  `hoursOfOperation` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contactId`),
  KEY `IX_B8C28C53` (`accountId`),
  KEY `IX_791914FA` (`classNameId`,`classPK`),
  KEY `IX_66D496A3` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Contact_`
--

LOCK TABLES `Contact_` WRITE;
/*!40000 ALTER TABLE `Contact_` DISABLE KEYS */;
INSERT INTO `Contact_` VALUES (10160,10155,10159,'','2018-06-13 01:30:11','2018-06-13 01:30:11',10005,10159,10157,0,'default@liferay.com','','','',0,0,1,'2018-06-13 01:30:11','','','','','','','','','','','','','','',''),(10200,10155,10199,'','2018-06-13 01:30:12','2018-06-13 01:30:12',10005,10199,10157,0,'test@liferay.com','Test','','Test',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `Contact_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Counter`
--

DROP TABLE IF EXISTS `Counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Counter` (
  `name` varchar(75) NOT NULL,
  `currentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Counter`
--

LOCK TABLES `Counter` WRITE;
/*!40000 ALTER TABLE `Counter` DISABLE KEYS */;
INSERT INTO `Counter` VALUES ('com.liferay.counter.model.Counter',10500),('com.liferay.portal.model.Layout#10173#true',1),('com.liferay.portal.model.Layout#10182#false',2),('com.liferay.portal.model.Layout#10201#false',1),('com.liferay.portal.model.Layout#10201#true',1),('com.liferay.portal.model.Layout#10317#true',1),('com.liferay.portal.model.Layout#10329#true',1),('com.liferay.portal.model.Layout#10339#true',1),('com.liferay.portal.model.Layout#10350#true',2),('com.liferay.portal.model.Layout#10376#true',3),('com.liferay.portal.model.ResourceAction',1200),('com.liferay.portal.model.ResourceBlock',100),('com.liferay.portal.model.ResourcePermission',500),('com.liferay.portlet.social.model.SocialActivity',100);
/*!40000 ALTER TABLE `Counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Country`
--

DROP TABLE IF EXISTS `Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Country` (
  `countryId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `a2` varchar(75) DEFAULT NULL,
  `a3` varchar(75) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `idd_` varchar(75) DEFAULT NULL,
  `zipRequired` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`countryId`),
  UNIQUE KEY `IX_717B97E1` (`a2`),
  UNIQUE KEY `IX_717B9BA2` (`a3`),
  UNIQUE KEY `IX_19DA007B` (`name`),
  KEY `IX_25D734CD` (`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Country`
--

LOCK TABLES `Country` WRITE;
/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
INSERT INTO `Country` VALUES (1,'canada','CA','CAN','124','001',1,1),(2,'china','CN','CHN','156','086',1,1),(3,'france','FR','FRA','250','033',1,1),(4,'germany','DE','DEU','276','049',1,1),(5,'hong-kong','HK','HKG','344','852',1,1),(6,'hungary','HU','HUN','348','036',1,1),(7,'israel','IL','ISR','376','972',1,1),(8,'italy','IT','ITA','380','039',1,1),(9,'japan','JP','JPN','392','081',0,1),(10,'south-korea','KR','KOR','410','082',1,1),(11,'netherlands','NL','NLD','528','031',1,1),(12,'portugal','PT','PRT','620','351',1,1),(13,'russia','RU','RUS','643','007',1,1),(14,'singapore','SG','SGP','702','065',1,1),(15,'spain','ES','ESP','724','034',1,1),(16,'turkey','TR','TUR','792','090',1,1),(17,'vietnam','VN','VNM','704','084',1,1),(18,'united-kingdom','GB','GBR','826','044',1,1),(19,'united-states','US','USA','840','001',1,1),(20,'afghanistan','AF','AFG','4','093',1,1),(21,'albania','AL','ALB','8','355',1,1),(22,'algeria','DZ','DZA','12','213',1,1),(23,'american-samoa','AS','ASM','16','684',1,1),(24,'andorra','AD','AND','20','376',1,1),(25,'angola','AO','AGO','24','244',0,1),(26,'anguilla','AI','AIA','660','264',1,1),(27,'antarctica','AQ','ATA','10','672',1,1),(28,'antigua-barbuda','AG','ATG','28','268',0,1),(29,'argentina','AR','ARG','32','054',1,1),(30,'armenia','AM','ARM','51','374',1,1),(31,'aruba','AW','ABW','533','297',0,1),(32,'australia','AU','AUS','36','061',1,1),(33,'austria','AT','AUT','40','043',1,1),(34,'azerbaijan','AZ','AZE','31','994',1,1),(35,'bahamas','BS','BHS','44','242',0,1),(36,'bahrain','BH','BHR','48','973',1,1),(37,'bangladesh','BD','BGD','50','880',1,1),(38,'barbados','BB','BRB','52','246',1,1),(39,'belarus','BY','BLR','112','375',1,1),(40,'belgium','BE','BEL','56','032',1,1),(41,'belize','BZ','BLZ','84','501',0,1),(42,'benin','BJ','BEN','204','229',0,1),(43,'bermuda','BM','BMU','60','441',1,1),(44,'bhutan','BT','BTN','64','975',1,1),(45,'bolivia','BO','BOL','68','591',1,1),(46,'bosnia-herzegovina','BA','BIH','70','387',1,1),(47,'botswana','BW','BWA','72','267',0,1),(48,'brazil','BR','BRA','76','055',1,1),(49,'british-virgin-islands','VG','VGB','92','284',1,1),(50,'brunei','BN','BRN','96','673',1,1),(51,'bulgaria','BG','BGR','100','359',1,1),(52,'burkina-faso','BF','BFA','854','226',0,1),(53,'burma-myanmar','MM','MMR','104','095',1,1),(54,'burundi','BI','BDI','108','257',0,1),(55,'cambodia','KH','KHM','116','855',1,1),(56,'cameroon','CM','CMR','120','237',1,1),(57,'cape-verde-island','CV','CPV','132','238',1,1),(58,'cayman-islands','KY','CYM','136','345',1,1),(59,'central-african-republic','CF','CAF','140','236',0,1),(60,'chad','TD','TCD','148','235',1,1),(61,'chile','CL','CHL','152','056',1,1),(62,'christmas-island','CX','CXR','162','061',1,1),(63,'cocos-islands','CC','CCK','166','061',1,1),(64,'colombia','CO','COL','170','057',1,1),(65,'comoros','KM','COM','174','269',0,1),(66,'republic-of-congo','CD','COD','180','242',0,1),(67,'democratic-republic-of-congo','CG','COG','178','243',0,1),(68,'cook-islands','CK','COK','184','682',0,1),(69,'costa-rica','CR','CRI','188','506',1,1),(70,'croatia','HR','HRV','191','385',1,1),(71,'cuba','CU','CUB','192','053',1,1),(72,'cyprus','CY','CYP','196','357',1,1),(73,'czech-republic','CZ','CZE','203','420',1,1),(74,'denmark','DK','DNK','208','045',1,1),(75,'djibouti','DJ','DJI','262','253',0,1),(76,'dominica','DM','DMA','212','767',0,1),(77,'dominican-republic','DO','DOM','214','809',1,1),(78,'ecuador','EC','ECU','218','593',1,1),(79,'egypt','EG','EGY','818','020',1,1),(80,'el-salvador','SV','SLV','222','503',1,1),(81,'equatorial-guinea','GQ','GNQ','226','240',0,1),(82,'eritrea','ER','ERI','232','291',0,1),(83,'estonia','EE','EST','233','372',1,1),(84,'ethiopia','ET','ETH','231','251',1,1),(85,'faeroe-islands','FO','FRO','234','298',1,1),(86,'falkland-islands','FK','FLK','238','500',1,1),(87,'fiji-islands','FJ','FJI','242','679',0,1),(88,'finland','FI','FIN','246','358',1,1),(89,'french-guiana','GF','GUF','254','594',1,1),(90,'french-polynesia','PF','PYF','258','689',1,1),(91,'gabon','GA','GAB','266','241',1,1),(92,'gambia','GM','GMB','270','220',0,1),(93,'georgia','GE','GEO','268','995',1,1),(94,'ghana','GH','GHA','288','233',0,1),(95,'gibraltar','GI','GIB','292','350',1,1),(96,'greece','GR','GRC','300','030',1,1),(97,'greenland','GL','GRL','304','299',1,1),(98,'grenada','GD','GRD','308','473',0,1),(99,'guadeloupe','GP','GLP','312','590',1,1),(100,'guam','GU','GUM','316','671',1,1),(101,'guatemala','GT','GTM','320','502',1,1),(102,'guinea','GN','GIN','324','224',0,1),(103,'guinea-bissau','GW','GNB','624','245',1,1),(104,'guyana','GY','GUY','328','592',0,1),(105,'haiti','HT','HTI','332','509',1,1),(106,'honduras','HN','HND','340','504',1,1),(107,'iceland','IS','ISL','352','354',1,1),(108,'india','IN','IND','356','091',1,1),(109,'indonesia','ID','IDN','360','062',1,1),(110,'iran','IR','IRN','364','098',1,1),(111,'iraq','IQ','IRQ','368','964',1,1),(112,'ireland','IE','IRL','372','353',0,1),(113,'ivory-coast','CI','CIV','384','225',1,1),(114,'jamaica','JM','JAM','388','876',1,1),(115,'jordan','JO','JOR','400','962',1,1),(116,'kazakhstan','KZ','KAZ','398','007',1,1),(117,'kenya','KE','KEN','404','254',1,1),(118,'kiribati','KI','KIR','408','686',0,1),(119,'kuwait','KW','KWT','414','965',1,1),(120,'north-korea','KP','PRK','408','850',0,1),(121,'kyrgyzstan','KG','KGZ','471','996',1,1),(122,'laos','LA','LAO','418','856',1,1),(123,'latvia','LV','LVA','428','371',1,1),(124,'lebanon','LB','LBN','422','961',1,1),(125,'lesotho','LS','LSO','426','266',1,1),(126,'liberia','LR','LBR','430','231',1,1),(127,'libya','LY','LBY','434','218',1,1),(128,'liechtenstein','LI','LIE','438','423',1,1),(129,'lithuania','LT','LTU','440','370',1,1),(130,'luxembourg','LU','LUX','442','352',1,1),(131,'macau','MO','MAC','446','853',0,1),(132,'macedonia','MK','MKD','807','389',1,1),(133,'madagascar','MG','MDG','450','261',1,1),(134,'malawi','MW','MWI','454','265',0,1),(135,'malaysia','MY','MYS','458','060',1,1),(136,'maldives','MV','MDV','462','960',1,1),(137,'mali','ML','MLI','466','223',0,1),(138,'malta','MT','MLT','470','356',1,1),(139,'marshall-islands','MH','MHL','584','692',1,1),(140,'martinique','MQ','MTQ','474','596',1,1),(141,'mauritania','MR','MRT','478','222',0,1),(142,'mauritius','MU','MUS','480','230',0,1),(143,'mayotte-island','YT','MYT','175','269',1,1),(144,'mexico','MX','MEX','484','052',1,1),(145,'micronesia','FM','FSM','583','691',1,1),(146,'moldova','MD','MDA','498','373',1,1),(147,'monaco','MC','MCO','492','377',1,1),(148,'mongolia','MN','MNG','496','976',1,1),(149,'montenegro','ME','MNE','499','382',1,1),(150,'montserrat','MS','MSR','500','664',0,1),(151,'morocco','MA','MAR','504','212',1,1),(152,'mozambique','MZ','MOZ','508','258',1,1),(153,'namibia','NA','NAM','516','264',1,1),(154,'nauru','NR','NRU','520','674',0,1),(155,'nepal','NP','NPL','524','977',1,1),(156,'netherlands-antilles','AN','ANT','530','599',1,1),(157,'new-caledonia','NC','NCL','540','687',1,1),(158,'new-zealand','NZ','NZL','554','064',1,1),(159,'nicaragua','NI','NIC','558','505',1,1),(160,'niger','NE','NER','562','227',1,1),(161,'nigeria','NG','NGA','566','234',1,1),(162,'niue','NU','NIU','570','683',0,1),(163,'norfolk-island','NF','NFK','574','672',1,1),(164,'norway','NO','NOR','578','047',1,1),(165,'oman','OM','OMN','512','968',1,1),(166,'pakistan','PK','PAK','586','092',1,1),(167,'palau','PW','PLW','585','680',1,1),(168,'palestine','PS','PSE','275','970',1,1),(169,'panama','PA','PAN','591','507',1,1),(170,'papua-new-guinea','PG','PNG','598','675',1,1),(171,'paraguay','PY','PRY','600','595',1,1),(172,'peru','PE','PER','604','051',1,1),(173,'philippines','PH','PHL','608','063',1,1),(174,'poland','PL','POL','616','048',1,1),(175,'puerto-rico','PR','PRI','630','787',1,1),(176,'qatar','QA','QAT','634','974',0,1),(177,'reunion-island','RE','REU','638','262',1,1),(178,'romania','RO','ROU','642','040',1,1),(179,'rwanda','RW','RWA','646','250',0,1),(180,'st-helena','SH','SHN','654','290',1,1),(181,'st-kitts','KN','KNA','659','869',0,1),(182,'st-lucia','LC','LCA','662','758',0,1),(183,'st-pierre-miquelon','PM','SPM','666','508',1,1),(184,'st-vincent','VC','VCT','670','784',1,1),(185,'san-marino','SM','SMR','674','378',1,1),(186,'sao-tome-principe','ST','STP','678','239',0,1),(187,'saudi-arabia','SA','SAU','682','966',1,1),(188,'senegal','SN','SEN','686','221',1,1),(189,'serbia','RS','SRB','688','381',1,1),(190,'seychelles','SC','SYC','690','248',0,1),(191,'sierra-leone','SL','SLE','694','249',0,1),(192,'slovakia','SK','SVK','703','421',1,1),(193,'slovenia','SI','SVN','705','386',1,1),(194,'solomon-islands','SB','SLB','90','677',0,1),(195,'somalia','SO','SOM','706','252',0,1),(196,'south-africa','ZA','ZAF','710','027',1,1),(197,'sri-lanka','LK','LKA','144','094',1,1),(198,'sudan','SD','SDN','736','095',1,1),(199,'suriname','SR','SUR','740','597',0,1),(200,'swaziland','SZ','SWZ','748','268',1,1),(201,'sweden','SE','SWE','752','046',1,1),(202,'switzerland','CH','CHE','756','041',1,1),(203,'syria','SY','SYR','760','963',0,1),(204,'taiwan','TW','TWN','158','886',1,1),(205,'tajikistan','TJ','TJK','762','992',1,1),(206,'tanzania','TZ','TZA','834','255',0,1),(207,'thailand','TH','THA','764','066',1,1),(208,'togo','TG','TGO','768','228',1,1),(209,'tonga','TO','TON','776','676',0,1),(210,'trinidad-tobago','TT','TTO','780','868',0,1),(211,'tunisia','TN','TUN','788','216',1,1),(212,'turkmenistan','TM','TKM','795','993',1,1),(213,'turks-caicos','TC','TCA','796','649',1,1),(214,'tuvalu','TV','TUV','798','688',0,1),(215,'uganda','UG','UGA','800','256',0,1),(216,'ukraine','UA','UKR','804','380',1,1),(217,'united-arab-emirates','AE','ARE','784','971',0,1),(218,'uruguay','UY','URY','858','598',1,1),(219,'uzbekistan','UZ','UZB','860','998',1,1),(220,'vanuatu','VU','VUT','548','678',0,1),(221,'vatican-city','VA','VAT','336','039',1,1),(222,'venezuela','VE','VEN','862','058',1,1),(223,'wallis-futuna','WF','WLF','876','681',1,1),(224,'western-samoa','WS','WSM','882','685',1,1),(225,'yemen','YE','YEM','887','967',0,1),(226,'zambia','ZM','ZMB','894','260',1,1),(227,'zimbabwe','ZW','ZWE','716','263',0,1),(228,'aland-islands','AX','ALA','248','359',1,1),(229,'bonaire-st-eustatius-saba','BQ','BES','535','599',1,1),(230,'bouvet-island','BV','BVT','74','047',1,1),(231,'british-indian-ocean-territory','IO','IOT','86','246',1,1),(232,'curacao','CW','CUW','531','599',1,1),(233,'french-southern-territories','TF','ATF','260','033',0,1),(234,'guernsey','GG','GGY','831','044',1,1),(235,'heard-island-mcdonald-islands','HM','HMD','334','061',1,1),(236,'isle-of-man','IM','IMN','833','044',1,1),(237,'jersey','JE','JEY','832','044',1,1),(238,'northern-mariana-islands','MP','MNP','580','670',1,1),(239,'pitcairn','PN','PCN','612','649',1,1),(240,'south-georgia-south-sandwich-islands','GS','SGS','239','044',1,1),(241,'south-sudan','SS','SSD','728','211',1,1),(242,'sint-maarten','SX','SXM','534','721',1,1),(243,'st-barthelemy','BL','BLM','652','590',1,1),(244,'st-martin','MF','MAF','663','590',1,1),(245,'tokelau','TK','TKL','772','690',0,1),(246,'timor-leste','TL','TLS','626','670',1,1),(247,'united-states-minor-outlying-islands','UM','UMI','581','699',1,1),(248,'united-states-virgin-islands','VI','VIR','850','340',1,1),(249,'western-sahara','EH','ESH','732','212',1,1);
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CyrusUser`
--

DROP TABLE IF EXISTS `CyrusUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CyrusUser` (
  `userId` varchar(75) NOT NULL,
  `password_` varchar(75) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CyrusUser`
--

LOCK TABLES `CyrusUser` WRITE;
/*!40000 ALTER TABLE `CyrusUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `CyrusUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CyrusVirtual`
--

DROP TABLE IF EXISTS `CyrusVirtual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CyrusVirtual` (
  `emailAddress` varchar(75) NOT NULL,
  `userId` varchar(75) NOT NULL,
  PRIMARY KEY (`emailAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CyrusVirtual`
--

LOCK TABLES `CyrusVirtual` WRITE;
/*!40000 ALTER TABLE `CyrusVirtual` DISABLE KEYS */;
/*!40000 ALTER TABLE `CyrusVirtual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDLRecord`
--

DROP TABLE IF EXISTS `DDLRecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDLRecord` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `versionUserId` bigint(20) DEFAULT NULL,
  `versionUserName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordId`),
  UNIQUE KEY `IX_B4328F39` (`uuid_`,`groupId`),
  KEY `IX_6A6C1C85` (`companyId`),
  KEY `IX_87A6B599` (`recordSetId`),
  KEY `IX_AAC564D3` (`recordSetId`,`userId`),
  KEY `IX_8BC2F891` (`uuid_`),
  KEY `IX_384AB6F7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDLRecord`
--

LOCK TABLES `DDLRecord` WRITE;
/*!40000 ALTER TABLE `DDLRecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDLRecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDLRecordSet`
--

DROP TABLE IF EXISTS `DDLRecordSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDLRecordSet` (
  `uuid_` varchar(75) DEFAULT NULL,
  `recordSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `recordSetKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `minDisplayRows` int(11) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  PRIMARY KEY (`recordSetId`),
  UNIQUE KEY `IX_56DAB121` (`groupId`,`recordSetKey`),
  UNIQUE KEY `IX_270BA5E1` (`uuid_`,`groupId`),
  KEY `IX_4FA5969F` (`groupId`),
  KEY `IX_561E44E9` (`uuid_`),
  KEY `IX_5938C39F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDLRecordSet`
--

LOCK TABLES `DDLRecordSet` WRITE;
/*!40000 ALTER TABLE `DDLRecordSet` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDLRecordSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDLRecordVersion`
--

DROP TABLE IF EXISTS `DDLRecordVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDLRecordVersion` (
  `recordVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `recordSetId` bigint(20) DEFAULT NULL,
  `recordId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `displayIndex` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`recordVersionId`),
  UNIQUE KEY `IX_C79E347` (`recordId`,`version`),
  KEY `IX_2F4DDFE1` (`recordId`),
  KEY `IX_762ADC7` (`recordId`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDLRecordVersion`
--

LOCK TABLES `DDLRecordVersion` WRITE;
/*!40000 ALTER TABLE `DDLRecordVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDLRecordVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMContent`
--

DROP TABLE IF EXISTS `DDMContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMContent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xml` longtext,
  PRIMARY KEY (`contentId`),
  UNIQUE KEY `IX_EB9BDE28` (`uuid_`,`groupId`),
  KEY `IX_E3BAF436` (`companyId`),
  KEY `IX_50BF1038` (`groupId`),
  KEY `IX_AE4B50C2` (`uuid_`),
  KEY `IX_3A9C0626` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMContent`
--

LOCK TABLES `DDMContent` WRITE;
/*!40000 ALTER TABLE `DDMContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDMContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMStorageLink`
--

DROP TABLE IF EXISTS `DDMStorageLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMStorageLink` (
  `uuid_` varchar(75) DEFAULT NULL,
  `storageLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`storageLinkId`),
  UNIQUE KEY `IX_702D1AD5` (`classPK`),
  KEY `IX_81776090` (`structureId`),
  KEY `IX_32A18526` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMStorageLink`
--

LOCK TABLES `DDMStorageLink` WRITE;
/*!40000 ALTER TABLE `DDMStorageLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDMStorageLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMStructure`
--

DROP TABLE IF EXISTS `DDMStructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMStructure` (
  `uuid_` varchar(75) DEFAULT NULL,
  `structureId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentStructureId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `structureKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsd` longtext,
  `storageType` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`structureId`),
  UNIQUE KEY `IX_C8785130` (`groupId`,`classNameId`,`structureKey`),
  UNIQUE KEY `IX_85C7EBE2` (`uuid_`,`groupId`),
  KEY `IX_31817A62` (`classNameId`),
  KEY `IX_4FBAC092` (`companyId`,`classNameId`),
  KEY `IX_C8419FBE` (`groupId`),
  KEY `IX_B6ED5E50` (`groupId`,`classNameId`),
  KEY `IX_43395316` (`groupId`,`parentStructureId`),
  KEY `IX_657899A8` (`parentStructureId`),
  KEY `IX_20FDE04C` (`structureKey`),
  KEY `IX_E61809C8` (`uuid_`),
  KEY `IX_F9FB8D60` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMStructure`
--

LOCK TABLES `DDMStructure` WRITE;
/*!40000 ALTER TABLE `DDMStructure` DISABLE KEYS */;
INSERT INTO `DDMStructure` VALUES ('b04e487b-a79e-69a5-e351-9495b6e70c23',10303,10195,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14',0,10091,'LEARNING MODULE METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Learning Module Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Learning Module Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select2235\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select3212\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select4115\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"administration\" type=\"option\" value=\"admin\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Administration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"installation\" type=\"option\" value=\"install\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Installation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"configuration\" type=\"option\" value=\"config\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Configuration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Topics]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select5069\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"beginner\" type=\"option\" value=\"beginner\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Beginner]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intermediate\" type=\"option\" value=\"intermediate\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intermediate]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"advanced\" type=\"option\" value=\"advanced\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Advanced]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Level]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('3669bed0-bf7c-db5c-29ea-2a575d3fd7df',10304,10195,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14',0,10091,'MARKETING CAMPAIGN THEME METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Campaign Theme Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Campaign Theme Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select2305\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"strong_company\" type=\"option\" value=\"strong\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Strong Company]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"new_product_launch\" type=\"option\" value=\"product\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[New Product Launch]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"company_philosophy\" type=\"option\" value=\"philosophy\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Company Philosophy]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Select]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select3229\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"your_trusted_advisor\" type=\"option\" value=\"advisor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Your Trusted Advisor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"10_years_of_customer_solutions\" type=\"option\" value=\"solutions\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[10 Years of Customer Solutions]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"making_a_difference\" type=\"option\" value=\"difference\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Making a Difference]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Campaign Theme]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select4282\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"awareness\" type=\"option\" value=\"awareness\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Awareness]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"lead_generation\" type=\"option\" value=\"leads\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Lead Generation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"customer_service\" type=\"option\" value=\"service\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Customer Service]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Business Goal]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('2b447fc2-4f96-e5ef-a60e-ad23897aff83',10305,10195,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14',0,10091,'MEETING METADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Metadata for meeting</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date3054\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2217\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text4569\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text5638\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea6584\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea7502\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Participants]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('c9fba3a4-4344-4641-670d-dd29a2985071',10307,10195,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14',0,10091,'AUTO_F79F3821-552C-F20A-B8AA-13C5FCF17A38','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contract</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date18949\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Effective Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" indexType=\"keyword\" name=\"ddm-date20127\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Expiration Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select10264\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"nda\" type=\"option\" value=\"NDA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[NDA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"msa\" type=\"option\" value=\"MSA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[MSA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"license_agreement\" type=\"option\" value=\"License\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[License Agreement]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Contract Type]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select4893\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"draft\" type=\"option\" value=\"Draft\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Draft]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"in_review\" type=\"option\" value=\"Review\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[In Review]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"suspended\" type=\"option\" value=\"Suspended\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Suspended]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"signed\" type=\"option\" value=\"Signed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Signed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text14822\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Legal Reviewer]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text17700\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Signing Authority]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2087\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Deal Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('293133ff-9913-c86e-7855-ee00cf96e96e',10309,10195,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14',0,10091,'AUTO_0F743E67-BE67-5E73-D207-FCA537FA5EA4','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"radio5547\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"radio\">\n		<dynamic-element name=\"yes\" type=\"option\" value=\"yes\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yes]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"no\" type=\"option\" value=\"no\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[No]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Needs Legal Review]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2033\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Banner Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"text\" name=\"textarea2873\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('ce42cceb-61d1-5e50-6530-db3628d9c715',10311,10195,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14',0,10091,'AUTO_735D5B32-CEF6-80BF-E6BD-EC1D1C2CD986','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2082\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Lesson Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text2979\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('7a00a78a-aee2-b0b6-9c5c-81ce82b164dd',10313,10195,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14',0,10091,'AUTO_D4B1DA2C-6B25-AD8C-0AB3-10439E3BD123','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select2890\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"false\" name=\"select3864\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select4831\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"website\" type=\"option\" value=\"website\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Website]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"collaboration\" type=\"option\" value=\"collaboration\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Collaboration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intranet\" type=\"option\" value=\"intranet\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intranet]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Areas of Interest]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" multiple=\"true\" name=\"select5929\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"acme\" type=\"option\" value=\"acme\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[ACME]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"sevencogs\" type=\"option\" value=\"sevencogs\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[SevenCogs]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"freeplus\" type=\"option\" value=\"freeplus\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[FreePlus]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Competitors]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" indexType=\"keyword\" name=\"text1993\" readOnly=\"false\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Prospect Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('a91c85a0-8f37-aba7-b436-1abb00a74c8e',10315,10195,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14',0,10314,'TIKARAWMETADATA','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">TIKARAWMETADATA</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">TIKARAWMETADATA</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_PROGRAM_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROGRAM_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMAND_LINE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMAND_LINE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_HISTORY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.HISTORY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_TABLE_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.TABLE_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_INSTITUTION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.INSTITUTION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_SOURCE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.SOURCE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_CONTACT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONTACT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_PROJECT_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROJECT_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_CONVENTIONS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONVENTIONS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_REFERENCES\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.REFERENCES]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_ACKNOWLEDGEMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.ACKNOWLEDGEMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_REALIZATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.REALIZATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_EXPERIMENT_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.EXPERIMENT_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"ClimateForcast_MODEL_NAME_ENGLISH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.ClimateForcast.MODEL_NAME_ENGLISH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_URL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_URL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_LOCATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"CreativeCommons_WORK_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.CreativeCommons.WORK_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_NAMESPACE_URI_DC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_NAMESPACE_URI_DC_TERMS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC_TERMS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_PREFIX_DC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.PREFIX_DC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_PREFIX_DC_TERMS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.PREFIX_DC_TERMS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_FORMAT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.FORMAT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_IDENTIFIER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.IDENTIFIER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_MODIFIED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.MODIFIED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_CONTRIBUTOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.CONTRIBUTOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_COVERAGE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.COVERAGE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_CREATOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.CREATOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_CREATED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.CREATED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_DESCRIPTION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.DESCRIPTION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_LANGUAGE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.LANGUAGE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_PUBLISHER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.PUBLISHER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_RELATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.RELATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_RIGHTS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.RIGHTS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_SOURCE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.SOURCE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_SUBJECT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.SUBJECT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_TITLE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.TITLE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"DublinCore_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.DublinCore.TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Geographic_LATITUDE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Geographic.LATITUDE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Geographic_LONGITUDE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Geographic.LONGITUDE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Geographic_ALTITUDE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Geographic.ALTITUDE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_ENCODING\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_ENCODING]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LANGUAGE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LANGUAGE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LENGTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LOCATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_DISPOSITION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_DISPOSITION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_MD5\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_MD5]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_LAST_MODIFIED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.LAST_MODIFIED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"HttpHeaders_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.HttpHeaders.LOCATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_RECIPIENT_ADDRESS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_RECIPIENT_ADDRESS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_FROM\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_FROM]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_TO\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_TO]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_CC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_CC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"Message_MESSAGE_BCC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_BCC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_KEYWORDS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.KEYWORDS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_COMMENTS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.COMMENTS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_LAST_AUTHOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_AUTHOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_AUTHOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.AUTHOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_NAME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_NAME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_REVISION_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.REVISION_NUMBER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_TEMPLATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.TEMPLATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_TOTAL_TIME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.TOTAL_TIME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_PRESENTATION_FORMAT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.PRESENTATION_FORMAT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_NOTES\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.NOTES]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_MANAGER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.MANAGER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_VERSION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_VERSION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_VERSION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.VERSION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CONTENT_STATUS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CONTENT_STATUS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CATEGORY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CATEGORY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_COMPANY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.COMPANY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_SECURITY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.SECURITY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_SLIDE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.SLIDE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_PAGE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.PAGE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_PARAGRAPH_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.PARAGRAPH_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_LINE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.LINE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_WORD_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.WORD_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT_WITH_SPACES\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT_WITH_SPACES]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_TABLE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.TABLE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_IMAGE_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.IMAGE_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_OBJECT_COUNT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.OBJECT_COUNT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_EDIT_TIME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.EDIT_TIME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_CREATION_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.CREATION_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_LAST_SAVED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_SAVED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_LAST_PRINTED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_PRINTED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"MSOffice_USER_DEFINED_METADATA_NAME_PREFIX\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.MSOffice.USER_DEFINED_METADATA_NAME_PREFIX]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_BITS_PER_SAMPLE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.BITS_PER_SAMPLE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_LENGTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_WIDTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_WIDTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_SAMPLES_PER_PIXEL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.SAMPLES_PER_PIXEL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_FLASH_FIRED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.FLASH_FIRED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_EXPOSURE_TIME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.EXPOSURE_TIME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_F_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.F_NUMBER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_FOCAL_LENGTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.FOCAL_LENGTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_ISO_SPEED_RATINGS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.ISO_SPEED_RATINGS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MAKE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MAKE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MODEL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MODEL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_SOFTWARE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.SOFTWARE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_ORIENTATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.ORIENTATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_HORIZONTAL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_HORIZONTAL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_VERTICAL\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_VERTICAL]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_UNIT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_UNIT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TIFF_ORIGINAL_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TIFF.ORIGINAL_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_RESOURCE_NAME_KEY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.RESOURCE_NAME_KEY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_PROTECTED\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.PROTECTED]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_EMBEDDED_RELATIONSHIP_ID\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.EMBEDDED_RELATIONSHIP_ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMimeKeys_TIKA_MIME_FILE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.TIKA_MIME_FILE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"TikaMimeKeys_MIME_TYPE_MAGIC\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.MIME_TYPE_MAGIC]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_DURATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.DURATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ABS_PEAK_AUDIO_FILE_PATH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ABS_PEAK_AUDIO_FILE_PATH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ALBUM\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ALBUM]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ALT_TAPE_NAME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ALT_TAPE_NAME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ARTIST\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ARTIST]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_MOD_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_RATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_RATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_CHANNEL_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_CHANNEL_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_COMPRESSOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_COMPRESSOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_COMPOSER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.COMPOSER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_COPYRIGHT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.COPYRIGHT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_ENGINEER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.ENGINEER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_FILE_DATA_RATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.FILE_DATA_RATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_GENRE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.GENRE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_INSTRUMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.INSTRUMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_KEY\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.KEY]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_LOG_COMMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.LOG_COMMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_LOOP\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.LOOP]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_NUMBER_OF_BEATS\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.NUMBER_OF_BEATS]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_METADATA_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.METADATA_MOD_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_PULL_DOWN\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.PULL_DOWN]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_RELATIVE_PEAK_AUDIO_FILE_PATH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.RELATIVE_PEAK_AUDIO_FILE_PATH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_RELEASE_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.RELEASE_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SCALE_TYPE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SCALE_TYPE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SCENE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SCENE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_LOCATION\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_LOCATION]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_NAME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_NAME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_SPEAKER_PLACEMENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.SPEAKER_PLACEMENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_STRETCH_MODE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.STRETCH_MODE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_TAPE_NAME\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.TAPE_NAME]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_TEMPO\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.TEMPO]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_TIME_SIGNATURE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.TIME_SIGNATURE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_TRACK_NUMBER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.TRACK_NUMBER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_MODE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_MODE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_UNITY_IS_TRANSPARENT\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_UNITY_IS_TRANSPARENT]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COLOR_SPACE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COLOR_SPACE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COMPRESSOR\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COMPRESSOR]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FIELD_ORDER\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FIELD_ORDER]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FRAME_RATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FRAME_RATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_MOD_DATE\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_MOD_DATE]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_DEPTH\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_DEPTH]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_ASPECT_RATIO\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_ASPECT_RATIO]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('47357848-eb8e-4a86-ec8d-9ca552cfa1ac',10412,10182,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',0,10098,'CONTACTS','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contacts</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contacts</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"company\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Company]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"email\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Email]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"firstName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[First Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"imService\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"aol\" type=\"option\" value=\"aol\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[AOL]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"yahoo\" type=\"option\" value=\"yahoo\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yahoo]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"gtalk\" type=\"option\" value=\"gtalk\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[GTalk]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Instant Messenger Service]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"gtalk\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imUserName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Instant Messenger]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"jobTitle\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Job Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"lastName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Last Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"notes\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Notes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneMobile\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Phone (Mobile)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneOffice\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Phone (Office)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('19450ee0-fdfd-fa16-7937-d2cd3954b71d',10413,10182,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',0,10098,'EVENTS','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Events</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Events</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"cost\" required=\"false\" showLabel=\"true\" type=\"ddm-number\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Cost]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"eventDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventName\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Event Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventTime\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('1550cfdc-37eb-60b4-9170-358e74e9d401',10414,10182,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',0,10098,'INVENTORY','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Inventory</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Inventory</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"item\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Item]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"purchaseDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Purchase Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"purchasePrice\" required=\"false\" showLabel=\"true\" type=\"ddm-number\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Purchase Price]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"quantity\" required=\"false\" showLabel=\"true\" type=\"ddm-number\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Quantity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('e2762d3d-f71d-cc36-15de-19641a061502',10415,10182,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',0,10098,'ISSUES TRACKING','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Issues Tracking</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Issue Tracking</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"dueDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Due Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"issueId\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Issue ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"severity\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"status\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('87ee3d69-8372-5324-b9ca-a89cf4d62a83',10416,10182,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',0,10098,'MEETING MINUTES','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Minutes</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Meeting Minutes</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"author\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"duration\" required=\"false\" showLabel=\"true\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Duration]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"meetingDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"minutes\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Minutes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('0c1efc34-520e-3186-832f-5da4ee2acf84',10417,10182,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',0,10098,'TO DO','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">To Do</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">To Do</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"document-library\" fieldNamespace=\"ddm\" name=\"attachment\" required=\"false\" showLabel=\"true\" type=\"ddm-documentlibrary\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" required=\"false\" showLabel=\"true\" type=\"textarea\" width=\"100\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"endDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[End Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"integer\" fieldNamespace=\"ddm\" name=\"percentComplete\" required=\"false\" showLabel=\"true\" type=\"ddm-integer\" width=\"25\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[% Complete]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[0]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"severity\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"startDate\" required=\"false\" showLabel=\"true\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Start Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" multiple=\"false\" name=\"status\" required=\"false\" showLabel=\"true\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" required=\"false\" showLabel=\"true\" type=\"text\" width=\"50\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0);
/*!40000 ALTER TABLE `DDMStructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMStructureLink`
--

DROP TABLE IF EXISTS `DDMStructureLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMStructureLink` (
  `structureLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`structureLinkId`),
  UNIQUE KEY `IX_C803899D` (`classPK`),
  KEY `IX_D43E4208` (`classNameId`),
  KEY `IX_17692B58` (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMStructureLink`
--

LOCK TABLES `DDMStructureLink` WRITE;
/*!40000 ALTER TABLE `DDMStructureLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `DDMStructureLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DDMTemplate`
--

DROP TABLE IF EXISTS `DDMTemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DDMTemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `templateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `templateKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `mode_` varchar(75) DEFAULT NULL,
  `language` varchar(75) DEFAULT NULL,
  `script` longtext,
  `cacheable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`templateId`),
  UNIQUE KEY `IX_E6DFAB84` (`groupId`,`classNameId`,`templateKey`),
  UNIQUE KEY `IX_1AA75CE3` (`uuid_`,`groupId`),
  KEY `IX_B6356F93` (`classNameId`,`classPK`,`type_`),
  KEY `IX_32F83D16` (`classPK`),
  KEY `IX_DB24DDDD` (`groupId`),
  KEY `IX_BD9A4A91` (`groupId`,`classNameId`),
  KEY `IX_824ADC72` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_90800923` (`groupId`,`classNameId`,`classPK`,`type_`),
  KEY `IX_F0C3449` (`groupId`,`classNameId`,`classPK`,`type_`,`mode_`),
  KEY `IX_B1C33EA6` (`groupId`,`classPK`),
  KEY `IX_33BEF579` (`language`),
  KEY `IX_127A35B0` (`smallImageId`),
  KEY `IX_CAE41A28` (`templateKey`),
  KEY `IX_C4F283C8` (`type_`),
  KEY `IX_F2A243A7` (`uuid_`),
  KEY `IX_D4C2C221` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DDMTemplate`
--

LOCK TABLES `DDMTemplate` WRITE;
/*!40000 ALTER TABLE `DDMTemplate` DISABLE KEYS */;
INSERT INTO `DDMTemplate` VALUES ('74272352-77e4-b8d2-c011-c6adab7fab79',10418,10195,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',10007,0,'BLOGS-BASIC-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Basic</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays titles, authors, and abstracts compactly for blog entries.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#list entries as entry>\n	<div class=\"entry\">\n		<#assign viewURL = renderResponse.createRenderURL() />\n\n		${viewURL.setParameter(\"struts_action\", \"/blogs/view_entry\")}\n		${viewURL.setParameter(\"redirect\", currentURL)}\n		${viewURL.setParameter(\"urlTitle\", entry.getUrlTitle())}\n\n		<div class=\"entry-content\">\n			<div class=\"entry-title\">\n				<h2><a href=\"${viewURL}\">${htmlUtil.escape(entry.getTitle())}</a></h2>\n			</div>\n		</div>\n\n		<div class=\"entry-body\">\n			<div class=\"entry-author\">\n				<@liferay.language key=\"written-by\" /> ${htmlUtil.escape(portalUtil.getUserName(entry.getUserId(), entry.getUserName()))}\n			</div>\n\n			<#assign summary = entry.getDescription() />\n\n			<#if (validator.isNull(summary))>\n				<#assign summary = entry.getContent() />\n			</#if>\n\n			${stringUtil.shorten(htmlUtil.stripHtml(summary), 100)}\n\n			<a href=\"${viewURL}\"><@liferay.language key=\"read-more\" /> <span class=\"hide-accessible\"><@liferay.language key=\"about\"/>${htmlUtil.escape(entry.getTitle())}</span> &raquo;</a>\n		</div>\n\n		<div class=\"entry-footer\">\n			<span class=\"entry-date\">\n				${dateUtil.getDate(entry.getCreateDate(), \"dd MMM yyyy - HH:mm:ss\", locale)}\n			</span>\n\n			<#assign blogsEntryClassName = \"com.liferay.portlet.blogs.model.BlogsEntry\" />\n\n			<#if (enableFlags == \"true\")>\n				<@liferay_ui[\"flags\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					contentTitle=entry.getTitle()\n					reportedUserId=entry.getUserId()\n				/>\n			</#if>\n\n			<span class=\"entry-categories\">\n				<@liferay_ui[\"asset-categories-summary\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			</span>\n\n			<span class=\"entry-tags\">\n				<@liferay_ui[\"asset-tags-summary\"]\n					className=blogsEntryClassName\n					classPK=entry.getEntryId()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			</span>\n		</div>\n	</div>\n\n	<div class=\"separator\"><!-- --></div>\n</#list>',0,0,10419,''),('a8445d56-1cff-a1ea-edf0-a50344b9de71',10420,10195,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',10083,0,'ASSET-PUBLISHER-RICH-SUMMARY-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Rich Summary</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays abstracts, icons, related assets, and print/edit actions for assets. Optionally include asset bookmarks and ratings.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#list entries as entry>\n	<#assign entry = entry />\n\n	<#assign assetRenderer = entry.getAssetRenderer() />\n\n	<#assign entryTitle = htmlUtil.escape(assetRenderer.getTitle(locale)) />\n\n	<#assign viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />\n\n	<#if assetLinkBehavior != \"showFullContent\">\n		<#assign viewURL = assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry, true) />\n	</#if>\n\n	<div class=\"asset-abstract\">\n		<div class=\"lfr-meta-actions asset-actions\">\n			<@getPrintIcon />\n\n			<@getFlagsIcon />\n\n			<@getEditIcon />\n		</div>\n\n		<h3 class=\"asset-title\">\n			<a href=\"${viewURL}\"><img alt=\"\" src=\"${assetRenderer.getIconPath(renderRequest)}\" />${entryTitle}</a>\n		</h3>\n\n		<@getMetadataField fieldName=\"tags\" />\n\n		<@getMetadataField fieldName=\"create-date\" />\n\n		<@getMetadataField fieldName=\"view-count\" />\n\n		<div class=\"asset-content\">\n			<@getSocialBookmarks />\n\n			<div class=\"asset-summary\">\n				<@getMetadataField fieldName=\"author\" />\n\n				${htmlUtil.escape(assetRenderer.getSummary(renderRequest, renderResponse))}\n\n				<a href=\"${viewURL}\"><@liferay.language key=\"read-more\" /><span class=\"hide-accessible\"><@liferay.language key=\"about\" />${entryTitle}</span> &raquo;</a>\n			</div>\n\n			<@getRatings />\n\n			<@getRelatedAssets />\n\n			<@getDiscussion />\n		</div>\n	</div>\n\n</#list>\n\n<#macro getDiscussion>\n	<#if validator.isNotNull(assetRenderer.getDiscussionPath()) && (enableComments == \"true\")>\n		<br />\n\n		<#assign discussionURL = renderResponse.createActionURL() />\n\n		${discussionURL.setParameter(\"struts_action\", \"/asset_publisher/\" + assetRenderer.getDiscussionPath())}\n\n		<@liferay_ui[\"discussion\"]\n			className=entry.getClassName()\n			classPK=entry.getClassPK()\n			formAction=discussionURL?string\n			formName=\"fm\" + entry.getClassPK()\n			ratingsEnabled=enableCommentRatings == \"true\"\n			redirect=portalUtil.getCurrentURL(request)\n			userId=assetRenderer.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getEditIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign redirectURL = renderResponse.createRenderURL() />\n\n		${redirectURL.setParameter(\"struts_action\", \"/asset_publisher/add_asset_redirect\")}\n		${redirectURL.setWindowState(\"pop_up\")}\n\n		<#assign editPortletURL = assetRenderer.getURLEdit(renderRequest, renderResponse, windowStateFactory.getWindowState(\"pop_up\"), redirectURL)!\"\" />\n\n		<#if validator.isNotNull(editPortletURL)>\n			<#assign title = languageUtil.format(locale, \"edit-x\", entryTitle, false) />\n\n			<@liferay_ui[\"icon\"]\n				image=\"edit\"\n				message=title\n				url=\"javascript:Liferay.Util.openWindow({dialog: {width: 960}, id:\'\" + renderResponse.getNamespace() + \"editAsset\', title: \'\" + title + \"\', uri:\'\" + htmlUtil.escapeURL(editPortletURL.toString()) + \"\'});\"\n			/>\n		</#if>\n	</#if>\n</#macro>\n\n<#macro getFlagsIcon>\n	<#if enableFlags == \"true\">\n		<@liferay_ui[\"flags\"]\n			className=entry.getClassName()\n			classPK=entry.getClassPK()\n			contentTitle=entry.getTitle(locale)\n			label=false\n			reportedUserId=entry.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getMetadataField\n	fieldName\n>\n	<#if stringUtil.split(metadataFields)?seq_contains(fieldName)>\n		<span class=\"metadata-entry metadata-\"${fieldName}\">\n			<#assign dateFormat = \"dd MMM yyyy - HH:mm:ss\" />\n\n			<#if fieldName == \"author\">\n				<@liferay.language key=\"by\" /> ${portalUtil.getUserName(assetRenderer.getUserId(), assetRenderer.getUserName())}\n			<#elseif fieldName == \"categories\">\n				<@liferay_ui[\"asset-categories-summary\"]\n					className=entry.getClassName()\n					classPK=entry.getClassPK()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			<#elseif fieldName == \"create-date\">\n				${dateUtil.getDate(entry.getCreateDate(), dateFormat, locale)}\n			<#elseif fieldName == \"expiration-date\">\n				${dateUtil.getDate(entry.getExpirationDate(), dateFormat, locale)}\n			<#elseif fieldName == \"modified-date\">\n				${dateUtil.getDate(entry.getModifiedDate(), dateFormat, locale)}\n			<#elseif fieldName == \"priority\">\n				${entry.getPriority()}\n			<#elseif fieldName == \"publish-date\">\n				${dateUtil.getDate(entry.getPublishDate(), dateFormat, locale)}\n			<#elseif fieldName == \"tags\">\n				<@liferay_ui[\"asset-tags-summary\"]\n					className=entry.getClassName()\n					classPK=entry.getClassPK()\n					portletURL=renderResponse.createRenderURL()\n				/>\n			<#elseif fieldName == \"view-count\">\n				<@liferay_ui[\"icon\"]\n					image=\"history\"\n				/>\n\n				${entry.getViewCount()} <@liferay.language key=\"views\" />\n			</#if>\n		</span>\n	</#if>\n</#macro>\n\n<#macro getPrintIcon>\n	<#if enablePrint == \"true\" >\n		<#assign printURL = renderResponse.createRenderURL() />\n\n		${printURL.setParameter(\"struts_action\", \"/asset_publisher/view_content\")}\n		${printURL.setParameter(\"assetEntryId\", entry.getEntryId()?string)}\n		${printURL.setParameter(\"viewMode\", \"print\")}\n		${printURL.setParameter(\"type\", entry.getAssetRendererFactory().getType())}\n\n		<#if (validator.isNotNull(assetRenderer.getUrlTitle()))>\n			<#if (assetRenderer.getGroupId() != themeDisplay.getScopeGroupId())>\n				${printURL.setParameter(\"groupId\", assetRenderer.getGroupId()?string)}\n			</#if>\n\n			${printURL.setParameter(\"urlTitle\", assetRenderer.getUrlTitle())}\n		</#if>\n\n		${printURL.setWindowState(\"pop_up\")}\n\n		<@liferay_ui[\"icon\"]\n			image=\"print\"\n			message=\"print\"\n			url=\"javascript:Liferay.Util.openWindow({id:\'\" + renderResponse.getNamespace() + \"printAsset\', title: \'\" + languageUtil.format(locale, \"print-x-x\", [\"hide-accessible\", entryTitle], false) + \"\', uri: \'\" + htmlUtil.escapeURL(printURL.toString()) + \"\'});\"\n		/>\n	</#if>\n</#macro>\n\n<#macro getRatings>\n	<#if (enableRatings == \"true\")>\n		<div class=\"asset-ratings\">\n			<@liferay_ui[\"ratings\"]\n				className=entry.getClassName()\n				classPK=entry.getClassPK()\n			/>\n		</div>\n	</#if>\n</#macro>\n\n<#macro getRelatedAssets>\n	<#if enableRelatedAssets == \"true\">\n		<@liferay_ui[\"asset-links\"]\n			assetEntryId=entry.getEntryId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getSocialBookmarks>\n	<#if enableSocialBookmarks == \"true\">\n		<@liferay_ui[\"social-bookmarks\"]\n			displayStyle=\"${socialBookmarksDisplayStyle}\"\n			target=\"_blank\"\n			title=entry.getTitle(locale)\n			url=viewURL\n		/>\n	</#if>\n</#macro>',0,0,10421,''),('3f9a10d7-df3d-c298-708a-6a4a7cf54aa6',10422,10195,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',10034,0,'SITE-MAP-MULTI-COLUMN-LAYOUT-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Multi Column Layout</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays a column for each top level page. Each column includes the name of a top level page with the page\'s immediate children listed underneath.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n\n<#if entries?has_content>\n	<@aui.layout>\n		<#list entries as entry>\n		    <@aui.column columnWidth=25>\n				<div class=\"results-header\">\n					<h3>\n						<#assign layoutURL = portalUtil.getLayoutURL(entry, themeDisplay)>\n\n						<a href=\"${layoutURL}\">${entry.getName(locale)}</a>\n					</h3>\n				</div>\n\n				<#assign pages = entry.getChildren()>\n\n				<@displayPages pages = pages />\n		    </@aui.column>\n		</#list>\n	</@aui.layout>\n</#if>\n\n<#macro displayPages\n	pages\n>\n	<#if pages?has_content>\n		<ul class=\"child-pages\">\n			<#list pages as page>\n				<li>\n					<#assign pageLayoutURL = portalUtil.getLayoutURL(page, themeDisplay)>\n\n					<a href=\"${pageLayoutURL}\">${page.getName(locale)}</a>\n\n					<#assign childPages = page.getChildren()>\n\n					<@displayPages pages = childPages />\n				</li>\n			</#list>\n		</ul>\n	</#if>\n</#macro>',0,0,10423,''),('e05678fd-c40d-ea19-b7a0-079dda2c1e8a',10425,10195,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',10424,0,'DOCUMENTLIBRARY-CAROUSEL-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Carousel</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays images in a carousel.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n<#assign liferay_portlet = taglibLiferayHash[\"/WEB-INF/tld/liferay-portlet.tld\"] />\n\n<#if entries?has_content>\n	<style>\n		#<@liferay_portlet.namespace />carousel .carousel-item {\n			background-color: #000;\n			height: 250px;\n			overflow: hidden;\n			text-align: center;\n			width: 700px;\n		}\n\n		#<@liferay_portlet.namespace />carousel .carousel-item img {\n			max-height: 250px;\n			max-width: 700px;\n		}\n	</style>\n\n	<div id=\"<@liferay_portlet.namespace />carousel\">\n		<#assign imageMimeTypes = propsUtil.getArray(\"dl.file.entry.preview.image.mime.types\") />\n\n		<#list entries as entry>\n			<#if imageMimeTypes?seq_contains(entry.getMimeType()) >\n				<div class=\"carousel-item\">\n					<img src=\"${dlUtil.getPreviewURL(entry, entry.getFileVersion(), themeDisplay, \"\")}\" />\n				</div>\n			</#if>\n		</#list>\n	</div>\n\n	<@aui.script use=\"aui-carousel\">\n		new A.Carousel(\n			{\n				contentBox: \'#<@liferay_portlet.namespace />carousel\',\n				height: 250,\n				intervalTime: 2,\n				width: 700\n			}\n		).render();\n	</@aui.script>\n</#if>',0,0,10426,''),('7adb832a-697d-ecda-1734-3fedc3ab4868',10427,10195,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',10016,0,'WIKI-SOCIAL-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Social</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays social bookmarks and ratings for wiki pages and their child pages.</Description></root>','display','','ftl','<#assign liferay_ui = taglibLiferayHash[\"/WEB-INF/tld/liferay-ui.tld\"] />\n\n<#assign wikiPageClassName = \"com.liferay.portlet.wiki.model.WikiPage\" />\n\n<#assign assetRenderer = assetEntry.getAssetRenderer() />\n\n<div class=\"taglib-header\">\n	<h1 class=\"header-title\">${entry.getTitle()}</h1>\n</div>\n\n<div style=\"float: right;\">\n	<@getEditIcon />\n\n	<@getPageDetailsIcon />\n\n	<@getPrintIcon />\n</div>\n\n<div class=\"wiki-body\">\n	<div class=\"wiki-info\">\n		<span class=\"stats\">${assetEntry.getViewCount()} <@liferay.language key=\"views\" /></span> |\n\n		<span class=\"date\"><@liferay.language key=\"last-modified\" /> ${dateUtil.getDate(entry.getModifiedDate(), \"dd MMM yyyy - HH:mm:ss\", locale)}</span>\n\n		<span class=\"author\"><@liferay.language key=\"by\" /> ${htmlUtil.escape(portalUtil.getUserName(entry.getUserId(), entry.getUserName()))}</span>\n	</div>\n\n	<div class=\"wiki-content\">\n		<@liferay_ui[\"social-bookmarks\"]\n			displayStyle=\"normal\"\n			target=\"_blank\"\n			title=entry.getTitle()\n			url=viewURL\n		/>\n\n		${formattedContent}\n	</div>\n\n	<div class=\"page-actions\">\n		<div class=\"article-actions\">\n			<@getAddChildPageIcon />\n\n			<@getAttatchmentsIcon />\n		</div>\n	</div>\n\n	 <br />\n\n	<@getRatings cssClass=\"page-ratings\" entry=entry />\n\n	<@getRelatedAssets />\n</div>\n\n<div class=\"page-categorization\">\n	<div class=\"page-categories\">\n		<#assign viewCategorizedPagesURL = renderResponse.createRenderURL() />\n\n		${viewCategorizedPagesURL.setParameter(\"struts_action\", \"/wiki/view_categorized_pages\")}\n		${viewCategorizedPagesURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n\n		<@liferay_ui[\"asset-categories-summary\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			portletURL=viewCategorizedPagesURL\n		/>\n	</div>\n\n	<div class=\"page-tags\">\n		<#assign viewTaggedPagesURL = renderResponse.createRenderURL() />\n\n		${viewTaggedPagesURL.setParameter(\"struts_action\", \"/wiki/view_tagged_pages\")}\n		${viewTaggedPagesURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n\n		<@liferay_ui[\"asset-tags-summary\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			portletURL=viewTaggedPagesURL\n		/>\n	</div>\n</div>\n\n<#assign childPages = entry.getChildPages() />\n\n<#if (childPages?has_content)>\n	<div class=\"child-pages\">\n		<h2><@liferay.language key=\"children-pages\" /></h2>\n\n		<table class=\"taglib-search-iterator\">\n			<tr class=\"portlet-section-header results-header\">\n				<th>\n					<@liferay.language key=\"page\" />\n				</th>\n				<th>\n					<@liferay.language key=\"last-modified\" />\n				</th>\n				<th>\n					<@liferay.language key=\"ratings\" />\n				</th>\n			</tr>\n\n			<#list childPages as childPage>\n				<tr class=\"results-row\">\n					<#assign viewPageURL = renderResponse.createRenderURL() />\n\n					${viewPageURL.setParameter(\"struts_action\", \"/wiki/view\")}\n\n					<#assign childNode = childPage.getNode() />\n\n					${viewPageURL.setParameter(\"nodeName\", childNode.getName())}\n					${viewPageURL.setParameter(\"title\", childPage.getTitle())}\n\n					<td>\n						<a href=\"${viewPageURL}\">${childPage.getTitle()}</a>\n					</td>\n					<td>\n						<a href=\"${viewPageURL}\">${dateUtil.getDate(childPage.getModifiedDate(),\"dd MMM yyyy - HH:mm:ss\", locale)} <@liferay.language key=\"by\" /> ${htmlUtil.escape(portalUtil.getUserName(childPage.getUserId(), childPage.getUserName()))}</a>\n					</td>\n					<td>\n						<@getRatings cssClass=\"child-ratings\" entry=childPage />\n					</td>\n				</tr>\n			</#list>\n		</table>\n	</div>\n</#if>\n\n<@getDiscussion />\n\n<#macro getAddChildPageIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign addPageURL = renderResponse.createRenderURL() />\n\n		${addPageURL.setParameter(\"struts_action\", \"/wiki/edit_page\")}\n		${addPageURL.setParameter(\"redirect\", currentURL)}\n		${addPageURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n		${addPageURL.setParameter(\"title\", \"\")}\n		${addPageURL.setParameter(\"editTitle\", \"1\")}\n		${addPageURL.setParameter(\"parentTitle\", entry.getTitle())}\n\n		<@liferay_ui[\"icon\"]\n			image=\"add_article\"\n			label=true\n			message=\"add-child-page\"\n			url=addPageURL?string\n		/>\n	</#if>\n</#macro>\n\n<#macro getAttatchmentsIcon>\n	<#assign viewPageAttachmentsURL = renderResponse.createRenderURL() />\n\n	${viewPageAttachmentsURL.setParameter(\"struts_action\", \"/wiki/view_page_attachments\") }\n\n	<@liferay_ui[\"icon\"]\n		image=\"clip\"\n		label=true\n		message=\'${entry.getAttachmentsFileEntriesCount() + languageUtil.get(locale, \"attachments\")}\'\n		url=viewPageAttachmentsURL?string\n	/>\n</#macro>\n\n<#macro getDiscussion>\n	<#if validator.isNotNull(assetRenderer.getDiscussionPath()) && (enableComments == \"true\")>\n		<br />\n\n		<#assign discussionURL = renderResponse.createActionURL() />\n\n		${discussionURL.setParameter(\"struts_action\", \"/wiki/\" + assetRenderer.getDiscussionPath())}\n\n		<@liferay_ui[\"discussion\"]\n			className=wikiPageClassName\n			classPK=entry.getResourcePrimKey()\n			formAction=discussionURL?string\n			formName=\"fm2\"\n			ratingsEnabled=enableCommentRatings == \"true\"\n			redirect=currentURL\n			subject=assetRenderer.getTitle(locale)\n			userId=assetRenderer.getUserId()\n		/>\n	</#if>\n</#macro>\n\n<#macro getEditIcon>\n	<#if assetRenderer.hasEditPermission(themeDisplay.getPermissionChecker())>\n		<#assign editPageURL = renderResponse.createRenderURL() />\n\n		${editPageURL.setParameter(\"struts_action\", \"/wiki/edit_page\")}\n		${editPageURL.setParameter(\"redirect\", currentURL)}\n		${editPageURL.setParameter(\"nodeId\", entry.getNodeId()?string)}\n		${editPageURL.setParameter(\"title\", entry.getTitle())}\n\n		<@liferay_ui[\"icon\"]\n			image=\"edit\"\n			message=entry.getTitle()\n			url=editPageURL?string\n		/>\n	</#if>\n</#macro>\n\n<#macro getPageDetailsIcon>\n	<#assign viewPageDetailsURL = renderResponse.createRenderURL() />\n\n	${viewPageDetailsURL.setParameter(\"struts_action\", \"/wiki/view_page_details\")}\n	${viewPageDetailsURL.setParameter(\"redirect\", currentURL)}\n\n	<@liferay_ui[\"icon\"]\n		image=\"history\"\n		message=\"details\"\n		url=viewPageDetailsURL?string\n	/>\n</#macro>\n\n<#macro getPrintIcon>\n	<#assign printURL = renderResponse.createRenderURL() />\n\n	${printURL.setParameter(\"viewMode\", \"print\")}\n	${printURL.setWindowState(\"pop_up\")}\n\n	<#assign title = languageUtil.format(locale, \"print-x-x\", [\"hide-accessible\", htmlUtil.escape(assetRenderer.getTitle(locale))], false) />\n	<#assign taglibPrintURL = \"javascript:Liferay.Util.openWindow({dialog: {width: 960}, id:\'\" + renderResponse.getNamespace() + \"printAsset\', title: \'\" + title + \"\', uri: \'\" + htmlUtil.escapeURL(printURL.toString()) + \"\'});\" />\n\n	<@liferay_ui[\"icon\"]\n		image=\"print\"\n		message=\"print\"\n		url=taglibPrintURL\n	/>\n</#macro>\n\n<#macro getRatings\n	cssClass\n	entry\n>\n	<#if enablePageRatings == \"true\">\n		<div class=\"${cssClass}\">\n			<@liferay_ui[\"ratings\"]\n				className=wikiPageClassName\n				classPK=entry.getResourcePrimKey()\n			/>\n		</div>\n	</#if>\n</#macro>\n\n<#macro getRelatedAssets>\n	<#if assetEntry?? && (enableRelatedAssets == \"true\")>\n		<@liferay_ui[\"asset-links\"]\n			assetEntryId=assetEntry.getEntryId()\n		/>\n	</#if>\n</#macro>',0,0,10428,''),('26d91c84-c05d-4706-1a6d-7499fe9601ce',10429,10195,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',10085,0,'ASSET-TAGS-NAVIGATION-COLOR-BY-POPULARITY-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Color by Popularity</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays asset tags colored by popularity: red (high), yellow (medium), and green (low).</Description></root>','display','','ftl','<#if entries?has_content>\n	<ul class=\"tag-items tag-list\">\n		<#assign scopeGroupId = getterUtil.getLong(scopeGroupId, themeDisplay.getScopeGroupId()) />\n		<#assign classNameId = getterUtil.getLong(classNameId, 0) />\n\n		<#assign maxCount = 1 />\n		<#assign minCount = 1 />\n\n		<#list entries as entry>\n			<#assign maxCount = liferay.max(maxCount, entry.getAssetCount()) />\n			<#assign minCount = liferay.min(minCount, entry.getAssetCount()) />\n		</#list>\n\n		<#assign multiplier = 1 />\n\n		<#if maxCount != minCount>\n			<#assign multiplier = 3 / (maxCount - minCount) />\n		</#if>\n\n		<#list entries as entry>\n			<li class=\"taglib-asset-tags-summary\">\n				<#assign popularity = (maxCount - (maxCount - (entry.getAssetCount() - minCount))) * multiplier />\n\n				<#if popularity < 1>\n					<#assign color = \"green\" />\n				<#elseif (popularity >= 1) && (popularity < 2)>\n					<#assign color = \"orange\" />\n				<#else>\n					<#assign color = \"red\" />\n				</#if>\n\n				<#assign tagURL = renderResponse.createRenderURL() />\n\n				${tagURL.setParameter(\"resetCur\", \"true\")}\n				${tagURL.setParameter(\"tag\", entry.getName())}\n\n				<a class =\"tag\" style=\"color: ${color};\" href=\"${tagURL}\">\n					${entry.getName()}\n\n					<#if (showAssetCount == \"true\")>\n						<span class=\"tag-asset-count\">(${count})</span>\n					</#if>\n				</a>\n			</li>\n		</#list>\n	</ul>\n\n	<br style=\"clear: both;\" />\n</#if>',0,0,10430,''),('c8a378d5-ef0c-39eb-08c6-504452075e17',10431,10195,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',10081,0,'ASSET-CATEGORIES-NAVIGATION-MULTI-COLUMN-LAYOUT-FTL','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Multi Column Layout</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Displays a column for each vocabulary. Each column includes the name of a vocabulary with the vocabulary\'s top level categories listed underneath.</Description></root>','display','','ftl','<#assign aui = taglibLiferayHash[\"/WEB-INF/tld/aui.tld\"] />\n\n<#if entries?has_content>\n	<@aui.layout>\n		<#list entries as entry>\n			<@aui.column columnWidth=25>\n				<div class=\"results-header\">\n					<h3>\n						${entry.getName()}\n					</h3>\n				</div>\n\n				<#assign categories = entry.getCategories()>\n\n				<@displayCategories categories=categories />\n			</@aui.column>\n		</#list>\n	</@aui.layout>\n</#if>\n\n<#macro displayCategories\n	categories\n>\n	<#if categories?has_content>\n		<ul class=\"categories\">\n			<#list categories as category>\n				<li>\n					<#assign categoryURL = renderResponse.createRenderURL()>\n\n					${categoryURL.setParameter(\"resetCur\", \"true\")}\n					${categoryURL.setParameter(\"categoryId\", category.getCategoryId()?string)}\n\n					<a href=\"${categoryURL}\">${category.getName()}</a>\n\n					<#if serviceLocator??>\n						<#assign assetCategoryService = serviceLocator.findService(\"com.liferay.portlet.asset.service.AssetCategoryService\")>\n\n						<#assign childCategories = assetCategoryService.getChildCategories(category.getCategoryId())>\n\n						<@displayCategories categories=childCategories />\n					</#if>\n				</li>\n			</#list>\n		</ul>\n	</#if>\n</#macro>',0,0,10432,'');
/*!40000 ALTER TABLE `DDMTemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLContent`
--

DROP TABLE IF EXISTS `DLContent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLContent` (
  `contentId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `path_` varchar(255) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `data_` longblob,
  `size_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`contentId`),
  UNIQUE KEY `IX_FDD1AAA8` (`companyId`,`repositoryId`,`path_`,`version`),
  KEY `IX_6A83A66A` (`companyId`,`repositoryId`),
  KEY `IX_EB531760` (`companyId`,`repositoryId`,`path_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLContent`
--

LOCK TABLES `DLContent` WRITE;
/*!40000 ALTER TABLE `DLContent` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLContent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntry`
--

DROP TABLE IF EXISTS `DLFileEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(255) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `readCount` int(11) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `custom1ImageId` bigint(20) DEFAULT NULL,
  `custom2ImageId` bigint(20) DEFAULT NULL,
  `manualCheckInRequired` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`fileEntryId`),
  UNIQUE KEY `IX_5391712` (`groupId`,`folderId`,`name`),
  UNIQUE KEY `IX_ED5CA615` (`groupId`,`folderId`,`title`),
  UNIQUE KEY `IX_BC2E7E6A` (`uuid_`,`groupId`),
  KEY `IX_4CB1B2B4` (`companyId`),
  KEY `IX_772ECDE7` (`fileEntryTypeId`),
  KEY `IX_8F6C75D0` (`folderId`,`name`),
  KEY `IX_F4AF5636` (`groupId`),
  KEY `IX_93CF8193` (`groupId`,`folderId`),
  KEY `IX_29D0AF28` (`groupId`,`folderId`,`fileEntryTypeId`),
  KEY `IX_43261870` (`groupId`,`userId`),
  KEY `IX_D20C434D` (`groupId`,`userId`,`folderId`),
  KEY `IX_D9492CF6` (`mimeType`),
  KEY `IX_64F0FE40` (`uuid_`),
  KEY `IX_31079DE8` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntry`
--

LOCK TABLES `DLFileEntry` WRITE;
/*!40000 ALTER TABLE `DLFileEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryMetadata`
--

DROP TABLE IF EXISTS `DLFileEntryMetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryMetadata` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryMetadataId` bigint(20) NOT NULL,
  `DDMStorageId` bigint(20) DEFAULT NULL,
  `DDMStructureId` bigint(20) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `fileVersionId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileEntryMetadataId`),
  UNIQUE KEY `IX_7332B44F` (`DDMStructureId`,`fileVersionId`),
  KEY `IX_4F40FE5E` (`fileEntryId`),
  KEY `IX_A44636C9` (`fileEntryId`,`fileVersionId`),
  KEY `IX_F8E90438` (`fileEntryTypeId`),
  KEY `IX_1FE9C04` (`fileVersionId`),
  KEY `IX_D49AB5D1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryMetadata`
--

LOCK TABLES `DLFileEntryMetadata` WRITE;
/*!40000 ALTER TABLE `DLFileEntryMetadata` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileEntryMetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryType`
--

DROP TABLE IF EXISTS `DLFileEntryType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryType` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `fileEntryTypeKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  PRIMARY KEY (`fileEntryTypeId`),
  UNIQUE KEY `IX_5B6BEF5F` (`groupId`,`fileEntryTypeKey`),
  UNIQUE KEY `IX_1399D844` (`uuid_`,`groupId`),
  KEY `IX_4501FD9C` (`groupId`),
  KEY `IX_90724726` (`uuid_`),
  KEY `IX_5B03E942` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryType`
--

LOCK TABLES `DLFileEntryType` WRITE;
/*!40000 ALTER TABLE `DLFileEntryType` DISABLE KEYS */;
INSERT INTO `DLFileEntryType` VALUES ('d3ac0153-628f-0fa9-702a-31cd2845f36a',0,0,0,0,'','2018-06-13 01:30:06','2018-06-13 01:30:06','BASIC-DOCUMENT','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">basic-document</Name></root>',''),('f79f3821-552c-f20a-b8aa-13c5fcf17a38',10306,10195,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14','CONTRACT','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contract</Description></root>'),('0f743e67-be67-5e73-d207-fca537fa5ea4',10308,10195,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14','MARKETING BANNER','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>'),('735d5b32-cef6-80bf-e6bd-ec1d1c2cd986',10310,10195,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14','ONLINE TRAINING','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>'),('d4b1da2c-6b25-ad8c-0ab3-10439e3bd123',10312,10195,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14','SALES PRESENTATION','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>');
/*!40000 ALTER TABLE `DLFileEntryType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryTypes_DDMStructures`
--

DROP TABLE IF EXISTS `DLFileEntryTypes_DDMStructures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryTypes_DDMStructures` (
  `structureId` bigint(20) NOT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  PRIMARY KEY (`structureId`,`fileEntryTypeId`),
  KEY `IX_8373EC7C` (`fileEntryTypeId`),
  KEY `IX_F147CF3F` (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryTypes_DDMStructures`
--

LOCK TABLES `DLFileEntryTypes_DDMStructures` WRITE;
/*!40000 ALTER TABLE `DLFileEntryTypes_DDMStructures` DISABLE KEYS */;
INSERT INTO `DLFileEntryTypes_DDMStructures` VALUES (10307,10306),(10304,10308),(10309,10308),(10303,10310),(10311,10310),(10305,10312),(10313,10312);
/*!40000 ALTER TABLE `DLFileEntryTypes_DDMStructures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileEntryTypes_DLFolders`
--

DROP TABLE IF EXISTS `DLFileEntryTypes_DLFolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileEntryTypes_DLFolders` (
  `fileEntryTypeId` bigint(20) NOT NULL,
  `folderId` bigint(20) NOT NULL,
  PRIMARY KEY (`fileEntryTypeId`,`folderId`),
  KEY `IX_5BB6AD6C` (`fileEntryTypeId`),
  KEY `IX_6E00A2EC` (`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileEntryTypes_DLFolders`
--

LOCK TABLES `DLFileEntryTypes_DLFolders` WRITE;
/*!40000 ALTER TABLE `DLFileEntryTypes_DLFolders` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileEntryTypes_DLFolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileRank`
--

DROP TABLE IF EXISTS `DLFileRank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileRank` (
  `fileRankId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`fileRankId`),
  UNIQUE KEY `IX_38F0315` (`companyId`,`userId`,`fileEntryId`),
  KEY `IX_A65A1F8B` (`fileEntryId`),
  KEY `IX_BAFB116E` (`groupId`,`userId`),
  KEY `IX_4E96195B` (`groupId`,`userId`,`active_`),
  KEY `IX_EED06670` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileRank`
--

LOCK TABLES `DLFileRank` WRITE;
/*!40000 ALTER TABLE `DLFileRank` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileRank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileShortcut`
--

DROP TABLE IF EXISTS `DLFileShortcut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileShortcut` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileShortcutId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `toFileEntryId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileShortcutId`),
  UNIQUE KEY `IX_FDB4A946` (`uuid_`,`groupId`),
  KEY `IX_A4BB2E58` (`companyId`),
  KEY `IX_8571953E` (`companyId`,`status`),
  KEY `IX_B0051937` (`groupId`,`folderId`),
  KEY `IX_348DC3B2` (`groupId`,`folderId`,`active_`),
  KEY `IX_17EE3098` (`groupId`,`folderId`,`active_`,`status`),
  KEY `IX_4B7247F6` (`toFileEntryId`),
  KEY `IX_4831EBE4` (`uuid_`),
  KEY `IX_29AE81C4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileShortcut`
--

LOCK TABLES `DLFileShortcut` WRITE;
/*!40000 ALTER TABLE `DLFileShortcut` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileShortcut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFileVersion`
--

DROP TABLE IF EXISTS `DLFileVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFileVersion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `checksum` varchar(75) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileVersionId`),
  UNIQUE KEY `IX_E2815081` (`fileEntryId`,`version`),
  UNIQUE KEY `IX_C99B2650` (`uuid_`,`groupId`),
  KEY `IX_F389330E` (`companyId`),
  KEY `IX_A0A283F4` (`companyId`,`status`),
  KEY `IX_C68DC967` (`fileEntryId`),
  KEY `IX_D47BB14D` (`fileEntryId`,`status`),
  KEY `IX_DFD809D3` (`groupId`,`folderId`,`status`),
  KEY `IX_9BE769ED` (`groupId`,`folderId`,`title`,`version`),
  KEY `IX_FFB3395C` (`mimeType`),
  KEY `IX_4BFABB9A` (`uuid_`),
  KEY `IX_95E9E44E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFileVersion`
--

LOCK TABLES `DLFileVersion` WRITE;
/*!40000 ALTER TABLE `DLFileVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFileVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLFolder`
--

DROP TABLE IF EXISTS `DLFolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLFolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mountPoint` tinyint(4) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `defaultFileEntryTypeId` bigint(20) DEFAULT NULL,
  `hidden_` tinyint(4) DEFAULT NULL,
  `overrideFileEntryTypes` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_902FD874` (`groupId`,`parentFolderId`,`name`),
  UNIQUE KEY `IX_3CC1DED2` (`uuid_`,`groupId`),
  KEY `IX_A74DB14C` (`companyId`),
  KEY `IX_E79BE432` (`companyId`,`status`),
  KEY `IX_F2EA1ACE` (`groupId`),
  KEY `IX_F78286C5` (`groupId`,`mountPoint`,`parentFolderId`,`hidden_`),
  KEY `IX_C88430AB` (`groupId`,`mountPoint`,`parentFolderId`,`hidden_`,`status`),
  KEY `IX_49C37475` (`groupId`,`parentFolderId`),
  KEY `IX_CE360BF6` (`groupId`,`parentFolderId`,`hidden_`,`status`),
  KEY `IX_51556082` (`parentFolderId`,`name`),
  KEY `IX_EE29C715` (`repositoryId`),
  KEY `IX_CBC408D8` (`uuid_`),
  KEY `IX_DA448450` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLFolder`
--

LOCK TABLES `DLFolder` WRITE;
/*!40000 ALTER TABLE `DLFolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLFolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DLSyncEvent`
--

DROP TABLE IF EXISTS `DLSyncEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DLSyncEvent` (
  `syncEventId` bigint(20) NOT NULL,
  `modifiedTime` bigint(20) DEFAULT NULL,
  `event` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`syncEventId`),
  UNIQUE KEY `IX_57D82B06` (`typePK`),
  KEY `IX_3D8E1607` (`modifiedTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DLSyncEvent`
--

LOCK TABLES `DLSyncEvent` WRITE;
/*!40000 ALTER TABLE `DLSyncEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `DLSyncEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EmailAddress`
--

DROP TABLE IF EXISTS `EmailAddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EmailAddress` (
  `uuid_` varchar(75) DEFAULT NULL,
  `emailAddressId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `address` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`emailAddressId`),
  KEY `IX_1BB072CA` (`companyId`),
  KEY `IX_49D2DEC4` (`companyId`,`classNameId`),
  KEY `IX_551A519F` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_2A2CB130` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_7B43CD8` (`userId`),
  KEY `IX_D24F3956` (`uuid_`),
  KEY `IX_F74AB912` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EmailAddress`
--

LOCK TABLES `EmailAddress` WRITE;
/*!40000 ALTER TABLE `EmailAddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `EmailAddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoColumn`
--

DROP TABLE IF EXISTS `ExpandoColumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoColumn` (
  `columnId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `defaultData` longtext,
  `typeSettings` longtext,
  PRIMARY KEY (`columnId`),
  UNIQUE KEY `IX_FEFC8DA7` (`tableId`,`name`),
  KEY `IX_A8C0CBE8` (`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoColumn`
--

LOCK TABLES `ExpandoColumn` WRITE;
/*!40000 ALTER TABLE `ExpandoColumn` DISABLE KEYS */;
INSERT INTO `ExpandoColumn` VALUES (10438,10155,10437,'accessSecret',15,'',''),(10439,10155,10437,'accessToken',15,'',''),(10440,10155,10437,'requestSecret',15,'',''),(10441,10155,10437,'requestToken',15,'','');
/*!40000 ALTER TABLE `ExpandoColumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoRow`
--

DROP TABLE IF EXISTS `ExpandoRow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoRow` (
  `rowId_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rowId_`),
  UNIQUE KEY `IX_81EFBFF5` (`tableId`,`classPK`),
  KEY `IX_49EB3118` (`classPK`),
  KEY `IX_D3F5D7AE` (`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoRow`
--

LOCK TABLES `ExpandoRow` WRITE;
/*!40000 ALTER TABLE `ExpandoRow` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpandoRow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoTable`
--

DROP TABLE IF EXISTS `ExpandoTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoTable` (
  `tableId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`tableId`),
  UNIQUE KEY `IX_37562284` (`companyId`,`classNameId`,`name`),
  KEY `IX_B5AE8A85` (`companyId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoTable`
--

LOCK TABLES `ExpandoTable` WRITE;
/*!40000 ALTER TABLE `ExpandoTable` DISABLE KEYS */;
INSERT INTO `ExpandoTable` VALUES (10437,10155,10005,'MP');
/*!40000 ALTER TABLE `ExpandoTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExpandoValue`
--

DROP TABLE IF EXISTS `ExpandoValue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExpandoValue` (
  `valueId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `columnId` bigint(20) DEFAULT NULL,
  `rowId_` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`valueId`),
  UNIQUE KEY `IX_9DDD21E5` (`columnId`,`rowId_`),
  UNIQUE KEY `IX_D27B03E7` (`tableId`,`columnId`,`classPK`),
  KEY `IX_B29FEF17` (`classNameId`,`classPK`),
  KEY `IX_F7DD0987` (`columnId`),
  KEY `IX_9112A7A0` (`rowId_`),
  KEY `IX_F0566A77` (`tableId`),
  KEY `IX_1BD3F4C` (`tableId`,`classPK`),
  KEY `IX_CA9AFB7C` (`tableId`,`columnId`),
  KEY `IX_B71E92D5` (`tableId`,`rowId_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExpandoValue`
--

LOCK TABLES `ExpandoValue` WRITE;
/*!40000 ALTER TABLE `ExpandoValue` DISABLE KEYS */;
/*!40000 ALTER TABLE `ExpandoValue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Group_`
--

DROP TABLE IF EXISTS `Group_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Group_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `groupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `creatorUserId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentGroupId` bigint(20) DEFAULT NULL,
  `liveGroupId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(150) DEFAULT NULL,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `typeSettings` longtext,
  `manualMembership` tinyint(4) DEFAULT NULL,
  `membershipRestriction` int(11) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `site` tinyint(4) DEFAULT NULL,
  `remoteStagingGroupCount` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`groupId`),
  UNIQUE KEY `IX_D0D5E397` (`companyId`,`classNameId`,`classPK`),
  UNIQUE KEY `IX_5DE0BE11` (`companyId`,`classNameId`,`liveGroupId`,`name`),
  UNIQUE KEY `IX_5BDDB872` (`companyId`,`friendlyURL`),
  UNIQUE KEY `IX_BBCA55B` (`companyId`,`liveGroupId`,`name`),
  UNIQUE KEY `IX_5AA68501` (`companyId`,`name`),
  UNIQUE KEY `IX_754FBB1C` (`uuid_`,`groupId`),
  KEY `IX_ABA5CEC2` (`companyId`),
  KEY `IX_B584B5CC` (`companyId`,`classNameId`),
  KEY `IX_ABE2D54` (`companyId`,`classNameId`,`parentGroupId`),
  KEY `IX_5D75499E` (`companyId`,`parentGroupId`),
  KEY `IX_6C499099` (`companyId`,`parentGroupId`,`site`),
  KEY `IX_63A2AABD` (`companyId`,`site`),
  KEY `IX_16218A38` (`liveGroupId`),
  KEY `IX_7B590A7A` (`type_`,`active_`),
  KEY `IX_F981514E` (`uuid_`),
  KEY `IX_26CC761A` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Group_`
--

LOCK TABLES `Group_` WRITE;
/*!40000 ALTER TABLE `Group_` DISABLE KEYS */;
INSERT INTO `Group_` VALUES ('54c3a71e-d990-b3bb-03a0-e8f7e5056f68',10173,10155,10159,10001,10173,0,0,'/10173/','Control Panel','',3,'',1,0,'/control_panel',0,0,1),('e90d5330-d3c0-2c0c-9b6e-ca45dd6b7a90',10182,10155,10159,10001,10182,0,0,'/10182/','Guest','',1,'',1,0,'/guest',1,0,1),('597ead5e-0425-c2b9-0b10-f52c3cb459b5',10192,10155,10159,10191,10159,0,0,'/10192/','User Personal Site','',3,'',1,0,'/personal_site',0,0,1),('98bba372-120b-8907-afd5-0a7ad0cb3880',10195,10155,10159,10025,10155,0,0,'/10195/','10155','',0,'',1,0,'/global',1,0,1),('be500e09-9250-ecac-9cb8-d6e537a874f9',10201,10155,10199,10005,10199,0,0,'/10201/','10199','',0,'',1,0,'/test',0,0,1),('c3081167-e912-f6b3-4e57-0d7d5facbe74',10317,10155,10159,10032,10316,0,0,'/10317/','10316','',0,'',1,0,'/template-10316',0,0,1),('a5855a7b-49f4-fab2-4cc1-0218f13b56b3',10329,10155,10159,10032,10328,0,0,'/10329/','10328','',0,'',1,0,'/template-10328',0,0,1),('38caf59d-21b4-d87d-18d9-a5bed86f58b0',10339,10155,10159,10032,10338,0,0,'/10339/','10338','',0,'',1,0,'/template-10338',0,0,1),('bca49e0a-1ce2-0fe3-88ad-94e635471403',10350,10155,10159,10036,10349,0,0,'/10350/','10349','',0,'',1,0,'/template-10349',0,0,1),('05e8b61f-792b-bbee-2166-d0637b85a3db',10376,10155,10159,10036,10375,0,0,'/10376/','10375','',0,'',1,0,'/template-10375',0,0,1);
/*!40000 ALTER TABLE `Group_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups_Orgs`
--

DROP TABLE IF EXISTS `Groups_Orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups_Orgs` (
  `groupId` bigint(20) NOT NULL,
  `organizationId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`organizationId`),
  KEY `IX_75267DCA` (`groupId`),
  KEY `IX_6BBB7682` (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups_Orgs`
--

LOCK TABLES `Groups_Orgs` WRITE;
/*!40000 ALTER TABLE `Groups_Orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_Orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups_Roles`
--

DROP TABLE IF EXISTS `Groups_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups_Roles` (
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`roleId`),
  KEY `IX_84471FD2` (`groupId`),
  KEY `IX_3103EF3D` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups_Roles`
--

LOCK TABLES `Groups_Roles` WRITE;
/*!40000 ALTER TABLE `Groups_Roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Groups_UserGroups`
--

DROP TABLE IF EXISTS `Groups_UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Groups_UserGroups` (
  `groupId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userGroupId`),
  KEY `IX_31FB749A` (`groupId`),
  KEY `IX_3B69160F` (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Groups_UserGroups`
--

LOCK TABLES `Groups_UserGroups` WRITE;
/*!40000 ALTER TABLE `Groups_UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `Groups_UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Image`
--

DROP TABLE IF EXISTS `Image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Image` (
  `imageId` bigint(20) NOT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `size_` int(11) DEFAULT NULL,
  PRIMARY KEY (`imageId`),
  KEY `IX_6A925A4D` (`size_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Image`
--

LOCK TABLES `Image` WRITE;
/*!40000 ALTER TABLE `Image` DISABLE KEYS */;
/*!40000 ALTER TABLE `Image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalArticle`
--

DROP TABLE IF EXISTS `JournalArticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalArticle` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `title` longtext,
  `urlTitle` varchar(150) DEFAULT NULL,
  `description` longtext,
  `content` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `layoutUuid` varchar(75) DEFAULT NULL,
  `displayDate` datetime DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  `reviewDate` datetime DEFAULT NULL,
  `indexable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_85C52EEC` (`groupId`,`articleId`,`version`),
  UNIQUE KEY `IX_3463D95B` (`uuid_`,`groupId`),
  KEY `IX_DFF98523` (`companyId`),
  KEY `IX_323DF109` (`companyId`,`status`),
  KEY `IX_3D070845` (`companyId`,`version`),
  KEY `IX_E82F322B` (`companyId`,`version`,`status`),
  KEY `IX_EA05E9E1` (`displayDate`,`status`),
  KEY `IX_9356F865` (`groupId`),
  KEY `IX_68C0F69C` (`groupId`,`articleId`),
  KEY `IX_4D5CD982` (`groupId`,`articleId`,`status`),
  KEY `IX_9CE6E0FA` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_A2534AC2` (`groupId`,`classNameId`,`layoutUuid`),
  KEY `IX_91E78C35` (`groupId`,`classNameId`,`structureId`),
  KEY `IX_F43B9FF2` (`groupId`,`classNameId`,`templateId`),
  KEY `IX_5CD17502` (`groupId`,`folderId`),
  KEY `IX_F35391E8` (`groupId`,`folderId`,`status`),
  KEY `IX_3C028C1E` (`groupId`,`layoutUuid`),
  KEY `IX_301D024B` (`groupId`,`status`),
  KEY `IX_2E207659` (`groupId`,`structureId`),
  KEY `IX_8DEAE14E` (`groupId`,`templateId`),
  KEY `IX_22882D02` (`groupId`,`urlTitle`),
  KEY `IX_D2D249E8` (`groupId`,`urlTitle`,`status`),
  KEY `IX_D19C1B9F` (`groupId`,`userId`),
  KEY `IX_43A0F80F` (`groupId`,`userId`,`classNameId`),
  KEY `IX_3F1EA19E` (`layoutUuid`),
  KEY `IX_33F49D16` (`resourcePrimKey`),
  KEY `IX_89FF8B06` (`resourcePrimKey`,`indexable`),
  KEY `IX_451D63EC` (`resourcePrimKey`,`indexable`,`status`),
  KEY `IX_3E2765FC` (`resourcePrimKey`,`status`),
  KEY `IX_EF9B7028` (`smallImageId`),
  KEY `IX_8E8710D9` (`structureId`),
  KEY `IX_9106F6CE` (`templateId`),
  KEY `IX_F029602F` (`uuid_`),
  KEY `IX_71520099` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalArticle`
--

LOCK TABLES `JournalArticle` WRITE;
/*!40000 ALTER TABLE `JournalArticle` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalArticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalArticleImage`
--

DROP TABLE IF EXISTS `JournalArticleImage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalArticleImage` (
  `articleImageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `elInstanceId` varchar(75) DEFAULT NULL,
  `elName` varchar(75) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `tempImage` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`articleImageId`),
  UNIQUE KEY `IX_103D6207` (`groupId`,`articleId`,`version`,`elInstanceId`,`elName`,`languageId`),
  KEY `IX_3B51BB68` (`groupId`),
  KEY `IX_158B526F` (`groupId`,`articleId`,`version`),
  KEY `IX_D4121315` (`tempImage`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalArticleImage`
--

LOCK TABLES `JournalArticleImage` WRITE;
/*!40000 ALTER TABLE `JournalArticleImage` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalArticleImage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalArticleResource`
--

DROP TABLE IF EXISTS `JournalArticleResource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalArticleResource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`),
  UNIQUE KEY `IX_88DF994A` (`groupId`,`articleId`),
  UNIQUE KEY `IX_84AB0309` (`uuid_`,`groupId`),
  KEY `IX_F8433677` (`groupId`),
  KEY `IX_DCD1FAC1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalArticleResource`
--

LOCK TABLES `JournalArticleResource` WRITE;
/*!40000 ALTER TABLE `JournalArticleResource` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalArticleResource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalContentSearch`
--

DROP TABLE IF EXISTS `JournalContentSearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalContentSearch` (
  `contentSearchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`contentSearchId`),
  UNIQUE KEY `IX_C3AA93B8` (`groupId`,`privateLayout`,`layoutId`,`portletId`,`articleId`),
  KEY `IX_9207CB31` (`articleId`),
  KEY `IX_6838E427` (`groupId`,`articleId`),
  KEY `IX_20962903` (`groupId`,`privateLayout`),
  KEY `IX_7CC7D73E` (`groupId`,`privateLayout`,`articleId`),
  KEY `IX_B3B318DC` (`groupId`,`privateLayout`,`layoutId`),
  KEY `IX_7ACC74C9` (`groupId`,`privateLayout`,`layoutId`,`portletId`),
  KEY `IX_8DAF8A35` (`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalContentSearch`
--

LOCK TABLES `JournalContentSearch` WRITE;
/*!40000 ALTER TABLE `JournalContentSearch` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalContentSearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalFeed`
--

DROP TABLE IF EXISTS `JournalFeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalFeed` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `feedId` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `rendererTemplateId` varchar(75) DEFAULT NULL,
  `delta` int(11) DEFAULT NULL,
  `orderByCol` varchar(75) DEFAULT NULL,
  `orderByType` varchar(75) DEFAULT NULL,
  `targetLayoutFriendlyUrl` varchar(255) DEFAULT NULL,
  `targetPortletId` varchar(75) DEFAULT NULL,
  `contentField` varchar(75) DEFAULT NULL,
  `feedFormat` varchar(75) DEFAULT NULL,
  `feedVersion` double DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_65576CBC` (`groupId`,`feedId`),
  UNIQUE KEY `IX_39031F51` (`uuid_`,`groupId`),
  KEY `IX_35A2DB2F` (`groupId`),
  KEY `IX_50C36D79` (`uuid_`),
  KEY `IX_CB37A10F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalFeed`
--

LOCK TABLES `JournalFeed` WRITE;
/*!40000 ALTER TABLE `JournalFeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalFeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `JournalFolder`
--

DROP TABLE IF EXISTS `JournalFolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `JournalFolder` (
  `uuid_` varchar(75) DEFAULT NULL,
  `folderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_65026705` (`groupId`,`parentFolderId`,`name`),
  UNIQUE KEY `IX_E002061` (`uuid_`,`groupId`),
  KEY `IX_E6E2725D` (`companyId`),
  KEY `IX_C36B0443` (`companyId`,`status`),
  KEY `IX_742DEC1F` (`groupId`),
  KEY `IX_E988689E` (`groupId`,`name`),
  KEY `IX_190483C6` (`groupId`,`parentFolderId`),
  KEY `IX_EFD9CAC` (`groupId`,`parentFolderId`,`status`),
  KEY `IX_63BDFA69` (`uuid_`),
  KEY `IX_54F89E1F` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `JournalFolder`
--

LOCK TABLES `JournalFolder` WRITE;
/*!40000 ALTER TABLE `JournalFolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `JournalFolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Layout`
--

DROP TABLE IF EXISTS `Layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Layout` (
  `uuid_` varchar(75) DEFAULT NULL,
  `plid` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `layoutId` bigint(20) DEFAULT NULL,
  `parentLayoutId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `typeSettings` longtext,
  `hidden_` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `priority` int(11) DEFAULT NULL,
  `layoutPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  `sourcePrototypeLayoutUuid` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`plid`),
  UNIQUE KEY `IX_BC2C4231` (`groupId`,`privateLayout`,`friendlyURL`),
  UNIQUE KEY `IX_7162C27C` (`groupId`,`privateLayout`,`layoutId`),
  UNIQUE KEY `IX_E118C537` (`uuid_`,`groupId`,`privateLayout`),
  KEY `IX_C7FBC998` (`companyId`),
  KEY `IX_C099D61A` (`groupId`),
  KEY `IX_705F5AA3` (`groupId`,`privateLayout`),
  KEY `IX_6DE88B06` (`groupId`,`privateLayout`,`parentLayoutId`),
  KEY `IX_8CE8C0D9` (`groupId`,`privateLayout`,`sourcePrototypeLayoutUuid`),
  KEY `IX_1A1B61D2` (`groupId`,`privateLayout`,`type_`),
  KEY `IX_23922F7D` (`iconImageId`),
  KEY `IX_B529BFD3` (`layoutPrototypeUuid`),
  KEY `IX_39A18ECC` (`sourcePrototypeLayoutUuid`),
  KEY `IX_D0822724` (`uuid_`),
  KEY `IX_2CE4BE84` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Layout`
--

LOCK TABLES `Layout` WRITE;
/*!40000 ALTER TABLE `Layout` DISABLE KEYS */;
INSERT INTO `Layout` VALUES ('00b697ca-d513-b8ab-31c8-f73ff3a3c945',10176,10173,10155,10159,'','2018-06-13 01:30:12','2018-06-13 01:30:12',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Control Panel</Name></root>','','','','','control_panel','privateLayout=true\n',0,'/manage',0,0,'','','','','',0,'',0,''),('8348d72c-6355-fa3e-ab69-06114f4bc109',10185,10182,10155,10159,'','2018-06-13 01:30:12','2018-06-13 01:30:12',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=58,\ncolumn-2=47,\nlayout-template-id=2_columns_ii\n',0,'/home',0,0,'','','','','',0,'',0,''),('e2901999-d05e-1d9f-64af-74424b7cf525',10320,10317,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','','','','','portlet','column-1=33,\ncolumn-2=148_INSTANCE_zXgGG4uFI65J,114,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/layout',0,0,'','','','','',0,'',0,''),('65ffd7e1-247c-1ea1-7f9f-8ed4a0bb4fe1',10332,10329,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:15',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','','','','','portlet','column-1=141_INSTANCE_6T8FPtf1Qnfs,122_INSTANCE_t8WUbJMlwbqP,\ncolumn-2=3,101_INSTANCE_cLLEDhEC00mf,\ndefault-asset-publisher-portlet-id=101_INSTANCE_cLLEDhEC00mf\nlayout-template-id=2_columns_ii\nprivateLayout=true\n',0,'/layout',0,0,'','','','','',0,'',0,''),('abc45fbe-f855-9a71-964f-c64dd8b70c7b',10342,10339,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','column-1=36,\ncolumn-2=122_INSTANCE_Rc67oaLODuBp,141_INSTANCE_XpUSIbu9L6HF,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/layout',0,0,'','','','','',0,'',0,''),('f536d54a-8bfe-2dc4-3169-0f7cb091d0d9',10361,10350,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','column-1=19,\ncolumn-2=3,59_INSTANCE_o3mFzWXoUsfY,180,101_INSTANCE_vs4usWFGnGlS,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,''),('61d98283-166d-6146-ba64-8c68948ad974',10369,10350,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','column-1=36,\ncolumn-2=122_INSTANCE_ly09mC0rrvf7,148_INSTANCE_Bdiyhg2Rey9L,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/wiki',0,0,'','','','','',1,'',0,''),('e8bc804a-8fc3-d08c-c007-e5c74c813a46',10387,10376,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:16',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','column-1=116,\ncolumn-2=3,82,101_INSTANCE_M9WtOwaOrGSr,\nlayout-template-id=2_columns_i\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,''),('c33f4b56-6309-9c71-0feb-b7db57938b30',10396,10376,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Documents and Media</Name></root>','','','','','portlet','column-1=20,\ncolumn-2=101_INSTANCE_IXIlUgOzZVh6,\nlayout-template-id=1_column\nprivateLayout=true\n',0,'/documents',0,0,'','','','','',1,'',0,''),('ea4d9379-70af-4a58-f695-ceeb8cb07e42',10404,10376,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">News</Name></root>','','','','','portlet','column-1=39_INSTANCE_QnFHLTbDJAC8,\ncolumn-2=39_INSTANCE_TG07bqkOjROj,\nlayout-template-id=2_columns_iii\nprivateLayout=true\n',0,'/news',0,0,'','','','','',2,'',0,''),('24559a1e-f694-7b2f-d6ca-e0580bf30a32',10451,10201,10155,10199,'Test Test','2018-06-13 01:31:27','2018-06-13 01:31:27',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=82,23,11,\ncolumn-2=29,\nlayout-template-id=2_columns_ii\nprivateLayout=true\n',0,'/home',0,0,'','','','','',0,'',0,''),('3e8a7e82-b550-62ab-7d6d-ef56430b4042',10457,10201,10155,10199,'Test Test','2018-06-13 01:31:27','2018-06-13 01:31:27',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','column-1=82,3,\ncolumn-2=33,\nlayout-template-id=2_columns_ii\n',0,'/home',0,0,'','','','','',0,'',0,''),('2f7348d5-bc89-e81d-d0e8-06de3f48a5c7',10474,10182,10155,10199,'Test Test','2018-06-13 01:31:43','2018-06-13 01:31:53',0,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Calendar</Name></root>','','','','','portlet','column-1=1_WAR_calendarportlet\nlayout-template-id=2_columns_ii\n',0,'/calendar',0,0,'','','','','',1,'',0,'');
/*!40000 ALTER TABLE `Layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutBranch`
--

DROP TABLE IF EXISTS `LayoutBranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutBranch` (
  `LayoutBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`LayoutBranchId`),
  UNIQUE KEY `IX_FD57097D` (`layoutSetBranchId`,`plid`,`name`),
  KEY `IX_6C226433` (`layoutSetBranchId`),
  KEY `IX_2C42603E` (`layoutSetBranchId`,`plid`),
  KEY `IX_A705FF94` (`layoutSetBranchId`,`plid`,`master`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutBranch`
--

LOCK TABLES `LayoutBranch` WRITE;
/*!40000 ALTER TABLE `LayoutBranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutBranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutFriendlyURL`
--

DROP TABLE IF EXISTS `LayoutFriendlyURL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutFriendlyURL` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutFriendlyURLId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `friendlyURL` varchar(255) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`layoutFriendlyURLId`),
  UNIQUE KEY `IX_A6FC2B28` (`groupId`,`privateLayout`,`friendlyURL`,`languageId`),
  UNIQUE KEY `IX_C5762E72` (`plid`,`languageId`),
  UNIQUE KEY `IX_326525D6` (`uuid_`,`groupId`),
  KEY `IX_EAB317C8` (`companyId`),
  KEY `IX_742EF04A` (`groupId`),
  KEY `IX_CA713461` (`groupId`,`privateLayout`,`friendlyURL`),
  KEY `IX_83AE56AB` (`plid`),
  KEY `IX_59051329` (`plid`,`friendlyURL`),
  KEY `IX_9F80D54` (`uuid_`),
  KEY `IX_F4321A54` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutFriendlyURL`
--

LOCK TABLES `LayoutFriendlyURL` WRITE;
/*!40000 ALTER TABLE `LayoutFriendlyURL` DISABLE KEYS */;
INSERT INTO `LayoutFriendlyURL` VALUES ('2c23d7ac-ac9e-163d-f760-dd708ca699ec',10177,10173,10155,10159,'','2018-06-13 01:30:12','2018-06-13 01:30:12',10176,1,'/manage','en_US'),('5d0731ee-373f-8633-1fb1-bb8553b0d3b8',10186,10182,10155,10159,'','2018-06-13 01:30:12','2018-06-13 01:30:12',10185,0,'/home','en_US'),('bb78cb8c-c36e-7c4e-a88a-31d83c68ef67',10321,10317,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14',10320,1,'/layout','en_US'),('43331de8-e94c-20c8-8ea6-033b4e5287ac',10333,10329,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14',10332,1,'/layout','en_US'),('49a04deb-7199-c708-83d3-dbd652ff5144',10343,10339,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',10342,1,'/layout','en_US'),('4ae28dc0-79cf-4035-cbed-8eb92abef4a1',10362,10350,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',10361,1,'/home','en_US'),('5d796054-0718-e1ec-d02c-6ec14dab7a60',10370,10350,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',10369,1,'/wiki','en_US'),('2fafa475-1975-48c8-40b0-dd7bb628228f',10388,10376,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',10387,1,'/home','en_US'),('6ab9ca59-3b9a-75c8-7720-7d6d98dd8b75',10397,10376,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',10396,1,'/documents','en_US'),('475b64fa-43f5-24bb-82d5-ec7e812438eb',10405,10376,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',10404,1,'/news','en_US'),('cc66a52e-b3eb-37ba-b32b-9efd914be401',10452,10201,10155,10199,'Test Test','2018-06-13 01:31:27','2018-06-13 01:31:27',10451,1,'/home','en_US'),('c24962a4-b58a-cf84-aea7-255f09e29608',10458,10201,10155,10199,'Test Test','2018-06-13 01:31:27','2018-06-13 01:31:27',10457,0,'/home','en_US'),('e645ffe2-5a4a-eacb-8a0d-636dc510770b',10475,10182,10155,10199,'Test Test','2018-06-13 01:31:43','2018-06-13 01:31:43',10474,0,'/calendar','en_US');
/*!40000 ALTER TABLE `LayoutFriendlyURL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutPrototype`
--

DROP TABLE IF EXISTS `LayoutPrototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutPrototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutPrototypeId`),
  KEY `IX_30616AAA` (`companyId`),
  KEY `IX_557A639F` (`companyId`,`active_`),
  KEY `IX_CEF72136` (`uuid_`),
  KEY `IX_63ED2532` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutPrototype`
--

LOCK TABLES `LayoutPrototype` WRITE;
/*!40000 ALTER TABLE `LayoutPrototype` DISABLE KEYS */;
INSERT INTO `LayoutPrototype` VALUES ('1a55b52f-431a-26ec-211d-5d83a704f524',10316,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','Create, edit, and view blogs from this page. Explore topics using tags, and connect with other members that blog.','',1),('a1831528-5fd3-ba81-380c-beedc7c31689',10328,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','Create, edit, and explore web content with this page. Search available content, explore related content with tags, and browse content categories.','',1),('dd2f4337-fb57-b9b7-d604-b594ab744536',10338,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','Collaborate with members through the wiki on this page. Discover related content through tags, and navigate quickly and easily with categories.','',1);
/*!40000 ALTER TABLE `LayoutPrototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutRevision`
--

DROP TABLE IF EXISTS `LayoutRevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutRevision` (
  `layoutRevisionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `layoutSetBranchId` bigint(20) DEFAULT NULL,
  `layoutBranchId` bigint(20) DEFAULT NULL,
  `parentLayoutRevisionId` bigint(20) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `major` tinyint(4) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` longtext,
  `title` longtext,
  `description` longtext,
  `keywords` longtext,
  `robots` longtext,
  `typeSettings` longtext,
  `iconImage` tinyint(4) DEFAULT NULL,
  `iconImageId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`layoutRevisionId`),
  KEY `IX_43E8286A` (`head`,`plid`),
  KEY `IX_314B621A` (`layoutSetBranchId`),
  KEY `IX_A9AC086E` (`layoutSetBranchId`,`head`),
  KEY `IX_E10AC39` (`layoutSetBranchId`,`head`,`plid`),
  KEY `IX_13984800` (`layoutSetBranchId`,`layoutBranchId`,`plid`),
  KEY `IX_4A84AF43` (`layoutSetBranchId`,`parentLayoutRevisionId`,`plid`),
  KEY `IX_B7B914E5` (`layoutSetBranchId`,`plid`),
  KEY `IX_70DA9ECB` (`layoutSetBranchId`,`plid`,`status`),
  KEY `IX_7FFAE700` (`layoutSetBranchId`,`status`),
  KEY `IX_9329C9D6` (`plid`),
  KEY `IX_8EC3D2BC` (`plid`,`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutRevision`
--

LOCK TABLES `LayoutRevision` WRITE;
/*!40000 ALTER TABLE `LayoutRevision` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutRevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutSet`
--

DROP TABLE IF EXISTS `LayoutSet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutSet` (
  `layoutSetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `pageCount` int(11) DEFAULT NULL,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetId`),
  UNIQUE KEY `IX_48550691` (`groupId`,`privateLayout`),
  KEY `IX_A40B8BEC` (`groupId`),
  KEY `IX_72BBA8B7` (`layoutSetPrototypeUuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutSet`
--

LOCK TABLES `LayoutSet` WRITE;
/*!40000 ALTER TABLE `LayoutSet` DISABLE KEYS */;
INSERT INTO `LayoutSet` VALUES (10174,10173,10155,'2018-06-13 01:30:12','2018-06-13 01:30:12',1,0,0,'classic','01','mobile','01','',1,'','',0),(10175,10173,10155,'2018-06-13 01:30:12','2018-06-13 01:30:12',0,0,0,'classic','01','mobile','01','',0,'','',0),(10183,10182,10155,'2018-06-13 01:30:12','2018-06-13 01:30:12',1,0,0,'classic','01','mobile','01','',0,'','',0),(10184,10182,10155,'2018-06-13 01:30:12','2018-06-13 01:31:43',0,0,0,'classic','01','mobile','01','',2,'','',0),(10193,10192,10155,'2018-06-13 01:30:12','2018-06-13 01:30:12',1,0,0,'classic','01','mobile','01','',0,'','',0),(10194,10192,10155,'2018-06-13 01:30:12','2018-06-13 01:30:12',0,0,0,'classic','01','mobile','01','',0,'','',0),(10196,10195,10155,'2018-06-13 01:30:12','2018-06-13 01:30:12',1,0,0,'classic','01','mobile','01','',0,'','',0),(10197,10195,10155,'2018-06-13 01:30:12','2018-06-13 01:30:12',0,0,0,'classic','01','mobile','01','',0,'','',0),(10202,10201,10155,'2018-06-13 01:30:13','2018-06-13 01:31:27',1,0,0,'classic','01','mobile','01','',1,'','',0),(10203,10201,10155,'2018-06-13 01:30:13','2018-06-13 01:31:27',0,0,0,'classic','01','mobile','01','',1,'','',0),(10318,10317,10155,'2018-06-13 01:30:14','2018-06-13 01:30:14',1,0,0,'classic','01','mobile','01','',1,'','',0),(10319,10317,10155,'2018-06-13 01:30:14','2018-06-13 01:30:14',0,0,0,'classic','01','mobile','01','',0,'','',0),(10330,10329,10155,'2018-06-13 01:30:14','2018-06-13 01:30:14',1,0,0,'classic','01','mobile','01','',1,'','',0),(10331,10329,10155,'2018-06-13 01:30:14','2018-06-13 01:30:14',0,0,0,'classic','01','mobile','01','',0,'','',0),(10340,10339,10155,'2018-06-13 01:30:15','2018-06-13 01:30:15',1,0,0,'classic','01','mobile','01','',1,'','',0),(10341,10339,10155,'2018-06-13 01:30:15','2018-06-13 01:30:15',0,0,0,'classic','01','mobile','01','',0,'','',0),(10351,10350,10155,'2018-06-13 01:30:15','2018-06-13 01:30:15',1,0,0,'classic','01','mobile','01','',2,'','',0),(10352,10350,10155,'2018-06-13 01:30:15','2018-06-13 01:30:15',0,0,0,'classic','01','mobile','01','',0,'','',0),(10377,10376,10155,'2018-06-13 01:30:15','2018-06-13 01:30:16',1,0,0,'classic','01','mobile','01','',3,'','',0),(10378,10376,10155,'2018-06-13 01:30:15','2018-06-13 01:30:15',0,0,0,'classic','01','mobile','01','',0,'','',0);
/*!40000 ALTER TABLE `LayoutSet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutSetBranch`
--

DROP TABLE IF EXISTS `LayoutSetBranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutSetBranch` (
  `layoutSetBranchId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `privateLayout` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `master` tinyint(4) DEFAULT NULL,
  `logo` tinyint(4) DEFAULT NULL,
  `logoId` bigint(20) DEFAULT NULL,
  `themeId` varchar(75) DEFAULT NULL,
  `colorSchemeId` varchar(75) DEFAULT NULL,
  `wapThemeId` varchar(75) DEFAULT NULL,
  `wapColorSchemeId` varchar(75) DEFAULT NULL,
  `css` longtext,
  `settings_` longtext,
  `layoutSetPrototypeUuid` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeLinkEnabled` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetBranchId`),
  UNIQUE KEY `IX_5FF18552` (`groupId`,`privateLayout`,`name`),
  KEY `IX_8FF5D6EA` (`groupId`),
  KEY `IX_C4079FD3` (`groupId`,`privateLayout`),
  KEY `IX_CCF0DA29` (`groupId`,`privateLayout`,`master`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutSetBranch`
--

LOCK TABLES `LayoutSetBranch` WRITE;
/*!40000 ALTER TABLE `LayoutSetBranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `LayoutSetBranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `LayoutSetPrototype`
--

DROP TABLE IF EXISTS `LayoutSetPrototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `LayoutSetPrototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetPrototypeId`),
  KEY `IX_55F63D98` (`companyId`),
  KEY `IX_9178FC71` (`companyId`,`active_`),
  KEY `IX_C5D69B24` (`uuid_`),
  KEY `IX_D9FFCA84` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `LayoutSetPrototype`
--

LOCK TABLES `LayoutSetPrototype` WRITE;
/*!40000 ALTER TABLE `LayoutSetPrototype` DISABLE KEYS */;
INSERT INTO `LayoutSetPrototype` VALUES ('968899db-0216-363e-df99-f81f6e5b4271',10349,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Community Site</Name></root>','Site with Forums and Wiki','layoutsUpdateable=true\n',1),('a2577e7b-3606-cecc-4657-b2b9d1c212db',10375,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:16','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Intranet Site</Name></root>','Site with Documents and News','layoutsUpdateable=true\n',1);
/*!40000 ALTER TABLE `LayoutSetPrototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ListType`
--

DROP TABLE IF EXISTS `ListType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ListType` (
  `listTypeId` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`listTypeId`),
  KEY `IX_2932DD37` (`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ListType`
--

LOCK TABLES `ListType` WRITE;
/*!40000 ALTER TABLE `ListType` DISABLE KEYS */;
INSERT INTO `ListType` VALUES (10000,'billing','com.liferay.portal.model.Account.address'),(10001,'other','com.liferay.portal.model.Account.address'),(10002,'p-o-box','com.liferay.portal.model.Account.address'),(10003,'shipping','com.liferay.portal.model.Account.address'),(10004,'email-address','com.liferay.portal.model.Account.emailAddress'),(10005,'email-address-2','com.liferay.portal.model.Account.emailAddress'),(10006,'email-address-3','com.liferay.portal.model.Account.emailAddress'),(10007,'fax','com.liferay.portal.model.Account.phone'),(10008,'local','com.liferay.portal.model.Account.phone'),(10009,'other','com.liferay.portal.model.Account.phone'),(10010,'toll-free','com.liferay.portal.model.Account.phone'),(10011,'tty','com.liferay.portal.model.Account.phone'),(10012,'intranet','com.liferay.portal.model.Account.website'),(10013,'public','com.liferay.portal.model.Account.website'),(11000,'business','com.liferay.portal.model.Contact.address'),(11001,'other','com.liferay.portal.model.Contact.address'),(11002,'personal','com.liferay.portal.model.Contact.address'),(11003,'email-address','com.liferay.portal.model.Contact.emailAddress'),(11004,'email-address-2','com.liferay.portal.model.Contact.emailAddress'),(11005,'email-address-3','com.liferay.portal.model.Contact.emailAddress'),(11006,'business','com.liferay.portal.model.Contact.phone'),(11007,'business-fax','com.liferay.portal.model.Contact.phone'),(11008,'mobile-phone','com.liferay.portal.model.Contact.phone'),(11009,'other','com.liferay.portal.model.Contact.phone'),(11010,'pager','com.liferay.portal.model.Contact.phone'),(11011,'personal','com.liferay.portal.model.Contact.phone'),(11012,'personal-fax','com.liferay.portal.model.Contact.phone'),(11013,'tty','com.liferay.portal.model.Contact.phone'),(11014,'dr','com.liferay.portal.model.Contact.prefix'),(11015,'mr','com.liferay.portal.model.Contact.prefix'),(11016,'mrs','com.liferay.portal.model.Contact.prefix'),(11017,'ms','com.liferay.portal.model.Contact.prefix'),(11020,'ii','com.liferay.portal.model.Contact.suffix'),(11021,'iii','com.liferay.portal.model.Contact.suffix'),(11022,'iv','com.liferay.portal.model.Contact.suffix'),(11023,'jr','com.liferay.portal.model.Contact.suffix'),(11024,'phd','com.liferay.portal.model.Contact.suffix'),(11025,'sr','com.liferay.portal.model.Contact.suffix'),(11026,'blog','com.liferay.portal.model.Contact.website'),(11027,'business','com.liferay.portal.model.Contact.website'),(11028,'other','com.liferay.portal.model.Contact.website'),(11029,'personal','com.liferay.portal.model.Contact.website'),(12000,'billing','com.liferay.portal.model.Organization.address'),(12001,'other','com.liferay.portal.model.Organization.address'),(12002,'p-o-box','com.liferay.portal.model.Organization.address'),(12003,'shipping','com.liferay.portal.model.Organization.address'),(12004,'email-address','com.liferay.portal.model.Organization.emailAddress'),(12005,'email-address-2','com.liferay.portal.model.Organization.emailAddress'),(12006,'email-address-3','com.liferay.portal.model.Organization.emailAddress'),(12007,'fax','com.liferay.portal.model.Organization.phone'),(12008,'local','com.liferay.portal.model.Organization.phone'),(12009,'other','com.liferay.portal.model.Organization.phone'),(12010,'toll-free','com.liferay.portal.model.Organization.phone'),(12011,'tty','com.liferay.portal.model.Organization.phone'),(12012,'administrative','com.liferay.portal.model.Organization.service'),(12013,'contracts','com.liferay.portal.model.Organization.service'),(12014,'donation','com.liferay.portal.model.Organization.service'),(12015,'retail','com.liferay.portal.model.Organization.service'),(12016,'training','com.liferay.portal.model.Organization.service'),(12017,'full-member','com.liferay.portal.model.Organization.status'),(12018,'provisional-member','com.liferay.portal.model.Organization.status'),(12019,'intranet','com.liferay.portal.model.Organization.website'),(12020,'public','com.liferay.portal.model.Organization.website');
/*!40000 ALTER TABLE `ListType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lock_`
--

DROP TABLE IF EXISTS `Lock_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Lock_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `lockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `className` varchar(75) DEFAULT NULL,
  `key_` varchar(200) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `inheritable` tinyint(4) DEFAULT NULL,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`lockId`),
  UNIQUE KEY `IX_228562AD` (`className`,`key_`),
  KEY `IX_E3F1286B` (`expirationDate`),
  KEY `IX_13C5CD3A` (`uuid_`),
  KEY `IX_2C418EAE` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lock_`
--

LOCK TABLES `Lock_` WRITE;
/*!40000 ALTER TABLE `Lock_` DISABLE KEYS */;
/*!40000 ALTER TABLE `Lock_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBBan`
--

DROP TABLE IF EXISTS `MBBan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBBan` (
  `uuid_` varchar(75) DEFAULT NULL,
  `banId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `banUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`banId`),
  UNIQUE KEY `IX_8ABC4E3B` (`groupId`,`banUserId`),
  UNIQUE KEY `IX_2A3B68F6` (`uuid_`,`groupId`),
  KEY `IX_69951A25` (`banUserId`),
  KEY `IX_5C3FF12A` (`groupId`),
  KEY `IX_48814BBA` (`userId`),
  KEY `IX_8A13C634` (`uuid_`),
  KEY `IX_4F841574` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBBan`
--

LOCK TABLES `MBBan` WRITE;
/*!40000 ALTER TABLE `MBBan` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBBan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBCategory`
--

DROP TABLE IF EXISTS `MBCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBCategory` (
  `uuid_` varchar(75) DEFAULT NULL,
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `displayStyle` varchar(75) DEFAULT NULL,
  `threadCount` int(11) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `IX_F7D28C2F` (`uuid_`,`groupId`),
  KEY `IX_BC735DCF` (`companyId`),
  KEY `IX_E15A5DB5` (`companyId`,`status`),
  KEY `IX_BB870C11` (`groupId`),
  KEY `IX_ED292508` (`groupId`,`parentCategoryId`),
  KEY `IX_C295DBEE` (`groupId`,`parentCategoryId`,`status`),
  KEY `IX_DA84A9F7` (`groupId`,`status`),
  KEY `IX_C2626EDB` (`uuid_`),
  KEY `IX_13DF4E6D` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBCategory`
--

LOCK TABLES `MBCategory` WRITE;
/*!40000 ALTER TABLE `MBCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBDiscussion`
--

DROP TABLE IF EXISTS `MBDiscussion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBDiscussion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `discussionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`discussionId`),
  UNIQUE KEY `IX_33A4DE38` (`classNameId`,`classPK`),
  UNIQUE KEY `IX_B5CA2DC` (`threadId`),
  UNIQUE KEY `IX_F7AAC799` (`uuid_`,`groupId`),
  KEY `IX_79D0120B` (`classNameId`),
  KEY `IX_5477D431` (`uuid_`),
  KEY `IX_7E965757` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBDiscussion`
--

LOCK TABLES `MBDiscussion` WRITE;
/*!40000 ALTER TABLE `MBDiscussion` DISABLE KEYS */;
INSERT INTO `MBDiscussion` VALUES ('316c2108-fe52-2a93-6f78-431dcd09be07',10181,0,0,10159,'','2018-06-13 01:30:12','2018-06-13 01:30:12',10002,10176,10179),('500999f5-ffb9-a4b6-acf8-b435106369a0',10190,0,0,10159,'','2018-06-13 01:30:12','2018-06-13 01:30:12',10002,10185,10188),('903324dd-c77c-4f85-f1a2-1033038b2138',10326,0,0,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14',10002,10320,10323),('0d07a5e5-c35e-1f83-e77e-d4632f9364d3',10337,0,0,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',10002,10332,10335),('715a6d88-9e5a-9e5d-45a8-7bf8fdfdbde5',10347,0,0,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',10002,10342,10345),('282b01e9-aaea-ba09-d01d-c5f670f19419',10366,0,0,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',10002,10361,10364),('eafee24d-c1f0-e3de-b575-750f255061f5',10374,0,0,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',10002,10369,10372),('fb5da5dd-ced4-49df-22e4-5f40278bf35a',10392,0,0,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',10002,10387,10390),('408ea8e5-5592-5c63-8e85-89c451ab4b33',10401,0,0,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',10002,10396,10399),('e55cc675-b5cb-003a-8214-db9444f503ef',10409,0,0,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',10002,10404,10407),('83cbe8d9-c608-4ed9-8026-25b30da388ee',10456,0,0,10199,'Test Test','2018-06-13 01:31:27','2018-06-13 01:31:27',10002,10451,10454),('19541504-b524-e3ea-ee6c-3bdcf2c4dee2',10462,0,0,10199,'Test Test','2018-06-13 01:31:27','2018-06-13 01:31:27',10002,10457,10460),('2c306cb8-0943-9183-def6-70f613aefaa0',10479,0,0,10199,'Test Test','2018-06-13 01:31:43','2018-06-13 01:31:43',10002,10474,10477);
/*!40000 ALTER TABLE `MBDiscussion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBMailingList`
--

DROP TABLE IF EXISTS `MBMailingList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBMailingList` (
  `uuid_` varchar(75) DEFAULT NULL,
  `mailingListId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `inProtocol` varchar(75) DEFAULT NULL,
  `inServerName` varchar(75) DEFAULT NULL,
  `inServerPort` int(11) DEFAULT NULL,
  `inUseSSL` tinyint(4) DEFAULT NULL,
  `inUserName` varchar(75) DEFAULT NULL,
  `inPassword` varchar(75) DEFAULT NULL,
  `inReadInterval` int(11) DEFAULT NULL,
  `outEmailAddress` varchar(75) DEFAULT NULL,
  `outCustom` tinyint(4) DEFAULT NULL,
  `outServerName` varchar(75) DEFAULT NULL,
  `outServerPort` int(11) DEFAULT NULL,
  `outUseSSL` tinyint(4) DEFAULT NULL,
  `outUserName` varchar(75) DEFAULT NULL,
  `outPassword` varchar(75) DEFAULT NULL,
  `allowAnonymous` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`mailingListId`),
  UNIQUE KEY `IX_76CE9CDD` (`groupId`,`categoryId`),
  UNIQUE KEY `IX_E858F170` (`uuid_`,`groupId`),
  KEY `IX_BFEB984F` (`active_`),
  KEY `IX_4115EC7A` (`uuid_`),
  KEY `IX_FC61676E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBMailingList`
--

LOCK TABLES `MBMailingList` WRITE;
/*!40000 ALTER TABLE `MBMailingList` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBMailingList` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBMessage`
--

DROP TABLE IF EXISTS `MBMessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBMessage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `messageId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `parentMessageId` bigint(20) DEFAULT NULL,
  `subject` varchar(75) DEFAULT NULL,
  `body` longtext,
  `format` varchar(75) DEFAULT NULL,
  `anonymous` tinyint(4) DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `allowPingbacks` tinyint(4) DEFAULT NULL,
  `answer` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`messageId`),
  UNIQUE KEY `IX_8D12316E` (`uuid_`,`groupId`),
  KEY `IX_51A8D44D` (`classNameId`,`classPK`),
  KEY `IX_F6687633` (`classNameId`,`classPK`,`status`),
  KEY `IX_B1432D30` (`companyId`),
  KEY `IX_1AD93C16` (`companyId`,`status`),
  KEY `IX_5B153FB2` (`groupId`),
  KEY `IX_1073AB9F` (`groupId`,`categoryId`),
  KEY `IX_4257DB85` (`groupId`,`categoryId`,`status`),
  KEY `IX_B674AB58` (`groupId`,`categoryId`,`threadId`),
  KEY `IX_CBFDBF0A` (`groupId`,`categoryId`,`threadId`,`answer`),
  KEY `IX_385E123E` (`groupId`,`categoryId`,`threadId`,`status`),
  KEY `IX_ED39AC98` (`groupId`,`status`),
  KEY `IX_8EB8C5EC` (`groupId`,`userId`),
  KEY `IX_377858D2` (`groupId`,`userId`,`status`),
  KEY `IX_75B95071` (`threadId`),
  KEY `IX_9D7C3B23` (`threadId`,`answer`),
  KEY `IX_A7038CD7` (`threadId`,`parentMessageId`),
  KEY `IX_9DC8E57` (`threadId`,`status`),
  KEY `IX_7A040C32` (`userId`),
  KEY `IX_59F9CE5C` (`userId`,`classNameId`),
  KEY `IX_ABEB6D07` (`userId`,`classNameId`,`classPK`),
  KEY `IX_4A4BB4ED` (`userId`,`classNameId`,`classPK`,`status`),
  KEY `IX_3321F142` (`userId`,`classNameId`,`status`),
  KEY `IX_C57B16BC` (`uuid_`),
  KEY `IX_57CA9FEC` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBMessage`
--

LOCK TABLES `MBMessage` WRITE;
/*!40000 ALTER TABLE `MBMessage` DISABLE KEYS */;
INSERT INTO `MBMessage` VALUES ('93238ef5-c97c-4df4-5798-4704a69cf3a3',10178,10173,10155,10159,'','2018-06-13 01:30:12','2018-06-13 01:30:12',10002,10176,-1,10179,10178,0,'10176','10176','bbcode',1,0,0,0,0,10159,'','2018-06-13 01:30:12'),('4fb15946-f887-1588-ae16-823a61baef80',10187,10182,10155,10159,'','2018-06-13 01:30:12','2018-06-13 01:30:12',10002,10185,-1,10188,10187,0,'10185','10185','bbcode',1,0,0,0,0,10159,'','2018-06-13 01:30:12'),('767d58bc-d308-5361-e34c-9fc72637748a',10322,10317,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14',10002,10320,-1,10323,10322,0,'10320','10320','bbcode',1,0,0,0,0,10159,'','2018-06-13 01:30:14'),('78a72f7d-9b59-743c-1044-a02eee3ddbb4',10334,10329,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',10002,10332,-1,10335,10334,0,'10332','10332','bbcode',1,0,0,0,0,10159,'','2018-06-13 01:30:15'),('72d12b18-457c-7f3c-2c90-cb6c70625acb',10344,10339,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',10002,10342,-1,10345,10344,0,'10342','10342','bbcode',1,0,0,0,0,10159,'','2018-06-13 01:30:15'),('7c360295-f258-f8a7-5500-1119946732a2',10363,10350,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',10002,10361,-1,10364,10363,0,'10361','10361','bbcode',1,0,0,0,0,10159,'','2018-06-13 01:30:15'),('934645ed-b090-f89d-b043-64029debc735',10371,10350,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',10002,10369,-1,10372,10371,0,'10369','10369','bbcode',1,0,0,0,0,10159,'','2018-06-13 01:30:15'),('4cabf156-8c6b-12af-d282-0c28e4d37290',10389,10376,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',10002,10387,-1,10390,10389,0,'10387','10387','bbcode',1,0,0,0,0,10159,'','2018-06-13 01:30:15'),('8f9fc018-82e8-f18f-0342-b1c58c14c08c',10398,10376,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',10002,10396,-1,10399,10398,0,'10396','10396','bbcode',1,0,0,0,0,10159,'','2018-06-13 01:30:16'),('946c5311-1c16-ef49-fe48-cd90ea080d60',10406,10376,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',10002,10404,-1,10407,10406,0,'10404','10404','bbcode',1,0,0,0,0,10159,'','2018-06-13 01:30:16'),('edb2280a-fdc3-4140-f53b-aa39613e63e2',10453,10201,10155,10199,'Test Test','2018-06-13 01:31:27','2018-06-13 01:31:27',10002,10451,-1,10454,10453,0,'10451','10451','bbcode',0,0,0,0,0,10199,'Test Test','2018-06-13 01:31:27'),('851a73b2-b8d2-cc3b-3614-47a0bfe8c04e',10459,10201,10155,10199,'Test Test','2018-06-13 01:31:27','2018-06-13 01:31:27',10002,10457,-1,10460,10459,0,'10457','10457','bbcode',0,0,0,0,0,10199,'Test Test','2018-06-13 01:31:27'),('20b9eb70-1f67-ad1e-9a66-21a15b019aea',10476,10182,10155,10199,'Test Test','2018-06-13 01:31:43','2018-06-13 01:31:43',10002,10474,-1,10477,10476,0,'10474','10474','bbcode',0,0,0,0,0,10199,'Test Test','2018-06-13 01:31:43');
/*!40000 ALTER TABLE `MBMessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBStatsUser`
--

DROP TABLE IF EXISTS `MBStatsUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBStatsUser` (
  `statsUserId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`statsUserId`),
  UNIQUE KEY `IX_9168E2C9` (`groupId`,`userId`),
  KEY `IX_A00A898F` (`groupId`),
  KEY `IX_D33A5445` (`groupId`,`userId`,`messageCount`),
  KEY `IX_847F92B5` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBStatsUser`
--

LOCK TABLES `MBStatsUser` WRITE;
/*!40000 ALTER TABLE `MBStatsUser` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBStatsUser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBThread`
--

DROP TABLE IF EXISTS `MBThread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBThread` (
  `uuid_` varchar(75) DEFAULT NULL,
  `threadId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `rootMessageId` bigint(20) DEFAULT NULL,
  `rootMessageUserId` bigint(20) DEFAULT NULL,
  `messageCount` int(11) DEFAULT NULL,
  `viewCount` int(11) DEFAULT NULL,
  `lastPostByUserId` bigint(20) DEFAULT NULL,
  `lastPostDate` datetime DEFAULT NULL,
  `priority` double DEFAULT NULL,
  `question` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`threadId`),
  UNIQUE KEY `IX_3A200B7B` (`uuid_`,`groupId`),
  KEY `IX_41F6DC8A` (`categoryId`,`priority`),
  KEY `IX_95C0EA45` (`groupId`),
  KEY `IX_9A2D11B2` (`groupId`,`categoryId`),
  KEY `IX_50F1904A` (`groupId`,`categoryId`,`lastPostDate`),
  KEY `IX_485F7E98` (`groupId`,`categoryId`,`status`),
  KEY `IX_E1E7142B` (`groupId`,`status`),
  KEY `IX_AEDD9CB5` (`lastPostDate`,`priority`),
  KEY `IX_CC993ECB` (`rootMessageId`),
  KEY `IX_7E264A0F` (`uuid_`),
  KEY `IX_F8CA2AB9` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBThread`
--

LOCK TABLES `MBThread` WRITE;
/*!40000 ALTER TABLE `MBThread` DISABLE KEYS */;
INSERT INTO `MBThread` VALUES ('31c65117-7e10-5f56-5849-66afd5bd27e7',10179,10173,10155,10159,'','2018-06-13 01:30:12','2018-06-13 01:30:12',-1,10178,10159,1,0,0,'2018-06-13 01:30:12',0,0,0,10159,'','2018-06-13 01:30:12'),('e3981e5b-59f1-6a52-59c4-9feef559061d',10188,10182,10155,10159,'','2018-06-13 01:30:12','2018-06-13 01:30:12',-1,10187,10159,1,0,0,'2018-06-13 01:30:12',0,0,0,10159,'','2018-06-13 01:30:12'),('7c7a1037-211c-5dba-428c-c2d42b4706c1',10323,10317,10155,10159,'','2018-06-13 01:30:14','2018-06-13 01:30:14',-1,10322,10159,1,0,0,'2018-06-13 01:30:14',0,0,0,10159,'','2018-06-13 01:30:14'),('279390fd-e559-f79a-946a-dc11a54ab7cd',10335,10329,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',-1,10334,10159,1,0,0,'2018-06-13 01:30:15',0,0,0,10159,'','2018-06-13 01:30:15'),('c040dc9a-f9dd-9aee-a8dc-d35df3f2edea',10345,10339,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',-1,10344,10159,1,0,0,'2018-06-13 01:30:15',0,0,0,10159,'','2018-06-13 01:30:15'),('86bc384e-872b-3d9b-56f5-d737246ac2e2',10364,10350,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',-1,10363,10159,1,0,0,'2018-06-13 01:30:15',0,0,0,10159,'','2018-06-13 01:30:15'),('ed899d8a-772f-1fb3-1f5b-a390c5df1766',10372,10350,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',-1,10371,10159,1,0,0,'2018-06-13 01:30:15',0,0,0,10159,'','2018-06-13 01:30:15'),('da845406-b098-6c65-3f58-90c77c2acdd5',10390,10376,10155,10159,'','2018-06-13 01:30:15','2018-06-13 01:30:15',-1,10389,10159,1,0,0,'2018-06-13 01:30:15',0,0,0,10159,'','2018-06-13 01:30:15'),('1e6fa66a-acbf-269c-a663-300e04b8be7f',10399,10376,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',-1,10398,10159,1,0,0,'2018-06-13 01:30:16',0,0,0,10159,'','2018-06-13 01:30:16'),('2cb4a4e3-666c-6afd-cf9d-efdd86f6911d',10407,10376,10155,10159,'','2018-06-13 01:30:16','2018-06-13 01:30:16',-1,10406,10159,1,0,0,'2018-06-13 01:30:16',0,0,0,10159,'','2018-06-13 01:30:16'),('d8927a1b-3be0-b28f-325f-2b73effb98ae',10454,10201,10155,10199,'Test Test','2018-06-13 01:31:27','2018-06-13 01:31:27',-1,10453,10199,1,0,10199,'2018-06-13 01:31:27',0,0,0,10199,'Test Test','2018-06-13 01:31:27'),('b7930c6f-fa50-7aee-0768-4e601e660dff',10460,10201,10155,10199,'Test Test','2018-06-13 01:31:27','2018-06-13 01:31:27',-1,10459,10199,1,0,10199,'2018-06-13 01:31:27',0,0,0,10199,'Test Test','2018-06-13 01:31:27'),('7c9b3bc6-7fcb-1be6-3dbd-0fef2b11f312',10477,10182,10155,10199,'Test Test','2018-06-13 01:31:43','2018-06-13 01:31:43',-1,10476,10199,1,0,10199,'2018-06-13 01:31:43',0,0,0,10199,'Test Test','2018-06-13 01:31:43');
/*!40000 ALTER TABLE `MBThread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MBThreadFlag`
--

DROP TABLE IF EXISTS `MBThreadFlag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MBThreadFlag` (
  `uuid_` varchar(75) DEFAULT NULL,
  `threadFlagId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`threadFlagId`),
  UNIQUE KEY `IX_33781904` (`userId`,`threadId`),
  UNIQUE KEY `IX_FEB0FC87` (`uuid_`,`groupId`),
  KEY `IX_8CB0A24A` (`threadId`),
  KEY `IX_A28004B` (`userId`),
  KEY `IX_F36BBB83` (`uuid_`),
  KEY `IX_DCE308C5` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MBThreadFlag`
--

LOCK TABLES `MBThreadFlag` WRITE;
/*!40000 ALTER TABLE `MBThreadFlag` DISABLE KEYS */;
/*!40000 ALTER TABLE `MBThreadFlag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRAction`
--

DROP TABLE IF EXISTS `MDRAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRAction` (
  `uuid_` varchar(75) DEFAULT NULL,
  `actionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`actionId`),
  UNIQUE KEY `IX_75BE36AD` (`uuid_`,`groupId`),
  KEY `IX_FD90786C` (`ruleGroupInstanceId`),
  KEY `IX_77BB5E9D` (`uuid_`),
  KEY `IX_C58A516B` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRAction`
--

LOCK TABLES `MDRAction` WRITE;
/*!40000 ALTER TABLE `MDRAction` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRRule`
--

DROP TABLE IF EXISTS `MDRRule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRRule` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(255) DEFAULT NULL,
  `typeSettings` longtext,
  PRIMARY KEY (`ruleId`),
  UNIQUE KEY `IX_F3EFDCB3` (`uuid_`,`groupId`),
  KEY `IX_4F4293F1` (`ruleGroupId`),
  KEY `IX_EA63B9D7` (`uuid_`),
  KEY `IX_7DEA8DF1` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRRule`
--

LOCK TABLES `MDRRule` WRITE;
/*!40000 ALTER TABLE `MDRRule` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRRule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRRuleGroup`
--

DROP TABLE IF EXISTS `MDRRuleGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRRuleGroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  PRIMARY KEY (`ruleGroupId`),
  UNIQUE KEY `IX_46665CC4` (`uuid_`,`groupId`),
  KEY `IX_5849891C` (`groupId`),
  KEY `IX_7F26B2A6` (`uuid_`),
  KEY `IX_CC14DC2` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRRuleGroup`
--

LOCK TABLES `MDRRuleGroup` WRITE;
/*!40000 ALTER TABLE `MDRRuleGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRRuleGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MDRRuleGroupInstance`
--

DROP TABLE IF EXISTS `MDRRuleGroupInstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MDRRuleGroupInstance` (
  `uuid_` varchar(75) DEFAULT NULL,
  `ruleGroupInstanceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `ruleGroupId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`ruleGroupInstanceId`),
  UNIQUE KEY `IX_808A0036` (`classNameId`,`classPK`,`ruleGroupId`),
  UNIQUE KEY `IX_9CBC6A39` (`uuid_`,`groupId`),
  KEY `IX_C95A08D8` (`classNameId`,`classPK`),
  KEY `IX_AFF28547` (`groupId`),
  KEY `IX_22DAB85C` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_BF3E642B` (`ruleGroupId`),
  KEY `IX_B6A6BD91` (`uuid_`),
  KEY `IX_25C9D1F7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MDRRuleGroupInstance`
--

LOCK TABLES `MDRRuleGroupInstance` WRITE;
/*!40000 ALTER TABLE `MDRRuleGroupInstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `MDRRuleGroupInstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Marketplace_App`
--

DROP TABLE IF EXISTS `Marketplace_App`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Marketplace_App` (
  `uuid_` varchar(75) DEFAULT NULL,
  `appId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `remoteAppId` bigint(20) DEFAULT NULL,
  `title` varchar(75) DEFAULT NULL,
  `description` longtext,
  `category` varchar(75) DEFAULT NULL,
  `iconURL` longtext,
  `version` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`appId`),
  KEY `IX_94A7EF25` (`category`),
  KEY `IX_865B7BD5` (`companyId`),
  KEY `IX_20F14D93` (`remoteAppId`),
  KEY `IX_3E667FE1` (`uuid_`),
  KEY `IX_A7807DA7` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Marketplace_App`
--

LOCK TABLES `Marketplace_App` WRITE;
/*!40000 ALTER TABLE `Marketplace_App` DISABLE KEYS */;
/*!40000 ALTER TABLE `Marketplace_App` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Marketplace_Module`
--

DROP TABLE IF EXISTS `Marketplace_Module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Marketplace_Module` (
  `uuid_` varchar(75) DEFAULT NULL,
  `moduleId` bigint(20) NOT NULL,
  `appId` bigint(20) DEFAULT NULL,
  `bundleSymbolicName` varchar(500) DEFAULT NULL,
  `bundleVersion` varchar(75) DEFAULT NULL,
  `contextName` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`moduleId`),
  KEY `IX_7DC16D26` (`appId`),
  KEY `IX_C6938724` (`appId`,`contextName`),
  KEY `IX_F2F1E964` (`contextName`),
  KEY `IX_A7EFD80E` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Marketplace_Module`
--

LOCK TABLES `Marketplace_Module` WRITE;
/*!40000 ALTER TABLE `Marketplace_Module` DISABLE KEYS */;
/*!40000 ALTER TABLE `Marketplace_Module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MembershipRequest`
--

DROP TABLE IF EXISTS `MembershipRequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MembershipRequest` (
  `membershipRequestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `comments` longtext,
  `replyComments` longtext,
  `replyDate` datetime DEFAULT NULL,
  `replierUserId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`membershipRequestId`),
  KEY `IX_8A1CC4B` (`groupId`),
  KEY `IX_C28C72EC` (`groupId`,`statusId`),
  KEY `IX_35AA8FA6` (`groupId`,`userId`,`statusId`),
  KEY `IX_66D70879` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MembershipRequest`
--

LOCK TABLES `MembershipRequest` WRITE;
/*!40000 ALTER TABLE `MembershipRequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `MembershipRequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrgGroupRole`
--

DROP TABLE IF EXISTS `OrgGroupRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrgGroupRole` (
  `organizationId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`groupId`,`roleId`),
  KEY `IX_4A527DD3` (`groupId`),
  KEY `IX_AB044D1C` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrgGroupRole`
--

LOCK TABLES `OrgGroupRole` WRITE;
/*!40000 ALTER TABLE `OrgGroupRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrgGroupRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `OrgLabor`
--

DROP TABLE IF EXISTS `OrgLabor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `OrgLabor` (
  `orgLaborId` bigint(20) NOT NULL,
  `organizationId` bigint(20) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sunOpen` int(11) DEFAULT NULL,
  `sunClose` int(11) DEFAULT NULL,
  `monOpen` int(11) DEFAULT NULL,
  `monClose` int(11) DEFAULT NULL,
  `tueOpen` int(11) DEFAULT NULL,
  `tueClose` int(11) DEFAULT NULL,
  `wedOpen` int(11) DEFAULT NULL,
  `wedClose` int(11) DEFAULT NULL,
  `thuOpen` int(11) DEFAULT NULL,
  `thuClose` int(11) DEFAULT NULL,
  `friOpen` int(11) DEFAULT NULL,
  `friClose` int(11) DEFAULT NULL,
  `satOpen` int(11) DEFAULT NULL,
  `satClose` int(11) DEFAULT NULL,
  PRIMARY KEY (`orgLaborId`),
  KEY `IX_6AF0D434` (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrgLabor`
--

LOCK TABLES `OrgLabor` WRITE;
/*!40000 ALTER TABLE `OrgLabor` DISABLE KEYS */;
/*!40000 ALTER TABLE `OrgLabor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Organization_`
--

DROP TABLE IF EXISTS `Organization_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Organization_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `organizationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentOrganizationId` bigint(20) DEFAULT NULL,
  `treePath` longtext,
  `name` varchar(100) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `recursable` tinyint(4) DEFAULT NULL,
  `regionId` bigint(20) DEFAULT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `statusId` int(11) DEFAULT NULL,
  `comments` longtext,
  PRIMARY KEY (`organizationId`),
  UNIQUE KEY `IX_E301BDF5` (`companyId`,`name`),
  KEY `IX_834BCEB6` (`companyId`),
  KEY `IX_418E4522` (`companyId`,`parentOrganizationId`),
  KEY `IX_396D6B42` (`uuid_`),
  KEY `IX_A9D85BA6` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Organization_`
--

LOCK TABLES `Organization_` WRITE;
/*!40000 ALTER TABLE `Organization_` DISABLE KEYS */;
/*!40000 ALTER TABLE `Organization_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PasswordPolicy`
--

DROP TABLE IF EXISTS `PasswordPolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PasswordPolicy` (
  `uuid_` varchar(75) DEFAULT NULL,
  `passwordPolicyId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultPolicy` tinyint(4) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `changeable` tinyint(4) DEFAULT NULL,
  `changeRequired` tinyint(4) DEFAULT NULL,
  `minAge` bigint(20) DEFAULT NULL,
  `checkSyntax` tinyint(4) DEFAULT NULL,
  `allowDictionaryWords` tinyint(4) DEFAULT NULL,
  `minAlphanumeric` int(11) DEFAULT NULL,
  `minLength` int(11) DEFAULT NULL,
  `minLowerCase` int(11) DEFAULT NULL,
  `minNumbers` int(11) DEFAULT NULL,
  `minSymbols` int(11) DEFAULT NULL,
  `minUpperCase` int(11) DEFAULT NULL,
  `regex` varchar(75) DEFAULT NULL,
  `history` tinyint(4) DEFAULT NULL,
  `historyCount` int(11) DEFAULT NULL,
  `expireable` tinyint(4) DEFAULT NULL,
  `maxAge` bigint(20) DEFAULT NULL,
  `warningTime` bigint(20) DEFAULT NULL,
  `graceLimit` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `maxFailure` int(11) DEFAULT NULL,
  `lockoutDuration` bigint(20) DEFAULT NULL,
  `requireUnlock` tinyint(4) DEFAULT NULL,
  `resetFailureCount` bigint(20) DEFAULT NULL,
  `resetTicketMaxAge` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyId`),
  UNIQUE KEY `IX_3FBFA9F4` (`companyId`,`name`),
  KEY `IX_8FEE65F5` (`companyId`),
  KEY `IX_2C1142E` (`companyId`,`defaultPolicy`),
  KEY `IX_51437A01` (`uuid_`),
  KEY `IX_E4D7EF87` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PasswordPolicy`
--

LOCK TABLES `PasswordPolicy` WRITE;
/*!40000 ALTER TABLE `PasswordPolicy` DISABLE KEYS */;
INSERT INTO `PasswordPolicy` VALUES ('762464c7-340a-c329-8316-36d54d9d84fa',10198,10155,10159,'','2018-06-13 01:30:12','2018-06-13 01:30:12',1,'Default Password Policy','Default Password Policy',1,1,0,0,1,0,6,0,1,0,1,'(?=.{4})(?:[a-zA-Z0-9]*)',0,6,0,8640000,86400,0,0,3,0,1,600,86400);
/*!40000 ALTER TABLE `PasswordPolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PasswordPolicyRel`
--

DROP TABLE IF EXISTS `PasswordPolicyRel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PasswordPolicyRel` (
  `passwordPolicyRelId` bigint(20) NOT NULL,
  `passwordPolicyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyRelId`),
  UNIQUE KEY `IX_C3A17327` (`classNameId`,`classPK`),
  KEY `IX_CD25266E` (`passwordPolicyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PasswordPolicyRel`
--

LOCK TABLES `PasswordPolicyRel` WRITE;
/*!40000 ALTER TABLE `PasswordPolicyRel` DISABLE KEYS */;
/*!40000 ALTER TABLE `PasswordPolicyRel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PasswordTracker`
--

DROP TABLE IF EXISTS `PasswordTracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PasswordTracker` (
  `passwordTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`passwordTrackerId`),
  KEY `IX_326F75BD` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PasswordTracker`
--

LOCK TABLES `PasswordTracker` WRITE;
/*!40000 ALTER TABLE `PasswordTracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `PasswordTracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Phone`
--

DROP TABLE IF EXISTS `Phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Phone` (
  `uuid_` varchar(75) DEFAULT NULL,
  `phoneId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `extension` varchar(75) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`phoneId`),
  KEY `IX_9F704A14` (`companyId`),
  KEY `IX_A2E4AFBA` (`companyId`,`classNameId`),
  KEY `IX_9A53569` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_812CE07A` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_F202B9CE` (`userId`),
  KEY `IX_EA6245A0` (`uuid_`),
  KEY `IX_B271FA88` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Phone`
--

LOCK TABLES `Phone` WRITE;
/*!40000 ALTER TABLE `Phone` DISABLE KEYS */;
/*!40000 ALTER TABLE `Phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PluginSetting`
--

DROP TABLE IF EXISTS `PluginSetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PluginSetting` (
  `pluginSettingId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `pluginId` varchar(75) DEFAULT NULL,
  `pluginType` varchar(75) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pluginSettingId`),
  UNIQUE KEY `IX_7171B2E8` (`companyId`,`pluginId`,`pluginType`),
  KEY `IX_B9746445` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PluginSetting`
--

LOCK TABLES `PluginSetting` WRITE;
/*!40000 ALTER TABLE `PluginSetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `PluginSetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PollsChoice`
--

DROP TABLE IF EXISTS `PollsChoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PollsChoice` (
  `uuid_` varchar(75) DEFAULT NULL,
  `choiceId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`choiceId`),
  UNIQUE KEY `IX_D76DD2CF` (`questionId`,`name`),
  UNIQUE KEY `IX_C222BD31` (`uuid_`,`groupId`),
  KEY `IX_EC370F10` (`questionId`),
  KEY `IX_6660B399` (`uuid_`),
  KEY `IX_8AE746EF` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PollsChoice`
--

LOCK TABLES `PollsChoice` WRITE;
/*!40000 ALTER TABLE `PollsChoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `PollsChoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PollsQuestion`
--

DROP TABLE IF EXISTS `PollsQuestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PollsQuestion` (
  `uuid_` varchar(75) DEFAULT NULL,
  `questionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `expirationDate` datetime DEFAULT NULL,
  `lastVoteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`questionId`),
  UNIQUE KEY `IX_F3C9F36` (`uuid_`,`groupId`),
  KEY `IX_9FF342EA` (`groupId`),
  KEY `IX_51F087F4` (`uuid_`),
  KEY `IX_F910BBB4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PollsQuestion`
--

LOCK TABLES `PollsQuestion` WRITE;
/*!40000 ALTER TABLE `PollsQuestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `PollsQuestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PollsVote`
--

DROP TABLE IF EXISTS `PollsVote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PollsVote` (
  `uuid_` varchar(75) DEFAULT NULL,
  `voteId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `choiceId` bigint(20) DEFAULT NULL,
  `voteDate` datetime DEFAULT NULL,
  PRIMARY KEY (`voteId`),
  UNIQUE KEY `IX_1BBFD4D3` (`questionId`,`userId`),
  UNIQUE KEY `IX_A88C673A` (`uuid_`,`groupId`),
  KEY `IX_D5DF7B54` (`choiceId`),
  KEY `IX_12112599` (`questionId`),
  KEY `IX_FD32EB70` (`uuid_`),
  KEY `IX_7D8E92B8` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PollsVote`
--

LOCK TABLES `PollsVote` WRITE;
/*!40000 ALTER TABLE `PollsVote` DISABLE KEYS */;
/*!40000 ALTER TABLE `PollsVote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PortalPreferences`
--

DROP TABLE IF EXISTS `PortalPreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PortalPreferences` (
  `portalPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portalPreferencesId`),
  KEY `IX_D1F795F1` (`ownerId`,`ownerType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PortalPreferences`
--

LOCK TABLES `PortalPreferences` WRITE;
/*!40000 ALTER TABLE `PortalPreferences` DISABLE KEYS */;
INSERT INTO `PortalPreferences` VALUES (10154,0,1,'<portlet-preferences />'),(10161,10155,1,'<portlet-preferences />'),(10442,10159,4,'<portlet-preferences />'),(10463,10199,4,'<portlet-preferences><preference><name>com.liferay.portal.util.SessionClicks#calendar-portlet-default-view</name><value>week</value></preference><preference><name>com.liferay.portal.util.SessionClicks#liferay_addpanel_tab</name><value>applications</value></preference></portlet-preferences>');
/*!40000 ALTER TABLE `PortalPreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Portlet`
--

DROP TABLE IF EXISTS `Portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Portlet` (
  `id_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_12B5E51D` (`companyId`,`portletId`),
  KEY `IX_80CC9508` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Portlet`
--

LOCK TABLES `Portlet` WRITE;
/*!40000 ALTER TABLE `Portlet` DISABLE KEYS */;
INSERT INTO `Portlet` VALUES (10205,10155,'193','',1),(10206,10155,'194','',1),(10207,10155,'110','',1),(10208,10155,'114','',1),(10209,10155,'115','',1),(10210,10155,'116','',1),(10211,10155,'118','',1),(10212,10155,'97','',1),(10213,10155,'98','',0),(10214,10155,'11','',1),(10215,10155,'99','',1),(10216,10155,'15','',1),(10217,10155,'16','',1),(10218,10155,'19','',1),(10219,10155,'121','',1),(10220,10155,'122','',1),(10221,10155,'3','',1),(10222,10155,'125','',1),(10223,10155,'127','',1),(10224,10155,'128','',1),(10225,10155,'129','',1),(10226,10155,'9','',1),(10227,10155,'20','',1),(10228,10155,'23','',1),(10229,10155,'25','',1),(10230,10155,'26','',1),(10231,10155,'27','',1),(10232,10155,'28','',1),(10233,10155,'29','',1),(10234,10155,'130','',1),(10235,10155,'131','',1),(10236,10155,'132','',1),(10237,10155,'134','',1),(10238,10155,'135','',1),(10239,10155,'137','',1),(10240,10155,'30','',1),(10241,10155,'31','',1),(10242,10155,'33','',1),(10243,10155,'34','',1),(10244,10155,'36','',1),(10245,10155,'39','',1),(10246,10155,'141','',1),(10247,10155,'143','',1),(10248,10155,'146','',1),(10249,10155,'147','',1),(10250,10155,'148','',1),(10251,10155,'149','',1),(10252,10155,'47','',1),(10253,10155,'48','',1),(10254,10155,'150','',1),(10255,10155,'151','',1),(10256,10155,'152','',1),(10257,10155,'153','',1),(10258,10155,'154','',1),(10259,10155,'157','',1),(10260,10155,'158','',1),(10261,10155,'50','',1),(10262,10155,'54','',1),(10263,10155,'56','',1),(10264,10155,'58','',1),(10265,10155,'59','',1),(10266,10155,'161','',1),(10267,10155,'162','',1),(10268,10155,'164','',1),(10269,10155,'166','',1),(10270,10155,'167','',1),(10271,10155,'169','',1),(10272,10155,'61','',1),(10273,10155,'62','',0),(10274,10155,'64','',1),(10275,10155,'66','',1),(10276,10155,'67','',1),(10277,10155,'173','',0),(10278,10155,'175','',1),(10279,10155,'176','',1),(10280,10155,'178','',1),(10281,10155,'179','',1),(10282,10155,'70','',1),(10283,10155,'71','',1),(10284,10155,'73','',1),(10285,10155,'77','',1),(10286,10155,'180','',1),(10287,10155,'181','',1),(10288,10155,'182','',1),(10289,10155,'183','',1),(10290,10155,'184','',1),(10291,10155,'186','',1),(10292,10155,'187','',1),(10293,10155,'100','',1),(10294,10155,'188','',1),(10295,10155,'101','',1),(10296,10155,'102','',1),(10297,10155,'107','',1),(10298,10155,'108','',1),(10299,10155,'82','',1),(10300,10155,'83','',1),(10301,10155,'84','',1),(10302,10155,'85','',1),(10450,10155,'1_WAR_calendarportlet','',1);
/*!40000 ALTER TABLE `Portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PortletItem`
--

DROP TABLE IF EXISTS `PortletItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PortletItem` (
  `portletItemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`portletItemId`),
  KEY `IX_96BDD537` (`groupId`,`classNameId`),
  KEY `IX_D699243F` (`groupId`,`name`,`portletId`,`classNameId`),
  KEY `IX_2C61314E` (`groupId`,`portletId`),
  KEY `IX_E922D6C0` (`groupId`,`portletId`,`classNameId`),
  KEY `IX_8E71167F` (`groupId`,`portletId`,`classNameId`,`name`),
  KEY `IX_33B8CE8D` (`groupId`,`portletId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PortletItem`
--

LOCK TABLES `PortletItem` WRITE;
/*!40000 ALTER TABLE `PortletItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `PortletItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PortletPreferences`
--

DROP TABLE IF EXISTS `PortletPreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PortletPreferences` (
  `portletPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portletPreferencesId`),
  UNIQUE KEY `IX_C7057FF7` (`ownerId`,`ownerType`,`plid`,`portletId`),
  KEY `IX_E4F13E6E` (`ownerId`,`ownerType`,`plid`),
  KEY `IX_C9A3FCE2` (`ownerId`,`ownerType`,`portletId`),
  KEY `IX_D5EDA3A1` (`ownerType`,`plid`,`portletId`),
  KEY `IX_A3B2A80C` (`ownerType`,`portletId`),
  KEY `IX_F15C1C4F` (`plid`),
  KEY `IX_D340DB76` (`plid`,`portletId`),
  KEY `IX_8E6DA3A1` (`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PortletPreferences`
--

LOCK TABLES `PortletPreferences` WRITE;
/*!40000 ALTER TABLE `PortletPreferences` DISABLE KEYS */;
INSERT INTO `PortletPreferences` VALUES (10327,0,3,10320,'148_INSTANCE_zXgGG4uFI65J','<portlet-preferences><preference><name>displayStyle</name><value>cloud</value></preference><preference><name>showAssetCount</name><value>true</value></preference><preference><name>maxAssetTags</name><value>10</value></preference><preference><name>showZeroAssetCount</name><value>false</value></preference><preference><name>classNameId</name><value>10007</value></preference></portlet-preferences>'),(10348,0,3,10342,'141_INSTANCE_XpUSIbu9L6HF','<portlet-preferences><preference><name>showAssetCount</name><value>true</value></preference><preference><name>classNameId</name><value>10016</value></preference></portlet-preferences>'),(10367,0,3,10361,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10368,0,3,10361,'101_INSTANCE_vs4usWFGnGlS','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference><preference><name>anyAssetType</name><value>false</value></preference></portlet-preferences>'),(10393,0,3,10387,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10394,0,3,10387,'82','<portlet-preferences><preference><name>displayStyle</name><value>3</value></preference></portlet-preferences>'),(10395,0,3,10387,'101_INSTANCE_M9WtOwaOrGSr','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Recent Content</value></preference></portlet-preferences>'),(10402,0,3,10396,'20','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10403,0,3,10396,'101_INSTANCE_IXIlUgOzZVh6','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference><preference><name>anyAssetType</name><value>false</value></preference></portlet-preferences>'),(10410,0,3,10404,'39_INSTANCE_QnFHLTbDJAC8','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference><preference><name>entriesPerFeed</name><value>4</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference></portlet-preferences>'),(10411,0,3,10404,'39_INSTANCE_TG07bqkOjROj','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference><preference><name>entriesPerFeed</name><value>4</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference></portlet-preferences>'),(10443,0,3,10185,'145','<portlet-preferences />'),(10480,0,3,10474,'145','<portlet-preferences />'),(10481,0,3,10474,'1_WAR_calendarportlet','<portlet-preferences />');
/*!40000 ALTER TABLE `PortletPreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_BLOB_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_BLOB_TRIGGERS`
--

LOCK TABLES `QUARTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QUARTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_CALENDARS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` longblob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_CALENDARS`
--

LOCK TABLES `QUARTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_CRON_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_CRON_TRIGGERS`
--

LOCK TABLES `QUARTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_CRON_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_FIRED_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `ENTRY_ID` varchar(95) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `FIRED_TIME` bigint(20) NOT NULL,
  `PRIORITY` int(11) NOT NULL,
  `STATE` varchar(16) NOT NULL,
  `JOB_NAME` varchar(200) DEFAULT NULL,
  `JOB_GROUP` varchar(200) DEFAULT NULL,
  `IS_NONCONCURRENT` tinyint(4) DEFAULT NULL,
  `REQUESTS_RECOVERY` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`ENTRY_ID`),
  KEY `IX_BE3835E5` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_4BD722BM` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_204D31E8` (`SCHED_NAME`,`INSTANCE_NAME`),
  KEY `IX_339E078M` (`SCHED_NAME`,`INSTANCE_NAME`,`REQUESTS_RECOVERY`),
  KEY `IX_5005E3AF` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_BC2F03B0` (`SCHED_NAME`,`JOB_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_FIRED_TRIGGERS`
--

LOCK TABLES `QUARTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `QUARTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_JOB_DETAILS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `JOB_CLASS_NAME` varchar(250) NOT NULL,
  `IS_DURABLE` tinyint(4) NOT NULL,
  `IS_NONCONCURRENT` tinyint(4) NOT NULL,
  `IS_UPDATE_DATA` tinyint(4) NOT NULL,
  `REQUESTS_RECOVERY` tinyint(4) NOT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_88328984` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_779BCA37` (`SCHED_NAME`,`REQUESTS_RECOVERY`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_JOB_DETAILS`
--

LOCK TABLES `QUARTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_JOB_DETAILS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_LOCKS`
--

DROP TABLE IF EXISTS `QUARTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_LOCKS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_LOCKS`
--

LOCK TABLES `QUARTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_LOCKS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QUARTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `QUARTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QUARTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_SCHEDULER_STATE` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_SCHEDULER_STATE`
--

LOCK TABLES `QUARTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `QUARTZ_SCHEDULER_STATE` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_SIMPLE_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `QUARTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_SIMPROP_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `STR_PROP_1` varchar(512) DEFAULT NULL,
  `STR_PROP_2` varchar(512) DEFAULT NULL,
  `STR_PROP_3` varchar(512) DEFAULT NULL,
  `INT_PROP_1` int(11) DEFAULT NULL,
  `INT_PROP_2` int(11) DEFAULT NULL,
  `LONG_PROP_1` bigint(20) DEFAULT NULL,
  `LONG_PROP_2` bigint(20) DEFAULT NULL,
  `DEC_PROP_1` decimal(13,4) DEFAULT NULL,
  `DEC_PROP_2` decimal(13,4) DEFAULT NULL,
  `BOOL_PROP_1` tinyint(4) DEFAULT NULL,
  `BOOL_PROP_2` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `QUARTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QUARTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `QUARTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUARTZ_TRIGGERS` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `JOB_NAME` varchar(200) NOT NULL,
  `JOB_GROUP` varchar(200) NOT NULL,
  `DESCRIPTION` varchar(250) DEFAULT NULL,
  `NEXT_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PREV_FIRE_TIME` bigint(20) DEFAULT NULL,
  `PRIORITY` int(11) DEFAULT NULL,
  `TRIGGER_STATE` varchar(16) NOT NULL,
  `TRIGGER_TYPE` varchar(8) NOT NULL,
  `START_TIME` bigint(20) NOT NULL,
  `END_TIME` bigint(20) DEFAULT NULL,
  `CALENDAR_NAME` varchar(200) DEFAULT NULL,
  `MISFIRE_INSTR` int(11) DEFAULT NULL,
  `JOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`),
  KEY `IX_186442A4` (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_1BA1F9DC` (`SCHED_NAME`,`TRIGGER_GROUP`),
  KEY `IX_91CA7CCE` (`SCHED_NAME`,`TRIGGER_GROUP`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_D219AFDE` (`SCHED_NAME`,`TRIGGER_GROUP`,`TRIGGER_STATE`),
  KEY `IX_A85822A0` (`SCHED_NAME`,`JOB_NAME`,`JOB_GROUP`),
  KEY `IX_8AA50BE1` (`SCHED_NAME`,`JOB_GROUP`),
  KEY `IX_EEFE382A` (`SCHED_NAME`,`NEXT_FIRE_TIME`),
  KEY `IX_F026CF4C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`),
  KEY `IX_F2DD7C7E` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`TRIGGER_STATE`,`MISFIRE_INSTR`),
  KEY `IX_1F92813C` (`SCHED_NAME`,`NEXT_FIRE_TIME`,`MISFIRE_INSTR`),
  KEY `IX_99108B6E` (`SCHED_NAME`,`TRIGGER_STATE`),
  KEY `IX_CD7132D0` (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUARTZ_TRIGGERS`
--

LOCK TABLES `QUARTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QUARTZ_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QUARTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RatingsEntry`
--

DROP TABLE IF EXISTS `RatingsEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RatingsEntry` (
  `entryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `score` double DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_B47E3C11` (`userId`,`classNameId`,`classPK`),
  KEY `IX_16184D57` (`classNameId`,`classPK`),
  KEY `IX_A1A8CB8B` (`classNameId`,`classPK`,`score`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RatingsEntry`
--

LOCK TABLES `RatingsEntry` WRITE;
/*!40000 ALTER TABLE `RatingsEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `RatingsEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RatingsStats`
--

DROP TABLE IF EXISTS `RatingsStats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RatingsStats` (
  `statsId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `totalEntries` int(11) DEFAULT NULL,
  `totalScore` double DEFAULT NULL,
  `averageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsId`),
  UNIQUE KEY `IX_A6E99284` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RatingsStats`
--

LOCK TABLES `RatingsStats` WRITE;
/*!40000 ALTER TABLE `RatingsStats` DISABLE KEYS */;
/*!40000 ALTER TABLE `RatingsStats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Region`
--

DROP TABLE IF EXISTS `Region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Region` (
  `regionId` bigint(20) NOT NULL,
  `countryId` bigint(20) DEFAULT NULL,
  `regionCode` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`regionId`),
  UNIQUE KEY `IX_A2635F5C` (`countryId`,`regionCode`),
  KEY `IX_2D9A426F` (`active_`),
  KEY `IX_16D87CA7` (`countryId`),
  KEY `IX_11FB3E42` (`countryId`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Region`
--

LOCK TABLES `Region` WRITE;
/*!40000 ALTER TABLE `Region` DISABLE KEYS */;
INSERT INTO `Region` VALUES (1001,1,'AB','Alberta',1),(1002,1,'BC','British Columbia',1),(1003,1,'MB','Manitoba',1),(1004,1,'NB','New Brunswick',1),(1005,1,'NL','Newfoundland and Labrador',1),(1006,1,'NT','Northwest Territories',1),(1007,1,'NS','Nova Scotia',1),(1008,1,'NU','Nunavut',1),(1009,1,'ON','Ontario',1),(1010,1,'PE','Prince Edward Island',1),(1011,1,'QC','Quebec',1),(1012,1,'SK','Saskatchewan',1),(1013,1,'YT','Yukon',1),(2001,2,'CN-34','Anhui',1),(2002,2,'CN-92','Aomen',1),(2003,2,'CN-11','Beijing',1),(2004,2,'CN-50','Chongqing',1),(2005,2,'CN-35','Fujian',1),(2006,2,'CN-62','Gansu',1),(2007,2,'CN-44','Guangdong',1),(2008,2,'CN-45','Guangxi',1),(2009,2,'CN-52','Guizhou',1),(2010,2,'CN-46','Hainan',1),(2011,2,'CN-13','Hebei',1),(2012,2,'CN-23','Heilongjiang',1),(2013,2,'CN-41','Henan',1),(2014,2,'CN-42','Hubei',1),(2015,2,'CN-43','Hunan',1),(2016,2,'CN-32','Jiangsu',1),(2017,2,'CN-36','Jiangxi',1),(2018,2,'CN-22','Jilin',1),(2019,2,'CN-21','Liaoning',1),(2020,2,'CN-15','Nei Mongol',1),(2021,2,'CN-64','Ningxia',1),(2022,2,'CN-63','Qinghai',1),(2023,2,'CN-61','Shaanxi',1),(2024,2,'CN-37','Shandong',1),(2025,2,'CN-31','Shanghai',1),(2026,2,'CN-14','Shanxi',1),(2027,2,'CN-51','Sichuan',1),(2028,2,'CN-71','Taiwan',1),(2029,2,'CN-12','Tianjin',1),(2030,2,'CN-91','Xianggang',1),(2031,2,'CN-65','Xinjiang',1),(2032,2,'CN-54','Xizang',1),(2033,2,'CN-53','Yunnan',1),(2034,2,'CN-33','Zhejiang',1),(3001,3,'A','Alsace',1),(3002,3,'B','Aquitaine',1),(3003,3,'C','Auvergne',1),(3004,3,'P','Basse-Normandie',1),(3005,3,'D','Bourgogne',1),(3006,3,'E','Bretagne',1),(3007,3,'F','Centre',1),(3008,3,'G','Champagne-Ardenne',1),(3009,3,'H','Corse',1),(3010,3,'GF','Guyane',1),(3011,3,'I','Franche Comt????',1),(3012,3,'GP','Guadeloupe',1),(3013,3,'Q','Haute-Normandie',1),(3014,3,'J','????le-de-France',1),(3015,3,'K','Languedoc-Roussillon',1),(3016,3,'L','Limousin',1),(3017,3,'M','Lorraine',1),(3018,3,'MQ','Martinique',1),(3019,3,'N','Midi-Pyr????n????es',1),(3020,3,'O','Nord Pas de Calais',1),(3021,3,'R','Pays de la Loire',1),(3022,3,'S','Picardie',1),(3023,3,'T','Poitou-Charentes',1),(3024,3,'U','Provence-Alpes-C????te-d\'Azur',1),(3025,3,'RE','R????union',1),(3026,3,'V','Rh????ne-Alpes',1),(4001,4,'BW','Baden-W????rttemberg',1),(4002,4,'BY','Bayern',1),(4003,4,'BE','Berlin',1),(4004,4,'BB','Brandenburg',1),(4005,4,'HB','Bremen',1),(4006,4,'HH','Hamburg',1),(4007,4,'HE','Hessen',1),(4008,4,'MV','Mecklenburg-Vorpommern',1),(4009,4,'NI','Niedersachsen',1),(4010,4,'NW','Nordrhein-Westfalen',1),(4011,4,'RP','Rheinland-Pfalz',1),(4012,4,'SL','Saarland',1),(4013,4,'SN','Sachsen',1),(4014,4,'ST','Sachsen-Anhalt',1),(4015,4,'SH','Schleswig-Holstein',1),(4016,4,'TH','Th????ringen',1),(8001,8,'AG','Agrigento',1),(8002,8,'AL','Alessandria',1),(8003,8,'AN','Ancona',1),(8004,8,'AO','Aosta',1),(8005,8,'AR','Arezzo',1),(8006,8,'AP','Ascoli Piceno',1),(8007,8,'AT','Asti',1),(8008,8,'AV','Avellino',1),(8009,8,'BA','Bari',1),(8010,8,'BT','Barletta-Andria-Trani',1),(8011,8,'BL','Belluno',1),(8012,8,'BN','Benevento',1),(8013,8,'BG','Bergamo',1),(8014,8,'BI','Biella',1),(8015,8,'BO','Bologna',1),(8016,8,'BZ','Bolzano',1),(8017,8,'BS','Brescia',1),(8018,8,'BR','Brindisi',1),(8019,8,'CA','Cagliari',1),(8020,8,'CL','Caltanissetta',1),(8021,8,'CB','Campobasso',1),(8022,8,'CI','Carbonia-Iglesias',1),(8023,8,'CE','Caserta',1),(8024,8,'CT','Catania',1),(8025,8,'CZ','Catanzaro',1),(8026,8,'CH','Chieti',1),(8027,8,'CO','Como',1),(8028,8,'CS','Cosenza',1),(8029,8,'CR','Cremona',1),(8030,8,'KR','Crotone',1),(8031,8,'CN','Cuneo',1),(8032,8,'EN','Enna',1),(8033,8,'FM','Fermo',1),(8034,8,'FE','Ferrara',1),(8035,8,'FI','Firenze',1),(8036,8,'FG','Foggia',1),(8037,8,'FC','Forli-Cesena',1),(8038,8,'FR','Frosinone',1),(8039,8,'GE','Genova',1),(8040,8,'GO','Gorizia',1),(8041,8,'GR','Grosseto',1),(8042,8,'IM','Imperia',1),(8043,8,'IS','Isernia',1),(8044,8,'AQ','L\'Aquila',1),(8045,8,'SP','La Spezia',1),(8046,8,'LT','Latina',1),(8047,8,'LE','Lecce',1),(8048,8,'LC','Lecco',1),(8049,8,'LI','Livorno',1),(8050,8,'LO','Lodi',1),(8051,8,'LU','Lucca',1),(8052,8,'MC','Macerata',1),(8053,8,'MN','Mantova',1),(8054,8,'MS','Massa-Carrara',1),(8055,8,'MT','Matera',1),(8056,8,'MA','Medio Campidano',1),(8057,8,'ME','Messina',1),(8058,8,'MI','Milano',1),(8059,8,'MO','Modena',1),(8060,8,'MB','Monza e Brianza',1),(8061,8,'NA','Napoli',1),(8062,8,'NO','Novara',1),(8063,8,'NU','Nuoro',1),(8064,8,'OG','Ogliastra',1),(8065,8,'OT','Olbia-Tempio',1),(8066,8,'OR','Oristano',1),(8067,8,'PD','Padova',1),(8068,8,'PA','Palermo',1),(8069,8,'PR','Parma',1),(8070,8,'PV','Pavia',1),(8071,8,'PG','Perugia',1),(8072,8,'PU','Pesaro e Urbino',1),(8073,8,'PE','Pescara',1),(8074,8,'PC','Piacenza',1),(8075,8,'PI','Pisa',1),(8076,8,'PT','Pistoia',1),(8077,8,'PN','Pordenone',1),(8078,8,'PZ','Potenza',1),(8079,8,'PO','Prato',1),(8080,8,'RG','Ragusa',1),(8081,8,'RA','Ravenna',1),(8082,8,'RC','Reggio Calabria',1),(8083,8,'RE','Reggio Emilia',1),(8084,8,'RI','Rieti',1),(8085,8,'RN','Rimini',1),(8086,8,'RM','Roma',1),(8087,8,'RO','Rovigo',1),(8088,8,'SA','Salerno',1),(8089,8,'SS','Sassari',1),(8090,8,'SV','Savona',1),(8091,8,'SI','Siena',1),(8092,8,'SR','Siracusa',1),(8093,8,'SO','Sondrio',1),(8094,8,'TA','Taranto',1),(8095,8,'TE','Teramo',1),(8096,8,'TR','Terni',1),(8097,8,'TO','Torino',1),(8098,8,'TP','Trapani',1),(8099,8,'TN','Trento',1),(8100,8,'TV','Treviso',1),(8101,8,'TS','Trieste',1),(8102,8,'UD','Udine',1),(8103,8,'VA','Varese',1),(8104,8,'VE','Venezia',1),(8105,8,'VB','Verbano-Cusio-Ossola',1),(8106,8,'VC','Vercelli',1),(8107,8,'VR','Verona',1),(8108,8,'VV','Vibo Valentia',1),(8109,8,'VI','Vicenza',1),(8110,8,'VT','Viterbo',1),(11001,11,'DR','Drenthe',1),(11002,11,'FL','Flevoland',1),(11003,11,'FR','Friesland',1),(11004,11,'GE','Gelderland',1),(11005,11,'GR','Groningen',1),(11006,11,'LI','Limburg',1),(11007,11,'NB','Noord-Brabant',1),(11008,11,'NH','Noord-Holland',1),(11009,11,'OV','Overijssel',1),(11010,11,'UT','Utrecht',1),(11011,11,'ZE','Zeeland',1),(11012,11,'ZH','Zuid-Holland',1),(15001,15,'AN','Andalusia',1),(15002,15,'AR','Aragon',1),(15003,15,'AS','Asturias',1),(15004,15,'IB','Balearic Islands',1),(15005,15,'PV','Basque Country',1),(15006,15,'CN','Canary Islands',1),(15007,15,'CB','Cantabria',1),(15008,15,'CL','Castile and Leon',1),(15009,15,'CM','Castile-La Mancha',1),(15010,15,'CT','Catalonia',1),(15011,15,'CE','Ceuta',1),(15012,15,'EX','Extremadura',1),(15013,15,'GA','Galicia',1),(15014,15,'LO','La Rioja',1),(15015,15,'M','Madrid',1),(15016,15,'ML','Melilla',1),(15017,15,'MU','Murcia',1),(15018,15,'NA','Navarra',1),(15019,15,'VC','Valencia',1),(19001,19,'AL','Alabama',1),(19002,19,'AK','Alaska',1),(19003,19,'AZ','Arizona',1),(19004,19,'AR','Arkansas',1),(19005,19,'CA','California',1),(19006,19,'CO','Colorado',1),(19007,19,'CT','Connecticut',1),(19008,19,'DC','District of Columbia',1),(19009,19,'DE','Delaware',1),(19010,19,'FL','Florida',1),(19011,19,'GA','Georgia',1),(19012,19,'HI','Hawaii',1),(19013,19,'ID','Idaho',1),(19014,19,'IL','Illinois',1),(19015,19,'IN','Indiana',1),(19016,19,'IA','Iowa',1),(19017,19,'KS','Kansas',1),(19018,19,'KY','Kentucky ',1),(19019,19,'LA','Louisiana ',1),(19020,19,'ME','Maine',1),(19021,19,'MD','Maryland',1),(19022,19,'MA','Massachusetts',1),(19023,19,'MI','Michigan',1),(19024,19,'MN','Minnesota',1),(19025,19,'MS','Mississippi',1),(19026,19,'MO','Missouri',1),(19027,19,'MT','Montana',1),(19028,19,'NE','Nebraska',1),(19029,19,'NV','Nevada',1),(19030,19,'NH','New Hampshire',1),(19031,19,'NJ','New Jersey',1),(19032,19,'NM','New Mexico',1),(19033,19,'NY','New York',1),(19034,19,'NC','North Carolina',1),(19035,19,'ND','North Dakota',1),(19036,19,'OH','Ohio',1),(19037,19,'OK','Oklahoma ',1),(19038,19,'OR','Oregon',1),(19039,19,'PA','Pennsylvania',1),(19040,19,'PR','Puerto Rico',1),(19041,19,'RI','Rhode Island',1),(19042,19,'SC','South Carolina',1),(19043,19,'SD','South Dakota',1),(19044,19,'TN','Tennessee',1),(19045,19,'TX','Texas',1),(19046,19,'UT','Utah',1),(19047,19,'VT','Vermont',1),(19048,19,'VA','Virginia',1),(19049,19,'WA','Washington',1),(19050,19,'WV','West Virginia',1),(19051,19,'WI','Wisconsin',1),(19052,19,'WY','Wyoming',1),(32001,32,'ACT','Australian Capital Territory',1),(32002,32,'NSW','New South Wales',1),(32003,32,'NT','Northern Territory',1),(32004,32,'QLD','Queensland',1),(32005,32,'SA','South Australia',1),(32006,32,'TAS','Tasmania',1),(32007,32,'VIC','Victoria',1),(32008,32,'WA','Western Australia',1),(144001,144,'MX-AGS','Aguascalientes',1),(144002,144,'MX-BCN','Baja California',1),(144003,144,'MX-BCS','Baja California Sur',1),(144004,144,'MX-CAM','Campeche',1),(144005,144,'MX-CHP','Chiapas',1),(144006,144,'MX-CHI','Chihuahua',1),(144007,144,'MX-COA','Coahuila',1),(144008,144,'MX-COL','Colima',1),(144009,144,'MX-DUR','Durango',1),(144010,144,'MX-GTO','Guanajuato',1),(144011,144,'MX-GRO','Guerrero',1),(144012,144,'MX-HGO','Hidalgo',1),(144013,144,'MX-JAL','Jalisco',1),(144014,144,'MX-MEX','Mexico',1),(144015,144,'MX-MIC','Michoacan',1),(144016,144,'MX-MOR','Morelos',1),(144017,144,'MX-NAY','Nayarit',1),(144018,144,'MX-NLE','Nuevo Leon',1),(144019,144,'MX-OAX','Oaxaca',1),(144020,144,'MX-PUE','Puebla',1),(144021,144,'MX-QRO','Queretaro',1),(144023,144,'MX-ROO','Quintana Roo',1),(144024,144,'MX-SLP','San Luis Potos????',1),(144025,144,'MX-SIN','Sinaloa',1),(144026,144,'MX-SON','Sonora',1),(144027,144,'MX-TAB','Tabasco',1),(144028,144,'MX-TAM','Tamaulipas',1),(144029,144,'MX-TLX','Tlaxcala',1),(144030,144,'MX-VER','Veracruz',1),(144031,144,'MX-YUC','Yucatan',1),(144032,144,'MX-ZAC','Zacatecas',1),(164001,164,'01','????stfold',1),(164002,164,'02','Akershus',1),(164003,164,'03','Oslo',1),(164004,164,'04','Hedmark',1),(164005,164,'05','Oppland',1),(164006,164,'06','Buskerud',1),(164007,164,'07','Vestfold',1),(164008,164,'08','Telemark',1),(164009,164,'09','Aust-Agder',1),(164010,164,'10','Vest-Agder',1),(164011,164,'11','Rogaland',1),(164012,164,'12','Hordaland',1),(164013,164,'14','Sogn og Fjordane',1),(164014,164,'15','M????re of Romsdal',1),(164015,164,'16','S????r-Tr????ndelag',1),(164016,164,'17','Nord-Tr????ndelag',1),(164017,164,'18','Nordland',1),(164018,164,'19','Troms',1),(164019,164,'20','Finnmark',1),(202001,202,'AG','Aargau',1),(202002,202,'AR','Appenzell Ausserrhoden',1),(202003,202,'AI','Appenzell Innerrhoden',1),(202004,202,'BL','Basel-Landschaft',1),(202005,202,'BS','Basel-Stadt',1),(202006,202,'BE','Bern',1),(202007,202,'FR','Fribourg',1),(202008,202,'GE','Geneva',1),(202009,202,'GL','Glarus',1),(202010,202,'GR','Graub????nden',1),(202011,202,'JU','Jura',1),(202012,202,'LU','Lucerne',1),(202013,202,'NE','Neuch????tel',1),(202014,202,'NW','Nidwalden',1),(202015,202,'OW','Obwalden',1),(202016,202,'SH','Schaffhausen',1),(202017,202,'SZ','Schwyz',1),(202018,202,'SO','Solothurn',1),(202019,202,'SG','St. Gallen',1),(202020,202,'TG','Thurgau',1),(202021,202,'TI','Ticino',1),(202022,202,'UR','Uri',1),(202023,202,'VS','Valais',1),(202024,202,'VD','Vaud',1),(202025,202,'ZG','Zug',1),(202026,202,'ZH','Z????rich',1);
/*!40000 ALTER TABLE `Region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Release_`
--

DROP TABLE IF EXISTS `Release_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Release_` (
  `releaseId` bigint(20) NOT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `servletContextName` varchar(75) DEFAULT NULL,
  `buildNumber` int(11) DEFAULT NULL,
  `buildDate` datetime DEFAULT NULL,
  `verified` tinyint(4) DEFAULT NULL,
  `state_` int(11) DEFAULT NULL,
  `testString` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`releaseId`),
  UNIQUE KEY `IX_8BD6BCA7` (`servletContextName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Release_`
--

LOCK TABLES `Release_` WRITE;
/*!40000 ALTER TABLE `Release_` DISABLE KEYS */;
INSERT INTO `Release_` VALUES (1,'2018-06-12 18:28:56','2018-06-13 01:30:06','portal',6210,'2013-11-01 00:00:00',1,0,'You take the blue pill, the story ends, you wake up in your bed and believe whatever you want to believe. You take the red pill, you stay in Wonderland, and I show you how deep the rabbit hole goes.'),(10436,'2018-06-13 01:30:19','2018-06-13 01:30:19','marketplace-portlet',101,NULL,1,0,''),(10449,'2018-06-13 01:30:31','2018-06-13 01:30:31','calendar-portlet',102,NULL,1,0,'');
/*!40000 ALTER TABLE `Release_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Repository`
--

DROP TABLE IF EXISTS `Repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Repository` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `portletId` varchar(200) DEFAULT NULL,
  `typeSettings` longtext,
  `dlFolderId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`repositoryId`),
  UNIQUE KEY `IX_60C8634C` (`groupId`,`name`,`portletId`),
  UNIQUE KEY `IX_11641E26` (`uuid_`,`groupId`),
  KEY `IX_5253B1FA` (`groupId`),
  KEY `IX_74C17B04` (`uuid_`),
  KEY `IX_F543EA4` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Repository`
--

LOCK TABLES `Repository` WRITE;
/*!40000 ALTER TABLE `Repository` DISABLE KEYS */;
/*!40000 ALTER TABLE `Repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RepositoryEntry`
--

DROP TABLE IF EXISTS `RepositoryEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RepositoryEntry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mappedId` varchar(75) DEFAULT NULL,
  `manualCheckInRequired` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`repositoryEntryId`),
  UNIQUE KEY `IX_9BDCF489` (`repositoryId`,`mappedId`),
  UNIQUE KEY `IX_354AA664` (`uuid_`,`groupId`),
  KEY `IX_B7034B27` (`repositoryId`),
  KEY `IX_B9B1506` (`uuid_`),
  KEY `IX_D3B9AF62` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RepositoryEntry`
--

LOCK TABLES `RepositoryEntry` WRITE;
/*!40000 ALTER TABLE `RepositoryEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `RepositoryEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceAction`
--

DROP TABLE IF EXISTS `ResourceAction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceAction` (
  `resourceActionId` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `actionId` varchar(75) DEFAULT NULL,
  `bitwiseValue` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceActionId`),
  UNIQUE KEY `IX_EDB9986E` (`name`,`actionId`),
  KEY `IX_81F2DB09` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceAction`
--

LOCK TABLES `ResourceAction` WRITE;
/*!40000 ALTER TABLE `ResourceAction` DISABLE KEYS */;
INSERT INTO `ResourceAction` VALUES (1,'com.liferay.portlet.polls','ADD_QUESTION',2),(2,'com.liferay.portlet.polls','PERMISSIONS',4),(3,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','DELETE',2),(4,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','PERMISSIONS',4),(5,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','UPDATE',8),(6,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','VIEW',1),(7,'com.liferay.portal.model.LayoutSetBranch','DELETE',2),(8,'com.liferay.portal.model.LayoutSetBranch','MERGE',4),(9,'com.liferay.portal.model.LayoutSetBranch','PERMISSIONS',8),(10,'com.liferay.portal.model.LayoutSetBranch','UPDATE',16),(11,'com.liferay.portlet.journal.model.JournalArticle','ADD_DISCUSSION',2),(12,'com.liferay.portlet.journal.model.JournalArticle','DELETE',4),(13,'com.liferay.portlet.journal.model.JournalArticle','DELETE_DISCUSSION',8),(14,'com.liferay.portlet.journal.model.JournalArticle','EXPIRE',16),(15,'com.liferay.portlet.journal.model.JournalArticle','PERMISSIONS',32),(16,'com.liferay.portlet.journal.model.JournalArticle','UPDATE',64),(17,'com.liferay.portlet.journal.model.JournalArticle','UPDATE_DISCUSSION',128),(18,'com.liferay.portlet.journal.model.JournalArticle','VIEW',1),(19,'com.liferay.portal.model.Team','ASSIGN_MEMBERS',2),(20,'com.liferay.portal.model.Team','DELETE',4),(21,'com.liferay.portal.model.Team','PERMISSIONS',8),(22,'com.liferay.portal.model.Team','UPDATE',16),(23,'com.liferay.portal.model.Team','VIEW',1),(24,'com.liferay.portlet.dynamicdatalists','ADD_RECORD_SET',2),(25,'com.liferay.portlet.dynamicdatalists','ADD_STRUCTURE',4),(26,'com.liferay.portlet.dynamicdatalists','ADD_TEMPLATE',8),(27,'com.liferay.portlet.dynamicdatalists','PERMISSIONS',16),(28,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','DELETE',2),(29,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','PERMISSIONS',4),(30,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','UPDATE',8),(31,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','VIEW',1),(32,'com.liferay.portlet.expando.model.ExpandoColumn','DELETE',2),(33,'com.liferay.portlet.expando.model.ExpandoColumn','PERMISSIONS',4),(34,'com.liferay.portlet.expando.model.ExpandoColumn','UPDATE',8),(35,'com.liferay.portlet.expando.model.ExpandoColumn','VIEW',1),(36,'com.liferay.portlet.polls.model.PollsQuestion','ADD_VOTE',2),(37,'com.liferay.portlet.polls.model.PollsQuestion','DELETE',4),(38,'com.liferay.portlet.polls.model.PollsQuestion','PERMISSIONS',8),(39,'com.liferay.portlet.polls.model.PollsQuestion','UPDATE',16),(40,'com.liferay.portlet.polls.model.PollsQuestion','VIEW',1),(41,'com.liferay.portlet.documentlibrary.model.DLFolder','ACCESS',2),(42,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_DOCUMENT',4),(43,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SHORTCUT',8),(44,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SUBFOLDER',16),(45,'com.liferay.portlet.documentlibrary.model.DLFolder','DELETE',32),(46,'com.liferay.portlet.documentlibrary.model.DLFolder','PERMISSIONS',64),(47,'com.liferay.portlet.documentlibrary.model.DLFolder','UPDATE',128),(48,'com.liferay.portlet.documentlibrary.model.DLFolder','VIEW',1),(49,'com.liferay.portal.model.User','DELETE',2),(50,'com.liferay.portal.model.User','IMPERSONATE',4),(51,'com.liferay.portal.model.User','PERMISSIONS',8),(52,'com.liferay.portal.model.User','UPDATE',16),(53,'com.liferay.portal.model.User','VIEW',1),(54,'com.liferay.portlet.asset.model.AssetTag','DELETE',2),(55,'com.liferay.portlet.asset.model.AssetTag','PERMISSIONS',4),(56,'com.liferay.portlet.asset.model.AssetTag','UPDATE',8),(57,'com.liferay.portlet.asset.model.AssetTag','VIEW',1),(58,'com.liferay.portlet.calendar','ADD_EVENT',2),(59,'com.liferay.portlet.calendar','EXPORT_ALL_EVENTS',4),(60,'com.liferay.portlet.calendar','PERMISSIONS',8),(61,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','DELETE',2),(62,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','PERMISSIONS',4),(63,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','UPDATE',8),(64,'com.liferay.portlet.journal.model.JournalFeed','DELETE',2),(65,'com.liferay.portlet.journal.model.JournalFeed','PERMISSIONS',4),(66,'com.liferay.portlet.journal.model.JournalFeed','UPDATE',8),(67,'com.liferay.portlet.journal.model.JournalFeed','VIEW',1),(68,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ACCESS',2),(69,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_ENTRY',4),(70,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_SUBFOLDER',8),(71,'com.liferay.portlet.bookmarks.model.BookmarksFolder','DELETE',16),(72,'com.liferay.portlet.bookmarks.model.BookmarksFolder','PERMISSIONS',32),(73,'com.liferay.portlet.bookmarks.model.BookmarksFolder','SUBSCRIBE',64),(74,'com.liferay.portlet.bookmarks.model.BookmarksFolder','UPDATE',128),(75,'com.liferay.portlet.bookmarks.model.BookmarksFolder','VIEW',1),(76,'com.liferay.portlet.messageboards.model.MBThread','SUBSCRIBE',2),(77,'com.liferay.portlet.messageboards.model.MBThread','VIEW',1),(78,'com.liferay.portlet.messageboards.model.MBThread','PERMISSIONS',4),(79,'com.liferay.portal.model.LayoutPrototype','DELETE',2),(80,'com.liferay.portal.model.LayoutPrototype','PERMISSIONS',4),(81,'com.liferay.portal.model.LayoutPrototype','UPDATE',8),(82,'com.liferay.portal.model.LayoutPrototype','VIEW',1),(83,'com.liferay.portlet.messageboards','ADD_CATEGORY',2),(84,'com.liferay.portlet.messageboards','ADD_FILE',4),(85,'com.liferay.portlet.messageboards','ADD_MESSAGE',8),(86,'com.liferay.portlet.messageboards','BAN_USER',16),(87,'com.liferay.portlet.messageboards','MOVE_THREAD',32),(88,'com.liferay.portlet.messageboards','LOCK_THREAD',64),(89,'com.liferay.portlet.messageboards','PERMISSIONS',128),(90,'com.liferay.portlet.messageboards','REPLY_TO_MESSAGE',256),(91,'com.liferay.portlet.messageboards','SUBSCRIBE',512),(92,'com.liferay.portlet.messageboards','UPDATE_THREAD_PRIORITY',1024),(93,'com.liferay.portlet.messageboards','VIEW',1),(94,'com.liferay.portlet.bookmarks','ADD_ENTRY',2),(95,'com.liferay.portlet.bookmarks','ADD_FOLDER',4),(96,'com.liferay.portlet.bookmarks','PERMISSIONS',8),(97,'com.liferay.portlet.bookmarks','SUBSCRIBE',16),(98,'com.liferay.portlet.bookmarks','VIEW',1),(99,'com.liferay.portlet.softwarecatalog','ADD_FRAMEWORK_VERSION',2),(100,'com.liferay.portlet.softwarecatalog','ADD_PRODUCT_ENTRY',4),(101,'com.liferay.portlet.softwarecatalog','PERMISSIONS',8),(102,'com.liferay.portlet.wiki.model.WikiNode','ADD_ATTACHMENT',2),(103,'com.liferay.portlet.wiki.model.WikiNode','ADD_PAGE',4),(104,'com.liferay.portlet.wiki.model.WikiNode','DELETE',8),(105,'com.liferay.portlet.wiki.model.WikiNode','IMPORT',16),(106,'com.liferay.portlet.wiki.model.WikiNode','PERMISSIONS',32),(107,'com.liferay.portlet.wiki.model.WikiNode','SUBSCRIBE',64),(108,'com.liferay.portlet.wiki.model.WikiNode','UPDATE',128),(109,'com.liferay.portlet.wiki.model.WikiNode','VIEW',1),(110,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT',2),(111,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT_TYPE',4),(112,'com.liferay.portlet.documentlibrary','ADD_FOLDER',8),(113,'com.liferay.portlet.documentlibrary','ADD_REPOSITORY',16),(114,'com.liferay.portlet.documentlibrary','ADD_STRUCTURE',32),(115,'com.liferay.portlet.documentlibrary','ADD_SHORTCUT',64),(116,'com.liferay.portlet.documentlibrary','PERMISSIONS',128),(117,'com.liferay.portlet.documentlibrary','SUBSCRIBE',256),(118,'com.liferay.portlet.documentlibrary','UPDATE',512),(119,'com.liferay.portlet.documentlibrary','VIEW',1),(120,'com.liferay.portlet.calendar.model.CalEvent','ADD_DISCUSSION',2),(121,'com.liferay.portlet.calendar.model.CalEvent','DELETE',4),(122,'com.liferay.portlet.calendar.model.CalEvent','DELETE_DISCUSSION',8),(123,'com.liferay.portlet.calendar.model.CalEvent','PERMISSIONS',16),(124,'com.liferay.portlet.calendar.model.CalEvent','UPDATE',32),(125,'com.liferay.portlet.calendar.model.CalEvent','UPDATE_DISCUSSION',64),(126,'com.liferay.portlet.calendar.model.CalEvent','VIEW',1),(127,'com.liferay.portlet.softwarecatalog.model.SCLicense','DELETE',2),(128,'com.liferay.portlet.softwarecatalog.model.SCLicense','PERMISSIONS',4),(129,'com.liferay.portlet.softwarecatalog.model.SCLicense','UPDATE',8),(130,'com.liferay.portlet.softwarecatalog.model.SCLicense','VIEW',1),(131,'com.liferay.portal.model.Organization','ADD_ORGANIZATION',2),(132,'com.liferay.portal.model.Organization','ASSIGN_MEMBERS',4),(133,'com.liferay.portal.model.Organization','ASSIGN_USER_ROLES',8),(134,'com.liferay.portal.model.Organization','DELETE',16),(135,'com.liferay.portal.model.Organization','MANAGE_ANNOUNCEMENTS',32),(136,'com.liferay.portal.model.Organization','MANAGE_SUBORGANIZATIONS',64),(137,'com.liferay.portal.model.Organization','MANAGE_USERS',128),(138,'com.liferay.portal.model.Organization','PERMISSIONS',256),(139,'com.liferay.portal.model.Organization','UPDATE',512),(140,'com.liferay.portal.model.Organization','VIEW',1),(141,'com.liferay.portal.model.Organization','VIEW_MEMBERS',1024),(142,'com.liferay.portal.model.Group','ADD_COMMUNITY',2),(143,'com.liferay.portal.model.Group','ADD_LAYOUT',4),(144,'com.liferay.portal.model.Group','ADD_LAYOUT_BRANCH',8),(145,'com.liferay.portal.model.Group','ADD_LAYOUT_SET_BRANCH',16),(146,'com.liferay.portal.model.Group','ASSIGN_MEMBERS',32),(147,'com.liferay.portal.model.Group','ASSIGN_USER_ROLES',64),(148,'com.liferay.portal.model.Group','CONFIGURE_PORTLETS',128),(149,'com.liferay.portal.model.Group','DELETE',256),(150,'com.liferay.portal.model.Group','EXPORT_IMPORT_LAYOUTS',512),(151,'com.liferay.portal.model.Group','EXPORT_IMPORT_PORTLET_INFO',1024),(152,'com.liferay.portal.model.Group','MANAGE_ANNOUNCEMENTS',2048),(153,'com.liferay.portal.model.Group','MANAGE_ARCHIVED_SETUPS',4096),(154,'com.liferay.portal.model.Group','MANAGE_LAYOUTS',8192),(155,'com.liferay.portal.model.Group','MANAGE_STAGING',16384),(156,'com.liferay.portal.model.Group','MANAGE_SUBGROUPS',32768),(157,'com.liferay.portal.model.Group','MANAGE_TEAMS',65536),(158,'com.liferay.portal.model.Group','PERMISSIONS',131072),(159,'com.liferay.portal.model.Group','PREVIEW_IN_DEVICE',262144),(160,'com.liferay.portal.model.Group','PUBLISH_STAGING',524288),(161,'com.liferay.portal.model.Group','PUBLISH_TO_REMOTE',1048576),(162,'com.liferay.portal.model.Group','UPDATE',2097152),(163,'com.liferay.portal.model.Group','VIEW',1),(164,'com.liferay.portal.model.Group','VIEW_MEMBERS',4194304),(165,'com.liferay.portal.model.Group','VIEW_SITE_ADMINISTRATION',8388608),(166,'com.liferay.portal.model.Group','VIEW_STAGING',16777216),(167,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_ITEM',2),(168,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_SUBCATEGORY',4),(169,'com.liferay.portlet.shopping.model.ShoppingCategory','DELETE',8),(170,'com.liferay.portlet.shopping.model.ShoppingCategory','PERMISSIONS',16),(171,'com.liferay.portlet.shopping.model.ShoppingCategory','UPDATE',32),(172,'com.liferay.portlet.shopping.model.ShoppingCategory','VIEW',1),(173,'com.liferay.portlet.shopping.model.ShoppingOrder','DELETE',2),(174,'com.liferay.portlet.shopping.model.ShoppingOrder','PERMISSIONS',4),(175,'com.liferay.portlet.shopping.model.ShoppingOrder','UPDATE',8),(176,'com.liferay.portlet.shopping.model.ShoppingOrder','VIEW',1),(177,'com.liferay.portlet.journal.model.JournalFolder','ACCESS',2),(178,'com.liferay.portlet.journal.model.JournalFolder','ADD_ARTICLE',4),(179,'com.liferay.portlet.journal.model.JournalFolder','ADD_SUBFOLDER',8),(180,'com.liferay.portlet.journal.model.JournalFolder','DELETE',16),(181,'com.liferay.portlet.journal.model.JournalFolder','PERMISSIONS',32),(182,'com.liferay.portlet.journal.model.JournalFolder','UPDATE',64),(183,'com.liferay.portlet.journal.model.JournalFolder','VIEW',1),(184,'com.liferay.portlet.wiki.model.WikiPage','ADD_DISCUSSION',2),(185,'com.liferay.portlet.wiki.model.WikiPage','DELETE',4),(186,'com.liferay.portlet.wiki.model.WikiPage','DELETE_DISCUSSION',8),(187,'com.liferay.portlet.wiki.model.WikiPage','PERMISSIONS',16),(188,'com.liferay.portlet.wiki.model.WikiPage','SUBSCRIBE',32),(189,'com.liferay.portlet.wiki.model.WikiPage','UPDATE',64),(190,'com.liferay.portlet.wiki.model.WikiPage','UPDATE_DISCUSSION',128),(191,'com.liferay.portlet.wiki.model.WikiPage','VIEW',1),(192,'com.liferay.portlet.asset.model.AssetCategory','ADD_CATEGORY',2),(193,'com.liferay.portlet.asset.model.AssetCategory','DELETE',4),(194,'com.liferay.portlet.asset.model.AssetCategory','PERMISSIONS',8),(195,'com.liferay.portlet.asset.model.AssetCategory','UPDATE',16),(196,'com.liferay.portlet.asset.model.AssetCategory','VIEW',1),(197,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','DELETE',2),(198,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','PERMISSIONS',4),(199,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','UPDATE',8),(200,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','VIEW',1),(201,'com.liferay.portlet.shopping.model.ShoppingItem','DELETE',2),(202,'com.liferay.portlet.shopping.model.ShoppingItem','PERMISSIONS',4),(203,'com.liferay.portlet.shopping.model.ShoppingItem','UPDATE',8),(204,'com.liferay.portlet.shopping.model.ShoppingItem','VIEW',1),(205,'com.liferay.portlet.blogs.model.BlogsEntry','ADD_DISCUSSION',2),(206,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE',4),(207,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE_DISCUSSION',8),(208,'com.liferay.portlet.blogs.model.BlogsEntry','PERMISSIONS',16),(209,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE',32),(210,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE_DISCUSSION',64),(211,'com.liferay.portlet.blogs.model.BlogsEntry','VIEW',1),(212,'com.liferay.portal.model.PasswordPolicy','ASSIGN_MEMBERS',2),(213,'com.liferay.portal.model.PasswordPolicy','DELETE',4),(214,'com.liferay.portal.model.PasswordPolicy','PERMISSIONS',8),(215,'com.liferay.portal.model.PasswordPolicy','UPDATE',16),(216,'com.liferay.portal.model.PasswordPolicy','VIEW',1),(217,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','ADD_RECORD',2),(218,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','DELETE',4),(219,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','PERMISSIONS',8),(220,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','UPDATE',16),(221,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','VIEW',1),(222,'com.liferay.portlet.shopping','ADD_CATEGORY',2),(223,'com.liferay.portlet.shopping','ADD_ITEM',4),(224,'com.liferay.portlet.shopping','MANAGE_COUPONS',8),(225,'com.liferay.portlet.shopping','MANAGE_ORDERS',16),(226,'com.liferay.portlet.shopping','PERMISSIONS',32),(227,'com.liferay.portlet.shopping','VIEW',1),(228,'com.liferay.portlet.wiki','ADD_NODE',2),(229,'com.liferay.portlet.wiki','PERMISSIONS',4),(230,'com.liferay.portlet.blogs','ADD_ENTRY',2),(231,'com.liferay.portlet.blogs','PERMISSIONS',4),(232,'com.liferay.portlet.blogs','SUBSCRIBE',8),(233,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','DELETE',2),(234,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','PERMISSIONS',4),(235,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','UPDATE',8),(236,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','VIEW',1),(237,'com.liferay.portlet.asset.model.AssetVocabulary','DELETE',2),(238,'com.liferay.portlet.asset.model.AssetVocabulary','PERMISSIONS',4),(239,'com.liferay.portlet.asset.model.AssetVocabulary','UPDATE',8),(240,'com.liferay.portlet.asset.model.AssetVocabulary','VIEW',1),(241,'com.liferay.portlet.bookmarks.model.BookmarksEntry','DELETE',2),(242,'com.liferay.portlet.bookmarks.model.BookmarksEntry','PERMISSIONS',4),(243,'com.liferay.portlet.bookmarks.model.BookmarksEntry','SUBSCRIBE',8),(244,'com.liferay.portlet.bookmarks.model.BookmarksEntry','UPDATE',16),(245,'com.liferay.portlet.bookmarks.model.BookmarksEntry','VIEW',1),(246,'com.liferay.portlet.journal.model.JournalStructure','DELETE',2),(247,'com.liferay.portlet.journal.model.JournalStructure','PERMISSIONS',4),(248,'com.liferay.portlet.journal.model.JournalStructure','UPDATE',8),(249,'com.liferay.portlet.journal.model.JournalStructure','VIEW',1),(250,'com.liferay.portlet.documentlibrary.model.DLFileEntry','ADD_DISCUSSION',2),(251,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE',4),(252,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE_DISCUSSION',8),(253,'com.liferay.portlet.documentlibrary.model.DLFileEntry','OVERRIDE_CHECKOUT',16),(254,'com.liferay.portlet.documentlibrary.model.DLFileEntry','PERMISSIONS',32),(255,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE',64),(256,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE_DISCUSSION',128),(257,'com.liferay.portlet.documentlibrary.model.DLFileEntry','VIEW',1),(258,'com.liferay.portlet.messageboards.model.MBMessage','DELETE',2),(259,'com.liferay.portlet.messageboards.model.MBMessage','PERMISSIONS',4),(260,'com.liferay.portlet.messageboards.model.MBMessage','SUBSCRIBE',8),(261,'com.liferay.portlet.messageboards.model.MBMessage','UPDATE',16),(262,'com.liferay.portlet.messageboards.model.MBMessage','VIEW',1),(263,'com.liferay.portlet.journal','ADD_ARTICLE',2),(264,'com.liferay.portlet.journal','ADD_FEED',4),(265,'com.liferay.portlet.journal','ADD_FOLDER',8),(266,'com.liferay.portlet.journal','ADD_STRUCTURE',16),(267,'com.liferay.portlet.journal','ADD_TEMPLATE',32),(268,'com.liferay.portlet.journal','SUBSCRIBE',64),(269,'com.liferay.portlet.journal','VIEW',1),(270,'com.liferay.portlet.journal','PERMISSIONS',128),(271,'com.liferay.portal.model.LayoutSetPrototype','DELETE',2),(272,'com.liferay.portal.model.LayoutSetPrototype','PERMISSIONS',4),(273,'com.liferay.portal.model.LayoutSetPrototype','UPDATE',8),(274,'com.liferay.portal.model.LayoutSetPrototype','VIEW',1),(275,'com.liferay.portal.model.UserGroup','ASSIGN_MEMBERS',2),(276,'com.liferay.portal.model.UserGroup','DELETE',4),(277,'com.liferay.portal.model.UserGroup','MANAGE_ANNOUNCEMENTS',8),(278,'com.liferay.portal.model.UserGroup','PERMISSIONS',16),(279,'com.liferay.portal.model.UserGroup','UPDATE',32),(280,'com.liferay.portal.model.UserGroup','VIEW',1),(281,'com.liferay.portal.model.UserGroup','VIEW_MEMBERS',64),(282,'com.liferay.portal.model.Role','ASSIGN_MEMBERS',2),(283,'com.liferay.portal.model.Role','DEFINE_PERMISSIONS',4),(284,'com.liferay.portal.model.Role','DELETE',8),(285,'com.liferay.portal.model.Role','MANAGE_ANNOUNCEMENTS',16),(286,'com.liferay.portal.model.Role','PERMISSIONS',32),(287,'com.liferay.portal.model.Role','UPDATE',64),(288,'com.liferay.portal.model.Role','VIEW',1),(289,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','DELETE',2),(290,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','PERMISSIONS',4),(291,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','UPDATE',8),(292,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','VIEW',1),(293,'com.liferay.portal.model.Layout','ADD_DISCUSSION',2),(294,'com.liferay.portal.model.Layout','ADD_LAYOUT',4),(295,'com.liferay.portal.model.Layout','CONFIGURE_PORTLETS',8),(296,'com.liferay.portal.model.Layout','CUSTOMIZE',16),(297,'com.liferay.portal.model.Layout','DELETE',32),(298,'com.liferay.portal.model.Layout','DELETE_DISCUSSION',64),(299,'com.liferay.portal.model.Layout','PERMISSIONS',128),(300,'com.liferay.portal.model.Layout','UPDATE',256),(301,'com.liferay.portal.model.Layout','UPDATE_DISCUSSION',512),(302,'com.liferay.portal.model.Layout','VIEW',1),(303,'com.liferay.portlet.asset','ADD_TAG',2),(304,'com.liferay.portlet.asset','PERMISSIONS',4),(305,'com.liferay.portlet.asset','ADD_CATEGORY',8),(306,'com.liferay.portlet.asset','ADD_VOCABULARY',16),(307,'com.liferay.portlet.messageboards.model.MBCategory','ADD_FILE',2),(308,'com.liferay.portlet.messageboards.model.MBCategory','ADD_MESSAGE',4),(309,'com.liferay.portlet.messageboards.model.MBCategory','ADD_SUBCATEGORY',8),(310,'com.liferay.portlet.messageboards.model.MBCategory','DELETE',16),(311,'com.liferay.portlet.messageboards.model.MBCategory','LOCK_THREAD',32),(312,'com.liferay.portlet.messageboards.model.MBCategory','MOVE_THREAD',64),(313,'com.liferay.portlet.messageboards.model.MBCategory','PERMISSIONS',128),(314,'com.liferay.portlet.messageboards.model.MBCategory','REPLY_TO_MESSAGE',256),(315,'com.liferay.portlet.messageboards.model.MBCategory','SUBSCRIBE',512),(316,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE',1024),(317,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE_THREAD_PRIORITY',2048),(318,'com.liferay.portlet.messageboards.model.MBCategory','VIEW',1),(319,'com.liferay.portlet.journal.model.JournalTemplate','DELETE',2),(320,'com.liferay.portlet.journal.model.JournalTemplate','PERMISSIONS',4),(321,'com.liferay.portlet.journal.model.JournalTemplate','UPDATE',8),(322,'com.liferay.portlet.journal.model.JournalTemplate','VIEW',1),(323,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','ADD_DISCUSSION',2),(324,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE',4),(325,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE_DISCUSSION',8),(326,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','PERMISSIONS',16),(327,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE',32),(328,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE_DISCUSSION',64),(329,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','VIEW',1),(330,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP',2),(331,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP_INSTANCE',4),(332,'com.liferay.portlet.mobiledevicerules','CONFIGURATION',8),(333,'com.liferay.portlet.mobiledevicerules','VIEW',1),(334,'com.liferay.portlet.mobiledevicerules','PERMISSIONS',16),(335,'com.liferay.portal.model.LayoutBranch','DELETE',2),(336,'com.liferay.portal.model.LayoutBranch','PERMISSIONS',4),(337,'com.liferay.portal.model.LayoutBranch','UPDATE',8),(338,'com.liferay.portlet.announcements.model.AnnouncementsEntry','DELETE',2),(339,'com.liferay.portlet.announcements.model.AnnouncementsEntry','UPDATE',4),(340,'com.liferay.portlet.announcements.model.AnnouncementsEntry','VIEW',1),(341,'com.liferay.portlet.announcements.model.AnnouncementsEntry','PERMISSIONS',8),(342,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','DELETE',2),(343,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','PERMISSIONS',4),(344,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','UPDATE',8),(345,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','VIEW',1),(346,'25','ACCESS_IN_CONTROL_PANEL',2),(347,'25','CONFIGURATION',4),(348,'25','VIEW',1),(349,'25','PERMISSIONS',8),(350,'25','PREFERENCES',16),(351,'28','ACCESS_IN_CONTROL_PANEL',2),(352,'28','ADD_TO_PAGE',4),(353,'28','CONFIGURATION',8),(354,'28','VIEW',1),(355,'28','PERMISSIONS',16),(356,'28','PREFERENCES',32),(357,'174','ADD_TO_PAGE',2),(358,'174','CONFIGURATION',4),(359,'174','PERMISSIONS',8),(360,'174','PREFERENCES',16),(361,'174','VIEW',1),(362,'110','ADD_TO_PAGE',2),(363,'110','CONFIGURATION',4),(364,'110','PERMISSIONS',8),(365,'110','PREFERENCES',16),(366,'110','VIEW',1),(367,'154','ACCESS_IN_CONTROL_PANEL',2),(368,'154','CONFIGURATION',4),(369,'154','VIEW',1),(370,'154','PERMISSIONS',8),(371,'154','PREFERENCES',16),(372,'134','ACCESS_IN_CONTROL_PANEL',2),(373,'134','CONFIGURATION',4),(374,'134','VIEW',1),(375,'134','PERMISSIONS',8),(376,'134','PREFERENCES',16),(377,'156','ADD_TO_PAGE',2),(378,'156','CONFIGURATION',4),(379,'156','PERMISSIONS',8),(380,'156','PREFERENCES',16),(381,'156','VIEW',1),(382,'178','CONFIGURATION',2),(383,'178','VIEW',1),(384,'178','ADD_TO_PAGE',4),(385,'178','PERMISSIONS',8),(386,'178','PREFERENCES',16),(387,'139','ACCESS_IN_CONTROL_PANEL',2),(388,'139','ADD_EXPANDO',4),(389,'139','CONFIGURATION',8),(390,'139','VIEW',1),(391,'139','PERMISSIONS',16),(392,'139','PREFERENCES',32),(393,'31','ADD_TO_PAGE',2),(394,'31','CONFIGURATION',4),(395,'31','PERMISSIONS',8),(396,'31','PREFERENCES',16),(397,'31','VIEW',1),(398,'98','ACCESS_IN_CONTROL_PANEL',2),(399,'98','ADD_TO_PAGE',4),(400,'98','CONFIGURATION',8),(401,'98','VIEW',1),(402,'98','PERMISSIONS',16),(403,'98','PREFERENCES',32),(404,'99','ACCESS_IN_CONTROL_PANEL',2),(405,'99','CONFIGURATION',4),(406,'99','VIEW',1),(407,'99','PERMISSIONS',8),(408,'99','PREFERENCES',16),(409,'33','ADD_PORTLET_DISPLAY_TEMPLATE',2),(410,'33','ADD_TO_PAGE',4),(411,'33','CONFIGURATION',8),(412,'33','VIEW',1),(413,'33','PERMISSIONS',16),(414,'33','PREFERENCES',32),(415,'34','ADD_TO_PAGE',2),(416,'34','CONFIGURATION',4),(417,'34','VIEW',1),(418,'34','PERMISSIONS',8),(419,'34','PREFERENCES',16),(420,'36','ADD_PORTLET_DISPLAY_TEMPLATE',2),(421,'36','ADD_TO_PAGE',4),(422,'36','CONFIGURATION',8),(423,'36','VIEW',1),(424,'36','PERMISSIONS',16),(425,'36','PREFERENCES',32),(426,'15','ACCESS_IN_CONTROL_PANEL',2),(427,'15','ADD_TO_PAGE',4),(428,'15','CONFIGURATION',8),(429,'15','VIEW',1),(430,'15','PERMISSIONS',16),(431,'15','PREFERENCES',32),(432,'59','ADD_TO_PAGE',2),(433,'59','CONFIGURATION',4),(434,'59','PERMISSIONS',8),(435,'59','PREFERENCES',16),(436,'59','VIEW',1),(437,'19','ADD_TO_PAGE',2),(438,'19','CONFIGURATION',4),(439,'19','VIEW',1),(440,'19','PERMISSIONS',8),(441,'19','PREFERENCES',16),(442,'161','ACCESS_IN_CONTROL_PANEL',2),(443,'161','CONFIGURATION',4),(444,'161','VIEW',1),(445,'161','PERMISSIONS',8),(446,'161','PREFERENCES',16),(447,'162','ACCESS_IN_CONTROL_PANEL',2),(448,'162','CONFIGURATION',4),(449,'162','VIEW',1),(450,'162','PERMISSIONS',8),(451,'162','PREFERENCES',16),(452,'165','ADD_TO_PAGE',2),(453,'165','CONFIGURATION',4),(454,'165','PERMISSIONS',8),(455,'165','PREFERENCES',16),(456,'165','VIEW',1),(457,'166','ACCESS_IN_CONTROL_PANEL',2),(458,'166','ADD_TO_PAGE',4),(459,'166','CONFIGURATION',8),(460,'166','VIEW',1),(461,'166','PERMISSIONS',16),(462,'166','PREFERENCES',32),(463,'167','ACCESS_IN_CONTROL_PANEL',2),(464,'167','ADD_TO_PAGE',4),(465,'167','CONFIGURATION',8),(466,'167','VIEW',1),(467,'167','PERMISSIONS',16),(468,'167','PREFERENCES',32),(469,'146','ACCESS_IN_CONTROL_PANEL',2),(470,'146','CONFIGURATION',4),(471,'146','VIEW',1),(472,'146','PERMISSIONS',8),(473,'146','PREFERENCES',16),(474,'125','ACCESS_IN_CONTROL_PANEL',2),(475,'125','CONFIGURATION',4),(476,'125','EXPORT_USER',8),(477,'125','VIEW',1),(478,'125','PERMISSIONS',16),(479,'125','PREFERENCES',32),(480,'147','ACCESS_IN_CONTROL_PANEL',2),(481,'147','CONFIGURATION',4),(482,'147','VIEW',1),(483,'147','PERMISSIONS',8),(484,'147','PREFERENCES',16),(485,'169','ADD_TO_PAGE',2),(486,'169','CONFIGURATION',4),(487,'169','PERMISSIONS',8),(488,'169','PREFERENCES',16),(489,'169','VIEW',1),(490,'149','ACCESS_IN_CONTROL_PANEL',2),(491,'149','CONFIGURATION',4),(492,'149','VIEW',1),(493,'149','PERMISSIONS',8),(494,'149','PREFERENCES',16),(495,'127','ADD_TO_PAGE',2),(496,'127','CONFIGURATION',4),(497,'127','PERMISSIONS',8),(498,'127','PREFERENCES',16),(499,'127','VIEW',1),(500,'128','ACCESS_IN_CONTROL_PANEL',2),(501,'128','CONFIGURATION',4),(502,'128','VIEW',1),(503,'128','PERMISSIONS',8),(504,'128','PREFERENCES',16),(505,'129','ACCESS_IN_CONTROL_PANEL',2),(506,'129','CONFIGURATION',4),(507,'129','VIEW',1),(508,'129','PERMISSIONS',8),(509,'129','PREFERENCES',16),(510,'8','ACCESS_IN_CONTROL_PANEL',2),(511,'8','ADD_TO_PAGE',4),(512,'8','CONFIGURATION',8),(513,'8','VIEW',1),(514,'8','PERMISSIONS',16),(515,'8','PREFERENCES',32),(516,'83','ADD_ENTRY',2),(517,'83','ADD_TO_PAGE',4),(518,'83','CONFIGURATION',8),(519,'83','VIEW',1),(520,'83','PERMISSIONS',16),(521,'83','PREFERENCES',32),(522,'84','ADD_ENTRY',2),(523,'84','ADD_TO_PAGE',4),(524,'84','CONFIGURATION',8),(525,'84','VIEW',1),(526,'84','PERMISSIONS',16),(527,'84','PREFERENCES',32),(528,'20','ACCESS_IN_CONTROL_PANEL',2),(529,'20','ADD_PORTLET_DISPLAY_TEMPLATE',4),(530,'20','ADD_TO_PAGE',8),(531,'20','CONFIGURATION',16),(532,'20','VIEW',1),(533,'20','PERMISSIONS',32),(534,'20','PREFERENCES',64),(535,'88','VIEW',1),(536,'88','ADD_TO_PAGE',2),(537,'88','CONFIGURATION',4),(538,'88','PERMISSIONS',8),(539,'88','PREFERENCES',16),(540,'88','ACCESS_IN_CONTROL_PANEL',32),(541,'190','VIEW',1),(542,'190','ADD_TO_PAGE',2),(543,'190','CONFIGURATION',4),(544,'190','PERMISSIONS',8),(545,'190','PREFERENCES',16),(546,'190','ACCESS_IN_CONTROL_PANEL',32),(547,'191','VIEW',1),(548,'191','ADD_TO_PAGE',2),(549,'191','CONFIGURATION',4),(550,'191','PERMISSIONS',8),(551,'191','PREFERENCES',16),(552,'191','ACCESS_IN_CONTROL_PANEL',32),(553,'192','VIEW',1),(554,'192','ADD_TO_PAGE',2),(555,'192','CONFIGURATION',4),(556,'192','PERMISSIONS',8),(557,'192','PREFERENCES',16),(558,'192','ACCESS_IN_CONTROL_PANEL',32),(559,'193','VIEW',1),(560,'193','ADD_TO_PAGE',2),(561,'193','CONFIGURATION',4),(562,'193','PERMISSIONS',8),(563,'193','PREFERENCES',16),(564,'193','ACCESS_IN_CONTROL_PANEL',32),(565,'194','VIEW',1),(566,'194','ADD_TO_PAGE',2),(567,'194','CONFIGURATION',4),(568,'194','PERMISSIONS',8),(569,'194','PREFERENCES',16),(570,'194','ACCESS_IN_CONTROL_PANEL',32),(571,'110','ACCESS_IN_CONTROL_PANEL',32),(572,'113','VIEW',1),(573,'113','ADD_TO_PAGE',2),(574,'113','CONFIGURATION',4),(575,'113','PERMISSIONS',8),(576,'113','PREFERENCES',16),(577,'113','ACCESS_IN_CONTROL_PANEL',32),(578,'114','VIEW',1),(579,'114','ADD_TO_PAGE',2),(580,'114','CONFIGURATION',4),(581,'114','PERMISSIONS',8),(582,'114','PREFERENCES',16),(583,'114','ACCESS_IN_CONTROL_PANEL',32),(584,'115','VIEW',1),(585,'115','ADD_TO_PAGE',2),(586,'115','CONFIGURATION',4),(587,'115','PERMISSIONS',8),(588,'115','PREFERENCES',16),(589,'115','ACCESS_IN_CONTROL_PANEL',32),(590,'116','VIEW',1),(591,'116','ADD_TO_PAGE',2),(592,'116','CONFIGURATION',4),(593,'116','PERMISSIONS',8),(594,'116','PREFERENCES',16),(595,'116','ACCESS_IN_CONTROL_PANEL',32),(596,'90','ADD_COMMUNITY',2),(597,'90','ADD_GENERAL_ANNOUNCEMENTS',4),(598,'90','ADD_LAYOUT_PROTOTYPE',8),(599,'90','ADD_LAYOUT_SET_PROTOTYPE',16),(600,'90','ADD_LICENSE',32),(601,'90','ADD_ORGANIZATION',64),(602,'90','ADD_PASSWORD_POLICY',128),(603,'90','ADD_ROLE',256),(604,'90','ADD_USER',512),(605,'90','ADD_USER_GROUP',1024),(606,'90','CONFIGURATION',2048),(607,'90','EXPORT_USER',4096),(608,'90','IMPERSONATE',8192),(609,'90','UNLINK_LAYOUT_SET_PROTOTYPE',16384),(610,'90','VIEW_CONTROL_PANEL',32768),(611,'90','ADD_TO_PAGE',65536),(612,'90','PERMISSIONS',131072),(613,'90','PREFERENCES',262144),(614,'90','VIEW',1),(615,'90','ACCESS_IN_CONTROL_PANEL',524288),(616,'118','VIEW',1),(617,'118','ADD_TO_PAGE',2),(618,'118','CONFIGURATION',4),(619,'118','PERMISSIONS',8),(620,'118','PREFERENCES',16),(621,'118','ACCESS_IN_CONTROL_PANEL',32),(622,'119','VIEW',1),(623,'119','ADD_TO_PAGE',2),(624,'119','CONFIGURATION',4),(625,'119','PERMISSIONS',8),(626,'119','PREFERENCES',16),(627,'119','ACCESS_IN_CONTROL_PANEL',32),(628,'97','VIEW',1),(629,'97','ADD_TO_PAGE',2),(630,'97','CONFIGURATION',4),(631,'97','PERMISSIONS',8),(632,'97','PREFERENCES',16),(633,'97','ACCESS_IN_CONTROL_PANEL',32),(634,'11','ADD_TO_PAGE',2),(635,'11','CONFIGURATION',4),(636,'11','VIEW',1),(637,'11','PERMISSIONS',8),(638,'11','PREFERENCES',16),(639,'11','ACCESS_IN_CONTROL_PANEL',32),(640,'16','VIEW',1),(641,'16','GUEST_PREFERENCES',2),(642,'16','PREFERENCES',4),(643,'16','ADD_TO_PAGE',8),(644,'16','CONFIGURATION',16),(645,'16','PERMISSIONS',32),(646,'16','ACCESS_IN_CONTROL_PANEL',64),(647,'19','ACCESS_IN_CONTROL_PANEL',32),(648,'121','VIEW',1),(649,'121','ADD_TO_PAGE',2),(650,'121','CONFIGURATION',4),(651,'121','PERMISSIONS',8),(652,'121','PREFERENCES',16),(653,'121','ACCESS_IN_CONTROL_PANEL',32),(654,'122','ADD_PORTLET_DISPLAY_TEMPLATE',2),(655,'122','CONFIGURATION',4),(656,'122','VIEW',1),(657,'122','ADD_TO_PAGE',8),(658,'122','PERMISSIONS',16),(659,'122','PREFERENCES',32),(660,'122','ACCESS_IN_CONTROL_PANEL',64),(661,'2','ACCESS_IN_CONTROL_PANEL',2),(662,'2','CONFIGURATION',4),(663,'2','VIEW',1),(664,'2','PERMISSIONS',8),(665,'2','PREFERENCES',16),(666,'3','VIEW',1),(667,'3','ADD_TO_PAGE',2),(668,'3','CONFIGURATION',4),(669,'3','PERMISSIONS',8),(670,'3','PREFERENCES',16),(671,'3','ACCESS_IN_CONTROL_PANEL',32),(672,'124','VIEW',1),(673,'124','ADD_TO_PAGE',2),(674,'124','CONFIGURATION',4),(675,'124','PERMISSIONS',8),(676,'124','PREFERENCES',16),(677,'124','ACCESS_IN_CONTROL_PANEL',32),(678,'127','ACCESS_IN_CONTROL_PANEL',32),(679,'9','VIEW',1),(680,'9','ADD_TO_PAGE',2),(681,'9','CONFIGURATION',4),(682,'9','PERMISSIONS',8),(683,'9','PREFERENCES',16),(684,'9','ACCESS_IN_CONTROL_PANEL',32),(685,'23','VIEW',1),(686,'23','ADD_TO_PAGE',2),(687,'23','CONFIGURATION',4),(688,'23','PERMISSIONS',8),(689,'23','PREFERENCES',16),(690,'23','ACCESS_IN_CONTROL_PANEL',32),(691,'26','VIEW',1),(692,'26','ADD_TO_PAGE',2),(693,'26','CONFIGURATION',4),(694,'26','PERMISSIONS',8),(695,'26','PREFERENCES',16),(696,'26','ACCESS_IN_CONTROL_PANEL',32),(697,'27','VIEW',1),(698,'27','ADD_TO_PAGE',2),(699,'27','CONFIGURATION',4),(700,'27','PERMISSIONS',8),(701,'27','PREFERENCES',16),(702,'27','ACCESS_IN_CONTROL_PANEL',32),(703,'29','ADD_TO_PAGE',2),(704,'29','CONFIGURATION',4),(705,'29','VIEW',1),(706,'29','PERMISSIONS',8),(707,'29','PREFERENCES',16),(708,'29','ACCESS_IN_CONTROL_PANEL',32),(709,'130','ACCESS_IN_CONTROL_PANEL',2),(710,'130','CONFIGURATION',4),(711,'130','VIEW',1),(712,'130','PERMISSIONS',8),(713,'130','PREFERENCES',16),(714,'131','ACCESS_IN_CONTROL_PANEL',2),(715,'131','CONFIGURATION',4),(716,'131','VIEW',1),(717,'131','PERMISSIONS',8),(718,'131','PREFERENCES',16),(719,'132','ACCESS_IN_CONTROL_PANEL',2),(720,'132','CONFIGURATION',4),(721,'132','VIEW',1),(722,'132','PERMISSIONS',8),(723,'132','PREFERENCES',16),(724,'133','VIEW',1),(725,'133','ADD_TO_PAGE',2),(726,'133','CONFIGURATION',4),(727,'133','PERMISSIONS',8),(728,'133','PREFERENCES',16),(729,'133','ACCESS_IN_CONTROL_PANEL',32),(730,'135','ACCESS_IN_CONTROL_PANEL',2),(731,'135','CONFIGURATION',4),(732,'135','VIEW',1),(733,'135','PERMISSIONS',8),(734,'135','PREFERENCES',16),(735,'137','ACCESS_IN_CONTROL_PANEL',2),(736,'137','CONFIGURATION',4),(737,'137','VIEW',1),(738,'137','PERMISSIONS',8),(739,'137','PREFERENCES',16),(740,'30','VIEW',1),(741,'30','ADD_TO_PAGE',2),(742,'30','CONFIGURATION',4),(743,'30','PERMISSIONS',8),(744,'30','PREFERENCES',16),(745,'30','ACCESS_IN_CONTROL_PANEL',32),(746,'31','ACCESS_IN_CONTROL_PANEL',32),(747,'33','ACCESS_IN_CONTROL_PANEL',64),(748,'34','ACCESS_IN_CONTROL_PANEL',32),(749,'36','ACCESS_IN_CONTROL_PANEL',64),(750,'39','VIEW',1),(751,'39','ADD_TO_PAGE',2),(752,'39','CONFIGURATION',4),(753,'39','PERMISSIONS',8),(754,'39','PREFERENCES',16),(755,'39','ACCESS_IN_CONTROL_PANEL',32),(756,'140','ACCESS_IN_CONTROL_PANEL',2),(757,'140','CONFIGURATION',4),(758,'140','VIEW',1),(759,'140','PERMISSIONS',8),(760,'140','PREFERENCES',16),(761,'141','ADD_PORTLET_DISPLAY_TEMPLATE',2),(762,'141','CONFIGURATION',4),(763,'141','VIEW',1),(764,'141','ADD_TO_PAGE',8),(765,'141','PERMISSIONS',16),(766,'141','PREFERENCES',32),(767,'141','ACCESS_IN_CONTROL_PANEL',64),(768,'142','VIEW',1),(769,'142','ADD_TO_PAGE',2),(770,'142','CONFIGURATION',4),(771,'142','PERMISSIONS',8),(772,'142','PREFERENCES',16),(773,'142','ACCESS_IN_CONTROL_PANEL',32),(774,'143','VIEW',1),(775,'143','ADD_TO_PAGE',2),(776,'143','CONFIGURATION',4),(777,'143','PERMISSIONS',8),(778,'143','PREFERENCES',16),(779,'143','ACCESS_IN_CONTROL_PANEL',32),(780,'145','VIEW',1),(781,'145','ADD_TO_PAGE',2),(782,'145','CONFIGURATION',4),(783,'145','PERMISSIONS',8),(784,'145','PREFERENCES',16),(785,'145','ACCESS_IN_CONTROL_PANEL',32),(786,'148','VIEW',1),(787,'148','ADD_TO_PAGE',2),(788,'148','CONFIGURATION',4),(789,'148','PERMISSIONS',8),(790,'148','PREFERENCES',16),(791,'148','ACCESS_IN_CONTROL_PANEL',32),(792,'47','VIEW',1),(793,'47','ADD_TO_PAGE',2),(794,'47','CONFIGURATION',4),(795,'47','PERMISSIONS',8),(796,'47','PREFERENCES',16),(797,'47','ACCESS_IN_CONTROL_PANEL',32),(798,'48','VIEW',1),(799,'48','ADD_TO_PAGE',2),(800,'48','CONFIGURATION',4),(801,'48','PERMISSIONS',8),(802,'48','PREFERENCES',16),(803,'48','ACCESS_IN_CONTROL_PANEL',32),(804,'49','VIEW',1),(805,'49','ADD_TO_PAGE',2),(806,'49','CONFIGURATION',4),(807,'49','PERMISSIONS',8),(808,'49','PREFERENCES',16),(809,'49','ACCESS_IN_CONTROL_PANEL',32),(810,'150','ACCESS_IN_CONTROL_PANEL',2),(811,'150','CONFIGURATION',4),(812,'150','VIEW',1),(813,'150','PERMISSIONS',8),(814,'150','PREFERENCES',16),(815,'151','ACCESS_IN_CONTROL_PANEL',2),(816,'151','CONFIGURATION',4),(817,'151','VIEW',1),(818,'151','PERMISSIONS',8),(819,'151','PREFERENCES',16),(820,'152','ACCESS_IN_CONTROL_PANEL',2),(821,'152','CONFIGURATION',4),(822,'152','VIEW',1),(823,'152','PERMISSIONS',8),(824,'152','PREFERENCES',16),(825,'153','ACCESS_IN_CONTROL_PANEL',2),(826,'153','ADD_TO_PAGE',4),(827,'153','CONFIGURATION',8),(828,'153','VIEW',1),(829,'153','PERMISSIONS',16),(830,'153','PREFERENCES',32),(831,'156','ACCESS_IN_CONTROL_PANEL',32),(832,'157','ACCESS_IN_CONTROL_PANEL',2),(833,'157','CONFIGURATION',4),(834,'157','VIEW',1),(835,'157','PERMISSIONS',8),(836,'157','PREFERENCES',16),(837,'158','ACCESS_IN_CONTROL_PANEL',2),(838,'158','ADD_TO_PAGE',4),(839,'158','CONFIGURATION',8),(840,'158','VIEW',1),(841,'158','PERMISSIONS',16),(842,'158','PREFERENCES',32),(843,'50','VIEW',1),(844,'50','ADD_TO_PAGE',2),(845,'50','CONFIGURATION',4),(846,'50','PERMISSIONS',8),(847,'50','PREFERENCES',16),(848,'50','ACCESS_IN_CONTROL_PANEL',32),(849,'54','VIEW',1),(850,'54','ADD_TO_PAGE',2),(851,'54','CONFIGURATION',4),(852,'54','PERMISSIONS',8),(853,'54','PREFERENCES',16),(854,'54','ACCESS_IN_CONTROL_PANEL',32),(855,'56','ADD_TO_PAGE',2),(856,'56','CONFIGURATION',4),(857,'56','VIEW',1),(858,'56','PERMISSIONS',8),(859,'56','PREFERENCES',16),(860,'56','ACCESS_IN_CONTROL_PANEL',32),(861,'58','ADD_TO_PAGE',2),(862,'58','CONFIGURATION',4),(863,'58','VIEW',1),(864,'58','PERMISSIONS',8),(865,'58','PREFERENCES',16),(866,'58','ACCESS_IN_CONTROL_PANEL',32),(867,'59','ACCESS_IN_CONTROL_PANEL',32),(868,'160','VIEW',1),(869,'160','ADD_TO_PAGE',2),(870,'160','CONFIGURATION',4),(871,'160','PERMISSIONS',8),(872,'160','PREFERENCES',16),(873,'160','ACCESS_IN_CONTROL_PANEL',32),(874,'164','VIEW',1),(875,'164','ADD_TO_PAGE',2),(876,'164','CONFIGURATION',4),(877,'164','PERMISSIONS',8),(878,'164','PREFERENCES',16),(879,'164','ACCESS_IN_CONTROL_PANEL',32),(880,'165','ACCESS_IN_CONTROL_PANEL',32),(881,'169','ACCESS_IN_CONTROL_PANEL',32),(882,'61','VIEW',1),(883,'61','ADD_TO_PAGE',2),(884,'61','CONFIGURATION',4),(885,'61','PERMISSIONS',8),(886,'61','PREFERENCES',16),(887,'61','ACCESS_IN_CONTROL_PANEL',32),(888,'62','VIEW',1),(889,'62','ADD_TO_PAGE',2),(890,'62','CONFIGURATION',4),(891,'62','PERMISSIONS',8),(892,'62','PREFERENCES',16),(893,'62','ACCESS_IN_CONTROL_PANEL',32),(894,'64','VIEW',1),(895,'64','ADD_TO_PAGE',2),(896,'64','CONFIGURATION',4),(897,'64','PERMISSIONS',8),(898,'64','PREFERENCES',16),(899,'64','ACCESS_IN_CONTROL_PANEL',32),(900,'66','VIEW',1),(901,'66','ADD_TO_PAGE',2),(902,'66','CONFIGURATION',4),(903,'66','PERMISSIONS',8),(904,'66','PREFERENCES',16),(905,'66','ACCESS_IN_CONTROL_PANEL',32),(906,'67','VIEW',1),(907,'67','ADD_TO_PAGE',2),(908,'67','CONFIGURATION',4),(909,'67','PERMISSIONS',8),(910,'67','PREFERENCES',16),(911,'67','ACCESS_IN_CONTROL_PANEL',32),(912,'170','VIEW',1),(913,'170','ADD_TO_PAGE',2),(914,'170','CONFIGURATION',4),(915,'170','PERMISSIONS',8),(916,'170','PREFERENCES',16),(917,'170','ACCESS_IN_CONTROL_PANEL',32),(918,'172','VIEW',1),(919,'172','ADD_TO_PAGE',2),(920,'172','CONFIGURATION',4),(921,'172','PERMISSIONS',8),(922,'172','PREFERENCES',16),(923,'172','ACCESS_IN_CONTROL_PANEL',32),(924,'173','VIEW',1),(925,'173','ADD_TO_PAGE',2),(926,'173','CONFIGURATION',4),(927,'173','PERMISSIONS',8),(928,'173','PREFERENCES',16),(929,'173','ACCESS_IN_CONTROL_PANEL',32),(930,'174','ACCESS_IN_CONTROL_PANEL',32),(931,'175','VIEW',1),(932,'175','ADD_TO_PAGE',2),(933,'175','CONFIGURATION',4),(934,'175','PERMISSIONS',8),(935,'175','PREFERENCES',16),(936,'175','ACCESS_IN_CONTROL_PANEL',32),(937,'176','VIEW',1),(938,'176','ADD_TO_PAGE',2),(939,'176','CONFIGURATION',4),(940,'176','PERMISSIONS',8),(941,'176','PREFERENCES',16),(942,'176','ACCESS_IN_CONTROL_PANEL',32),(943,'178','ACCESS_IN_CONTROL_PANEL',32),(944,'179','ACCESS_IN_CONTROL_PANEL',2),(945,'179','CONFIGURATION',4),(946,'179','VIEW',1),(947,'179','PERMISSIONS',8),(948,'179','PREFERENCES',16),(949,'70','VIEW',1),(950,'70','ADD_TO_PAGE',2),(951,'70','CONFIGURATION',4),(952,'70','PERMISSIONS',8),(953,'70','PREFERENCES',16),(954,'70','ACCESS_IN_CONTROL_PANEL',32),(955,'71','ADD_TO_PAGE',2),(956,'71','CONFIGURATION',4),(957,'71','VIEW',1),(958,'71','PERMISSIONS',8),(959,'71','PREFERENCES',16),(960,'71','ACCESS_IN_CONTROL_PANEL',32),(961,'73','ADD_TO_PAGE',2),(962,'73','CONFIGURATION',4),(963,'73','VIEW',1),(964,'73','PERMISSIONS',8),(965,'73','PREFERENCES',16),(966,'73','ACCESS_IN_CONTROL_PANEL',32),(967,'77','VIEW',1),(968,'77','ADD_TO_PAGE',2),(969,'77','CONFIGURATION',4),(970,'77','PERMISSIONS',8),(971,'77','PREFERENCES',16),(972,'77','ACCESS_IN_CONTROL_PANEL',32),(973,'180','VIEW',1),(974,'180','ADD_TO_PAGE',2),(975,'180','CONFIGURATION',4),(976,'180','PERMISSIONS',8),(977,'180','PREFERENCES',16),(978,'180','ACCESS_IN_CONTROL_PANEL',32),(979,'181','VIEW',1),(980,'181','ADD_TO_PAGE',2),(981,'181','CONFIGURATION',4),(982,'181','PERMISSIONS',8),(983,'181','PREFERENCES',16),(984,'181','ACCESS_IN_CONTROL_PANEL',32),(985,'182','VIEW',1),(986,'182','ADD_TO_PAGE',2),(987,'182','CONFIGURATION',4),(988,'182','PERMISSIONS',8),(989,'182','PREFERENCES',16),(990,'182','ACCESS_IN_CONTROL_PANEL',32),(991,'183','VIEW',1),(992,'183','ADD_TO_PAGE',2),(993,'183','CONFIGURATION',4),(994,'183','PERMISSIONS',8),(995,'183','PREFERENCES',16),(996,'183','ACCESS_IN_CONTROL_PANEL',32),(997,'184','ADD_TO_PAGE',2),(998,'184','CONFIGURATION',4),(999,'184','VIEW',1),(1000,'184','PERMISSIONS',8),(1001,'184','PREFERENCES',16),(1002,'184','ACCESS_IN_CONTROL_PANEL',32),(1003,'185','VIEW',1),(1004,'185','ADD_TO_PAGE',2),(1005,'185','CONFIGURATION',4),(1006,'185','PERMISSIONS',8),(1007,'185','PREFERENCES',16),(1008,'185','ACCESS_IN_CONTROL_PANEL',32),(1009,'186','ADD_TO_PAGE',2),(1010,'186','CONFIGURATION',4),(1011,'186','VIEW',1),(1012,'186','PERMISSIONS',8),(1013,'186','PREFERENCES',16),(1014,'186','ACCESS_IN_CONTROL_PANEL',32),(1015,'187','ADD_TO_PAGE',2),(1016,'187','CONFIGURATION',4),(1017,'187','VIEW',1),(1018,'187','PERMISSIONS',8),(1019,'187','PREFERENCES',16),(1020,'187','ACCESS_IN_CONTROL_PANEL',32),(1021,'100','VIEW',1),(1022,'100','ADD_TO_PAGE',2),(1023,'100','CONFIGURATION',4),(1024,'100','PERMISSIONS',8),(1025,'100','PREFERENCES',16),(1026,'100','ACCESS_IN_CONTROL_PANEL',32),(1027,'188','ADD_TO_PAGE',2),(1028,'188','CONFIGURATION',4),(1029,'188','VIEW',1),(1030,'188','PERMISSIONS',8),(1031,'188','PREFERENCES',16),(1032,'188','ACCESS_IN_CONTROL_PANEL',32),(1033,'101','ADD_PORTLET_DISPLAY_TEMPLATE',2),(1034,'101','ADD_TO_PAGE',4),(1035,'101','CONFIGURATION',8),(1036,'101','SUBSCRIBE',16),(1037,'101','VIEW',1),(1038,'101','PERMISSIONS',32),(1039,'101','PREFERENCES',64),(1040,'101','ACCESS_IN_CONTROL_PANEL',128),(1041,'102','VIEW',1),(1042,'102','ADD_TO_PAGE',2),(1043,'102','CONFIGURATION',4),(1044,'102','PERMISSIONS',8),(1045,'102','PREFERENCES',16),(1046,'102','ACCESS_IN_CONTROL_PANEL',32),(1047,'103','VIEW',1),(1048,'103','ADD_TO_PAGE',2),(1049,'103','CONFIGURATION',4),(1050,'103','PERMISSIONS',8),(1051,'103','PREFERENCES',16),(1052,'103','ACCESS_IN_CONTROL_PANEL',32),(1053,'107','VIEW',1),(1054,'107','ADD_TO_PAGE',2),(1055,'107','CONFIGURATION',4),(1056,'107','PERMISSIONS',8),(1057,'107','PREFERENCES',16),(1058,'107','ACCESS_IN_CONTROL_PANEL',32),(1059,'108','VIEW',1),(1060,'108','ADD_TO_PAGE',2),(1061,'108','CONFIGURATION',4),(1062,'108','PERMISSIONS',8),(1063,'108','PREFERENCES',16),(1064,'108','ACCESS_IN_CONTROL_PANEL',32),(1065,'82','VIEW',1),(1066,'82','ADD_TO_PAGE',2),(1067,'82','CONFIGURATION',4),(1068,'82','PERMISSIONS',8),(1069,'82','PREFERENCES',16),(1070,'82','ACCESS_IN_CONTROL_PANEL',32),(1071,'83','ACCESS_IN_CONTROL_PANEL',64),(1072,'84','ACCESS_IN_CONTROL_PANEL',64),(1073,'85','ADD_TO_PAGE',2),(1074,'85','CONFIGURATION',4),(1075,'85','VIEW',1),(1076,'85','PERMISSIONS',8),(1077,'85','PREFERENCES',16),(1078,'85','ADD_PORTLET_DISPLAY_TEMPLATE',32),(1079,'85','ACCESS_IN_CONTROL_PANEL',64),(1080,'86','VIEW',1),(1081,'86','ADD_TO_PAGE',2),(1082,'86','CONFIGURATION',4),(1083,'86','PERMISSIONS',8),(1084,'86','PREFERENCES',16),(1085,'86','ACCESS_IN_CONTROL_PANEL',32),(1086,'1_WAR_marketplaceportlet','VIEW',1),(1087,'1_WAR_marketplaceportlet','ADD_TO_PAGE',2),(1088,'1_WAR_marketplaceportlet','CONFIGURATION',4),(1089,'1_WAR_marketplaceportlet','PERMISSIONS',8),(1090,'1_WAR_marketplaceportlet','PREFERENCES',16),(1091,'1_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',32),(1092,'3_WAR_marketplaceportlet','VIEW',1),(1093,'3_WAR_marketplaceportlet','ADD_TO_PAGE',2),(1094,'3_WAR_marketplaceportlet','CONFIGURATION',4),(1095,'3_WAR_marketplaceportlet','PERMISSIONS',8),(1096,'3_WAR_marketplaceportlet','PREFERENCES',16),(1097,'3_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',32),(1098,'2_WAR_marketplaceportlet','VIEW',1),(1099,'2_WAR_marketplaceportlet','ADD_TO_PAGE',2),(1100,'2_WAR_marketplaceportlet','CONFIGURATION',4),(1101,'2_WAR_marketplaceportlet','PERMISSIONS',8),(1102,'2_WAR_marketplaceportlet','PREFERENCES',16),(1103,'2_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',32),(1104,'1_WAR_calendarportlet','ACCESS_IN_CONTROL_PANEL',2),(1105,'1_WAR_calendarportlet','ADD_TO_PAGE',4),(1106,'1_WAR_calendarportlet','CONFIGURATION',8),(1107,'1_WAR_calendarportlet','VIEW',1),(1108,'1_WAR_calendarportlet','PERMISSIONS',16),(1109,'1_WAR_calendarportlet','PREFERENCES',32),(1110,'com.liferay.calendar.model.CalendarResource','ADD_CALENDAR',2),(1111,'com.liferay.calendar.model.CalendarResource','DELETE',4),(1112,'com.liferay.calendar.model.CalendarResource','UPDATE',8),(1113,'com.liferay.calendar.model.CalendarResource','VIEW',1),(1114,'com.liferay.calendar.model.CalendarResource','PERMISSIONS',16),(1115,'com.liferay.calendar.model.CalendarBooking','ADD_DISCUSSION',2),(1116,'com.liferay.calendar.model.CalendarBooking','DELETE_DISCUSSION',4),(1117,'com.liferay.calendar.model.CalendarBooking','PERMISSIONS',8),(1118,'com.liferay.calendar.model.CalendarBooking','UPDATE_DISCUSSION',16),(1119,'com.liferay.calendar','ADD_RESOURCE',2),(1120,'com.liferay.calendar','PERMISSIONS',4),(1121,'com.liferay.calendar.model.Calendar','DELETE',2),(1122,'com.liferay.calendar.model.Calendar','MANAGE_BOOKINGS',4),(1123,'com.liferay.calendar.model.Calendar','PERMISSIONS',8),(1124,'com.liferay.calendar.model.Calendar','UPDATE',16),(1125,'com.liferay.calendar.model.Calendar','VIEW',1),(1126,'com.liferay.calendar.model.Calendar','VIEW_BOOKING_DETAILS',32);
/*!40000 ALTER TABLE `ResourceAction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceBlock`
--

DROP TABLE IF EXISTS `ResourceBlock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceBlock` (
  `resourceBlockId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `permissionsHash` varchar(75) DEFAULT NULL,
  `referenceCount` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockId`),
  UNIQUE KEY `IX_AEEA209C` (`companyId`,`groupId`,`name`,`permissionsHash`),
  KEY `IX_DA30B086` (`companyId`,`groupId`,`name`),
  KEY `IX_2D4CC782` (`companyId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceBlock`
--

LOCK TABLES `ResourceBlock` WRITE;
/*!40000 ALTER TABLE `ResourceBlock` DISABLE KEYS */;
INSERT INTO `ResourceBlock` VALUES (1,10155,10182,'com.liferay.calendar.model.CalendarResource','a4fbfec8150bc3ea4d91841df523ca4f561c8c17',1),(4,10155,10182,'com.liferay.calendar.model.Calendar','15b1c38f0777e19af9a6988dae3130a535100e3c',1),(5,10155,10201,'com.liferay.calendar.model.CalendarResource','a4fbfec8150bc3ea4d91841df523ca4f561c8c17',1),(8,10155,10201,'com.liferay.calendar.model.Calendar','3fe70a28eed24922905533b249b15bd89c46b6d6',1),(10,10155,10182,'com.liferay.calendar.model.CalendarBooking','3bc81dedc9011ad4028afa277dcfb72e23e81bb5',1);
/*!40000 ALTER TABLE `ResourceBlock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceBlockPermission`
--

DROP TABLE IF EXISTS `ResourceBlockPermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceBlockPermission` (
  `resourceBlockPermissionId` bigint(20) NOT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockPermissionId`),
  UNIQUE KEY `IX_D63D20BB` (`resourceBlockId`,`roleId`),
  KEY `IX_4AB3756` (`resourceBlockId`),
  KEY `IX_20A2E3D9` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceBlockPermission`
--

LOCK TABLES `ResourceBlockPermission` WRITE;
/*!40000 ALTER TABLE `ResourceBlockPermission` DISABLE KEYS */;
INSERT INTO `ResourceBlockPermission` VALUES (10465,1,10164,31),(10467,2,10164,63),(10468,3,10164,63),(10469,3,10171,1),(10470,4,10163,1),(10471,4,10164,63),(10472,4,10171,1),(10483,5,10164,31),(10485,6,10164,63),(10486,7,10164,63),(10487,7,10166,1),(10488,8,10163,1),(10489,8,10164,63),(10490,8,10166,1),(10493,9,10164,30),(10494,10,10164,30),(10495,10,10171,2);
/*!40000 ALTER TABLE `ResourceBlockPermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourcePermission`
--

DROP TABLE IF EXISTS `ResourcePermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourcePermission` (
  `resourcePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `primKey` varchar(255) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourcePermissionId`),
  UNIQUE KEY `IX_8D83D0CE` (`companyId`,`name`,`scope`,`primKey`,`roleId`),
  KEY `IX_60B99860` (`companyId`,`name`,`scope`),
  KEY `IX_2200AA69` (`companyId`,`name`,`scope`,`primKey`),
  KEY `IX_26284944` (`companyId`,`primKey`),
  KEY `IX_A37A0588` (`roleId`),
  KEY `IX_F4555981` (`scope`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourcePermission`
--

LOCK TABLES `ResourcePermission` WRITE;
/*!40000 ALTER TABLE `ResourcePermission` DISABLE KEYS */;
INSERT INTO `ResourcePermission` VALUES (1,10155,'2',1,'10155',10166,0,2),(2,10155,'140',1,'10155',10166,0,2),(3,10155,'158',1,'10155',10166,0,6),(4,10155,'153',1,'10155',10166,0,6),(5,10155,'com.liferay.portal.model.Role',4,'10162',10164,0,127),(6,10155,'com.liferay.portal.model.Role',4,'10163',10164,0,127),(7,10155,'com.liferay.portal.model.Role',4,'10164',10164,0,127),(8,10155,'com.liferay.portal.model.Role',4,'10165',10164,0,127),(9,10155,'com.liferay.portal.model.Role',4,'10166',10164,0,127),(10,10155,'com.liferay.portal.model.Role',4,'10167',10164,0,127),(11,10155,'com.liferay.portal.model.Role',4,'10168',10164,0,127),(12,10155,'com.liferay.portal.model.Role',4,'10169',10164,0,127),(13,10155,'com.liferay.portal.model.Role',4,'10170',10164,0,127),(14,10155,'com.liferay.portal.model.Role',4,'10171',10164,0,127),(15,10155,'com.liferay.portal.model.Role',4,'10172',10164,0,127),(16,10155,'com.liferay.portal.model.Role',4,'10162',10166,0,1),(17,10155,'com.liferay.portal.model.Role',4,'10163',10166,0,1),(18,10155,'com.liferay.portal.model.Role',4,'10164',10166,0,1),(19,10155,'com.liferay.portal.model.Role',4,'10165',10166,0,1),(20,10155,'com.liferay.portal.model.Role',4,'10166',10166,0,1),(21,10155,'com.liferay.portal.model.Role',4,'10167',10166,0,1),(22,10155,'com.liferay.portal.model.Role',4,'10168',10166,0,1),(23,10155,'com.liferay.portal.model.Role',4,'10169',10166,0,1),(24,10155,'com.liferay.portal.model.Role',4,'10170',10166,0,1),(25,10155,'com.liferay.portal.model.Role',4,'10171',10166,0,1),(26,10155,'com.liferay.portal.model.Role',4,'10172',10166,0,1),(27,10155,'com.liferay.portal.model.Layout',4,'10176',10164,10159,1023),(28,10155,'com.liferay.portal.model.Layout',4,'10176',10171,0,19),(29,10155,'com.liferay.portal.model.Layout',4,'10176',10163,0,1),(30,10155,'com.liferay.portal.model.Layout',4,'10185',10164,10159,1023),(31,10155,'com.liferay.portal.model.Layout',4,'10185',10171,0,19),(32,10155,'com.liferay.portal.model.Layout',4,'10185',10163,0,1),(33,10155,'com.liferay.portal.model.Layout',2,'10192',10166,0,1),(34,10155,'com.liferay.portlet.blogs',2,'10192',10166,0,14),(35,10155,'98',2,'10192',10165,0,2),(36,10155,'99',2,'10192',10165,0,2),(37,10155,'15',2,'10192',10165,0,2),(38,10155,'20',2,'10192',10165,0,2),(39,10155,'25',2,'10192',10165,0,2),(40,10155,'28',2,'10192',10165,0,2),(41,10155,'147',2,'10192',10165,0,2),(42,10155,'152',2,'10192',10165,0,2),(43,10155,'154',2,'10192',10165,0,2),(44,10155,'161',2,'10192',10165,0,2),(45,10155,'162',2,'10192',10165,0,2),(46,10155,'167',2,'10192',10165,0,2),(47,10155,'173',2,'10192',10165,0,32),(48,10155,'178',2,'10192',10165,0,32),(49,10155,'179',2,'10192',10165,0,2),(50,10155,'182',2,'10192',10165,0,32),(51,10155,'183',2,'10192',10165,0,32),(52,10155,'com.liferay.portal.model.Group',2,'10192',10165,0,8396800),(53,10155,'com.liferay.portlet.asset',2,'10192',10165,0,30),(54,10155,'com.liferay.portlet.blogs',2,'10192',10165,0,14),(55,10155,'com.liferay.portlet.bookmarks',2,'10192',10165,0,31),(56,10155,'com.liferay.portlet.documentlibrary',2,'10192',10165,0,1023),(57,10155,'com.liferay.portlet.journal',2,'10192',10165,0,255),(58,10155,'com.liferay.portlet.messageboards',2,'10192',10165,0,2047),(59,10155,'com.liferay.portlet.polls',2,'10192',10165,0,6),(60,10155,'com.liferay.portlet.wiki',2,'10192',10165,0,6),(61,10155,'com.liferay.portal.model.PasswordPolicy',4,'10198',10164,0,31),(62,10155,'com.liferay.portal.model.User',4,'10199',10164,10199,31),(63,10155,'193',1,'10155',10163,0,2),(64,10155,'193',1,'10155',10165,0,2),(65,10155,'193',1,'10155',10166,0,2),(66,10155,'194',1,'10155',10163,0,2),(67,10155,'194',1,'10155',10165,0,2),(68,10155,'194',1,'10155',10166,0,2),(69,10155,'110',1,'10155',10165,0,2),(70,10155,'110',1,'10155',10166,0,2),(71,10155,'114',1,'10155',10163,0,2),(72,10155,'114',1,'10155',10165,0,2),(73,10155,'114',1,'10155',10166,0,2),(74,10155,'115',1,'10155',10163,0,2),(75,10155,'115',1,'10155',10165,0,2),(76,10155,'115',1,'10155',10166,0,2),(77,10155,'116',1,'10155',10163,0,2),(78,10155,'116',1,'10155',10165,0,2),(79,10155,'116',1,'10155',10166,0,2),(80,10155,'118',1,'10155',10163,0,2),(81,10155,'118',1,'10155',10165,0,2),(82,10155,'118',1,'10155',10166,0,2),(83,10155,'97',1,'10155',10165,0,2),(84,10155,'97',1,'10155',10166,0,2),(85,10155,'98',1,'10155',10165,0,4),(86,10155,'98',1,'10155',10166,0,4),(87,10155,'11',1,'10155',10165,0,2),(88,10155,'11',1,'10155',10166,0,2),(89,10155,'15',1,'10155',10165,0,4),(90,10155,'15',1,'10155',10166,0,4),(91,10155,'16',1,'10155',10165,0,8),(92,10155,'16',1,'10155',10166,0,8),(93,10155,'19',1,'10155',10165,0,2),(94,10155,'19',1,'10155',10166,0,2),(95,10155,'121',1,'10155',10163,0,2),(96,10155,'121',1,'10155',10165,0,2),(97,10155,'121',1,'10155',10166,0,2),(98,10155,'122',1,'10155',10163,0,8),(99,10155,'122',1,'10155',10165,0,8),(100,10155,'122',1,'10155',10166,0,8),(101,10155,'3',1,'10155',10163,0,2),(102,10155,'3',1,'10155',10165,0,2),(103,10155,'3',1,'10155',10166,0,2),(104,10155,'127',1,'10155',10162,0,2),(105,10155,'9',1,'10155',10162,0,2),(106,10155,'20',1,'10155',10163,0,8),(107,10155,'20',1,'10155',10165,0,8),(108,10155,'20',1,'10155',10166,0,8),(109,10155,'23',1,'10155',10165,0,2),(110,10155,'23',1,'10155',10166,0,2),(111,10155,'26',1,'10155',10165,0,2),(112,10155,'26',1,'10155',10166,0,2),(113,10155,'27',1,'10155',10165,0,2),(114,10155,'27',1,'10155',10166,0,2),(115,10155,'28',1,'10155',10165,0,4),(116,10155,'28',1,'10155',10166,0,4),(117,10155,'29',1,'10155',10165,0,2),(118,10155,'29',1,'10155',10166,0,2),(119,10155,'30',1,'10155',10165,0,2),(120,10155,'30',1,'10155',10166,0,2),(121,10155,'31',1,'10155',10163,0,2),(122,10155,'31',1,'10155',10165,0,2),(123,10155,'31',1,'10155',10166,0,2),(124,10155,'33',1,'10155',10163,0,4),(125,10155,'33',1,'10155',10165,0,4),(126,10155,'33',1,'10155',10166,0,4),(127,10155,'34',1,'10155',10165,0,2),(128,10155,'34',1,'10155',10166,0,2),(129,10155,'36',1,'10155',10165,0,4),(130,10155,'36',1,'10155',10166,0,4),(131,10155,'39',1,'10155',10165,0,2),(132,10155,'39',1,'10155',10166,0,2),(133,10155,'141',1,'10155',10163,0,8),(134,10155,'141',1,'10155',10165,0,8),(135,10155,'141',1,'10155',10166,0,8),(136,10155,'143',1,'10155',10163,0,2),(137,10155,'143',1,'10155',10165,0,2),(138,10155,'143',1,'10155',10166,0,2),(139,10155,'148',1,'10155',10163,0,2),(140,10155,'148',1,'10155',10165,0,2),(141,10155,'148',1,'10155',10166,0,2),(142,10155,'47',1,'10155',10163,0,2),(143,10155,'47',1,'10155',10165,0,2),(144,10155,'47',1,'10155',10166,0,2),(145,10155,'48',1,'10155',10165,0,2),(146,10155,'48',1,'10155',10166,0,2),(147,10155,'153',1,'10155',10165,0,4),(148,10155,'158',1,'10155',10165,0,4),(149,10155,'50',1,'10155',10163,0,2),(150,10155,'50',1,'10155',10165,0,2),(151,10155,'50',1,'10155',10166,0,2),(152,10155,'54',1,'10155',10165,0,2),(153,10155,'54',1,'10155',10166,0,2),(154,10155,'56',1,'10155',10163,0,2),(155,10155,'56',1,'10155',10165,0,2),(156,10155,'56',1,'10155',10166,0,2),(157,10155,'58',1,'10155',10163,0,2),(158,10155,'58',1,'10155',10165,0,2),(159,10155,'58',1,'10155',10166,0,2),(160,10155,'59',1,'10155',10165,0,2),(161,10155,'59',1,'10155',10166,0,2),(162,10155,'164',1,'10155',10163,0,2),(163,10155,'164',1,'10155',10165,0,2),(164,10155,'164',1,'10155',10166,0,2),(165,10155,'166',1,'10155',10165,0,4),(166,10155,'166',1,'10155',10166,0,4),(167,10155,'167',1,'10155',10165,0,4),(168,10155,'167',1,'10155',10166,0,4),(169,10155,'169',1,'10155',10165,0,2),(170,10155,'169',1,'10155',10166,0,2),(171,10155,'61',1,'10155',10165,0,2),(172,10155,'61',1,'10155',10166,0,2),(173,10155,'62',1,'10155',10165,0,2),(174,10155,'62',1,'10155',10166,0,2),(175,10155,'64',1,'10155',10163,0,2),(176,10155,'64',1,'10155',10165,0,2),(177,10155,'64',1,'10155',10166,0,2),(178,10155,'66',1,'10155',10165,0,2),(179,10155,'66',1,'10155',10166,0,2),(180,10155,'67',1,'10155',10165,0,2),(181,10155,'67',1,'10155',10166,0,2),(182,10155,'173',1,'10155',10163,0,2),(183,10155,'173',1,'10155',10165,0,2),(184,10155,'173',1,'10155',10166,0,2),(185,10155,'175',1,'10155',10163,0,2),(186,10155,'175',1,'10155',10165,0,2),(187,10155,'175',1,'10155',10166,0,2),(188,10155,'176',1,'10155',10162,0,2),(189,10155,'178',1,'10155',10165,0,4),(190,10155,'178',1,'10155',10166,0,4),(191,10155,'70',1,'10155',10165,0,2),(192,10155,'70',1,'10155',10166,0,2),(193,10155,'71',1,'10155',10163,0,2),(194,10155,'71',1,'10155',10165,0,2),(195,10155,'71',1,'10155',10166,0,2),(196,10155,'73',1,'10155',10163,0,2),(197,10155,'73',1,'10155',10165,0,2),(198,10155,'73',1,'10155',10166,0,2),(199,10155,'77',1,'10155',10163,0,2),(200,10155,'77',1,'10155',10165,0,2),(201,10155,'77',1,'10155',10166,0,2),(202,10155,'180',1,'10155',10163,0,2),(203,10155,'180',1,'10155',10165,0,2),(204,10155,'180',1,'10155',10166,0,2),(205,10155,'181',1,'10155',10163,0,2),(206,10155,'181',1,'10155',10165,0,2),(207,10155,'181',1,'10155',10166,0,2),(208,10155,'182',1,'10155',10165,0,2),(209,10155,'182',1,'10155',10166,0,2),(210,10155,'183',1,'10155',10162,0,2),(211,10155,'184',1,'10155',10163,0,2),(212,10155,'184',1,'10155',10165,0,2),(213,10155,'184',1,'10155',10166,0,2),(214,10155,'186',1,'10155',10165,0,2),(215,10155,'186',1,'10155',10166,0,2),(216,10155,'187',1,'10155',10165,0,2),(217,10155,'187',1,'10155',10166,0,2),(218,10155,'100',1,'10155',10165,0,2),(219,10155,'100',1,'10155',10166,0,2),(220,10155,'188',1,'10155',10165,0,2),(221,10155,'188',1,'10155',10166,0,2),(222,10155,'101',1,'10155',10163,0,4),(223,10155,'101',1,'10155',10165,0,4),(224,10155,'101',1,'10155',10166,0,4),(225,10155,'102',1,'10155',10162,0,2),(226,10155,'107',1,'10155',10165,0,2),(227,10155,'107',1,'10155',10166,0,2),(228,10155,'108',1,'10155',10165,0,2),(229,10155,'108',1,'10155',10166,0,2),(230,10155,'82',1,'10155',10163,0,2),(231,10155,'82',1,'10155',10165,0,2),(232,10155,'82',1,'10155',10166,0,2),(233,10155,'83',1,'10155',10165,0,4),(234,10155,'83',1,'10155',10166,0,4),(235,10155,'84',1,'10155',10165,0,4),(236,10155,'84',1,'10155',10166,0,4),(237,10155,'85',1,'10155',10163,0,2),(238,10155,'85',1,'10155',10165,0,2),(239,10155,'85',1,'10155',10166,0,2),(240,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10303',10164,10159,15),(241,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10303',10166,0,1),(242,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10303',10163,0,1),(243,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10304',10164,10159,15),(244,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10304',10166,0,1),(245,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10304',10163,0,1),(246,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10305',10164,10159,15),(247,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10305',10166,0,1),(248,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10305',10163,0,1),(249,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10307',10164,10159,15),(250,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10307',10166,0,1),(251,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10307',10163,0,1),(252,10155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10306',10164,10159,15),(253,10155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10306',10166,0,1),(254,10155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10306',10163,0,1),(255,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10309',10164,10159,15),(256,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10309',10166,0,1),(257,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10309',10163,0,1),(258,10155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10308',10164,10159,15),(259,10155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10308',10166,0,1),(260,10155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10308',10163,0,1),(261,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10311',10164,10159,15),(262,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10311',10166,0,1),(263,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10311',10163,0,1),(264,10155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10310',10164,10159,15),(265,10155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10310',10166,0,1),(266,10155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10310',10163,0,1),(267,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10313',10164,10159,15),(268,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10313',10166,0,1),(269,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10313',10163,0,1),(270,10155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10312',10164,10159,15),(271,10155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10312',10166,0,1),(272,10155,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10312',10163,0,1),(273,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10315',10164,10159,15),(274,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10315',10166,0,1),(275,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10315',10163,0,1),(276,10155,'com.liferay.portal.model.LayoutPrototype',4,'10316',10164,10159,15),(277,10155,'com.liferay.portal.model.Layout',4,'10320',10164,10159,1023),(278,10155,'com.liferay.portal.model.Layout',4,'10320',10171,0,19),(279,10155,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10324',10164,10159,15),(280,10155,'33',4,'10320_LAYOUT_33',10164,0,127),(281,10155,'33',4,'10320_LAYOUT_33',10171,0,1),(282,10155,'33',4,'10320_LAYOUT_33',10163,0,1),(283,10155,'com.liferay.portlet.blogs',4,'10317',10164,0,14),(284,10155,'148',4,'10320_LAYOUT_148_INSTANCE_zXgGG4uFI65J',10164,0,63),(285,10155,'148',4,'10320_LAYOUT_148_INSTANCE_zXgGG4uFI65J',10171,0,1),(286,10155,'148',4,'10320_LAYOUT_148_INSTANCE_zXgGG4uFI65J',10163,0,1),(287,10155,'114',4,'10320_LAYOUT_114',10164,0,63),(288,10155,'114',4,'10320_LAYOUT_114',10171,0,1),(289,10155,'114',4,'10320_LAYOUT_114',10163,0,1),(290,10155,'com.liferay.portal.model.LayoutPrototype',4,'10328',10164,10159,15),(291,10155,'com.liferay.portal.model.Layout',4,'10332',10164,10159,1023),(292,10155,'com.liferay.portal.model.Layout',4,'10332',10171,0,19),(293,10155,'141',4,'10332_LAYOUT_141_INSTANCE_6T8FPtf1Qnfs',10164,0,127),(294,10155,'141',4,'10332_LAYOUT_141_INSTANCE_6T8FPtf1Qnfs',10171,0,1),(295,10155,'141',4,'10332_LAYOUT_141_INSTANCE_6T8FPtf1Qnfs',10163,0,1),(296,10155,'122',4,'10332_LAYOUT_122_INSTANCE_t8WUbJMlwbqP',10164,0,127),(297,10155,'122',4,'10332_LAYOUT_122_INSTANCE_t8WUbJMlwbqP',10171,0,1),(298,10155,'122',4,'10332_LAYOUT_122_INSTANCE_t8WUbJMlwbqP',10163,0,1),(299,10155,'3',4,'10332_LAYOUT_3',10164,0,63),(300,10155,'3',4,'10332_LAYOUT_3',10171,0,1),(301,10155,'3',4,'10332_LAYOUT_3',10163,0,1),(302,10155,'101',4,'10332_LAYOUT_101_INSTANCE_cLLEDhEC00mf',10164,0,255),(303,10155,'101',4,'10332_LAYOUT_101_INSTANCE_cLLEDhEC00mf',10171,0,17),(304,10155,'101',4,'10332_LAYOUT_101_INSTANCE_cLLEDhEC00mf',10163,0,1),(305,10155,'com.liferay.portal.model.LayoutPrototype',4,'10338',10164,10159,15),(306,10155,'com.liferay.portal.model.Layout',4,'10342',10164,10159,1023),(307,10155,'com.liferay.portal.model.Layout',4,'10342',10171,0,19),(308,10155,'36',4,'10342_LAYOUT_36',10164,0,127),(309,10155,'36',4,'10342_LAYOUT_36',10171,0,1),(310,10155,'36',4,'10342_LAYOUT_36',10163,0,1),(311,10155,'com.liferay.portlet.wiki',4,'10339',10164,0,6),(312,10155,'122',4,'10342_LAYOUT_122_INSTANCE_Rc67oaLODuBp',10164,0,127),(313,10155,'122',4,'10342_LAYOUT_122_INSTANCE_Rc67oaLODuBp',10171,0,1),(314,10155,'122',4,'10342_LAYOUT_122_INSTANCE_Rc67oaLODuBp',10163,0,1),(315,10155,'141',4,'10342_LAYOUT_141_INSTANCE_XpUSIbu9L6HF',10164,0,127),(316,10155,'141',4,'10342_LAYOUT_141_INSTANCE_XpUSIbu9L6HF',10171,0,1),(317,10155,'141',4,'10342_LAYOUT_141_INSTANCE_XpUSIbu9L6HF',10163,0,1),(318,10155,'com.liferay.portal.model.LayoutSetPrototype',4,'10349',10164,10159,15),(322,10155,'com.liferay.portal.model.Layout',4,'10361',10164,10159,1023),(323,10155,'com.liferay.portal.model.Layout',4,'10361',10171,0,19),(324,10155,'com.liferay.portal.model.Layout',4,'10361',10163,0,1),(325,10155,'19',4,'10361_LAYOUT_19',10164,0,63),(326,10155,'19',4,'10361_LAYOUT_19',10171,0,1),(327,10155,'19',4,'10361_LAYOUT_19',10163,0,1),(328,10155,'com.liferay.portlet.messageboards',4,'10350',10164,0,2047),(329,10155,'com.liferay.portlet.messageboards',4,'10350',10171,0,781),(330,10155,'com.liferay.portlet.messageboards',4,'10350',10163,0,1),(331,10155,'3',4,'10361_LAYOUT_3',10164,0,63),(332,10155,'3',4,'10361_LAYOUT_3',10171,0,1),(333,10155,'3',4,'10361_LAYOUT_3',10163,0,1),(334,10155,'59',4,'10361_LAYOUT_59_INSTANCE_o3mFzWXoUsfY',10164,0,63),(335,10155,'59',4,'10361_LAYOUT_59_INSTANCE_o3mFzWXoUsfY',10171,0,1),(336,10155,'59',4,'10361_LAYOUT_59_INSTANCE_o3mFzWXoUsfY',10163,0,1),(337,10155,'com.liferay.portlet.polls',4,'10350',10164,0,6),(338,10155,'180',4,'10361_LAYOUT_180',10164,0,63),(339,10155,'180',4,'10361_LAYOUT_180',10171,0,1),(340,10155,'180',4,'10361_LAYOUT_180',10163,0,1),(341,10155,'101',4,'10361_LAYOUT_101_INSTANCE_vs4usWFGnGlS',10164,0,255),(342,10155,'101',4,'10361_LAYOUT_101_INSTANCE_vs4usWFGnGlS',10171,0,17),(343,10155,'101',4,'10361_LAYOUT_101_INSTANCE_vs4usWFGnGlS',10163,0,1),(344,10155,'com.liferay.portal.model.Layout',4,'10369',10164,10159,1023),(345,10155,'com.liferay.portal.model.Layout',4,'10369',10171,0,19),(346,10155,'com.liferay.portal.model.Layout',4,'10369',10163,0,1),(347,10155,'36',4,'10369_LAYOUT_36',10164,0,127),(348,10155,'36',4,'10369_LAYOUT_36',10171,0,1),(349,10155,'36',4,'10369_LAYOUT_36',10163,0,1),(350,10155,'com.liferay.portlet.wiki',4,'10350',10164,0,6),(351,10155,'122',4,'10369_LAYOUT_122_INSTANCE_ly09mC0rrvf7',10164,0,127),(352,10155,'122',4,'10369_LAYOUT_122_INSTANCE_ly09mC0rrvf7',10171,0,1),(353,10155,'122',4,'10369_LAYOUT_122_INSTANCE_ly09mC0rrvf7',10163,0,1),(354,10155,'148',4,'10369_LAYOUT_148_INSTANCE_Bdiyhg2Rey9L',10164,0,63),(355,10155,'148',4,'10369_LAYOUT_148_INSTANCE_Bdiyhg2Rey9L',10171,0,1),(356,10155,'148',4,'10369_LAYOUT_148_INSTANCE_Bdiyhg2Rey9L',10163,0,1),(357,10155,'com.liferay.portal.model.LayoutSetPrototype',4,'10375',10164,10159,15),(361,10155,'com.liferay.portal.model.Layout',4,'10387',10164,10159,1023),(362,10155,'com.liferay.portal.model.Layout',4,'10387',10171,0,19),(363,10155,'com.liferay.portal.model.Layout',4,'10387',10163,0,1),(364,10155,'116',4,'10387_LAYOUT_116',10164,0,63),(365,10155,'116',4,'10387_LAYOUT_116',10171,0,1),(366,10155,'116',4,'10387_LAYOUT_116',10163,0,1),(367,10155,'3',4,'10387_LAYOUT_3',10164,0,63),(368,10155,'3',4,'10387_LAYOUT_3',10171,0,1),(369,10155,'3',4,'10387_LAYOUT_3',10163,0,1),(370,10155,'82',4,'10387_LAYOUT_82',10164,0,63),(371,10155,'82',4,'10387_LAYOUT_82',10171,0,1),(372,10155,'82',4,'10387_LAYOUT_82',10163,0,1),(373,10155,'101',4,'10387_LAYOUT_101_INSTANCE_M9WtOwaOrGSr',10164,0,255),(374,10155,'101',4,'10387_LAYOUT_101_INSTANCE_M9WtOwaOrGSr',10171,0,17),(375,10155,'101',4,'10387_LAYOUT_101_INSTANCE_M9WtOwaOrGSr',10163,0,1),(376,10155,'com.liferay.portal.model.Layout',4,'10396',10164,10159,1023),(377,10155,'com.liferay.portal.model.Layout',4,'10396',10171,0,19),(378,10155,'com.liferay.portal.model.Layout',4,'10396',10163,0,1),(379,10155,'20',4,'10396_LAYOUT_20',10164,0,127),(380,10155,'20',4,'10396_LAYOUT_20',10171,0,1),(381,10155,'20',4,'10396_LAYOUT_20',10163,0,1),(382,10155,'com.liferay.portlet.documentlibrary',4,'10376',10164,0,1023),(383,10155,'com.liferay.portlet.documentlibrary',4,'10376',10171,0,331),(384,10155,'com.liferay.portlet.documentlibrary',4,'10376',10163,0,1),(385,10155,'101',4,'10396_LAYOUT_101_INSTANCE_IXIlUgOzZVh6',10164,0,255),(386,10155,'101',4,'10396_LAYOUT_101_INSTANCE_IXIlUgOzZVh6',10171,0,17),(387,10155,'101',4,'10396_LAYOUT_101_INSTANCE_IXIlUgOzZVh6',10163,0,1),(388,10155,'com.liferay.portal.model.Layout',4,'10404',10164,10159,1023),(389,10155,'com.liferay.portal.model.Layout',4,'10404',10171,0,19),(390,10155,'com.liferay.portal.model.Layout',4,'10404',10163,0,1),(391,10155,'39',4,'10404_LAYOUT_39_INSTANCE_QnFHLTbDJAC8',10164,0,63),(392,10155,'39',4,'10404_LAYOUT_39_INSTANCE_QnFHLTbDJAC8',10171,0,1),(393,10155,'39',4,'10404_LAYOUT_39_INSTANCE_QnFHLTbDJAC8',10163,0,1),(394,10155,'39',4,'10404_LAYOUT_39_INSTANCE_TG07bqkOjROj',10164,0,63),(395,10155,'39',4,'10404_LAYOUT_39_INSTANCE_TG07bqkOjROj',10171,0,1),(396,10155,'39',4,'10404_LAYOUT_39_INSTANCE_TG07bqkOjROj',10163,0,1),(397,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10412',10164,10159,15),(398,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10413',10164,10159,15),(399,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10414',10164,10159,15),(400,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10415',10164,10159,15),(401,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10416',10164,10159,15),(402,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10417',10164,10159,15),(403,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10418',10164,10159,15),(404,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10420',10164,10159,15),(405,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10422',10164,10159,15),(406,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10425',10164,10159,15),(407,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10427',10164,10159,15),(408,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10429',10164,10159,15),(409,10155,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate',4,'10431',10164,10159,15),(410,10155,'com.liferay.portlet.expando.model.ExpandoColumn',4,'10438',10164,0,15),(411,10155,'com.liferay.portlet.expando.model.ExpandoColumn',4,'10439',10164,0,15),(412,10155,'com.liferay.portlet.expando.model.ExpandoColumn',4,'10440',10164,0,15),(413,10155,'com.liferay.portlet.expando.model.ExpandoColumn',4,'10441',10164,0,15),(414,10155,'145',4,'10185_LAYOUT_145',10164,0,63),(415,10155,'145',4,'10185_LAYOUT_145',10171,0,1),(416,10155,'145',4,'10185_LAYOUT_145',10163,0,1),(417,10155,'1_WAR_calendarportlet',1,'10155',10162,0,4),(418,10155,'1_WAR_calendarportlet',1,'10155',10163,0,4),(419,10155,'1_WAR_calendarportlet',1,'10155',10165,0,4),(420,10155,'1_WAR_calendarportlet',1,'10155',10166,0,4),(421,10155,'47',4,'10185_LAYOUT_47',10164,0,63),(422,10155,'58',4,'10185_LAYOUT_58',10164,0,63),(423,10155,'47',4,'10185_LAYOUT_47',10171,0,1),(424,10155,'58',4,'10185_LAYOUT_58',10171,0,1),(425,10155,'47',4,'10185_LAYOUT_47',10163,0,1),(426,10155,'58',4,'10185_LAYOUT_58',10163,0,1),(427,10155,'com.liferay.portal.model.Layout',4,'10451',10164,10199,1023),(428,10155,'com.liferay.portal.model.Layout',4,'10457',10164,10199,1023),(429,10155,'com.liferay.portal.model.Layout',4,'10457',10166,0,19),(430,10155,'com.liferay.portal.model.Layout',4,'10457',10163,0,1),(431,10155,'com.liferay.portlet.journal',4,'10182',10164,0,255),(432,10155,'com.liferay.portlet.journal',4,'10182',10171,0,1),(433,10155,'com.liferay.portlet.journal',4,'10182',10163,0,1),(434,10155,'com.liferay.portlet.documentlibrary',4,'10182',10164,0,1023),(435,10155,'com.liferay.portlet.documentlibrary',4,'10182',10171,0,331),(436,10155,'com.liferay.portlet.documentlibrary',4,'10182',10163,0,1),(437,10155,'com.liferay.portal.model.Layout',4,'10474',10164,10199,1023),(438,10155,'com.liferay.portal.model.Layout',4,'10474',10171,0,19),(439,10155,'com.liferay.portal.model.Layout',4,'10474',10163,0,1),(440,10155,'145',4,'10474_LAYOUT_145',10164,0,63),(441,10155,'145',4,'10474_LAYOUT_145',10171,0,1),(442,10155,'145',4,'10474_LAYOUT_145',10163,0,1),(443,10155,'1_WAR_calendarportlet',4,'10474_LAYOUT_1_WAR_calendarportlet',10164,0,63),(444,10155,'1_WAR_calendarportlet',4,'10474_LAYOUT_1_WAR_calendarportlet',10171,0,1),(445,10155,'1_WAR_calendarportlet',4,'10474_LAYOUT_1_WAR_calendarportlet',10163,0,1),(446,10155,'com.liferay.calendar',4,'10182',10164,0,6),(447,10155,'com.liferay.calendar',4,'10182',10171,0,2);
/*!40000 ALTER TABLE `ResourcePermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ResourceTypePermission`
--

DROP TABLE IF EXISTS `ResourceTypePermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ResourceTypePermission` (
  `resourceTypePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceTypePermissionId`),
  UNIQUE KEY `IX_BA497163` (`companyId`,`groupId`,`name`,`roleId`),
  KEY `IX_7D81F66F` (`companyId`,`name`,`roleId`),
  KEY `IX_A82690E2` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ResourceTypePermission`
--

LOCK TABLES `ResourceTypePermission` WRITE;
/*!40000 ALTER TABLE `ResourceTypePermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `ResourceTypePermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Role_`
--

DROP TABLE IF EXISTS `Role_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Role_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `roleId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `title` longtext,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `subtype` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`roleId`),
  UNIQUE KEY `IX_A88E424E` (`companyId`,`classNameId`,`classPK`),
  UNIQUE KEY `IX_EBC931B8` (`companyId`,`name`),
  KEY `IX_449A10B9` (`companyId`),
  KEY `IX_F3E1C6FC` (`companyId`,`type_`),
  KEY `IX_F436EC8E` (`name`),
  KEY `IX_5EB4E2FB` (`subtype`),
  KEY `IX_F92B66E6` (`type_`),
  KEY `IX_CBE204` (`type_`,`subtype`),
  KEY `IX_26DB26C5` (`uuid_`),
  KEY `IX_B9FF6043` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Role_`
--

LOCK TABLES `Role_` WRITE;
/*!40000 ALTER TABLE `Role_` DISABLE KEYS */;
INSERT INTO `Role_` VALUES ('11756126-918d-6668-db58-eb2988d268a9',10162,10155,10159,'','2018-06-13 01:30:11','2018-06-13 01:30:11',10004,10162,'Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Administrators are super users who can do anything.</Description></root>',1,''),('97e44017-6a86-3050-72e8-f282d623843a',10163,10155,10159,'','2018-06-13 01:30:11','2018-06-13 01:30:11',10004,10163,'Guest','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Unauthenticated users always have this role.</Description></root>',1,''),('7682c1f3-968e-ebb0-8cd7-bc111db6bc3f',10164,10155,10159,'','2018-06-13 01:30:11','2018-06-13 01:30:11',10004,10164,'Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">This is an implied role with respect to the objects users create.</Description></root>',1,''),('1b0964fa-f596-9b5c-3f22-538d0b9d8428',10165,10155,10159,'','2018-06-13 01:30:11','2018-06-13 01:30:11',10004,10165,'Power User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Power Users have their own personal site.</Description></root>',1,''),('085d05a4-80b9-bc44-b064-73cf3a1cc2a0',10166,10155,10159,'','2018-06-13 01:30:11','2018-06-13 01:30:11',10004,10166,'User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Authenticated users should be assigned this role.</Description></root>',1,''),('dceabf7b-1036-1d59-c55c-de12fab61a0f',10167,10155,10159,'','2018-06-13 01:30:11','2018-06-13 01:30:11',10004,10167,'Organization Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Administrators are super users of their organization but cannot make other users into Organization Administrators.</Description></root>',3,''),('e1f28aa6-986a-677c-7e7a-35e6aedac82f',10168,10155,10159,'','2018-06-13 01:30:11','2018-06-13 01:30:11',10004,10168,'Organization Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Owners are super users of their organization and can assign organization roles to users.</Description></root>',3,''),('a0e3a7f1-2e1a-1c1c-bf7a-02472b2974ce',10169,10155,10159,'','2018-06-13 01:30:11','2018-06-13 01:30:11',10004,10169,'Organization User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to an organization have this role within that organization.</Description></root>',3,''),('bce65383-54f0-69a8-bd24-ffc43ed0b905',10170,10155,10159,'','2018-06-13 01:30:11','2018-06-13 01:30:11',10004,10170,'Site Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Administrators are super users of their site but cannot make other users into Site Administrators.</Description></root>',2,''),('b6b5a803-c188-32b8-50bf-8db747456b94',10171,10155,10159,'','2018-06-13 01:30:11','2018-06-13 01:30:11',10004,10171,'Site Member','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to a site have this role within that site.</Description></root>',2,''),('a64d6221-050f-808b-2fac-700ae1535ed7',10172,10155,10159,'','2018-06-13 01:30:11','2018-06-13 01:30:11',10004,10172,'Site Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Owners are super users of their site and can assign site roles to users.</Description></root>',2,'');
/*!40000 ALTER TABLE `Role_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCFrameworkVersi_SCProductVers`
--

DROP TABLE IF EXISTS `SCFrameworkVersi_SCProductVers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCFrameworkVersi_SCProductVers` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `productVersionId` bigint(20) NOT NULL,
  PRIMARY KEY (`frameworkVersionId`,`productVersionId`),
  KEY `IX_3BB93ECA` (`frameworkVersionId`),
  KEY `IX_E8D33FF9` (`productVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCFrameworkVersi_SCProductVers`
--

LOCK TABLES `SCFrameworkVersi_SCProductVers` WRITE;
/*!40000 ALTER TABLE `SCFrameworkVersi_SCProductVers` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCFrameworkVersi_SCProductVers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCFrameworkVersion`
--

DROP TABLE IF EXISTS `SCFrameworkVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCFrameworkVersion` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`frameworkVersionId`),
  KEY `IX_C98C0D78` (`companyId`),
  KEY `IX_272991FA` (`groupId`),
  KEY `IX_6E1764F` (`groupId`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCFrameworkVersion`
--

LOCK TABLES `SCFrameworkVersion` WRITE;
/*!40000 ALTER TABLE `SCFrameworkVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCFrameworkVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCLicense`
--

DROP TABLE IF EXISTS `SCLicense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCLicense` (
  `licenseId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `openSource` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `recommended` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`licenseId`),
  KEY `IX_1C841592` (`active_`),
  KEY `IX_5327BB79` (`active_`,`recommended`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCLicense`
--

LOCK TABLES `SCLicense` WRITE;
/*!40000 ALTER TABLE `SCLicense` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCLicense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCLicenses_SCProductEntries`
--

DROP TABLE IF EXISTS `SCLicenses_SCProductEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCLicenses_SCProductEntries` (
  `licenseId` bigint(20) NOT NULL,
  `productEntryId` bigint(20) NOT NULL,
  PRIMARY KEY (`licenseId`,`productEntryId`),
  KEY `IX_27006638` (`licenseId`),
  KEY `IX_D7710A66` (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCLicenses_SCProductEntries`
--

LOCK TABLES `SCLicenses_SCProductEntries` WRITE;
/*!40000 ALTER TABLE `SCLicenses_SCProductEntries` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCLicenses_SCProductEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCProductEntry`
--

DROP TABLE IF EXISTS `SCProductEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCProductEntry` (
  `productEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `shortDescription` longtext,
  `longDescription` longtext,
  `pageURL` longtext,
  `author` varchar(75) DEFAULT NULL,
  `repoGroupId` varchar(75) DEFAULT NULL,
  `repoArtifactId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`productEntryId`),
  KEY `IX_5D25244F` (`companyId`),
  KEY `IX_72F87291` (`groupId`),
  KEY `IX_98E6A9CB` (`groupId`,`userId`),
  KEY `IX_7311E812` (`repoGroupId`,`repoArtifactId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCProductEntry`
--

LOCK TABLES `SCProductEntry` WRITE;
/*!40000 ALTER TABLE `SCProductEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCProductEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCProductScreenshot`
--

DROP TABLE IF EXISTS `SCProductScreenshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCProductScreenshot` (
  `productScreenshotId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `thumbnailId` bigint(20) DEFAULT NULL,
  `fullImageId` bigint(20) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`productScreenshotId`),
  KEY `IX_AE8224CC` (`fullImageId`),
  KEY `IX_467956FD` (`productEntryId`),
  KEY `IX_DA913A55` (`productEntryId`,`priority`),
  KEY `IX_6C572DAC` (`thumbnailId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCProductScreenshot`
--

LOCK TABLES `SCProductScreenshot` WRITE;
/*!40000 ALTER TABLE `SCProductScreenshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCProductScreenshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SCProductVersion`
--

DROP TABLE IF EXISTS `SCProductVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SCProductVersion` (
  `productVersionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `productEntryId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `changeLog` longtext,
  `downloadPageURL` longtext,
  `directDownloadURL` varchar(2000) DEFAULT NULL,
  `repoStoreArtifact` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`productVersionId`),
  KEY `IX_7020130F` (`directDownloadURL`(255)),
  KEY `IX_8377A211` (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SCProductVersion`
--

LOCK TABLES `SCProductVersion` WRITE;
/*!40000 ALTER TABLE `SCProductVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `SCProductVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ServiceComponent`
--

DROP TABLE IF EXISTS `ServiceComponent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ServiceComponent` (
  `serviceComponentId` bigint(20) NOT NULL,
  `buildNamespace` varchar(75) DEFAULT NULL,
  `buildNumber` bigint(20) DEFAULT NULL,
  `buildDate` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`serviceComponentId`),
  UNIQUE KEY `IX_4F0315B8` (`buildNamespace`,`buildNumber`),
  KEY `IX_7338606F` (`buildNamespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ServiceComponent`
--

LOCK TABLES `ServiceComponent` WRITE;
/*!40000 ALTER TABLE `ServiceComponent` DISABLE KEYS */;
INSERT INTO `ServiceComponent` VALUES (10435,'Marketplace',4,1410828214125,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Marketplace_App (\n	uuid_ VARCHAR(75) null,\n	appId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	remoteAppId LONG,\n	title VARCHAR(75) null,\n	description STRING null,\n	category VARCHAR(75) null,\n	iconURL STRING null,\n	version VARCHAR(75) null\n);\n\ncreate table Marketplace_Module (\n	uuid_ VARCHAR(75) null,\n	moduleId LONG not null primary key,\n	appId LONG,\n	bundleSymbolicName VARCHAR(500) null,\n	bundleVersion VARCHAR(75) null,\n	contextName VARCHAR(75) null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_94A7EF25 on Marketplace_App (category);\ncreate index IX_865B7BD5 on Marketplace_App (companyId);\ncreate index IX_20F14D93 on Marketplace_App (remoteAppId);\ncreate index IX_3E667FE1 on Marketplace_App (uuid_);\ncreate index IX_A7807DA7 on Marketplace_App (uuid_, companyId);\n\ncreate index IX_7DC16D26 on Marketplace_Module (appId);\ncreate index IX_5848F52D on Marketplace_Module (appId, bundleSymbolicName, bundleVersion);\ncreate index IX_C6938724 on Marketplace_Module (appId, contextName);\ncreate index IX_DD03D499 on Marketplace_Module (bundleSymbolicName);\ncreate index IX_F2F1E964 on Marketplace_Module (contextName);\ncreate index IX_A7EFD80E on Marketplace_Module (uuid_);]]></indexes-sql>\n</data>'),(10448,'Calendar',5,1497630164307,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Calendar (\n	uuid_ VARCHAR(75) null,\n	calendarId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	calendarResourceId LONG,\n	name STRING null,\n	description STRING null,\n	timeZoneId VARCHAR(75) null,\n	color INTEGER,\n	defaultCalendar BOOLEAN,\n	enableComments BOOLEAN,\n	enableRatings BOOLEAN\n);\n\ncreate table CalendarBooking (\n	uuid_ VARCHAR(75) null,\n	calendarBookingId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	calendarId LONG,\n	calendarResourceId LONG,\n	parentCalendarBookingId LONG,\n	vEventUid VARCHAR(255) null,\n	title STRING null,\n	description TEXT null,\n	location STRING null,\n	startTime LONG,\n	endTime LONG,\n	allDay BOOLEAN,\n	recurrence STRING null,\n	firstReminder LONG,\n	firstReminderType VARCHAR(75) null,\n	secondReminder LONG,\n	secondReminderType VARCHAR(75) null,\n	status INTEGER,\n	statusByUserId LONG,\n	statusByUserName VARCHAR(75) null,\n	statusDate DATE null\n);\n\ncreate table CalendarNotificationTemplate (\n	uuid_ VARCHAR(75) null,\n	calendarNotificationTemplateId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	calendarId LONG,\n	notificationType VARCHAR(75) null,\n	notificationTypeSettings VARCHAR(75) null,\n	notificationTemplateType VARCHAR(75) null,\n	subject VARCHAR(75) null,\n	body TEXT null\n);\n\ncreate table CalendarResource (\n	uuid_ VARCHAR(75) null,\n	calendarResourceId LONG not null primary key,\n	groupId LONG,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	resourceBlockId LONG,\n	classNameId LONG,\n	classPK LONG,\n	classUuid VARCHAR(75) null,\n	code_ VARCHAR(75) null,\n	name STRING null,\n	description STRING null,\n	active_ BOOLEAN\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_B53EB0E1 on Calendar (groupId, calendarResourceId);\ncreate index IX_97FC174E on Calendar (groupId, calendarResourceId, defaultCalendar);\ncreate index IX_F0FAF226 on Calendar (resourceBlockId);\ncreate index IX_96C8590 on Calendar (uuid_);\ncreate index IX_97656498 on Calendar (uuid_, companyId);\ncreate unique index IX_3AE311A on Calendar (uuid_, groupId);\n\ncreate index IX_D300DFCE on CalendarBooking (calendarId);\ncreate unique index IX_113A264E on CalendarBooking (calendarId, parentCalendarBookingId);\ncreate index IX_470170B4 on CalendarBooking (calendarId, status);\ncreate unique index IX_8B23DA0E on CalendarBooking (calendarId, vEventUid);\ncreate index IX_B198FFC on CalendarBooking (calendarResourceId);\ncreate index IX_57EBF55B on CalendarBooking (parentCalendarBookingId);\ncreate index IX_F7B8A941 on CalendarBooking (parentCalendarBookingId, status);\ncreate index IX_22DFDB49 on CalendarBooking (resourceBlockId);\ncreate index IX_F6E8EE73 on CalendarBooking (uuid_);\ncreate index IX_A21D9FD5 on CalendarBooking (uuid_, companyId);\ncreate unique index IX_F4C61797 on CalendarBooking (uuid_, groupId);\n\ncreate index IX_A412E5B6 on CalendarNotificationTemplate (calendarId);\ncreate index IX_7727A482 on CalendarNotificationTemplate (calendarId, notificationType, notificationTemplateType);\ncreate index IX_A2D4D78B on CalendarNotificationTemplate (uuid_);\ncreate index IX_4D7D97BD on CalendarNotificationTemplate (uuid_, companyId);\ncreate unique index IX_4012E97F on CalendarNotificationTemplate (uuid_, groupId);\n\ncreate index IX_76DDD0F7 on CalendarResource (active_);\ncreate unique index IX_16A12327 on CalendarResource (classNameId, classPK);\ncreate index IX_4470A59D on CalendarResource (companyId, code_, active_);\ncreate index IX_1243D698 on CalendarResource (groupId);\ncreate index IX_40678371 on CalendarResource (groupId, active_);\ncreate index IX_55C2F8AA on CalendarResource (groupId, code_);\ncreate index IX_8BCB4D38 on CalendarResource (resourceBlockId);\ncreate index IX_150E2F22 on CalendarResource (uuid_);\ncreate index IX_56A06BC6 on CalendarResource (uuid_, companyId);\ncreate unique index IX_4ABD2BC8 on CalendarResource (uuid_, groupId);]]></indexes-sql>\n</data>');
/*!40000 ALTER TABLE `ServiceComponent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Shard`
--

DROP TABLE IF EXISTS `Shard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Shard` (
  `shardId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`shardId`),
  KEY `IX_DA5F4359` (`classNameId`,`classPK`),
  KEY `IX_941BA8C3` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Shard`
--

LOCK TABLES `Shard` WRITE;
/*!40000 ALTER TABLE `Shard` DISABLE KEYS */;
INSERT INTO `Shard` VALUES (10156,10025,10155,'default');
/*!40000 ALTER TABLE `Shard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingCart`
--

DROP TABLE IF EXISTS `ShoppingCart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingCart` (
  `cartId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `itemIds` longtext,
  `couponCodes` varchar(75) DEFAULT NULL,
  `altShipping` int(11) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`cartId`),
  UNIQUE KEY `IX_FC46FE16` (`groupId`,`userId`),
  KEY `IX_C28B41DC` (`groupId`),
  KEY `IX_54101CC8` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingCart`
--

LOCK TABLES `ShoppingCart` WRITE;
/*!40000 ALTER TABLE `ShoppingCart` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingCart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingCategory`
--

DROP TABLE IF EXISTS `ShoppingCategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingCategory` (
  `categoryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentCategoryId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`categoryId`),
  KEY `IX_5F615D3E` (`groupId`),
  KEY `IX_1E6464F5` (`groupId`,`parentCategoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingCategory`
--

LOCK TABLES `ShoppingCategory` WRITE;
/*!40000 ALTER TABLE `ShoppingCategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingCategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingCoupon`
--

DROP TABLE IF EXISTS `ShoppingCoupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingCoupon` (
  `couponId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `code_` varchar(75) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `limitCategories` longtext,
  `limitSkus` longtext,
  `minOrder` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `discountType` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`couponId`),
  UNIQUE KEY `IX_DC60CFAE` (`code_`),
  KEY `IX_3251AF16` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingCoupon`
--

LOCK TABLES `ShoppingCoupon` WRITE;
/*!40000 ALTER TABLE `ShoppingCoupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingCoupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingItem`
--

DROP TABLE IF EXISTS `ShoppingItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingItem` (
  `itemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `fields_` tinyint(4) DEFAULT NULL,
  `fieldsQuantities` longtext,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `stockQuantity` int(11) DEFAULT NULL,
  `featured_` tinyint(4) DEFAULT NULL,
  `sale_` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  `mediumImage` tinyint(4) DEFAULT NULL,
  `mediumImageId` bigint(20) DEFAULT NULL,
  `mediumImageURL` longtext,
  `largeImage` tinyint(4) DEFAULT NULL,
  `largeImageId` bigint(20) DEFAULT NULL,
  `largeImageURL` longtext,
  PRIMARY KEY (`itemId`),
  UNIQUE KEY `IX_1C717CA6` (`companyId`,`sku`),
  KEY `IX_FEFE7D76` (`groupId`,`categoryId`),
  KEY `IX_903DC750` (`largeImageId`),
  KEY `IX_D217AB30` (`mediumImageId`),
  KEY `IX_FF203304` (`smallImageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingItem`
--

LOCK TABLES `ShoppingItem` WRITE;
/*!40000 ALTER TABLE `ShoppingItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingItemField`
--

DROP TABLE IF EXISTS `ShoppingItemField`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingItemField` (
  `itemFieldId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `values_` longtext,
  `description` longtext,
  PRIMARY KEY (`itemFieldId`),
  KEY `IX_6D5F9B87` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingItemField`
--

LOCK TABLES `ShoppingItemField` WRITE;
/*!40000 ALTER TABLE `ShoppingItemField` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingItemField` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingItemPrice`
--

DROP TABLE IF EXISTS `ShoppingItemPrice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingItemPrice` (
  `itemPriceId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `minQuantity` int(11) DEFAULT NULL,
  `maxQuantity` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `taxable` tinyint(4) DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `useShippingFormula` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`itemPriceId`),
  KEY `IX_EA6FD516` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingItemPrice`
--

LOCK TABLES `ShoppingItemPrice` WRITE;
/*!40000 ALTER TABLE `ShoppingItemPrice` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingItemPrice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingOrder`
--

DROP TABLE IF EXISTS `ShoppingOrder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingOrder` (
  `orderId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `number_` varchar(75) DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `shipping` double DEFAULT NULL,
  `altShipping` varchar(75) DEFAULT NULL,
  `requiresShipping` tinyint(4) DEFAULT NULL,
  `insure` tinyint(4) DEFAULT NULL,
  `insurance` double DEFAULT NULL,
  `couponCodes` varchar(75) DEFAULT NULL,
  `couponDiscount` double DEFAULT NULL,
  `billingFirstName` varchar(75) DEFAULT NULL,
  `billingLastName` varchar(75) DEFAULT NULL,
  `billingEmailAddress` varchar(75) DEFAULT NULL,
  `billingCompany` varchar(75) DEFAULT NULL,
  `billingStreet` varchar(75) DEFAULT NULL,
  `billingCity` varchar(75) DEFAULT NULL,
  `billingState` varchar(75) DEFAULT NULL,
  `billingZip` varchar(75) DEFAULT NULL,
  `billingCountry` varchar(75) DEFAULT NULL,
  `billingPhone` varchar(75) DEFAULT NULL,
  `shipToBilling` tinyint(4) DEFAULT NULL,
  `shippingFirstName` varchar(75) DEFAULT NULL,
  `shippingLastName` varchar(75) DEFAULT NULL,
  `shippingEmailAddress` varchar(75) DEFAULT NULL,
  `shippingCompany` varchar(75) DEFAULT NULL,
  `shippingStreet` varchar(75) DEFAULT NULL,
  `shippingCity` varchar(75) DEFAULT NULL,
  `shippingState` varchar(75) DEFAULT NULL,
  `shippingZip` varchar(75) DEFAULT NULL,
  `shippingCountry` varchar(75) DEFAULT NULL,
  `shippingPhone` varchar(75) DEFAULT NULL,
  `ccName` varchar(75) DEFAULT NULL,
  `ccType` varchar(75) DEFAULT NULL,
  `ccNumber` varchar(75) DEFAULT NULL,
  `ccExpMonth` int(11) DEFAULT NULL,
  `ccExpYear` int(11) DEFAULT NULL,
  `ccVerNumber` varchar(75) DEFAULT NULL,
  `comments` longtext,
  `ppTxnId` varchar(75) DEFAULT NULL,
  `ppPaymentStatus` varchar(75) DEFAULT NULL,
  `ppPaymentGross` double DEFAULT NULL,
  `ppReceiverEmail` varchar(75) DEFAULT NULL,
  `ppPayerEmail` varchar(75) DEFAULT NULL,
  `sendOrderEmail` tinyint(4) DEFAULT NULL,
  `sendShippingEmail` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`orderId`),
  UNIQUE KEY `IX_D7D6E87A` (`number_`),
  KEY `IX_1D15553E` (`groupId`),
  KEY `IX_119B5630` (`groupId`,`userId`,`ppPaymentStatus`),
  KEY `IX_F474FD89` (`ppTxnId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingOrder`
--

LOCK TABLES `ShoppingOrder` WRITE;
/*!40000 ALTER TABLE `ShoppingOrder` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingOrder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ShoppingOrderItem`
--

DROP TABLE IF EXISTS `ShoppingOrderItem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ShoppingOrderItem` (
  `orderItemId` bigint(20) NOT NULL,
  `orderId` bigint(20) DEFAULT NULL,
  `itemId` varchar(75) DEFAULT NULL,
  `sku` varchar(75) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `description` longtext,
  `properties` longtext,
  `price` double DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `shippedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`orderItemId`),
  KEY `IX_B5F82C7A` (`orderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ShoppingOrderItem`
--

LOCK TABLES `ShoppingOrderItem` WRITE;
/*!40000 ALTER TABLE `ShoppingOrderItem` DISABLE KEYS */;
/*!40000 ALTER TABLE `ShoppingOrderItem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivity`
--

DROP TABLE IF EXISTS `SocialActivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivity` (
  `activityId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `activitySetId` bigint(20) DEFAULT NULL,
  `mirrorActivityId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentClassNameId` bigint(20) DEFAULT NULL,
  `parentClassPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`activityId`),
  UNIQUE KEY `IX_8F32DEC9` (`groupId`,`userId`,`createDate`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_F542E9BC` (`activitySetId`),
  KEY `IX_82E39A0C` (`classNameId`),
  KEY `IX_A853C757` (`classNameId`,`classPK`),
  KEY `IX_D0E9029E` (`classNameId`,`classPK`,`type_`),
  KEY `IX_64B1BC66` (`companyId`),
  KEY `IX_2A2468` (`groupId`),
  KEY `IX_FB604DC7` (`groupId`,`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_1271F25F` (`mirrorActivityId`),
  KEY `IX_1F00C374` (`mirrorActivityId`,`classNameId`,`classPK`),
  KEY `IX_121CA3CB` (`receiverUserId`),
  KEY `IX_3504B8BC` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivity`
--

LOCK TABLES `SocialActivity` WRITE;
/*!40000 ALTER TABLE `SocialActivity` DISABLE KEYS */;
INSERT INTO `SocialActivity` VALUES (1,10182,10155,10199,1528853532683,0,0,10445,10492,0,0,1,'{\"title\":\"<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\\\"en_US\\\" default-locale=\\\"en_US\\\"><Title language-id=\\\"en_US\\\">Calendar Event Title<\\/Title><\\/root>\"}',0);
/*!40000 ALTER TABLE `SocialActivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivityAchievement`
--

DROP TABLE IF EXISTS `SocialActivityAchievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivityAchievement` (
  `activityAchievementId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `firstInGroup` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activityAchievementId`),
  UNIQUE KEY `IX_D4390CAA` (`groupId`,`userId`,`name`),
  KEY `IX_E14B1F1` (`groupId`),
  KEY `IX_83E16F2F` (`groupId`,`firstInGroup`),
  KEY `IX_8F6408F0` (`groupId`,`name`),
  KEY `IX_C8FD892B` (`groupId`,`userId`),
  KEY `IX_AABC18E9` (`groupId`,`userId`,`firstInGroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivityAchievement`
--

LOCK TABLES `SocialActivityAchievement` WRITE;
/*!40000 ALTER TABLE `SocialActivityAchievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivityAchievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivityCounter`
--

DROP TABLE IF EXISTS `SocialActivityCounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivityCounter` (
  `activityCounterId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `currentValue` int(11) DEFAULT NULL,
  `totalValue` int(11) DEFAULT NULL,
  `graceValue` int(11) DEFAULT NULL,
  `startPeriod` int(11) DEFAULT NULL,
  `endPeriod` int(11) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`activityCounterId`),
  UNIQUE KEY `IX_1B7E3B67` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`endPeriod`),
  UNIQUE KEY `IX_374B35AE` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`startPeriod`),
  KEY `IX_A4B9A23B` (`classNameId`,`classPK`),
  KEY `IX_D6666704` (`groupId`),
  KEY `IX_926CDD04` (`groupId`,`classNameId`,`classPK`,`ownerType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivityCounter`
--

LOCK TABLES `SocialActivityCounter` WRITE;
/*!40000 ALTER TABLE `SocialActivityCounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivityCounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivityLimit`
--

DROP TABLE IF EXISTS `SocialActivityLimit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivityLimit` (
  `activityLimitId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `activityCounterName` varchar(75) DEFAULT NULL,
  `value` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`activityLimitId`),
  UNIQUE KEY `IX_F1C1A617` (`groupId`,`userId`,`classNameId`,`classPK`,`activityType`,`activityCounterName`),
  KEY `IX_B15863FA` (`classNameId`,`classPK`),
  KEY `IX_18D4BAE5` (`groupId`),
  KEY `IX_6F9EDE9F` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivityLimit`
--

LOCK TABLES `SocialActivityLimit` WRITE;
/*!40000 ALTER TABLE `SocialActivityLimit` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivityLimit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivitySet`
--

DROP TABLE IF EXISTS `SocialActivitySet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivitySet` (
  `activitySetId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `activityCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`activitySetId`),
  KEY `IX_4460FA14` (`classNameId`,`classPK`,`type_`),
  KEY `IX_9E13F2DE` (`groupId`),
  KEY `IX_9BE30DDF` (`groupId`,`userId`,`classNameId`,`type_`),
  KEY `IX_F71071BD` (`groupId`,`userId`,`type_`),
  KEY `IX_F80C4386` (`userId`),
  KEY `IX_62AC101A` (`userId`,`classNameId`,`classPK`,`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivitySet`
--

LOCK TABLES `SocialActivitySet` WRITE;
/*!40000 ALTER TABLE `SocialActivitySet` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivitySet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialActivitySetting`
--

DROP TABLE IF EXISTS `SocialActivitySetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialActivitySetting` (
  `activitySettingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `value` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`activitySettingId`),
  KEY `IX_8BE5F230` (`groupId`),
  KEY `IX_384788CD` (`groupId`,`activityType`),
  KEY `IX_9D22151E` (`groupId`,`classNameId`),
  KEY `IX_1E9CF33B` (`groupId`,`classNameId`,`activityType`),
  KEY `IX_D984AABA` (`groupId`,`classNameId`,`activityType`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialActivitySetting`
--

LOCK TABLES `SocialActivitySetting` WRITE;
/*!40000 ALTER TABLE `SocialActivitySetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialActivitySetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialRelation`
--

DROP TABLE IF EXISTS `SocialRelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialRelation` (
  `uuid_` varchar(75) DEFAULT NULL,
  `relationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `userId1` bigint(20) DEFAULT NULL,
  `userId2` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`relationId`),
  UNIQUE KEY `IX_12A92145` (`userId1`,`userId2`,`type_`),
  KEY `IX_61171E99` (`companyId`),
  KEY `IX_95135D1C` (`companyId`,`type_`),
  KEY `IX_C31A64C6` (`type_`),
  KEY `IX_5A40CDCC` (`userId1`),
  KEY `IX_4B52BE89` (`userId1`,`type_`),
  KEY `IX_B5C9C690` (`userId1`,`userId2`),
  KEY `IX_5A40D18D` (`userId2`),
  KEY `IX_3F9C2FA8` (`userId2`,`type_`),
  KEY `IX_F0CA24A5` (`uuid_`),
  KEY `IX_5B30F663` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialRelation`
--

LOCK TABLES `SocialRelation` WRITE;
/*!40000 ALTER TABLE `SocialRelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialRelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SocialRequest`
--

DROP TABLE IF EXISTS `SocialRequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SocialRequest` (
  `uuid_` varchar(75) DEFAULT NULL,
  `requestId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `modifiedDate` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`requestId`),
  UNIQUE KEY `IX_36A90CA7` (`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  UNIQUE KEY `IX_4F973EFE` (`uuid_`,`groupId`),
  KEY `IX_D3425487` (`classNameId`,`classPK`,`type_`,`receiverUserId`,`status`),
  KEY `IX_A90FE5A0` (`companyId`),
  KEY `IX_32292ED1` (`receiverUserId`),
  KEY `IX_D9380CB7` (`receiverUserId`,`status`),
  KEY `IX_80F7A9C2` (`userId`),
  KEY `IX_CC86A444` (`userId`,`classNameId`,`classPK`,`type_`,`status`),
  KEY `IX_AB5906A8` (`userId`,`status`),
  KEY `IX_49D5872C` (`uuid_`),
  KEY `IX_8D42897C` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SocialRequest`
--

LOCK TABLES `SocialRequest` WRITE;
/*!40000 ALTER TABLE `SocialRequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `SocialRequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Subscription`
--

DROP TABLE IF EXISTS `Subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Subscription` (
  `subscriptionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `frequency` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`subscriptionId`),
  UNIQUE KEY `IX_2E1A92D4` (`companyId`,`userId`,`classNameId`,`classPK`),
  KEY `IX_786D171A` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_54243AFD` (`userId`),
  KEY `IX_E8F34171` (`userId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Subscription`
--

LOCK TABLES `Subscription` WRITE;
/*!40000 ALTER TABLE `Subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `Subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SystemEvent`
--

DROP TABLE IF EXISTS `SystemEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SystemEvent` (
  `systemEventId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `classUuid` varchar(75) DEFAULT NULL,
  `referrerClassNameId` bigint(20) DEFAULT NULL,
  `parentSystemEventId` bigint(20) DEFAULT NULL,
  `systemEventSetKey` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  PRIMARY KEY (`systemEventId`),
  KEY `IX_72D73D39` (`groupId`),
  KEY `IX_7A2F0ECE` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_FFCBB747` (`groupId`,`classNameId`,`classPK`,`type_`),
  KEY `IX_A19C89FF` (`groupId`,`systemEventSetKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SystemEvent`
--

LOCK TABLES `SystemEvent` WRITE;
/*!40000 ALTER TABLE `SystemEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `SystemEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Team`
--

DROP TABLE IF EXISTS `Team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Team` (
  `teamId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`teamId`),
  UNIQUE KEY `IX_143DC786` (`groupId`,`name`),
  KEY `IX_AE6E9907` (`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Team`
--

LOCK TABLES `Team` WRITE;
/*!40000 ALTER TABLE `Team` DISABLE KEYS */;
/*!40000 ALTER TABLE `Team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Ticket`
--

DROP TABLE IF EXISTS `Ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ticket` (
  `ticketId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `key_` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraInfo` longtext,
  `expirationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ticketId`),
  KEY `IX_B2468446` (`key_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ticket`
--

LOCK TABLES `Ticket` WRITE;
/*!40000 ALTER TABLE `Ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `Ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TrashEntry`
--

DROP TABLE IF EXISTS `TrashEntry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TrashEntry` (
  `entryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `systemEventSetKey` bigint(20) DEFAULT NULL,
  `typeSettings` longtext,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_B35F73D5` (`classNameId`,`classPK`),
  KEY `IX_2674F2A8` (`companyId`),
  KEY `IX_526A032A` (`groupId`),
  KEY `IX_FC4EEA64` (`groupId`,`classNameId`),
  KEY `IX_6CAAE2E8` (`groupId`,`createDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TrashEntry`
--

LOCK TABLES `TrashEntry` WRITE;
/*!40000 ALTER TABLE `TrashEntry` DISABLE KEYS */;
/*!40000 ALTER TABLE `TrashEntry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `TrashVersion`
--

DROP TABLE IF EXISTS `TrashVersion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `TrashVersion` (
  `versionId` bigint(20) NOT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typeSettings` longtext,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`versionId`),
  UNIQUE KEY `IX_D639348C` (`entryId`,`classNameId`,`classPK`),
  KEY `IX_630A643B` (`classNameId`,`classPK`),
  KEY `IX_55D44577` (`entryId`),
  KEY `IX_72D58D37` (`entryId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `TrashVersion`
--

LOCK TABLES `TrashVersion` WRITE;
/*!40000 ALTER TABLE `TrashVersion` DISABLE KEYS */;
/*!40000 ALTER TABLE `TrashVersion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroup`
--

DROP TABLE IF EXISTS `UserGroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroup` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userGroupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `parentUserGroupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `addedByLDAPImport` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userGroupId`),
  UNIQUE KEY `IX_23EAD0D` (`companyId`,`name`),
  KEY `IX_524FEFCE` (`companyId`),
  KEY `IX_69771487` (`companyId`,`parentUserGroupId`),
  KEY `IX_5F1DD85A` (`uuid_`),
  KEY `IX_72394F8E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroup`
--

LOCK TABLES `UserGroup` WRITE;
/*!40000 ALTER TABLE `UserGroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroupGroupRole`
--

DROP TABLE IF EXISTS `UserGroupGroupRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroupGroupRole` (
  `userGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userGroupId`,`groupId`,`roleId`),
  KEY `IX_CCBE4063` (`groupId`),
  KEY `IX_CAB0CCC8` (`groupId`,`roleId`),
  KEY `IX_1CDF88C` (`roleId`),
  KEY `IX_DCDED558` (`userGroupId`),
  KEY `IX_73C52252` (`userGroupId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroupGroupRole`
--

LOCK TABLES `UserGroupGroupRole` WRITE;
/*!40000 ALTER TABLE `UserGroupGroupRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroupGroupRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroupRole`
--

DROP TABLE IF EXISTS `UserGroupRole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroupRole` (
  `userId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`groupId`,`roleId`),
  KEY `IX_1B988D7A` (`groupId`),
  KEY `IX_871412DF` (`groupId`,`roleId`),
  KEY `IX_887A2C95` (`roleId`),
  KEY `IX_887BE56A` (`userId`),
  KEY `IX_4D040680` (`userId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroupRole`
--

LOCK TABLES `UserGroupRole` WRITE;
/*!40000 ALTER TABLE `UserGroupRole` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroupRole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserGroups_Teams`
--

DROP TABLE IF EXISTS `UserGroups_Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserGroups_Teams` (
  `teamId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`teamId`,`userGroupId`),
  KEY `IX_31FB0B08` (`teamId`),
  KEY `IX_7F187E63` (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserGroups_Teams`
--

LOCK TABLES `UserGroups_Teams` WRITE;
/*!40000 ALTER TABLE `UserGroups_Teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserGroups_Teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserIdMapper`
--

DROP TABLE IF EXISTS `UserIdMapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserIdMapper` (
  `userIdMapperId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  `externalUserId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`userIdMapperId`),
  UNIQUE KEY `IX_41A32E0D` (`type_`,`externalUserId`),
  UNIQUE KEY `IX_D1C44A6E` (`userId`,`type_`),
  KEY `IX_E60EA987` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserIdMapper`
--

LOCK TABLES `UserIdMapper` WRITE;
/*!40000 ALTER TABLE `UserIdMapper` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserIdMapper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserNotificationDelivery`
--

DROP TABLE IF EXISTS `UserNotificationDelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserNotificationDelivery` (
  `userNotificationDeliveryId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `notificationType` int(11) DEFAULT NULL,
  `deliveryType` int(11) DEFAULT NULL,
  `deliver` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userNotificationDeliveryId`),
  UNIQUE KEY `IX_8B6E3ACE` (`userId`,`portletId`,`classNameId`,`notificationType`,`deliveryType`),
  KEY `IX_C648700A` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserNotificationDelivery`
--

LOCK TABLES `UserNotificationDelivery` WRITE;
/*!40000 ALTER TABLE `UserNotificationDelivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserNotificationDelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserNotificationEvent`
--

DROP TABLE IF EXISTS `UserNotificationEvent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserNotificationEvent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userNotificationEventId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `deliverBy` bigint(20) DEFAULT NULL,
  `delivered` tinyint(4) DEFAULT NULL,
  `payload` longtext,
  `archived` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userNotificationEventId`),
  KEY `IX_3E5D78C4` (`userId`),
  KEY `IX_3DBB361A` (`userId`,`archived`),
  KEY `IX_24F1BF0` (`userId`,`delivered`),
  KEY `IX_ECD8CFEA` (`uuid_`),
  KEY `IX_A6BAFDFE` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserNotificationEvent`
--

LOCK TABLES `UserNotificationEvent` WRITE;
/*!40000 ALTER TABLE `UserNotificationEvent` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserNotificationEvent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserTracker`
--

DROP TABLE IF EXISTS `UserTracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserTracker` (
  `userTrackerId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `sessionId` varchar(200) DEFAULT NULL,
  `remoteAddr` varchar(75) DEFAULT NULL,
  `remoteHost` varchar(75) DEFAULT NULL,
  `userAgent` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`userTrackerId`),
  KEY `IX_29BA1CF5` (`companyId`),
  KEY `IX_46B0AE8E` (`sessionId`),
  KEY `IX_E4EFBA8D` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserTracker`
--

LOCK TABLES `UserTracker` WRITE;
/*!40000 ALTER TABLE `UserTracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserTracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserTrackerPath`
--

DROP TABLE IF EXISTS `UserTrackerPath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserTrackerPath` (
  `userTrackerPathId` bigint(20) NOT NULL,
  `userTrackerId` bigint(20) DEFAULT NULL,
  `path_` longtext,
  `pathDate` datetime DEFAULT NULL,
  PRIMARY KEY (`userTrackerPathId`),
  KEY `IX_14D8BCC0` (`userTrackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserTrackerPath`
--

LOCK TABLES `UserTrackerPath` WRITE;
/*!40000 ALTER TABLE `UserTrackerPath` DISABLE KEYS */;
/*!40000 ALTER TABLE `UserTrackerPath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User_`
--

DROP TABLE IF EXISTS `User_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User_` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `defaultUser` tinyint(4) DEFAULT NULL,
  `contactId` bigint(20) DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  `passwordEncrypted` tinyint(4) DEFAULT NULL,
  `passwordReset` tinyint(4) DEFAULT NULL,
  `passwordModifiedDate` datetime DEFAULT NULL,
  `digest` varchar(255) DEFAULT NULL,
  `reminderQueryQuestion` varchar(75) DEFAULT NULL,
  `reminderQueryAnswer` varchar(75) DEFAULT NULL,
  `graceLoginCount` int(11) DEFAULT NULL,
  `screenName` varchar(75) DEFAULT NULL,
  `emailAddress` varchar(75) DEFAULT NULL,
  `facebookId` bigint(20) DEFAULT NULL,
  `ldapServerId` bigint(20) DEFAULT NULL,
  `openId` varchar(1024) DEFAULT NULL,
  `portraitId` bigint(20) DEFAULT NULL,
  `languageId` varchar(75) DEFAULT NULL,
  `timeZoneId` varchar(75) DEFAULT NULL,
  `greeting` varchar(255) DEFAULT NULL,
  `comments` longtext,
  `firstName` varchar(75) DEFAULT NULL,
  `middleName` varchar(75) DEFAULT NULL,
  `lastName` varchar(75) DEFAULT NULL,
  `jobTitle` varchar(100) DEFAULT NULL,
  `loginDate` datetime DEFAULT NULL,
  `loginIP` varchar(75) DEFAULT NULL,
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginIP` varchar(75) DEFAULT NULL,
  `lastFailedLoginDate` datetime DEFAULT NULL,
  `failedLoginAttempts` int(11) DEFAULT NULL,
  `lockout` tinyint(4) DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `agreedToTermsOfUse` tinyint(4) DEFAULT NULL,
  `emailAddressVerified` tinyint(4) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `IX_615E9F7A` (`companyId`,`emailAddress`),
  UNIQUE KEY `IX_C5806019` (`companyId`,`screenName`),
  UNIQUE KEY `IX_9782AD88` (`companyId`,`userId`),
  UNIQUE KEY `IX_5ADBE171` (`contactId`),
  KEY `IX_3A1E834E` (`companyId`),
  KEY `IX_740C4D0C` (`companyId`,`createDate`),
  KEY `IX_BCFDA257` (`companyId`,`createDate`,`modifiedDate`),
  KEY `IX_6EF03E4E` (`companyId`,`defaultUser`),
  KEY `IX_1D731F03` (`companyId`,`facebookId`),
  KEY `IX_EE8ABD19` (`companyId`,`modifiedDate`),
  KEY `IX_89509087` (`companyId`,`openId`(255)),
  KEY `IX_F6039434` (`companyId`,`status`),
  KEY `IX_762F63C6` (`emailAddress`),
  KEY `IX_A18034A4` (`portraitId`),
  KEY `IX_E0422BDA` (`uuid_`),
  KEY `IX_405CC0E` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User_`
--

LOCK TABLES `User_` WRITE;
/*!40000 ALTER TABLE `User_` DISABLE KEYS */;
INSERT INTO `User_` VALUES ('a2135e53-c537-4f9b-646c-220184d12b2e',10159,10155,'2018-06-13 01:30:11','2018-06-13 01:30:11',1,10160,'password',0,0,NULL,'5533ed38b5e33c076a804bb4bca644f9,3122172330a991cc1e9575c4f75428d4,3122172330a991cc1e9575c4f75428d4','','',0,'10159','default@liferay.com',0,0,'',0,'en_US','UTC','Welcome!','','','','','','2018-06-13 01:30:11','',NULL,'',NULL,0,0,NULL,1,0,0),('46e10dd9-6bb4-1915-eb12-c18aec8c33ad',10199,10155,'2018-06-13 01:30:12','2018-06-13 01:30:12',0,10200,'AAAAoAAB9ADP2n3Jk0UWZ5uNfWtiyMhIH75Y6aUisTRCdMLm',1,0,NULL,'e5d86c6f3672e52795891c3597f20de0,751da756639bc033b572ba2e7849b589,0d964023b6532e1cb17d96b98642eb31','what-is-your-father\'s-middle-name','test',0,'test','test@liferay.com',0,-1,'',0,'en_US','UTC','Welcome Test Test!','','Test','','Test','','2018-06-13 01:31:27','127.0.0.1','2018-06-13 01:30:13','127.0.0.1',NULL,0,0,NULL,1,1,0);
/*!40000 ALTER TABLE `User_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Groups`
--

DROP TABLE IF EXISTS `Users_Groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Groups` (
  `groupId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userId`),
  KEY `IX_C4F9E699` (`groupId`),
  KEY `IX_F10B6C6B` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Groups`
--

LOCK TABLES `Users_Groups` WRITE;
/*!40000 ALTER TABLE `Users_Groups` DISABLE KEYS */;
INSERT INTO `Users_Groups` VALUES (10182,10199);
/*!40000 ALTER TABLE `Users_Groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Orgs`
--

DROP TABLE IF EXISTS `Users_Orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Orgs` (
  `organizationId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`userId`),
  KEY `IX_7EF4EC0E` (`organizationId`),
  KEY `IX_FB646CA6` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Orgs`
--

LOCK TABLES `Users_Orgs` WRITE;
/*!40000 ALTER TABLE `Users_Orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users_Orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Roles`
--

DROP TABLE IF EXISTS `Users_Roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Roles` (
  `roleId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`roleId`,`userId`),
  KEY `IX_C19E5F31` (`roleId`),
  KEY `IX_C1A01806` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Roles`
--

LOCK TABLES `Users_Roles` WRITE;
/*!40000 ALTER TABLE `Users_Roles` DISABLE KEYS */;
INSERT INTO `Users_Roles` VALUES (10162,10199),(10163,10159),(10165,10199),(10166,10199);
/*!40000 ALTER TABLE `Users_Roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_Teams`
--

DROP TABLE IF EXISTS `Users_Teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_Teams` (
  `teamId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`teamId`,`userId`),
  KEY `IX_4D06AD51` (`teamId`),
  KEY `IX_A098EFBF` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_Teams`
--

LOCK TABLES `Users_Teams` WRITE;
/*!40000 ALTER TABLE `Users_Teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users_Teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users_UserGroups`
--

DROP TABLE IF EXISTS `Users_UserGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users_UserGroups` (
  `userId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`userGroupId`),
  KEY `IX_66FF2503` (`userGroupId`),
  KEY `IX_BE8102D6` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users_UserGroups`
--

LOCK TABLES `Users_UserGroups` WRITE;
/*!40000 ALTER TABLE `Users_UserGroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users_UserGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VirtualHost`
--

DROP TABLE IF EXISTS `VirtualHost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `VirtualHost` (
  `virtualHostId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `layoutSetId` bigint(20) DEFAULT NULL,
  `hostname` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`virtualHostId`),
  UNIQUE KEY `IX_A083D394` (`companyId`,`layoutSetId`),
  UNIQUE KEY `IX_431A3960` (`hostname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VirtualHost`
--

LOCK TABLES `VirtualHost` WRITE;
/*!40000 ALTER TABLE `VirtualHost` DISABLE KEYS */;
INSERT INTO `VirtualHost` VALUES (10158,10155,0,'localhost');
/*!40000 ALTER TABLE `VirtualHost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WebDAVProps`
--

DROP TABLE IF EXISTS `WebDAVProps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WebDAVProps` (
  `webDavPropsId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `props` longtext,
  PRIMARY KEY (`webDavPropsId`),
  UNIQUE KEY `IX_97DFA146` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WebDAVProps`
--

LOCK TABLES `WebDAVProps` WRITE;
/*!40000 ALTER TABLE `WebDAVProps` DISABLE KEYS */;
/*!40000 ALTER TABLE `WebDAVProps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Website`
--

DROP TABLE IF EXISTS `Website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Website` (
  `uuid_` varchar(75) DEFAULT NULL,
  `websiteId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `url` longtext,
  `typeId` int(11) DEFAULT NULL,
  `primary_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`websiteId`),
  KEY `IX_96F07007` (`companyId`),
  KEY `IX_4F0F0CA7` (`companyId`,`classNameId`),
  KEY `IX_F960131C` (`companyId`,`classNameId`,`classPK`),
  KEY `IX_1AA07A6D` (`companyId`,`classNameId`,`classPK`,`primary_`),
  KEY `IX_F75690BB` (`userId`),
  KEY `IX_76F15D13` (`uuid_`),
  KEY `IX_712BCD35` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Website`
--

LOCK TABLES `Website` WRITE;
/*!40000 ALTER TABLE `Website` DISABLE KEYS */;
/*!40000 ALTER TABLE `Website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WikiNode`
--

DROP TABLE IF EXISTS `WikiNode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WikiNode` (
  `uuid_` varchar(75) DEFAULT NULL,
  `nodeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`nodeId`),
  UNIQUE KEY `IX_920CD8B1` (`groupId`,`name`),
  UNIQUE KEY `IX_7609B2AE` (`uuid_`,`groupId`),
  KEY `IX_5D6FE3F0` (`companyId`),
  KEY `IX_B54332D6` (`companyId`,`status`),
  KEY `IX_B480A672` (`groupId`),
  KEY `IX_23325358` (`groupId`,`status`),
  KEY `IX_6C112D7C` (`uuid_`),
  KEY `IX_E0E6D12C` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WikiNode`
--

LOCK TABLES `WikiNode` WRITE;
/*!40000 ALTER TABLE `WikiNode` DISABLE KEYS */;
/*!40000 ALTER TABLE `WikiNode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WikiPage`
--

DROP TABLE IF EXISTS `WikiPage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WikiPage` (
  `uuid_` varchar(75) DEFAULT NULL,
  `pageId` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `version` double DEFAULT NULL,
  `minorEdit` tinyint(4) DEFAULT NULL,
  `content` longtext,
  `summary` longtext,
  `format` varchar(75) DEFAULT NULL,
  `head` tinyint(4) DEFAULT NULL,
  `parentTitle` varchar(255) DEFAULT NULL,
  `redirectTitle` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`pageId`),
  UNIQUE KEY `IX_3D4AF476` (`nodeId`,`title`,`version`),
  UNIQUE KEY `IX_2CD67C81` (`resourcePrimKey`,`nodeId`,`version`),
  UNIQUE KEY `IX_899D3DFB` (`uuid_`,`groupId`),
  KEY `IX_A2001730` (`format`),
  KEY `IX_16E99B0A` (`groupId`,`nodeId`,`head`),
  KEY `IX_BA72B89A` (`groupId`,`nodeId`,`head`,`parentTitle`,`status`),
  KEY `IX_E0092FF0` (`groupId`,`nodeId`,`head`,`status`),
  KEY `IX_941E429C` (`groupId`,`nodeId`,`status`),
  KEY `IX_5FF21CE6` (`groupId`,`nodeId`,`title`,`head`),
  KEY `IX_CAA451D6` (`groupId`,`userId`,`nodeId`,`status`),
  KEY `IX_C8A9C476` (`nodeId`),
  KEY `IX_E7F635CA` (`nodeId`,`head`),
  KEY `IX_65E84AF4` (`nodeId`,`head`,`parentTitle`),
  KEY `IX_9F7655DA` (`nodeId`,`head`,`parentTitle`,`status`),
  KEY `IX_40F94F68` (`nodeId`,`head`,`redirectTitle`,`status`),
  KEY `IX_432F0AB0` (`nodeId`,`head`,`status`),
  KEY `IX_46EEF3C8` (`nodeId`,`parentTitle`),
  KEY `IX_1ECC7656` (`nodeId`,`redirectTitle`),
  KEY `IX_546F2D5C` (`nodeId`,`status`),
  KEY `IX_997EEDD2` (`nodeId`,`title`),
  KEY `IX_E745EA26` (`nodeId`,`title`,`head`),
  KEY `IX_BEA33AB8` (`nodeId`,`title`,`status`),
  KEY `IX_85E7CC76` (`resourcePrimKey`),
  KEY `IX_B771D67` (`resourcePrimKey`,`nodeId`),
  KEY `IX_E1F55FB` (`resourcePrimKey`,`nodeId`,`head`),
  KEY `IX_94D1054D` (`resourcePrimKey`,`nodeId`,`status`),
  KEY `IX_1725355C` (`resourcePrimKey`,`status`),
  KEY `IX_FBBE7C96` (`userId`,`nodeId`,`status`),
  KEY `IX_9C0E478F` (`uuid_`),
  KEY `IX_5DC4BD39` (`uuid_`,`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WikiPage`
--

LOCK TABLES `WikiPage` WRITE;
/*!40000 ALTER TABLE `WikiPage` DISABLE KEYS */;
/*!40000 ALTER TABLE `WikiPage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WikiPageResource`
--

DROP TABLE IF EXISTS `WikiPageResource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WikiPageResource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`),
  UNIQUE KEY `IX_21277664` (`nodeId`,`title`),
  KEY `IX_BE898221` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WikiPageResource`
--

LOCK TABLES `WikiPageResource` WRITE;
/*!40000 ALTER TABLE `WikiPageResource` DISABLE KEYS */;
/*!40000 ALTER TABLE `WikiPageResource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowDefinitionLink`
--

DROP TABLE IF EXISTS `WorkflowDefinitionLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowDefinitionLink` (
  `workflowDefinitionLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `typePK` bigint(20) DEFAULT NULL,
  `workflowDefinitionName` varchar(75) DEFAULT NULL,
  `workflowDefinitionVersion` int(11) DEFAULT NULL,
  PRIMARY KEY (`workflowDefinitionLinkId`),
  KEY `IX_A8B0D276` (`companyId`),
  KEY `IX_A4DB1F0F` (`companyId`,`workflowDefinitionName`,`workflowDefinitionVersion`),
  KEY `IX_B6EE8C9E` (`groupId`,`companyId`,`classNameId`),
  KEY `IX_1E5B9905` (`groupId`,`companyId`,`classNameId`,`classPK`),
  KEY `IX_705B40EE` (`groupId`,`companyId`,`classNameId`,`classPK`,`typePK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowDefinitionLink`
--

LOCK TABLES `WorkflowDefinitionLink` WRITE;
/*!40000 ALTER TABLE `WorkflowDefinitionLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowDefinitionLink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkflowInstanceLink`
--

DROP TABLE IF EXISTS `WorkflowInstanceLink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkflowInstanceLink` (
  `workflowInstanceLinkId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `workflowInstanceId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`workflowInstanceLinkId`),
  KEY `IX_415A7007` (`groupId`,`companyId`,`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkflowInstanceLink`
--

LOCK TABLES `WorkflowInstanceLink` WRITE;
/*!40000 ALTER TABLE `WorkflowInstanceLink` DISABLE KEYS */;
/*!40000 ALTER TABLE `WorkflowInstanceLink` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-06-12 18:33:35
