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
-- Table structure for table `goal`
--

DROP TABLE IF EXISTS `goal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goal` (
  `scorerRank` int NOT NULL,
  `countryRank` int NOT NULL,
  `oppCountryRank` int NOT NULL,
  `minuteScored` int NOT NULL,
  PRIMARY KEY (`scorerRank`,`countryRank`,`oppCountryRank`,`minuteScored`),
  KEY `C-Rank_idx` (`countryRank`),
  KEY `P-Rank_idx` (`scorerRank`),
  KEY `oC-Rank_idx` (`oppCountryRank`),
  CONSTRAINT `C-Rank` FOREIGN KEY (`countryRank`) REFERENCES `country` (`cRank`),
  CONSTRAINT `oC-Rank` FOREIGN KEY (`oppCountryRank`) REFERENCES `country` (`cRank`),
  CONSTRAINT `P-Rank` FOREIGN KEY (`scorerRank`) REFERENCES `goalscorer` (`sRank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goal`
--

LOCK TABLES `goal` WRITE;
/*!40000 ALTER TABLE `goal` DISABLE KEYS */;
INSERT INTO `goal` VALUES (2,1,2,23),(2,1,2,108),(2,1,3,34),(2,1,7,73),(2,1,15,35),(2,1,19,64),(2,1,30,10),(3,1,3,39),(3,1,3,69),(3,1,15,57),(3,1,16,67),(41,1,2,36),(44,1,7,35),(56,1,16,46),(57,1,19,87),(1,2,1,80),(1,2,1,81),(1,2,1,118),(1,2,15,68),(1,2,16,74),(1,2,16,91),(1,2,25,61),(1,2,25,86),(4,2,5,78),(4,2,15,32),(4,2,15,71),(4,2,16,44),(33,2,4,5),(48,2,4,79),(54,2,15,27),(107,2,5,17),(19,3,28,36),(19,3,28,70),(32,3,11,55),(37,3,4,42),(58,3,28,44),(63,3,4,7),(78,3,6,117),(105,3,28,94),(25,4,8,42),(25,4,28,23),(53,4,28,4),(75,4,17,92),(93,4,3,9),(102,4,17,73),(6,5,13,57),(6,5,21,43),(6,5,21,62),(10,5,21,71),(10,5,26,50),(10,5,26,68),(13,5,2,54),(13,5,13,48),(40,5,26,51),(47,5,21,46),(60,5,21,35),(90,5,21,90),(110,5,13,38),(5,6,14,29),(5,6,27,62),(5,6,27,73),(14,6,3,106),(14,6,14,13),(34,6,14,7),(51,6,14,36),(73,6,12,83),(11,7,13,84),(11,7,23,6),(11,7,31,26),(30,7,1,83),(30,7,1,101),(38,7,10,81),(39,7,13,99),(52,7,10,46),(55,7,31,49),(61,7,10,10),(8,8,12,17),(8,8,12,51),(8,8,12,67),(12,8,18,54),(12,8,18,93),(24,8,12,92),(24,8,32,80),(35,8,32,78),(42,8,12,55),(64,8,32,65),(69,8,12,33),(71,8,14,5),(7,9,11,11),(7,9,20,62),(7,9,29,92),(20,9,29,31),(20,9,29,54),(45,9,29,11),(83,9,29,21),(88,9,29,74),(95,9,29,90),(43,10,21,38),(112,10,7,76),(116,10,26,36),(26,11,9,48),(26,11,20,75),(65,11,20,83),(99,11,9,51),(113,11,3,43),(22,12,24,48),(22,12,27,44),(46,12,27,20),(72,12,8,58),(111,12,27,48),(66,13,23,44),(82,13,31,84),(94,13,31,41),(96,13,31,48),(101,13,23,70),(28,14,32,58),(28,14,32,61),(67,14,6,76),(104,14,8,27),(114,14,8,91),(36,15,2,9),(59,15,25,60),(92,15,22,23),(15,16,2,99),(15,16,30,82),(100,16,30,39),(98,17,28,44),(31,18,32,26),(31,18,32,32),(103,19,30,52),(106,19,30,47),(17,20,9,83),(17,20,29,89),(29,20,29,73),(29,20,29,85),(50,20,29,10),(89,20,11,33),(16,21,5,65),(16,21,5,103),(62,21,26,101),(87,21,26,98),(70,22,2,58),(9,23,7,49),(9,23,31,16),(9,23,31,31),(109,23,13,67),(18,24,6,92),(18,24,27,63),(76,24,27,29),(108,24,27,66),(77,25,2,68),(84,26,10,82),(23,27,12,26),(23,27,24,53),(81,27,12,35),(85,27,24,46),(91,27,24,48),(117,28,3,2),(49,29,20,58),(79,29,20,70),(80,29,11,81),(21,30,1,53),(21,30,19,95),(86,30,1,48),(97,31,13,78),(27,32,14,34),(27,32,14,68),(68,32,8,89),(74,32,8,73),(115,32,14,24);
/*!40000 ALTER TABLE `goal` ENABLE KEYS */;
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
