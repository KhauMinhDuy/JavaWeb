-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: webcourse
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

create database webcourse;

use webcourse;

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `createdate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'the-thao','the-thao',NULL,NULL,NULL,NULL),(2,'the-gioi','the-gioi',NULL,NULL,NULL,NULL),(3,'chinh-tri','chinh-tri',NULL,NULL,NULL,NULL),(4,'thoi-su','thoi-su',NULL,NULL,NULL,NULL),(5,'goc-nhin','goc-nhin',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_bin,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` timestamp NULL DEFAULT NULL,
  `modifiedby` timestamp NULL DEFAULT NULL,
  `userid` bigint NOT NULL,
  `newid` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comment_user` (`userid`),
  KEY `fk_comment_news` (`newid`),
  CONSTRAINT `fk_comment_news` FOREIGN KEY (`newid`) REFERENCES `news` (`id`),
  CONSTRAINT `fk_comment_user` FOREIGN KEY (`userid`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `thumbnail` varchar(255) COLLATE utf8_bin NOT NULL,
  `shortdescription` text COLLATE utf8_bin,
  `content` text COLLATE utf8_bin NOT NULL,
  `createdate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `categoryid` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_news_category` (`categoryid`),
  CONSTRAINT `fk_news_category` FOREIGN KEY (`categoryid`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'title','tumbnail','shortdescription','content',NULL,NULL,NULL,NULL,1),(2,'title2','thumbnail2','shortdescription2','content2',NULL,NULL,NULL,NULL,2),(3,'title3','thumbnail3','shortdescription3','content3',NULL,NULL,NULL,NULL,3),(4,'title4','thumbnail4','shortdescription4','content4',NULL,NULL,NULL,NULL,4),(5,'title5','thumbnail5','shortdescription5','content5',NULL,NULL,NULL,NULL,5),(6,'title6','thumbnail6','shortdescription6','content6',NULL,NULL,NULL,NULL,1),(7,'title6','thumbnail6','shortdescription6','content6',NULL,NULL,NULL,NULL,1),(8,'title7','thumbnail7','shortdescription7','content',NULL,NULL,NULL,NULL,2),(9,'title10','thumbnail9','shortdescription8','content',NULL,NULL,NULL,NULL,3),(10,'title10','thumbnail9','shortdescription8','content',NULL,NULL,NULL,NULL,4),(11,'title10','thumbnail9','shortdescription8','content',NULL,NULL,NULL,NULL,5),(12,'title10','thumbnail9','shortdescription8','content',NULL,NULL,NULL,NULL,1),(13,'title10','thumbnail9','shortdescription8','content',NULL,NULL,NULL,NULL,2),(14,'title10','thumbnail9','shortdescription8','content',NULL,NULL,NULL,NULL,3),(15,'title10','thumbnail9','shortdescription8','content',NULL,NULL,NULL,NULL,4),(16,'title10','thumbnail9','shortdescription8','content',NULL,NULL,NULL,NULL,5),(17,'title10','thumbnail9','shortdescription8','content',NULL,NULL,NULL,NULL,1),(18,'title10','thumbnail9','shortdescription8','content',NULL,NULL,NULL,NULL,2),(19,'title10','thumbnail9','shortdescription8','content',NULL,NULL,NULL,NULL,3),(20,'title10','thumbnail9','shortdescription8','content',NULL,NULL,NULL,NULL,4),(21,'title10','thumbnail9','shortdescription8','content',NULL,NULL,NULL,NULL,5),(22,'title10','thumbnail9','shortdescription8','content',NULL,NULL,NULL,NULL,1),(23,'title10','thumbnail9','shortdescription8','content',NULL,NULL,NULL,NULL,2),(24,'title10','thumbnail9','shortdescription8','content',NULL,NULL,NULL,NULL,3),(25,'title10','thumbnail9','shortdescription8','content',NULL,NULL,NULL,NULL,4),(26,'title10','thumbnail9','shortdescription8','content',NULL,NULL,NULL,NULL,5),(27,'titleapi','thumbnailapi','shortdescriptionapi','contentapi',NULL,NULL,NULL,NULL,1),(28,'khauminhduy','thumbnailapi','shortdescriptionapi','contentapi',NULL,NULL,NULL,NULL,1),(29,'khauminhduy2','thumbnailapi','shortdescriptionapi','contentapi',NULL,NULL,NULL,NULL,1),(30,'khauminhduy2','thumbnailapi','shortdescriptionapi','contentapi',NULL,NULL,NULL,NULL,2);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_bin NOT NULL,
  `createdate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_bin NOT NULL,
  `fullname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` int NOT NULL,
  `createdate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `roleid` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_userrole_user` (`roleid`),
  CONSTRAINT `fk_userrole_user` FOREIGN KEY (`roleid`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-30 22:23:07
