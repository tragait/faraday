-- MySQL dump 10.13  Distrib 5.5.19, for Win32 (x86)
--
-- Host: localhost    Database: charter001
-- ------------------------------------------------------
-- Server version	5.5.19

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
-- Table structure for table `account_`
--

DROP TABLE IF EXISTS `account_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `account_` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account_`
--

LOCK TABLES `account_` WRITE;
/*!40000 ALTER TABLE `account_` DISABLE KEYS */;
INSERT INTO `account_` VALUES (10155,10153,0,'','2013-12-21 19:14:32','2013-12-27 04:36:33',0,'Liferay','Charter, Inc.','','','','','','','');
/*!40000 ALTER TABLE `account_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `address` (
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
  KEY `IX_5BC8B0D4` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (10910,10153,10801,'Rahul Tyagi','2013-12-27 04:12:52','2013-12-27 04:36:33',10016,10155,'3551 IP extn','sector 49','','Faridabad','121001',0,108,10002,1,1);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcementsdelivery`
--

DROP TABLE IF EXISTS `announcementsdelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcementsdelivery` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcementsdelivery`
--

LOCK TABLES `announcementsdelivery` WRITE;
/*!40000 ALTER TABLE `announcementsdelivery` DISABLE KEYS */;
INSERT INTO `announcementsdelivery` VALUES (10406,10153,10195,'general',0,0,1),(10407,10153,10195,'news',0,0,1),(10408,10153,10195,'test',0,0,1),(10827,10153,10801,'general',0,0,1),(10828,10153,10801,'news',0,0,1),(10829,10153,10801,'test',0,0,1),(11113,10153,11106,'general',0,0,0),(11114,10153,11106,'news',0,0,0),(11115,10153,11106,'test',0,0,0);
/*!40000 ALTER TABLE `announcementsdelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcementsentry`
--

DROP TABLE IF EXISTS `announcementsentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcementsentry` (
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
  KEY `IX_1AFBDE08` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcementsentry`
--

LOCK TABLES `announcementsentry` WRITE;
/*!40000 ALTER TABLE `announcementsentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcementsentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcementsflag`
--

DROP TABLE IF EXISTS `announcementsflag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcementsflag` (
  `flagId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `entryId` bigint(20) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  PRIMARY KEY (`flagId`),
  UNIQUE KEY `IX_4539A99C` (`userId`,`entryId`,`value`),
  KEY `IX_9C7EB9F` (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcementsflag`
--

LOCK TABLES `announcementsflag` WRITE;
/*!40000 ALTER TABLE `announcementsflag` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcementsflag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetcategory`
--

DROP TABLE IF EXISTS `assetcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetcategory` (
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
  KEY `IX_287B1F89` (`vocabularyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetcategory`
--

LOCK TABLES `assetcategory` WRITE;
/*!40000 ALTER TABLE `assetcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetcategoryproperty`
--

DROP TABLE IF EXISTS `assetcategoryproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetcategoryproperty` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetcategoryproperty`
--

LOCK TABLES `assetcategoryproperty` WRITE;
/*!40000 ALTER TABLE `assetcategoryproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetcategoryproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetentries_assetcategories`
--

DROP TABLE IF EXISTS `assetentries_assetcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetentries_assetcategories` (
  `categoryId` bigint(20) NOT NULL,
  `entryId` bigint(20) NOT NULL,
  PRIMARY KEY (`categoryId`,`entryId`),
  KEY `IX_A188F560` (`categoryId`),
  KEY `IX_E119938A` (`entryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetentries_assetcategories`
--

LOCK TABLES `assetentries_assetcategories` WRITE;
/*!40000 ALTER TABLE `assetentries_assetcategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetentries_assetcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetentries_assettags`
--

DROP TABLE IF EXISTS `assetentries_assettags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetentries_assettags` (
  `entryId` bigint(20) NOT NULL,
  `tagId` bigint(20) NOT NULL,
  PRIMARY KEY (`entryId`,`tagId`),
  KEY `IX_2ED82CAD` (`entryId`),
  KEY `IX_B2A61B55` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetentries_assettags`
--

LOCK TABLES `assetentries_assettags` WRITE;
/*!40000 ALTER TABLE `assetentries_assettags` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetentries_assettags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetentry`
--

DROP TABLE IF EXISTS `assetentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetentry` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetentry`
--

LOCK TABLES `assetentry` WRITE;
/*!40000 ALTER TABLE `assetentry` DISABLE KEYS */;
INSERT INTO `assetentry` VALUES (10177,10171,10153,10157,'','2013-12-21 19:14:33','2013-12-21 19:14:33',10117,10175,'b04d5960-8c57-4c77-b815-195817ae74c4',0,0,NULL,NULL,NULL,NULL,'text/html','10174','','','','',0,0,0,0),(10202,10191,10153,10195,'Test Test','2013-12-21 19:14:35','2013-12-21 19:14:52',10005,10195,'326b39c6-e28a-4ac6-bd66-436d99860ce9',0,0,NULL,NULL,NULL,NULL,'','Rahul Ty','','','','',0,0,0,0),(10318,10311,10153,10157,'','2013-12-21 19:14:39','2013-12-21 19:14:39',10117,10315,'7e8500be-fc3a-483f-998f-9771fbb3a638',0,0,NULL,NULL,NULL,NULL,'text/html','10314','','','','',0,0,0,0),(10327,10321,10153,10157,'','2013-12-21 19:14:41','2013-12-21 19:14:41',10117,10325,'47bcfdd8-8e73-4d6d-9171-2ebb7b0b26cc',0,0,NULL,NULL,NULL,NULL,'text/html','10324','','','','',0,0,0,0),(10336,10330,10153,10157,'','2013-12-21 19:14:41','2013-12-21 19:14:41',10117,10334,'aa018c41-7f23-451b-a4c1-f4032fe27a49',0,0,NULL,NULL,NULL,NULL,'text/html','10333','','','','',0,0,0,0),(10350,10339,10153,10157,'','2013-12-21 19:14:43','2013-12-21 19:14:43',10117,10348,'3fb06bc7-f696-40ef-9605-df5a63162164',0,0,NULL,NULL,NULL,NULL,'text/html','10347','','','','',0,0,0,0),(10356,10339,10153,10157,'','2013-12-21 19:14:44','2013-12-21 19:14:44',10117,10354,'46c4c7f5-9ba7-479f-98fc-ca93ff471e53',0,0,NULL,NULL,NULL,NULL,'text/html','10353','','','','',0,0,0,0),(10362,10339,10153,10157,'','2013-12-21 19:14:45','2013-12-21 19:14:45',10117,10360,'e214b049-5b84-421f-88fc-34a96be9c85b',0,0,NULL,NULL,NULL,NULL,'text/html','10359','','','','',0,0,0,0),(10376,10365,10153,10157,'','2013-12-21 19:14:46','2013-12-21 19:14:46',10117,10374,'e26b88d3-54a8-4a90-a29b-bef6943e9193',0,0,NULL,NULL,NULL,NULL,'text/html','10373','','','','',0,0,0,0),(10384,10365,10153,10157,'','2013-12-21 19:14:49','2013-12-21 19:14:49',10117,10382,'9c047da8-a9d5-41ae-ace5-bf61e11c71df',0,0,NULL,NULL,NULL,NULL,'text/html','10381','','','','',0,0,0,0),(10390,10365,10153,10157,'','2013-12-21 19:14:50','2013-12-21 19:14:50',10117,10388,'2ba1d22c-38a9-4d5a-94a3-1c9b951fbe42',0,0,NULL,NULL,NULL,NULL,'text/html','10387','','','','',0,0,0,0),(10396,10365,10153,10157,'','2013-12-21 19:14:51','2013-12-21 19:14:51',10117,10394,'8aa19552-519e-41d2-99be-b65062f5b853',0,0,NULL,NULL,NULL,NULL,'text/html','10393','','','','',0,0,0,0),(10420,10199,10153,10195,'Rahul Ty','2013-12-21 19:15:56','2013-12-21 19:15:56',10117,10418,'f3a09103-5162-47ec-9494-7010defe20f6',0,0,NULL,NULL,NULL,NULL,'text/html','10417','','','','',0,0,0,0),(10426,10199,10153,10195,'Rahul Ty','2013-12-21 19:15:56','2013-12-21 19:15:56',10117,10424,'5436726f-ce7e-4d07-bed1-bd4bf916dac5',0,0,NULL,NULL,NULL,NULL,'text/html','10423','','','','',0,0,0,0),(10430,10179,10153,10157,'','2013-12-21 19:15:56','2013-12-21 19:15:56',10010,10428,'f385c3f5-175c-4a54-b1a8-02ce71271881',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_3','','','','',0,0,0,0),(10433,10179,10153,10157,'','2013-12-21 19:15:57','2013-12-21 19:15:57',10117,10431,'c2ee5c47-09aa-451f-8a23-11845bf11c67',0,0,NULL,NULL,NULL,NULL,'text/html','10428','','','','',0,0,0,0),(10439,10179,10153,10157,'','2013-12-21 19:16:00','2013-12-21 19:16:00',10010,10437,'2d443ec1-20d8-4f4b-ab87-5fe866248c7d',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_7','','','','',0,0,0,0),(10442,10179,10153,10157,'','2013-12-21 19:16:00','2013-12-21 19:16:00',10117,10440,'b46bff4a-3f9f-4a99-a1fb-58d756b75b4b',0,0,NULL,NULL,NULL,NULL,'text/html','10437','','','','',0,0,0,0),(10448,10179,10153,10157,'','2013-12-21 19:16:01','2013-12-21 19:16:01',10010,10446,'53e5222a-7efd-41e9-9f89-355c6d0cc8e5',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_11','','','','',0,0,0,0),(10451,10179,10153,10157,'','2013-12-21 19:16:01','2013-12-21 19:16:01',10117,10449,'a4700df7-dd6d-46bf-8f66-3202dde80f43',0,0,NULL,NULL,NULL,NULL,'text/html','10446','','','','',0,0,0,0),(10456,10179,10153,10157,'','2013-12-21 19:16:02','2013-12-21 19:16:02',10010,10454,'70c0ba97-a2a8-41f4-ac2d-0b14b56b8802',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_12','','','','',0,0,0,0),(10459,10179,10153,10157,'','2013-12-21 19:16:02','2013-12-21 19:16:02',10117,10457,'0a7eb795-c68b-48ad-926b-9b312adef6c5',0,0,NULL,NULL,NULL,NULL,'text/html','10454','','','','',0,0,0,0),(10464,10179,10153,10157,'','2013-12-21 19:16:02','2013-12-21 19:16:02',10010,10462,'c31919dc-d31c-41f4-bd5c-ef940939bcd8',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_5','','','','',0,0,0,0),(10467,10179,10153,10157,'','2013-12-21 19:16:03','2013-12-21 19:16:03',10117,10465,'45ba4052-b347-44c6-8fb1-d2f8b94093fa',0,0,NULL,NULL,NULL,NULL,'text/html','10462','','','','',0,0,0,0),(10472,10179,10153,10157,'','2013-12-21 19:16:03','2013-12-21 19:16:03',10010,10470,'c00cc224-0022-4ed5-8533-bb15e723d369',0,1,NULL,NULL,NULL,NULL,'image/png','welcome_bg_10','','','','',0,0,0,0),(10475,10179,10153,10157,'','2013-12-21 19:16:03','2013-12-21 19:16:03',10117,10473,'04c925bd-c2bb-453c-9e99-561128cbfc7f',0,0,NULL,NULL,NULL,NULL,'text/html','10470','','','','',0,0,0,0),(10502,10179,10153,10157,'','2013-12-21 19:16:07','2013-12-21 19:16:07',10010,10495,'4a840905-b8e4-4054-99f4-f3cbc09813db',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_2','','','','',0,0,0,0),(10506,10179,10153,10157,'','2013-12-21 19:16:08','2013-12-21 19:16:08',10117,10504,'b4de6c2f-3f1d-4c47-91ce-7ae7cb8db882',0,0,NULL,NULL,NULL,NULL,'text/html','10495','','','','',0,0,0,0),(10515,10179,10153,10157,'','2013-12-21 19:16:08','2013-12-21 19:16:08',10010,10509,'b31b3fc5-c92d-4535-9289-d192eb5983da',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_13','','','','',0,0,0,0),(10518,10179,10153,10157,'','2013-12-21 19:16:09','2013-12-21 19:16:09',10117,10516,'ae099bd6-18ac-4be4-9e2a-75573cb0d847',0,0,NULL,NULL,NULL,NULL,'text/html','10509','','','','',0,0,0,0),(10527,10179,10153,10157,'','2013-12-21 19:16:09','2013-12-21 19:16:09',10010,10521,'6001d1cd-a4c8-4ca9-9dde-77fb607affc0',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_9','','','','',0,0,0,0),(10530,10179,10153,10157,'','2013-12-21 19:16:09','2013-12-21 19:16:09',10117,10528,'15eb8059-4f4d-4d31-a0ec-7718416067d6',0,0,NULL,NULL,NULL,NULL,'text/html','10521','','','','',0,0,0,0),(10539,10179,10153,10157,'','2013-12-21 19:16:09','2013-12-21 19:16:09',10010,10533,'5c5fcb9f-4c69-434f-9ef4-42d9384d94fd',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_1','','','','',0,0,0,28),(10542,10179,10153,10157,'','2013-12-21 19:16:09','2013-12-21 19:16:09',10117,10540,'c93749f5-9491-4cdb-9265-932c5b9318c4',0,0,NULL,NULL,NULL,NULL,'text/html','10533','','','','',0,0,0,0),(10551,10179,10153,10157,'','2013-12-21 19:16:10','2013-12-21 19:16:10',10010,10545,'5a88051b-689b-481a-a6a6-dffdd37ca570',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_4','','','','',0,0,0,0),(10554,10179,10153,10157,'','2013-12-21 19:16:10','2013-12-21 19:16:10',10117,10552,'a3421f3e-93ba-45b0-addd-87e785e08dea',0,0,NULL,NULL,NULL,NULL,'text/html','10545','','','','',0,0,0,0),(10563,10179,10153,10157,'','2013-12-21 19:16:10','2013-12-21 19:16:10',10010,10557,'e4f0a3b7-1121-4ffa-a71a-2f228cd03e48',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_8','','','','',0,0,0,0),(10566,10179,10153,10157,'','2013-12-21 19:16:10','2013-12-21 19:16:10',10117,10564,'189875cb-e2b2-49c5-8d51-cec555fb5876',0,0,NULL,NULL,NULL,NULL,'text/html','10557','','','','',0,0,0,0),(10571,10179,10153,10157,'','2013-12-21 19:16:10','2013-12-21 19:16:10',10010,10569,'718d137c-ea1f-4cc8-9569-af254333c5ff',0,1,NULL,NULL,NULL,NULL,'image/jpeg','welcome_bg_6','','','','',0,0,0,0),(10574,10179,10153,10157,'','2013-12-21 19:16:10','2013-12-21 19:16:10',10117,10572,'69e28546-e305-49e1-a5e7-5eb7502bfdc3',0,0,NULL,NULL,NULL,NULL,'text/html','10569','','','','',0,0,0,0),(10588,10179,10153,10157,'','2013-12-21 19:16:11','2013-12-21 19:16:11',10108,10586,'59702db5-09d0-47ce-a574-d4849cb4e21f',0,1,NULL,NULL,'2010-02-01 00:00:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Who Is Using Liferay</Title></root>','','','','',0,0,0,0),(10591,10179,10153,10157,'','2013-12-21 19:16:11','2013-12-21 19:16:11',10117,10589,'1ef5382c-ca62-44a3-9e42-8f16384abfa8',0,0,NULL,NULL,NULL,NULL,'text/html','10586','','','','',0,0,0,0),(10600,10179,10153,10157,'','2013-12-21 19:16:13','2013-12-21 19:16:13',10108,10598,'dae9694a-c763-4f33-bb30-104dc7a74bd6',10594,1,NULL,NULL,'2010-02-01 00:00:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Liferay Benefits</Title></root>','','','','',0,0,0,0),(10603,10179,10153,10157,'','2013-12-21 19:16:13','2013-12-21 19:16:13',10117,10601,'3ec26df6-e3cb-418f-b92c-ef6c6d72fcdd',0,0,NULL,NULL,NULL,NULL,'text/html','10598','','','','',0,0,0,0),(10608,10179,10153,10157,'','2013-12-21 19:16:13','2013-12-21 19:16:13',10108,10606,'7d2b6b49-681d-4adb-8dba-12ae30ee2f78',10594,1,NULL,NULL,'2010-02-01 00:00:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">What We Do</Title></root>','','','','',0,0,0,33),(10611,10179,10153,10157,'','2013-12-21 19:16:13','2013-12-21 19:16:13',10117,10609,'79bc630f-469b-4e69-ba77-1e4b11c63e03',0,0,NULL,NULL,NULL,NULL,'text/html','10606','','','','',0,0,0,0),(10616,10179,10153,10157,'','2013-12-21 19:17:04','2013-12-21 19:17:04',10117,10614,'bd13c864-9efc-4d01-ac7e-3d895bf14a60',0,0,NULL,NULL,NULL,NULL,'text/html','10613','','','','',0,0,0,0),(10707,10191,10153,10701,'Test Test','2013-12-22 18:34:17','2013-12-22 18:34:17',10005,10701,'7b491b30-3a63-4167-a4d8-affccc3363a2',0,0,NULL,NULL,NULL,NULL,'','Test Test','','','','',0,0,0,0),(10711,10704,10153,10701,'Test Test','2013-12-22 18:34:47','2013-12-22 18:34:47',10117,10709,'eeb0162a-3093-4174-b5b0-f113b294c0cd',0,0,NULL,NULL,NULL,NULL,'text/html','10708','','','','',0,0,0,0),(10716,10704,10153,10701,'Test Test','2013-12-22 18:34:48','2013-12-22 18:34:48',10117,10714,'3550c3c6-cc3a-4ece-99c7-00c922dec299',0,0,NULL,NULL,NULL,NULL,'text/html','10713','','','','',0,0,0,0),(10807,10191,10153,10801,'Rahul Tyagi','2013-12-26 17:34:30','2013-12-26 17:34:30',10005,10801,'811aef1a-ef73-4fca-8c9d-12b85fd31340',0,0,NULL,NULL,NULL,NULL,'','Rahul Tyagi','','','','',0,0,0,0),(10811,10804,10153,10801,'Rahul Tyagi','2013-12-26 17:34:50','2013-12-26 17:34:50',10117,10809,'650903e8-bdac-4d16-a9ed-8f21aa9d3046',0,0,NULL,NULL,NULL,NULL,'text/html','10808','','','','',0,0,0,0),(10816,10804,10153,10801,'Rahul Tyagi','2013-12-26 17:34:50','2013-12-26 17:34:50',10117,10814,'a2bdceb2-e8b2-4eaa-8b47-e2fd46fd67b8',0,0,NULL,NULL,NULL,NULL,'text/html','10813','','','','',0,0,0,0),(11007,10191,10153,11001,'Test Test','2013-12-27 19:44:02','2013-12-27 19:44:02',10005,11001,'48e0a28e-32d4-46ed-aa38-e9651daaf356',0,0,NULL,NULL,NULL,NULL,'','Test Test','','','','',0,0,0,0),(11011,11004,10153,11001,'Test Test','2013-12-27 19:44:17','2013-12-27 19:44:17',10117,11009,'2a1cd7d7-3954-4614-97f2-bf0e477acde3',0,0,NULL,NULL,NULL,NULL,'text/html','11008','','','','',0,0,0,0),(11016,11004,10153,11001,'Test Test','2013-12-27 19:44:18','2013-12-27 19:44:18',10117,11014,'8fc2b25f-9940-4fe6-b367-71561386ad36',0,0,NULL,NULL,NULL,NULL,'text/html','11013','','','','',0,0,0,0),(11036,10191,10153,10157,'','2013-12-28 05:27:33','2013-12-28 09:48:18',10001,10179,'',0,0,NULL,NULL,NULL,NULL,'','Liferay','','','','',0,0,0,0),(11040,10191,10153,10801,'Rahul Tyagi','2013-12-28 05:30:34','2013-12-28 05:30:34',10001,11037,'',0,0,NULL,NULL,NULL,NULL,'','Charter','','','','',0,0,0,0),(11092,10191,10153,10801,'Rahul Tyagi','2013-12-28 06:11:30','2013-12-28 06:11:30',10003,11088,'',0,0,NULL,NULL,NULL,NULL,'','CharterSolution','','','','',0,0,0,0),(11098,10191,10153,10801,'Rahul Tyagi','2013-12-28 06:18:16','2013-12-28 06:18:16',10003,11094,'',0,0,NULL,NULL,NULL,NULL,'','CharterSolution,noida','','','','',0,0,0,0),(11104,10191,10153,10801,'Rahul Tyagi','2013-12-28 06:20:28','2013-12-28 06:20:28',10003,11100,'',0,0,NULL,NULL,NULL,NULL,'','CharterSolution,kanpur','','','','',0,0,0,0),(11112,10191,10153,10801,'Rahul Tyagi','2013-12-28 06:23:00','2013-12-28 06:44:53',10005,11106,'d18f8e01-bc31-4daa-be24-7f941f7c4e78',0,0,NULL,NULL,NULL,NULL,'','Anand Saxena','','','','',0,0,0,0),(11122,11109,10153,11106,'Anand Saxena','2013-12-28 06:42:40','2013-12-28 06:42:40',10117,11120,'cd6ec2f0-4d4c-42e5-b9b8-189a064263b7',0,0,NULL,NULL,NULL,NULL,'text/html','11119','','','','',0,0,0,0),(11127,11109,10153,11106,'Anand Saxena','2013-12-28 06:42:40','2013-12-28 06:42:40',10117,11125,'100b2d7d-236b-441f-b71c-9e52514edd23',0,0,NULL,NULL,NULL,NULL,'text/html','11124','','','','',0,0,0,0),(11323,11037,10153,10801,'Rahul Tyagi','2013-12-28 11:23:48','2013-12-28 11:25:13',10108,11321,'729e1f05-f618-4936-8750-5b8dedaf4980',0,1,NULL,NULL,'2013-12-28 11:06:00',NULL,'text/html','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Charter\'s Solution</Title></root>','','','','',0,0,0,6),(11326,11037,10153,10801,'Rahul Tyagi','2013-12-28 11:23:48','2013-12-28 11:23:48',10117,11324,'68315d6c-e75b-48ee-b1fb-d4dccc210256',0,0,NULL,NULL,NULL,NULL,'text/html','11321','','','','',0,0,0,0);
/*!40000 ALTER TABLE `assetentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetlink`
--

DROP TABLE IF EXISTS `assetlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetlink` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetlink`
--

LOCK TABLES `assetlink` WRITE;
/*!40000 ALTER TABLE `assetlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `assetlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assettag`
--

DROP TABLE IF EXISTS `assettag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assettag` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assettag`
--

LOCK TABLES `assettag` WRITE;
/*!40000 ALTER TABLE `assettag` DISABLE KEYS */;
/*!40000 ALTER TABLE `assettag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assettagproperty`
--

DROP TABLE IF EXISTS `assettagproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assettagproperty` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assettagproperty`
--

LOCK TABLES `assettagproperty` WRITE;
/*!40000 ALTER TABLE `assettagproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `assettagproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assettagstats`
--

DROP TABLE IF EXISTS `assettagstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assettagstats` (
  `tagStatsId` bigint(20) NOT NULL,
  `tagId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `assetCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`tagStatsId`),
  UNIQUE KEY `IX_56682CC4` (`tagId`,`classNameId`),
  KEY `IX_50702693` (`classNameId`),
  KEY `IX_9464CA` (`tagId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assettagstats`
--

LOCK TABLES `assettagstats` WRITE;
/*!40000 ALTER TABLE `assettagstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `assettagstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `assetvocabulary`
--

DROP TABLE IF EXISTS `assetvocabulary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assetvocabulary` (
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
  UNIQUE KEY `IX_C0AAD74D` (`groupId`,`name`),
  UNIQUE KEY `IX_1B2B8792` (`uuid_`,`groupId`),
  KEY `IX_B22D908C` (`companyId`),
  KEY `IX_B6B8CA0E` (`groupId`),
  KEY `IX_55F58818` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `assetvocabulary`
--

LOCK TABLES `assetvocabulary` WRITE;
/*!40000 ALTER TABLE `assetvocabulary` DISABLE KEYS */;
INSERT INTO `assetvocabulary` VALUES ('e64be464-447c-4871-ad97-49adb8241d80',10317,10191,10153,10157,'','2013-12-21 19:14:39','2013-12-21 19:14:39','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','',''),('1fecae0a-679e-4bbf-a49c-d8806482cc25',11044,10365,10153,10157,'','2013-12-28 05:30:44','2013-12-28 05:30:44','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','',''),('1fecae0a-679e-4bbf-a49c-d8806482cc25',11045,11037,10153,10157,'','2013-12-28 05:30:48','2013-12-28 11:01:56','Topic','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Topic</Title></root>','','');
/*!40000 ALTER TABLE `assetvocabulary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogsentry`
--

DROP TABLE IF EXISTS `blogsentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogsentry` (
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
  `description` varchar(75) DEFAULT NULL,
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
  KEY `IX_69157A4D` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogsentry`
--

LOCK TABLES `blogsentry` WRITE;
/*!40000 ALTER TABLE `blogsentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogsentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogsstatsuser`
--

DROP TABLE IF EXISTS `blogsstatsuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blogsstatsuser` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogsstatsuser`
--

LOCK TABLES `blogsstatsuser` WRITE;
/*!40000 ALTER TABLE `blogsstatsuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `blogsstatsuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmarksentry`
--

DROP TABLE IF EXISTS `bookmarksentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookmarksentry` (
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
  `name` varchar(255) DEFAULT NULL,
  `url` longtext,
  `description` longtext,
  `visits` int(11) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  PRIMARY KEY (`entryId`),
  UNIQUE KEY `IX_EAA02A91` (`uuid_`,`groupId`),
  KEY `IX_E52FF7EF` (`groupId`),
  KEY `IX_5200100C` (`groupId`,`folderId`),
  KEY `IX_E2E9F129` (`groupId`,`userId`),
  KEY `IX_E848278F` (`resourceBlockId`),
  KEY `IX_B670BA39` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarksentry`
--

LOCK TABLES `bookmarksentry` WRITE;
/*!40000 ALTER TABLE `bookmarksentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmarksentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookmarksfolder`
--

DROP TABLE IF EXISTS `bookmarksfolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookmarksfolder` (
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
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_DC2F8927` (`uuid_`,`groupId`),
  KEY `IX_2ABA25D7` (`companyId`),
  KEY `IX_7F703619` (`groupId`),
  KEY `IX_967799C0` (`groupId`,`parentFolderId`),
  KEY `IX_28A49BB9` (`resourceBlockId`),
  KEY `IX_451E7AE3` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookmarksfolder`
--

LOCK TABLES `bookmarksfolder` WRITE;
/*!40000 ALTER TABLE `bookmarksfolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookmarksfolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `browsertracker`
--

DROP TABLE IF EXISTS `browsertracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `browsertracker` (
  `browserTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `browserKey` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`browserTrackerId`),
  UNIQUE KEY `IX_E7B95510` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `browsertracker`
--

LOCK TABLES `browsertracker` WRITE;
/*!40000 ALTER TABLE `browsertracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `browsertracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calevent`
--

DROP TABLE IF EXISTS `calevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calevent` (
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
  KEY `IX_C1AD2122` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calevent`
--

LOCK TABLES `calevent` WRITE;
/*!40000 ALTER TABLE `calevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `calevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `classname_`
--

DROP TABLE IF EXISTS `classname_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `classname_` (
  `classNameId` bigint(20) NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`classNameId`),
  UNIQUE KEY `IX_B27A301F` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `classname_`
--

LOCK TABLES `classname_` WRITE;
/*!40000 ALTER TABLE `classname_` DISABLE KEYS */;
INSERT INTO `classname_` VALUES (10014,'com.liferay.counter.model.Counter'),(10411,'com.liferay.marketplace.model.App'),(10412,'com.liferay.marketplace.model.Module'),(10015,'com.liferay.portal.kernel.workflow.WorkflowTask'),(10016,'com.liferay.portal.model.Account'),(10017,'com.liferay.portal.model.Address'),(10018,'com.liferay.portal.model.BrowserTracker'),(10019,'com.liferay.portal.model.ClassName'),(10020,'com.liferay.portal.model.ClusterGroup'),(10021,'com.liferay.portal.model.Company'),(10022,'com.liferay.portal.model.Contact'),(10023,'com.liferay.portal.model.Country'),(10024,'com.liferay.portal.model.EmailAddress'),(10001,'com.liferay.portal.model.Group'),(10025,'com.liferay.portal.model.Image'),(10002,'com.liferay.portal.model.Layout'),(10026,'com.liferay.portal.model.LayoutBranch'),(10027,'com.liferay.portal.model.LayoutPrototype'),(10028,'com.liferay.portal.model.LayoutRevision'),(10029,'com.liferay.portal.model.LayoutSet'),(10030,'com.liferay.portal.model.LayoutSetBranch'),(10031,'com.liferay.portal.model.LayoutSetPrototype'),(10032,'com.liferay.portal.model.ListType'),(10033,'com.liferay.portal.model.Lock'),(10034,'com.liferay.portal.model.MembershipRequest'),(10003,'com.liferay.portal.model.Organization'),(10035,'com.liferay.portal.model.OrgGroupPermission'),(10036,'com.liferay.portal.model.OrgGroupRole'),(10037,'com.liferay.portal.model.OrgLabor'),(10038,'com.liferay.portal.model.PasswordPolicy'),(10039,'com.liferay.portal.model.PasswordPolicyRel'),(10040,'com.liferay.portal.model.PasswordTracker'),(10041,'com.liferay.portal.model.Permission'),(10042,'com.liferay.portal.model.Phone'),(10043,'com.liferay.portal.model.PluginSetting'),(10044,'com.liferay.portal.model.PortalPreferences'),(10045,'com.liferay.portal.model.Portlet'),(10046,'com.liferay.portal.model.PortletItem'),(10047,'com.liferay.portal.model.PortletPreferences'),(10048,'com.liferay.portal.model.Region'),(10049,'com.liferay.portal.model.Release'),(10050,'com.liferay.portal.model.Repository'),(10051,'com.liferay.portal.model.RepositoryEntry'),(10052,'com.liferay.portal.model.Resource'),(10053,'com.liferay.portal.model.ResourceAction'),(10054,'com.liferay.portal.model.ResourceBlock'),(10055,'com.liferay.portal.model.ResourceBlockPermission'),(10056,'com.liferay.portal.model.ResourceCode'),(10057,'com.liferay.portal.model.ResourcePermission'),(10058,'com.liferay.portal.model.ResourceTypePermission'),(10004,'com.liferay.portal.model.Role'),(10059,'com.liferay.portal.model.ServiceComponent'),(10060,'com.liferay.portal.model.Shard'),(10061,'com.liferay.portal.model.Subscription'),(10062,'com.liferay.portal.model.Team'),(10063,'com.liferay.portal.model.Ticket'),(10005,'com.liferay.portal.model.User'),(10006,'com.liferay.portal.model.UserGroup'),(10064,'com.liferay.portal.model.UserGroupGroupRole'),(10065,'com.liferay.portal.model.UserGroupRole'),(10066,'com.liferay.portal.model.UserIdMapper'),(10067,'com.liferay.portal.model.UserNotificationEvent'),(10187,'com.liferay.portal.model.UserPersonalSite'),(10068,'com.liferay.portal.model.UserTracker'),(10069,'com.liferay.portal.model.UserTrackerPath'),(10070,'com.liferay.portal.model.VirtualHost'),(10071,'com.liferay.portal.model.WebDAVProps'),(10072,'com.liferay.portal.model.Website'),(10073,'com.liferay.portal.model.WorkflowDefinitionLink'),(10074,'com.liferay.portal.model.WorkflowInstanceLink'),(10422,'com.liferay.portal.repository.liferayrepository.LiferayRepository'),(10075,'com.liferay.portlet.announcements.model.AnnouncementsDelivery'),(10076,'com.liferay.portlet.announcements.model.AnnouncementsEntry'),(10077,'com.liferay.portlet.announcements.model.AnnouncementsFlag'),(10078,'com.liferay.portlet.asset.model.AssetCategory'),(10079,'com.liferay.portlet.asset.model.AssetCategoryProperty'),(10080,'com.liferay.portlet.asset.model.AssetEntry'),(10081,'com.liferay.portlet.asset.model.AssetLink'),(10082,'com.liferay.portlet.asset.model.AssetTag'),(10083,'com.liferay.portlet.asset.model.AssetTagProperty'),(10084,'com.liferay.portlet.asset.model.AssetTagStats'),(10085,'com.liferay.portlet.asset.model.AssetVocabulary'),(10007,'com.liferay.portlet.blogs.model.BlogsEntry'),(10086,'com.liferay.portlet.blogs.model.BlogsStatsUser'),(10008,'com.liferay.portlet.bookmarks.model.BookmarksEntry'),(10087,'com.liferay.portlet.bookmarks.model.BookmarksFolder'),(10009,'com.liferay.portlet.calendar.model.CalEvent'),(10088,'com.liferay.portlet.documentlibrary.model.DLContent'),(10010,'com.liferay.portlet.documentlibrary.model.DLFileEntry'),(10089,'com.liferay.portlet.documentlibrary.model.DLFileEntryMetadata'),(10090,'com.liferay.portlet.documentlibrary.model.DLFileEntryType'),(10091,'com.liferay.portlet.documentlibrary.model.DLFileRank'),(10092,'com.liferay.portlet.documentlibrary.model.DLFileShortcut'),(10093,'com.liferay.portlet.documentlibrary.model.DLFileVersion'),(10094,'com.liferay.portlet.documentlibrary.model.DLFolder'),(10095,'com.liferay.portlet.documentlibrary.model.DLSync'),(10096,'com.liferay.portlet.dynamicdatalists.model.DDLRecord'),(10097,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet'),(10098,'com.liferay.portlet.dynamicdatalists.model.DDLRecordVersion'),(10099,'com.liferay.portlet.dynamicdatamapping.model.DDMContent'),(10100,'com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink'),(10101,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure'),(10102,'com.liferay.portlet.dynamicdatamapping.model.DDMStructureLink'),(10103,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate'),(10104,'com.liferay.portlet.expando.model.ExpandoColumn'),(10105,'com.liferay.portlet.expando.model.ExpandoRow'),(10106,'com.liferay.portlet.expando.model.ExpandoTable'),(10107,'com.liferay.portlet.expando.model.ExpandoValue'),(10108,'com.liferay.portlet.journal.model.JournalArticle'),(10109,'com.liferay.portlet.journal.model.JournalArticleImage'),(10110,'com.liferay.portlet.journal.model.JournalArticleResource'),(10111,'com.liferay.portlet.journal.model.JournalContentSearch'),(10112,'com.liferay.portlet.journal.model.JournalFeed'),(10113,'com.liferay.portlet.journal.model.JournalStructure'),(10114,'com.liferay.portlet.journal.model.JournalTemplate'),(10115,'com.liferay.portlet.messageboards.model.MBBan'),(10116,'com.liferay.portlet.messageboards.model.MBCategory'),(10117,'com.liferay.portlet.messageboards.model.MBDiscussion'),(10118,'com.liferay.portlet.messageboards.model.MBMailingList'),(10011,'com.liferay.portlet.messageboards.model.MBMessage'),(10119,'com.liferay.portlet.messageboards.model.MBStatsUser'),(10012,'com.liferay.portlet.messageboards.model.MBThread'),(10120,'com.liferay.portlet.messageboards.model.MBThreadFlag'),(10121,'com.liferay.portlet.mobiledevicerules.model.MDRAction'),(10122,'com.liferay.portlet.mobiledevicerules.model.MDRRule'),(10123,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup'),(10124,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance'),(10125,'com.liferay.portlet.polls.model.PollsChoice'),(10126,'com.liferay.portlet.polls.model.PollsQuestion'),(10127,'com.liferay.portlet.polls.model.PollsVote'),(10128,'com.liferay.portlet.ratings.model.RatingsEntry'),(10129,'com.liferay.portlet.ratings.model.RatingsStats'),(10130,'com.liferay.portlet.shopping.model.ShoppingCart'),(10131,'com.liferay.portlet.shopping.model.ShoppingCategory'),(10132,'com.liferay.portlet.shopping.model.ShoppingCoupon'),(10133,'com.liferay.portlet.shopping.model.ShoppingItem'),(10134,'com.liferay.portlet.shopping.model.ShoppingItemField'),(10135,'com.liferay.portlet.shopping.model.ShoppingItemPrice'),(10136,'com.liferay.portlet.shopping.model.ShoppingOrder'),(10137,'com.liferay.portlet.shopping.model.ShoppingOrderItem'),(10138,'com.liferay.portlet.social.model.SocialActivity'),(10139,'com.liferay.portlet.social.model.SocialActivityAchievement'),(10140,'com.liferay.portlet.social.model.SocialActivityCounter'),(10141,'com.liferay.portlet.social.model.SocialActivityLimit'),(10142,'com.liferay.portlet.social.model.SocialActivitySetting'),(10143,'com.liferay.portlet.social.model.SocialRelation'),(10144,'com.liferay.portlet.social.model.SocialRequest'),(10145,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion'),(10146,'com.liferay.portlet.softwarecatalog.model.SCLicense'),(10147,'com.liferay.portlet.softwarecatalog.model.SCProductEntry'),(10148,'com.liferay.portlet.softwarecatalog.model.SCProductScreenshot'),(10149,'com.liferay.portlet.softwarecatalog.model.SCProductVersion'),(10150,'com.liferay.portlet.usernotifications.model.UserNotificationEvent'),(10151,'com.liferay.portlet.wiki.model.WikiNode'),(10013,'com.liferay.portlet.wiki.model.WikiPage'),(10152,'com.liferay.portlet.wiki.model.WikiPageResource');
/*!40000 ALTER TABLE `classname_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clustergroup`
--

DROP TABLE IF EXISTS `clustergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clustergroup` (
  `clusterGroupId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `clusterNodeIds` varchar(75) DEFAULT NULL,
  `wholeCluster` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`clusterGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clustergroup`
--

LOCK TABLES `clustergroup` WRITE;
/*!40000 ALTER TABLE `clustergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `clustergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (10153,10155,'liferay.com','rO0ABXNyABRqYXZhLnNlY3VyaXR5LktleVJlcL35T7OImqVDAgAETAAJYWxnb3JpdGhtdAASTGphdmEvbGFuZy9TdHJpbmc7WwAHZW5jb2RlZHQAAltCTAAGZm9ybWF0cQB+AAFMAAR0eXBldAAbTGphdmEvc2VjdXJpdHkvS2V5UmVwJFR5cGU7eHB0AANERVN1cgACW0Ks8xf4BghU4AIAAHhwAAAACP1eGvhittPOdAADUkFXfnIAGWphdmEuc2VjdXJpdHkuS2V5UmVwJFR5cGUAAAAAAAAAABIAAHhyAA5qYXZhLmxhbmcuRW51bQAAAAAAAAAAEgAAeHB0AAZTRUNSRVQ=','charter.com','',0,0,0,1);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_`
--

DROP TABLE IF EXISTS `contact_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_` (
  `contactId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `accountId` bigint(20) DEFAULT NULL,
  `parentContactId` bigint(20) DEFAULT NULL,
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
  KEY `IX_66D496A3` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_`
--

LOCK TABLES `contact_` WRITE;
/*!40000 ALTER TABLE `contact_` DISABLE KEYS */;
INSERT INTO `contact_` VALUES (10158,10153,10157,'','2013-12-21 19:14:32','2013-12-21 19:14:32',10155,0,'','','',0,0,1,'2013-12-21 19:14:32','','','','','','','','','','','','','','',''),(10197,10153,10195,'','2013-12-21 19:14:35','2013-12-21 19:14:52',10155,0,'Rahul','','Ty',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10702,10153,10701,'','2013-12-22 18:34:17','2013-12-22 18:34:17',10155,0,'Test','','Test',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(10802,10153,10801,'','2013-12-26 17:34:30','2013-12-26 17:34:30',10155,0,'Rahul','','Tyagi',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11002,10153,11001,'','2013-12-27 19:44:02','2013-12-27 19:44:02',10155,0,'Test','','Test',0,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','',''),(11107,10153,10801,'Rahul Tyagi','2013-12-28 06:23:00','2013-12-28 06:44:53',10155,0,'Anand','','Saxena',11015,0,1,'1970-01-01 00:00:00','','','','','','','','','','','','','','','');
/*!40000 ALTER TABLE `contact_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `counter`
--

DROP TABLE IF EXISTS `counter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `counter` (
  `name` varchar(75) NOT NULL,
  `currentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `counter`
--

LOCK TABLES `counter` WRITE;
/*!40000 ALTER TABLE `counter` DISABLE KEYS */;
INSERT INTO `counter` VALUES ('com.liferay.counter.model.Counter',11400),('com.liferay.portal.model.Layout#10171#true',1),('com.liferay.portal.model.Layout#10179#false',3),('com.liferay.portal.model.Layout#10199#false',1),('com.liferay.portal.model.Layout#10199#true',1),('com.liferay.portal.model.Layout#10311#true',1),('com.liferay.portal.model.Layout#10321#true',1),('com.liferay.portal.model.Layout#10330#true',1),('com.liferay.portal.model.Layout#10339#true',3),('com.liferay.portal.model.Layout#10365#true',4),('com.liferay.portal.model.Layout#10704#false',1),('com.liferay.portal.model.Layout#10704#true',1),('com.liferay.portal.model.Layout#10804#false',1),('com.liferay.portal.model.Layout#10804#true',1),('com.liferay.portal.model.Layout#11004#false',1),('com.liferay.portal.model.Layout#11004#true',1),('com.liferay.portal.model.Layout#11037#false',6),('com.liferay.portal.model.Layout#11109#false',1),('com.liferay.portal.model.Layout#11109#true',1),('com.liferay.portal.model.Permission',100),('com.liferay.portal.model.Resource',100),('com.liferay.portal.model.ResourceAction',1100),('com.liferay.portal.model.ResourcePermission',1300),('com.liferay.portlet.documentlibrary.model.DLFileEntry',100),('com.liferay.portlet.social.model.SocialActivity',100);
/*!40000 ALTER TABLE `counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Canada','CA','CAN','124','001',1,1),(2,'China','CN','CHN','156','086',1,1),(3,'France','FR','FRA','250','033',1,1),(4,'Germany','DE','DEU','276','049',1,1),(5,'Hong Kong','HK','HKG','344','852',1,1),(6,'Hungary','HU','HUN','348','036',1,1),(7,'Israel','IL','ISR','376','972',1,1),(8,'Italy','IT','ITA','380','039',1,1),(9,'Japan','JP','JPN','392','081',1,1),(10,'South Korea','KR','KOR','410','082',1,1),(11,'Netherlands','NL','NLD','528','031',1,1),(12,'Portugal','PT','PRT','620','351',1,1),(13,'Russia','RU','RUS','643','007',1,1),(14,'Singapore','SG','SGP','702','065',1,1),(15,'Spain','ES','ESP','724','034',1,1),(16,'Turkey','TR','TUR','792','090',1,1),(17,'Vietnam','VN','VNM','704','084',1,1),(18,'United Kingdom','GB','GBR','826','044',1,1),(19,'United States','US','USA','840','001',1,1),(20,'Afghanistan','AF','AFG','4','093',1,1),(21,'Albania','AL','ALB','8','355',1,1),(22,'Algeria','DZ','DZA','12','213',1,1),(23,'American Samoa','AS','ASM','16','684',1,1),(24,'Andorra','AD','AND','20','376',1,1),(25,'Angola','AO','AGO','24','244',0,1),(26,'Anguilla','AI','AIA','660','264',1,1),(27,'Antarctica','AQ','ATA','10','672',1,1),(28,'Antigua','AG','ATG','28','268',0,1),(29,'Argentina','AR','ARG','32','054',1,1),(30,'Armenia','AM','ARM','51','374',1,1),(31,'Aruba','AW','ABW','533','297',0,1),(32,'Australia','AU','AUS','36','061',1,1),(33,'Austria','AT','AUT','40','043',1,1),(34,'Azerbaijan','AZ','AZE','31','994',1,1),(35,'Bahamas','BS','BHS','44','242',0,1),(36,'Bahrain','BH','BHR','48','973',1,1),(37,'Bangladesh','BD','BGD','50','880',1,1),(38,'Barbados','BB','BRB','52','246',1,1),(39,'Belarus','BY','BLR','112','375',1,1),(40,'Belgium','BE','BEL','56','032',1,1),(41,'Belize','BZ','BLZ','84','501',0,1),(42,'Benin','BJ','BEN','204','229',0,1),(43,'Bermuda','BM','BMU','60','441',1,1),(44,'Bhutan','BT','BTN','64','975',1,1),(45,'Bolivia','BO','BOL','68','591',1,1),(46,'Bosnia-Herzegovina','BA','BIH','70','387',1,1),(47,'Botswana','BW','BWA','72','267',0,1),(48,'Brazil','BR','BRA','76','055',1,1),(49,'British Virgin Islands','VG','VGB','92','284',1,1),(50,'Brunei','BN','BRN','96','673',1,1),(51,'Bulgaria','BG','BGR','100','359',1,1),(52,'Burkina Faso','BF','BFA','854','226',0,1),(53,'Burma (Myanmar)','MM','MMR','104','095',1,1),(54,'Burundi','BI','BDI','108','257',0,1),(55,'Cambodia','KH','KHM','116','855',1,1),(56,'Cameroon','CM','CMR','120','237',1,1),(57,'Cape Verde Island','CV','CPV','132','238',1,1),(58,'Cayman Islands','KY','CYM','136','345',1,1),(59,'Central African Republic','CF','CAF','140','236',0,1),(60,'Chad','TD','TCD','148','235',1,1),(61,'Chile','CL','CHL','152','056',1,1),(62,'Christmas Island','CX','CXR','162','061',1,1),(63,'Cocos Islands','CC','CCK','166','061',1,1),(64,'Colombia','CO','COL','170','057',1,1),(65,'Comoros','KM','COM','174','269',0,1),(66,'Republic of Congo','CD','COD','180','242',0,1),(67,'Democratic Republic of Congo','CG','COG','178','243',0,1),(68,'Cook Islands','CK','COK','184','682',0,1),(69,'Costa Rica','CR','CRI','188','506',1,1),(70,'Croatia','HR','HRV','191','385',1,1),(71,'Cuba','CU','CUB','192','053',1,1),(72,'Cyprus','CY','CYP','196','357',1,1),(73,'Czech Republic','CZ','CZE','203','420',1,1),(74,'Denmark','DK','DNK','208','045',1,1),(75,'Djibouti','DJ','DJI','262','253',0,1),(76,'Dominica','DM','DMA','212','767',0,1),(77,'Dominican Republic','DO','DOM','214','809',1,1),(78,'Ecuador','EC','ECU','218','593',1,1),(79,'Egypt','EG','EGY','818','020',1,1),(80,'El Salvador','SV','SLV','222','503',1,1),(81,'Equatorial Guinea','GQ','GNQ','226','240',0,1),(82,'Eritrea','ER','ERI','232','291',0,1),(83,'Estonia','EE','EST','233','372',1,1),(84,'Ethiopia','ET','ETH','231','251',1,1),(85,'Faeroe Islands','FO','FRO','234','298',1,1),(86,'Falkland Islands','FK','FLK','238','500',1,1),(87,'Fiji Islands','FJ','FJI','242','679',0,1),(88,'Finland','FI','FIN','246','358',1,1),(89,'French Guiana','GF','GUF','254','594',1,1),(90,'French Polynesia','PF','PYF','258','689',1,1),(91,'Gabon','GA','GAB','266','241',1,1),(92,'Gambia','GM','GMB','270','220',0,1),(93,'Georgia','GE','GEO','268','995',1,1),(94,'Ghana','GH','GHA','288','233',0,1),(95,'Gibraltar','GI','GIB','292','350',1,1),(96,'Greece','GR','GRC','300','030',1,1),(97,'Greenland','GL','GRL','304','299',1,1),(98,'Grenada','GD','GRD','308','473',0,1),(99,'Guadeloupe','GP','GLP','312','590',1,1),(100,'Guam','GU','GUM','316','671',1,1),(101,'Guatemala','GT','GTM','320','502',1,1),(102,'Guinea','GN','GIN','324','224',0,1),(103,'Guinea-Bissau','GW','GNB','624','245',1,1),(104,'Guyana','GY','GUY','328','592',0,1),(105,'Haiti','HT','HTI','332','509',1,1),(106,'Honduras','HN','HND','340','504',1,1),(107,'Iceland','IS','ISL','352','354',1,1),(108,'India','IN','IND','356','091',1,1),(109,'Indonesia','ID','IDN','360','062',1,1),(110,'Iran','IR','IRN','364','098',1,1),(111,'Iraq','IQ','IRQ','368','964',1,1),(112,'Ireland','IE','IRL','372','353',0,1),(113,'Ivory Coast','CI','CIV','384','225',1,1),(114,'Jamaica','JM','JAM','388','876',1,1),(115,'Jordan','JO','JOR','400','962',1,1),(116,'Kazakhstan','KZ','KAZ','398','007',1,1),(117,'Kenya','KE','KEN','404','254',1,1),(118,'Kiribati','KI','KIR','408','686',0,1),(119,'Kuwait','KW','KWT','414','965',1,1),(120,'North Korea','KP','PRK','408','850',0,1),(121,'Kyrgyzstan','KG','KGZ','471','996',1,1),(122,'Laos','LA','LAO','418','856',1,1),(123,'Latvia','LV','LVA','428','371',1,1),(124,'Lebanon','LB','LBN','422','961',1,1),(125,'Lesotho','LS','LSO','426','266',1,1),(126,'Liberia','LR','LBR','430','231',1,1),(127,'Libya','LY','LBY','434','218',1,1),(128,'Liechtenstein','LI','LIE','438','423',1,1),(129,'Lithuania','LT','LTU','440','370',1,1),(130,'Luxembourg','LU','LUX','442','352',1,1),(131,'Macau','MO','MAC','446','853',0,1),(132,'Macedonia','MK','MKD','807','389',1,1),(133,'Madagascar','MG','MDG','450','261',1,1),(134,'Malawi','MW','MWI','454','265',0,1),(135,'Malaysia','MY','MYS','458','060',1,1),(136,'Maldives','MV','MDV','462','960',1,1),(137,'Mali','ML','MLI','466','223',0,1),(138,'Malta','MT','MLT','470','356',1,1),(139,'Marshall Islands','MH','MHL','584','692',1,1),(140,'Martinique','MQ','MTQ','474','596',1,1),(141,'Mauritania','MR','MRT','478','222',0,1),(142,'Mauritius','MU','MUS','480','230',0,1),(143,'Mayotte Island','YT','MYT','175','269',1,1),(144,'Mexico','MX','MEX','484','052',1,1),(145,'Micronesia','FM','FSM','583','691',1,1),(146,'Moldova','MD','MDA','498','373',1,1),(147,'Monaco','MC','MCO','492','377',1,1),(148,'Mongolia','MN','MNG','496','976',1,1),(149,'Montenegro','ME','MNE','499','382',1,1),(150,'Montserrat','MS','MSR','500','664',0,1),(151,'Morocco','MA','MAR','504','212',1,1),(152,'Mozambique','MZ','MOZ','508','258',1,1),(153,'Namibia','NA','NAM','516','264',1,1),(154,'Nauru','NR','NRU','520','674',0,1),(155,'Nepal','NP','NPL','524','977',1,1),(156,'Netherlands Antilles','AN','ANT','530','599',1,1),(157,'New Caledonia','NC','NCL','540','687',1,1),(158,'New Zealand','NZ','NZL','554','064',1,1),(159,'Nicaragua','NI','NIC','558','505',1,1),(160,'Niger','NE','NER','562','227',1,1),(161,'Nigeria','NG','NGA','566','234',1,1),(162,'Niue','NU','NIU','570','683',0,1),(163,'Norfolk Island','NF','NFK','574','672',1,1),(164,'Norway','NO','NOR','578','047',1,1),(165,'Oman','OM','OMN','512','968',1,1),(166,'Pakistan','PK','PAK','586','092',1,1),(167,'Palau','PW','PLW','585','680',1,1),(168,'Palestine','PS','PSE','275','970',1,1),(169,'Panama','PA','PAN','591','507',1,1),(170,'Papua New Guinea','PG','PNG','598','675',1,1),(171,'Paraguay','PY','PRY','600','595',1,1),(172,'Peru','PE','PER','604','051',1,1),(173,'Philippines','PH','PHL','608','063',1,1),(174,'Poland','PL','POL','616','048',1,1),(175,'Puerto Rico','PR','PRI','630','787',1,1),(176,'Qatar','QA','QAT','634','974',0,1),(177,'Reunion Island','RE','REU','638','262',1,1),(178,'Romania','RO','ROU','642','040',1,1),(179,'Rwanda','RW','RWA','646','250',0,1),(180,'St. Helena','SH','SHN','654','290',1,1),(181,'St. Kitts','KN','KNA','659','869',0,1),(182,'St. Lucia','LC','LCA','662','758',0,1),(183,'St. Pierre & Miquelon','PM','SPM','666','508',1,1),(184,'St. Vincent','VC','VCT','670','784',1,1),(185,'San Marino','SM','SMR','674','378',1,1),(186,'Sao Tome & Principe','ST','STP','678','239',0,1),(187,'Saudi Arabia','SA','SAU','682','966',1,1),(188,'Senegal','SN','SEN','686','221',1,1),(189,'Serbia','RS','SRB','688','381',1,1),(190,'Seychelles','SC','SYC','690','248',0,1),(191,'Sierra Leone','SL','SLE','694','249',0,1),(192,'Slovakia','SK','SVK','703','421',1,1),(193,'Slovenia','SI','SVN','705','386',1,1),(194,'Solomon Islands','SB','SLB','90','677',0,1),(195,'Somalia','SO','SOM','706','252',0,1),(196,'South Africa','ZA','ZAF','710','027',1,1),(197,'Sri Lanka','LK','LKA','144','094',1,1),(198,'Sudan','SD','SDN','736','095',1,1),(199,'Suriname','SR','SUR','740','597',0,1),(200,'Swaziland','SZ','SWZ','748','268',1,1),(201,'Sweden','SE','SWE','752','046',1,1),(202,'Switzerland','CH','CHE','756','041',1,1),(203,'Syria','SY','SYR','760','963',0,1),(204,'Taiwan','TW','TWN','158','886',1,1),(205,'Tajikistan','TJ','TJK','762','992',1,1),(206,'Tanzania','TZ','TZA','834','255',0,1),(207,'Thailand','TH','THA','764','066',1,1),(208,'Togo','TG','TGO','768','228',1,1),(209,'Tonga','TO','TON','776','676',0,1),(210,'Trinidad & Tobago','TT','TTO','780','868',0,1),(211,'Tunisia','TN','TUN','788','216',1,1),(212,'Turkmenistan','TM','TKM','795','993',1,1),(213,'Turks & Caicos','TC','TCA','796','649',1,1),(214,'Tuvalu','TV','TUV','798','688',0,1),(215,'Uganda','UG','UGA','800','256',0,1),(216,'Ukraine','UA','UKR','804','380',1,1),(217,'United Arab Emirates','AE','ARE','784','971',0,1),(218,'Uruguay','UY','URY','858','598',1,1),(219,'Uzbekistan','UZ','UZB','860','998',1,1),(220,'Vanuatu','VU','VUT','548','678',0,1),(221,'Vatican City','VA','VAT','336','039',1,1),(222,'Venezuela','VE','VEN','862','058',1,1),(223,'Wallis & Futuna','WF','WLF','876','681',1,1),(224,'Western Samoa','EH','ESH','732','685',1,1),(225,'Yemen','YE','YEM','887','967',0,1),(226,'Zambia','ZM','ZMB','894','260',1,1),(227,'Zimbabwe','ZW','ZWE','716','263',0,1);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cyrususer`
--

DROP TABLE IF EXISTS `cyrususer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cyrususer` (
  `userId` varchar(75) NOT NULL,
  `password_` varchar(75) NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cyrususer`
--

LOCK TABLES `cyrususer` WRITE;
/*!40000 ALTER TABLE `cyrususer` DISABLE KEYS */;
/*!40000 ALTER TABLE `cyrususer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cyrusvirtual`
--

DROP TABLE IF EXISTS `cyrusvirtual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cyrusvirtual` (
  `emailAddress` varchar(75) NOT NULL,
  `userId` varchar(75) NOT NULL,
  PRIMARY KEY (`emailAddress`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cyrusvirtual`
--

LOCK TABLES `cyrusvirtual` WRITE;
/*!40000 ALTER TABLE `cyrusvirtual` DISABLE KEYS */;
/*!40000 ALTER TABLE `cyrusvirtual` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddlrecord`
--

DROP TABLE IF EXISTS `ddlrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddlrecord` (
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
  KEY `IX_87A6B599` (`recordSetId`),
  KEY `IX_AAC564D3` (`recordSetId`,`userId`),
  KEY `IX_8BC2F891` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddlrecord`
--

LOCK TABLES `ddlrecord` WRITE;
/*!40000 ALTER TABLE `ddlrecord` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddlrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddlrecordset`
--

DROP TABLE IF EXISTS `ddlrecordset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddlrecordset` (
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
  KEY `IX_561E44E9` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddlrecordset`
--

LOCK TABLES `ddlrecordset` WRITE;
/*!40000 ALTER TABLE `ddlrecordset` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddlrecordset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddlrecordversion`
--

DROP TABLE IF EXISTS `ddlrecordversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddlrecordversion` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddlrecordversion`
--

LOCK TABLES `ddlrecordversion` WRITE;
/*!40000 ALTER TABLE `ddlrecordversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddlrecordversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmcontent`
--

DROP TABLE IF EXISTS `ddmcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmcontent` (
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
  KEY `IX_AE4B50C2` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmcontent`
--

LOCK TABLES `ddmcontent` WRITE;
/*!40000 ALTER TABLE `ddmcontent` DISABLE KEYS */;
INSERT INTO `ddmcontent` VALUES ('dca5c1b8-860b-46f8-b61b-0565bc985750',10478,10179,10153,10157,'','2013-12-21 19:16:04','2013-12-21 19:16:04','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('9457482e-9f19-44c2-9328-20d854abc038',10482,10179,10153,10157,'','2013-12-21 19:16:06','2013-12-21 19:16:06','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('96bc00aa-3d55-45f7-8e9a-e77032f5afe0',10486,10179,10153,10157,'','2013-12-21 19:16:07','2013-12-21 19:16:07','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('241fd82c-781f-46e1-b574-e656580ad4b2',10490,10179,10153,10157,'','2013-12-21 19:16:07','2013-12-21 19:16:07','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('556d3bf6-95a7-4aee-bbd9-c87b22cfe4b0',10494,10179,10153,10157,'','2013-12-21 19:16:07','2013-12-21 19:16:07','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('ccfcc9be-ffcf-4956-b713-168d9a9f6995',10500,10179,10153,10157,'','2013-12-21 19:16:08','2013-12-21 19:16:08','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[700]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/png]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[304]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8 8 8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('3cc4dd0d-bc23-4142-a05d-a892a1805c87',10512,10179,10153,10157,'','2013-12-21 19:16:08','2013-12-21 19:16:08','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('3c02cb4d-a5b9-44af-847a-d68b67ccbccf',10524,10179,10153,10157,'','2013-12-21 19:16:09','2013-12-21 19:16:09','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('a356be23-6d46-4c34-bccc-bc79b29818c5',10536,10179,10153,10157,'','2013-12-21 19:16:09','2013-12-21 19:16:09','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('18813dea-2357-4784-9308-0bb35ec3d183',10548,10179,10153,10157,'','2013-12-21 19:16:10','2013-12-21 19:16:10','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('d2bd9e8d-968d-4e5b-a8bc-aca14782d4cb',10560,10179,10153,10157,'','2013-12-21 19:16:10','2013-12-21 19:16:10','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('6fc7ee3d-18f8-4c5c-94cb-631af54dcef7',10577,10179,10153,10157,'','2013-12-21 19:16:10','2013-12-21 19:16:10','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>'),('30ccd74f-5101-490a-8443-9c2dcda5bee6',10582,10179,10153,10157,'','2013-12-21 19:16:11','2013-12-21 19:16:11','com.liferay.portlet.dynamicdatamapping.model.DDMStorageLink','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"TIFF_IMAGE_WIDTH\">\n		<dynamic-content><![CDATA[460]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"HttpHeaders_CONTENT_TYPE\">\n		<dynamic-content><![CDATA[image/jpeg]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_IMAGE_LENGTH\">\n		<dynamic-content><![CDATA[303]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element name=\"TIFF_BITS_PER_SAMPLE\">\n		<dynamic-content><![CDATA[8]]></dynamic-content>\n	</dynamic-element>\n</root>');
/*!40000 ALTER TABLE `ddmcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmstoragelink`
--

DROP TABLE IF EXISTS `ddmstoragelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmstoragelink` (
  `uuid_` varchar(75) DEFAULT NULL,
  `storageLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`storageLinkId`),
  UNIQUE KEY `IX_702D1AD5` (`classPK`),
  KEY `IX_81776090` (`structureId`),
  KEY `IX_32A18526` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmstoragelink`
--

LOCK TABLES `ddmstoragelink` WRITE;
/*!40000 ALTER TABLE `ddmstoragelink` DISABLE KEYS */;
INSERT INTO `ddmstoragelink` VALUES ('9fcd0bdc-6674-4304-8bd4-ff694946c607',10479,10099,10478,10309),('ef271c24-a076-49b4-8e3d-52282ad2a8ec',10483,10099,10482,10309),('71862e6a-0ce8-491c-8582-e9cc6e5bbe01',10487,10099,10486,10309),('6a69535a-3bf8-4293-a4b2-37b04d5c31c3',10491,10099,10490,10309),('f32d826a-45c1-4e48-afb4-ab791d5a6b9b',10496,10099,10494,10309),('711b8e91-83bc-4241-b4e1-0675d8f5a8ef',10501,10099,10500,10309),('4789b0cb-6fd4-403c-8e99-bcb901c20883',10513,10099,10512,10309),('ba5f7c7e-02be-44c9-aca4-949b7a2448a8',10525,10099,10524,10309),('1d628a5e-503a-4d28-a2b9-3d2a55fcce7e',10537,10099,10536,10309),('9356460a-0e7c-4f4a-81e6-3f00197487b9',10549,10099,10548,10309),('8b3263ea-475c-4312-ad1b-14ea03595e7e',10561,10099,10560,10309),('59ac1e14-88eb-42ce-8900-c07853bf31bd',10578,10099,10577,10309),('c6ec3909-9832-411b-9520-37a441fc08e7',10583,10099,10582,10309);
/*!40000 ALTER TABLE `ddmstoragelink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmstructure`
--

DROP TABLE IF EXISTS `ddmstructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmstructure` (
  `uuid_` varchar(75) DEFAULT NULL,
  `structureId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `structureKey` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsd` longtext,
  `storageType` varchar(75) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  PRIMARY KEY (`structureId`),
  UNIQUE KEY `IX_490E7A1E` (`groupId`,`structureKey`),
  UNIQUE KEY `IX_85C7EBE2` (`uuid_`,`groupId`),
  KEY `IX_31817A62` (`classNameId`),
  KEY `IX_4FBAC092` (`companyId`,`classNameId`),
  KEY `IX_C8419FBE` (`groupId`),
  KEY `IX_E61809C8` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmstructure`
--

LOCK TABLES `ddmstructure` WRITE;
/*!40000 ALTER TABLE `ddmstructure` DISABLE KEYS */;
INSERT INTO `ddmstructure` VALUES ('ec3bb413-0916-4fc1-a788-0b564f2c82c2',10298,10191,10153,10157,'','2013-12-21 19:14:38','2013-12-21 19:14:38',10089,'Learning Module Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Learning Module Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Learning Module Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2235\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3212\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4115\" type=\"select\">\n		<dynamic-element name=\"administration\" type=\"option\" value=\"admin\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Administration]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"installation\" type=\"option\" value=\"install\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Installation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"configuration\" type=\"option\" value=\"config\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Configuration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Topics]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select5069\" type=\"select\">\n		<dynamic-element name=\"beginner\" type=\"option\" value=\"beginner\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Beginner]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intermediate\" type=\"option\" value=\"intermediate\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intermediate]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"advanced\" type=\"option\" value=\"advanced\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Advanced]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Level]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('b569703b-84c6-4e0f-b57b-390cf1dfe0d6',10299,10191,10153,10157,'','2013-12-21 19:14:38','2013-12-21 19:14:38',10089,'Marketing Campaign Theme Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Campaign Theme Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Campaign Theme Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2305\" type=\"select\">\n		<dynamic-element name=\"strong_company\" type=\"option\" value=\"strong\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Strong Company]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"new_product_launch\" type=\"option\" value=\"product\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[New Product Launch]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"company_philosophy\" type=\"option\" value=\"philosophy\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Company Philosophy]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Select]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3229\" type=\"select\">\n		<dynamic-element name=\"your_trusted_advisor\" type=\"option\" value=\"advisor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Your Trusted Advisor]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"10_years_of_customer_solutions\" type=\"option\" value=\"solutions\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[10 Years of Customer Solutions]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"making_a_difference\" type=\"option\" value=\"difference\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Making a Difference]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Campaign Theme]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4282\" type=\"select\">\n		<dynamic-element name=\"awareness\" type=\"option\" value=\"awareness\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Awareness]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"lead_generation\" type=\"option\" value=\"leads\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Lead Generation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"customer_service\" type=\"option\" value=\"service\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Customer Service]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Business Goal]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('64d04bf4-4389-4a9f-aecd-6290376f607e',10300,10191,10153,10157,'','2013-12-21 19:14:38','2013-12-21 19:14:38',10089,'Meeting Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Metadata for meeting</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date3054\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2217\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Meeting Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text4569\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text5638\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea6584\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea7502\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Participants]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('8abdcbdb-55a2-47ac-924f-b551222a2a5f',10302,10191,10153,10157,'','2013-12-21 19:14:39','2013-12-21 19:14:39',10089,'auto_8c0ffc94-25c9-4d78-9e52-5ebf5551486b','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contract</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date18949\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Effective Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date20127\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Expiration Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select10264\" type=\"select\">\n		<dynamic-element name=\"nda\" type=\"option\" value=\"NDA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[NDA]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"msa\" type=\"option\" value=\"MSA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[MSA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"license_agreement\" type=\"option\" value=\"License\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[License Agreement]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Contract Type]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4893\" type=\"select\">\n		<dynamic-element name=\"draft\" type=\"option\" value=\"Draft\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Draft]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"in_review\" type=\"option\" value=\"Review\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[In Review]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"suspended\" type=\"option\" value=\"Suspended\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Suspended]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"signed\" type=\"option\" value=\"Signed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Signed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text14822\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Legal Reviewer]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text17700\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Signing Authority]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2087\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Deal Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('84263854-84a8-4813-bfe5-f3b4fb211249',10304,10191,10153,10157,'','2013-12-21 19:14:39','2013-12-21 19:14:39',10089,'auto_e75d235a-3146-464e-91c0-2404ca564032','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"radio5547\" type=\"radio\">\n		<dynamic-element name=\"yes\" type=\"option\" value=\"yes\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yes]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"no\" type=\"option\" value=\"no\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[No]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Needs Legal Review]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2033\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Banner Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea2873\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('d11aa25a-9048-481c-9ad1-fabc3b0f9121',10306,10191,10153,10157,'','2013-12-21 19:14:39','2013-12-21 19:14:39',10089,'auto_054c48ad-4bb4-4723-8720-2df5f7d4909e','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"text2082\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Lesson Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2979\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('05d36be2-2525-4a3c-bdb9-2c1a238a3533',10308,10191,10153,10157,'','2013-12-21 19:14:39','2013-12-21 19:14:39',10089,'auto_ec1e5f35-3604-4541-8db1-2987d9845b6e','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2890\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3864\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4831\" type=\"select\">\n		<dynamic-element name=\"website\" type=\"option\" value=\"website\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Website]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"collaboration\" type=\"option\" value=\"collaboration\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Collaboration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intranet\" type=\"option\" value=\"intranet\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intranet]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Areas of Interest]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select5929\" type=\"select\">\n		<dynamic-element name=\"acme\" type=\"option\" value=\"acme\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[ACME]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"sevencogs\" type=\"option\" value=\"sevencogs\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[SevenCogs]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"freeplus\" type=\"option\" value=\"freeplus\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[FreePlus]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Competitors]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text1993\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Prospect Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('73006390-bd89-49be-bb54-9bdb189d7940',10309,10191,10153,10157,'','2013-12-21 19:14:39','2013-12-21 19:14:39',10010,'TikaRawMetadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">TikaRawMetadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">TikaRawMetadata</Description></root>','<root available-locales=\"en_US\" default-locale=\"en_US\"><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROGRAM_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROGRAM_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMAND_LINE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMAND_LINE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_HISTORY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.HISTORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_TABLE_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.TABLE_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_INSTITUTION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.INSTITUTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_SOURCE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONTACT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONTACT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_PROJECT_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.PROJECT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_CONVENTIONS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.CONVENTIONS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REFERENCES\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REFERENCES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_ACKNOWLEDGEMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.ACKNOWLEDGEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_REALIZATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.REALIZATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_EXPERIMENT_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.EXPERIMENT_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_COMMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"ClimateForcast_MODEL_NAME_ENGLISH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.ClimateForcast.MODEL_NAME_ENGLISH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_URL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_URL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_LICENSE_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.LICENSE_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"CreativeCommons_WORK_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.CreativeCommons.WORK_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_NAMESPACE_URI_DC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_NAMESPACE_URI_DC_TERMS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.NAMESPACE_URI_DC_TERMS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PREFIX_DC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PREFIX_DC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PREFIX_DC_TERMS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PREFIX_DC_TERMS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_FORMAT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_IDENTIFIER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.IDENTIFIER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_MODIFIED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CONTRIBUTOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CONTRIBUTOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_COVERAGE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.COVERAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CREATOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CREATOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_CREATED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.CREATED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_DESCRIPTION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.DESCRIPTION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_LANGUAGE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_PUBLISHER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.PUBLISHER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RELATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RELATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_RIGHTS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.RIGHTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SOURCE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SOURCE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_SUBJECT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.SUBJECT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TITLE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TITLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"DublinCore_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.DublinCore.TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LATITUDE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.LATITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_LONGITUDE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.LONGITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Geographic_ALTITUDE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Geographic.ALTITUDE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_ENCODING\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_ENCODING]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LANGUAGE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LANGUAGE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LENGTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_DISPOSITION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_DISPOSITION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_MD5\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_MD5]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_CONTENT_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.CONTENT_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LAST_MODIFIED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LAST_MODIFIED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"HttpHeaders_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.HttpHeaders.LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_RECIPIENT_ADDRESS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_RECIPIENT_ADDRESS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_FROM\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_FROM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_TO\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_TO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_CC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_CC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"Message_MESSAGE_BCC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.Message.MESSAGE_BCC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_KEYWORDS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.KEYWORDS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMMENTS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMMENTS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_AUTHOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_AUTHOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.AUTHOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_REVISION_NUMBER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.REVISION_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TEMPLATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TEMPLATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TOTAL_TIME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TOTAL_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PRESENTATION_FORMAT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PRESENTATION_FORMAT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_NOTES\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.NOTES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_MANAGER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.MANAGER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_APPLICATION_VERSION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.APPLICATION_VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_VERSION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.VERSION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CONTENT_STATUS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CONTENT_STATUS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CATEGORY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CATEGORY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_COMPANY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.COMPANY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SECURITY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SECURITY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_SLIDE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.SLIDE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PAGE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PAGE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_PARAGRAPH_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.PARAGRAPH_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LINE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LINE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_WORD_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.WORD_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CHARACTER_COUNT_WITH_SPACES\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CHARACTER_COUNT_WITH_SPACES]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_TABLE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.TABLE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_IMAGE_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.IMAGE_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_OBJECT_COUNT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.OBJECT_COUNT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_EDIT_TIME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.EDIT_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_CREATION_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.CREATION_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_SAVED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_SAVED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_LAST_PRINTED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.LAST_PRINTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"MSOffice_USER_DEFINED_METADATA_NAME_PREFIX\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.MSOffice.USER_DEFINED_METADATA_NAME_PREFIX]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_BITS_PER_SAMPLE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.BITS_PER_SAMPLE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_LENGTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_IMAGE_WIDTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.IMAGE_WIDTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SAMPLES_PER_PIXEL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.SAMPLES_PER_PIXEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FLASH_FIRED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.FLASH_FIRED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EXPOSURE_TIME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EXPOSURE_TIME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_F_NUMBER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.F_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_FOCAL_LENGTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.FOCAL_LENGTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ISO_SPEED_RATINGS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ISO_SPEED_RATINGS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MAKE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MAKE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_EQUIPMENT_MODEL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.EQUIPMENT_MODEL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_SOFTWARE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.SOFTWARE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIENTATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIENTATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_HORIZONTAL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_HORIZONTAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_VERTICAL\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_VERTICAL]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_RESOLUTION_UNIT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.RESOLUTION_UNIT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TIFF_ORIGINAL_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TIFF.ORIGINAL_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_RESOURCE_NAME_KEY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.RESOURCE_NAME_KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_PROTECTED\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.PROTECTED]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMetadataKeys_EMBEDDED_RELATIONSHIP_ID\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMetadataKeys.EMBEDDED_RELATIONSHIP_ID]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_TIKA_MIME_FILE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.TIKA_MIME_FILE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"TikaMimeKeys_MIME_TYPE_MAGIC\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.TikaMimeKeys.MIME_TYPE_MAGIC]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_DURATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.DURATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ABS_PEAK_AUDIO_FILE_PATH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ABS_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALBUM\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALBUM]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ALT_TAPE_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ALT_TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ARTIST\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ARTIST]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_MOD_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_RATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_SAMPLE_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_SAMPLE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_CHANNEL_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_CHANNEL_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_AUDIO_COMPRESSOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.AUDIO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COMPOSER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COMPOSER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_COPYRIGHT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.COPYRIGHT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_ENGINEER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.ENGINEER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_FILE_DATA_RATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.FILE_DATA_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_GENRE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.GENRE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_INSTRUMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.INSTRUMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_KEY\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.KEY]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOG_COMMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOG_COMMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_LOOP\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.LOOP]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_NUMBER_OF_BEATS\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.NUMBER_OF_BEATS]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_METADATA_MOD_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.METADATA_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_PULL_DOWN\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.PULL_DOWN]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELATIVE_PEAK_AUDIO_FILE_PATH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELATIVE_PEAK_AUDIO_FILE_PATH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_RELEASE_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.RELEASE_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCALE_TYPE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCALE_TYPE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SCENE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SCENE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_LOCATION\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_LOCATION]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SHOT_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SHOT_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_SPEAKER_PLACEMENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.SPEAKER_PLACEMENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_STRETCH_MODE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.STRETCH_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TAPE_NAME\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TAPE_NAME]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TEMPO\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TEMPO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TIME_SIGNATURE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TIME_SIGNATURE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_TRACK_NUMBER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.TRACK_NUMBER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_MODE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_MODE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_ALPHA_UNITY_IS_TRANSPARENT\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_ALPHA_UNITY_IS_TRANSPARENT]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COLOR_SPACE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COLOR_SPACE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_COMPRESSOR\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_COMPRESSOR]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FIELD_ORDER\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FIELD_ORDER]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_FRAME_RATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_FRAME_RATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_MOD_DATE\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_MOD_DATE]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_DEPTH\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_DEPTH]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element><dynamic-element dataType=\"string\" name=\"XMPDM_VIDEO_PIXEL_ASPECT_RATIO\" type=\"text\"><meta-data locale=\"en_US\"><entry name=\"label\"><![CDATA[metadata.XMPDM.VIDEO_PIXEL_ASPECT_RATIO]]></entry><entry name=\"predefinedValue\"><![CDATA[]]></entry><entry name=\"required\"><![CDATA[false]]></entry><entry name=\"showLabel\"><![CDATA[true]]></entry></meta-data></dynamic-element></root>','xml',0),('721fa5ad-7b4c-4b04-ad91-06a8518f1ac6',10400,10179,10153,10157,'','2013-12-21 19:14:52','2013-12-21 19:14:52',10097,'Contacts','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contacts</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contacts</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"company\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Company]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"email\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Email]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"firstName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[First Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imService\" type=\"select\">\n		<dynamic-element name=\"aol\" type=\"option\" value=\"aol\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[AOL]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"yahoo\" type=\"option\" value=\"yahoo\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yahoo]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"gtalk\" type=\"option\" value=\"gtalk\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[GTalk]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Instant Messenger Service]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"gtalk\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"imUserName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Instant Messenger]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"jobTitle\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Job Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"lastName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Last Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"notes\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Notes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneMobile\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Phone (Mobile)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"phoneOffice\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Phone (Office)]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('41483276-a24c-4215-8874-d6b45b3f78c9',10401,10179,10153,10157,'','2013-12-21 19:14:52','2013-12-21 19:14:52',10097,'Events','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Events</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Events</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"cost\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Cost]]></entry>\n			<entry name=\"name\"><![CDATA[cost]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"name\"><![CDATA[description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[textarea]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"eventDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"name\"><![CDATA[eventDate]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-date]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventName\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Event Name]]></entry>\n			<entry name=\"name\"><![CDATA[eventName]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"eventTime\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"name\"><![CDATA[eventTime]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"name\"><![CDATA[location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[text]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('060fb5c0-a490-40c8-8330-1f5e02c6bf19',10402,10179,10153,10157,'','2013-12-21 19:14:52','2013-12-21 19:14:52',10097,'Inventory','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Inventory</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Inventory</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"item\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Item]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"location\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"purchaseDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Purchase Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"style\"><![CDATA[]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"purchasePrice\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Purchase Price]]></entry>\n			<entry name=\"name\"><![CDATA[purchasePrice]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"double\" fieldNamespace=\"ddm\" name=\"quantity\" type=\"ddm-number\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Quantity]]></entry>\n			<entry name=\"name\"><![CDATA[quantity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-number]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('35a0f1d0-4303-4fb0-89f8-bbc3ea5137f5',10403,10179,10153,10157,'','2013-12-21 19:14:52','2013-12-21 19:14:52',10097,'Issues Tracking','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Issues Tracking</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Issue Tracking</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"dueDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Due Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"issueId\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Issue ID]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"severity\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"status\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('01565307-306b-418a-b5f8-130b6b2ce41d',10404,10179,10153,10157,'','2013-12-21 19:14:52','2013-12-21 19:14:52',10097,'Meeting Minutes','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Minutes</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Meeting Minutes</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"author\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"duration\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Duration]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"meetingDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Meeting Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"minutes\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Minutes]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('ce62ae37-7e19-4e61-bbb0-3b656c995d15',10405,10179,10153,10157,'','2013-12-21 19:14:52','2013-12-21 19:14:52',10097,'To Do','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">To Do</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">To Do</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"assignedTo\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Assigned To]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"file-upload\" fieldNamespace=\"ddm\" name=\"attachment\" type=\"ddm-fileupload\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"acceptFiles\"><![CDATA[*]]></entry>\n			<entry name=\"folder\"><![CDATA[{\"folderId\":0,\"folderName\":\"Documents Home\"}]]></entry>\n			<entry name=\"label\"><![CDATA[Attachment]]></entry>\n			<entry name=\"name\"><![CDATA[attachment]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[Upload documents no larger than 3,000k.]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-fileupload]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"comments\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Comments]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"description\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w100]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[100]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"endDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[End Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"integer\" fieldNamespace=\"ddm\" name=\"percentComplete\" type=\"ddm-integer\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[% Complete]]></entry>\n			<entry name=\"name\"><![CDATA[percentComplete]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[0]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"type\"><![CDATA[ddm-integer]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"severity\" type=\"select\">\n		<dynamic-element name=\"critical\" type=\"option\" value=\"critical\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Critical]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"major\" type=\"option\" value=\"major\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Major]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"minor\" type=\"option\" value=\"minor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Minor]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"trivial\" type=\"option\" value=\"trivial\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Trivial]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Severity]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"minor\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"startDate\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Start Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"status\" type=\"select\">\n		<dynamic-element name=\"open\" type=\"option\" value=\"open\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Open]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"pending\" type=\"option\" value=\"pending\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Pending]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"completed\" type=\"option\" value=\"completed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Completed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[[\"open\"]]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"title\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w50]]></entry>\n			<entry name=\"label\"><![CDATA[Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"width\"><![CDATA[50]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('8abdcbdb-55a2-47ac-924f-b551222a2a5f',11053,11037,10153,10157,'','2013-12-21 19:14:39','2013-12-21 19:14:39',10089,'auto_8c0ffc94-25c9-4d78-9e52-5ebf5551486b','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Contract</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Contract</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date18949\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Effective Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date20127\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Expiration Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select10264\" type=\"select\">\n		<dynamic-element name=\"nda\" type=\"option\" value=\"NDA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[NDA]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"msa\" type=\"option\" value=\"MSA\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[MSA]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"license_agreement\" type=\"option\" value=\"License\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[License Agreement]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Contract Type]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4893\" type=\"select\">\n		<dynamic-element name=\"draft\" type=\"option\" value=\"Draft\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Draft]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"in_review\" type=\"option\" value=\"Review\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[In Review]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"suspended\" type=\"option\" value=\"Suspended\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Suspended]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"signed\" type=\"option\" value=\"Signed\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Signed]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Status]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text14822\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Legal Reviewer]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text17700\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Signing Authority]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2087\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Deal Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('b569703b-84c6-4e0f-b57b-390cf1dfe0d6',11054,11037,10153,10157,'','2013-12-21 19:14:38','2013-12-21 19:14:38',10089,'Marketing Campaign Theme Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Campaign Theme Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Campaign Theme Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2305\" type=\"select\">\n		<dynamic-element name=\"strong_company\" type=\"option\" value=\"strong\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Strong Company]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"new_product_launch\" type=\"option\" value=\"product\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[New Product Launch]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"company_philosophy\" type=\"option\" value=\"philosophy\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Company Philosophy]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Select]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3229\" type=\"select\">\n		<dynamic-element name=\"your_trusted_advisor\" type=\"option\" value=\"advisor\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Your Trusted Advisor]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"10_years_of_customer_solutions\" type=\"option\" value=\"solutions\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[10 Years of Customer Solutions]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"making_a_difference\" type=\"option\" value=\"difference\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Making a Difference]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Campaign Theme]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4282\" type=\"select\">\n		<dynamic-element name=\"awareness\" type=\"option\" value=\"awareness\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Awareness]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"lead_generation\" type=\"option\" value=\"leads\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Lead Generation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"customer_service\" type=\"option\" value=\"service\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Customer Service]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Business Goal]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('84263854-84a8-4813-bfe5-f3b4fb211249',11055,11037,10153,10157,'','2013-12-21 19:14:39','2013-12-21 19:14:39',10089,'auto_e75d235a-3146-464e-91c0-2404ca564032','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Marketing Banner</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Marketing Banner</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"radio5547\" type=\"radio\">\n		<dynamic-element name=\"yes\" type=\"option\" value=\"yes\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Yes]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"no\" type=\"option\" value=\"no\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[No]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Needs Legal Review]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2033\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Banner Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea2873\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('ec3bb413-0916-4fc1-a788-0b564f2c82c2',11056,11037,10153,10157,'','2013-12-21 19:14:38','2013-12-21 19:14:38',10089,'Learning Module Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Learning Module Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Learning Module Metadata</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2235\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3212\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4115\" type=\"select\">\n		<dynamic-element name=\"administration\" type=\"option\" value=\"admin\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Administration]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"installation\" type=\"option\" value=\"install\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Installation]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"configuration\" type=\"option\" value=\"config\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Configuration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Topics]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select5069\" type=\"select\">\n		<dynamic-element name=\"beginner\" type=\"option\" value=\"beginner\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Beginner]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intermediate\" type=\"option\" value=\"intermediate\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intermediate]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"advanced\" type=\"option\" value=\"advanced\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Advanced]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Level]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('d11aa25a-9048-481c-9ad1-fabc3b0f9121',11057,11037,10153,10157,'','2013-12-21 19:14:39','2013-12-21 19:14:39',10089,'auto_054c48ad-4bb4-4723-8720-2df5f7d4909e','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Online Training</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Online Training</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"text2082\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Lesson Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2979\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Author]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1),('64d04bf4-4389-4a9f-aecd-6290376f607e',11058,11037,10153,10157,'','2013-12-21 19:14:38','2013-12-21 19:14:38',10089,'Meeting Metadata','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Meeting Metadata</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Metadata for meeting</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"date\" fieldNamespace=\"ddm\" name=\"ddm-date3054\" type=\"ddm-date\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Date]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text2217\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Meeting Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text4569\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Time]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text5638\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Location]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea6584\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Description]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"textarea7502\" type=\"textarea\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Participants]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',0),('05d36be2-2525-4a3c-bdb9-2c1a238a3533',11059,11037,10153,10157,'','2013-12-21 19:14:39','2013-12-21 19:14:39',10089,'auto_ec1e5f35-3604-4541-8db1-2987d9845b6e','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Sales Presentation</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Sales Presentation</Description></root>','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element dataType=\"string\" name=\"select2890\" type=\"select\">\n		<dynamic-element name=\"home_edition\" type=\"option\" value=\"HE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Home Edition]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"business_edition\" type=\"option\" value=\"BE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Business Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"enterprise_edition\" type=\"option\" value=\"EE\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Enterprise Edition]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Product]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select3864\" type=\"select\">\n		<dynamic-element name=\"1_0\" type=\"option\" value=\"1\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[1.0]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"2_0\" type=\"option\" value=\"2\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[2.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"3_0\" type=\"option\" value=\"3\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[3.0]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Version]]></entry>\n			<entry name=\"multiple\"><![CDATA[false]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select4831\" type=\"select\">\n		<dynamic-element name=\"website\" type=\"option\" value=\"website\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Website]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"collaboration\" type=\"option\" value=\"collaboration\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Collaboration]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"intranet\" type=\"option\" value=\"intranet\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[Intranet]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Areas of Interest]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"select5929\" type=\"select\">\n		<dynamic-element name=\"acme\" type=\"option\" value=\"acme\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[ACME]]></entry>\n				<entry name=\"multiple\"><![CDATA[false]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"sevencogs\" type=\"option\" value=\"sevencogs\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[SevenCogs]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"freeplus\" type=\"option\" value=\"freeplus\">\n			<meta-data locale=\"en_US\">\n				<entry name=\"label\"><![CDATA[FreePlus]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<meta-data locale=\"en_US\">\n			<entry name=\"displayChildLabelAsValue\"><![CDATA[true]]></entry>\n			<entry name=\"label\"><![CDATA[Competitors]]></entry>\n			<entry name=\"multiple\"><![CDATA[true]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element dataType=\"string\" name=\"text1993\" type=\"text\">\n		<meta-data locale=\"en_US\">\n			<entry name=\"fieldCssClass\"><![CDATA[aui-w25]]></entry>\n			<entry name=\"label\"><![CDATA[Prospect Name]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			<entry name=\"readOnly\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"showLabel\"><![CDATA[true]]></entry>\n			<entry name=\"tip\"><![CDATA[]]></entry>\n			<entry name=\"width\"><![CDATA[25]]></entry>\n		</meta-data>\n	</dynamic-element>\n</root>','xml',1);
/*!40000 ALTER TABLE `ddmstructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmstructurelink`
--

DROP TABLE IF EXISTS `ddmstructurelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmstructurelink` (
  `structureLinkId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`structureLinkId`),
  UNIQUE KEY `IX_C803899D` (`classPK`),
  KEY `IX_D43E4208` (`classNameId`),
  KEY `IX_17692B58` (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmstructurelink`
--

LOCK TABLES `ddmstructurelink` WRITE;
/*!40000 ALTER TABLE `ddmstructurelink` DISABLE KEYS */;
INSERT INTO `ddmstructurelink` VALUES (10480,10089,10445,10309),(10484,10089,10481,10309),(10488,10089,10485,10309),(10492,10089,10489,10309),(10498,10089,10493,10309),(10503,10089,10499,10309),(10514,10089,10511,10309),(10526,10089,10523,10309),(10538,10089,10535,10309),(10550,10089,10547,10309),(10562,10089,10559,10309),(10579,10089,10576,10309),(10584,10089,10581,10309);
/*!40000 ALTER TABLE `ddmstructurelink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ddmtemplate`
--

DROP TABLE IF EXISTS `ddmtemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ddmtemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `templateId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `structureId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `mode_` varchar(75) DEFAULT NULL,
  `language` varchar(75) DEFAULT NULL,
  `script` longtext,
  PRIMARY KEY (`templateId`),
  UNIQUE KEY `IX_1AA75CE3` (`uuid_`,`groupId`),
  KEY `IX_DB24DDDD` (`groupId`),
  KEY `IX_33BEF579` (`language`),
  KEY `IX_C9757A51` (`structureId`),
  KEY `IX_5BC0E264` (`structureId`,`type_`),
  KEY `IX_5B019FE8` (`structureId`,`type_`,`mode_`),
  KEY `IX_C4F283C8` (`type_`),
  KEY `IX_F2A243A7` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ddmtemplate`
--

LOCK TABLES `ddmtemplate` WRITE;
/*!40000 ALTER TABLE `ddmtemplate` DISABLE KEYS */;
/*!40000 ALTER TABLE `ddmtemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlcontent`
--

DROP TABLE IF EXISTS `dlcontent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlcontent` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlcontent`
--

LOCK TABLES `dlcontent` WRITE;
/*!40000 ALTER TABLE `dlcontent` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlcontent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentry`
--

DROP TABLE IF EXISTS `dlfileentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `versionUserId` bigint(20) DEFAULT NULL,
  `versionUserName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `folderId` bigint(20) DEFAULT NULL,
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
  PRIMARY KEY (`fileEntryId`),
  UNIQUE KEY `IX_5391712` (`groupId`,`folderId`,`name`),
  UNIQUE KEY `IX_ED5CA615` (`groupId`,`folderId`,`title`),
  UNIQUE KEY `IX_BC2E7E6A` (`uuid_`,`groupId`),
  KEY `IX_4CB1B2B4` (`companyId`),
  KEY `IX_8F6C75D0` (`folderId`,`name`),
  KEY `IX_F4AF5636` (`groupId`),
  KEY `IX_93CF8193` (`groupId`,`folderId`),
  KEY `IX_29D0AF28` (`groupId`,`folderId`,`fileEntryTypeId`),
  KEY `IX_43261870` (`groupId`,`userId`),
  KEY `IX_D20C434D` (`groupId`,`userId`,`folderId`),
  KEY `IX_D9492CF6` (`mimeType`),
  KEY `IX_64F0FE40` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentry`
--

LOCK TABLES `dlfileentry` WRITE;
/*!40000 ALTER TABLE `dlfileentry` DISABLE KEYS */;
INSERT INTO `dlfileentry` VALUES ('f385c3f5-175c-4a54-b1a8-02ce71271881',10428,10179,10153,10157,'',10157,'','2013-12-21 19:15:56','2013-12-21 19:15:56',10179,0,'1','jpg','image/jpeg','welcome_bg_3','','',0,'1.0',65684,0,0,0,0,0),('2d443ec1-20d8-4f4b-ab87-5fe866248c7d',10437,10179,10153,10157,'',10157,'','2013-12-21 19:16:00','2013-12-21 19:16:00',10179,0,'2','jpg','image/jpeg','welcome_bg_7','','',0,'1.0',68705,0,0,0,0,0),('53e5222a-7efd-41e9-9f89-355c6d0cc8e5',10446,10179,10153,10157,'',10157,'','2013-12-21 19:16:01','2013-12-21 19:16:01',10179,0,'3','jpg','image/jpeg','welcome_bg_11','','',0,'1.0',43583,0,0,0,0,0),('70c0ba97-a2a8-41f4-ac2d-0b14b56b8802',10454,10179,10153,10157,'',10157,'','2013-12-21 19:16:02','2013-12-21 19:16:02',10179,0,'4','jpg','image/jpeg','welcome_bg_12','','',0,'1.0',46446,0,0,0,0,0),('c31919dc-d31c-41f4-bd5c-ef940939bcd8',10462,10179,10153,10157,'',10157,'','2013-12-21 19:16:02','2013-12-21 19:16:02',10179,0,'5','jpg','image/jpeg','welcome_bg_5','','',0,'1.0',40022,0,0,0,0,0),('c00cc224-0022-4ed5-8533-bb15e723d369',10470,10179,10153,10157,'',10157,'','2013-12-21 19:16:03','2013-12-21 19:16:03',10179,0,'6','png','image/png','welcome_bg_10','','',0,'1.0',27139,0,0,0,0,0),('4a840905-b8e4-4054-99f4-f3cbc09813db',10495,10179,10153,10157,'',10157,'','2013-12-21 19:16:07','2013-12-21 19:16:07',10179,0,'7','jpg','image/jpeg','welcome_bg_2','','',0,'1.0',72911,0,0,0,0,0),('b31b3fc5-c92d-4535-9289-d192eb5983da',10509,10179,10153,10157,'',10157,'','2013-12-21 19:16:08','2013-12-21 19:16:08',10179,0,'8','jpg','image/jpeg','welcome_bg_13','','',0,'1.0',33632,0,0,0,0,0),('6001d1cd-a4c8-4ca9-9dde-77fb607affc0',10521,10179,10153,10157,'',10157,'','2013-12-21 19:16:09','2013-12-21 19:16:09',10179,0,'9','jpg','image/jpeg','welcome_bg_9','','',0,'1.0',50215,0,0,0,0,0),('5c5fcb9f-4c69-434f-9ef4-42d9384d94fd',10533,10179,10153,10157,'',10157,'','2013-12-21 19:16:09','2013-12-21 19:16:09',10179,0,'10','jpg','image/jpeg','welcome_bg_1','','',0,'1.0',54277,1,0,0,0,0),('5a88051b-689b-481a-a6a6-dffdd37ca570',10545,10179,10153,10157,'',10157,'','2013-12-21 19:16:10','2013-12-21 19:16:10',10179,0,'11','jpg','image/jpeg','welcome_bg_4','','',0,'1.0',62483,0,0,0,0,0),('e4f0a3b7-1121-4ffa-a71a-2f228cd03e48',10557,10179,10153,10157,'',10157,'','2013-12-21 19:16:10','2013-12-21 19:16:10',10179,0,'12','jpg','image/jpeg','welcome_bg_8','','',0,'1.0',43664,0,0,0,0,0),('718d137c-ea1f-4cc8-9569-af254333c5ff',10569,10179,10153,10157,'',10157,'','2013-12-21 19:16:10','2013-12-21 19:16:10',10179,0,'13','jpg','image/jpeg','welcome_bg_6','','',0,'1.0',45456,0,0,0,0,0);
/*!40000 ALTER TABLE `dlfileentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentrymetadata`
--

DROP TABLE IF EXISTS `dlfileentrymetadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentrymetadata` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentrymetadata`
--

LOCK TABLES `dlfileentrymetadata` WRITE;
/*!40000 ALTER TABLE `dlfileentrymetadata` DISABLE KEYS */;
INSERT INTO `dlfileentrymetadata` VALUES ('5ff44f5a-957b-4552-aee3-3f2b63f28d29',10445,10478,10309,0,10428,10429),('d1d8f619-9d08-4365-8e47-7bd9735c602d',10481,10482,10309,0,10437,10438),('98758049-38b1-4354-89fa-a170abc43a0d',10485,10486,10309,0,10446,10447),('150182da-026f-4117-908a-eebf46020c84',10489,10490,10309,0,10454,10455),('85f83f00-1a17-49cc-bc28-bc9f22940f58',10493,10494,10309,0,10462,10463),('6a5bd8dc-7d50-4635-b688-9a971fd42afa',10499,10500,10309,0,10470,10471),('6c459f2c-c42a-4305-83b6-af7bef6a74f1',10511,10512,10309,0,10495,10497),('a1900709-d9d6-4c24-8ca1-21facfd81307',10523,10524,10309,0,10509,10510),('d62174a4-6be5-43f4-9161-8ff9bdd35312',10535,10536,10309,0,10521,10522),('3701fbe9-2b10-42cb-8417-e63a77d02cf4',10547,10548,10309,0,10533,10534),('8df12193-f0b7-4f37-9480-65df3a295398',10559,10560,10309,0,10545,10546),('732a1245-5468-4e60-902b-d7594127a0a1',10576,10577,10309,0,10557,10558),('871b8890-81ce-41be-bfe8-92d1e0824563',10581,10582,10309,0,10569,10570);
/*!40000 ALTER TABLE `dlfileentrymetadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentrytype`
--

DROP TABLE IF EXISTS `dlfileentrytype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentrytype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`fileEntryTypeId`),
  UNIQUE KEY `IX_E9B6A85B` (`groupId`,`name`),
  UNIQUE KEY `IX_1399D844` (`uuid_`,`groupId`),
  KEY `IX_4501FD9C` (`groupId`),
  KEY `IX_90724726` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentrytype`
--

LOCK TABLES `dlfileentrytype` WRITE;
/*!40000 ALTER TABLE `dlfileentrytype` DISABLE KEYS */;
INSERT INTO `dlfileentrytype` VALUES ('2bb7d728-9461-4d65-8e02-f98e8fb9c858',0,0,0,0,'','2013-12-21 19:14:32','2013-12-21 19:14:32','Basic Document',''),('8c0ffc94-25c9-4d78-9e52-5ebf5551486b',10301,10191,10153,10157,'','2013-12-21 19:14:39','2013-12-21 19:14:39','Contract','Contract'),('e75d235a-3146-464e-91c0-2404ca564032',10303,10191,10153,10157,'','2013-12-21 19:14:39','2013-12-21 19:14:39','Marketing Banner','Marketing Banner'),('054c48ad-4bb4-4723-8720-2df5f7d4909e',10305,10191,10153,10157,'','2013-12-21 19:14:39','2013-12-21 19:14:39','Online Training','Online Training'),('ec1e5f35-3604-4541-8db1-2987d9845b6e',10307,10191,10153,10157,'','2013-12-21 19:14:39','2013-12-21 19:14:39','Sales Presentation','Sales Presentation');
/*!40000 ALTER TABLE `dlfileentrytype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentrytypes_ddmstructures`
--

DROP TABLE IF EXISTS `dlfileentrytypes_ddmstructures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentrytypes_ddmstructures` (
  `structureId` bigint(20) NOT NULL,
  `fileEntryTypeId` bigint(20) NOT NULL,
  PRIMARY KEY (`structureId`,`fileEntryTypeId`),
  KEY `IX_8373EC7C` (`fileEntryTypeId`),
  KEY `IX_F147CF3F` (`structureId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentrytypes_ddmstructures`
--

LOCK TABLES `dlfileentrytypes_ddmstructures` WRITE;
/*!40000 ALTER TABLE `dlfileentrytypes_ddmstructures` DISABLE KEYS */;
INSERT INTO `dlfileentrytypes_ddmstructures` VALUES (10302,10301),(10299,10303),(10304,10303),(10298,10305),(10306,10305),(10300,10307),(10308,10307);
/*!40000 ALTER TABLE `dlfileentrytypes_ddmstructures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileentrytypes_dlfolders`
--

DROP TABLE IF EXISTS `dlfileentrytypes_dlfolders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileentrytypes_dlfolders` (
  `fileEntryTypeId` bigint(20) NOT NULL,
  `folderId` bigint(20) NOT NULL,
  PRIMARY KEY (`fileEntryTypeId`,`folderId`),
  KEY `IX_5BB6AD6C` (`fileEntryTypeId`),
  KEY `IX_6E00A2EC` (`folderId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileentrytypes_dlfolders`
--

LOCK TABLES `dlfileentrytypes_dlfolders` WRITE;
/*!40000 ALTER TABLE `dlfileentrytypes_dlfolders` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfileentrytypes_dlfolders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfilerank`
--

DROP TABLE IF EXISTS `dlfilerank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfilerank` (
  `fileRankId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `fileEntryId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`fileRankId`),
  UNIQUE KEY `IX_38F0315` (`companyId`,`userId`,`fileEntryId`),
  KEY `IX_A65A1F8B` (`fileEntryId`),
  KEY `IX_BAFB116E` (`groupId`,`userId`),
  KEY `IX_EED06670` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfilerank`
--

LOCK TABLES `dlfilerank` WRITE;
/*!40000 ALTER TABLE `dlfilerank` DISABLE KEYS */;
INSERT INTO `dlfilerank` VALUES (10635,10179,10153,10195,'2013-12-21 19:22:29',10533);
/*!40000 ALTER TABLE `dlfilerank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileshortcut`
--

DROP TABLE IF EXISTS `dlfileshortcut`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileshortcut` (
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
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileShortcutId`),
  UNIQUE KEY `IX_FDB4A946` (`uuid_`,`groupId`),
  KEY `IX_B0051937` (`groupId`,`folderId`),
  KEY `IX_ECCE311D` (`groupId`,`folderId`,`status`),
  KEY `IX_4B7247F6` (`toFileEntryId`),
  KEY `IX_4831EBE4` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileshortcut`
--

LOCK TABLES `dlfileshortcut` WRITE;
/*!40000 ALTER TABLE `dlfileshortcut` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfileshortcut` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfileversion`
--

DROP TABLE IF EXISTS `dlfileversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfileversion` (
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
  `extension` varchar(75) DEFAULT NULL,
  `mimeType` varchar(75) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext,
  `changeLog` varchar(75) DEFAULT NULL,
  `extraSettings` longtext,
  `fileEntryTypeId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  `size_` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `statusByUserId` bigint(20) DEFAULT NULL,
  `statusByUserName` varchar(75) DEFAULT NULL,
  `statusDate` datetime DEFAULT NULL,
  PRIMARY KEY (`fileVersionId`),
  UNIQUE KEY `IX_E2815081` (`fileEntryId`,`version`),
  UNIQUE KEY `IX_C99B2650` (`uuid_`,`groupId`),
  KEY `IX_C68DC967` (`fileEntryId`),
  KEY `IX_D47BB14D` (`fileEntryId`,`status`),
  KEY `IX_DFD809D3` (`groupId`,`folderId`,`status`),
  KEY `IX_9BE769ED` (`groupId`,`folderId`,`title`,`version`),
  KEY `IX_FFB3395C` (`mimeType`),
  KEY `IX_4BFABB9A` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfileversion`
--

LOCK TABLES `dlfileversion` WRITE;
/*!40000 ALTER TABLE `dlfileversion` DISABLE KEYS */;
INSERT INTO `dlfileversion` VALUES ('dbe87e06-cc8c-411b-b930-f34f927035c2',10429,10179,10153,10157,'','2013-12-21 19:15:56','2013-12-21 19:15:56',10179,0,10428,'jpg','image/jpeg','welcome_bg_3','','','',0,'1.0',65684,0,10157,'','2013-12-21 19:15:57'),('e03d99c0-3cc1-4b8e-ab55-d59c4ce05adf',10438,10179,10153,10157,'','2013-12-21 19:16:00','2013-12-21 19:16:00',10179,0,10437,'jpg','image/jpeg','welcome_bg_7','','','',0,'1.0',68705,0,10157,'','2013-12-21 19:16:00'),('5f767c04-a036-4a4c-a90e-9a79decd4d55',10447,10179,10153,10157,'','2013-12-21 19:16:01','2013-12-21 19:16:01',10179,0,10446,'jpg','image/jpeg','welcome_bg_11','','','',0,'1.0',43583,0,10157,'','2013-12-21 19:16:01'),('a5b75c0f-0151-4649-a09e-67b90ab3a0d6',10455,10179,10153,10157,'','2013-12-21 19:16:02','2013-12-21 19:16:02',10179,0,10454,'jpg','image/jpeg','welcome_bg_12','','','',0,'1.0',46446,0,10157,'','2013-12-21 19:16:02'),('4994d7ec-0669-4f8d-a7e1-7614ec261406',10463,10179,10153,10157,'','2013-12-21 19:16:02','2013-12-21 19:16:02',10179,0,10462,'jpg','image/jpeg','welcome_bg_5','','','',0,'1.0',40022,0,10157,'','2013-12-21 19:16:03'),('cd82966a-f7b4-460d-9dd0-4d0dd2bbb0b3',10471,10179,10153,10157,'','2013-12-21 19:16:03','2013-12-21 19:16:03',10179,0,10470,'png','image/png','welcome_bg_10','','','',0,'1.0',27139,0,10157,'','2013-12-21 19:16:03'),('d8a32335-a31e-4a05-8b9b-814fa07c2ecd',10497,10179,10153,10157,'','2013-12-21 19:16:07','2013-12-21 19:16:07',10179,0,10495,'jpg','image/jpeg','welcome_bg_2','','','',0,'1.0',72911,0,10157,'','2013-12-21 19:16:08'),('64585a3b-811b-49c4-9d6c-a5791135f654',10510,10179,10153,10157,'','2013-12-21 19:16:08','2013-12-21 19:16:08',10179,0,10509,'jpg','image/jpeg','welcome_bg_13','','','',0,'1.0',33632,0,10157,'','2013-12-21 19:16:09'),('70343dd4-267a-4e59-bd3e-05559eb3fea6',10522,10179,10153,10157,'','2013-12-21 19:16:09','2013-12-21 19:16:09',10179,0,10521,'jpg','image/jpeg','welcome_bg_9','','','',0,'1.0',50215,0,10157,'','2013-12-21 19:16:09'),('457a182a-c12c-447c-a480-4aaf64a1e289',10534,10179,10153,10157,'','2013-12-21 19:16:09','2013-12-21 19:16:09',10179,0,10533,'jpg','image/jpeg','welcome_bg_1','','','',0,'1.0',54277,0,10157,'','2013-12-21 19:16:09'),('79aecaac-27c1-442c-8693-69389612cd83',10546,10179,10153,10157,'','2013-12-21 19:16:10','2013-12-21 19:16:10',10179,0,10545,'jpg','image/jpeg','welcome_bg_4','','','',0,'1.0',62483,0,10157,'','2013-12-21 19:16:10'),('d5b62090-329e-48f0-b731-24bf1efe9af9',10558,10179,10153,10157,'','2013-12-21 19:16:10','2013-12-21 19:16:10',10179,0,10557,'jpg','image/jpeg','welcome_bg_8','','','',0,'1.0',43664,0,10157,'','2013-12-21 19:16:10'),('4f1fccbc-85c9-45fb-8419-52ade25e63a7',10570,10179,10153,10157,'','2013-12-21 19:16:10','2013-12-21 19:16:10',10179,0,10569,'jpg','image/jpeg','welcome_bg_6','','','',0,'1.0',45456,0,10157,'','2013-12-21 19:16:10');
/*!40000 ALTER TABLE `dlfileversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlfolder`
--

DROP TABLE IF EXISTS `dlfolder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlfolder` (
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
  `name` varchar(100) DEFAULT NULL,
  `description` longtext,
  `lastPostDate` datetime DEFAULT NULL,
  `defaultFileEntryTypeId` bigint(20) DEFAULT NULL,
  `overrideFileEntryTypes` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`folderId`),
  UNIQUE KEY `IX_902FD874` (`groupId`,`parentFolderId`,`name`),
  UNIQUE KEY `IX_3CC1DED2` (`uuid_`,`groupId`),
  KEY `IX_A74DB14C` (`companyId`),
  KEY `IX_F2EA1ACE` (`groupId`),
  KEY `IX_49C37475` (`groupId`,`parentFolderId`),
  KEY `IX_2A048EA0` (`groupId`,`parentFolderId`,`mountPoint`),
  KEY `IX_51556082` (`parentFolderId`,`name`),
  KEY `IX_EE29C715` (`repositoryId`),
  KEY `IX_CBC408D8` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlfolder`
--

LOCK TABLES `dlfolder` WRITE;
/*!40000 ALTER TABLE `dlfolder` DISABLE KEYS */;
/*!40000 ALTER TABLE `dlfolder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dlsync`
--

DROP TABLE IF EXISTS `dlsync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dlsync` (
  `syncId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `fileId` bigint(20) DEFAULT NULL,
  `fileUuid` varchar(75) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `parentFolderId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` longtext,
  `event` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`syncId`),
  UNIQUE KEY `IX_F9821AB4` (`fileId`),
  KEY `IX_B53EC783` (`companyId`,`modifiedDate`,`repositoryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dlsync`
--

LOCK TABLES `dlsync` WRITE;
/*!40000 ALTER TABLE `dlsync` DISABLE KEYS */;
INSERT INTO `dlsync` VALUES (10435,10153,'2013-12-21 19:15:57','2013-12-21 19:15:57',10428,'f385c3f5-175c-4a54-b1a8-02ce71271881',10179,0,'welcome_bg_3','','add','file','1.0'),(10444,10153,'2013-12-21 19:16:00','2013-12-21 19:16:00',10437,'2d443ec1-20d8-4f4b-ab87-5fe866248c7d',10179,0,'welcome_bg_7','','add','file','1.0'),(10453,10153,'2013-12-21 19:16:01','2013-12-21 19:16:01',10446,'53e5222a-7efd-41e9-9f89-355c6d0cc8e5',10179,0,'welcome_bg_11','','add','file','1.0'),(10461,10153,'2013-12-21 19:16:02','2013-12-21 19:16:02',10454,'70c0ba97-a2a8-41f4-ac2d-0b14b56b8802',10179,0,'welcome_bg_12','','add','file','1.0'),(10469,10153,'2013-12-21 19:16:03','2013-12-21 19:16:03',10462,'c31919dc-d31c-41f4-bd5c-ef940939bcd8',10179,0,'welcome_bg_5','','add','file','1.0'),(10477,10153,'2013-12-21 19:16:03','2013-12-21 19:16:03',10470,'c00cc224-0022-4ed5-8533-bb15e723d369',10179,0,'welcome_bg_10','','add','file','1.0'),(10508,10153,'2013-12-21 19:16:08','2013-12-21 19:16:08',10495,'4a840905-b8e4-4054-99f4-f3cbc09813db',10179,0,'welcome_bg_2','','add','file','1.0'),(10520,10153,'2013-12-21 19:16:09','2013-12-21 19:16:09',10509,'b31b3fc5-c92d-4535-9289-d192eb5983da',10179,0,'welcome_bg_13','','add','file','1.0'),(10532,10153,'2013-12-21 19:16:09','2013-12-21 19:16:09',10521,'6001d1cd-a4c8-4ca9-9dde-77fb607affc0',10179,0,'welcome_bg_9','','add','file','1.0'),(10544,10153,'2013-12-21 19:16:09','2013-12-21 19:16:09',10533,'5c5fcb9f-4c69-434f-9ef4-42d9384d94fd',10179,0,'welcome_bg_1','','add','file','1.0'),(10556,10153,'2013-12-21 19:16:10','2013-12-21 19:16:10',10545,'5a88051b-689b-481a-a6a6-dffdd37ca570',10179,0,'welcome_bg_4','','add','file','1.0'),(10568,10153,'2013-12-21 19:16:10','2013-12-21 19:16:10',10557,'e4f0a3b7-1121-4ffa-a71a-2f228cd03e48',10179,0,'welcome_bg_8','','add','file','1.0'),(10580,10153,'2013-12-21 19:16:10','2013-12-21 19:16:10',10569,'718d137c-ea1f-4cc8-9569-af254333c5ff',10179,0,'welcome_bg_6','','add','file','1.0');
/*!40000 ALTER TABLE `dlsync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emailaddress`
--

DROP TABLE IF EXISTS `emailaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emailaddress` (
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
  KEY `IX_7B43CD8` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emailaddress`
--

LOCK TABLES `emailaddress` WRITE;
/*!40000 ALTER TABLE `emailaddress` DISABLE KEYS */;
/*!40000 ALTER TABLE `emailaddress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expandocolumn`
--

DROP TABLE IF EXISTS `expandocolumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expandocolumn` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expandocolumn`
--

LOCK TABLES `expandocolumn` WRITE;
/*!40000 ALTER TABLE `expandocolumn` DISABLE KEYS */;
INSERT INTO `expandocolumn` VALUES (10410,10153,10409,'manualCheckInRequired',1,'','hidden=true\n'),(10416,10153,10415,'clientId',15,'','');
/*!40000 ALTER TABLE `expandocolumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expandorow`
--

DROP TABLE IF EXISTS `expandorow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expandorow` (
  `rowId_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `tableId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`rowId_`),
  UNIQUE KEY `IX_81EFBFF5` (`tableId`,`classPK`),
  KEY `IX_D3F5D7AE` (`tableId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expandorow`
--

LOCK TABLES `expandorow` WRITE;
/*!40000 ALTER TABLE `expandorow` DISABLE KEYS */;
/*!40000 ALTER TABLE `expandorow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expandotable`
--

DROP TABLE IF EXISTS `expandotable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expandotable` (
  `tableId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`tableId`),
  UNIQUE KEY `IX_37562284` (`companyId`,`classNameId`,`name`),
  KEY `IX_B5AE8A85` (`companyId`,`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expandotable`
--

LOCK TABLES `expandotable` WRITE;
/*!40000 ALTER TABLE `expandotable` DISABLE KEYS */;
INSERT INTO `expandotable` VALUES (11046,10153,10002,'CUSTOM_FIELDS'),(10415,10153,10005,'MP'),(10409,10153,10010,'CUSTOM_FIELDS'),(11048,10153,10090,'CUSTOM_FIELDS'),(11047,10153,10101,'CUSTOM_FIELDS');
/*!40000 ALTER TABLE `expandotable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expandovalue`
--

DROP TABLE IF EXISTS `expandovalue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `expandovalue` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expandovalue`
--

LOCK TABLES `expandovalue` WRITE;
/*!40000 ALTER TABLE `expandovalue` DISABLE KEYS */;
/*!40000 ALTER TABLE `expandovalue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_`
--

DROP TABLE IF EXISTS `group_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_` (
  `groupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `creatorUserId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `parentGroupId` bigint(20) DEFAULT NULL,
  `liveGroupId` bigint(20) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `description` longtext,
  `type_` int(11) DEFAULT NULL,
  `typeSettings` longtext,
  `friendlyURL` varchar(100) DEFAULT NULL,
  `site` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`groupId`),
  UNIQUE KEY `IX_D0D5E397` (`companyId`,`classNameId`,`classPK`),
  UNIQUE KEY `IX_5DE0BE11` (`companyId`,`classNameId`,`liveGroupId`,`name`),
  UNIQUE KEY `IX_5BDDB872` (`companyId`,`friendlyURL`),
  UNIQUE KEY `IX_BBCA55B` (`companyId`,`liveGroupId`,`name`),
  UNIQUE KEY `IX_5AA68501` (`companyId`,`name`),
  KEY `IX_ABA5CEC2` (`companyId`),
  KEY `IX_16218A38` (`liveGroupId`),
  KEY `IX_7B590A7A` (`type_`,`active_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_`
--

LOCK TABLES `group_` WRITE;
/*!40000 ALTER TABLE `group_` DISABLE KEYS */;
INSERT INTO `group_` VALUES (10171,10153,10157,10001,10171,0,0,'Control Panel','',3,'','/control_panel',0,1),(10179,10153,10157,10001,10179,0,0,'Guest','',1,'false-robots.txt=User-Agent: *_SAFE_NEWLINE_CHARACTER_Disallow:_SAFE_NEWLINE_CHARACTER_Sitemap: http://127.0.0.1/sitemap.xml\nmergeGuestPublicPages=false\n','/guest',1,1),(10188,10153,10157,10187,10157,0,0,'User Personal Site','',3,'','/personal_site',0,1),(10191,10153,10157,10021,10153,0,0,'10153','',0,'','/global',0,1),(10199,10153,10195,10005,10195,0,0,'10195','',0,'','/test',0,1),(10311,10153,10157,10027,10310,0,0,'10310','',0,'','/template-10310',0,1),(10321,10153,10157,10027,10320,0,0,'10320','',0,'','/template-10320',0,1),(10330,10153,10157,10027,10329,0,0,'10329','',0,'','/template-10329',0,1),(10339,10153,10157,10031,10338,0,0,'10338','',0,'','/template-10338',0,1),(10365,10153,10157,10031,10364,0,0,'10364','',0,'','/template-10364',0,1),(10704,10153,10701,10005,10701,0,0,'10701','',0,'','/rahul',0,1),(10804,10153,10801,10005,10801,0,0,'10801','',0,'mergeGuestPublicPages=false\n','/rahul1',0,1),(11004,10153,11001,10005,11001,0,0,'11001','',0,'','/test1',0,1),(11037,10153,10801,10001,11037,0,0,'Charter','',1,'','/charter',1,1),(11089,10153,10801,10003,11088,0,0,'CharterSolution LFR_ORGANIZATION','',3,'','/chartersolution',0,1),(11095,10153,10801,10003,11094,0,0,'CharterSolution,noida LFR_ORGANIZATION','',3,'','/chartersolution-noida',0,1),(11101,10153,10801,10003,11100,0,0,'CharterSolution,kanpur LFR_ORGANIZATION','',3,'','/chartersolution-kanpur',0,1),(11109,10153,11106,10005,11106,0,0,'11106','',0,'','/anandsaxena',0,1);
/*!40000 ALTER TABLE `group_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_orgs`
--

DROP TABLE IF EXISTS `groups_orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_orgs` (
  `groupId` bigint(20) NOT NULL,
  `organizationId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`organizationId`),
  KEY `IX_75267DCA` (`groupId`),
  KEY `IX_6BBB7682` (`organizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_orgs`
--

LOCK TABLES `groups_orgs` WRITE;
/*!40000 ALTER TABLE `groups_orgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_permissions`
--

DROP TABLE IF EXISTS `groups_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_permissions` (
  `groupId` bigint(20) NOT NULL,
  `permissionId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`permissionId`),
  KEY `IX_C48736B` (`groupId`),
  KEY `IX_EC97689D` (`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_permissions`
--

LOCK TABLES `groups_permissions` WRITE;
/*!40000 ALTER TABLE `groups_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_roles`
--

DROP TABLE IF EXISTS `groups_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_roles` (
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`roleId`),
  KEY `IX_84471FD2` (`groupId`),
  KEY `IX_3103EF3D` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_roles`
--

LOCK TABLES `groups_roles` WRITE;
/*!40000 ALTER TABLE `groups_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_usergroups`
--

DROP TABLE IF EXISTS `groups_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups_usergroups` (
  `groupId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userGroupId`),
  KEY `IX_31FB749A` (`groupId`),
  KEY `IX_3B69160F` (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_usergroups`
--

LOCK TABLES `groups_usergroups` WRITE;
/*!40000 ALTER TABLE `groups_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `imageId` bigint(20) NOT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `text_` longtext,
  `type_` varchar(75) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `size_` int(11) DEFAULT NULL,
  PRIMARY KEY (`imageId`),
  KEY `IX_6A925A4D` (`size_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalarticle`
--

DROP TABLE IF EXISTS `journalarticle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalarticle` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `resourcePrimKey` bigint(20) DEFAULT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
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
  KEY `IX_9356F865` (`groupId`),
  KEY `IX_68C0F69C` (`groupId`,`articleId`),
  KEY `IX_4D5CD982` (`groupId`,`articleId`,`status`),
  KEY `IX_9CE6E0FA` (`groupId`,`classNameId`,`classPK`),
  KEY `IX_A2534AC2` (`groupId`,`classNameId`,`layoutUuid`),
  KEY `IX_91E78C35` (`groupId`,`classNameId`,`structureId`),
  KEY `IX_F43B9FF2` (`groupId`,`classNameId`,`templateId`),
  KEY `IX_3C028C1E` (`groupId`,`layoutUuid`),
  KEY `IX_301D024B` (`groupId`,`status`),
  KEY `IX_2E207659` (`groupId`,`structureId`),
  KEY `IX_8DEAE14E` (`groupId`,`templateId`),
  KEY `IX_22882D02` (`groupId`,`urlTitle`),
  KEY `IX_D2D249E8` (`groupId`,`urlTitle`,`status`),
  KEY `IX_F0A26B29` (`groupId`,`version`,`status`),
  KEY `IX_3F1EA19E` (`layoutUuid`),
  KEY `IX_33F49D16` (`resourcePrimKey`),
  KEY `IX_3E2765FC` (`resourcePrimKey`,`status`),
  KEY `IX_EF9B7028` (`smallImageId`),
  KEY `IX_8E8710D9` (`structureId`),
  KEY `IX_9106F6CE` (`templateId`),
  KEY `IX_F029602F` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalarticle`
--

LOCK TABLES `journalarticle` WRITE;
/*!40000 ALTER TABLE `journalarticle` DISABLE KEYS */;
INSERT INTO `journalarticle` VALUES ('8ccf7185-2638-44ac-ad67-6aa92d4fa1a4',10585,10586,10179,10153,10157,'','2013-12-21 19:16:11','2013-12-21 19:16:12',0,0,'WHO-IS-USING-LIFERAY',1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Who Is Using Liferay</Title></root>','who-is-using-liferay','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\"><![CDATA[<style type=\"text/css\">\n	.content-area.selected {\n		background: url(/documents/10179/0/welcome_bg_8/e4f0a3b7-1121-4ffa-a71a-2f228cd03e48?version=1.0&t=1387653370486) 100% 0 no-repeat;\n	}\n</style>\n\n<div class=\"navigation-wrapper\">\n	<header class=\"content-head content-head-liferay-portal\">\n		<hgroup>\n			<h1>\n				Liferay helps you build feature-rich, easy-to-use web applications quickly.\n			</h1>\n\n			<hr />\n		</hgroup>\n\n		<p>\n			Here are some of our customers from around the globe:\n		</p>\n\n		<ul class=\"left\">\n			<li><span>Rolex</span></li>\n			<li><span>Bugaboo</span></li>\n			<li><span>Deluxe Corporation</span></li>\n			<li><span>Domino\'s Pizza</span></li>\n			<li><span>BASF</span></li>\n		</ul>\n\n		<ul class=\"right\">\n			<li><span>Honda</span></li>\n			<li><span>GE Capital</span></li>\n			<li><span>Sesame Street</span></li>\n			<li><span>China Mobile</span></li>\n			<li><span>York University</span></li>\n		</ul>\n	</header>\n\n	<div class=\"content-area selected\">\n		<a href=\"//www.liferay.com/users?wh=8\" id=\"marketplace\">&nbsp;</a>\n	</div>\n</div>]]></static-content>\n</root>','general','','','','2010-02-01 00:00:00',NULL,NULL,1,0,10587,'',0,10157,'','2013-12-21 19:16:12'),('ee0b7223-855a-4ee6-8331-49b8f8d1b953',10597,10598,10179,10153,10157,'','2013-12-21 19:16:13','2013-12-21 19:16:13',0,0,'LIFERAY-BENEFITS',1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Liferay Benefits</Title></root>','liferay-benefits','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element instance-id=\"XbU4Tt8d\" name=\"page-title\" type=\"text\" index-type=\"\">\n		<dynamic-content><![CDATA[See how Liferay can change the way you do business.]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"zLvpsWs9\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"XbnjZ8Kf\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10179/0/welcome_bg_9/6001d1cd-a4c8-4ca9-9dde-77fb607affc0?version=1.0&t=1387653369325]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"Jg6grt09\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/open?wh=9]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Open Source: A Better Way]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"mVzYNdMh\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"LU7ujkcC\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10179/0/welcome_bg_10/c00cc224-0022-4ed5-8533-bb15e723d369?version=1.0&t=1387653363833]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"1LCJ560s\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/ready?wh=10]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Ready to Go]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"KC74M8j1\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"dhL2PHcA\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10179/0/welcome_bg_11/53e5222a-7efd-41e9-9f89-355c6d0cc8e5?version=1.0&t=1387653361455]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"padOwYYA\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/grow?wh=11]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Ready to Grow]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"A702mdKW\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"f1M1eNh9\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10179/0/welcome_bg_12/70c0ba97-a2a8-41f4-ac2d-0b14b56b8802?version=1.0&t=1387653362100]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"0stopvdI\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/approved?wh=12]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Approved by IT]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"ICAJilfL\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"Q20qsDlX\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10179/0/welcome_bg_13/b31b3fc5-c92d-4535-9289-d192eb5983da?version=1.0&t=1387653368922]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"2vjBgvkJ\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/subscription?wh=13]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Open for Business]]></dynamic-content>\n	</dynamic-element>\n</root>','general','WELCOME-CONTENT-STRUCTURE','WELCOME-CONTENT-TEMPLATE','','2010-02-01 00:00:00',NULL,NULL,1,0,10599,'',0,10157,'','2013-12-21 19:16:13'),('b60f117a-4789-4507-a3b3-cc64497542bd',10605,10606,10179,10153,10157,'','2013-12-21 19:16:13','2013-12-21 19:16:13',0,0,'WHAT-WE-DO',1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">What We Do</Title></root>','what-we-do','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<dynamic-element instance-id=\"opu708Sy\" name=\"page-title\" type=\"text\" index-type=\"\">\n		<dynamic-content><![CDATA[Liferay helps you build feature-rich, easy-to-use web applications quickly.]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"Dyig4q0t\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"iLGzkJA2\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10179/0/welcome_bg_1/5c5fcb9f-4c69-434f-9ef4-42d9384d94fd?version=1.0&t=1387653369806]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"D6RyRV8B\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/platform?wh=1]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[A Foundation for Apps]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"hPiZkCOd\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"MhNFM5l9\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10179/0/welcome_bg_2/4a840905-b8e4-4054-99f4-f3cbc09813db?version=1.0&t=1387653367820]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"cRxjgI5n\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/wem?wh=2]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Dynamic Websites]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"vpGFKJCQ\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"gh9EXOmx\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10179/0/welcome_bg_3/f385c3f5-175c-4a54-b1a8-02ce71271881?version=1.0&t=1387653356862]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"y9LxlToP\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/dm?wh=3]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Centralized Document Management]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"ouksVhdr\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"uBCTuyxG\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10179/0/welcome_bg_4/5a88051b-689b-481a-a6a6-dffdd37ca570?version=1.0&t=1387653370009]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"pd27Fmww\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/team?wh=4]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Intuitive Team Collaboration]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"x0WdWruO\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"qDdU3SDP\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10179/0/welcome_bg_5/c31919dc-d31c-41f4-bd5c-ef940939bcd8?version=1.0&t=1387653362975]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"sl1Vtl1C\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/productivity?wh=5]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Tools for Business]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"8hmTz6rx\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"a3KYFfTC\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10179/0/welcome_bg_6/718d137c-ea1f-4cc8-9569-af254333c5ff?version=1.0&t=1387653370766]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"RVoEeB9K\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/sync?wh=6]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Desktop & Mobile Access]]></dynamic-content>\n	</dynamic-element>\n	<dynamic-element instance-id=\"mB58buvT\" name=\"links\" type=\"text\" index-type=\"\">\n		<dynamic-element instance-id=\"zXTxzQGO\" name=\"bg-image\" type=\"document_library\" index-type=\"\">\n			<dynamic-content><![CDATA[/documents/10179/0/welcome_bg_7/2d443ec1-20d8-4f4b-ab87-5fe866248c7d?version=1.0&t=1387653360510]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-element instance-id=\"7LupLUIR\" name=\"action-link-url\" type=\"text\" index-type=\"\">\n			<dynamic-content><![CDATA[//www.liferay.com/marketplace?wh=7]]></dynamic-content>\n		</dynamic-element>\n		<dynamic-content><![CDATA[Liferay Marketplace]]></dynamic-content>\n	</dynamic-element>\n</root>','general','WELCOME-CONTENT-STRUCTURE','WELCOME-CONTENT-TEMPLATE','','2010-02-01 00:00:00',NULL,NULL,1,0,10607,'',0,10157,'','2013-12-21 19:16:13'),('ad5b6661-cd51-4375-bf16-c93e921e41bd',11320,11321,11037,10153,10801,'Rahul Tyagi','2013-12-28 11:23:48','2013-12-28 11:25:13',0,0,'11319',1,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Charter\'s Solution</Title></root>','charter-s-solution','','<?xml version=\"1.0\"?>\n\n<root available-locales=\"en_US\" default-locale=\"en_US\">\n	<static-content language-id=\"en_US\"><![CDATA[<span style=\"font-size:12px;\">This site caters to all the requirements of an organization.Employee directory, employee performance management system, client and vendor information management, billing and report generation.</span>]]></static-content>\n</root>','general','','','','2013-12-28 11:06:00',NULL,NULL,1,0,0,'',0,10801,'Rahul Tyagi','2013-12-28 11:25:13');
/*!40000 ALTER TABLE `journalarticle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalarticleimage`
--

DROP TABLE IF EXISTS `journalarticleimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalarticleimage` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalarticleimage`
--

LOCK TABLES `journalarticleimage` WRITE;
/*!40000 ALTER TABLE `journalarticleimage` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalarticleimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalarticleresource`
--

DROP TABLE IF EXISTS `journalarticleresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalarticleresource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `articleId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`),
  UNIQUE KEY `IX_88DF994A` (`groupId`,`articleId`),
  UNIQUE KEY `IX_84AB0309` (`uuid_`,`groupId`),
  KEY `IX_F8433677` (`groupId`),
  KEY `IX_DCD1FAC1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalarticleresource`
--

LOCK TABLES `journalarticleresource` WRITE;
/*!40000 ALTER TABLE `journalarticleresource` DISABLE KEYS */;
INSERT INTO `journalarticleresource` VALUES ('59702db5-09d0-47ce-a574-d4849cb4e21f',10586,10179,'WHO-IS-USING-LIFERAY'),('dae9694a-c763-4f33-bb30-104dc7a74bd6',10598,10179,'LIFERAY-BENEFITS'),('7d2b6b49-681d-4adb-8dba-12ae30ee2f78',10606,10179,'WHAT-WE-DO'),('729e1f05-f618-4936-8750-5b8dedaf4980',11321,11037,'11319');
/*!40000 ALTER TABLE `journalarticleresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalcontentsearch`
--

DROP TABLE IF EXISTS `journalcontentsearch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalcontentsearch` (
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
  KEY `IX_7ACC74C9` (`groupId`,`privateLayout`,`layoutId`,`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalcontentsearch`
--

LOCK TABLES `journalcontentsearch` WRITE;
/*!40000 ALTER TABLE `journalcontentsearch` DISABLE KEYS */;
INSERT INTO `journalcontentsearch` VALUES (11328,11037,10153,0,1,'56_INSTANCE_KcuNLC8ouyhU','11319');
/*!40000 ALTER TABLE `journalcontentsearch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalfeed`
--

DROP TABLE IF EXISTS `journalfeed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalfeed` (
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
  `feedType` varchar(75) DEFAULT NULL,
  `feedVersion` double DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_65576CBC` (`groupId`,`feedId`),
  UNIQUE KEY `IX_39031F51` (`uuid_`,`groupId`),
  KEY `IX_35A2DB2F` (`groupId`),
  KEY `IX_50C36D79` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalfeed`
--

LOCK TABLES `journalfeed` WRITE;
/*!40000 ALTER TABLE `journalfeed` DISABLE KEYS */;
/*!40000 ALTER TABLE `journalfeed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journalstructure`
--

DROP TABLE IF EXISTS `journalstructure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalstructure` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `parentStructureId` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsd` longtext,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_AB6E9996` (`groupId`,`structureId`),
  UNIQUE KEY `IX_42E86E58` (`uuid_`,`groupId`),
  KEY `IX_B97F5608` (`groupId`),
  KEY `IX_CA0BD48C` (`groupId`,`parentStructureId`),
  KEY `IX_4FA67B72` (`parentStructureId`),
  KEY `IX_8831E4FC` (`structureId`),
  KEY `IX_6702CA92` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalstructure`
--

LOCK TABLES `journalstructure` WRITE;
/*!40000 ALTER TABLE `journalstructure` DISABLE KEYS */;
INSERT INTO `journalstructure` VALUES ('99b9de99-c59d-4454-9a76-8777e5001d33',10594,10179,10153,10157,'','2013-12-21 19:16:12','2013-12-21 19:16:12','WELCOME-CONTENT-STRUCTURE','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome Content Structure</Name></root>','','<?xml version=\"1.0\"?>\n\n<root>\n	<dynamic-element name=\"page-title\" type=\"text\" index-type=\"\" repeatable=\"false\">\n		<meta-data>\n			<entry name=\"displayAsTooltip\"><![CDATA[true]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"instructions\"><![CDATA[]]></entry>\n			<entry name=\"label\"><![CDATA[Sub Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n	</dynamic-element>\n	<dynamic-element name=\"links\" type=\"text\" index-type=\"\" repeatable=\"true\">\n		<meta-data>\n			<entry name=\"displayAsTooltip\"><![CDATA[false]]></entry>\n			<entry name=\"required\"><![CDATA[false]]></entry>\n			<entry name=\"instructions\"><![CDATA[]]></entry>\n			<entry name=\"label\"><![CDATA[Link Title]]></entry>\n			<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n		</meta-data>\n		<dynamic-element name=\"bg-image\" type=\"document_library\" index-type=\"\" repeatable=\"false\">\n			<meta-data>\n				<entry name=\"displayAsTooltip\"><![CDATA[true]]></entry>\n				<entry name=\"required\"><![CDATA[false]]></entry>\n				<entry name=\"instructions\"><![CDATA[]]></entry>\n				<entry name=\"label\"><![CDATA[Background Image]]></entry>\n				<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			</meta-data>\n		</dynamic-element>\n		<dynamic-element name=\"action-link-url\" type=\"text\" index-type=\"\" repeatable=\"false\">\n			<meta-data>\n				<entry name=\"displayAsTooltip\"><![CDATA[false]]></entry>\n				<entry name=\"required\"><![CDATA[false]]></entry>\n				<entry name=\"instructions\"><![CDATA[]]></entry>\n				<entry name=\"label\"><![CDATA[Call to Action URL]]></entry>\n				<entry name=\"predefinedValue\"><![CDATA[]]></entry>\n			</meta-data>\n		</dynamic-element>\n	</dynamic-element>\n</root>');
/*!40000 ALTER TABLE `journalstructure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journaltemplate`
--

DROP TABLE IF EXISTS `journaltemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journaltemplate` (
  `uuid_` varchar(75) DEFAULT NULL,
  `id_` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `templateId` varchar(75) DEFAULT NULL,
  `structureId` varchar(75) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `xsl` longtext,
  `langType` varchar(75) DEFAULT NULL,
  `cacheable` tinyint(4) DEFAULT NULL,
  `smallImage` tinyint(4) DEFAULT NULL,
  `smallImageId` bigint(20) DEFAULT NULL,
  `smallImageURL` longtext,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_E802AA3C` (`groupId`,`templateId`),
  UNIQUE KEY `IX_62D1B3AD` (`uuid_`,`groupId`),
  KEY `IX_77923653` (`groupId`),
  KEY `IX_1701CB2B` (`groupId`,`structureId`),
  KEY `IX_25FFB6FA` (`smallImageId`),
  KEY `IX_45F5A7C7` (`structureId`),
  KEY `IX_1B12CA20` (`templateId`),
  KEY `IX_2857419D` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journaltemplate`
--

LOCK TABLES `journaltemplate` WRITE;
/*!40000 ALTER TABLE `journaltemplate` DISABLE KEYS */;
INSERT INTO `journaltemplate` VALUES ('5a71c03b-bb81-4fed-978f-262d00939200',10595,10179,10153,10157,'','2013-12-21 19:16:13','2013-12-21 19:16:13','WELCOME-CONTENT-TEMPLATE','WELCOME-CONTENT-STRUCTURE','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome Content Template</Name></root>','','<div class=\"navigation-wrapper\">\n	<header class=\"content-head content-head-liferay-portal\">\n		<hgroup>\n			<h1>$page-title.data</h1>\n\n			<hr />\n		</hgroup>\n\n		<nav>\n			<ul id=\"contentNav\">\n				#foreach($link in $links.siblings)\n					#if ($velocityCount == 1)\n						<li aria-selected=\"true\" class=\"selected\"><a href=\"#pageId$velocityCount\">$link.data</a></li>\n					#else\n						<li><a href=\"#pageId$velocityCount\">$link.data</a></li>\n					#end\n				#end\n			</ul>\n		</nav>\n	</header>\n\n	<div class=\"content-area-wrapper\">\n		#foreach($link in $links.siblings)\n			#if ($velocityCount == 1)\n				<style type=\"text/css\">\n					.content-area {\n						background: url($link.bg-image.data) 100% 0 no-repeat;\n					}\n				</style>\n\n				<div class=\"content-area selected\" data-bannerImage=\"$link.bg-image.data\" id=\"pageId$velocityCount\">\n					$link.data\n\n					<a href=\"$link.action-link-url.data\" id=\"marketplace\">&nbsp;</a>\n				</div>\n			#else\n				<div class=\"content-area\" data-bannerImage=\"$link.bg-image.data\" id=\"pageId$velocityCount\">\n					$link.data\n\n					<a href=\"$link.action-link-url.data\" id=\"marketplace\">&nbsp;</a>\n				</div>\n			#end\n		#end\n	</div>\n</div>\n\n<script charset=\"utf-8\" type=\"text/javascript\">\n	AUI().ready(\n		\'aui-base\',\n		function(A) {\n			var hash = null;\n\n			var selectContent = function(href) {\n				var div = A.one(href);\n\n				if (div) {\n					div.radioClass(\'selected\');\n\n					div.setStyle(\'background\', \'url(\' + div.attr(\'data-bannerImage\')+\') 100% 0 no-repeat\');\n\n					hash = href;\n				}\n			};\n\n			var selectNavItem = function(hash) {\n				if (hash) {\n					A.one(\'#contentNav a[href$=\"\'+ hash +\'\"]\').ancestor().radioClass(\'selected\');\n				}\n			};\n\n			var select = function(hash) {\n				selectContent(hash);\n				selectNavItem(hash);\n			};\n\n			var currentHash = location.hash;\n\n			if (currentHash) {\n				select(currentHash);\n			}\n\n			setInterval(\n				function() {\n					var currentHash = location.hash;\n\n					if (currentHash != hash) {\n						select(currentHash);\n					}\n				},\n				200\n			);\n\n			A.one(\'#contentNav\').delegate(\n				\'click\',\n				function(event) {\n					var a = event.currentTarget;\n\n					a.ancestor().radioClass(\'selected\');\n\n					selectContent(a.attr(\'hash\'));\n				},\n				\'a\'\n			);\n		}\n	);\n</script>','vm',0,0,10596,'');
/*!40000 ALTER TABLE `journaltemplate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layout`
--

DROP TABLE IF EXISTS `layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layout` (
  `uuid_` varchar(75) DEFAULT NULL,
  `plid` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
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
  KEY `IX_D0822724` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layout`
--

LOCK TABLES `layout` WRITE;
/*!40000 ALTER TABLE `layout` DISABLE KEYS */;
INSERT INTO `layout` VALUES ('d2182967-7b5f-4292-8c9b-3472a93041fc',10174,10171,10153,'2013-12-21 19:14:33','2013-12-21 19:14:33',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Control Panel</Name></root>','','','','','control_panel','',0,'/manage',0,0,'','','','','',0,'',0,''),('800f0f78-5d76-4b34-897c-d00121939fa3',10314,10311,10153,'2013-12-21 19:14:39','2013-12-21 19:14:40',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=148_INSTANCE_N7xuPpZeS9E6,114,\ncolumn-1=33,\n',0,'/layout',0,0,'','','','','',0,'',0,''),('910561ca-f5eb-472d-82ff-e21bb7ffac83',10324,10321,10153,'2013-12-21 19:14:41','2013-12-21 19:14:41',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','','','','','portlet','default-asset-publisher-portlet-id=101_INSTANCE_jR6Tt2gHnRkp\nlayout-template-id=2_columns_ii\nmerge-fail-count=0\ncolumn-2=3,101_INSTANCE_jR6Tt2gHnRkp,\ncolumn-1=141_INSTANCE_OFW9x1skH1Dx,122_INSTANCE_33IDQhC7kpAM,\n',0,'/layout',0,0,'','','','','',0,'',0,''),('beb5116b-9520-4a79-b6fa-68ea2bc468df',10333,10330,10153,'2013-12-21 19:14:41','2013-12-21 19:14:42',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=122_INSTANCE_eoiK1IPgeXBb,141_INSTANCE_94YyXEH04i3N,\ncolumn-1=36,\n',0,'/layout',0,0,'','','','','',0,'',0,''),('daa2231b-0eb4-43de-8070-055224b2e8c9',10347,10339,10153,'2013-12-21 19:14:43','2013-12-21 19:14:44',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=3,59_INSTANCE_CP0OEqogkpxm,180,\ncolumn-1=19,\n',0,'/home',0,0,'','','','','',0,'',0,''),('334c4c10-e2ad-46a2-9c4a-8ab9a857e918',10353,10339,10153,'2013-12-21 19:14:44','2013-12-21 19:14:45',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Calendar</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=101_INSTANCE_j1ST6fBVhgIv,\ncolumn-1=8,\n',0,'/calendar',0,0,'','','','','',1,'',0,''),('e457ca41-665b-4afc-91c4-07d0c1fcf06a',10359,10339,10153,'2013-12-21 19:14:45','2013-12-21 19:14:45',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=122_INSTANCE_78LIaid1VR2Y,148_INSTANCE_vevlQTEVfU94,\ncolumn-1=36,\n',0,'/wiki',0,0,'','','','','',2,'',0,''),('299cdefd-e0d7-4e2f-a71f-d44fc3b06891',10373,10365,10153,'2013-12-21 19:14:46','2013-12-21 19:14:46',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','layout-template-id=2_columns_i\ncolumn-2=3,82,101_INSTANCE_4jQ62b9eR0h4,\ncolumn-1=116,\n',0,'/home',0,0,'','','','','',0,'',0,''),('47ad237a-1155-47c8-8794-fe681a95228f',10381,10365,10153,'2013-12-21 19:14:49','2013-12-21 19:14:50',1,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Documents and Media</Name></root>','','','','','portlet','layout-template-id=1_column\ncolumn-1=20,\n',0,'/documents',0,0,'','','','','',1,'',0,''),('5b245ce4-3d0b-4ea2-a8a3-50088d74ea7d',10387,10365,10153,'2013-12-21 19:14:50','2013-12-21 19:14:50',1,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Calendar</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=101_INSTANCE_p86iWXysXv5Q,\ncolumn-1=8,\n',0,'/calendar',0,0,'','','','','',2,'',0,''),('6b9ab29c-13a3-4d1a-82c6-4536c1920284',10393,10365,10153,'2013-12-21 19:14:51','2013-12-21 19:14:52',1,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">News</Name></root>','','','','','portlet','layout-template-id=2_columns_iii\ncolumn-2=39_INSTANCE_1uQghfcOTkhg,\ncolumn-1=39_INSTANCE_XkNpa8BRKqSk,\n',0,'/news',0,0,'','','','','',3,'',0,''),('2b908d28-40c2-452e-9192-3ae9f17ee1f0',10417,10199,10153,'2013-12-21 19:15:56','2013-12-21 19:15:56',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=29,8,\ncolumn-1=82,23,11,\n',0,'/home',0,0,'','','','','',0,'',0,''),('1b72ee9f-ed54-48dc-8663-090483646e67',10423,10199,10153,'2013-12-21 19:15:56','2013-12-21 19:15:57',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=33,\ncolumn-1=82,3,\n',0,'/home',0,0,'','','','','',0,'',0,''),('704c2a0f-c8f6-4520-847e-9bfa46c7a358',10613,10179,10153,'2013-12-21 19:17:04','2013-12-28 10:18:54',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">What We Do</Name></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">Charter Portal: What We Do</Title></root>','','','','portlet','layout-template-id=1_column\nshow-alternate-links=false\nsitemap-changefreq=daily\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-1-customizable=true\n',1,'/what-we-do',0,0,'welcome_WAR_welcometheme','01','mobile','01','',0,'',0,''),('f0c62284-75d7-4781-850d-a49be9033b60',10708,10704,10153,'2013-12-22 18:34:47','2013-12-22 18:34:48',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=29,8,\ncolumn-1=82,23,11,\n',0,'/home',0,0,'','','','','',0,'',0,''),('3c1d0caa-537e-4cb9-a8e0-7e3a954c736d',10713,10704,10153,'2013-12-22 18:34:48','2013-12-22 18:48:21',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=33,\ncolumn-1=50,82,3\n',0,'/home',0,0,'','','','','',0,'',0,''),('85e9efd2-328e-45a5-81b9-dfb4fb4416ad',10808,10804,10153,'2013-12-26 17:34:50','2013-12-26 17:34:50',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=29,8,\ncolumn-1=82,23,11,\n',0,'/home',0,0,'','','','','',0,'',0,''),('49081571-83cd-4a6d-b041-8f4943606b64',10813,10804,10153,'2013-12-26 17:34:50','2013-12-27 20:15:14',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=33,\ncolumn-1=56_INSTANCE_UxVAwTmDrg0f,82,3\n',0,'/home',0,0,'','','','','',0,'',0,''),('ff277037-9797-439e-80f9-4e9594a8e7b6',11008,11004,10153,'2013-12-27 19:44:17','2013-12-27 19:44:18',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=29,8,\ncolumn-1=82,23,11,\n',0,'/home',0,0,'','','','','',0,'',0,''),('318c8ab7-f597-4b7a-8903-d63038980bba',11013,11004,10153,'2013-12-27 19:44:18','2013-12-27 19:44:18',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=33,\ncolumn-1=82,3,\n',0,'/home',0,0,'','','','','',0,'',0,''),('299cdefd-e0d7-4e2f-a71f-d44fc3b06891',11049,11037,10153,NULL,'2013-12-28 11:23:49',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Home</Name></root>','','','','','portlet','column-3-customizable=false\nlast-merge-time=1388228519636\nsitemap-changefreq=daily\nshow-alternate-links=true\nlayout-template-id=2_columns_iii\nsitemap-include=1\nlayoutUpdateable=true\ncolumn-2-customizable=false\ncolumn-1-customizable=false\ncolumn-2=58,\ncolumn-1=56_INSTANCE_KcuNLC8ouyhU,\n',0,'/home',0,0,'classic','','classic','','',0,'',0,'299cdefd-e0d7-4e2f-a71f-d44fc3b06891'),('47ad237a-1155-47c8-8794-fe681a95228f',11050,11037,10153,NULL,'2013-12-28 10:25:12',0,2,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Documents and Media</Name></root>','','','','','portlet','last-merge-time=1388228519636\nlayout-template-id=1_column\ncolumn-1=20,\n',0,'/documents',0,0,'','','','','',1,'',0,'47ad237a-1155-47c8-8794-fe681a95228f'),('5b245ce4-3d0b-4ea2-a8a3-50088d74ea7d',11051,11037,10153,NULL,'2013-12-28 10:25:12',0,3,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Calendar</Name></root>','','','','','portlet','last-merge-time=1388228519636\nlayout-template-id=2_columns_iii\ncolumn-2=101_INSTANCE_p86iWXysXv5Q,\ncolumn-1=8,\n',0,'/calendar',0,0,'','','','','',2,'',0,'5b245ce4-3d0b-4ea2-a8a3-50088d74ea7d'),('6b9ab29c-13a3-4d1a-82c6-4536c1920284',11052,11037,10153,NULL,'2013-12-28 10:25:12',0,4,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">News</Name></root>','','','','','portlet','last-merge-time=1388228519636\nlayout-template-id=2_columns_iii\ncolumn-2=39_INSTANCE_1uQghfcOTkhg,\ncolumn-1=39_INSTANCE_XkNpa8BRKqSk,\n',0,'/news',0,0,'','','','','',3,'',0,'6b9ab29c-13a3-4d1a-82c6-4536c1920284'),('2f3f16c5-8b6b-4fb7-bc80-304ed90bf6af',11119,11109,10153,'2013-12-28 06:42:40','2013-12-28 06:42:40',1,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=29,8,\ncolumn-1=82,23,11,\n',0,'/home',0,0,'','','','','',0,'',0,''),('0e95e55b-3a9f-40a1-a9ae-deb4c39f59e8',11124,11109,10153,'2013-12-28 06:42:40','2013-12-28 06:42:40',0,1,0,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Welcome</Name></root>','','','','','portlet','layout-template-id=2_columns_ii\ncolumn-2=33,\ncolumn-1=82,3,\n',0,'/home',0,0,'','','','','',0,'',0,'');
/*!40000 ALTER TABLE `layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutbranch`
--

DROP TABLE IF EXISTS `layoutbranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutbranch` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutbranch`
--

LOCK TABLES `layoutbranch` WRITE;
/*!40000 ALTER TABLE `layoutbranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `layoutbranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutprototype`
--

DROP TABLE IF EXISTS `layoutprototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutprototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutPrototypeId`),
  KEY `IX_30616AAA` (`companyId`),
  KEY `IX_557A639F` (`companyId`,`active_`),
  KEY `IX_CEF72136` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutprototype`
--

LOCK TABLES `layoutprototype` WRITE;
/*!40000 ALTER TABLE `layoutprototype` DISABLE KEYS */;
INSERT INTO `layoutprototype` VALUES ('383f6da1-6979-4f5e-ae20-3f78125f1fe2',10310,10153,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Blog</Name></root>','Create, edit, and view blogs from this page. Explore topics using tags, and connect with other members that blog.','',1),('2e7410d2-79b0-4f1a-9111-32dc6fa4d54f',10320,10153,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Content Display Page</Name></root>','Create, edit, and explore web content with this page. Search available content, explore related content with tags, and browse content categories.','',1),('3d5ae1e9-9057-4813-9d64-114c7bc1db82',10329,10153,'<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Wiki</Name></root>','Collaborate with members through the wiki on this page. Discover related content through tags, and navigate quickly and easily with categories.','',1);
/*!40000 ALTER TABLE `layoutprototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutrevision`
--

DROP TABLE IF EXISTS `layoutrevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutrevision` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutrevision`
--

LOCK TABLES `layoutrevision` WRITE;
/*!40000 ALTER TABLE `layoutrevision` DISABLE KEYS */;
/*!40000 ALTER TABLE `layoutrevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutset`
--

DROP TABLE IF EXISTS `layoutset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutset` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutset`
--

LOCK TABLES `layoutset` WRITE;
/*!40000 ALTER TABLE `layoutset` DISABLE KEYS */;
INSERT INTO `layoutset` VALUES (10172,10171,10153,'2013-12-21 19:14:33','2013-12-21 19:14:33',1,0,0,'classic','01','mobile','01','',1,'','',0),(10173,10171,10153,'2013-12-21 19:14:33','2013-12-21 19:14:33',0,0,0,'classic','01','mobile','01','',0,'','',0),(10180,10179,10153,'2013-12-21 19:14:34','2013-12-21 19:17:04',1,0,0,'welcome_WAR_welcometheme','01','mobile','01','',0,'','',0),(10181,10179,10153,'2013-12-21 19:14:34','2013-12-28 10:03:43',0,0,0,'welcome_WAR_welcometheme','01','mobile','01','',1,'','',0),(10189,10188,10153,'2013-12-21 19:14:34','2013-12-21 19:14:34',1,0,0,'classic','01','mobile','01','',0,'','',0),(10190,10188,10153,'2013-12-21 19:14:34','2013-12-21 19:14:34',0,0,0,'classic','01','mobile','01','',0,'','',0),(10192,10191,10153,'2013-12-21 19:14:35','2013-12-21 19:14:35',1,0,0,'classic','01','mobile','01','',0,'','',0),(10193,10191,10153,'2013-12-21 19:14:35','2013-12-21 19:14:35',0,0,0,'classic','01','mobile','01','',0,'','',0),(10200,10199,10153,'2013-12-21 19:14:35','2013-12-21 19:15:56',1,0,0,'classic','01','mobile','01','',1,'','',0),(10201,10199,10153,'2013-12-21 19:14:35','2013-12-21 19:15:56',0,0,0,'classic','01','mobile','01','',1,'','',0),(10312,10311,10153,'2013-12-21 19:14:39','2013-12-21 19:14:39',1,0,0,'classic','01','mobile','01','',1,'','',0),(10313,10311,10153,'2013-12-21 19:14:39','2013-12-21 19:14:39',0,0,0,'classic','01','mobile','01','',0,'','',0),(10322,10321,10153,'2013-12-21 19:14:40','2013-12-21 19:14:41',1,0,0,'classic','01','mobile','01','',1,'','',0),(10323,10321,10153,'2013-12-21 19:14:40','2013-12-21 19:14:40',0,0,0,'classic','01','mobile','01','',0,'','',0),(10331,10330,10153,'2013-12-21 19:14:41','2013-12-21 19:14:41',1,0,0,'classic','01','mobile','01','',1,'','',0),(10332,10330,10153,'2013-12-21 19:14:41','2013-12-21 19:14:41',0,0,0,'classic','01','mobile','01','',0,'','',0),(10340,10339,10153,'2013-12-21 19:14:42','2013-12-21 19:14:45',1,0,0,'classic','01','mobile','01','',3,'','',0),(10341,10339,10153,'2013-12-21 19:14:42','2013-12-21 19:14:42',0,0,0,'classic','01','mobile','01','',0,'','',0),(10366,10365,10153,'2013-12-21 19:14:45','2013-12-21 19:14:52',1,0,0,'classic','01','mobile','01','',4,'','',0),(10367,10365,10153,'2013-12-21 19:14:45','2013-12-21 19:14:45',0,0,0,'classic','01','mobile','01','',0,'','',0),(10705,10704,10153,'2013-12-22 18:34:19','2013-12-22 18:34:47',1,0,0,'classic','01','mobile','01','',1,'','',0),(10706,10704,10153,'2013-12-22 18:34:19','2013-12-22 18:34:48',0,0,0,'classic','01','mobile','01','',1,'','',0),(10805,10804,10153,'2013-12-26 17:34:32','2013-12-27 04:34:13',1,0,0,'classic','02','mobile','01','',1,'showSiteName=true\n','',0),(10806,10804,10153,'2013-12-26 17:34:32','2013-12-27 04:33:42',0,0,0,'classic','02','mobile','01','',1,'showSiteName=true\n','',0),(11005,11004,10153,'2013-12-27 19:44:04','2013-12-27 19:44:17',1,0,0,'classic','01','mobile','01','',1,'','',0),(11006,11004,10153,'2013-12-27 19:44:04','2013-12-27 19:44:18',0,0,0,'classic','01','mobile','01','',1,'','',0),(11038,11037,10153,'2013-12-28 05:30:33','2013-12-28 05:30:33',1,0,0,'classic','01','mobile','01','',0,'','',0),(11039,11037,10153,'2013-12-28 05:30:33','2013-12-28 11:01:59',0,0,0,'classic','01','mobile','01','',4,'last-merge-time=1388228519636\n','3fab812c-9a68-4dfd-82b7-5810af3a1a29',1),(11090,11089,10153,'2013-12-28 06:11:30','2013-12-28 06:11:30',1,0,0,'classic','01','mobile','01','',0,'','',0),(11091,11089,10153,'2013-12-28 06:11:30','2013-12-28 06:11:30',0,0,0,'classic','01','mobile','01','',0,'','',0),(11096,11095,10153,'2013-12-28 06:18:16','2013-12-28 06:18:16',1,0,0,'classic','01','mobile','01','',0,'','',0),(11097,11095,10153,'2013-12-28 06:18:16','2013-12-28 06:18:16',0,0,0,'classic','01','mobile','01','',0,'','',0),(11102,11101,10153,'2013-12-28 06:20:27','2013-12-28 06:20:27',1,0,0,'classic','01','mobile','01','',0,'','',0),(11103,11101,10153,'2013-12-28 06:20:27','2013-12-28 06:20:27',0,0,0,'classic','01','mobile','01','',0,'','',0),(11110,11109,10153,'2013-12-28 06:23:00','2013-12-28 06:42:40',1,0,0,'classic','01','mobile','01','',1,'','',0),(11111,11109,10153,'2013-12-28 06:23:00','2013-12-28 06:42:40',0,0,0,'classic','01','mobile','01','',1,'','',0);
/*!40000 ALTER TABLE `layoutset` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutsetbranch`
--

DROP TABLE IF EXISTS `layoutsetbranch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutsetbranch` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutsetbranch`
--

LOCK TABLES `layoutsetbranch` WRITE;
/*!40000 ALTER TABLE `layoutsetbranch` DISABLE KEYS */;
/*!40000 ALTER TABLE `layoutsetbranch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `layoutsetprototype`
--

DROP TABLE IF EXISTS `layoutsetprototype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `layoutsetprototype` (
  `uuid_` varchar(75) DEFAULT NULL,
  `layoutSetPrototypeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` longtext,
  `description` longtext,
  `settings_` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`layoutSetPrototypeId`),
  KEY `IX_55F63D98` (`companyId`),
  KEY `IX_9178FC71` (`companyId`,`active_`),
  KEY `IX_C5D69B24` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `layoutsetprototype`
--

LOCK TABLES `layoutsetprototype` WRITE;
/*!40000 ALTER TABLE `layoutsetprototype` DISABLE KEYS */;
INSERT INTO `layoutsetprototype` VALUES ('2ac02c8b-a78d-4bbf-b257-d165a7b28a70',10338,10153,'2013-12-21 19:14:42','2013-12-27 04:36:33','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Community Site</Name></root>','Site with Forums, Calendar and Wiki','layoutsUpdateable=true\n',1),('3fab812c-9a68-4dfd-82b7-5810af3a1a29',10364,10153,'2013-12-21 19:14:45','2013-12-27 04:36:33','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Name language-id=\"en_US\">Intranet Site</Name></root>','Site with Documents, Calendar and News','layoutsUpdateable=true\n',1);
/*!40000 ALTER TABLE `layoutsetprototype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listtype`
--

DROP TABLE IF EXISTS `listtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listtype` (
  `listTypeId` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`listTypeId`),
  KEY `IX_2932DD37` (`type_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listtype`
--

LOCK TABLES `listtype` WRITE;
/*!40000 ALTER TABLE `listtype` DISABLE KEYS */;
INSERT INTO `listtype` VALUES (10000,'billing','com.liferay.portal.model.Account.address'),(10001,'other','com.liferay.portal.model.Account.address'),(10002,'p-o-box','com.liferay.portal.model.Account.address'),(10003,'shipping','com.liferay.portal.model.Account.address'),(10004,'email-address','com.liferay.portal.model.Account.emailAddress'),(10005,'email-address-2','com.liferay.portal.model.Account.emailAddress'),(10006,'email-address-3','com.liferay.portal.model.Account.emailAddress'),(10007,'fax','com.liferay.portal.model.Account.phone'),(10008,'local','com.liferay.portal.model.Account.phone'),(10009,'other','com.liferay.portal.model.Account.phone'),(10010,'toll-free','com.liferay.portal.model.Account.phone'),(10011,'tty','com.liferay.portal.model.Account.phone'),(10012,'intranet','com.liferay.portal.model.Account.website'),(10013,'public','com.liferay.portal.model.Account.website'),(11000,'business','com.liferay.portal.model.Contact.address'),(11001,'other','com.liferay.portal.model.Contact.address'),(11002,'personal','com.liferay.portal.model.Contact.address'),(11003,'email-address','com.liferay.portal.model.Contact.emailAddress'),(11004,'email-address-2','com.liferay.portal.model.Contact.emailAddress'),(11005,'email-address-3','com.liferay.portal.model.Contact.emailAddress'),(11006,'business','com.liferay.portal.model.Contact.phone'),(11007,'business-fax','com.liferay.portal.model.Contact.phone'),(11008,'mobile-phone','com.liferay.portal.model.Contact.phone'),(11009,'other','com.liferay.portal.model.Contact.phone'),(11010,'pager','com.liferay.portal.model.Contact.phone'),(11011,'personal','com.liferay.portal.model.Contact.phone'),(11012,'personal-fax','com.liferay.portal.model.Contact.phone'),(11013,'tty','com.liferay.portal.model.Contact.phone'),(11014,'dr','com.liferay.portal.model.Contact.prefix'),(11015,'mr','com.liferay.portal.model.Contact.prefix'),(11016,'mrs','com.liferay.portal.model.Contact.prefix'),(11017,'ms','com.liferay.portal.model.Contact.prefix'),(11020,'ii','com.liferay.portal.model.Contact.suffix'),(11021,'iii','com.liferay.portal.model.Contact.suffix'),(11022,'iv','com.liferay.portal.model.Contact.suffix'),(11023,'jr','com.liferay.portal.model.Contact.suffix'),(11024,'phd','com.liferay.portal.model.Contact.suffix'),(11025,'sr','com.liferay.portal.model.Contact.suffix'),(11026,'blog','com.liferay.portal.model.Contact.website'),(11027,'business','com.liferay.portal.model.Contact.website'),(11028,'other','com.liferay.portal.model.Contact.website'),(11029,'personal','com.liferay.portal.model.Contact.website'),(12000,'billing','com.liferay.portal.model.Organization.address'),(12001,'other','com.liferay.portal.model.Organization.address'),(12002,'p-o-box','com.liferay.portal.model.Organization.address'),(12003,'shipping','com.liferay.portal.model.Organization.address'),(12004,'email-address','com.liferay.portal.model.Organization.emailAddress'),(12005,'email-address-2','com.liferay.portal.model.Organization.emailAddress'),(12006,'email-address-3','com.liferay.portal.model.Organization.emailAddress'),(12007,'fax','com.liferay.portal.model.Organization.phone'),(12008,'local','com.liferay.portal.model.Organization.phone'),(12009,'other','com.liferay.portal.model.Organization.phone'),(12010,'toll-free','com.liferay.portal.model.Organization.phone'),(12011,'tty','com.liferay.portal.model.Organization.phone'),(12012,'administrative','com.liferay.portal.model.Organization.service'),(12013,'contracts','com.liferay.portal.model.Organization.service'),(12014,'donation','com.liferay.portal.model.Organization.service'),(12015,'retail','com.liferay.portal.model.Organization.service'),(12016,'training','com.liferay.portal.model.Organization.service'),(12017,'full-member','com.liferay.portal.model.Organization.status'),(12018,'provisional-member','com.liferay.portal.model.Organization.status'),(12019,'intranet','com.liferay.portal.model.Organization.website'),(12020,'public','com.liferay.portal.model.Organization.website');
/*!40000 ALTER TABLE `listtype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lock_`
--

DROP TABLE IF EXISTS `lock_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lock_` (
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
  UNIQUE KEY `IX_DD635956` (`className`,`key_`,`owner`),
  KEY `IX_228562AD` (`className`,`key_`),
  KEY `IX_E3F1286B` (`expirationDate`),
  KEY `IX_13C5CD3A` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lock_`
--

LOCK TABLES `lock_` WRITE;
/*!40000 ALTER TABLE `lock_` DISABLE KEYS */;
/*!40000 ALTER TABLE `lock_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_app`
--

DROP TABLE IF EXISTS `marketplace_app`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketplace_app` (
  `uuid_` varchar(75) DEFAULT NULL,
  `appId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `remoteAppId` bigint(20) DEFAULT NULL,
  `version` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`appId`),
  KEY `IX_865B7BD5` (`companyId`),
  KEY `IX_20F14D93` (`remoteAppId`),
  KEY `IX_3E667FE1` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_app`
--

LOCK TABLES `marketplace_app` WRITE;
/*!40000 ALTER TABLE `marketplace_app` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketplace_app` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_module`
--

DROP TABLE IF EXISTS `marketplace_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketplace_module` (
  `uuid_` varchar(75) DEFAULT NULL,
  `moduleId` bigint(20) NOT NULL,
  `appId` bigint(20) DEFAULT NULL,
  `contextName` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`moduleId`),
  KEY `IX_7DC16D26` (`appId`),
  KEY `IX_C6938724` (`appId`,`contextName`),
  KEY `IX_F2F1E964` (`contextName`),
  KEY `IX_A7EFD80E` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_module`
--

LOCK TABLES `marketplace_module` WRITE;
/*!40000 ALTER TABLE `marketplace_module` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketplace_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbban`
--

DROP TABLE IF EXISTS `mbban`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbban` (
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
  KEY `IX_69951A25` (`banUserId`),
  KEY `IX_5C3FF12A` (`groupId`),
  KEY `IX_48814BBA` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbban`
--

LOCK TABLES `mbban` WRITE;
/*!40000 ALTER TABLE `mbban` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbban` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbcategory`
--

DROP TABLE IF EXISTS `mbcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbcategory` (
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
  PRIMARY KEY (`categoryId`),
  UNIQUE KEY `IX_F7D28C2F` (`uuid_`,`groupId`),
  KEY `IX_BC735DCF` (`companyId`),
  KEY `IX_BB870C11` (`groupId`),
  KEY `IX_ED292508` (`groupId`,`parentCategoryId`),
  KEY `IX_C2626EDB` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbcategory`
--

LOCK TABLES `mbcategory` WRITE;
/*!40000 ALTER TABLE `mbcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbdiscussion`
--

DROP TABLE IF EXISTS `mbdiscussion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbdiscussion` (
  `discussionId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`discussionId`),
  UNIQUE KEY `IX_33A4DE38` (`classNameId`,`classPK`),
  UNIQUE KEY `IX_B5CA2DC` (`threadId`),
  KEY `IX_79D0120B` (`classNameId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbdiscussion`
--

LOCK TABLES `mbdiscussion` WRITE;
/*!40000 ALTER TABLE `mbdiscussion` DISABLE KEYS */;
INSERT INTO `mbdiscussion` VALUES (10178,10002,10174,10176),(10319,10002,10314,10316),(10328,10002,10324,10326),(10337,10002,10333,10335),(10351,10002,10347,10349),(10357,10002,10353,10355),(10363,10002,10359,10361),(10377,10002,10373,10375),(10385,10002,10381,10383),(10391,10002,10387,10389),(10397,10002,10393,10395),(10421,10002,10417,10419),(10427,10002,10423,10425),(10434,10010,10428,10432),(10443,10010,10437,10441),(10452,10010,10446,10450),(10460,10010,10454,10458),(10468,10010,10462,10466),(10476,10010,10470,10474),(10507,10010,10495,10505),(10519,10010,10509,10517),(10531,10010,10521,10529),(10543,10010,10533,10541),(10555,10010,10545,10553),(10567,10010,10557,10565),(10575,10010,10569,10573),(10592,10108,10586,10590),(10604,10108,10598,10602),(10612,10108,10606,10610),(10617,10002,10613,10615),(10712,10002,10708,10710),(10717,10002,10713,10715),(10812,10002,10808,10810),(10817,10002,10813,10815),(11012,10002,11008,11010),(11017,10002,11013,11015),(11123,10002,11119,11121),(11128,10002,11124,11126),(11327,10108,11321,11325);
/*!40000 ALTER TABLE `mbdiscussion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbmailinglist`
--

DROP TABLE IF EXISTS `mbmailinglist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbmailinglist` (
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
  KEY `IX_4115EC7A` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbmailinglist`
--

LOCK TABLES `mbmailinglist` WRITE;
/*!40000 ALTER TABLE `mbmailinglist` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbmailinglist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbmessage`
--

DROP TABLE IF EXISTS `mbmessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbmessage` (
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
  `attachments` tinyint(4) DEFAULT NULL,
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
  KEY `IX_C57B16BC` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbmessage`
--

LOCK TABLES `mbmessage` WRITE;
/*!40000 ALTER TABLE `mbmessage` DISABLE KEYS */;
INSERT INTO `mbmessage` VALUES ('b04d5960-8c57-4c77-b815-195817ae74c4',10175,10171,10153,10157,'','2013-12-21 19:14:33','2013-12-21 19:14:33',10002,10174,-1,10176,10175,0,'10174','10174','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:14:34'),('7e8500be-fc3a-483f-998f-9771fbb3a638',10315,10311,10153,10157,'','2013-12-21 19:14:39','2013-12-21 19:14:39',10002,10314,-1,10316,10315,0,'10314','10314','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:14:39'),('47bcfdd8-8e73-4d6d-9171-2ebb7b0b26cc',10325,10321,10153,10157,'','2013-12-21 19:14:41','2013-12-21 19:14:41',10002,10324,-1,10326,10325,0,'10324','10324','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:14:41'),('aa018c41-7f23-451b-a4c1-f4032fe27a49',10334,10330,10153,10157,'','2013-12-21 19:14:41','2013-12-21 19:14:41',10002,10333,-1,10335,10334,0,'10333','10333','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:14:41'),('3fb06bc7-f696-40ef-9605-df5a63162164',10348,10339,10153,10157,'','2013-12-21 19:14:43','2013-12-21 19:14:43',10002,10347,-1,10349,10348,0,'10347','10347','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:14:43'),('46c4c7f5-9ba7-479f-98fc-ca93ff471e53',10354,10339,10153,10157,'','2013-12-21 19:14:44','2013-12-21 19:14:44',10002,10353,-1,10355,10354,0,'10353','10353','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:14:44'),('e214b049-5b84-421f-88fc-34a96be9c85b',10360,10339,10153,10157,'','2013-12-21 19:14:45','2013-12-21 19:14:45',10002,10359,-1,10361,10360,0,'10359','10359','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:14:45'),('e26b88d3-54a8-4a90-a29b-bef6943e9193',10374,10365,10153,10157,'','2013-12-21 19:14:46','2013-12-21 19:14:46',10002,10373,-1,10375,10374,0,'10373','10373','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:14:46'),('9c047da8-a9d5-41ae-ace5-bf61e11c71df',10382,10365,10153,10157,'','2013-12-21 19:14:49','2013-12-21 19:14:49',10002,10381,-1,10383,10382,0,'10381','10381','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:14:49'),('2ba1d22c-38a9-4d5a-94a3-1c9b951fbe42',10388,10365,10153,10157,'','2013-12-21 19:14:50','2013-12-21 19:14:50',10002,10387,-1,10389,10388,0,'10387','10387','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:14:50'),('8aa19552-519e-41d2-99be-b65062f5b853',10394,10365,10153,10157,'','2013-12-21 19:14:51','2013-12-21 19:14:51',10002,10393,-1,10395,10394,0,'10393','10393','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:14:51'),('f3a09103-5162-47ec-9494-7010defe20f6',10418,10199,10153,10195,'Rahul Ty','2013-12-21 19:15:56','2013-12-21 19:15:56',10002,10417,-1,10419,10418,0,'10417','10417','bbcode',0,0,0,0,0,0,10195,'Rahul Ty','2013-12-21 19:15:56'),('5436726f-ce7e-4d07-bed1-bd4bf916dac5',10424,10199,10153,10195,'Rahul Ty','2013-12-21 19:15:56','2013-12-21 19:15:56',10002,10423,-1,10425,10424,0,'10423','10423','bbcode',0,0,0,0,0,0,10195,'Rahul Ty','2013-12-21 19:15:56'),('c2ee5c47-09aa-451f-8a23-11845bf11c67',10431,10179,10153,10157,'','2013-12-21 19:15:57','2013-12-21 19:15:57',10010,10428,-1,10432,10431,0,'10428','10428','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:15:57'),('b46bff4a-3f9f-4a99-a1fb-58d756b75b4b',10440,10179,10153,10157,'','2013-12-21 19:16:00','2013-12-21 19:16:00',10010,10437,-1,10441,10440,0,'10437','10437','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:16:00'),('a4700df7-dd6d-46bf-8f66-3202dde80f43',10449,10179,10153,10157,'','2013-12-21 19:16:01','2013-12-21 19:16:01',10010,10446,-1,10450,10449,0,'10446','10446','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:16:01'),('0a7eb795-c68b-48ad-926b-9b312adef6c5',10457,10179,10153,10157,'','2013-12-21 19:16:02','2013-12-21 19:16:02',10010,10454,-1,10458,10457,0,'10454','10454','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:16:02'),('45ba4052-b347-44c6-8fb1-d2f8b94093fa',10465,10179,10153,10157,'','2013-12-21 19:16:03','2013-12-21 19:16:03',10010,10462,-1,10466,10465,0,'10462','10462','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:16:03'),('04c925bd-c2bb-453c-9e99-561128cbfc7f',10473,10179,10153,10157,'','2013-12-21 19:16:03','2013-12-21 19:16:03',10010,10470,-1,10474,10473,0,'10470','10470','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:16:03'),('b4de6c2f-3f1d-4c47-91ce-7ae7cb8db882',10504,10179,10153,10157,'','2013-12-21 19:16:08','2013-12-21 19:16:08',10010,10495,-1,10505,10504,0,'10495','10495','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:16:08'),('ae099bd6-18ac-4be4-9e2a-75573cb0d847',10516,10179,10153,10157,'','2013-12-21 19:16:09','2013-12-21 19:16:09',10010,10509,-1,10517,10516,0,'10509','10509','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:16:09'),('15eb8059-4f4d-4d31-a0ec-7718416067d6',10528,10179,10153,10157,'','2013-12-21 19:16:09','2013-12-21 19:16:09',10010,10521,-1,10529,10528,0,'10521','10521','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:16:09'),('c93749f5-9491-4cdb-9265-932c5b9318c4',10540,10179,10153,10157,'','2013-12-21 19:16:09','2013-12-21 19:16:09',10010,10533,-1,10541,10540,0,'10533','10533','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:16:09'),('a3421f3e-93ba-45b0-addd-87e785e08dea',10552,10179,10153,10157,'','2013-12-21 19:16:10','2013-12-21 19:16:10',10010,10545,-1,10553,10552,0,'10545','10545','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:16:10'),('189875cb-e2b2-49c5-8d51-cec555fb5876',10564,10179,10153,10157,'','2013-12-21 19:16:10','2013-12-21 19:16:10',10010,10557,-1,10565,10564,0,'10557','10557','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:16:10'),('69e28546-e305-49e1-a5e7-5eb7502bfdc3',10572,10179,10153,10157,'','2013-12-21 19:16:10','2013-12-21 19:16:10',10010,10569,-1,10573,10572,0,'10569','10569','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:16:10'),('1ef5382c-ca62-44a3-9e42-8f16384abfa8',10589,10179,10153,10157,'','2013-12-21 19:16:11','2013-12-21 19:16:11',10108,10586,-1,10590,10589,0,'10586','10586','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:16:11'),('3ec26df6-e3cb-418f-b92c-ef6c6d72fcdd',10601,10179,10153,10157,'','2013-12-21 19:16:13','2013-12-21 19:16:13',10108,10598,-1,10602,10601,0,'10598','10598','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:16:13'),('79bc630f-469b-4e69-ba77-1e4b11c63e03',10609,10179,10153,10157,'','2013-12-21 19:16:13','2013-12-21 19:16:13',10108,10606,-1,10610,10609,0,'10606','10606','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:16:13'),('bd13c864-9efc-4d01-ac7e-3d895bf14a60',10614,10179,10153,10157,'','2013-12-21 19:17:04','2013-12-21 19:17:04',10002,10613,-1,10615,10614,0,'10613','10613','bbcode',0,1,0,0,0,0,10157,'','2013-12-21 19:17:04'),('eeb0162a-3093-4174-b5b0-f113b294c0cd',10709,10704,10153,10701,'Test Test','2013-12-22 18:34:47','2013-12-22 18:34:47',10002,10708,-1,10710,10709,0,'10708','10708','bbcode',0,0,0,0,0,0,10701,'Test Test','2013-12-22 18:34:48'),('3550c3c6-cc3a-4ece-99c7-00c922dec299',10714,10704,10153,10701,'Test Test','2013-12-22 18:34:48','2013-12-22 18:34:48',10002,10713,-1,10715,10714,0,'10713','10713','bbcode',0,0,0,0,0,0,10701,'Test Test','2013-12-22 18:34:48'),('650903e8-bdac-4d16-a9ed-8f21aa9d3046',10809,10804,10153,10801,'Rahul Tyagi','2013-12-26 17:34:50','2013-12-26 17:34:50',10002,10808,-1,10810,10809,0,'10808','10808','bbcode',0,0,0,0,0,0,10801,'Rahul Tyagi','2013-12-26 17:34:50'),('a2bdceb2-e8b2-4eaa-8b47-e2fd46fd67b8',10814,10804,10153,10801,'Rahul Tyagi','2013-12-26 17:34:50','2013-12-26 17:34:50',10002,10813,-1,10815,10814,0,'10813','10813','bbcode',0,0,0,0,0,0,10801,'Rahul Tyagi','2013-12-26 17:34:50'),('2a1cd7d7-3954-4614-97f2-bf0e477acde3',11009,11004,10153,11001,'Test Test','2013-12-27 19:44:17','2013-12-27 19:44:17',10002,11008,-1,11010,11009,0,'11008','11008','bbcode',0,0,0,0,0,0,11001,'Test Test','2013-12-27 19:44:17'),('8fc2b25f-9940-4fe6-b367-71561386ad36',11014,11004,10153,11001,'Test Test','2013-12-27 19:44:18','2013-12-27 19:44:18',10002,11013,-1,11015,11014,0,'11013','11013','bbcode',0,0,0,0,0,0,11001,'Test Test','2013-12-27 19:44:18'),('cd6ec2f0-4d4c-42e5-b9b8-189a064263b7',11120,11109,10153,11106,'Anand Saxena','2013-12-28 06:42:40','2013-12-28 06:42:40',10002,11119,-1,11121,11120,0,'11119','11119','bbcode',0,0,0,0,0,0,11106,'Anand Saxena','2013-12-28 06:42:40'),('100b2d7d-236b-441f-b71c-9e52514edd23',11125,11109,10153,11106,'Anand Saxena','2013-12-28 06:42:40','2013-12-28 06:42:40',10002,11124,-1,11126,11125,0,'11124','11124','bbcode',0,0,0,0,0,0,11106,'Anand Saxena','2013-12-28 06:42:40'),('68315d6c-e75b-48ee-b1fb-d4dccc210256',11324,11037,10153,10801,'Rahul Tyagi','2013-12-28 11:23:48','2013-12-28 11:23:48',10108,11321,-1,11325,11324,0,'11321','11321','bbcode',0,0,0,0,0,0,10801,'Rahul Tyagi','2013-12-28 11:23:48');
/*!40000 ALTER TABLE `mbmessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbstatsuser`
--

DROP TABLE IF EXISTS `mbstatsuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbstatsuser` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbstatsuser`
--

LOCK TABLES `mbstatsuser` WRITE;
/*!40000 ALTER TABLE `mbstatsuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbstatsuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbthread`
--

DROP TABLE IF EXISTS `mbthread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbthread` (
  `threadId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
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
  KEY `IX_41F6DC8A` (`categoryId`,`priority`),
  KEY `IX_95C0EA45` (`groupId`),
  KEY `IX_9A2D11B2` (`groupId`,`categoryId`),
  KEY `IX_50F1904A` (`groupId`,`categoryId`,`lastPostDate`),
  KEY `IX_485F7E98` (`groupId`,`categoryId`,`status`),
  KEY `IX_E1E7142B` (`groupId`,`status`),
  KEY `IX_AEDD9CB5` (`lastPostDate`,`priority`),
  KEY `IX_CC993ECB` (`rootMessageId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbthread`
--

LOCK TABLES `mbthread` WRITE;
/*!40000 ALTER TABLE `mbthread` DISABLE KEYS */;
INSERT INTO `mbthread` VALUES (10176,10171,10153,-1,10175,10157,1,0,0,'2013-12-21 19:14:34',0,0,0,10157,'','2013-12-21 19:14:34'),(10316,10311,10153,-1,10315,10157,1,0,0,'2013-12-21 19:14:39',0,0,0,10157,'','2013-12-21 19:14:39'),(10326,10321,10153,-1,10325,10157,1,0,0,'2013-12-21 19:14:41',0,0,0,10157,'','2013-12-21 19:14:41'),(10335,10330,10153,-1,10334,10157,1,0,0,'2013-12-21 19:14:41',0,0,0,10157,'','2013-12-21 19:14:41'),(10349,10339,10153,-1,10348,10157,1,0,0,'2013-12-21 19:14:43',0,0,0,10157,'','2013-12-21 19:14:43'),(10355,10339,10153,-1,10354,10157,1,0,0,'2013-12-21 19:14:44',0,0,0,10157,'','2013-12-21 19:14:44'),(10361,10339,10153,-1,10360,10157,1,0,0,'2013-12-21 19:14:45',0,0,0,10157,'','2013-12-21 19:14:45'),(10375,10365,10153,-1,10374,10157,1,0,0,'2013-12-21 19:14:46',0,0,0,10157,'','2013-12-21 19:14:46'),(10383,10365,10153,-1,10382,10157,1,0,0,'2013-12-21 19:14:49',0,0,0,10157,'','2013-12-21 19:14:49'),(10389,10365,10153,-1,10388,10157,1,0,0,'2013-12-21 19:14:50',0,0,0,10157,'','2013-12-21 19:14:50'),(10395,10365,10153,-1,10394,10157,1,0,0,'2013-12-21 19:14:51',0,0,0,10157,'','2013-12-21 19:14:51'),(10419,10199,10153,-1,10418,10195,1,0,10195,'2013-12-21 19:15:56',0,0,0,10195,'Rahul Ty','2013-12-21 19:15:56'),(10425,10199,10153,-1,10424,10195,1,0,10195,'2013-12-21 19:15:56',0,0,0,10195,'Rahul Ty','2013-12-21 19:15:56'),(10432,10179,10153,-1,10431,10157,1,0,0,'2013-12-21 19:15:57',0,0,0,10157,'','2013-12-21 19:15:57'),(10441,10179,10153,-1,10440,10157,1,0,0,'2013-12-21 19:16:00',0,0,0,10157,'','2013-12-21 19:16:00'),(10450,10179,10153,-1,10449,10157,1,0,0,'2013-12-21 19:16:01',0,0,0,10157,'','2013-12-21 19:16:01'),(10458,10179,10153,-1,10457,10157,1,0,0,'2013-12-21 19:16:02',0,0,0,10157,'','2013-12-21 19:16:02'),(10466,10179,10153,-1,10465,10157,1,0,0,'2013-12-21 19:16:03',0,0,0,10157,'','2013-12-21 19:16:03'),(10474,10179,10153,-1,10473,10157,1,0,0,'2013-12-21 19:16:03',0,0,0,10157,'','2013-12-21 19:16:03'),(10505,10179,10153,-1,10504,10157,1,0,0,'2013-12-21 19:16:08',0,0,0,10157,'','2013-12-21 19:16:08'),(10517,10179,10153,-1,10516,10157,1,0,0,'2013-12-21 19:16:09',0,0,0,10157,'','2013-12-21 19:16:09'),(10529,10179,10153,-1,10528,10157,1,0,0,'2013-12-21 19:16:09',0,0,0,10157,'','2013-12-21 19:16:09'),(10541,10179,10153,-1,10540,10157,1,0,0,'2013-12-21 19:16:09',0,0,0,10157,'','2013-12-21 19:16:09'),(10553,10179,10153,-1,10552,10157,1,0,0,'2013-12-21 19:16:10',0,0,0,10157,'','2013-12-21 19:16:10'),(10565,10179,10153,-1,10564,10157,1,0,0,'2013-12-21 19:16:10',0,0,0,10157,'','2013-12-21 19:16:10'),(10573,10179,10153,-1,10572,10157,1,0,0,'2013-12-21 19:16:10',0,0,0,10157,'','2013-12-21 19:16:10'),(10590,10179,10153,-1,10589,10157,1,0,0,'2013-12-21 19:16:11',0,0,0,10157,'','2013-12-21 19:16:11'),(10602,10179,10153,-1,10601,10157,1,0,0,'2013-12-21 19:16:13',0,0,0,10157,'','2013-12-21 19:16:13'),(10610,10179,10153,-1,10609,10157,1,0,0,'2013-12-21 19:16:13',0,0,0,10157,'','2013-12-21 19:16:13'),(10615,10179,10153,-1,10614,10157,1,0,0,'2013-12-21 19:17:04',0,0,0,10157,'','2013-12-21 19:17:04'),(10710,10704,10153,-1,10709,10701,1,0,10701,'2013-12-22 18:34:48',0,0,0,10701,'Test Test','2013-12-22 18:34:48'),(10715,10704,10153,-1,10714,10701,1,0,10701,'2013-12-22 18:34:48',0,0,0,10701,'Test Test','2013-12-22 18:34:48'),(10810,10804,10153,-1,10809,10801,1,0,10801,'2013-12-26 17:34:50',0,0,0,10801,'Rahul Tyagi','2013-12-26 17:34:50'),(10815,10804,10153,-1,10814,10801,1,0,10801,'2013-12-26 17:34:50',0,0,0,10801,'Rahul Tyagi','2013-12-26 17:34:50'),(11010,11004,10153,-1,11009,11001,1,0,11001,'2013-12-27 19:44:17',0,0,0,11001,'Test Test','2013-12-27 19:44:17'),(11015,11004,10153,-1,11014,11001,1,0,11001,'2013-12-27 19:44:18',0,0,0,11001,'Test Test','2013-12-27 19:44:18'),(11121,11109,10153,-1,11120,11106,1,0,11106,'2013-12-28 06:42:40',0,0,0,11106,'Anand Saxena','2013-12-28 06:42:40'),(11126,11109,10153,-1,11125,11106,1,0,11106,'2013-12-28 06:42:40',0,0,0,11106,'Anand Saxena','2013-12-28 06:42:40'),(11325,11037,10153,-1,11324,10801,1,0,10801,'2013-12-28 11:23:48',0,0,0,10801,'Rahul Tyagi','2013-12-28 11:23:48');
/*!40000 ALTER TABLE `mbthread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mbthreadflag`
--

DROP TABLE IF EXISTS `mbthreadflag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mbthreadflag` (
  `threadFlagId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `threadId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`threadFlagId`),
  UNIQUE KEY `IX_33781904` (`userId`,`threadId`),
  KEY `IX_8CB0A24A` (`threadId`),
  KEY `IX_A28004B` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mbthreadflag`
--

LOCK TABLES `mbthreadflag` WRITE;
/*!40000 ALTER TABLE `mbthreadflag` DISABLE KEYS */;
/*!40000 ALTER TABLE `mbthreadflag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdraction`
--

DROP TABLE IF EXISTS `mdraction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdraction` (
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
  KEY `IX_77BB5E9D` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdraction`
--

LOCK TABLES `mdraction` WRITE;
/*!40000 ALTER TABLE `mdraction` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdraction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdrrule`
--

DROP TABLE IF EXISTS `mdrrule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdrrule` (
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
  KEY `IX_EA63B9D7` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdrrule`
--

LOCK TABLES `mdrrule` WRITE;
/*!40000 ALTER TABLE `mdrrule` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdrrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdrrulegroup`
--

DROP TABLE IF EXISTS `mdrrulegroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdrrulegroup` (
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
  KEY `IX_7F26B2A6` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdrrulegroup`
--

LOCK TABLES `mdrrulegroup` WRITE;
/*!40000 ALTER TABLE `mdrrulegroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdrrulegroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdrrulegroupinstance`
--

DROP TABLE IF EXISTS `mdrrulegroupinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdrrulegroupinstance` (
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
  KEY `IX_B6A6BD91` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdrrulegroupinstance`
--

LOCK TABLES `mdrrulegroupinstance` WRITE;
/*!40000 ALTER TABLE `mdrrulegroupinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `mdrrulegroupinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membershiprequest`
--

DROP TABLE IF EXISTS `membershiprequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membershiprequest` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membershiprequest`
--

LOCK TABLES `membershiprequest` WRITE;
/*!40000 ALTER TABLE `membershiprequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `membershiprequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `organization_`
--

DROP TABLE IF EXISTS `organization_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `organization_` (
  `organizationId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
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
  KEY `IX_418E4522` (`companyId`,`parentOrganizationId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organization_`
--

LOCK TABLES `organization_` WRITE;
/*!40000 ALTER TABLE `organization_` DISABLE KEYS */;
INSERT INTO `organization_` VALUES (11088,10153,0,'/11088/','CharterSolution','regular-organization',1,0,0,12017,''),(11094,10153,11088,'/11088/11094/','CharterSolution,noida','location',1,0,108,12017,''),(11100,10153,11088,'/11088/11100/','CharterSolution,kanpur','location',1,0,108,12017,'');
/*!40000 ALTER TABLE `organization_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orggrouppermission`
--

DROP TABLE IF EXISTS `orggrouppermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orggrouppermission` (
  `organizationId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `permissionId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`groupId`,`permissionId`),
  KEY `IX_A425F71A` (`groupId`),
  KEY `IX_6C53DA4E` (`permissionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orggrouppermission`
--

LOCK TABLES `orggrouppermission` WRITE;
/*!40000 ALTER TABLE `orggrouppermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `orggrouppermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orggrouprole`
--

DROP TABLE IF EXISTS `orggrouprole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orggrouprole` (
  `organizationId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`groupId`,`roleId`),
  KEY `IX_4A527DD3` (`groupId`),
  KEY `IX_AB044D1C` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orggrouprole`
--

LOCK TABLES `orggrouprole` WRITE;
/*!40000 ALTER TABLE `orggrouprole` DISABLE KEYS */;
/*!40000 ALTER TABLE `orggrouprole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orglabor`
--

DROP TABLE IF EXISTS `orglabor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orglabor` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orglabor`
--

LOCK TABLES `orglabor` WRITE;
/*!40000 ALTER TABLE `orglabor` DISABLE KEYS */;
/*!40000 ALTER TABLE `orglabor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwordpolicy`
--

DROP TABLE IF EXISTS `passwordpolicy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwordpolicy` (
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
  KEY `IX_2C1142E` (`companyId`,`defaultPolicy`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwordpolicy`
--

LOCK TABLES `passwordpolicy` WRITE;
/*!40000 ALTER TABLE `passwordpolicy` DISABLE KEYS */;
INSERT INTO `passwordpolicy` VALUES (10194,10153,10157,'','2013-12-21 19:14:35','2013-12-21 19:14:35',1,'Default Password Policy','Default Password Policy',1,1,0,0,1,0,6,0,1,0,1,0,6,0,8640000,86400,0,0,3,0,1,600,86400);
/*!40000 ALTER TABLE `passwordpolicy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwordpolicyrel`
--

DROP TABLE IF EXISTS `passwordpolicyrel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwordpolicyrel` (
  `passwordPolicyRelId` bigint(20) NOT NULL,
  `passwordPolicyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`passwordPolicyRelId`),
  KEY `IX_C3A17327` (`classNameId`,`classPK`),
  KEY `IX_CD25266E` (`passwordPolicyId`),
  KEY `IX_ED7CF243` (`passwordPolicyId`,`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwordpolicyrel`
--

LOCK TABLES `passwordpolicyrel` WRITE;
/*!40000 ALTER TABLE `passwordpolicyrel` DISABLE KEYS */;
INSERT INTO `passwordpolicyrel` VALUES (10198,10194,10005,10195),(10703,10194,10005,10701),(10803,10194,10005,10801),(11003,10194,10005,11001),(11108,10194,10005,11106);
/*!40000 ALTER TABLE `passwordpolicyrel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passwordtracker`
--

DROP TABLE IF EXISTS `passwordtracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `passwordtracker` (
  `passwordTrackerId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `password_` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`passwordTrackerId`),
  KEY `IX_326F75BD` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passwordtracker`
--

LOCK TABLES `passwordtracker` WRITE;
/*!40000 ALTER TABLE `passwordtracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `passwordtracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permission_`
--

DROP TABLE IF EXISTS `permission_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permission_` (
  `permissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `actionId` varchar(75) DEFAULT NULL,
  `resourceId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`permissionId`),
  UNIQUE KEY `IX_4D19C2B8` (`actionId`,`resourceId`),
  KEY `IX_F090C113` (`resourceId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permission_`
--

LOCK TABLES `permission_` WRITE;
/*!40000 ALTER TABLE `permission_` DISABLE KEYS */;
/*!40000 ALTER TABLE `permission_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone`
--

DROP TABLE IF EXISTS `phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phone` (
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
  KEY `IX_F202B9CE` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone`
--

LOCK TABLES `phone` WRITE;
/*!40000 ALTER TABLE `phone` DISABLE KEYS */;
INSERT INTO `phone` VALUES (10911,10153,10801,'Rahul Tyagi','2013-12-27 04:12:52','2013-12-27 04:36:33',10016,10155,'9711454688','',10007,1);
/*!40000 ALTER TABLE `phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pluginsetting`
--

DROP TABLE IF EXISTS `pluginsetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pluginsetting` (
  `pluginSettingId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `pluginId` varchar(75) DEFAULT NULL,
  `pluginType` varchar(75) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pluginSettingId`),
  UNIQUE KEY `IX_7171B2E8` (`companyId`,`pluginId`,`pluginType`),
  KEY `IX_B9746445` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pluginsetting`
--

LOCK TABLES `pluginsetting` WRITE;
/*!40000 ALTER TABLE `pluginsetting` DISABLE KEYS */;
INSERT INTO `pluginsetting` VALUES (10927,10153,'classic','theme','User',0);
/*!40000 ALTER TABLE `pluginsetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollschoice`
--

DROP TABLE IF EXISTS `pollschoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollschoice` (
  `uuid_` varchar(75) DEFAULT NULL,
  `choiceId` bigint(20) NOT NULL,
  `questionId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  PRIMARY KEY (`choiceId`),
  UNIQUE KEY `IX_D76DD2CF` (`questionId`,`name`),
  KEY `IX_EC370F10` (`questionId`),
  KEY `IX_6660B399` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollschoice`
--

LOCK TABLES `pollschoice` WRITE;
/*!40000 ALTER TABLE `pollschoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollschoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollsquestion`
--

DROP TABLE IF EXISTS `pollsquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollsquestion` (
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
  KEY `IX_51F087F4` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollsquestion`
--

LOCK TABLES `pollsquestion` WRITE;
/*!40000 ALTER TABLE `pollsquestion` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollsquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pollsvote`
--

DROP TABLE IF EXISTS `pollsvote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollsvote` (
  `voteId` bigint(20) NOT NULL,
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
  KEY `IX_D5DF7B54` (`choiceId`),
  KEY `IX_12112599` (`questionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pollsvote`
--

LOCK TABLES `pollsvote` WRITE;
/*!40000 ALTER TABLE `pollsvote` DISABLE KEYS */;
/*!40000 ALTER TABLE `pollsvote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portalpreferences`
--

DROP TABLE IF EXISTS `portalpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portalpreferences` (
  `portalPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portalPreferencesId`),
  KEY `IX_D1F795F1` (`ownerId`,`ownerType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portalpreferences`
--

LOCK TABLES `portalpreferences` WRITE;
/*!40000 ALTER TABLE `portalpreferences` DISABLE KEYS */;
INSERT INTO `portalpreferences` VALUES (10159,10153,1,'<portlet-preferences><preference><name>company.security.strangers.verify</name><value>false</value></preference><preference><name>ldap.server.ids</name><value></value></preference><preference><name>admin.email.password.reset.subject</name><value>[$PORTAL_URL$]: Reset Your Password</value></preference><preference><name>admin.email.user.added.subject</name><value>[$PORTAL_URL$]: Your New Account</value></preference><preference><name>admin.email.password.sent.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Your new password for [$PORTAL_URL$] is [$USER_PASSWORD$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]The request for a new password was made from [$REMOTE_ADDRESS$] / [$REMOTE_HOST$] with the browser [$USER_AGENT$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>admin.email.verification.subject</name><value>[$PORTAL_URL$]: Email Address Verification</value></preference><preference><name>open.id.auth.enabled</name><value>false</value></preference><preference><name>admin.default.role.names</name><value>Power User[$NEW_LINE$]User</value></preference><preference><name>company.security.strangers.with.mx</name><value>false</value></preference><preference><name>company.security.auto.login</name><value>true</value></preference><preference><name>company.security.site.logo</name><value>true</value></preference><preference><name>admin.email.password.sent.subject</name><value>[$PORTAL_URL$]: Your New Password</value></preference><preference><name>admin.email.password.reset.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]You can reset your password for [$PORTAL_URL$] at [$PASSWORD_RESET_URL$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]The request for a new password was made from [$REMOTE_ADDRESS$] / [$REMOTE_HOST$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>company.security.send.password</name><value>true</value></preference><preference><name>admin.email.verification.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Please verify your email address for [$PORTAL_URL$] at [$EMAIL_VERIFICATION_URL$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Your verification code is [$EMAIL_VERIFICATION_CODE$] Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>admin.email.user.added.no.password.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Welcome! You recently created an account at [$PORTAL_URL$].&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>admin.email.user.added.body</name><value>Dear [$TO_NAME$],&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Welcome! You recently created an account at [$PORTAL_URL$]. Your password is [$USER_PASSWORD$]. Enjoy!&lt;br /&gt;[$NEW_LINE$]&lt;br /&gt;[$NEW_LINE$]Sincerely,&lt;br /&gt;[$NEW_LINE$][$FROM_NAME$]&lt;br /&gt;[$NEW_LINE$][$FROM_ADDRESS$]&lt;br /&gt;[$NEW_LINE$][$PORTAL_URL$]</value></preference><preference><name>company.security.strangers</name><value>false</value></preference><preference><name>company.security.auth.type</name><value>emailAddress</value></preference></portlet-preferences>'),(10196,0,1,'<portlet-preferences />'),(10436,10195,4,'<portlet-preferences />'),(10636,10157,4,'<portlet-preferences />'),(10718,10701,4,'<portlet-preferences />'),(10818,10801,4,'<portlet-preferences><preference><name>com.liferay.portal.util.SessionClicks#usersAdminOrganizationsPanel</name><value>open</value></preference><preference><name>125#users-order-by-col</name><value>last-name</value></preference><preference><name>com.liferay.portal.util.SessionTreeJSClicks#layoutsTree</name><value>1,</value></preference><preference><name>com.liferay.portal.util.SessionClicks#liferay_dockbar_pinned</name><value>0</value></preference><preference><name>com.liferay.portal.util.SessionClicks#usersAdminUsersPanel</name><value>closed</value></preference><preference><name>com.liferay.portal.util.SessionClicks#liferay_toggle_controls</name><value>hidden</value></preference><preference><name>125#users-order-by-type</name><value>asc</value></preference><preference><name>com.liferay.portal.model.CustomizedPages10613#modifiedDate</name><value>20131228102025</value></preference></portlet-preferences>'),(11018,11001,4,'<portlet-preferences />'),(11093,11088,6,'<portlet-preferences><preference><name>reminderQueries_hr_HR</name><value></value></preference><preference><name>reminderQueries_bg_BG</name><value></value></preference><preference><name>reminderQueries_hi_IN</name><value></value></preference><preference><name>reminderQueries_lo_LA</name><value></value></preference><preference><name>reminderQueries_ca_ES</name><value></value></preference><preference><name>reminderQueries_ca_AD</name><value></value></preference><preference><name>reminderQueries_ro_RO</name><value></value></preference><preference><name>reminderQueries_hu_HU</name><value></value></preference><preference><name>reminderQueries_pt_PT</name><value></value></preference><preference><name>reminderQueries_eu_ES</name><value></value></preference><preference><name>reminderQueries_sr_RS_latin</name><value></value></preference><preference><name>reminderQueries_fi_FI</name><value></value></preference><preference><name>reminderQueries_it_IT</name><value></value></preference><preference><name>reminderQueries_ar_SA</name><value></value></preference><preference><name>reminderQueries_sl_SI</name><value></value></preference><preference><name>reminderQueries_sr_RS</name><value></value></preference><preference><name>reminderQueries_pl_PL</name><value></value></preference><preference><name>reminderQueries_sv_SE</name><value></value></preference><preference><name>reminderQueries_es_ES</name><value></value></preference><preference><name>reminderQueries_zh_CN</name><value></value></preference><preference><name>reminderQueries_nl_NL</name><value></value></preference><preference><name>reminderQueries_da_DK</name><value></value></preference><preference><name>reminderQueries_en_GB</name><value></value></preference><preference><name>reminderQueries_in_ID</name><value></value></preference><preference><name>reminderQueries_nl_BE</name><value></value></preference><preference><name>reminderQueries_iw_IL</name><value></value></preference><preference><name>reminderQueries_nb_NO</name><value></value></preference><preference><name>reminderQueries_et_EE</name><value></value></preference><preference><name>reminderQueries_tr_TR</name><value></value></preference><preference><name>reminderQueries_vi_VN</name><value></value></preference><preference><name>reminderQueries_el_GR</name><value></value></preference><preference><name>reminderQueries_pt_BR</name><value></value></preference><preference><name>reminderQueries</name><value>NULL_VALUE</value></preference><preference><name>reminderQueries_sk_SK</name><value></value></preference><preference><name>reminderQueries_cs_CZ</name><value></value></preference><preference><name>reminderQueries_fr_FR</name><value></value></preference><preference><name>reminderQueries_gl_ES</name><value></value></preference><preference><name>reminderQueries_zh_TW</name><value></value></preference><preference><name>reminderQueries_uk_UA</name><value></value></preference><preference><name>reminderQueries_fa_IR</name><value></value></preference><preference><name>reminderQueries_ja_JP</name><value></value></preference><preference><name>reminderQueries_ko_KR</name><value></value></preference><preference><name>reminderQueries_de_DE</name><value></value></preference><preference><name>reminderQueries_ru_RU</name><value></value></preference></portlet-preferences>'),(11099,11094,6,'<portlet-preferences><preference><name>reminderQueries_hr_HR</name><value></value></preference><preference><name>reminderQueries_bg_BG</name><value></value></preference><preference><name>reminderQueries_hi_IN</name><value></value></preference><preference><name>reminderQueries_lo_LA</name><value></value></preference><preference><name>reminderQueries_ca_ES</name><value></value></preference><preference><name>reminderQueries_ca_AD</name><value></value></preference><preference><name>reminderQueries_ro_RO</name><value></value></preference><preference><name>reminderQueries_hu_HU</name><value></value></preference><preference><name>reminderQueries_pt_PT</name><value></value></preference><preference><name>reminderQueries_eu_ES</name><value></value></preference><preference><name>reminderQueries_sr_RS_latin</name><value></value></preference><preference><name>reminderQueries_fi_FI</name><value></value></preference><preference><name>reminderQueries_it_IT</name><value></value></preference><preference><name>reminderQueries_ar_SA</name><value></value></preference><preference><name>reminderQueries_sl_SI</name><value></value></preference><preference><name>reminderQueries_sr_RS</name><value></value></preference><preference><name>reminderQueries_pl_PL</name><value></value></preference><preference><name>reminderQueries_sv_SE</name><value></value></preference><preference><name>reminderQueries_es_ES</name><value></value></preference><preference><name>reminderQueries_zh_CN</name><value></value></preference><preference><name>reminderQueries_nl_NL</name><value></value></preference><preference><name>reminderQueries_da_DK</name><value></value></preference><preference><name>reminderQueries_en_GB</name><value></value></preference><preference><name>reminderQueries_in_ID</name><value></value></preference><preference><name>reminderQueries_nl_BE</name><value></value></preference><preference><name>reminderQueries_iw_IL</name><value></value></preference><preference><name>reminderQueries_nb_NO</name><value></value></preference><preference><name>reminderQueries_et_EE</name><value></value></preference><preference><name>reminderQueries_tr_TR</name><value></value></preference><preference><name>reminderQueries_vi_VN</name><value></value></preference><preference><name>reminderQueries_el_GR</name><value></value></preference><preference><name>reminderQueries_pt_BR</name><value></value></preference><preference><name>reminderQueries</name><value>NULL_VALUE</value></preference><preference><name>reminderQueries_sk_SK</name><value></value></preference><preference><name>reminderQueries_cs_CZ</name><value></value></preference><preference><name>reminderQueries_fr_FR</name><value></value></preference><preference><name>reminderQueries_gl_ES</name><value></value></preference><preference><name>reminderQueries_zh_TW</name><value></value></preference><preference><name>reminderQueries_uk_UA</name><value></value></preference><preference><name>reminderQueries_fa_IR</name><value></value></preference><preference><name>reminderQueries_ja_JP</name><value></value></preference><preference><name>reminderQueries_ko_KR</name><value></value></preference><preference><name>reminderQueries_de_DE</name><value></value></preference><preference><name>reminderQueries_ru_RU</name><value></value></preference></portlet-preferences>'),(11105,11100,6,'<portlet-preferences><preference><name>reminderQueries_hr_HR</name><value></value></preference><preference><name>reminderQueries_bg_BG</name><value></value></preference><preference><name>reminderQueries_hi_IN</name><value></value></preference><preference><name>reminderQueries_lo_LA</name><value></value></preference><preference><name>reminderQueries_ca_ES</name><value></value></preference><preference><name>reminderQueries_ca_AD</name><value></value></preference><preference><name>reminderQueries_ro_RO</name><value></value></preference><preference><name>reminderQueries_hu_HU</name><value></value></preference><preference><name>reminderQueries_pt_PT</name><value></value></preference><preference><name>reminderQueries_eu_ES</name><value></value></preference><preference><name>reminderQueries_sr_RS_latin</name><value></value></preference><preference><name>reminderQueries_fi_FI</name><value></value></preference><preference><name>reminderQueries_it_IT</name><value></value></preference><preference><name>reminderQueries_ar_SA</name><value></value></preference><preference><name>reminderQueries_sl_SI</name><value></value></preference><preference><name>reminderQueries_sr_RS</name><value></value></preference><preference><name>reminderQueries_pl_PL</name><value></value></preference><preference><name>reminderQueries_sv_SE</name><value></value></preference><preference><name>reminderQueries_es_ES</name><value></value></preference><preference><name>reminderQueries_zh_CN</name><value></value></preference><preference><name>reminderQueries_nl_NL</name><value></value></preference><preference><name>reminderQueries_da_DK</name><value></value></preference><preference><name>reminderQueries_en_GB</name><value></value></preference><preference><name>reminderQueries_in_ID</name><value></value></preference><preference><name>reminderQueries_nl_BE</name><value></value></preference><preference><name>reminderQueries_iw_IL</name><value></value></preference><preference><name>reminderQueries_nb_NO</name><value></value></preference><preference><name>reminderQueries_et_EE</name><value></value></preference><preference><name>reminderQueries_tr_TR</name><value></value></preference><preference><name>reminderQueries_vi_VN</name><value></value></preference><preference><name>reminderQueries_el_GR</name><value></value></preference><preference><name>reminderQueries_pt_BR</name><value></value></preference><preference><name>reminderQueries</name><value>NULL_VALUE</value></preference><preference><name>reminderQueries_sk_SK</name><value></value></preference><preference><name>reminderQueries_cs_CZ</name><value></value></preference><preference><name>reminderQueries_fr_FR</name><value></value></preference><preference><name>reminderQueries_gl_ES</name><value></value></preference><preference><name>reminderQueries_zh_TW</name><value></value></preference><preference><name>reminderQueries_uk_UA</name><value></value></preference><preference><name>reminderQueries_fa_IR</name><value></value></preference><preference><name>reminderQueries_ja_JP</name><value></value></preference><preference><name>reminderQueries_ko_KR</name><value></value></preference><preference><name>reminderQueries_de_DE</name><value></value></preference><preference><name>reminderQueries_ru_RU</name><value></value></preference></portlet-preferences>'),(11129,11106,4,'<portlet-preferences />');
/*!40000 ALTER TABLE `portalpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portlet`
--

DROP TABLE IF EXISTS `portlet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portlet` (
  `id_` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `roles` longtext,
  `active_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id_`),
  UNIQUE KEY `IX_12B5E51D` (`companyId`,`portletId`),
  KEY `IX_80CC9508` (`companyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portlet`
--

LOCK TABLES `portlet` WRITE;
/*!40000 ALTER TABLE `portlet` DISABLE KEYS */;
INSERT INTO `portlet` VALUES (10203,10153,'98','',1),(10204,10153,'66','',1),(10205,10153,'180','',1),(10206,10153,'27','',1),(10207,10153,'152','',1),(10208,10153,'134','',1),(10209,10153,'130','',1),(10210,10153,'122','',1),(10211,10153,'36','',1),(10212,10153,'26','',1),(10213,10153,'104','',1),(10214,10153,'175','',1),(10215,10153,'64','',1),(10216,10153,'153','',1),(10217,10153,'129','',1),(10218,10153,'179','',1),(10219,10153,'173','',1),(10220,10153,'100','',1),(10221,10153,'19','',1),(10222,10153,'157','',1),(10223,10153,'181','',1),(10224,10153,'128','',1),(10225,10153,'154','',1),(10226,10153,'148','',1),(10227,10153,'11','',1),(10228,10153,'29','',1),(10229,10153,'158','',1),(10230,10153,'178','',1),(10231,10153,'8','',1),(10232,10153,'58','',1),(10233,10153,'71','',1),(10234,10153,'97','',1),(10235,10153,'39','',1),(10236,10153,'177','',1),(10237,10153,'85','',1),(10238,10153,'118','',1),(10239,10153,'107','',1),(10240,10153,'30','',1),(10241,10153,'147','',1),(10242,10153,'48','',1),(10243,10153,'125','',1),(10244,10153,'161','',1),(10245,10153,'146','',1),(10246,10153,'62','',1),(10247,10153,'162','',1),(10248,10153,'176','',1),(10249,10153,'108','',1),(10250,10153,'84','',1),(10251,10153,'101','',1),(10252,10153,'121','',1),(10253,10153,'143','',1),(10254,10153,'77','',1),(10255,10153,'167','',1),(10256,10153,'115','',1),(10257,10153,'56','',1),(10258,10153,'111','',1),(10259,10153,'3','',1),(10260,10153,'20','',1),(10261,10153,'16','',1),(10262,10153,'23','',1),(10263,10153,'83','',1),(10264,10153,'99','',1),(10265,10153,'70','',1),(10266,10153,'164','',1),(10267,10153,'141','',1),(10268,10153,'9','',1),(10269,10153,'28','',1),(10270,10153,'137','',1),(10271,10153,'15','',1),(10272,10153,'47','',1),(10273,10153,'116','',1),(10274,10153,'82','',1),(10275,10153,'151','',1),(10276,10153,'54','',1),(10277,10153,'34','',1),(10278,10153,'132','',1),(10279,10153,'169','',1),(10280,10153,'61','',1),(10281,10153,'73','',1),(10282,10153,'136','',1),(10283,10153,'50','',1),(10284,10153,'127','',1),(10285,10153,'31','',1),(10286,10153,'25','',1),(10287,10153,'166','',1),(10288,10153,'33','',1),(10289,10153,'150','',1),(10290,10153,'114','',1),(10291,10153,'149','',1),(10292,10153,'67','',1),(10293,10153,'110','',1),(10294,10153,'59','',1),(10295,10153,'135','',1),(10296,10153,'131','',1),(10297,10153,'102','',1),(11023,10153,'liferay_WAR_liferayportlet','',1);
/*!40000 ALTER TABLE `portlet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portletitem`
--

DROP TABLE IF EXISTS `portletitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portletitem` (
  `portletItemId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(75) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `portletId` varchar(75) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`portletItemId`),
  KEY `IX_96BDD537` (`groupId`,`classNameId`),
  KEY `IX_D699243F` (`groupId`,`name`,`portletId`,`classNameId`),
  KEY `IX_2C61314E` (`groupId`,`portletId`),
  KEY `IX_E922D6C0` (`groupId`,`portletId`,`classNameId`),
  KEY `IX_8E71167F` (`groupId`,`portletId`,`classNameId`,`name`),
  KEY `IX_33B8CE8D` (`groupId`,`portletId`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portletitem`
--

LOCK TABLES `portletitem` WRITE;
/*!40000 ALTER TABLE `portletitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `portletitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `portletpreferences`
--

DROP TABLE IF EXISTS `portletpreferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `portletpreferences` (
  `portletPreferencesId` bigint(20) NOT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `ownerType` int(11) DEFAULT NULL,
  `plid` bigint(20) DEFAULT NULL,
  `portletId` varchar(200) DEFAULT NULL,
  `preferences` longtext,
  PRIMARY KEY (`portletPreferencesId`),
  UNIQUE KEY `IX_C7057FF7` (`ownerId`,`ownerType`,`plid`,`portletId`),
  KEY `IX_E4F13E6E` (`ownerId`,`ownerType`,`plid`),
  KEY `IX_D5EDA3A1` (`ownerType`,`plid`,`portletId`),
  KEY `IX_F15C1C4F` (`plid`),
  KEY `IX_D340DB76` (`plid`,`portletId`),
  KEY `IX_8E6DA3A1` (`portletId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `portletpreferences`
--

LOCK TABLES `portletpreferences` WRITE;
/*!40000 ALTER TABLE `portletpreferences` DISABLE KEYS */;
INSERT INTO `portletpreferences` VALUES (10352,0,3,10347,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10358,0,3,10353,'101_INSTANCE_j1ST6fBVhgIv','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>classNameIds</name><value>10009</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),(10378,0,3,10373,'3','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10379,0,3,10373,'82','<portlet-preferences><preference><name>displayStyle</name><value>3</value></preference></portlet-preferences>'),(10380,0,3,10373,'101_INSTANCE_4jQ62b9eR0h4','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>portletSetupTitle_en_US</name><value>Recent Content</value></preference></portlet-preferences>'),(10386,0,3,10381,'20','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(10392,0,3,10387,'101_INSTANCE_p86iWXysXv5Q','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>classNameIds</name><value>10009</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),(10398,0,3,10393,'39_INSTANCE_XkNpa8BRKqSk','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference></portlet-preferences>'),(10399,0,3,10393,'39_INSTANCE_1uQghfcOTkhg','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference></portlet-preferences>'),(10593,10179,2,0,'15','<portlet-preferences />'),(10631,0,3,10417,'145','<portlet-preferences />'),(10632,0,3,10417,'58','<portlet-preferences />'),(10633,0,3,10613,'103','<portlet-preferences />'),(10634,0,3,10613,'145','<portlet-preferences />'),(10637,0,3,10613,'58','<portlet-preferences />'),(10719,0,3,10708,'145','<portlet-preferences />'),(10720,0,3,10708,'58','<portlet-preferences />'),(10722,0,3,10613,'49','<portlet-preferences />'),(10723,0,3,10713,'103','<portlet-preferences />'),(10724,10704,2,0,'33','<portlet-preferences />'),(10725,0,3,10713,'82','<portlet-preferences />'),(10726,0,3,10713,'3','<portlet-preferences />'),(10727,0,3,10713,'145','<portlet-preferences />'),(10728,0,3,10713,'87','<portlet-preferences />'),(10729,0,3,10174,'160','<portlet-preferences />'),(10730,0,3,10174,'145','<portlet-preferences />'),(10732,0,3,10713,'50','<portlet-preferences />'),(10819,0,3,10808,'145','<portlet-preferences />'),(10820,0,3,10808,'58','<portlet-preferences />'),(10824,0,3,10174,'2','<portlet-preferences />'),(10903,0,3,10808,'103','<portlet-preferences />'),(10904,0,3,10808,'11','<portlet-preferences />'),(10905,0,3,10808,'23','<portlet-preferences />'),(10906,0,3,10808,'29','<portlet-preferences />'),(10907,10804,2,0,'8','<portlet-preferences />'),(10908,0,3,10808,'82','<portlet-preferences />'),(10909,0,3,10174,'130','<portlet-preferences />'),(10915,0,3,10813,'58','<portlet-preferences />'),(10918,0,3,10808,'49','<portlet-preferences />'),(10920,0,3,10174,'165','<portlet-preferences />'),(10921,0,3,10174,'125','<portlet-preferences />'),(10922,0,3,10174,'127','<portlet-preferences />'),(10923,10804,2,0,'15','<portlet-preferences />'),(10924,0,3,10174,'20','<portlet-preferences />'),(10925,0,3,10174,'139','<portlet-preferences />'),(10926,0,3,10174,'132','<portlet-preferences />'),(10928,0,3,10174,'131','<portlet-preferences />'),(10929,0,3,10174,'137','<portlet-preferences />'),(10932,0,3,10813,'103','<portlet-preferences />'),(10933,10804,2,0,'33','<portlet-preferences />'),(10934,0,3,10813,'82','<portlet-preferences />'),(10935,0,3,10813,'3','<portlet-preferences />'),(10936,0,3,10813,'145','<portlet-preferences />'),(10937,0,3,10174,'140','<portlet-preferences />'),(10938,0,3,10174,'88','<portlet-preferences />'),(10939,0,3,10174,'49','<portlet-preferences />'),(11019,0,3,11008,'145','<portlet-preferences />'),(11020,0,3,11008,'58','<portlet-preferences />'),(11025,0,3,10813,'87','<portlet-preferences />'),(11026,0,3,10813,'56_INSTANCE_UxVAwTmDrg0f','<portlet-preferences />'),(11030,0,3,10813,'49','<portlet-preferences />'),(11031,0,3,10808,'87','<portlet-preferences />'),(11035,0,3,10174,'134','<portlet-preferences />'),(11042,0,3,10373,'116','<portlet-preferences />'),(11043,0,3,10387,'8','<portlet-preferences />'),(11064,0,3,11050,'20','<portlet-preferences><preference><name>portletSetupShowBorders</name><value>false</value></preference></portlet-preferences>'),(11065,0,3,11051,'8','<portlet-preferences />'),(11066,0,3,11051,'101_INSTANCE_p86iWXysXv5Q','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>anyAssetType</name><value>false</value></preference><preference><name>classNameIds</name><value>10009</value></preference><preference><name>portletSetupTitle_en_US</name><value>Upcoming Events</value></preference></portlet-preferences>'),(11067,0,3,11052,'39_INSTANCE_XkNpa8BRKqSk','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>3</value></preference><preference><name>urls</name><value>http://partners.userland.com/nytRss/technology.xml</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Technology news</value></preference></portlet-preferences>'),(11068,0,3,11052,'39_INSTANCE_1uQghfcOTkhg','<portlet-preferences><preference><name>portletSetupUseCustomTitle</name><value>true</value></preference><preference><name>expandedEntriesPerFeed</name><value>0</value></preference><preference><name>urls</name><value>http://www.liferay.com/en/about-us/news/-/blogs/rss</value></preference><preference><name>titles</name><value>Liferay Press Releases</value></preference><preference><name>items-per-channel</name><value>2</value></preference><preference><name>portletSetupTitle_en_US</name><value>Liferay news</value></preference></portlet-preferences>'),(11069,0,3,10174,'156','<portlet-preferences />'),(11076,0,3,10324,'141_INSTANCE_OFW9x1skH1Dx','<portlet-preferences />'),(11078,0,3,10324,'122_INSTANCE_33IDQhC7kpAM','<portlet-preferences />'),(11080,0,3,10324,'3','<portlet-preferences />'),(11082,0,3,10324,'101_INSTANCE_jR6Tt2gHnRkp','<portlet-preferences />'),(11084,0,3,11049,'103','<portlet-preferences />'),(11085,0,3,11049,'145','<portlet-preferences />'),(11116,0,3,10174,'128','<portlet-preferences />'),(11117,0,3,10174,'86','<portlet-preferences />'),(11130,0,3,11119,'103','<portlet-preferences />'),(11131,0,3,11119,'11','<portlet-preferences />'),(11132,0,3,11119,'23','<portlet-preferences />'),(11133,0,3,11119,'29','<portlet-preferences />'),(11134,11109,2,0,'8','<portlet-preferences />'),(11135,0,3,11119,'82','<portlet-preferences />'),(11136,0,3,11119,'145','<portlet-preferences />'),(11137,0,3,11119,'49','<portlet-preferences />'),(11138,0,3,11124,'103','<portlet-preferences />'),(11139,11109,2,0,'33','<portlet-preferences />'),(11140,0,3,11124,'82','<portlet-preferences />'),(11141,0,3,11124,'3','<portlet-preferences />'),(11142,0,3,11124,'145','<portlet-preferences />'),(11201,0,3,10174,'1_WAR_marketplaceportlet','<portlet-preferences />'),(11214,0,3,10613,'88','<portlet-preferences />'),(11215,0,3,11049,'87','<portlet-preferences />'),(11219,0,3,11049,'88','<portlet-preferences />'),(11301,0,3,11052,'103','<portlet-preferences />'),(11302,0,3,11052,'145','<portlet-preferences />'),(11303,0,3,11051,'103','<portlet-preferences />'),(11304,11037,2,0,'8','<portlet-preferences />'),(11305,0,3,11051,'145','<portlet-preferences />'),(11306,0,3,11050,'103','<portlet-preferences />'),(11307,0,3,11050,'145','<portlet-preferences />'),(11314,0,3,11049,'58','<portlet-preferences />'),(11316,0,3,11049,'56_INSTANCE_KcuNLC8ouyhU','<portlet-preferences><preference><name>articleId</name><value>11319</value></preference><preference><name>groupId</name><value>11037</value></preference></portlet-preferences>'),(11317,0,3,11049,'86','<portlet-preferences />'),(11318,11037,2,0,'15','<portlet-preferences />'),(11329,0,3,11050,'49','<portlet-preferences />');
/*!40000 ALTER TABLE `portletpreferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_blob_triggers`
--

DROP TABLE IF EXISTS `quartz_blob_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_blob_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `BLOB_DATA` longblob,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_blob_triggers`
--

LOCK TABLES `quartz_blob_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_blob_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_blob_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_calendars`
--

DROP TABLE IF EXISTS `quartz_calendars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_calendars` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `CALENDAR_NAME` varchar(200) NOT NULL,
  `CALENDAR` longblob NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`CALENDAR_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_calendars`
--

LOCK TABLES `quartz_calendars` WRITE;
/*!40000 ALTER TABLE `quartz_calendars` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_calendars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_cron_triggers`
--

DROP TABLE IF EXISTS `quartz_cron_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_cron_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `CRON_EXPRESSION` varchar(200) NOT NULL,
  `TIME_ZONE_ID` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_cron_triggers`
--

LOCK TABLES `quartz_cron_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_cron_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_cron_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_fired_triggers`
--

DROP TABLE IF EXISTS `quartz_fired_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_fired_triggers` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_fired_triggers`
--

LOCK TABLES `quartz_fired_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_fired_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_fired_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_job_details`
--

DROP TABLE IF EXISTS `quartz_job_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_job_details` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_job_details`
--

LOCK TABLES `quartz_job_details` WRITE;
/*!40000 ALTER TABLE `quartz_job_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_job_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_locks`
--

DROP TABLE IF EXISTS `quartz_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_locks` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `LOCK_NAME` varchar(40) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`LOCK_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_locks`
--

LOCK TABLES `quartz_locks` WRITE;
/*!40000 ALTER TABLE `quartz_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_paused_trigger_grps`
--

DROP TABLE IF EXISTS `quartz_paused_trigger_grps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_paused_trigger_grps` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_paused_trigger_grps`
--

LOCK TABLES `quartz_paused_trigger_grps` WRITE;
/*!40000 ALTER TABLE `quartz_paused_trigger_grps` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_paused_trigger_grps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_scheduler_state`
--

DROP TABLE IF EXISTS `quartz_scheduler_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_scheduler_state` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `INSTANCE_NAME` varchar(200) NOT NULL,
  `LAST_CHECKIN_TIME` bigint(20) NOT NULL,
  `CHECKIN_INTERVAL` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`INSTANCE_NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_scheduler_state`
--

LOCK TABLES `quartz_scheduler_state` WRITE;
/*!40000 ALTER TABLE `quartz_scheduler_state` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_scheduler_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_simple_triggers`
--

DROP TABLE IF EXISTS `quartz_simple_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_simple_triggers` (
  `SCHED_NAME` varchar(120) NOT NULL,
  `TRIGGER_NAME` varchar(200) NOT NULL,
  `TRIGGER_GROUP` varchar(200) NOT NULL,
  `REPEAT_COUNT` bigint(20) NOT NULL,
  `REPEAT_INTERVAL` bigint(20) NOT NULL,
  `TIMES_TRIGGERED` bigint(20) NOT NULL,
  PRIMARY KEY (`SCHED_NAME`,`TRIGGER_NAME`,`TRIGGER_GROUP`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_simple_triggers`
--

LOCK TABLES `quartz_simple_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_simple_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_simple_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_simprop_triggers`
--

DROP TABLE IF EXISTS `quartz_simprop_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_simprop_triggers` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_simprop_triggers`
--

LOCK TABLES `quartz_simprop_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_simprop_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_simprop_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartz_triggers`
--

DROP TABLE IF EXISTS `quartz_triggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quartz_triggers` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartz_triggers`
--

LOCK TABLES `quartz_triggers` WRITE;
/*!40000 ALTER TABLE `quartz_triggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `quartz_triggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratingsentry`
--

DROP TABLE IF EXISTS `ratingsentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratingsentry` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratingsentry`
--

LOCK TABLES `ratingsentry` WRITE;
/*!40000 ALTER TABLE `ratingsentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratingsentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratingsstats`
--

DROP TABLE IF EXISTS `ratingsstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratingsstats` (
  `statsId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `totalEntries` int(11) DEFAULT NULL,
  `totalScore` double DEFAULT NULL,
  `averageScore` double DEFAULT NULL,
  PRIMARY KEY (`statsId`),
  UNIQUE KEY `IX_A6E99284` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratingsstats`
--

LOCK TABLES `ratingsstats` WRITE;
/*!40000 ALTER TABLE `ratingsstats` DISABLE KEYS */;
/*!40000 ALTER TABLE `ratingsstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `region` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1001,1,'AB','Alberta',1),(1002,1,'BC','British Columbia',1),(1003,1,'MB','Manitoba',1),(1004,1,'NB','New Brunswick',1),(1005,1,'NL','Newfoundland and Labrador',1),(1006,1,'NT','Northwest Territories',1),(1007,1,'NS','Nova Scotia',1),(1008,1,'NU','Nunavut',1),(1009,1,'ON','Ontario',1),(1010,1,'PE','Prince Edward Island',1),(1011,1,'QC','Quebec',1),(1012,1,'SK','Saskatchewan',1),(1013,1,'YT','Yukon',1),(2001,2,'CN-34','Anhui',1),(2002,2,'CN-92','Aomen',1),(2003,2,'CN-11','Beijing',1),(2004,2,'CN-50','Chongqing',1),(2005,2,'CN-35','Fujian',1),(2006,2,'CN-62','Gansu',1),(2007,2,'CN-44','Guangdong',1),(2008,2,'CN-45','Guangxi',1),(2009,2,'CN-52','Guizhou',1),(2010,2,'CN-46','Hainan',1),(2011,2,'CN-13','Hebei',1),(2012,2,'CN-23','Heilongjiang',1),(2013,2,'CN-41','Henan',1),(2014,2,'CN-42','Hubei',1),(2015,2,'CN-43','Hunan',1),(2016,2,'CN-32','Jiangsu',1),(2017,2,'CN-36','Jiangxi',1),(2018,2,'CN-22','Jilin',1),(2019,2,'CN-21','Liaoning',1),(2020,2,'CN-15','Nei Mongol',1),(2021,2,'CN-64','Ningxia',1),(2022,2,'CN-63','Qinghai',1),(2023,2,'CN-61','Shaanxi',1),(2024,2,'CN-37','Shandong',1),(2025,2,'CN-31','Shanghai',1),(2026,2,'CN-14','Shanxi',1),(2027,2,'CN-51','Sichuan',1),(2028,2,'CN-71','Taiwan',1),(2029,2,'CN-12','Tianjin',1),(2030,2,'CN-91','Xianggang',1),(2031,2,'CN-65','Xinjiang',1),(2032,2,'CN-54','Xizang',1),(2033,2,'CN-53','Yunnan',1),(2034,2,'CN-33','Zhejiang',1),(3001,3,'A','Alsace',1),(3002,3,'B','Aquitaine',1),(3003,3,'C','Auvergne',1),(3004,3,'P','Basse-Normandie',1),(3005,3,'D','Bourgogne',1),(3006,3,'E','Bretagne',1),(3007,3,'F','Centre',1),(3008,3,'G','Champagne-Ardenne',1),(3009,3,'H','Corse',1),(3010,3,'GF','Guyane',1),(3011,3,'I','Franche Comté',1),(3012,3,'GP','Guadeloupe',1),(3013,3,'Q','Haute-Normandie',1),(3014,3,'J','Île-de-France',1),(3015,3,'K','Languedoc-Roussillon',1),(3016,3,'L','Limousin',1),(3017,3,'M','Lorraine',1),(3018,3,'MQ','Martinique',1),(3019,3,'N','Midi-Pyrénées',1),(3020,3,'O','Nord Pas de Calais',1),(3021,3,'R','Pays de la Loire',1),(3022,3,'S','Picardie',1),(3023,3,'T','Poitou-Charentes',1),(3024,3,'U','Provence-Alpes-Côte-d\'Azur',1),(3025,3,'RE','Réunion',1),(3026,3,'V','Rhône-Alpes',1),(4001,4,'BW','Baden-Württemberg',1),(4002,4,'BY','Bayern',1),(4003,4,'BE','Berlin',1),(4004,4,'BR','Brandenburg',1),(4005,4,'HB','Bremen',1),(4006,4,'HH','Hamburg',1),(4007,4,'HE','Hessen',1),(4008,4,'MV','Mecklenburg-Vorpommern',1),(4009,4,'NI','Niedersachsen',1),(4010,4,'NW','Nordrhein-Westfalen',1),(4011,4,'RP','Rheinland-Pfalz',1),(4012,4,'SL','Saarland',1),(4013,4,'SN','Sachsen',1),(4014,4,'ST','Sachsen-Anhalt',1),(4015,4,'SH','Schleswig-Holstein',1),(4016,4,'TH','Thüringen',1),(8001,8,'AG','Agrigento',1),(8002,8,'AL','Alessandria',1),(8003,8,'AN','Ancona',1),(8004,8,'AO','Aosta',1),(8005,8,'AR','Arezzo',1),(8006,8,'AP','Ascoli Piceno',1),(8007,8,'AT','Asti',1),(8008,8,'AV','Avellino',1),(8009,8,'BA','Bari',1),(8010,8,'BT','Barletta-Andria-Trani',1),(8011,8,'BL','Belluno',1),(8012,8,'BN','Benevento',1),(8013,8,'BG','Bergamo',1),(8014,8,'BI','Biella',1),(8015,8,'BO','Bologna',1),(8016,8,'BZ','Bolzano',1),(8017,8,'BS','Brescia',1),(8018,8,'BR','Brindisi',1),(8019,8,'CA','Cagliari',1),(8020,8,'CL','Caltanissetta',1),(8021,8,'CB','Campobasso',1),(8022,8,'CI','Carbonia-Iglesias',1),(8023,8,'CE','Caserta',1),(8024,8,'CT','Catania',1),(8025,8,'CZ','Catanzaro',1),(8026,8,'CH','Chieti',1),(8027,8,'CO','Como',1),(8028,8,'CS','Cosenza',1),(8029,8,'CR','Cremona',1),(8030,8,'KR','Crotone',1),(8031,8,'CN','Cuneo',1),(8032,8,'EN','Enna',1),(8033,8,'FM','Fermo',1),(8034,8,'FE','Ferrara',1),(8035,8,'FI','Firenze',1),(8036,8,'FG','Foggia',1),(8037,8,'FC','Forli-Cesena',1),(8038,8,'FR','Frosinone',1),(8039,8,'GE','Genova',1),(8040,8,'GO','Gorizia',1),(8041,8,'GR','Grosseto',1),(8042,8,'IM','Imperia',1),(8043,8,'IS','Isernia',1),(8044,8,'AQ','L\'Aquila',1),(8045,8,'SP','La Spezia',1),(8046,8,'LT','Latina',1),(8047,8,'LE','Lecce',1),(8048,8,'LC','Lecco',1),(8049,8,'LI','Livorno',1),(8050,8,'LO','Lodi',1),(8051,8,'LU','Lucca',1),(8052,8,'MC','Macerata',1),(8053,8,'MN','Mantova',1),(8054,8,'MS','Massa-Carrara',1),(8055,8,'MT','Matera',1),(8056,8,'MA','Medio Campidano',1),(8057,8,'ME','Messina',1),(8058,8,'MI','Milano',1),(8059,8,'MO','Modena',1),(8060,8,'MZ','Monza',1),(8061,8,'NA','Napoli',1),(8062,8,'NO','Novara',1),(8063,8,'NU','Nuoro',1),(8064,8,'OG','Ogliastra',1),(8065,8,'OT','Olbia-Tempio',1),(8066,8,'OR','Oristano',1),(8067,8,'PD','Padova',1),(8068,8,'PA','Palermo',1),(8069,8,'PR','Parma',1),(8070,8,'PV','Pavia',1),(8071,8,'PG','Perugia',1),(8072,8,'PU','Pesaro e Urbino',1),(8073,8,'PE','Pescara',1),(8074,8,'PC','Piacenza',1),(8075,8,'PI','Pisa',1),(8076,8,'PT','Pistoia',1),(8077,8,'PN','Pordenone',1),(8078,8,'PZ','Potenza',1),(8079,8,'PO','Prato',1),(8080,8,'RG','Ragusa',1),(8081,8,'RA','Ravenna',1),(8082,8,'RC','Reggio Calabria',1),(8083,8,'RE','Reggio Emilia',1),(8084,8,'RI','Rieti',1),(8085,8,'RN','Rimini',1),(8086,8,'RM','Roma',1),(8087,8,'RO','Rovigo',1),(8088,8,'SA','Salerno',1),(8089,8,'SS','Sassari',1),(8090,8,'SV','Savona',1),(8091,8,'SI','Siena',1),(8092,8,'SR','Siracusa',1),(8093,8,'SO','Sondrio',1),(8094,8,'TA','Taranto',1),(8095,8,'TE','Teramo',1),(8096,8,'TR','Terni',1),(8097,8,'TO','Torino',1),(8098,8,'TP','Trapani',1),(8099,8,'TN','Trento',1),(8100,8,'TV','Treviso',1),(8101,8,'TS','Trieste',1),(8102,8,'UD','Udine',1),(8103,8,'VA','Varese',1),(8104,8,'VE','Venezia',1),(8105,8,'VB','Verbano-Cusio-Ossola',1),(8106,8,'VC','Vercelli',1),(8107,8,'VR','Verona',1),(8108,8,'VV','Vibo Valentia',1),(8109,8,'VI','Vicenza',1),(8110,8,'VT','Viterbo',1),(11001,11,'DR','Drenthe',1),(11002,11,'FL','Flevoland',1),(11003,11,'FR','Friesland',1),(11004,11,'GE','Gelderland',1),(11005,11,'GR','Groningen',1),(11006,11,'LI','Limburg',1),(11007,11,'NB','Noord-Brabant',1),(11008,11,'NH','Noord-Holland',1),(11009,11,'OV','Overijssel',1),(11010,11,'UT','Utrecht',1),(11011,11,'ZE','Zeeland',1),(11012,11,'ZH','Zuid-Holland',1),(15001,15,'AN','Andalusia',1),(15002,15,'AR','Aragon',1),(15003,15,'AS','Asturias',1),(15004,15,'IB','Balearic Islands',1),(15005,15,'PV','Basque Country',1),(15006,15,'CN','Canary Islands',1),(15007,15,'CB','Cantabria',1),(15008,15,'CL','Castile and Leon',1),(15009,15,'CM','Castile-La Mancha',1),(15010,15,'CT','Catalonia',1),(15011,15,'CE','Ceuta',1),(15012,15,'EX','Extremadura',1),(15013,15,'GA','Galicia',1),(15014,15,'LO','La Rioja',1),(15015,15,'M','Madrid',1),(15016,15,'ML','Melilla',1),(15017,15,'MU','Murcia',1),(15018,15,'NA','Navarra',1),(15019,15,'VC','Valencia',1),(19001,19,'AL','Alabama',1),(19002,19,'AK','Alaska',1),(19003,19,'AZ','Arizona',1),(19004,19,'AR','Arkansas',1),(19005,19,'CA','California',1),(19006,19,'CO','Colorado',1),(19007,19,'CT','Connecticut',1),(19008,19,'DC','District of Columbia',1),(19009,19,'DE','Delaware',1),(19010,19,'FL','Florida',1),(19011,19,'GA','Georgia',1),(19012,19,'HI','Hawaii',1),(19013,19,'ID','Idaho',1),(19014,19,'IL','Illinois',1),(19015,19,'IN','Indiana',1),(19016,19,'IA','Iowa',1),(19017,19,'KS','Kansas',1),(19018,19,'KY','Kentucky ',1),(19019,19,'LA','Louisiana ',1),(19020,19,'ME','Maine',1),(19021,19,'MD','Maryland',1),(19022,19,'MA','Massachusetts',1),(19023,19,'MI','Michigan',1),(19024,19,'MN','Minnesota',1),(19025,19,'MS','Mississippi',1),(19026,19,'MO','Missouri',1),(19027,19,'MT','Montana',1),(19028,19,'NE','Nebraska',1),(19029,19,'NV','Nevada',1),(19030,19,'NH','New Hampshire',1),(19031,19,'NJ','New Jersey',1),(19032,19,'NM','New Mexico',1),(19033,19,'NY','New York',1),(19034,19,'NC','North Carolina',1),(19035,19,'ND','North Dakota',1),(19036,19,'OH','Ohio',1),(19037,19,'OK','Oklahoma ',1),(19038,19,'OR','Oregon',1),(19039,19,'PA','Pennsylvania',1),(19040,19,'PR','Puerto Rico',1),(19041,19,'RI','Rhode Island',1),(19042,19,'SC','South Carolina',1),(19043,19,'SD','South Dakota',1),(19044,19,'TN','Tennessee',1),(19045,19,'TX','Texas',1),(19046,19,'UT','Utah',1),(19047,19,'VT','Vermont',1),(19048,19,'VA','Virginia',1),(19049,19,'WA','Washington',1),(19050,19,'WV','West Virginia',1),(19051,19,'WI','Wisconsin',1),(19052,19,'WY','Wyoming',1),(32001,32,'ACT','Australian Capital Territory',1),(32002,32,'NSW','New South Wales',1),(32003,32,'NT','Northern Territory',1),(32004,32,'QLD','Queensland',1),(32005,32,'SA','South Australia',1),(32006,32,'TAS','Tasmania',1),(32007,32,'VIC','Victoria',1),(32008,32,'WA','Western Australia',1),(144001,144,'MX-AGS','Aguascalientes',1),(144002,144,'MX-BCN','Baja California',1),(144003,144,'MX-BCS','Baja California Sur',1),(144004,144,'MX-CAM','Campeche',1),(144005,144,'MX-CHP','Chiapas',1),(144006,144,'MX-CHI','Chihuahua',1),(144007,144,'MX-COA','Coahuila',1),(144008,144,'MX-COL','Colima',1),(144009,144,'MX-DUR','Durango',1),(144010,144,'MX-GTO','Guanajuato',1),(144011,144,'MX-GRO','Guerrero',1),(144012,144,'MX-HGO','Hidalgo',1),(144013,144,'MX-JAL','Jalisco',1),(144014,144,'MX-MEX','Mexico',1),(144015,144,'MX-MIC','Michoacan',1),(144016,144,'MX-MOR','Morelos',1),(144017,144,'MX-NAY','Nayarit',1),(144018,144,'MX-NLE','Nuevo Leon',1),(144019,144,'MX-OAX','Oaxaca',1),(144020,144,'MX-PUE','Puebla',1),(144021,144,'MX-QRO','Queretaro',1),(144023,144,'MX-ROO','Quintana Roo',1),(144024,144,'MX-SLP','San Luis Potosí',1),(144025,144,'MX-SIN','Sinaloa',1),(144026,144,'MX-SON','Sonora',1),(144027,144,'MX-TAB','Tabasco',1),(144028,144,'MX-TAM','Tamaulipas',1),(144029,144,'MX-TLX','Tlaxcala',1),(144030,144,'MX-VER','Veracruz',1),(144031,144,'MX-YUC','Yucatan',1),(144032,144,'MX-ZAC','Zacatecas',1),(164001,164,'01','Østfold',1),(164002,164,'02','Akershus',1),(164003,164,'03','Oslo',1),(164004,164,'04','Hedmark',1),(164005,164,'05','Oppland',1),(164006,164,'06','Buskerud',1),(164007,164,'07','Vestfold',1),(164008,164,'08','Telemark',1),(164009,164,'09','Aust-Agder',1),(164010,164,'10','Vest-Agder',1),(164011,164,'11','Rogaland',1),(164012,164,'12','Hordaland',1),(164013,164,'14','Sogn og Fjordane',1),(164014,164,'15','Møre of Romsdal',1),(164015,164,'16','Sør-Trøndelag',1),(164016,164,'17','Nord-Trøndelag',1),(164017,164,'18','Nordland',1),(164018,164,'19','Troms',1),(164019,164,'20','Finnmark',1),(202001,202,'AG','Aargau',1),(202002,202,'AR','Appenzell Ausserrhoden',1),(202003,202,'AI','Appenzell Innerrhoden',1),(202004,202,'BL','Basel-Landschaft',1),(202005,202,'BS','Basel-Stadt',1),(202006,202,'BE','Bern',1),(202007,202,'FR','Fribourg',1),(202008,202,'GE','Geneva',1),(202009,202,'GL','Glarus',1),(202010,202,'GR','Graubünden',1),(202011,202,'JU','Jura',1),(202012,202,'LU','Lucerne',1),(202013,202,'NE','Neuchâtel',1),(202014,202,'NW','Nidwalden',1),(202015,202,'OW','Obwalden',1),(202016,202,'SH','Schaffhausen',1),(202017,202,'SZ','Schwyz',1),(202018,202,'SO','Solothurn',1),(202019,202,'SG','St. Gallen',1),(202020,202,'TG','Thurgau',1),(202021,202,'TI','Ticino',1),(202022,202,'UR','Uri',1),(202023,202,'VS','Valais',1),(202024,202,'VD','Vaud',1),(202025,202,'ZG','Zug',1),(202026,202,'ZH','Zürich',1);
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `release_`
--

DROP TABLE IF EXISTS `release_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `release_` (
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
  KEY `IX_8BD6BCA7` (`servletContextName`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `release_`
--

LOCK TABLES `release_` WRITE;
/*!40000 ALTER TABLE `release_` DISABLE KEYS */;
INSERT INTO `release_` VALUES (1,'2013-12-22 00:42:46','2013-12-28 10:50:02','portal',6102,'2013-08-02 00:00:00',1,0,'You take the blue pill, the story ends, you wake up in your bed and believe whatever you want to believe. You take the red pill, you stay in Wonderland, and I show you how deep the rabbit hole goes.'),(10414,'2013-12-21 19:15:50','2013-12-28 10:50:46','marketplace-portlet',100,NULL,1,0,'');
/*!40000 ALTER TABLE `release_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repository`
--

DROP TABLE IF EXISTS `repository`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repository` (
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
  `portletId` varchar(75) DEFAULT NULL,
  `typeSettings` longtext,
  `dlFolderId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`repositoryId`),
  UNIQUE KEY `IX_11641E26` (`uuid_`,`groupId`),
  KEY `IX_5253B1FA` (`groupId`),
  KEY `IX_74C17B04` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repository`
--

LOCK TABLES `repository` WRITE;
/*!40000 ALTER TABLE `repository` DISABLE KEYS */;
/*!40000 ALTER TABLE `repository` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repositoryentry`
--

DROP TABLE IF EXISTS `repositoryentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `repositoryentry` (
  `uuid_` varchar(75) DEFAULT NULL,
  `repositoryEntryId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `repositoryId` bigint(20) DEFAULT NULL,
  `mappedId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`repositoryEntryId`),
  UNIQUE KEY `IX_9BDCF489` (`repositoryId`,`mappedId`),
  UNIQUE KEY `IX_354AA664` (`uuid_`,`groupId`),
  KEY `IX_B7034B27` (`repositoryId`),
  KEY `IX_B9B1506` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repositoryentry`
--

LOCK TABLES `repositoryentry` WRITE;
/*!40000 ALTER TABLE `repositoryentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `repositoryentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resource_`
--

DROP TABLE IF EXISTS `resource_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resource_` (
  `resourceId` bigint(20) NOT NULL,
  `codeId` bigint(20) DEFAULT NULL,
  `primKey` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resourceId`),
  UNIQUE KEY `IX_67DE7856` (`codeId`,`primKey`),
  KEY `IX_2578FBD3` (`codeId`),
  KEY `IX_5F076332` (`primKey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resource_`
--

LOCK TABLES `resource_` WRITE;
/*!40000 ALTER TABLE `resource_` DISABLE KEYS */;
/*!40000 ALTER TABLE `resource_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourceaction`
--

DROP TABLE IF EXISTS `resourceaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourceaction` (
  `resourceActionId` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `actionId` varchar(75) DEFAULT NULL,
  `bitwiseValue` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceActionId`),
  UNIQUE KEY `IX_EDB9986E` (`name`,`actionId`),
  KEY `IX_81F2DB09` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourceaction`
--

LOCK TABLES `resourceaction` WRITE;
/*!40000 ALTER TABLE `resourceaction` DISABLE KEYS */;
INSERT INTO `resourceaction` VALUES (1,'1_WAR_marketplaceportlet','VIEW',1),(2,'1_WAR_marketplaceportlet','ADD_TO_PAGE',2),(3,'1_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',4),(4,'1_WAR_marketplaceportlet','CONFIGURATION',8),(5,'1_WAR_marketplaceportlet','PERMISSIONS',16),(6,'2_WAR_marketplaceportlet','VIEW',1),(7,'2_WAR_marketplaceportlet','ADD_TO_PAGE',2),(8,'2_WAR_marketplaceportlet','ACCESS_IN_CONTROL_PANEL',4),(9,'2_WAR_marketplaceportlet','CONFIGURATION',8),(10,'2_WAR_marketplaceportlet','PERMISSIONS',16),(101,'98','ACCESS_IN_CONTROL_PANEL',2),(102,'98','ADD_TO_PAGE',4),(103,'98','CONFIGURATION',8),(104,'98','VIEW',1),(105,'98','PERMISSIONS',16),(106,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','DELETE',2),(107,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','PERMISSIONS',4),(108,'com.liferay.portlet.softwarecatalog.model.SCFrameworkVersion','UPDATE',8),(109,'com.liferay.portlet.softwarecatalog','ADD_FRAMEWORK_VERSION',2),(110,'com.liferay.portlet.softwarecatalog','ADD_PRODUCT_ENTRY',4),(111,'com.liferay.portlet.softwarecatalog','PERMISSIONS',8),(112,'com.liferay.portlet.softwarecatalog.model.SCLicense','DELETE',2),(113,'com.liferay.portlet.softwarecatalog.model.SCLicense','PERMISSIONS',4),(114,'com.liferay.portlet.softwarecatalog.model.SCLicense','UPDATE',8),(115,'com.liferay.portlet.softwarecatalog.model.SCLicense','VIEW',1),(116,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','ADD_DISCUSSION',2),(117,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE',4),(118,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','DELETE_DISCUSSION',8),(119,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','PERMISSIONS',16),(120,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE',32),(121,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','UPDATE_DISCUSSION',64),(122,'com.liferay.portlet.softwarecatalog.model.SCProductEntry','VIEW',1),(123,'66','VIEW',1),(124,'66','ADD_TO_PAGE',2),(125,'66','CONFIGURATION',4),(126,'66','PERMISSIONS',8),(127,'156','VIEW',1),(128,'156','ADD_TO_PAGE',2),(129,'156','ACCESS_IN_CONTROL_PANEL',4),(130,'156','CONFIGURATION',8),(131,'156','PERMISSIONS',16),(132,'180','VIEW',1),(133,'180','ADD_TO_PAGE',2),(134,'180','CONFIGURATION',4),(135,'180','PERMISSIONS',8),(136,'152','ACCESS_IN_CONTROL_PANEL',2),(137,'152','CONFIGURATION',4),(138,'152','VIEW',1),(139,'152','PERMISSIONS',8),(140,'27','VIEW',1),(141,'27','ADD_TO_PAGE',2),(142,'27','CONFIGURATION',4),(143,'27','PERMISSIONS',8),(144,'88','VIEW',1),(145,'88','ADD_TO_PAGE',2),(146,'88','CONFIGURATION',4),(147,'88','PERMISSIONS',8),(148,'87','VIEW',1),(149,'87','ADD_TO_PAGE',2),(150,'87','CONFIGURATION',4),(151,'87','PERMISSIONS',8),(152,'134','ACCESS_IN_CONTROL_PANEL',2),(153,'134','CONFIGURATION',4),(154,'134','VIEW',1),(155,'134','PERMISSIONS',8),(156,'com.liferay.portal.model.Layout','ADD_DISCUSSION',2),(157,'com.liferay.portal.model.Layout','ADD_LAYOUT',4),(158,'com.liferay.portal.model.Layout','CONFIGURE_PORTLETS',8),(159,'com.liferay.portal.model.Layout','CUSTOMIZE',16),(160,'com.liferay.portal.model.Layout','DELETE',32),(161,'com.liferay.portal.model.Layout','DELETE_DISCUSSION',64),(162,'com.liferay.portal.model.Layout','PERMISSIONS',128),(163,'com.liferay.portal.model.Layout','UPDATE',256),(164,'com.liferay.portal.model.Layout','UPDATE_DISCUSSION',512),(165,'com.liferay.portal.model.Layout','VIEW',1),(166,'com.liferay.portal.model.LayoutBranch','DELETE',2),(167,'com.liferay.portal.model.LayoutBranch','PERMISSIONS',4),(168,'com.liferay.portal.model.LayoutBranch','UPDATE',8),(169,'com.liferay.portal.model.LayoutSetBranch','DELETE',2),(170,'com.liferay.portal.model.LayoutSetBranch','MERGE',4),(171,'com.liferay.portal.model.LayoutSetBranch','PERMISSIONS',8),(172,'com.liferay.portal.model.LayoutSetBranch','UPDATE',16),(173,'com.liferay.portal.model.Team','ASSIGN_MEMBERS',2),(174,'com.liferay.portal.model.Team','DELETE',4),(175,'com.liferay.portal.model.Team','PERMISSIONS',8),(176,'com.liferay.portal.model.Team','UPDATE',16),(177,'com.liferay.portal.model.Team','VIEW',1),(178,'com.liferay.portal.model.Group','ADD_LAYOUT',2),(179,'com.liferay.portal.model.Group','ADD_LAYOUT_BRANCH',4),(180,'com.liferay.portal.model.Group','ADD_LAYOUT_SET_BRANCH',8),(181,'com.liferay.portal.model.Group','ASSIGN_MEMBERS',16),(182,'com.liferay.portal.model.Group','ASSIGN_USER_ROLES',32),(183,'com.liferay.portal.model.Group','CONFIGURE_PORTLETS',64),(184,'com.liferay.portal.model.Group','DELETE',128),(185,'com.liferay.portal.model.Group','EXPORT_IMPORT_LAYOUTS',256),(186,'com.liferay.portal.model.Group','EXPORT_IMPORT_PORTLET_INFO',512),(187,'com.liferay.portal.model.Group','MANAGE_ANNOUNCEMENTS',1024),(188,'com.liferay.portal.model.Group','MANAGE_ARCHIVED_SETUPS',2048),(189,'com.liferay.portal.model.Group','MANAGE_LAYOUTS',4096),(190,'com.liferay.portal.model.Group','MANAGE_STAGING',8192),(191,'com.liferay.portal.model.Group','MANAGE_TEAMS',16384),(192,'com.liferay.portal.model.Group','PERMISSIONS',32768),(193,'com.liferay.portal.model.Group','PUBLISH_STAGING',65536),(194,'com.liferay.portal.model.Group','PUBLISH_TO_REMOTE',131072),(195,'com.liferay.portal.model.Group','UPDATE',262144),(196,'com.liferay.portal.model.Group','VIEW',1),(197,'com.liferay.portal.model.Group','VIEW_MEMBERS',524288),(198,'com.liferay.portal.model.Group','VIEW_STAGING',1048576),(199,'130','ACCESS_IN_CONTROL_PANEL',2),(200,'130','CONFIGURATION',4),(201,'130','VIEW',1),(202,'130','PERMISSIONS',8),(203,'122','VIEW',1),(204,'122','ADD_TO_PAGE',2),(205,'122','CONFIGURATION',4),(206,'122','PERMISSIONS',8),(207,'36','ADD_TO_PAGE',2),(208,'36','CONFIGURATION',4),(209,'36','VIEW',1),(210,'36','PERMISSIONS',8),(211,'com.liferay.portlet.wiki.model.WikiPage','ADD_DISCUSSION',2),(212,'com.liferay.portlet.wiki.model.WikiPage','DELETE',4),(213,'com.liferay.portlet.wiki.model.WikiPage','DELETE_DISCUSSION',8),(214,'com.liferay.portlet.wiki.model.WikiPage','PERMISSIONS',16),(215,'com.liferay.portlet.wiki.model.WikiPage','SUBSCRIBE',32),(216,'com.liferay.portlet.wiki.model.WikiPage','UPDATE',64),(217,'com.liferay.portlet.wiki.model.WikiPage','UPDATE_DISCUSSION',128),(218,'com.liferay.portlet.wiki.model.WikiPage','VIEW',1),(219,'com.liferay.portlet.wiki.model.WikiNode','ADD_ATTACHMENT',2),(220,'com.liferay.portlet.wiki.model.WikiNode','ADD_PAGE',4),(221,'com.liferay.portlet.wiki.model.WikiNode','DELETE',8),(222,'com.liferay.portlet.wiki.model.WikiNode','IMPORT',16),(223,'com.liferay.portlet.wiki.model.WikiNode','PERMISSIONS',32),(224,'com.liferay.portlet.wiki.model.WikiNode','SUBSCRIBE',64),(225,'com.liferay.portlet.wiki.model.WikiNode','UPDATE',128),(226,'com.liferay.portlet.wiki.model.WikiNode','VIEW',1),(227,'com.liferay.portlet.wiki','ADD_NODE',2),(228,'com.liferay.portlet.wiki','PERMISSIONS',4),(229,'26','VIEW',1),(230,'26','ADD_TO_PAGE',2),(231,'26','CONFIGURATION',4),(232,'26','PERMISSIONS',8),(233,'104','VIEW',1),(234,'104','ADD_TO_PAGE',2),(235,'104','ACCESS_IN_CONTROL_PANEL',4),(236,'104','CONFIGURATION',8),(237,'104','PERMISSIONS',16),(238,'175','VIEW',1),(239,'175','ADD_TO_PAGE',2),(240,'175','CONFIGURATION',4),(241,'175','PERMISSIONS',8),(242,'153','ACCESS_IN_CONTROL_PANEL',2),(243,'153','ADD_TO_PAGE',4),(244,'153','CONFIGURATION',8),(245,'153','VIEW',1),(246,'153','PERMISSIONS',16),(247,'64','VIEW',1),(248,'64','ADD_TO_PAGE',2),(249,'64','CONFIGURATION',4),(250,'64','PERMISSIONS',8),(251,'129','ACCESS_IN_CONTROL_PANEL',2),(252,'129','CONFIGURATION',4),(253,'129','VIEW',1),(254,'129','PERMISSIONS',8),(255,'com.liferay.portal.model.PasswordPolicy','ASSIGN_MEMBERS',2),(256,'com.liferay.portal.model.PasswordPolicy','DELETE',4),(257,'com.liferay.portal.model.PasswordPolicy','PERMISSIONS',8),(258,'com.liferay.portal.model.PasswordPolicy','UPDATE',16),(259,'com.liferay.portal.model.PasswordPolicy','VIEW',1),(260,'179','VIEW',1),(261,'179','ADD_TO_PAGE',2),(262,'179','ACCESS_IN_CONTROL_PANEL',4),(263,'179','CONFIGURATION',8),(264,'179','PERMISSIONS',16),(265,'173','VIEW',1),(266,'173','ADD_TO_PAGE',2),(267,'173','ACCESS_IN_CONTROL_PANEL',4),(268,'173','CONFIGURATION',8),(269,'173','PERMISSIONS',16),(270,'100','VIEW',1),(271,'100','ADD_TO_PAGE',2),(272,'100','CONFIGURATION',4),(273,'100','PERMISSIONS',8),(274,'157','ACCESS_IN_CONTROL_PANEL',2),(275,'157','CONFIGURATION',4),(276,'157','VIEW',1),(277,'157','PERMISSIONS',8),(278,'19','ADD_TO_PAGE',2),(279,'19','CONFIGURATION',4),(280,'19','VIEW',1),(281,'19','PERMISSIONS',8),(282,'com.liferay.portlet.messageboards.model.MBCategory','ADD_FILE',2),(283,'com.liferay.portlet.messageboards.model.MBCategory','ADD_MESSAGE',4),(284,'com.liferay.portlet.messageboards.model.MBCategory','ADD_SUBCATEGORY',8),(285,'com.liferay.portlet.messageboards.model.MBCategory','DELETE',16),(286,'com.liferay.portlet.messageboards.model.MBCategory','LOCK_THREAD',32),(287,'com.liferay.portlet.messageboards.model.MBCategory','MOVE_THREAD',64),(288,'com.liferay.portlet.messageboards.model.MBCategory','PERMISSIONS',128),(289,'com.liferay.portlet.messageboards.model.MBCategory','REPLY_TO_MESSAGE',256),(290,'com.liferay.portlet.messageboards.model.MBCategory','SUBSCRIBE',512),(291,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE',1024),(292,'com.liferay.portlet.messageboards.model.MBCategory','UPDATE_THREAD_PRIORITY',2048),(293,'com.liferay.portlet.messageboards.model.MBCategory','VIEW',1),(294,'com.liferay.portlet.messageboards','ADD_CATEGORY',2),(295,'com.liferay.portlet.messageboards','ADD_FILE',4),(296,'com.liferay.portlet.messageboards','ADD_MESSAGE',8),(297,'com.liferay.portlet.messageboards','BAN_USER',16),(298,'com.liferay.portlet.messageboards','MOVE_THREAD',32),(299,'com.liferay.portlet.messageboards','LOCK_THREAD',64),(300,'com.liferay.portlet.messageboards','PERMISSIONS',128),(301,'com.liferay.portlet.messageboards','REPLY_TO_MESSAGE',256),(302,'com.liferay.portlet.messageboards','SUBSCRIBE',512),(303,'com.liferay.portlet.messageboards','UPDATE_THREAD_PRIORITY',1024),(304,'com.liferay.portlet.messageboards','VIEW',1),(305,'com.liferay.portlet.messageboards.model.MBThread','SUBSCRIBE',2),(306,'com.liferay.portlet.messageboards.model.MBThread','PERMISSIONS',4),(307,'com.liferay.portlet.messageboards.model.MBMessage','DELETE',2),(308,'com.liferay.portlet.messageboards.model.MBMessage','PERMISSIONS',4),(309,'com.liferay.portlet.messageboards.model.MBMessage','SUBSCRIBE',8),(310,'com.liferay.portlet.messageboards.model.MBMessage','UPDATE',16),(311,'com.liferay.portlet.messageboards.model.MBMessage','VIEW',1),(312,'160','VIEW',1),(313,'160','ADD_TO_PAGE',2),(314,'160','CONFIGURATION',4),(315,'160','PERMISSIONS',8),(316,'181','VIEW',1),(317,'181','ADD_TO_PAGE',2),(318,'181','CONFIGURATION',4),(319,'181','PERMISSIONS',8),(320,'128','ACCESS_IN_CONTROL_PANEL',2),(321,'128','CONFIGURATION',4),(322,'128','VIEW',1),(323,'128','PERMISSIONS',8),(324,'com.liferay.portal.model.Role','ASSIGN_MEMBERS',2),(325,'com.liferay.portal.model.Role','DEFINE_PERMISSIONS',4),(326,'com.liferay.portal.model.Role','DELETE',8),(327,'com.liferay.portal.model.Role','MANAGE_ANNOUNCEMENTS',16),(328,'com.liferay.portal.model.Role','PERMISSIONS',32),(329,'com.liferay.portal.model.Role','UPDATE',64),(330,'com.liferay.portal.model.Role','VIEW',1),(331,'86','VIEW',1),(332,'86','ADD_TO_PAGE',2),(333,'86','CONFIGURATION',4),(334,'86','PERMISSIONS',8),(335,'154','ACCESS_IN_CONTROL_PANEL',2),(336,'154','CONFIGURATION',4),(337,'154','VIEW',1),(338,'154','PERMISSIONS',8),(339,'148','VIEW',1),(340,'148','ADD_TO_PAGE',2),(341,'148','CONFIGURATION',4),(342,'148','PERMISSIONS',8),(343,'11','ADD_TO_PAGE',2),(344,'11','CONFIGURATION',4),(345,'11','VIEW',1),(346,'11','PERMISSIONS',8),(347,'29','ADD_TO_PAGE',2),(348,'29','CONFIGURATION',4),(349,'29','VIEW',1),(350,'29','PERMISSIONS',8),(351,'174','VIEW',1),(352,'174','ADD_TO_PAGE',2),(353,'174','ACCESS_IN_CONTROL_PANEL',4),(354,'174','CONFIGURATION',8),(355,'174','PERMISSIONS',16),(356,'158','ACCESS_IN_CONTROL_PANEL',2),(357,'158','ADD_TO_PAGE',4),(358,'158','CONFIGURATION',8),(359,'158','VIEW',1),(360,'158','PERMISSIONS',16),(361,'178','VIEW',1),(362,'178','ADD_TO_PAGE',2),(363,'178','ACCESS_IN_CONTROL_PANEL',4),(364,'178','CONFIGURATION',8),(365,'178','PERMISSIONS',16),(366,'124','VIEW',1),(367,'124','ADD_TO_PAGE',2),(368,'124','CONFIGURATION',4),(369,'124','PERMISSIONS',8),(370,'8','ACCESS_IN_CONTROL_PANEL',2),(371,'8','ADD_TO_PAGE',4),(372,'8','CONFIGURATION',8),(373,'8','VIEW',1),(374,'8','PERMISSIONS',16),(375,'com.liferay.portlet.calendar','ADD_EVENT',2),(376,'com.liferay.portlet.calendar','EXPORT_ALL_EVENTS',4),(377,'com.liferay.portlet.calendar','PERMISSIONS',8),(378,'com.liferay.portlet.calendar.model.CalEvent','ADD_DISCUSSION',2),(379,'com.liferay.portlet.calendar.model.CalEvent','DELETE',4),(380,'com.liferay.portlet.calendar.model.CalEvent','DELETE_DISCUSSION',8),(381,'com.liferay.portlet.calendar.model.CalEvent','PERMISSIONS',16),(382,'com.liferay.portlet.calendar.model.CalEvent','UPDATE',32),(383,'com.liferay.portlet.calendar.model.CalEvent','UPDATE_DISCUSSION',64),(384,'com.liferay.portlet.calendar.model.CalEvent','VIEW',1),(385,'58','ADD_TO_PAGE',2),(386,'58','CONFIGURATION',4),(387,'58','VIEW',1),(388,'58','PERMISSIONS',8),(389,'97','VIEW',1),(390,'97','ADD_TO_PAGE',2),(391,'97','CONFIGURATION',4),(392,'97','PERMISSIONS',8),(393,'71','ADD_TO_PAGE',2),(394,'71','CONFIGURATION',4),(395,'71','VIEW',1),(396,'71','PERMISSIONS',8),(397,'39','VIEW',1),(398,'39','ADD_TO_PAGE',2),(399,'39','CONFIGURATION',4),(400,'39','PERMISSIONS',8),(401,'177','CONFIGURATION',2),(402,'177','VIEW',1),(403,'177','ADD_TO_PAGE',4),(404,'177','PERMISSIONS',8),(405,'177','ACCESS_IN_CONTROL_PANEL',16),(406,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP',2),(407,'com.liferay.portlet.mobiledevicerules','ADD_RULE_GROUP_INSTANCE',4),(408,'com.liferay.portlet.mobiledevicerules','CONFIGURATION',8),(409,'com.liferay.portlet.mobiledevicerules','VIEW',1),(410,'com.liferay.portlet.mobiledevicerules','PERMISSIONS',16),(411,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','DELETE',2),(412,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','PERMISSIONS',4),(413,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','UPDATE',8),(414,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroup','VIEW',1),(415,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','DELETE',2),(416,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','PERMISSIONS',4),(417,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','UPDATE',8),(418,'com.liferay.portlet.mobiledevicerules.model.MDRRuleGroupInstance','VIEW',1),(419,'170','VIEW',1),(420,'170','ADD_TO_PAGE',2),(421,'170','CONFIGURATION',4),(422,'170','PERMISSIONS',8),(423,'85','ADD_TO_PAGE',2),(424,'85','CONFIGURATION',4),(425,'85','VIEW',1),(426,'85','PERMISSIONS',8),(427,'118','VIEW',1),(428,'118','ADD_TO_PAGE',2),(429,'118','CONFIGURATION',4),(430,'118','PERMISSIONS',8),(431,'107','VIEW',1),(432,'107','ADD_TO_PAGE',2),(433,'107','CONFIGURATION',4),(434,'107','PERMISSIONS',8),(435,'30','VIEW',1),(436,'30','ADD_TO_PAGE',2),(437,'30','CONFIGURATION',4),(438,'30','PERMISSIONS',8),(439,'147','ACCESS_IN_CONTROL_PANEL',2),(440,'147','CONFIGURATION',4),(441,'147','VIEW',1),(442,'147','PERMISSIONS',8),(443,'com.liferay.portlet.asset','ADD_TAG',2),(444,'com.liferay.portlet.asset','PERMISSIONS',4),(445,'com.liferay.portlet.asset','ADD_CATEGORY',8),(446,'com.liferay.portlet.asset','ADD_VOCABULARY',16),(447,'com.liferay.portlet.asset.model.AssetCategory','ADD_CATEGORY',2),(448,'com.liferay.portlet.asset.model.AssetCategory','DELETE',4),(449,'com.liferay.portlet.asset.model.AssetCategory','PERMISSIONS',8),(450,'com.liferay.portlet.asset.model.AssetCategory','UPDATE',16),(451,'com.liferay.portlet.asset.model.AssetCategory','VIEW',1),(452,'com.liferay.portlet.asset.model.AssetVocabulary','DELETE',2),(453,'com.liferay.portlet.asset.model.AssetVocabulary','PERMISSIONS',4),(454,'com.liferay.portlet.asset.model.AssetVocabulary','UPDATE',8),(455,'com.liferay.portlet.asset.model.AssetVocabulary','VIEW',1),(456,'48','VIEW',1),(457,'48','ADD_TO_PAGE',2),(458,'48','CONFIGURATION',4),(459,'48','PERMISSIONS',8),(460,'125','ACCESS_IN_CONTROL_PANEL',2),(461,'125','CONFIGURATION',4),(462,'125','EXPORT_USER',8),(463,'125','VIEW',1),(464,'125','PERMISSIONS',16),(465,'com.liferay.portal.model.User','DELETE',2),(466,'com.liferay.portal.model.User','IMPERSONATE',4),(467,'com.liferay.portal.model.User','PERMISSIONS',8),(468,'com.liferay.portal.model.User','UPDATE',16),(469,'com.liferay.portal.model.User','VIEW',1),(470,'com.liferay.portal.model.UserGroup','ASSIGN_MEMBERS',2),(471,'com.liferay.portal.model.UserGroup','DELETE',4),(472,'com.liferay.portal.model.UserGroup','MANAGE_ANNOUNCEMENTS',8),(473,'com.liferay.portal.model.UserGroup','PERMISSIONS',16),(474,'com.liferay.portal.model.UserGroup','UPDATE',32),(475,'com.liferay.portal.model.UserGroup','VIEW',1),(476,'com.liferay.portal.model.Organization','ASSIGN_MEMBERS',2),(477,'com.liferay.portal.model.Organization','ASSIGN_USER_ROLES',4),(478,'com.liferay.portal.model.Organization','DELETE',8),(479,'com.liferay.portal.model.Organization','MANAGE_ANNOUNCEMENTS',16),(480,'com.liferay.portal.model.Organization','MANAGE_SUBORGANIZATIONS',32),(481,'com.liferay.portal.model.Organization','MANAGE_USERS',64),(482,'com.liferay.portal.model.Organization','PERMISSIONS',128),(483,'com.liferay.portal.model.Organization','UPDATE',256),(484,'com.liferay.portal.model.Organization','VIEW',1),(485,'com.liferay.portal.model.Organization','VIEW_MEMBERS',512),(486,'161','ACCESS_IN_CONTROL_PANEL',2),(487,'161','CONFIGURATION',4),(488,'161','VIEW',1),(489,'161','PERMISSIONS',8),(490,'144','VIEW',1),(491,'144','ADD_TO_PAGE',2),(492,'144','CONFIGURATION',4),(493,'144','PERMISSIONS',8),(494,'146','ACCESS_IN_CONTROL_PANEL',2),(495,'146','CONFIGURATION',4),(496,'146','VIEW',1),(497,'146','PERMISSIONS',8),(498,'com.liferay.portal.model.LayoutPrototype','DELETE',2),(499,'com.liferay.portal.model.LayoutPrototype','PERMISSIONS',4),(500,'com.liferay.portal.model.LayoutPrototype','UPDATE',8),(501,'com.liferay.portal.model.LayoutPrototype','VIEW',1),(502,'62','VIEW',1),(503,'62','ADD_TO_PAGE',2),(504,'62','CONFIGURATION',4),(505,'62','PERMISSIONS',8),(506,'162','ACCESS_IN_CONTROL_PANEL',2),(507,'162','CONFIGURATION',4),(508,'162','VIEW',1),(509,'162','PERMISSIONS',8),(510,'176','VIEW',1),(511,'176','ADD_TO_PAGE',2),(512,'176','ACCESS_IN_CONTROL_PANEL',4),(513,'176','CONFIGURATION',8),(514,'176','PERMISSIONS',16),(515,'172','VIEW',1),(516,'172','ADD_TO_PAGE',2),(517,'172','CONFIGURATION',4),(518,'172','PERMISSIONS',8),(519,'108','VIEW',1),(520,'108','ADD_TO_PAGE',2),(521,'108','CONFIGURATION',4),(522,'108','PERMISSIONS',8),(523,'139','ACCESS_IN_CONTROL_PANEL',2),(524,'139','ADD_EXPANDO',4),(525,'139','CONFIGURATION',8),(526,'139','VIEW',1),(527,'139','PERMISSIONS',16),(528,'com.liferay.portlet.expando.model.ExpandoColumn','DELETE',2),(529,'com.liferay.portlet.expando.model.ExpandoColumn','PERMISSIONS',4),(530,'com.liferay.portlet.expando.model.ExpandoColumn','UPDATE',8),(531,'com.liferay.portlet.expando.model.ExpandoColumn','VIEW',1),(532,'84','ADD_ENTRY',2),(533,'84','ADD_TO_PAGE',4),(534,'84','CONFIGURATION',8),(535,'84','VIEW',1),(536,'84','PERMISSIONS',16),(537,'com.liferay.portlet.announcements.model.AnnouncementsEntry','DELETE',2),(538,'com.liferay.portlet.announcements.model.AnnouncementsEntry','UPDATE',4),(539,'com.liferay.portlet.announcements.model.AnnouncementsEntry','VIEW',1),(540,'com.liferay.portlet.announcements.model.AnnouncementsEntry','PERMISSIONS',8),(541,'101','VIEW',1),(542,'101','ADD_TO_PAGE',2),(543,'101','CONFIGURATION',4),(544,'101','PERMISSIONS',8),(545,'121','VIEW',1),(546,'121','ADD_TO_PAGE',2),(547,'121','CONFIGURATION',4),(548,'121','PERMISSIONS',8),(549,'49','VIEW',1),(550,'49','ADD_TO_PAGE',2),(551,'49','CONFIGURATION',4),(552,'49','PERMISSIONS',8),(553,'143','VIEW',1),(554,'143','ADD_TO_PAGE',2),(555,'143','CONFIGURATION',4),(556,'143','PERMISSIONS',8),(557,'167','ACCESS_IN_CONTROL_PANEL',2),(558,'167','ADD_TO_PAGE',4),(559,'167','CONFIGURATION',8),(560,'167','VIEW',1),(561,'167','PERMISSIONS',16),(562,'com.liferay.portlet.dynamicdatalists','ADD_RECORD_SET',2),(563,'com.liferay.portlet.dynamicdatalists','ADD_STRUCTURE',4),(564,'com.liferay.portlet.dynamicdatalists','ADD_TEMPLATE',8),(565,'com.liferay.portlet.dynamicdatalists','PERMISSIONS',16),(566,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','ADD_RECORD',2),(567,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','DELETE',4),(568,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','PERMISSIONS',8),(569,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','UPDATE',16),(570,'com.liferay.portlet.dynamicdatalists.model.DDLRecordSet','VIEW',1),(571,'77','VIEW',1),(572,'77','ADD_TO_PAGE',2),(573,'77','CONFIGURATION',4),(574,'77','PERMISSIONS',8),(575,'115','VIEW',1),(576,'115','ADD_TO_PAGE',2),(577,'115','CONFIGURATION',4),(578,'115','PERMISSIONS',8),(579,'56','ADD_TO_PAGE',2),(580,'56','CONFIGURATION',4),(581,'56','VIEW',1),(582,'56','PERMISSIONS',8),(583,'111','VIEW',1),(584,'111','ADD_TO_PAGE',2),(585,'111','CONFIGURATION',4),(586,'111','PERMISSIONS',8),(587,'142','VIEW',1),(588,'142','ADD_TO_PAGE',2),(589,'142','CONFIGURATION',4),(590,'142','PERMISSIONS',8),(591,'3','VIEW',1),(592,'3','ADD_TO_PAGE',2),(593,'3','CONFIGURATION',4),(594,'3','PERMISSIONS',8),(595,'20','ACCESS_IN_CONTROL_PANEL',2),(596,'20','ADD_TO_PAGE',4),(597,'20','CONFIGURATION',8),(598,'20','VIEW',1),(599,'20','PERMISSIONS',16),(600,'com.liferay.portlet.documentlibrary.model.DLFolder','ACCESS',2),(601,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_DOCUMENT',4),(602,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SHORTCUT',8),(603,'com.liferay.portlet.documentlibrary.model.DLFolder','ADD_SUBFOLDER',16),(604,'com.liferay.portlet.documentlibrary.model.DLFolder','DELETE',32),(605,'com.liferay.portlet.documentlibrary.model.DLFolder','PERMISSIONS',64),(606,'com.liferay.portlet.documentlibrary.model.DLFolder','UPDATE',128),(607,'com.liferay.portlet.documentlibrary.model.DLFolder','VIEW',1),(608,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT',2),(609,'com.liferay.portlet.documentlibrary','ADD_DOCUMENT_TYPE',4),(610,'com.liferay.portlet.documentlibrary','ADD_FOLDER',8),(611,'com.liferay.portlet.documentlibrary','ADD_REPOSITORY',16),(612,'com.liferay.portlet.documentlibrary','ADD_STRUCTURE',32),(613,'com.liferay.portlet.documentlibrary','ADD_SHORTCUT',64),(614,'com.liferay.portlet.documentlibrary','PERMISSIONS',128),(615,'com.liferay.portlet.documentlibrary','UPDATE',256),(616,'com.liferay.portlet.documentlibrary','VIEW',1),(617,'com.liferay.portlet.documentlibrary.model.DLFileEntry','ADD_DISCUSSION',2),(618,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE',4),(619,'com.liferay.portlet.documentlibrary.model.DLFileEntry','DELETE_DISCUSSION',8),(620,'com.liferay.portlet.documentlibrary.model.DLFileEntry','OVERRIDE_CHECKOUT',16),(621,'com.liferay.portlet.documentlibrary.model.DLFileEntry','PERMISSIONS',32),(622,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE',64),(623,'com.liferay.portlet.documentlibrary.model.DLFileEntry','UPDATE_DISCUSSION',128),(624,'com.liferay.portlet.documentlibrary.model.DLFileEntry','VIEW',1),(625,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','ADD_DISCUSSION',2),(626,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','DELETE',4),(627,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','DELETE_DISCUSSION',8),(628,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','PERMISSIONS',16),(629,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','UPDATE',32),(630,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','UPDATE_DISCUSSION',64),(631,'com.liferay.portlet.documentlibrary.model.DLFileShortcut','VIEW',1),(632,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','DELETE',2),(633,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','PERMISSIONS',4),(634,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','UPDATE',8),(635,'com.liferay.portlet.documentlibrary.model.DLFileEntryType','VIEW',1),(636,'145','VIEW',1),(637,'145','ADD_TO_PAGE',2),(638,'145','CONFIGURATION',4),(639,'145','PERMISSIONS',8),(640,'16','PREFERENCES',2),(641,'16','GUEST_PREFERENCES',4),(642,'16','VIEW',1),(643,'16','ADD_TO_PAGE',8),(644,'16','CONFIGURATION',16),(645,'16','PERMISSIONS',32),(646,'23','VIEW',1),(647,'23','ADD_TO_PAGE',2),(648,'23','CONFIGURATION',4),(649,'23','PERMISSIONS',8),(650,'83','ADD_ENTRY',2),(651,'83','ADD_TO_PAGE',4),(652,'83','CONFIGURATION',8),(653,'83','VIEW',1),(654,'83','PERMISSIONS',16),(655,'99','ACCESS_IN_CONTROL_PANEL',2),(656,'99','CONFIGURATION',4),(657,'99','VIEW',1),(658,'99','PERMISSIONS',8),(659,'com.liferay.portlet.asset.model.AssetTag','DELETE',2),(660,'com.liferay.portlet.asset.model.AssetTag','PERMISSIONS',4),(661,'com.liferay.portlet.asset.model.AssetTag','UPDATE',8),(662,'com.liferay.portlet.asset.model.AssetTag','VIEW',1),(663,'70','VIEW',1),(664,'70','ADD_TO_PAGE',2),(665,'70','CONFIGURATION',4),(666,'70','PERMISSIONS',8),(667,'164','VIEW',1),(668,'164','ADD_TO_PAGE',2),(669,'164','CONFIGURATION',4),(670,'164','PERMISSIONS',8),(671,'141','VIEW',1),(672,'141','ADD_TO_PAGE',2),(673,'141','CONFIGURATION',4),(674,'141','PERMISSIONS',8),(675,'9','VIEW',1),(676,'9','ADD_TO_PAGE',2),(677,'9','CONFIGURATION',4),(678,'9','PERMISSIONS',8),(679,'137','ACCESS_IN_CONTROL_PANEL',2),(680,'137','CONFIGURATION',4),(681,'137','VIEW',1),(682,'137','PERMISSIONS',8),(683,'28','ACCESS_IN_CONTROL_PANEL',2),(684,'28','ADD_TO_PAGE',4),(685,'28','CONFIGURATION',8),(686,'28','VIEW',1),(687,'28','PERMISSIONS',16),(688,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ACCESS',2),(689,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_ENTRY',4),(690,'com.liferay.portlet.bookmarks.model.BookmarksFolder','ADD_SUBFOLDER',8),(691,'com.liferay.portlet.bookmarks.model.BookmarksFolder','DELETE',16),(692,'com.liferay.portlet.bookmarks.model.BookmarksFolder','PERMISSIONS',32),(693,'com.liferay.portlet.bookmarks.model.BookmarksFolder','UPDATE',64),(694,'com.liferay.portlet.bookmarks.model.BookmarksFolder','VIEW',1),(695,'com.liferay.portlet.bookmarks','ADD_ENTRY',2),(696,'com.liferay.portlet.bookmarks','ADD_FOLDER',4),(697,'com.liferay.portlet.bookmarks','PERMISSIONS',8),(698,'com.liferay.portlet.bookmarks','VIEW',1),(699,'com.liferay.portlet.bookmarks.model.BookmarksEntry','DELETE',2),(700,'com.liferay.portlet.bookmarks.model.BookmarksEntry','PERMISSIONS',4),(701,'com.liferay.portlet.bookmarks.model.BookmarksEntry','UPDATE',8),(702,'com.liferay.portlet.bookmarks.model.BookmarksEntry','VIEW',1),(703,'133','VIEW',1),(704,'133','ADD_TO_PAGE',2),(705,'133','CONFIGURATION',4),(706,'133','PERMISSIONS',8),(707,'116','VIEW',1),(708,'116','ADD_TO_PAGE',2),(709,'116','CONFIGURATION',4),(710,'116','PERMISSIONS',8),(711,'47','VIEW',1),(712,'47','ADD_TO_PAGE',2),(713,'47','CONFIGURATION',4),(714,'47','PERMISSIONS',8),(715,'15','ACCESS_IN_CONTROL_PANEL',2),(716,'15','ADD_TO_PAGE',4),(717,'15','CONFIGURATION',8),(718,'15','VIEW',1),(719,'15','PERMISSIONS',16),(720,'com.liferay.portlet.journal.model.JournalFeed','DELETE',2),(721,'com.liferay.portlet.journal.model.JournalFeed','PERMISSIONS',4),(722,'com.liferay.portlet.journal.model.JournalFeed','UPDATE',8),(723,'com.liferay.portlet.journal.model.JournalFeed','VIEW',1),(724,'com.liferay.portlet.journal.model.JournalArticle','ADD_DISCUSSION',2),(725,'com.liferay.portlet.journal.model.JournalArticle','DELETE',4),(726,'com.liferay.portlet.journal.model.JournalArticle','DELETE_DISCUSSION',8),(727,'com.liferay.portlet.journal.model.JournalArticle','EXPIRE',16),(728,'com.liferay.portlet.journal.model.JournalArticle','PERMISSIONS',32),(729,'com.liferay.portlet.journal.model.JournalArticle','UPDATE',64),(730,'com.liferay.portlet.journal.model.JournalArticle','UPDATE_DISCUSSION',128),(731,'com.liferay.portlet.journal.model.JournalArticle','VIEW',1),(732,'com.liferay.portlet.journal','ADD_ARTICLE',2),(733,'com.liferay.portlet.journal','ADD_FEED',4),(734,'com.liferay.portlet.journal','ADD_STRUCTURE',8),(735,'com.liferay.portlet.journal','ADD_TEMPLATE',16),(736,'com.liferay.portlet.journal','SUBSCRIBE',32),(737,'com.liferay.portlet.journal','PERMISSIONS',64),(738,'com.liferay.portlet.journal.model.JournalStructure','DELETE',2),(739,'com.liferay.portlet.journal.model.JournalStructure','PERMISSIONS',4),(740,'com.liferay.portlet.journal.model.JournalStructure','UPDATE',8),(741,'com.liferay.portlet.journal.model.JournalStructure','VIEW',1),(742,'com.liferay.portlet.journal.model.JournalTemplate','DELETE',2),(743,'com.liferay.portlet.journal.model.JournalTemplate','PERMISSIONS',4),(744,'com.liferay.portlet.journal.model.JournalTemplate','UPDATE',8),(745,'com.liferay.portlet.journal.model.JournalTemplate','VIEW',1),(746,'82','VIEW',1),(747,'82','ADD_TO_PAGE',2),(748,'82','CONFIGURATION',4),(749,'82','PERMISSIONS',8),(750,'103','VIEW',1),(751,'103','ADD_TO_PAGE',2),(752,'103','CONFIGURATION',4),(753,'103','PERMISSIONS',8),(754,'151','ACCESS_IN_CONTROL_PANEL',2),(755,'151','CONFIGURATION',4),(756,'151','VIEW',1),(757,'151','PERMISSIONS',8),(758,'140','ACCESS_IN_CONTROL_PANEL',2),(759,'140','CONFIGURATION',4),(760,'140','VIEW',1),(761,'140','PERMISSIONS',8),(762,'54','VIEW',1),(763,'54','ADD_TO_PAGE',2),(764,'54','CONFIGURATION',4),(765,'54','PERMISSIONS',8),(766,'169','VIEW',1),(767,'169','ADD_TO_PAGE',2),(768,'169','CONFIGURATION',4),(769,'169','PERMISSIONS',8),(770,'132','ACCESS_IN_CONTROL_PANEL',2),(771,'132','CONFIGURATION',4),(772,'132','VIEW',1),(773,'132','PERMISSIONS',8),(774,'34','ADD_TO_PAGE',2),(775,'34','CONFIGURATION',4),(776,'34','VIEW',1),(777,'34','PERMISSIONS',8),(778,'com.liferay.portlet.shopping','ADD_CATEGORY',2),(779,'com.liferay.portlet.shopping','ADD_ITEM',4),(780,'com.liferay.portlet.shopping','MANAGE_COUPONS',8),(781,'com.liferay.portlet.shopping','MANAGE_ORDERS',16),(782,'com.liferay.portlet.shopping','PERMISSIONS',32),(783,'com.liferay.portlet.shopping','VIEW',1),(784,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_ITEM',2),(785,'com.liferay.portlet.shopping.model.ShoppingCategory','ADD_SUBCATEGORY',4),(786,'com.liferay.portlet.shopping.model.ShoppingCategory','DELETE',8),(787,'com.liferay.portlet.shopping.model.ShoppingCategory','PERMISSIONS',16),(788,'com.liferay.portlet.shopping.model.ShoppingCategory','UPDATE',32),(789,'com.liferay.portlet.shopping.model.ShoppingCategory','VIEW',1),(790,'com.liferay.portlet.shopping.model.ShoppingOrder','DELETE',2),(791,'com.liferay.portlet.shopping.model.ShoppingOrder','PERMISSIONS',4),(792,'com.liferay.portlet.shopping.model.ShoppingOrder','UPDATE',8),(793,'com.liferay.portlet.shopping.model.ShoppingOrder','VIEW',1),(794,'com.liferay.portlet.shopping.model.ShoppingItem','DELETE',2),(795,'com.liferay.portlet.shopping.model.ShoppingItem','PERMISSIONS',4),(796,'com.liferay.portlet.shopping.model.ShoppingItem','UPDATE',8),(797,'com.liferay.portlet.shopping.model.ShoppingItem','VIEW',1),(798,'61','VIEW',1),(799,'61','ADD_TO_PAGE',2),(800,'61','CONFIGURATION',4),(801,'61','PERMISSIONS',8),(802,'73','ADD_TO_PAGE',2),(803,'73','CONFIGURATION',4),(804,'73','VIEW',1),(805,'73','PERMISSIONS',8),(806,'136','ACCESS_IN_CONTROL_PANEL',2),(807,'136','CONFIGURATION',4),(808,'136','VIEW',1),(809,'136','PERMISSIONS',8),(810,'127','VIEW',1),(811,'127','ADD_TO_PAGE',2),(812,'127','ACCESS_IN_CONTROL_PANEL',4),(813,'127','CONFIGURATION',8),(814,'127','PERMISSIONS',16),(815,'50','VIEW',1),(816,'50','ADD_TO_PAGE',2),(817,'50','CONFIGURATION',4),(818,'50','PERMISSIONS',8),(819,'31','VIEW',1),(820,'31','ADD_TO_PAGE',2),(821,'31','CONFIGURATION',4),(822,'31','PERMISSIONS',8),(823,'165','VIEW',1),(824,'165','ADD_TO_PAGE',2),(825,'165','ACCESS_IN_CONTROL_PANEL',4),(826,'165','CONFIGURATION',8),(827,'165','PERMISSIONS',16),(828,'25','ACCESS_IN_CONTROL_PANEL',2),(829,'25','CONFIGURATION',4),(830,'25','VIEW',1),(831,'25','PERMISSIONS',8),(832,'com.liferay.portlet.polls','ADD_QUESTION',2),(833,'com.liferay.portlet.polls','PERMISSIONS',4),(834,'com.liferay.portlet.polls.model.PollsQuestion','ADD_VOTE',2),(835,'com.liferay.portlet.polls.model.PollsQuestion','DELETE',4),(836,'com.liferay.portlet.polls.model.PollsQuestion','PERMISSIONS',8),(837,'com.liferay.portlet.polls.model.PollsQuestion','UPDATE',16),(838,'com.liferay.portlet.polls.model.PollsQuestion','VIEW',1),(839,'166','ACCESS_IN_CONTROL_PANEL',2),(840,'166','ADD_TO_PAGE',4),(841,'166','CONFIGURATION',8),(842,'166','VIEW',1),(843,'166','PERMISSIONS',16),(844,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','DELETE',2),(845,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','PERMISSIONS',4),(846,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','UPDATE',8),(847,'com.liferay.portlet.dynamicdatamapping.model.DDMTemplate','VIEW',1),(848,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','DELETE',2),(849,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','PERMISSIONS',4),(850,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','UPDATE',8),(851,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure','VIEW',1),(852,'90','ADD_COMMUNITY',2),(853,'90','ADD_LAYOUT_PROTOTYPE',4),(854,'90','ADD_LAYOUT_SET_PROTOTYPE',8),(855,'90','ADD_LICENSE',16),(856,'90','ADD_ORGANIZATION',32),(857,'90','ADD_PASSWORD_POLICY',64),(858,'90','ADD_ROLE',128),(859,'90','ADD_USER',256),(860,'90','ADD_USER_GROUP',512),(861,'90','CONFIGURATION',1024),(862,'90','EXPORT_USER',2048),(863,'90','IMPERSONATE',4096),(864,'90','UNLINK_LAYOUT_SET_PROTOTYPE',8192),(865,'90','VIEW_CONTROL_PANEL',16384),(866,'90','ADD_TO_PAGE',32768),(867,'90','PERMISSIONS',65536),(868,'90','VIEW',1),(869,'150','ACCESS_IN_CONTROL_PANEL',2),(870,'150','CONFIGURATION',4),(871,'150','VIEW',1),(872,'150','PERMISSIONS',8),(873,'113','VIEW',1),(874,'113','ADD_TO_PAGE',2),(875,'113','CONFIGURATION',4),(876,'113','PERMISSIONS',8),(877,'33','ADD_TO_PAGE',2),(878,'33','CONFIGURATION',4),(879,'33','VIEW',1),(880,'33','PERMISSIONS',8),(881,'com.liferay.portlet.blogs','ADD_ENTRY',2),(882,'com.liferay.portlet.blogs','PERMISSIONS',4),(883,'com.liferay.portlet.blogs','SUBSCRIBE',8),(884,'com.liferay.portlet.blogs.model.BlogsEntry','ADD_DISCUSSION',2),(885,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE',4),(886,'com.liferay.portlet.blogs.model.BlogsEntry','DELETE_DISCUSSION',8),(887,'com.liferay.portlet.blogs.model.BlogsEntry','PERMISSIONS',16),(888,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE',32),(889,'com.liferay.portlet.blogs.model.BlogsEntry','UPDATE_DISCUSSION',64),(890,'com.liferay.portlet.blogs.model.BlogsEntry','VIEW',1),(891,'2','ACCESS_IN_CONTROL_PANEL',2),(892,'2','CONFIGURATION',4),(893,'2','VIEW',1),(894,'2','PERMISSIONS',8),(895,'119','VIEW',1),(896,'119','ADD_TO_PAGE',2),(897,'119','CONFIGURATION',4),(898,'119','PERMISSIONS',8),(899,'114','VIEW',1),(900,'114','ADD_TO_PAGE',2),(901,'114','CONFIGURATION',4),(902,'114','PERMISSIONS',8),(903,'149','ACCESS_IN_CONTROL_PANEL',2),(904,'149','CONFIGURATION',4),(905,'149','VIEW',1),(906,'149','PERMISSIONS',8),(907,'com.liferay.portal.model.LayoutSetPrototype','DELETE',2),(908,'com.liferay.portal.model.LayoutSetPrototype','PERMISSIONS',4),(909,'com.liferay.portal.model.LayoutSetPrototype','UPDATE',8),(910,'com.liferay.portal.model.LayoutSetPrototype','VIEW',1),(911,'67','VIEW',1),(912,'67','ADD_TO_PAGE',2),(913,'67','CONFIGURATION',4),(914,'67','PERMISSIONS',8),(915,'110','VIEW',1),(916,'110','ADD_TO_PAGE',2),(917,'110','CONFIGURATION',4),(918,'110','PERMISSIONS',8),(919,'135','ACCESS_IN_CONTROL_PANEL',2),(920,'135','CONFIGURATION',4),(921,'135','VIEW',1),(922,'135','PERMISSIONS',8),(923,'59','VIEW',1),(924,'59','ADD_TO_PAGE',2),(925,'59','CONFIGURATION',4),(926,'59','PERMISSIONS',8),(927,'131','ACCESS_IN_CONTROL_PANEL',2),(928,'131','CONFIGURATION',4),(929,'131','VIEW',1),(930,'131','PERMISSIONS',8),(931,'102','VIEW',1),(932,'102','ADD_TO_PAGE',2),(933,'102','CONFIGURATION',4),(934,'102','PERMISSIONS',8),(1001,'liferay_WAR_liferayportlet','VIEW',1),(1002,'liferay_WAR_liferayportlet','ADD_TO_PAGE',2),(1003,'liferay_WAR_liferayportlet','CONFIGURATION',4),(1004,'liferay_WAR_liferayportlet','PERMISSIONS',8);
/*!40000 ALTER TABLE `resourceaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourceblock`
--

DROP TABLE IF EXISTS `resourceblock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourceblock` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourceblock`
--

LOCK TABLES `resourceblock` WRITE;
/*!40000 ALTER TABLE `resourceblock` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourceblock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourceblockpermission`
--

DROP TABLE IF EXISTS `resourceblockpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourceblockpermission` (
  `resourceBlockPermissionId` bigint(20) NOT NULL,
  `resourceBlockId` bigint(20) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourceBlockPermissionId`),
  UNIQUE KEY `IX_D63D20BB` (`resourceBlockId`,`roleId`),
  KEY `IX_4AB3756` (`resourceBlockId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourceblockpermission`
--

LOCK TABLES `resourceblockpermission` WRITE;
/*!40000 ALTER TABLE `resourceblockpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourceblockpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourcecode`
--

DROP TABLE IF EXISTS `resourcecode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourcecode` (
  `codeId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  PRIMARY KEY (`codeId`),
  UNIQUE KEY `IX_A32C097E` (`companyId`,`name`,`scope`),
  KEY `IX_717FDD47` (`companyId`),
  KEY `IX_AACAFF40` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourcecode`
--

LOCK TABLES `resourcecode` WRITE;
/*!40000 ALTER TABLE `resourcecode` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourcecode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourcepermission`
--

DROP TABLE IF EXISTS `resourcepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourcepermission` (
  `resourcePermissionId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scope` int(11) DEFAULT NULL,
  `primKey` varchar(255) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `ownerId` bigint(20) DEFAULT NULL,
  `actionIds` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`resourcePermissionId`),
  KEY `IX_88705859` (`companyId`,`name`,`primKey`,`ownerId`),
  KEY `IX_C94C7708` (`companyId`,`name`,`primKey`,`roleId`,`actionIds`),
  KEY `IX_60B99860` (`companyId`,`name`,`scope`),
  KEY `IX_2200AA69` (`companyId`,`name`,`scope`,`primKey`),
  KEY `IX_8D83D0CE` (`companyId`,`name`,`scope`,`primKey`,`roleId`),
  KEY `IX_D2E2B644` (`companyId`,`name`,`scope`,`primKey`,`roleId`,`actionIds`),
  KEY `IX_4A1F4402` (`companyId`,`name`,`scope`,`primKey`,`roleId`,`ownerId`,`actionIds`),
  KEY `IX_26284944` (`companyId`,`primKey`),
  KEY `IX_8DB864A9` (`companyId`,`primKey`,`roleId`),
  KEY `IX_A37A0588` (`roleId`),
  KEY `IX_F4555981` (`scope`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourcepermission`
--

LOCK TABLES `resourcepermission` WRITE;
/*!40000 ALTER TABLE `resourcepermission` DISABLE KEYS */;
INSERT INTO `resourcepermission` VALUES (164,10153,'100',1,'10153',10163,0,2),(165,10153,'100',1,'10153',10164,0,2),(29,10153,'100',2,'10188',10164,0,1),(214,10153,'101',1,'10153',10161,0,2),(215,10153,'101',1,'10153',10163,0,2),(216,10153,'101',1,'10153',10164,0,2),(60,10153,'101',2,'10188',10164,0,1),(344,10153,'101',4,'10324_LAYOUT_101_INSTANCE_jR6Tt2gHnRkp',10161,0,1),(342,10153,'101',4,'10324_LAYOUT_101_INSTANCE_jR6Tt2gHnRkp',10162,0,15),(343,10153,'101',4,'10324_LAYOUT_101_INSTANCE_jR6Tt2gHnRkp',10169,0,1),(382,10153,'101',4,'10353_LAYOUT_101_INSTANCE_j1ST6fBVhgIv',10162,0,15),(383,10153,'101',4,'10353_LAYOUT_101_INSTANCE_j1ST6fBVhgIv',10169,0,1),(407,10153,'101',4,'10373_LAYOUT_101_INSTANCE_4jQ62b9eR0h4',10162,0,15),(408,10153,'101',4,'10373_LAYOUT_101_INSTANCE_4jQ62b9eR0h4',10169,0,1),(423,10153,'101',4,'10387_LAYOUT_101_INSTANCE_p86iWXysXv5Q',10162,0,15),(424,10153,'101',4,'10387_LAYOUT_101_INSTANCE_p86iWXysXv5Q',10169,0,1),(973,10153,'101',4,'11051_LAYOUT_101_INSTANCE_p86iWXysXv5Q',10162,0,15),(974,10153,'101',4,'11051_LAYOUT_101_INSTANCE_p86iWXysXv5Q',10169,0,1),(301,10153,'102',1,'10153',10161,0,2),(302,10153,'102',1,'10153',10163,0,2),(303,10153,'102',1,'10153',10164,0,2),(106,10153,'102',2,'10188',10164,0,1),(513,10153,'103',4,'10613_LAYOUT_103',10161,0,1),(511,10153,'103',4,'10613_LAYOUT_103',10162,0,15),(512,10153,'103',4,'10613_LAYOUT_103',10169,0,1),(615,10153,'103',4,'10713_LAYOUT_103',10161,0,1),(613,10153,'103',4,'10713_LAYOUT_103',10162,0,15),(614,10153,'103',4,'10713_LAYOUT_103',10163,0,1),(801,10153,'103',4,'10808_LAYOUT_103',10162,0,15),(802,10153,'103',4,'10808_LAYOUT_103',10163,0,1),(843,10153,'103',4,'10813_LAYOUT_103',10161,0,1),(841,10153,'103',4,'10813_LAYOUT_103',10162,0,15),(842,10153,'103',4,'10813_LAYOUT_103',10163,0,1),(998,10153,'103',4,'11049_LAYOUT_103',10161,0,1),(996,10153,'103',4,'11049_LAYOUT_103',10162,0,15),(997,10153,'103',4,'11049_LAYOUT_103',10169,0,1),(1215,10153,'103',4,'11050_LAYOUT_103',10161,0,1),(1213,10153,'103',4,'11050_LAYOUT_103',10162,0,15),(1214,10153,'103',4,'11050_LAYOUT_103',10169,0,1),(1209,10153,'103',4,'11051_LAYOUT_103',10161,0,1),(1207,10153,'103',4,'11051_LAYOUT_103',10162,0,15),(1208,10153,'103',4,'11051_LAYOUT_103',10169,0,1),(1203,10153,'103',4,'11052_LAYOUT_103',10161,0,1),(1201,10153,'103',4,'11052_LAYOUT_103',10162,0,15),(1202,10153,'103',4,'11052_LAYOUT_103',10169,0,1),(1028,10153,'103',4,'11119_LAYOUT_103',10162,0,15),(1029,10153,'103',4,'11119_LAYOUT_103',10163,0,1),(1046,10153,'103',4,'11124_LAYOUT_103',10161,0,1),(1044,10153,'103',4,'11124_LAYOUT_103',10162,0,15),(1045,10153,'103',4,'11124_LAYOUT_103',10163,0,1),(152,10153,'104',1,'10153',10160,0,2),(22,10153,'104',2,'10188',10164,0,1),(201,10153,'107',1,'10153',10163,0,2),(202,10153,'107',1,'10153',10164,0,2),(48,10153,'107',2,'10188',10164,0,1),(210,10153,'108',1,'10153',10163,0,2),(211,10153,'108',1,'10153',10164,0,2),(58,10153,'108',2,'10188',10164,0,1),(174,10153,'11',1,'10153',10163,0,2),(175,10153,'11',1,'10153',10164,0,2),(36,10153,'11',2,'10188',10164,0,1),(803,10153,'11',4,'10808_LAYOUT_11',10162,0,15),(1030,10153,'11',4,'11119_LAYOUT_11',10162,0,15),(297,10153,'110',1,'10153',10163,0,2),(298,10153,'110',1,'10153',10164,0,2),(102,10153,'110',2,'10188',10164,0,1),(234,10153,'111',1,'10153',10160,0,2),(67,10153,'111',2,'10188',10164,0,1),(292,10153,'114',1,'10153',10161,0,2),(293,10153,'114',1,'10153',10163,0,2),(294,10153,'114',1,'10153',10164,0,2),(99,10153,'114',2,'10188',10164,0,1),(329,10153,'114',4,'10314_LAYOUT_114',10161,0,1),(327,10153,'114',4,'10314_LAYOUT_114',10162,0,15),(328,10153,'114',4,'10314_LAYOUT_114',10169,0,1),(228,10153,'115',1,'10153',10161,0,2),(229,10153,'115',1,'10153',10163,0,2),(230,10153,'115',1,'10153',10164,0,2),(65,10153,'115',2,'10188',10164,0,1),(263,10153,'116',1,'10153',10161,0,2),(264,10153,'116',1,'10153',10163,0,2),(265,10153,'116',1,'10153',10164,0,2),(82,10153,'116',2,'10188',10164,0,1),(401,10153,'116',4,'10373_LAYOUT_116',10162,0,15),(402,10153,'116',4,'10373_LAYOUT_116',10169,0,1),(198,10153,'118',1,'10153',10161,0,2),(199,10153,'118',1,'10153',10163,0,2),(200,10153,'118',1,'10153',10164,0,2),(47,10153,'118',2,'10188',10164,0,1),(217,10153,'121',1,'10153',10161,0,2),(218,10153,'121',1,'10153',10163,0,2),(219,10153,'121',1,'10153',10164,0,2),(61,10153,'121',2,'10188',10164,0,1),(145,10153,'122',1,'10153',10161,0,2),(146,10153,'122',1,'10153',10163,0,2),(147,10153,'122',1,'10153',10164,0,2),(19,10153,'122',2,'10188',10164,0,1),(338,10153,'122',4,'10324_LAYOUT_122_INSTANCE_33IDQhC7kpAM',10161,0,1),(336,10153,'122',4,'10324_LAYOUT_122_INSTANCE_33IDQhC7kpAM',10162,0,15),(337,10153,'122',4,'10324_LAYOUT_122_INSTANCE_33IDQhC7kpAM',10169,0,1),(354,10153,'122',4,'10333_LAYOUT_122_INSTANCE_eoiK1IPgeXBb',10161,0,1),(352,10153,'122',4,'10333_LAYOUT_122_INSTANCE_eoiK1IPgeXBb',10162,0,15),(353,10153,'122',4,'10333_LAYOUT_122_INSTANCE_eoiK1IPgeXBb',10169,0,1),(390,10153,'122',4,'10359_LAYOUT_122_INSTANCE_78LIaid1VR2Y',10162,0,15),(391,10153,'122',4,'10359_LAYOUT_122_INSTANCE_78LIaid1VR2Y',10169,0,1),(52,10153,'125',2,'10188',10164,0,1),(822,10153,'125',4,'10174_LAYOUT_125',10162,0,31),(823,10153,'125',4,'10174_LAYOUT_125',10163,0,1),(283,10153,'127',1,'10153',10160,0,2),(93,10153,'127',2,'10188',10164,0,1),(824,10153,'127',4,'10174_LAYOUT_127',10162,0,31),(825,10153,'127',4,'10174_LAYOUT_127',10163,0,1),(33,10153,'128',2,'10188',10164,0,1),(1015,10153,'128',4,'10174_LAYOUT_128',10162,0,15),(1016,10153,'128',4,'10174_LAYOUT_128',10169,0,1),(26,10153,'129',2,'10188',10164,0,1),(18,10153,'130',2,'10188',10164,0,1),(813,10153,'130',4,'10174_LAYOUT_130',10162,0,15),(814,10153,'130',4,'10174_LAYOUT_130',10169,0,1),(105,10153,'131',2,'10188',10164,0,1),(837,10153,'131',4,'10174_LAYOUT_131',10162,0,15),(838,10153,'131',4,'10174_LAYOUT_131',10163,0,1),(87,10153,'132',2,'10188',10164,0,1),(835,10153,'132',4,'10174_LAYOUT_132',10162,0,15),(836,10153,'132',4,'10174_LAYOUT_132',10163,0,1),(17,10153,'134',2,'10188',10164,0,1),(931,10153,'134',4,'10174_LAYOUT_134',10162,0,15),(932,10153,'134',4,'10174_LAYOUT_134',10169,0,1),(104,10153,'135',2,'10188',10164,0,1),(91,10153,'136',2,'10188',10164,0,1),(79,10153,'137',2,'10188',10164,0,1),(839,10153,'137',4,'10174_LAYOUT_137',10162,0,15),(840,10153,'137',4,'10174_LAYOUT_137',10163,0,1),(834,10153,'139',4,'10174_LAYOUT_139',10162,0,31),(2,10153,'140',1,'10153',10164,0,2),(857,10153,'140',4,'10174_LAYOUT_140',10162,0,15),(252,10153,'141',1,'10153',10161,0,2),(253,10153,'141',1,'10153',10163,0,2),(254,10153,'141',1,'10153',10164,0,2),(76,10153,'141',2,'10188',10164,0,1),(335,10153,'141',4,'10324_LAYOUT_141_INSTANCE_OFW9x1skH1Dx',10161,0,1),(333,10153,'141',4,'10324_LAYOUT_141_INSTANCE_OFW9x1skH1Dx',10162,0,15),(334,10153,'141',4,'10324_LAYOUT_141_INSTANCE_OFW9x1skH1Dx',10169,0,1),(357,10153,'141',4,'10333_LAYOUT_141_INSTANCE_94YyXEH04i3N',10161,0,1),(355,10153,'141',4,'10333_LAYOUT_141_INSTANCE_94YyXEH04i3N',10162,0,15),(356,10153,'141',4,'10333_LAYOUT_141_INSTANCE_94YyXEH04i3N',10169,0,1),(220,10153,'143',1,'10153',10161,0,2),(221,10153,'143',1,'10153',10163,0,2),(222,10153,'143',1,'10153',10164,0,2),(62,10153,'143',2,'10188',10164,0,1),(634,10153,'145',4,'10174_LAYOUT_145',10162,0,15),(635,10153,'145',4,'10174_LAYOUT_145',10163,0,1),(507,10153,'145',4,'10417_LAYOUT_145',10162,0,15),(508,10153,'145',4,'10417_LAYOUT_145',10163,0,1),(519,10153,'145',4,'10613_LAYOUT_145',10161,0,1),(517,10153,'145',4,'10613_LAYOUT_145',10162,0,15),(518,10153,'145',4,'10613_LAYOUT_145',10169,0,1),(606,10153,'145',4,'10708_LAYOUT_145',10162,0,15),(607,10153,'145',4,'10708_LAYOUT_145',10163,0,1),(628,10153,'145',4,'10713_LAYOUT_145',10161,0,1),(626,10153,'145',4,'10713_LAYOUT_145',10162,0,15),(627,10153,'145',4,'10713_LAYOUT_145',10163,0,1),(706,10153,'145',4,'10808_LAYOUT_145',10162,0,15),(707,10153,'145',4,'10808_LAYOUT_145',10163,0,1),(856,10153,'145',4,'10813_LAYOUT_145',10161,0,1),(854,10153,'145',4,'10813_LAYOUT_145',10162,0,15),(855,10153,'145',4,'10813_LAYOUT_145',10163,0,1),(906,10153,'145',4,'11008_LAYOUT_145',10162,0,15),(907,10153,'145',4,'11008_LAYOUT_145',10163,0,1),(1001,10153,'145',4,'11049_LAYOUT_145',10161,0,1),(999,10153,'145',4,'11049_LAYOUT_145',10162,0,15),(1000,10153,'145',4,'11049_LAYOUT_145',10169,0,1),(1218,10153,'145',4,'11050_LAYOUT_145',10161,0,1),(1216,10153,'145',4,'11050_LAYOUT_145',10162,0,15),(1217,10153,'145',4,'11050_LAYOUT_145',10169,0,1),(1212,10153,'145',4,'11051_LAYOUT_145',10161,0,1),(1210,10153,'145',4,'11051_LAYOUT_145',10162,0,15),(1211,10153,'145',4,'11051_LAYOUT_145',10169,0,1),(1206,10153,'145',4,'11052_LAYOUT_145',10161,0,1),(1204,10153,'145',4,'11052_LAYOUT_145',10162,0,15),(1205,10153,'145',4,'11052_LAYOUT_145',10169,0,1),(1040,10153,'145',4,'11119_LAYOUT_145',10162,0,15),(1041,10153,'145',4,'11119_LAYOUT_145',10163,0,1),(1059,10153,'145',4,'11124_LAYOUT_145',10161,0,1),(1057,10153,'145',4,'11124_LAYOUT_145',10162,0,15),(1058,10153,'145',4,'11124_LAYOUT_145',10163,0,1),(54,10153,'146',2,'10188',10164,0,1),(117,10153,'147',2,'10188',10163,0,2),(50,10153,'147',2,'10188',10164,0,1),(171,10153,'148',1,'10153',10161,0,2),(172,10153,'148',1,'10153',10163,0,2),(173,10153,'148',1,'10153',10164,0,2),(35,10153,'148',2,'10188',10164,0,1),(326,10153,'148',4,'10314_LAYOUT_148_INSTANCE_N7xuPpZeS9E6',10161,0,1),(324,10153,'148',4,'10314_LAYOUT_148_INSTANCE_N7xuPpZeS9E6',10162,0,15),(325,10153,'148',4,'10314_LAYOUT_148_INSTANCE_N7xuPpZeS9E6',10169,0,1),(392,10153,'148',4,'10359_LAYOUT_148_INSTANCE_vevlQTEVfU94',10162,0,15),(393,10153,'148',4,'10359_LAYOUT_148_INSTANCE_vevlQTEVfU94',10169,0,1),(100,10153,'149',2,'10188',10164,0,1),(258,10153,'15',1,'10153',10163,0,4),(259,10153,'15',1,'10153',10164,0,4),(124,10153,'15',2,'10188',10163,0,2),(80,10153,'15',2,'10188',10164,0,1),(826,10153,'15',4,'10174_LAYOUT_15',10162,0,31),(827,10153,'15',4,'10174_LAYOUT_15',10163,0,1),(1244,10153,'15',4,'11049_LAYOUT_15',10161,0,1),(1242,10153,'15',4,'11049_LAYOUT_15',10162,0,31),(1243,10153,'15',4,'11049_LAYOUT_15',10169,0,1),(98,10153,'150',2,'10188',10164,0,1),(84,10153,'151',2,'10188',10164,0,1),(111,10153,'152',2,'10188',10163,0,2),(16,10153,'152',2,'10188',10164,0,1),(159,10153,'153',1,'10153',10163,0,4),(4,10153,'153',1,'10153',10164,0,6),(25,10153,'153',2,'10188',10164,0,1),(114,10153,'154',2,'10188',10163,0,2),(34,10153,'154',2,'10188',10164,0,1),(979,10153,'156',4,'10174_LAYOUT_156',10162,0,31),(980,10153,'156',4,'10174_LAYOUT_156',10169,0,1),(31,10153,'157',2,'10188',10164,0,1),(178,10153,'158',1,'10153',10163,0,4),(3,10153,'158',1,'10153',10164,0,6),(38,10153,'158',2,'10188',10164,0,1),(241,10153,'16',1,'10153',10163,0,8),(242,10153,'16',1,'10153',10164,0,8),(70,10153,'16',2,'10188',10164,0,1),(632,10153,'160',4,'10174_LAYOUT_160',10162,0,15),(633,10153,'160',4,'10174_LAYOUT_160',10163,0,1),(118,10153,'161',2,'10188',10163,0,2),(53,10153,'161',2,'10188',10164,0,1),(119,10153,'162',2,'10188',10163,0,2),(56,10153,'162',2,'10188',10164,0,1),(249,10153,'164',1,'10153',10161,0,2),(250,10153,'164',1,'10153',10163,0,2),(251,10153,'164',1,'10153',10164,0,2),(75,10153,'164',2,'10188',10164,0,1),(820,10153,'165',4,'10174_LAYOUT_165',10162,0,31),(821,10153,'165',4,'10174_LAYOUT_165',10169,0,1),(287,10153,'166',1,'10153',10163,0,4),(288,10153,'166',1,'10153',10164,0,4),(96,10153,'166',2,'10188',10164,0,1),(226,10153,'167',1,'10153',10163,0,4),(227,10153,'167',1,'10153',10164,0,4),(120,10153,'167',2,'10188',10163,0,2),(64,10153,'167',2,'10188',10164,0,1),(273,10153,'169',1,'10153',10163,0,2),(274,10153,'169',1,'10153',10164,0,2),(88,10153,'169',2,'10188',10164,0,1),(161,10153,'173',1,'10153',10161,0,2),(162,10153,'173',1,'10153',10163,0,2),(163,10153,'173',1,'10153',10164,0,2),(113,10153,'173',2,'10188',10163,0,4),(28,10153,'173',2,'10188',10164,0,1),(153,10153,'175',1,'10153',10161,0,2),(154,10153,'175',1,'10153',10163,0,2),(155,10153,'175',1,'10153',10164,0,2),(23,10153,'175',2,'10188',10164,0,1),(209,10153,'176',1,'10153',10160,0,2),(57,10153,'176',2,'10188',10164,0,1),(193,10153,'177',1,'10153',10163,0,4),(194,10153,'177',1,'10153',10164,0,4),(45,10153,'177',2,'10188',10164,0,1),(179,10153,'178',1,'10153',10163,0,2),(180,10153,'178',1,'10153',10164,0,2),(115,10153,'178',2,'10188',10163,0,4),(39,10153,'178',2,'10188',10164,0,1),(160,10153,'179',1,'10153',10160,0,2),(112,10153,'179',2,'10188',10163,0,4),(27,10153,'179',2,'10188',10164,0,1),(140,10153,'180',1,'10153',10161,0,2),(141,10153,'180',1,'10153',10163,0,2),(142,10153,'180',1,'10153',10164,0,2),(14,10153,'180',2,'10188',10164,0,1),(374,10153,'180',4,'10347_LAYOUT_180',10162,0,15),(375,10153,'180',4,'10347_LAYOUT_180',10169,0,1),(168,10153,'181',1,'10153',10161,0,2),(169,10153,'181',1,'10153',10163,0,2),(170,10153,'181',1,'10153',10164,0,2),(32,10153,'181',2,'10188',10164,0,1),(166,10153,'19',1,'10153',10163,0,2),(167,10153,'19',1,'10153',10164,0,2),(30,10153,'19',2,'10188',10164,0,1),(365,10153,'19',4,'10347_LAYOUT_19',10162,0,15),(366,10153,'19',4,'10347_LAYOUT_19',10169,0,1),(1101,10153,'1_WAR_marketplaceportlet',4,'10174_LAYOUT_1_WAR_marketplaceportlet',10162,0,31),(1102,10153,'1_WAR_marketplaceportlet',4,'10174_LAYOUT_1_WAR_marketplaceportlet',10169,0,1),(1,10153,'2',1,'10153',10164,0,2),(710,10153,'2',4,'10174_LAYOUT_2',10162,0,15),(238,10153,'20',1,'10153',10161,0,4),(239,10153,'20',1,'10153',10163,0,4),(240,10153,'20',1,'10153',10164,0,4),(121,10153,'20',2,'10188',10163,0,2),(69,10153,'20',2,'10188',10164,0,1),(829,10153,'20',4,'10174_LAYOUT_20',10162,0,31),(830,10153,'20',4,'10174_LAYOUT_20',10163,0,1),(412,10153,'20',4,'10381_LAYOUT_20',10162,0,31),(413,10153,'20',4,'10381_LAYOUT_20',10169,0,1),(969,10153,'20',4,'11050_LAYOUT_20',10162,0,31),(970,10153,'20',4,'11050_LAYOUT_20',10169,0,1),(243,10153,'23',1,'10153',10163,0,2),(244,10153,'23',1,'10153',10164,0,2),(71,10153,'23',2,'10188',10164,0,1),(804,10153,'23',4,'10808_LAYOUT_23',10162,0,15),(805,10153,'23',4,'10808_LAYOUT_23',10163,0,1),(1031,10153,'23',4,'11119_LAYOUT_23',10162,0,15),(1032,10153,'23',4,'11119_LAYOUT_23',10163,0,1),(125,10153,'25',2,'10188',10163,0,2),(95,10153,'25',2,'10188',10164,0,1),(150,10153,'26',1,'10153',10163,0,2),(151,10153,'26',1,'10153',10164,0,2),(21,10153,'26',2,'10188',10164,0,1),(143,10153,'27',1,'10153',10163,0,2),(144,10153,'27',1,'10153',10164,0,2),(15,10153,'27',2,'10188',10164,0,1),(256,10153,'28',1,'10153',10163,0,4),(257,10153,'28',1,'10153',10164,0,4),(123,10153,'28',2,'10188',10163,0,2),(78,10153,'28',2,'10188',10164,0,1),(176,10153,'29',1,'10153',10163,0,2),(177,10153,'29',1,'10153',10164,0,2),(37,10153,'29',2,'10188',10164,0,1),(806,10153,'29',4,'10808_LAYOUT_29',10162,0,15),(807,10153,'29',4,'10808_LAYOUT_29',10163,0,1),(1033,10153,'29',4,'11119_LAYOUT_29',10162,0,15),(1034,10153,'29',4,'11119_LAYOUT_29',10163,0,1),(235,10153,'3',1,'10153',10161,0,2),(236,10153,'3',1,'10153',10163,0,2),(237,10153,'3',1,'10153',10164,0,2),(68,10153,'3',2,'10188',10164,0,1),(341,10153,'3',4,'10324_LAYOUT_3',10161,0,1),(339,10153,'3',4,'10324_LAYOUT_3',10162,0,15),(340,10153,'3',4,'10324_LAYOUT_3',10169,0,1),(370,10153,'3',4,'10347_LAYOUT_3',10162,0,15),(371,10153,'3',4,'10347_LAYOUT_3',10169,0,1),(403,10153,'3',4,'10373_LAYOUT_3',10162,0,15),(404,10153,'3',4,'10373_LAYOUT_3',10169,0,1),(625,10153,'3',4,'10713_LAYOUT_3',10161,0,1),(623,10153,'3',4,'10713_LAYOUT_3',10162,0,15),(624,10153,'3',4,'10713_LAYOUT_3',10163,0,1),(853,10153,'3',4,'10813_LAYOUT_3',10161,0,1),(851,10153,'3',4,'10813_LAYOUT_3',10162,0,15),(852,10153,'3',4,'10813_LAYOUT_3',10163,0,1),(1056,10153,'3',4,'11124_LAYOUT_3',10161,0,1),(1054,10153,'3',4,'11124_LAYOUT_3',10162,0,15),(1055,10153,'3',4,'11124_LAYOUT_3',10163,0,1),(203,10153,'30',1,'10153',10163,0,2),(204,10153,'30',1,'10153',10164,0,2),(49,10153,'30',2,'10188',10164,0,1),(284,10153,'31',1,'10153',10161,0,2),(285,10153,'31',1,'10153',10163,0,2),(286,10153,'31',1,'10153',10164,0,2),(94,10153,'31',2,'10188',10164,0,1),(289,10153,'33',1,'10153',10161,0,2),(290,10153,'33',1,'10153',10163,0,2),(291,10153,'33',1,'10153',10164,0,2),(97,10153,'33',2,'10188',10164,0,1),(322,10153,'33',4,'10314_LAYOUT_33',10161,0,1),(320,10153,'33',4,'10314_LAYOUT_33',10162,0,15),(321,10153,'33',4,'10314_LAYOUT_33',10169,0,1),(618,10153,'33',4,'10713_LAYOUT_33',10161,0,1),(616,10153,'33',4,'10713_LAYOUT_33',10162,0,15),(617,10153,'33',4,'10713_LAYOUT_33',10163,0,1),(846,10153,'33',4,'10813_LAYOUT_33',10161,0,1),(844,10153,'33',4,'10813_LAYOUT_33',10162,0,15),(845,10153,'33',4,'10813_LAYOUT_33',10163,0,1),(1049,10153,'33',4,'11124_LAYOUT_33',10161,0,1),(1047,10153,'33',4,'11124_LAYOUT_33',10162,0,15),(1048,10153,'33',4,'11124_LAYOUT_33',10163,0,1),(271,10153,'34',1,'10153',10163,0,2),(272,10153,'34',1,'10153',10164,0,2),(86,10153,'34',2,'10188',10164,0,1),(148,10153,'36',1,'10153',10163,0,2),(149,10153,'36',1,'10153',10164,0,2),(20,10153,'36',2,'10188',10164,0,1),(350,10153,'36',4,'10333_LAYOUT_36',10161,0,1),(348,10153,'36',4,'10333_LAYOUT_36',10162,0,15),(349,10153,'36',4,'10333_LAYOUT_36',10169,0,1),(387,10153,'36',4,'10359_LAYOUT_36',10162,0,15),(388,10153,'36',4,'10359_LAYOUT_36',10169,0,1),(191,10153,'39',1,'10153',10163,0,2),(192,10153,'39',1,'10153',10164,0,2),(44,10153,'39',2,'10188',10164,0,1),(430,10153,'39',4,'10393_LAYOUT_39_INSTANCE_1uQghfcOTkhg',10162,0,15),(431,10153,'39',4,'10393_LAYOUT_39_INSTANCE_1uQghfcOTkhg',10169,0,1),(428,10153,'39',4,'10393_LAYOUT_39_INSTANCE_XkNpa8BRKqSk',10162,0,15),(429,10153,'39',4,'10393_LAYOUT_39_INSTANCE_XkNpa8BRKqSk',10169,0,1),(977,10153,'39',4,'11052_LAYOUT_39_INSTANCE_1uQghfcOTkhg',10162,0,15),(978,10153,'39',4,'11052_LAYOUT_39_INSTANCE_1uQghfcOTkhg',10169,0,1),(975,10153,'39',4,'11052_LAYOUT_39_INSTANCE_XkNpa8BRKqSk',10162,0,15),(976,10153,'39',4,'11052_LAYOUT_39_INSTANCE_XkNpa8BRKqSk',10169,0,1),(260,10153,'47',1,'10153',10161,0,2),(261,10153,'47',1,'10153',10163,0,2),(262,10153,'47',1,'10153',10164,0,2),(81,10153,'47',2,'10188',10164,0,1),(1021,10153,'47',3,'0',11118,0,1),(205,10153,'48',1,'10153',10163,0,2),(206,10153,'48',1,'10153',10164,0,2),(51,10153,'48',2,'10188',10164,0,1),(860,10153,'49',4,'10174_LAYOUT_49',10162,0,15),(861,10153,'49',4,'10174_LAYOUT_49',10169,0,1),(612,10153,'49',4,'10613_LAYOUT_49',10161,0,1),(610,10153,'49',4,'10613_LAYOUT_49',10162,0,15),(611,10153,'49',4,'10613_LAYOUT_49',10169,0,1),(818,10153,'49',4,'10808_LAYOUT_49',10162,0,15),(819,10153,'49',4,'10808_LAYOUT_49',10163,0,1),(922,10153,'49',4,'10813_LAYOUT_49',10161,0,1),(920,10153,'49',4,'10813_LAYOUT_49',10162,0,15),(921,10153,'49',4,'10813_LAYOUT_49',10163,0,1),(1251,10153,'49',4,'11050_LAYOUT_49',10161,0,1),(1249,10153,'49',4,'11050_LAYOUT_49',10162,0,15),(1250,10153,'49',4,'11050_LAYOUT_49',10169,0,1),(1042,10153,'49',4,'11119_LAYOUT_49',10162,0,15),(1043,10153,'49',4,'11119_LAYOUT_49',10163,0,1),(280,10153,'50',1,'10153',10161,0,2),(281,10153,'50',1,'10153',10163,0,2),(282,10153,'50',1,'10153',10164,0,2),(92,10153,'50',2,'10188',10164,0,1),(638,10153,'50',4,'10713_LAYOUT_50',10161,0,1),(636,10153,'50',4,'10713_LAYOUT_50',10162,0,15),(637,10153,'50',4,'10713_LAYOUT_50',10163,0,1),(269,10153,'54',1,'10153',10163,0,2),(270,10153,'54',1,'10153',10164,0,2),(85,10153,'54',2,'10188',10164,0,1),(231,10153,'56',1,'10153',10161,0,2),(232,10153,'56',1,'10153',10163,0,2),(233,10153,'56',1,'10153',10164,0,2),(66,10153,'56',2,'10188',10164,0,1),(919,10153,'56',4,'10813_LAYOUT_56_INSTANCE_UxVAwTmDrg0f',10161,0,1),(917,10153,'56',4,'10813_LAYOUT_56_INSTANCE_UxVAwTmDrg0f',10162,0,15),(918,10153,'56',4,'10813_LAYOUT_56_INSTANCE_UxVAwTmDrg0f',10163,0,1),(1238,10153,'56',4,'11049_LAYOUT_56_INSTANCE_KcuNLC8ouyhU',10161,0,1),(1236,10153,'56',4,'11049_LAYOUT_56_INSTANCE_KcuNLC8ouyhU',10162,0,15),(1237,10153,'56',4,'11049_LAYOUT_56_INSTANCE_KcuNLC8ouyhU',10169,0,1),(183,10153,'58',1,'10153',10161,0,2),(184,10153,'58',1,'10153',10163,0,2),(185,10153,'58',1,'10153',10164,0,2),(41,10153,'58',2,'10188',10164,0,1),(509,10153,'58',4,'10417_LAYOUT_58',10162,0,15),(510,10153,'58',4,'10417_LAYOUT_58',10163,0,1),(522,10153,'58',4,'10613_LAYOUT_58',10161,0,1),(520,10153,'58',4,'10613_LAYOUT_58',10162,0,15),(521,10153,'58',4,'10613_LAYOUT_58',10169,0,1),(608,10153,'58',4,'10708_LAYOUT_58',10162,0,15),(609,10153,'58',4,'10708_LAYOUT_58',10163,0,1),(708,10153,'58',4,'10808_LAYOUT_58',10162,0,15),(709,10153,'58',4,'10808_LAYOUT_58',10163,0,1),(817,10153,'58',4,'10813_LAYOUT_58',10161,0,1),(815,10153,'58',4,'10813_LAYOUT_58',10162,0,15),(816,10153,'58',4,'10813_LAYOUT_58',10163,0,1),(908,10153,'58',4,'11008_LAYOUT_58',10162,0,15),(909,10153,'58',4,'11008_LAYOUT_58',10163,0,1),(1232,10153,'58',4,'11049_LAYOUT_58',10161,0,1),(1230,10153,'58',4,'11049_LAYOUT_58',10162,0,15),(1231,10153,'58',4,'11049_LAYOUT_58',10169,0,1),(299,10153,'59',1,'10153',10163,0,2),(300,10153,'59',1,'10153',10164,0,2),(103,10153,'59',2,'10188',10164,0,1),(372,10153,'59',4,'10347_LAYOUT_59_INSTANCE_CP0OEqogkpxm',10162,0,15),(373,10153,'59',4,'10347_LAYOUT_59_INSTANCE_CP0OEqogkpxm',10169,0,1),(275,10153,'61',1,'10153',10163,0,2),(276,10153,'61',1,'10153',10164,0,2),(89,10153,'61',2,'10188',10164,0,1),(207,10153,'62',1,'10153',10163,0,2),(208,10153,'62',1,'10153',10164,0,2),(55,10153,'62',2,'10188',10164,0,1),(156,10153,'64',1,'10153',10161,0,2),(157,10153,'64',1,'10153',10163,0,2),(158,10153,'64',1,'10153',10164,0,2),(24,10153,'64',2,'10188',10164,0,1),(138,10153,'66',1,'10153',10163,0,2),(139,10153,'66',1,'10153',10164,0,2),(13,10153,'66',2,'10188',10164,0,1),(295,10153,'67',1,'10153',10163,0,2),(296,10153,'67',1,'10153',10164,0,2),(101,10153,'67',2,'10188',10164,0,1),(247,10153,'70',1,'10153',10163,0,2),(248,10153,'70',1,'10153',10164,0,2),(74,10153,'70',2,'10188',10164,0,1),(186,10153,'71',1,'10153',10161,0,2),(187,10153,'71',1,'10153',10163,0,2),(188,10153,'71',1,'10153',10164,0,2),(42,10153,'71',2,'10188',10164,0,1),(277,10153,'73',1,'10153',10161,0,2),(278,10153,'73',1,'10153',10163,0,2),(279,10153,'73',1,'10153',10164,0,2),(90,10153,'73',2,'10188',10164,0,1),(223,10153,'77',1,'10153',10161,0,2),(224,10153,'77',1,'10153',10163,0,2),(225,10153,'77',1,'10153',10164,0,2),(63,10153,'77',2,'10188',10164,0,1),(181,10153,'8',1,'10153',10163,0,4),(182,10153,'8',1,'10153',10164,0,4),(116,10153,'8',2,'10188',10163,0,2),(40,10153,'8',2,'10188',10164,0,1),(379,10153,'8',4,'10353_LAYOUT_8',10162,0,31),(380,10153,'8',4,'10353_LAYOUT_8',10169,0,1),(420,10153,'8',4,'10387_LAYOUT_8',10162,0,31),(421,10153,'8',4,'10387_LAYOUT_8',10169,0,1),(808,10153,'8',4,'10808_LAYOUT_8',10162,0,31),(809,10153,'8',4,'10808_LAYOUT_8',10163,0,1),(971,10153,'8',4,'11051_LAYOUT_8',10162,0,31),(972,10153,'8',4,'11051_LAYOUT_8',10169,0,1),(1035,10153,'8',4,'11119_LAYOUT_8',10162,0,31),(1036,10153,'8',4,'11119_LAYOUT_8',10163,0,1),(266,10153,'82',1,'10153',10161,0,2),(267,10153,'82',1,'10153',10163,0,2),(268,10153,'82',1,'10153',10164,0,2),(83,10153,'82',2,'10188',10164,0,1),(405,10153,'82',4,'10373_LAYOUT_82',10162,0,15),(406,10153,'82',4,'10373_LAYOUT_82',10169,0,1),(622,10153,'82',4,'10713_LAYOUT_82',10161,0,1),(620,10153,'82',4,'10713_LAYOUT_82',10162,0,15),(621,10153,'82',4,'10713_LAYOUT_82',10163,0,1),(811,10153,'82',4,'10808_LAYOUT_82',10162,0,15),(812,10153,'82',4,'10808_LAYOUT_82',10163,0,1),(850,10153,'82',4,'10813_LAYOUT_82',10161,0,1),(848,10153,'82',4,'10813_LAYOUT_82',10162,0,15),(849,10153,'82',4,'10813_LAYOUT_82',10163,0,1),(1038,10153,'82',4,'11119_LAYOUT_82',10162,0,15),(1039,10153,'82',4,'11119_LAYOUT_82',10163,0,1),(1053,10153,'82',4,'11124_LAYOUT_82',10161,0,1),(1051,10153,'82',4,'11124_LAYOUT_82',10162,0,15),(1052,10153,'82',4,'11124_LAYOUT_82',10163,0,1),(245,10153,'83',1,'10153',10163,0,4),(246,10153,'83',1,'10153',10164,0,4),(72,10153,'83',2,'10188',10164,0,1),(212,10153,'84',1,'10153',10163,0,4),(213,10153,'84',1,'10153',10164,0,4),(59,10153,'84',2,'10188',10164,0,1),(195,10153,'85',1,'10153',10161,0,2),(196,10153,'85',1,'10153',10163,0,2),(197,10153,'85',1,'10153',10164,0,2),(46,10153,'85',2,'10188',10164,0,1),(1017,10153,'86',4,'10174_LAYOUT_86',10162,0,15),(1018,10153,'86',4,'10174_LAYOUT_86',10169,0,1),(1241,10153,'86',4,'11049_LAYOUT_86',10161,0,1),(1239,10153,'86',4,'11049_LAYOUT_86',10162,0,15),(1240,10153,'86',4,'11049_LAYOUT_86',10169,0,1),(631,10153,'87',4,'10713_LAYOUT_87',10161,0,1),(629,10153,'87',4,'10713_LAYOUT_87',10162,0,15),(630,10153,'87',4,'10713_LAYOUT_87',10163,0,1),(923,10153,'87',4,'10808_LAYOUT_87',10162,0,15),(924,10153,'87',4,'10808_LAYOUT_87',10163,0,1),(916,10153,'87',4,'10813_LAYOUT_87',10161,0,1),(914,10153,'87',4,'10813_LAYOUT_87',10162,0,15),(915,10153,'87',4,'10813_LAYOUT_87',10163,0,1),(1132,10153,'87',4,'11049_LAYOUT_87',10161,0,1),(1130,10153,'87',4,'11049_LAYOUT_87',10162,0,15),(1131,10153,'87',4,'11049_LAYOUT_87',10169,0,1),(858,10153,'88',4,'10174_LAYOUT_88',10162,0,15),(859,10153,'88',4,'10174_LAYOUT_88',10163,0,1),(1129,10153,'88',4,'10613_LAYOUT_88',10161,0,1),(1127,10153,'88',4,'10613_LAYOUT_88',10162,0,15),(1128,10153,'88',4,'10613_LAYOUT_88',10169,0,1),(1144,10153,'88',4,'11049_LAYOUT_88',10161,0,1),(1142,10153,'88',4,'11049_LAYOUT_88',10162,0,15),(1143,10153,'88',4,'11049_LAYOUT_88',10169,0,1),(255,10153,'9',1,'10153',10160,0,2),(77,10153,'9',2,'10188',10164,0,1),(11,10153,'90',1,'10153',10164,0,16384),(189,10153,'97',1,'10153',10163,0,2),(190,10153,'97',1,'10153',10164,0,2),(43,10153,'97',2,'10188',10164,0,1),(136,10153,'98',1,'10153',10163,0,4),(137,10153,'98',1,'10153',10164,0,4),(110,10153,'98',2,'10188',10163,0,2),(12,10153,'98',2,'10188',10164,0,1),(122,10153,'99',2,'10188',10163,0,2),(73,10153,'99',2,'10188',10164,0,1),(126,10153,'com.liferay.portal.model.Group',2,'10188',10163,0,4096),(933,10153,'com.liferay.portal.model.Group',4,'11037',10162,0,2097151),(1008,10153,'com.liferay.portal.model.Group',4,'11089',10162,0,2097151),(1010,10153,'com.liferay.portal.model.Group',4,'11095',10162,0,2097151),(1012,10153,'com.liferay.portal.model.Group',4,'11101',10162,0,2097151),(107,10153,'com.liferay.portal.model.Layout',2,'10188',10164,0,1),(7,10153,'com.liferay.portal.model.Layout',4,'10174',10161,0,1),(5,10153,'com.liferay.portal.model.Layout',4,'10174',10162,10157,1023),(6,10153,'com.liferay.portal.model.Layout',4,'10174',10169,0,19),(317,10153,'com.liferay.portal.model.Layout',4,'10314',10162,10157,1023),(318,10153,'com.liferay.portal.model.Layout',4,'10314',10169,0,19),(331,10153,'com.liferay.portal.model.Layout',4,'10324',10162,10157,1023),(332,10153,'com.liferay.portal.model.Layout',4,'10324',10169,0,19),(346,10153,'com.liferay.portal.model.Layout',4,'10333',10162,10157,1023),(347,10153,'com.liferay.portal.model.Layout',4,'10333',10169,0,19),(364,10153,'com.liferay.portal.model.Layout',4,'10347',10161,0,1),(362,10153,'com.liferay.portal.model.Layout',4,'10347',10162,10157,1023),(363,10153,'com.liferay.portal.model.Layout',4,'10347',10169,0,19),(378,10153,'com.liferay.portal.model.Layout',4,'10353',10161,0,1),(376,10153,'com.liferay.portal.model.Layout',4,'10353',10162,10157,1023),(377,10153,'com.liferay.portal.model.Layout',4,'10353',10169,0,19),(386,10153,'com.liferay.portal.model.Layout',4,'10359',10161,0,1),(384,10153,'com.liferay.portal.model.Layout',4,'10359',10162,10157,1023),(385,10153,'com.liferay.portal.model.Layout',4,'10359',10169,0,19),(400,10153,'com.liferay.portal.model.Layout',4,'10373',10161,0,1),(398,10153,'com.liferay.portal.model.Layout',4,'10373',10162,10157,1023),(399,10153,'com.liferay.portal.model.Layout',4,'10373',10169,0,19),(411,10153,'com.liferay.portal.model.Layout',4,'10381',10161,0,1),(409,10153,'com.liferay.portal.model.Layout',4,'10381',10162,10157,1023),(410,10153,'com.liferay.portal.model.Layout',4,'10381',10169,0,19),(419,10153,'com.liferay.portal.model.Layout',4,'10387',10161,0,1),(417,10153,'com.liferay.portal.model.Layout',4,'10387',10162,10157,1023),(418,10153,'com.liferay.portal.model.Layout',4,'10387',10169,0,19),(427,10153,'com.liferay.portal.model.Layout',4,'10393',10161,0,1),(425,10153,'com.liferay.portal.model.Layout',4,'10393',10162,10157,1023),(426,10153,'com.liferay.portal.model.Layout',4,'10393',10169,0,19),(440,10153,'com.liferay.portal.model.Layout',4,'10417',10162,10195,1023),(443,10153,'com.liferay.portal.model.Layout',4,'10423',10161,0,1),(441,10153,'com.liferay.portal.model.Layout',4,'10423',10162,10195,1023),(442,10153,'com.liferay.portal.model.Layout',4,'10423',10163,0,19),(500,10153,'com.liferay.portal.model.Layout',4,'10613',10161,0,1),(498,10153,'com.liferay.portal.model.Layout',4,'10613',10162,10157,1023),(499,10153,'com.liferay.portal.model.Layout',4,'10613',10169,0,19),(602,10153,'com.liferay.portal.model.Layout',4,'10708',10162,10701,1023),(605,10153,'com.liferay.portal.model.Layout',4,'10713',10161,0,1),(603,10153,'com.liferay.portal.model.Layout',4,'10713',10162,10701,1023),(604,10153,'com.liferay.portal.model.Layout',4,'10713',10163,0,19),(702,10153,'com.liferay.portal.model.Layout',4,'10808',10162,10801,1023),(705,10153,'com.liferay.portal.model.Layout',4,'10813',10161,0,1),(703,10153,'com.liferay.portal.model.Layout',4,'10813',10162,10801,1023),(704,10153,'com.liferay.portal.model.Layout',4,'10813',10163,0,19),(902,10153,'com.liferay.portal.model.Layout',4,'11008',10162,11001,1023),(905,10153,'com.liferay.portal.model.Layout',4,'11013',10161,0,1),(903,10153,'com.liferay.portal.model.Layout',4,'11013',10162,11001,1023),(904,10153,'com.liferay.portal.model.Layout',4,'11013',10163,0,19),(940,10153,'com.liferay.portal.model.Layout',4,'11049',10161,0,1),(938,10153,'com.liferay.portal.model.Layout',4,'11049',10162,10157,1023),(939,10153,'com.liferay.portal.model.Layout',4,'11049',10169,0,19),(943,10153,'com.liferay.portal.model.Layout',4,'11050',10161,0,1),(941,10153,'com.liferay.portal.model.Layout',4,'11050',10162,10157,1023),(942,10153,'com.liferay.portal.model.Layout',4,'11050',10169,0,19),(946,10153,'com.liferay.portal.model.Layout',4,'11051',10161,0,1),(944,10153,'com.liferay.portal.model.Layout',4,'11051',10162,10157,1023),(945,10153,'com.liferay.portal.model.Layout',4,'11051',10169,0,19),(949,10153,'com.liferay.portal.model.Layout',4,'11052',10161,0,1),(947,10153,'com.liferay.portal.model.Layout',4,'11052',10162,10157,1023),(948,10153,'com.liferay.portal.model.Layout',4,'11052',10169,0,19),(1024,10153,'com.liferay.portal.model.Layout',4,'11119',10162,11106,1023),(1027,10153,'com.liferay.portal.model.Layout',4,'11124',10161,0,1),(1025,10153,'com.liferay.portal.model.Layout',4,'11124',10162,11106,1023),(1026,10153,'com.liferay.portal.model.Layout',4,'11124',10163,0,19),(316,10153,'com.liferay.portal.model.LayoutPrototype',4,'10310',10162,10157,15),(330,10153,'com.liferay.portal.model.LayoutPrototype',4,'10320',10162,10157,15),(345,10153,'com.liferay.portal.model.LayoutPrototype',4,'10329',10162,10157,15),(358,10153,'com.liferay.portal.model.LayoutSetPrototype',4,'10338',10162,10157,15),(394,10153,'com.liferay.portal.model.LayoutSetPrototype',4,'10364',10162,10157,15),(1009,10153,'com.liferay.portal.model.Organization',4,'11088',10162,10801,1023),(1011,10153,'com.liferay.portal.model.Organization',4,'11094',10162,10801,1023),(1013,10153,'com.liferay.portal.model.Organization',4,'11100',10162,10801,1023),(1019,10153,'com.liferay.portal.model.Role',4,'10164',10162,0,16),(1020,10153,'com.liferay.portal.model.Role',4,'11118',10162,10801,127),(135,10153,'com.liferay.portal.model.User',4,'10195',10162,10195,31),(601,10153,'com.liferay.portal.model.User',4,'10701',10162,10701,31),(701,10153,'com.liferay.portal.model.User',4,'10801',10162,10801,31),(901,10153,'com.liferay.portal.model.User',4,'11001',10162,11001,31),(1014,10153,'com.liferay.portal.model.User',4,'11106',10162,10801,31),(127,10153,'com.liferay.portlet.asset',2,'10188',10163,0,30),(319,10153,'com.liferay.portlet.asset.model.AssetVocabulary',4,'10317',10162,10157,15),(934,10153,'com.liferay.portlet.asset.model.AssetVocabulary',4,'11044',10162,10157,15),(937,10153,'com.liferay.portlet.asset.model.AssetVocabulary',4,'11045',10161,0,0),(935,10153,'com.liferay.portlet.asset.model.AssetVocabulary',4,'11045',10162,10157,15),(936,10153,'com.liferay.portlet.asset.model.AssetVocabulary',4,'11045',10169,0,0),(128,10153,'com.liferay.portlet.blogs',2,'10188',10163,0,14),(108,10153,'com.liferay.portlet.blogs',2,'10188',10164,0,14),(1022,10153,'com.liferay.portlet.blogs',3,'0',11118,0,10),(323,10153,'com.liferay.portlet.blogs',4,'10311',10162,0,14),(619,10153,'com.liferay.portlet.blogs',4,'10704',10162,0,14),(847,10153,'com.liferay.portlet.blogs',4,'10804',10162,0,14),(1050,10153,'com.liferay.portlet.blogs',4,'11109',10162,0,14),(1023,10153,'com.liferay.portlet.blogs.model.BlogsEntry',3,'0',11118,0,33),(129,10153,'com.liferay.portlet.bookmarks',2,'10188',10163,0,15),(130,10153,'com.liferay.portlet.calendar',2,'10188',10163,0,14),(109,10153,'com.liferay.portlet.calendar',2,'10188',10164,0,14),(381,10153,'com.liferay.portlet.calendar',4,'10339',10162,0,14),(422,10153,'com.liferay.portlet.calendar',4,'10365',10162,0,14),(810,10153,'com.liferay.portlet.calendar',4,'10804',10162,0,14),(950,10153,'com.liferay.portlet.calendar',4,'11037',10162,0,14),(1037,10153,'com.liferay.portlet.calendar',4,'11109',10162,0,14),(131,10153,'com.liferay.portlet.documentlibrary',2,'10188',10163,0,511),(416,10153,'com.liferay.portlet.documentlibrary',4,'10365',10161,0,1),(414,10153,'com.liferay.portlet.documentlibrary',4,'10365',10162,0,511),(415,10153,'com.liferay.portlet.documentlibrary',4,'10365',10169,0,1),(833,10153,'com.liferay.portlet.documentlibrary',4,'10804',10161,0,1),(831,10153,'com.liferay.portlet.documentlibrary',4,'10804',10162,0,511),(832,10153,'com.liferay.portlet.documentlibrary',4,'10804',10163,0,1),(952,10153,'com.liferay.portlet.documentlibrary',4,'11037',10161,0,1),(951,10153,'com.liferay.portlet.documentlibrary',4,'11037',10162,0,511),(953,10153,'com.liferay.portlet.documentlibrary',4,'11037',10169,0,1),(446,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10428',10161,0,3),(444,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10428',10162,10157,255),(445,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10428',10169,0,3),(449,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10437',10161,0,3),(447,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10437',10162,10157,255),(448,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10437',10169,0,3),(452,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10446',10161,0,3),(450,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10446',10162,10157,255),(451,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10446',10169,0,3),(455,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10454',10161,0,3),(453,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10454',10162,10157,255),(454,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10454',10169,0,3),(458,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10462',10161,0,3),(456,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10462',10162,10157,255),(457,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10462',10169,0,3),(461,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10470',10161,0,3),(459,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10470',10162,10157,255),(460,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10470',10169,0,3),(464,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10495',10161,0,3),(462,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10495',10162,10157,255),(463,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10495',10169,0,3),(467,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10509',10161,0,3),(465,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10509',10162,10157,255),(466,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10509',10169,0,3),(470,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10521',10161,0,3),(468,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10521',10162,10157,255),(469,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10521',10169,0,3),(473,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10533',10161,0,3),(471,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10533',10162,10157,255),(472,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10533',10169,0,3),(476,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10545',10161,0,3),(474,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10545',10162,10157,255),(475,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10545',10169,0,3),(479,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10557',10161,0,3),(477,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10557',10162,10157,255),(478,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10557',10169,0,3),(482,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10569',10161,0,3),(480,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10569',10162,10157,255),(481,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntry',4,'10569',10169,0,3),(308,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10301',10162,10157,15),(310,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10303',10162,10157,15),(312,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10305',10162,10157,15),(314,10153,'com.liferay.portlet.documentlibrary.model.DLFileEntryType',4,'10307',10162,10157,15),(304,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10298',10162,10157,15),(305,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10299',10162,10157,15),(306,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10300',10162,10157,15),(307,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10302',10162,10157,15),(309,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10304',10162,10157,15),(311,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10306',10162,10157,15),(313,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10308',10162,10157,15),(315,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10309',10162,10157,15),(432,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10400',10162,10157,15),(433,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10401',10162,10157,15),(434,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10402',10162,10157,15),(435,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10403',10162,10157,15),(436,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10404',10162,10157,15),(437,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'10405',10162,10157,15),(954,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'11053',10162,10157,15),(955,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'11054',10162,10157,15),(956,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'11055',10162,10157,15),(957,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'11056',10162,10157,15),(958,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'11057',10162,10157,15),(959,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'11058',10162,10157,15),(960,10153,'com.liferay.portlet.dynamicdatamapping.model.DDMStructure',4,'11059',10162,10157,15),(438,10153,'com.liferay.portlet.expando.model.ExpandoColumn',4,'10410',10162,0,15),(439,10153,'com.liferay.portlet.expando.model.ExpandoColumn',4,'10416',10162,0,15),(828,10153,'com.liferay.portlet.journal',4,'10804',10162,0,126),(1245,10153,'com.liferay.portlet.journal',4,'11037',10162,0,126),(485,10153,'com.liferay.portlet.journal.model.JournalArticle',4,'10586',10161,0,3),(483,10153,'com.liferay.portlet.journal.model.JournalArticle',4,'10586',10162,10157,255),(484,10153,'com.liferay.portlet.journal.model.JournalArticle',4,'10586',10169,0,3),(494,10153,'com.liferay.portlet.journal.model.JournalArticle',4,'10598',10161,0,3),(492,10153,'com.liferay.portlet.journal.model.JournalArticle',4,'10598',10162,10157,255),(493,10153,'com.liferay.portlet.journal.model.JournalArticle',4,'10598',10169,0,3),(497,10153,'com.liferay.portlet.journal.model.JournalArticle',4,'10606',10161,0,3),(495,10153,'com.liferay.portlet.journal.model.JournalArticle',4,'10606',10162,10157,255),(496,10153,'com.liferay.portlet.journal.model.JournalArticle',4,'10606',10169,0,3),(1248,10153,'com.liferay.portlet.journal.model.JournalArticle',4,'11321',10161,0,3),(1246,10153,'com.liferay.portlet.journal.model.JournalArticle',4,'11321',10162,10801,255),(1247,10153,'com.liferay.portlet.journal.model.JournalArticle',4,'11321',10169,0,3),(488,10153,'com.liferay.portlet.journal.model.JournalStructure',4,'10594',10161,0,1),(486,10153,'com.liferay.portlet.journal.model.JournalStructure',4,'10594',10162,10157,15),(487,10153,'com.liferay.portlet.journal.model.JournalStructure',4,'10594',10169,0,1),(491,10153,'com.liferay.portlet.journal.model.JournalTemplate',4,'10595',10161,0,1),(489,10153,'com.liferay.portlet.journal.model.JournalTemplate',4,'10595',10162,10157,15),(490,10153,'com.liferay.portlet.journal.model.JournalTemplate',4,'10595',10169,0,1),(132,10153,'com.liferay.portlet.messageboards',2,'10188',10163,0,2047),(369,10153,'com.liferay.portlet.messageboards',4,'10339',10161,0,1),(367,10153,'com.liferay.portlet.messageboards',4,'10339',10162,0,2047),(368,10153,'com.liferay.portlet.messageboards',4,'10339',10169,0,781),(133,10153,'com.liferay.portlet.polls',2,'10188',10163,0,6),(134,10153,'com.liferay.portlet.wiki',2,'10188',10163,0,6),(351,10153,'com.liferay.portlet.wiki',4,'10330',10162,0,6),(389,10153,'com.liferay.portlet.wiki',4,'10339',10162,0,6),(910,10153,'liferay_WAR_liferayportlet',1,'10153',10160,0,2),(911,10153,'liferay_WAR_liferayportlet',1,'10153',10161,0,2),(912,10153,'liferay_WAR_liferayportlet',1,'10153',10163,0,2),(913,10153,'liferay_WAR_liferayportlet',1,'10153',10164,0,2);
/*!40000 ALTER TABLE `resourcepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resourcetypepermission`
--

DROP TABLE IF EXISTS `resourcetypepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `resourcetypepermission` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resourcetypepermission`
--

LOCK TABLES `resourcetypepermission` WRITE;
/*!40000 ALTER TABLE `resourcetypepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `resourcetypepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_`
--

DROP TABLE IF EXISTS `role_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_` (
  `roleId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
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
  KEY `IX_F436EC8E` (`name`),
  KEY `IX_5EB4E2FB` (`subtype`),
  KEY `IX_CBE204` (`type_`,`subtype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_`
--

LOCK TABLES `role_` WRITE;
/*!40000 ALTER TABLE `role_` DISABLE KEYS */;
INSERT INTO `role_` VALUES (10160,10153,10004,10160,'Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Administrators are super users who can do anything.</Description></root>',1,''),(10161,10153,10004,10161,'Guest','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Unauthenticated users always have this role.</Description></root>',1,''),(10162,10153,10004,10162,'Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">This is an implied role with respect to the objects users create.</Description></root>',1,''),(10163,10153,10004,10163,'Power User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Power Users have their own personal site.</Description></root>',1,''),(10164,10153,10004,10164,'User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Authenticated users should be assigned this role.</Description></root>',1,''),(10165,10153,10004,10165,'Organization Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Administrators are super users of their organization but cannot make other users into Organization Administrators.</Description></root>',3,''),(10166,10153,10004,10166,'Organization Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Organization Owners are super users of their organization and can assign organization roles to users.</Description></root>',3,''),(10167,10153,10004,10167,'Organization User','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to an organization have this role within that organization.</Description></root>',3,''),(10168,10153,10004,10168,'Site Administrator','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Administrators are super users of their site but cannot make other users into Site Administrators.</Description></root>',2,''),(10169,10153,10004,10169,'Site Member','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">All users who belong to a site have this role within that site.</Description></root>',2,''),(10170,10153,10004,10170,'Site Owner','','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">Site Owners are super users of their site and can assign site roles to users.</Description></root>',2,''),(11118,10153,10004,11118,'charteruser','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Title language-id=\"en_US\">CharterUser</Title></root>','<?xml version=\'1.0\' encoding=\'UTF-8\'?><root available-locales=\"en_US\" default-locale=\"en_US\"><Description language-id=\"en_US\">This role will have read permission to organization.</Description></root>',3,'');
/*!40000 ALTER TABLE `role_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles_permissions`
--

DROP TABLE IF EXISTS `roles_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles_permissions` (
  `permissionId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`permissionId`,`roleId`),
  KEY `IX_7A3619C6` (`permissionId`),
  KEY `IX_E04E486D` (`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles_permissions`
--

LOCK TABLES `roles_permissions` WRITE;
/*!40000 ALTER TABLE `roles_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scframeworkversi_scproductvers`
--

DROP TABLE IF EXISTS `scframeworkversi_scproductvers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scframeworkversi_scproductvers` (
  `frameworkVersionId` bigint(20) NOT NULL,
  `productVersionId` bigint(20) NOT NULL,
  PRIMARY KEY (`frameworkVersionId`,`productVersionId`),
  KEY `IX_3BB93ECA` (`frameworkVersionId`),
  KEY `IX_E8D33FF9` (`productVersionId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scframeworkversi_scproductvers`
--

LOCK TABLES `scframeworkversi_scproductvers` WRITE;
/*!40000 ALTER TABLE `scframeworkversi_scproductvers` DISABLE KEYS */;
/*!40000 ALTER TABLE `scframeworkversi_scproductvers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scframeworkversion`
--

DROP TABLE IF EXISTS `scframeworkversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scframeworkversion` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scframeworkversion`
--

LOCK TABLES `scframeworkversion` WRITE;
/*!40000 ALTER TABLE `scframeworkversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `scframeworkversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sclicense`
--

DROP TABLE IF EXISTS `sclicense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sclicense` (
  `licenseId` bigint(20) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `url` longtext,
  `openSource` tinyint(4) DEFAULT NULL,
  `active_` tinyint(4) DEFAULT NULL,
  `recommended` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`licenseId`),
  KEY `IX_1C841592` (`active_`),
  KEY `IX_5327BB79` (`active_`,`recommended`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sclicense`
--

LOCK TABLES `sclicense` WRITE;
/*!40000 ALTER TABLE `sclicense` DISABLE KEYS */;
/*!40000 ALTER TABLE `sclicense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sclicenses_scproductentries`
--

DROP TABLE IF EXISTS `sclicenses_scproductentries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sclicenses_scproductentries` (
  `licenseId` bigint(20) NOT NULL,
  `productEntryId` bigint(20) NOT NULL,
  PRIMARY KEY (`licenseId`,`productEntryId`),
  KEY `IX_27006638` (`licenseId`),
  KEY `IX_D7710A66` (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sclicenses_scproductentries`
--

LOCK TABLES `sclicenses_scproductentries` WRITE;
/*!40000 ALTER TABLE `sclicenses_scproductentries` DISABLE KEYS */;
/*!40000 ALTER TABLE `sclicenses_scproductentries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scproductentry`
--

DROP TABLE IF EXISTS `scproductentry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scproductentry` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scproductentry`
--

LOCK TABLES `scproductentry` WRITE;
/*!40000 ALTER TABLE `scproductentry` DISABLE KEYS */;
/*!40000 ALTER TABLE `scproductentry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scproductscreenshot`
--

DROP TABLE IF EXISTS `scproductscreenshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scproductscreenshot` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scproductscreenshot`
--

LOCK TABLES `scproductscreenshot` WRITE;
/*!40000 ALTER TABLE `scproductscreenshot` DISABLE KEYS */;
/*!40000 ALTER TABLE `scproductscreenshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scproductversion`
--

DROP TABLE IF EXISTS `scproductversion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `scproductversion` (
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
  KEY `IX_7020130F` (`directDownloadURL`(767)),
  KEY `IX_8377A211` (`productEntryId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scproductversion`
--

LOCK TABLES `scproductversion` WRITE;
/*!40000 ALTER TABLE `scproductversion` DISABLE KEYS */;
/*!40000 ALTER TABLE `scproductversion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicecomponent`
--

DROP TABLE IF EXISTS `servicecomponent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicecomponent` (
  `serviceComponentId` bigint(20) NOT NULL,
  `buildNamespace` varchar(75) DEFAULT NULL,
  `buildNumber` bigint(20) DEFAULT NULL,
  `buildDate` bigint(20) DEFAULT NULL,
  `data_` longtext,
  PRIMARY KEY (`serviceComponentId`),
  UNIQUE KEY `IX_4F0315B8` (`buildNamespace`,`buildNumber`),
  KEY `IX_7338606F` (`buildNamespace`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicecomponent`
--

LOCK TABLES `servicecomponent` WRITE;
/*!40000 ALTER TABLE `servicecomponent` DISABLE KEYS */;
INSERT INTO `servicecomponent` VALUES (10413,'Marketplace',2,1343264386388,'<?xml version=\"1.0\"?>\n\n<data>\n	<tables-sql><![CDATA[create table Marketplace_App (\n	uuid_ VARCHAR(75) null,\n	appId LONG not null primary key,\n	companyId LONG,\n	userId LONG,\n	userName VARCHAR(75) null,\n	createDate DATE null,\n	modifiedDate DATE null,\n	remoteAppId LONG,\n	version VARCHAR(75) null\n);\n\ncreate table Marketplace_Module (\n	uuid_ VARCHAR(75) null,\n	moduleId LONG not null primary key,\n	appId LONG,\n	contextName VARCHAR(75) null\n);]]></tables-sql>\n	<sequences-sql><![CDATA[]]></sequences-sql>\n	<indexes-sql><![CDATA[create index IX_865B7BD5 on Marketplace_App (companyId);\ncreate index IX_20F14D93 on Marketplace_App (remoteAppId);\ncreate index IX_3E667FE1 on Marketplace_App (uuid_);\n\ncreate index IX_7DC16D26 on Marketplace_Module (appId);\ncreate index IX_C6938724 on Marketplace_Module (appId, contextName);\ncreate index IX_F2F1E964 on Marketplace_Module (contextName);\ncreate index IX_A7EFD80E on Marketplace_Module (uuid_);]]></indexes-sql>\n</data>');
/*!40000 ALTER TABLE `servicecomponent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shard`
--

DROP TABLE IF EXISTS `shard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shard` (
  `shardId` bigint(20) NOT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`shardId`),
  KEY `IX_DA5F4359` (`classNameId`,`classPK`),
  KEY `IX_941BA8C3` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shard`
--

LOCK TABLES `shard` WRITE;
/*!40000 ALTER TABLE `shard` DISABLE KEYS */;
INSERT INTO `shard` VALUES (10154,10021,10153,'default');
/*!40000 ALTER TABLE `shard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcart`
--

DROP TABLE IF EXISTS `shoppingcart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingcart` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcart`
--

LOCK TABLES `shoppingcart` WRITE;
/*!40000 ALTER TABLE `shoppingcart` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcategory`
--

DROP TABLE IF EXISTS `shoppingcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingcategory` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcategory`
--

LOCK TABLES `shoppingcategory` WRITE;
/*!40000 ALTER TABLE `shoppingcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingcoupon`
--

DROP TABLE IF EXISTS `shoppingcoupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingcoupon` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingcoupon`
--

LOCK TABLES `shoppingcoupon` WRITE;
/*!40000 ALTER TABLE `shoppingcoupon` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingcoupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingitem`
--

DROP TABLE IF EXISTS `shoppingitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingitem` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingitem`
--

LOCK TABLES `shoppingitem` WRITE;
/*!40000 ALTER TABLE `shoppingitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingitemfield`
--

DROP TABLE IF EXISTS `shoppingitemfield`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingitemfield` (
  `itemFieldId` bigint(20) NOT NULL,
  `itemId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `values_` longtext,
  `description` longtext,
  PRIMARY KEY (`itemFieldId`),
  KEY `IX_6D5F9B87` (`itemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingitemfield`
--

LOCK TABLES `shoppingitemfield` WRITE;
/*!40000 ALTER TABLE `shoppingitemfield` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingitemfield` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingitemprice`
--

DROP TABLE IF EXISTS `shoppingitemprice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingitemprice` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingitemprice`
--

LOCK TABLES `shoppingitemprice` WRITE;
/*!40000 ALTER TABLE `shoppingitemprice` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingitemprice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingorder`
--

DROP TABLE IF EXISTS `shoppingorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingorder` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingorder`
--

LOCK TABLES `shoppingorder` WRITE;
/*!40000 ALTER TABLE `shoppingorder` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shoppingorderitem`
--

DROP TABLE IF EXISTS `shoppingorderitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shoppingorderitem` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shoppingorderitem`
--

LOCK TABLES `shoppingorderitem` WRITE;
/*!40000 ALTER TABLE `shoppingorderitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `shoppingorderitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivity`
--

DROP TABLE IF EXISTS `socialactivity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivity` (
  `activityId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `createDate` bigint(20) DEFAULT NULL,
  `mirrorActivityId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `type_` int(11) DEFAULT NULL,
  `extraData` longtext,
  `receiverUserId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`activityId`),
  UNIQUE KEY `IX_8F32DEC9` (`groupId`,`userId`,`createDate`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_82E39A0C` (`classNameId`),
  KEY `IX_A853C757` (`classNameId`,`classPK`),
  KEY `IX_64B1BC66` (`companyId`),
  KEY `IX_2A2468` (`groupId`),
  KEY `IX_FB604DC7` (`groupId`,`userId`,`classNameId`,`classPK`,`type_`,`receiverUserId`),
  KEY `IX_1271F25F` (`mirrorActivityId`),
  KEY `IX_1F00C374` (`mirrorActivityId`,`classNameId`,`classPK`),
  KEY `IX_121CA3CB` (`receiverUserId`),
  KEY `IX_3504B8BC` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivity`
--

LOCK TABLES `socialactivity` WRITE;
/*!40000 ALTER TABLE `socialactivity` DISABLE KEYS */;
INSERT INTO `socialactivity` VALUES (1,10179,10153,10157,1387653356862,0,10010,10428,1,'{\"title\":\"welcome_bg_3\"}',0),(2,10179,10153,10157,1387653360510,0,10010,10437,1,'{\"title\":\"welcome_bg_7\"}',0),(3,10179,10153,10157,1387653361455,0,10010,10446,1,'{\"title\":\"welcome_bg_11\"}',0),(4,10179,10153,10157,1387653362100,0,10010,10454,1,'{\"title\":\"welcome_bg_12\"}',0),(5,10179,10153,10157,1387653362975,0,10010,10462,1,'{\"title\":\"welcome_bg_5\"}',0),(6,10179,10153,10157,1387653363833,0,10010,10470,1,'{\"title\":\"welcome_bg_10\"}',0),(7,10179,10153,10157,1387653367820,0,10010,10495,1,'{\"title\":\"welcome_bg_2\"}',0),(8,10179,10153,10157,1387653368922,0,10010,10509,1,'{\"title\":\"welcome_bg_13\"}',0),(9,10179,10153,10157,1387653369325,0,10010,10521,1,'{\"title\":\"welcome_bg_9\"}',0),(10,10179,10153,10157,1387653369806,0,10010,10533,1,'{\"title\":\"welcome_bg_1\"}',0),(11,10179,10153,10157,1387653370009,0,10010,10545,1,'{\"title\":\"welcome_bg_4\"}',0),(12,10179,10153,10157,1387653370486,0,10010,10557,1,'{\"title\":\"welcome_bg_8\"}',0),(13,10179,10153,10157,1387653370766,0,10010,10569,1,'{\"title\":\"welcome_bg_6\"}',0);
/*!40000 ALTER TABLE `socialactivity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivityachievement`
--

DROP TABLE IF EXISTS `socialactivityachievement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivityachievement` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivityachievement`
--

LOCK TABLES `socialactivityachievement` WRITE;
/*!40000 ALTER TABLE `socialactivityachievement` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivityachievement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivitycounter`
--

DROP TABLE IF EXISTS `socialactivitycounter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivitycounter` (
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
  PRIMARY KEY (`activityCounterId`),
  UNIQUE KEY `IX_1B7E3B67` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`endPeriod`),
  UNIQUE KEY `IX_374B35AE` (`groupId`,`classNameId`,`classPK`,`name`,`ownerType`,`startPeriod`),
  KEY `IX_A4B9A23B` (`classNameId`,`classPK`),
  KEY `IX_926CDD04` (`groupId`,`classNameId`,`classPK`,`ownerType`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivitycounter`
--

LOCK TABLES `socialactivitycounter` WRITE;
/*!40000 ALTER TABLE `socialactivitycounter` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivitycounter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivitylimit`
--

DROP TABLE IF EXISTS `socialactivitylimit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivitylimit` (
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
  KEY `IX_B15863FA` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivitylimit`
--

LOCK TABLES `socialactivitylimit` WRITE;
/*!40000 ALTER TABLE `socialactivitylimit` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivitylimit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialactivitysetting`
--

DROP TABLE IF EXISTS `socialactivitysetting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialactivitysetting` (
  `activitySettingId` bigint(20) NOT NULL,
  `groupId` bigint(20) DEFAULT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `activityType` int(11) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `value` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`activitySettingId`),
  KEY `IX_384788CD` (`groupId`,`activityType`),
  KEY `IX_1E9CF33B` (`groupId`,`classNameId`,`activityType`),
  KEY `IX_D984AABA` (`groupId`,`classNameId`,`activityType`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialactivitysetting`
--

LOCK TABLES `socialactivitysetting` WRITE;
/*!40000 ALTER TABLE `socialactivitysetting` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialactivitysetting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialrelation`
--

DROP TABLE IF EXISTS `socialrelation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialrelation` (
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
  KEY `IX_F0CA24A5` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialrelation`
--

LOCK TABLES `socialrelation` WRITE;
/*!40000 ALTER TABLE `socialrelation` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialrelation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `socialrequest`
--

DROP TABLE IF EXISTS `socialrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `socialrequest` (
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
  KEY `IX_49D5872C` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `socialrequest`
--

LOCK TABLES `socialrequest` WRITE;
/*!40000 ALTER TABLE `socialrequest` DISABLE KEYS */;
/*!40000 ALTER TABLE `socialrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscription` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticket` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_`
--

DROP TABLE IF EXISTS `user_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_` (
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
  KEY `IX_89509087` (`companyId`,`openId`(767)),
  KEY `IX_F6039434` (`companyId`,`status`),
  KEY `IX_762F63C6` (`emailAddress`),
  KEY `IX_A18034A4` (`portraitId`),
  KEY `IX_E0422BDA` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_`
--

LOCK TABLES `user_` WRITE;
/*!40000 ALTER TABLE `user_` DISABLE KEYS */;
INSERT INTO `user_` VALUES ('e4a69f1b-2a37-4ce8-8f6e-d2977245aace',10157,10153,'2013-12-21 19:14:32','2013-12-21 19:14:32',1,10158,'password',0,0,NULL,'5533ed38b5e33c076a804bb4bca644f9,0347dafacbca54a43d2f7e97bbae2275,0347dafacbca54a43d2f7e97bbae2275','','',0,'10157','default@liferay.com',0,'',0,'en_US','UTC','Welcome!','','','','','','2013-12-21 19:14:32','',NULL,'',NULL,0,0,NULL,1,0,0),('326b39c6-e28a-4ac6-bd66-436d99860ce9',10195,10153,'2013-12-21 19:14:35','2013-12-21 19:14:52',0,10197,'hvfkN/qlp/zhXR3cuerq6jd2Z7g=',1,0,'2013-12-21 19:17:54','','what-is-your-father\'s-middle-name','prasad',0,'test','test@liferay.com',0,'',0,'en_US','UTC','Welcome Rahul Ty!','','Rahul','','Ty','','2013-12-21 19:14:36','','2013-12-21 19:14:36','',NULL,0,0,NULL,1,1,5),('7b491b30-3a63-4167-a4d8-affccc3363a2',10701,10153,'2013-12-22 18:34:17','2013-12-22 18:34:17',0,10702,'hvfkN/qlp/zhXR3cuerq6jd2Z7g=',1,0,'2013-12-22 18:36:43','','what-is-your-father\'s-middle-name','prasad',0,'rahul','rahul@liferay.com',0,'',0,'en_US','UTC','Welcome Test Test!','','Test','','Test','','2013-12-22 18:34:20','','2013-12-22 18:34:20','',NULL,0,0,NULL,1,1,0),('811aef1a-ef73-4fca-8c9d-12b85fd31340',10801,10153,'2013-12-26 17:34:30','2013-12-26 17:34:30',0,10802,'hvfkN/qlp/zhXR3cuerq6jd2Z7g=',1,0,'2013-12-26 17:38:16','fb364fbf4cba5d93ffada4b608afde2a,b9c735c41fef206ecfdc1414d2b195bf,0342f806a064d823b2546e9805f470b4','what-is-your-father\'s-middle-name','prasad',0,'rahul1','rahul@charter.com',0,'',0,'en_US','UTC','Welcome Rahul Tyagi!','','Rahul','','Tyagi','','2013-12-28 11:28:40','127.0.0.1','2013-12-28 11:01:14','127.0.0.1',NULL,0,0,NULL,1,1,0),('48e0a28e-32d4-46ed-aa38-e9651daaf356',11001,10153,'2013-12-27 19:44:02','2013-12-27 19:44:02',0,11002,'hvfkN/qlp/zhXR3cuerq6jd2Z7g=',1,0,'2013-12-27 19:46:26','','what-is-your-father\'s-middle-name','prasad',0,'test1','test@charter.com',0,'',0,'en_US','UTC','Welcome Test Test!','','Test','','Test','','2013-12-27 19:44:05','','2013-12-27 19:44:05','',NULL,0,0,NULL,0,1,0),('d18f8e01-bc31-4daa-be24-7f941f7c4e78',11106,10153,'2013-12-28 06:23:00','2013-12-28 06:44:53',0,11107,'4MkDWJjdUvxlxBRUzsnE0mEb+zc=',1,0,'2013-12-28 06:43:12','','what-is-your-father\'s-middle-name','prasad',0,'anandsaxena','tragait@gmail.com',0,'',0,'en_US','UTC','Welcome Anand Saxena!','','Anand','','Saxena','','2013-12-28 06:42:39','127.0.0.1','2013-12-28 06:42:39','127.0.0.1',NULL,0,0,NULL,0,0,0);
/*!40000 ALTER TABLE `user_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroup`
--

DROP TABLE IF EXISTS `usergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroup` (
  `userGroupId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `parentUserGroupId` bigint(20) DEFAULT NULL,
  `name` varchar(75) DEFAULT NULL,
  `description` longtext,
  `addedByLDAPImport` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userGroupId`),
  UNIQUE KEY `IX_23EAD0D` (`companyId`,`name`),
  KEY `IX_524FEFCE` (`companyId`),
  KEY `IX_69771487` (`companyId`,`parentUserGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroup`
--

LOCK TABLES `usergroup` WRITE;
/*!40000 ALTER TABLE `usergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroupgrouprole`
--

DROP TABLE IF EXISTS `usergroupgrouprole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroupgrouprole` (
  `userGroupId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userGroupId`,`groupId`,`roleId`),
  KEY `IX_CCBE4063` (`groupId`),
  KEY `IX_CAB0CCC8` (`groupId`,`roleId`),
  KEY `IX_1CDF88C` (`roleId`),
  KEY `IX_DCDED558` (`userGroupId`),
  KEY `IX_73C52252` (`userGroupId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroupgrouprole`
--

LOCK TABLES `usergroupgrouprole` WRITE;
/*!40000 ALTER TABLE `usergroupgrouprole` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroupgrouprole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergrouprole`
--

DROP TABLE IF EXISTS `usergrouprole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergrouprole` (
  `userId` bigint(20) NOT NULL,
  `groupId` bigint(20) NOT NULL,
  `roleId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`groupId`,`roleId`),
  KEY `IX_1B988D7A` (`groupId`),
  KEY `IX_871412DF` (`groupId`,`roleId`),
  KEY `IX_887A2C95` (`roleId`),
  KEY `IX_887BE56A` (`userId`),
  KEY `IX_4D040680` (`userId`,`groupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergrouprole`
--

LOCK TABLES `usergrouprole` WRITE;
/*!40000 ALTER TABLE `usergrouprole` DISABLE KEYS */;
INSERT INTO `usergrouprole` VALUES (10801,11037,10170),(10801,11089,10166),(10801,11095,10166),(10801,11101,10166),(11106,11101,11118);
/*!40000 ALTER TABLE `usergrouprole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usergroups_teams`
--

DROP TABLE IF EXISTS `usergroups_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usergroups_teams` (
  `teamId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`teamId`,`userGroupId`),
  KEY `IX_31FB0B08` (`teamId`),
  KEY `IX_7F187E63` (`userGroupId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usergroups_teams`
--

LOCK TABLES `usergroups_teams` WRITE;
/*!40000 ALTER TABLE `usergroups_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `usergroups_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useridmapper`
--

DROP TABLE IF EXISTS `useridmapper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useridmapper` (
  `userIdMapperId` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `description` varchar(75) DEFAULT NULL,
  `externalUserId` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`userIdMapperId`),
  UNIQUE KEY `IX_41A32E0D` (`type_`,`externalUserId`),
  UNIQUE KEY `IX_D1C44A6E` (`userId`,`type_`),
  KEY `IX_E60EA987` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useridmapper`
--

LOCK TABLES `useridmapper` WRITE;
/*!40000 ALTER TABLE `useridmapper` DISABLE KEYS */;
/*!40000 ALTER TABLE `useridmapper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usernotificationevent`
--

DROP TABLE IF EXISTS `usernotificationevent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usernotificationevent` (
  `uuid_` varchar(75) DEFAULT NULL,
  `userNotificationEventId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `type_` varchar(75) DEFAULT NULL,
  `timestamp` bigint(20) DEFAULT NULL,
  `deliverBy` bigint(20) DEFAULT NULL,
  `payload` longtext,
  `archived` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`userNotificationEventId`),
  KEY `IX_3E5D78C4` (`userId`),
  KEY `IX_3DBB361A` (`userId`,`archived`),
  KEY `IX_ECD8CFEA` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usernotificationevent`
--

LOCK TABLES `usernotificationevent` WRITE;
/*!40000 ALTER TABLE `usernotificationevent` DISABLE KEYS */;
/*!40000 ALTER TABLE `usernotificationevent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_groups`
--

DROP TABLE IF EXISTS `users_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_groups` (
  `groupId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`groupId`,`userId`),
  KEY `IX_C4F9E699` (`groupId`),
  KEY `IX_F10B6C6B` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_groups`
--

LOCK TABLES `users_groups` WRITE;
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` VALUES (10179,10195),(10179,10701),(10179,10801),(10179,11001),(11037,10801);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_orgs`
--

DROP TABLE IF EXISTS `users_orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_orgs` (
  `organizationId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`organizationId`,`userId`),
  KEY `IX_7EF4EC0E` (`organizationId`),
  KEY `IX_FB646CA6` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_orgs`
--

LOCK TABLES `users_orgs` WRITE;
/*!40000 ALTER TABLE `users_orgs` DISABLE KEYS */;
INSERT INTO `users_orgs` VALUES (11100,11106);
/*!40000 ALTER TABLE `users_orgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_permissions`
--

DROP TABLE IF EXISTS `users_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_permissions` (
  `permissionId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`permissionId`,`userId`),
  KEY `IX_8AE58A91` (`permissionId`),
  KEY `IX_C26AA64D` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_permissions`
--

LOCK TABLES `users_permissions` WRITE;
/*!40000 ALTER TABLE `users_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_roles`
--

DROP TABLE IF EXISTS `users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_roles` (
  `roleId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`roleId`,`userId`),
  KEY `IX_C19E5F31` (`roleId`),
  KEY `IX_C1A01806` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_roles`
--

LOCK TABLES `users_roles` WRITE;
/*!40000 ALTER TABLE `users_roles` DISABLE KEYS */;
INSERT INTO `users_roles` VALUES (10160,10195),(10160,10701),(10160,10801),(10160,11001),(10161,10157),(10163,10195),(10163,10701),(10163,10801),(10163,11001),(10163,11106),(10164,10195),(10164,10701),(10164,10801),(10164,11001),(10164,11106);
/*!40000 ALTER TABLE `users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_teams`
--

DROP TABLE IF EXISTS `users_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_teams` (
  `teamId` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  PRIMARY KEY (`teamId`,`userId`),
  KEY `IX_4D06AD51` (`teamId`),
  KEY `IX_A098EFBF` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_teams`
--

LOCK TABLES `users_teams` WRITE;
/*!40000 ALTER TABLE `users_teams` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_usergroups`
--

DROP TABLE IF EXISTS `users_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_usergroups` (
  `userId` bigint(20) NOT NULL,
  `userGroupId` bigint(20) NOT NULL,
  PRIMARY KEY (`userId`,`userGroupId`),
  KEY `IX_66FF2503` (`userGroupId`),
  KEY `IX_BE8102D6` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_usergroups`
--

LOCK TABLES `users_usergroups` WRITE;
/*!40000 ALTER TABLE `users_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `users_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertracker`
--

DROP TABLE IF EXISTS `usertracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertracker` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertracker`
--

LOCK TABLES `usertracker` WRITE;
/*!40000 ALTER TABLE `usertracker` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usertrackerpath`
--

DROP TABLE IF EXISTS `usertrackerpath`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usertrackerpath` (
  `userTrackerPathId` bigint(20) NOT NULL,
  `userTrackerId` bigint(20) DEFAULT NULL,
  `path_` longtext,
  `pathDate` datetime DEFAULT NULL,
  PRIMARY KEY (`userTrackerPathId`),
  KEY `IX_14D8BCC0` (`userTrackerId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usertrackerpath`
--

LOCK TABLES `usertrackerpath` WRITE;
/*!40000 ALTER TABLE `usertrackerpath` DISABLE KEYS */;
/*!40000 ALTER TABLE `usertrackerpath` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtualhost`
--

DROP TABLE IF EXISTS `virtualhost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virtualhost` (
  `virtualHostId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `layoutSetId` bigint(20) DEFAULT NULL,
  `hostname` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`virtualHostId`),
  UNIQUE KEY `IX_A083D394` (`companyId`,`layoutSetId`),
  UNIQUE KEY `IX_431A3960` (`hostname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtualhost`
--

LOCK TABLES `virtualhost` WRITE;
/*!40000 ALTER TABLE `virtualhost` DISABLE KEYS */;
INSERT INTO `virtualhost` VALUES (10156,10153,0,'127.0.0.1');
/*!40000 ALTER TABLE `virtualhost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webdavprops`
--

DROP TABLE IF EXISTS `webdavprops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webdavprops` (
  `webDavPropsId` bigint(20) NOT NULL,
  `companyId` bigint(20) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `classNameId` bigint(20) DEFAULT NULL,
  `classPK` bigint(20) DEFAULT NULL,
  `props` longtext,
  PRIMARY KEY (`webDavPropsId`),
  UNIQUE KEY `IX_97DFA146` (`classNameId`,`classPK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webdavprops`
--

LOCK TABLES `webdavprops` WRITE;
/*!40000 ALTER TABLE `webdavprops` DISABLE KEYS */;
/*!40000 ALTER TABLE `webdavprops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website`
--

DROP TABLE IF EXISTS `website`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website` (
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
  KEY `IX_F75690BB` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website`
--

LOCK TABLES `website` WRITE;
/*!40000 ALTER TABLE `website` DISABLE KEYS */;
/*!40000 ALTER TABLE `website` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wikinode`
--

DROP TABLE IF EXISTS `wikinode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wikinode` (
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
  PRIMARY KEY (`nodeId`),
  UNIQUE KEY `IX_920CD8B1` (`groupId`,`name`),
  UNIQUE KEY `IX_7609B2AE` (`uuid_`,`groupId`),
  KEY `IX_5D6FE3F0` (`companyId`),
  KEY `IX_B480A672` (`groupId`),
  KEY `IX_6C112D7C` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikinode`
--

LOCK TABLES `wikinode` WRITE;
/*!40000 ALTER TABLE `wikinode` DISABLE KEYS */;
/*!40000 ALTER TABLE `wikinode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wikipage`
--

DROP TABLE IF EXISTS `wikipage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wikipage` (
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
  KEY `IX_432F0AB0` (`nodeId`,`head`,`status`),
  KEY `IX_46EEF3C8` (`nodeId`,`parentTitle`),
  KEY `IX_1ECC7656` (`nodeId`,`redirectTitle`),
  KEY `IX_546F2D5C` (`nodeId`,`status`),
  KEY `IX_997EEDD2` (`nodeId`,`title`),
  KEY `IX_E745EA26` (`nodeId`,`title`,`head`),
  KEY `IX_BEA33AB8` (`nodeId`,`title`,`status`),
  KEY `IX_B771D67` (`resourcePrimKey`,`nodeId`),
  KEY `IX_94D1054D` (`resourcePrimKey`,`nodeId`,`status`),
  KEY `IX_FBBE7C96` (`userId`,`nodeId`,`status`),
  KEY `IX_9C0E478F` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikipage`
--

LOCK TABLES `wikipage` WRITE;
/*!40000 ALTER TABLE `wikipage` DISABLE KEYS */;
/*!40000 ALTER TABLE `wikipage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wikipageresource`
--

DROP TABLE IF EXISTS `wikipageresource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wikipageresource` (
  `uuid_` varchar(75) DEFAULT NULL,
  `resourcePrimKey` bigint(20) NOT NULL,
  `nodeId` bigint(20) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`resourcePrimKey`),
  UNIQUE KEY `IX_21277664` (`nodeId`,`title`),
  KEY `IX_BE898221` (`uuid_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wikipageresource`
--

LOCK TABLES `wikipageresource` WRITE;
/*!40000 ALTER TABLE `wikipageresource` DISABLE KEYS */;
/*!40000 ALTER TABLE `wikipageresource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowdefinitionlink`
--

DROP TABLE IF EXISTS `workflowdefinitionlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowdefinitionlink` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowdefinitionlink`
--

LOCK TABLES `workflowdefinitionlink` WRITE;
/*!40000 ALTER TABLE `workflowdefinitionlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowdefinitionlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workflowinstancelink`
--

DROP TABLE IF EXISTS `workflowinstancelink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowinstancelink` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workflowinstancelink`
--

LOCK TABLES `workflowinstancelink` WRITE;
/*!40000 ALTER TABLE `workflowinstancelink` DISABLE KEYS */;
/*!40000 ALTER TABLE `workflowinstancelink` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-28 20:32:54
