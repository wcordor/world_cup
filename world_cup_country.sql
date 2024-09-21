-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: world_cup
-- ------------------------------------------------------
-- Server version	8.2.0

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
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `cRank` int NOT NULL,
  `countryName` varchar(45) DEFAULT NULL,
  `WCApps` int DEFAULT NULL,
  `WCsWon` int DEFAULT NULL,
  `goalsScored` int DEFAULT NULL,
  PRIMARY KEY (`cRank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'Argentina',19,3,15),(2,'France',16,2,16),(3,'Croatia',6,0,8),(4,'Morocco',7,0,6),(5,'England',16,1,13),(6,'Brazil',22,5,8),(7,'Netherlands',11,0,10),(8,'Portugal',8,0,12),(9,'Spain',16,1,9),(10,'United States',11,0,3),(11,'Japan',7,0,5),(12,'Switzerland',12,0,5),(13,'Senegal',3,0,5),(14,'South Korea',11,0,5),(15,'Australia',6,0,4),(16,'Poland',9,0,3),(17,'Belgium',14,0,1),(18,'Uruguay',14,2,2),(19,'Mexico',17,0,2),(20,'Germany',20,5,6),(21,'Iran',6,0,4),(22,'Tunisia',6,0,1),(23,'Ecuador',4,0,4),(24,'Cameroon',8,0,4),(25,'Denmark',6,0,1),(26,'Wales',2,0,1),(27,'Serbia',13,0,5),(28,'Canada',3,0,2),(29,'Costa Rica',6,0,3),(30,'Saudi Arabia',7,0,3),(31,'Qatar',1,0,1),(32,'Ghana',4,0,5);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-14 11:13:29
