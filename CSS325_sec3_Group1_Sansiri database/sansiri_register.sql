-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: sansiri
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
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `ResidentHouse_Number` int NOT NULL,
  `CentralArea_Name_Area` varchar(50) NOT NULL,
  `ID` int NOT NULL,
  PRIMARY KEY (`ResidentHouse_Number`,`CentralArea_Name_Area`,`ID`),
  KEY `fk_cana` (`CentralArea_Name_Area`),
  CONSTRAINT `fk_cana` FOREIGN KEY (`CentralArea_Name_Area`) REFERENCES `central_area` (`Name_Area`),
  CONSTRAINT `fk_rrhn` FOREIGN KEY (`ResidentHouse_Number`) REFERENCES `residents` (`House_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (5869,'Car Parking',76031),(7510,'Car Parking',71625),(9422,'Car Parking',76435),(2036,'Co-working space',75633),(4773,'Co-working space',76524),(8366,'Co-working space',72012),(2036,'Fitness',70164),(4924,'Fitness',76578),(7510,'Fitness',74928),(9422,'Fitness',78520),(1382,'Garden',74061),(1382,'Garden',75620),(4924,'Garden',75030),(5869,'Garden',75822),(4773,'Laundry',74356),(7510,'Laundry',79043),(8569,'Laundry',72256),(2036,'Lobby',72056),(2661,'Lobby',70465),(2661,'Lobby',77527),(2661,'Roof top',75214),(5869,'Roof top',76042),(4924,'Security',74830),(9422,'Security',78963),(8366,'Swimming Pool',72310),(8366,'Swimming Pool',79465),(8569,'Swimming Pool',78086),(1382,'Wifi',78522),(2661,'Wifi',76202),(8569,'Wifi',76325);
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-11  5:40:59
