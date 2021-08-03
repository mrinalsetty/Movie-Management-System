CREATE DATABASE  IF NOT EXISTS `movie` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `movie`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: movie
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `action` (
  `sno` int NOT NULL,
  `mname` varchar(40) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `rate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
INSERT INTO `action` VALUES (1,'Tenet','2.30hrs','8.4'),(2,'Greenland','1.59hrs','7'),(3,'Peninsula','1.56hrs','6.6'),(4,'Ava','1.36hrs','5.8'),(5,'Hard Kill','1.38hrs','9'),(6,'Unhinged','1.30hrs','6.1'),(7,'The Outpost','2.03hrs','7.8'),(8,'Sayonee','1.52hrs','7'),(9,'Torbazz','2.14hrs','4.2'),(10,'Ludo','2.29hrs','6.8'),(11,'Khuda Haafiz','2.13hrs','5.8'),(12,'Yaara','2.10hrs','9'),(13,'Panipat','2.53hrs','6.6'),(14,'War','2.34hrs','7'),(15,'Saaho','2.51hrs','5.4'),(16,'Baaghi 3','2.26hrs','2.1'),(17,'Mercenaries','1.30hrs','3.7'),(18,'Tahanji','2.15hrs','7.6'),(19,'Dishoom','2.04hrs','5.1'),(20,'Rowdy Rathode','2,23hrs','5.7'),(21,'Kaithi','2.30hrs','8.5'),(22,'Junglee','1.55hrs','5.5'),(23,'Kesari','2.40hrs','7.4'),(24,'Kick','2.27hrs','5.3'),(25,'Cammando 3','2.20hrs','5.6');
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comedy`
--

DROP TABLE IF EXISTS `comedy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comedy` (
  `sno` int NOT NULL,
  `mname` varchar(40) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `rate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comedy`
--

LOCK TABLES `comedy` WRITE;
/*!40000 ALTER TABLE `comedy` DISABLE KEYS */;
INSERT INTO `comedy` VALUES (1,'Mr.Bean','1.35hrs','8.4'),(2,'Kung Fu Panda','1h 32m','7.5'),(3,'The Kissing Booth 2','2h 14m','5.8'),(4,'The Christmas Chronicles: Part 2','1h 45m','6.0'),(5,'Kung Fu Panda 2','1h 30m','7.2'),(6,'Matilda','1h 42m','6.9'),(7,'Hotel Transylvania 2','1h 29 min','6.7'),(8,'The Grinch','1h 25m','6.3'),(9,'Despicable Me','1h 35m','7.6'),(10,'Despicable Me 2','1h 38m','7.3'),(11,'Despicable Me 3','1h 29m','6.3'),(12,'Shazam','2h 12m','7.1'),(13,'Klaus','1h 36m','8.2'),(14,'Feel the Beat','1h 49m','6.3'),(15,'Instant Family','1h 58m','7.3');
/*!40000 ALTER TABLE `comedy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `drama`
--

DROP TABLE IF EXISTS `drama`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `drama` (
  `sno` int NOT NULL,
  `mname` varchar(40) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `rate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `drama`
--

LOCK TABLES `drama` WRITE;
/*!40000 ALTER TABLE `drama` DISABLE KEYS */;
INSERT INTO `drama` VALUES (1,'Come play','1.36hrs','6.6'),(2,'Relic','1.29hrs','6'),(3,'Bloodshot','1.48hrs','7'),(4,'Beanpole','2.10hrs','6.4'),(5,'The Lodge','1.47hrs','7.2'),(6,'Little Women','2.15hrs','8'),(7,'1917','1.59hrs','8.7'),(8,'Sir','1.39hrs','7.4'),(9,'Gunjan Saxena','1.52hrs','8'),(10,'Panga','2.11hrs','7.9'),(11,'Tahanji','2.15hrs','8.6'),(12,'Shakuntala Devi','2.07hrs','7.2'),(13,'Dil Bechara','1.41hrs','7.6'),(14,'Gulabo Sitabo','1.55hrs','6.9'),(16,'IIT Krishnamurthy','2.02hrs','6.4'),(17,'Darban','2.25hrs','6.9'),(18,'London Calling','2.06hrs','3'),(19,'The Secret','1.47hrs','6.6'),(20,'The War With Grandpa','1.34hrs','6'),(21,'Soorarai Pottru','2.33hrs','8.2'),(22,'The Craft','1.37hrs','5.6'),(23,'Mr Jasoos','2.11hrs','6'),(24,'SOS Kolkata','2.21hrs','6.3'),(25,'Antebellum','1.45hrs','7');
/*!40000 ALTER TABLE `drama` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hor`
--

DROP TABLE IF EXISTS `hor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hor` (
  `sno` int NOT NULL,
  `mname` varchar(40) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `rate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hor`
--

LOCK TABLES `hor` WRITE;
/*!40000 ALTER TABLE `hor` DISABLE KEYS */;
INSERT INTO `hor` VALUES (1,'Ready Or Not','1h 35m','6.8'),(2,'Better Watch Out','1h 29m','6.5'),(3,'The Wolf of Snow Hollow','1h 23m','6.2'),(4,'Assassination Nation','1h 48m','5.9'),(5,'Vampire Academy','1h 44m','5.5'),(6,'Planet Terror','1h 45m','7.1'),(7,'The VelociPastor','1h 15m','5.1'),(8,'Slaughterhouse Rulez','1h 44m','5.3'),(9,'Mayhem','1h 26m','6.4'),(10,'Teeth','1h 34m','5.4'),(11,'Freaky','1h 42m','6.4'),(12,'She dies Tomorrow','1h 26m','5.1'),(13,'The Final Girls','1h 31m','6.6'),(14,'Triggered','1h 34m','5.5'),(15,'12 Hour Shift','1h 26m','5.3');
/*!40000 ALTER TABLE `hor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new`
--

DROP TABLE IF EXISTS `new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new` (
  `sno` int NOT NULL,
  `mname` varchar(50) DEFAULT NULL,
  `duration` varchar(30) DEFAULT NULL,
  `rate` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new`
--

LOCK TABLES `new` WRITE;
/*!40000 ALTER TABLE `new` DISABLE KEYS */;
INSERT INTO `new` VALUES (1,'The Kissing Booth 2','2h 14m','5.8'),(2,'Feel the Beat','1h 49m','6.3'),(3,'Songbird','1h 24m','4.4'),(4,'Fatman','1h 40m','5.9'),(5,'Promising Young Woman','1h 53m','6.3'),(6,'Freaky','1h 42m','6.4'),(7,'Bad Boys for Life','2h 4m','6.6'),(8,'Murdersville, USA','2h','7.9'),(9,'Spenser Confidential','1h 51m','6.2'),(10,'The Wolf of Snow Hollow','1h 23m','6.2'),(11,'Freaky','1h 42m','6.4'),(12,'She dies Tomorrow','1h 26m','5.1'),(13,'','1h 42m','6.4'),(14,'Triggered','1h 34m','5.5'),(15,'12 Hour Shift','1h 26m','5.3');
/*!40000 ALTER TABLE `new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scifi`
--

DROP TABLE IF EXISTS `scifi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scifi` (
  `sno` int NOT NULL,
  `mname` varchar(40) DEFAULT NULL,
  `duration` varchar(20) DEFAULT NULL,
  `rate` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scifi`
--

LOCK TABLES `scifi` WRITE;
/*!40000 ALTER TABLE `scifi` DISABLE KEYS */;
INSERT INTO `scifi` VALUES (1,'The Platform','1.34hrs','7'),(2,'Underwater','1.35hrs','5.8'),(3,'Ad Astra','2.04hrs','6.5'),(4,'Ready Player One','2.19hrs','7.5'),(5,'Annahilation','2hrs','6.8'),(6,'Gemini Men','1.57hrs','5.7'),(7,'Circle','1.27hrs','6'),(8,'Arrival','1.58hrs','7.9'),(9,'Passengers','1.56hrs','7'),(10,'Valerian & the City of a 1000 Planets','2.17hrs','6.7'),(11,'Blade Runner','2.44hrs','8'),(12,'Godzilla','2.12hrs','6'),(13,'Tommorrowland','2.10hrs','6.4'),(14,'Fantastic Four','1.47hrs','4.3'),(15,'Self/Less','1.57hrs','6.5'),(16,'Rogue One','2.13hrs','7.8'),(17,'The Martian','2.31','8'),(18,'Star Wars','2.22hr','6.7'),(19,'Predestination','1.37hrs','7.5'),(20,'The Maze Runner','1.53hrs','6.8'),(21,'Krrish 3','2.32hrs','5.2'),(22,'Tik Tik Tik','2.10hrs','6'),(23,'Alag','2.03hrs','3.8'),(24,'Mission Mangal','2.10hrs','6.5'),(25,'Cargo','1.59hrs','5.7');
/*!40000 ALTER TABLE `scifi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signup`
--

DROP TABLE IF EXISTS `signup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signup` (
  `name` varchar(30) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `ph_no` bigint DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signup`
--

LOCK TABLES `signup` WRITE;
/*!40000 ALTER TABLE `signup` DISABLE KEYS */;
INSERT INTO `signup` VALUES ('Prajwal A','ppraj405@gmail.com','123456',9738723188),('Aiyappa','rounakrounak91@gmail.com','whiskey',7483658352),('Srinidhi S','sris1121@gmail.com','123456',9449530218);
/*!40000 ALTER TABLE `signup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wish`
--

DROP TABLE IF EXISTS `wish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wish` (
  `Email` varchar(100) DEFAULT NULL,
  `movie` varchar(50) DEFAULT NULL,
  `duration` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wish`
--

LOCK TABLES `wish` WRITE;
/*!40000 ALTER TABLE `wish` DISABLE KEYS */;
/*!40000 ALTER TABLE `wish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'movie'
--

--
-- Dumping routines for database 'movie'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-11 22:40:39
