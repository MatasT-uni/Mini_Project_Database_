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
-- Table structure for table `sansiri`
--

DROP TABLE IF EXISTS `sansiri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sansiri` (
  `owner_name` varchar(50) NOT NULL,
  `E_ID` int NOT NULL,
  `E_Name` varchar(50) NOT NULL,
  `service_provider_name` varchar(50) NOT NULL,
  `Project_Name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`E_ID`,`E_Name`),
  KEY `FK_serviceName` (`service_provider_name`),
  KEY `fk_projnameforsan` (`Project_Name`),
  CONSTRAINT `fk_projnameforsan` FOREIGN KEY (`Project_Name`) REFERENCES `project` (`Name`),
  CONSTRAINT `FK_serviceName` FOREIGN KEY (`service_provider_name`) REFERENCES `service` (`provider_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sansiri`
--

LOCK TABLES `sansiri` WRITE;
/*!40000 ALTER TABLE `sansiri` DISABLE KEYS */;
INSERT INTO `sansiri` VALUES ('Ronald Barr',19853,'Ronald','HABITO','Mettown Bangna'),('Pepe Porha',26265,'Pepe','Quintessentially','Town Avenue Song-Kwae'),('Saul Goodman',32680,'SaulsoCool','PLUS+','Burasiri Panya Indra'),('Marie Broadbet',36643,'Marie','PLUS+','THE BASE Central Phuket'),('Rick Novack',42516,'Rick','Quintessentially','Setthasiri Wongwaen - Lamlukka'),('Walter White',52310,'Heisenberg','HABITO','KHUN by Yoo Inspired by Starck'),('Margaret Adelman',52745,'Margaret','PLUS+','La Casita Hua Hin'),('Susan Cornor',53685,'Susan','Quintessentially','Dcondo Hideaway Rangsit'),('Marlen Dona',56423,'Marlen','PLUS+','Kanasiri Rangsit Klong 2'),('Roger Lum',59323,'Roger','HABITO','Town Avenue Merge Rattanathibet');
/*!40000 ALTER TABLE `sansiri` ENABLE KEYS */;
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
