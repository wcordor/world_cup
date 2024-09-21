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
-- Table structure for table `goalscorer`
--

DROP TABLE IF EXISTS `goalscorer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `goalscorer` (
  `sRank` int NOT NULL,
  `scorerName` varchar(45) DEFAULT NULL,
  `Country` varchar(45) DEFAULT NULL,
  `Games` int DEFAULT NULL,
  `goalsScored` int DEFAULT NULL,
  PRIMARY KEY (`sRank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goalscorer`
--

LOCK TABLES `goalscorer` WRITE;
/*!40000 ALTER TABLE `goalscorer` DISABLE KEYS */;
INSERT INTO `goalscorer` VALUES (1,'Kylian Mbappe','France',7,8),(2,'Lionel Messi','Argentina',7,7),(3,'Julian Alvarez','Argentina',7,4),(4,'Olivier Giroud','France',6,4),(5,'Richarlison','Brazil',4,3),(6,'Bukayo Saka','England',4,3),(7,'Alvaro Morata','Spain',4,3),(8,'Goncalo Ramos','Portugal',4,3),(9,'Enner Valencia','Ecuador',3,3),(10,'Marcus Rashford','England',5,3),(11,'Cody Gakpo','Netherlands',5,3),(12,'Bruno Fernandes','Portugal',4,2),(13,'Harry Kane','England',5,2),(14,'Neymar','Brazil',3,2),(15,'Robert Lewandowski','Poland',4,2),(16,'Mehdi Taremi','Iran',3,2),(17,'Niclas Fullkrug','Germany',3,2),(18,'Vincent Aboubakar','Cameroon',3,2),(19,'Andrej Kramaric','Croatia',7,2),(20,'Ferran Torres','Spain',4,2),(21,'Salem Al-Dawsari','Saudi Arabia',3,2),(22,'Breel Embolo','Switzerland',4,2),(23,'Aleksandar Mitrovic','Serbia',3,2),(24,'Rafel Leao','Portugal',5,2),(25,'Youssef En-Nesyri','Morocco',7,2),(26,'Ritsu Doan','Japan',4,2),(27,'Mohammed Kudus','Ghana',3,2),(28,'Gue-sung Cho','South Korea',4,2),(29,'Kai Havertz','Germany',2,2),(30,'Wout Weghorst','Netherlands',4,2),(31,'Giorgian de Arrascaeta','Uruguay',2,2),(32,'Ivan Perisic','Croatia',7,1),(33,'Theo Hernandez','France',6,1),(34,'Vinicius Junior','Brazil',4,1),(35,'Joao Felix','Portugal',4,1),(36,'Craig Goodwin','Australia',4,1),(37,'Mislav Orsic','Croatia ',6,1),(38,'Denzel Dumfries','Netherlands',5,1),(39,'Davy Klaassen','Netherlands',4,1),(40,'Phil Foden','England',4,1),(41,'Angel Di Maria','Argentina',5,1),(42,'Raphael Guerreiro','Portugal',4,1),(43,'Christian Pulisic','United States',4,1),(44,'Nahuel Molina','Argentina',7,1),(45,'Dani Olmo','Spain',4,1),(46,'Xherdan Shaqiri','Switzerland',3,1),(47,'Raheem Sterling','England',3,1),(48,'Randal Kolo Muani','France',3,1),(49,'Yeltsin Tejeda','Costa Rica',3,1),(50,'Serge Gnabry','Germany',3,1),(51,'Lucas Paqueta','Brazil',4,1),(52,'Daley Blind','Netherlands',5,1),(53,'Hakim Ziyech','Morocco',3,1),(54,'Adrien Rabiot','France',6,1),(55,'Frenkie de Jong','Netherlands',5,1),(56,'Alexic Mac Allister','Argentina',6,1),(57,'Enzo Fernandez','Argentina',7,1),(58,'Marko Livaja','Croatia',6,1),(59,'Matthew Leckie','Australia',4,1),(60,'Jude Bellingham','England',5,1),(61,'Memphis Depay','Netherlands',5,1),(62,'Rasmin Rezaeian','Iran',2,1),(63,'Josko Gvardiol','Croatia',2,1),(64,'Cristiano Ronaldo','Portugal',5,1),(65,'Takuma Asano','Japan',4,1),(66,'Ismaila Sarr','Senegal',4,1),(67,'Seung-ho Paik','South Korea',1,1),(68,'Osman Bukari','Ghana',2,1),(69,'Pepe','Portugal',4,1),(70,'Wahbi Khazri','Tunisia',2,1),(71,'Ricardo Horta','Portugal',3,1),(72,'Manuel Akanji','Switzerland',4,1),(73,'Casemiro','Brazil',4,1),(74,'Andre Ayew','Ghana',3,1),(75,'Zakaria Aboukhal','Morocco',4,1),(76,'Jean-Charles Castelletto','Cameroon',2,1),(77,'Andreas Christensen','Denmark',3,1),(78,'Bruno Petkovic','Croatia',6,1),(79,'Juan Pablo Vargas','Costa Rica',1,1),(80,'Keysher Fuller','Costa Rica',3,1),(81,'Dusan Vlahovic','Serbia',2,1),(82,'Bamba Dieng','Senegal',4,1),(83,'Marco Asensio','Spain',4,1),(84,'Gareth Bale','Wales',3,1),(85,'Strahinja Pavlovic','Serbia',3,1),(86,'Saleh Al-Shehri','Saudi Arabia',3,1),(87,'Roozbeh Cheshmi','Iran',2,1),(88,'Gavi','Spain',4,1),(89,'Ilkay Guendogan','Germany',3,1),(90,'Jack Grealish','England',5,1),(91,'Sergej Milinkovic-Savic','Serbia',3,1),(92,'Mitchell Duke','Australia',4,1),(93,'Achraf Dari','Morocco',3,1),(94,'Boulaye Dia','Senegal',4,1),(95,'Carlos Soler','Spain',2,1),(96,'Famara Diedhou','Senegal',2,1),(97,'Mohammed Muntari','Qatar',3,1),(98,'Michy Batshuayi','Belgium',2,1),(99,'Ao Tanaka','Japan',3,1),(100,'Piotr Zielinski','Poland',4,1),(101,'Kalidou Koulibaly','Senegal',4,1),(102,'Romain Saiss','Morocco',6,1),(103,'Luis Chavez','Mexico',3,1),(104,'Young-gwon Kim','South Korea',4,1),(105,'Lovro Majer','Croatia',7,1),(106,'Henry Martin','Mexico',2,1),(107,'Aurelien Tchouameni','France',7,1),(108,'Eric Maxim Choupo-Moting','Cameroon',3,1),(109,'Moises Caicedo','Ecuador',3,1),(110,'Jordan Henderson','England',4,1),(111,'Remo Freuler','Switzerland',4,1),(112,'Haji Wright','United States',4,1),(113,'Daizen Maeda','Japan',3,1),(114,'Hee-chan Hwang','South Korea',2,1),(115,'Mohammed Salisu','Ghana',3,1),(116,'Timothy Weah','United States',4,1),(117,'Alphonso Davies','Canada',3,1);
/*!40000 ALTER TABLE `goalscorer` ENABLE KEYS */;
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
