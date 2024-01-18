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
-- Table structure for table `asset`
--

DROP TABLE IF EXISTS `asset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asset` (
  `Asset_ID` int NOT NULL AUTO_INCREMENT,
  `Asset_Name` varchar(50) NOT NULL,
  `Contain_Project_Name` varchar(50) NOT NULL,
  `Asset_type` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Asset_ID`),
  KEY `fk_projname` (`Contain_Project_Name`),
  CONSTRAINT `fk_projname` FOREIGN KEY (`Contain_Project_Name`) REFERENCES `project` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=99857 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asset`
--

LOCK TABLES `asset` WRITE;
/*!40000 ALTER TABLE `asset` DISABLE KEYS */;
INSERT INTO `asset` VALUES (91534,'Burasiri Panya Indra','THE BASE Central Phuket','House'),(91953,'Town Avenue Song-Kwae','Dcondo Hideaway Rangsit','House'),(93655,'NIA BY SANSIRI','Town Avenue Merge Rattanathibet','Condominium'),(93959,'Mettown Bangna','Setthasiri Wongwaen - Lamlukka','House'),(94134,'Burasiri San Phi Suea','KHUN by Yoo Inspired by Starck','House'),(94453,'Setthasiri Chaengwattana-Prachachuen 2','La Casita Hua Hin','House'),(94538,'Saransiri Korat','Burasiri Panya Indra','House'),(95111,'THE BASE Height-Chiang Mai','THE BASE Central Phuket','Condominium'),(95231,'THE MUVE Bangkhae','Mettown Bangna','Condominium'),(95322,'THE BASE Phetchaburi Thonglor','Dcondo Hideaway Rangsit','Condominium'),(95345,'Ideo Ladprao 5','Setthasiri Wongwaen - Lamlukka','Condominium'),(95543,'The Line Sukhumvit 101','Town Avenue Song-Kwae','Condominium'),(95656,'Dcondo Hideaway Rangsit','THE BASE Central Phuket','Condominium'),(95675,'K.C. Garden Home','Mettown Bangna','House'),(95969,'Kanasiri Rangsit Klong 2','Mettown Bangna','House'),(96325,'FLO BY SANSIRI','La Casita Hua Hin','Condominium'),(96333,'THE BASE BUKIT Phuket','Burasiri Panya Indra','Condominium'),(96535,'XT Phayathai','Kanasiri Rangsit Klong 2','Condominium'),(96543,'THE MUVE RAM22','Town Avenue Song-Kwae','Condominium'),(96765,'Setthasiri Wongwaen - Lamlukka','Burasiri Panya Indra','House'),(97212,'Shuj Ratchathewi','Kanasiri Rangsit Klong 2','Condominium'),(97654,'The Tempo Grand Sathorn-Wutthakat','Dcondo Hideaway Rangsit','Condominium'),(97755,'Town Avenue Merge Rattanathibet','Town Avenue Song-Kwae','House'),(98322,'THE LINE Vibe','Kanasiri Rangsit Klong 2','Condominium'),(98354,'KHUN by Yoo Inspired by Starck','Town Avenue Merge Rattanathibet','Condominium'),(98473,'THE MUVE Bangna','Setthasiri Wongwaen - Lamlukka','Condominium'),(98562,'dcondo reef','Town Avenue Merge Rattanathibet','Condominium'),(98633,'La Casita Hua Hin','La Casita Hua Hin','Condominium'),(99837,'THE BASE Central Phuket','KHUN by Yoo Inspired by Starck','Condominium'),(99856,'SHUSH Ratchathewi','KHUN by Yoo Inspired by Starck','Condominium');
/*!40000 ALTER TABLE `asset` ENABLE KEYS */;
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
