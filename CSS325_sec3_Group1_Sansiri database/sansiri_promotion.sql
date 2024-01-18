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
-- Table structure for table `promotion`
--

DROP TABLE IF EXISTS `promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotion` (
  `Pro_ID` int NOT NULL AUTO_INCREMENT,
  `Pro_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Pro_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=69926 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion`
--

LOCK TABLES `promotion` WRITE;
/*!40000 ALTER TABLE `promotion` DISABLE KEYS */;
INSERT INTO `promotion` VALUES (60578,'Pro Kodd Chill'),(61157,'Deal Nee Mae Pluem Rub Ka SuanKlang Perm 1 Pee'),(61247,'Hot Deal Lod Soong Sood 6m'),(61275,'6.6 On-Top Only You'),(61323,'Furniture Tem Lang Koo Kern Roi Dai Soong Sood 300k'),(61354,'10.10 Pro Rang Sang Took Deal'),(61597,'Reeb Loey Raka Pid Krongkan'),(62217,'Pro Dee Very March'),(62248,'Sansiri Family Living Juicy'),(62358,'Mahue Deal Lod Mahuema'),(62400,'Pay Sood Tua Hai Kuen Soong Sood 1.5 Larn'),(62751,'Sathu 9.9'),(62975,'Deal Hot Over Heat Lod Soong Sood 4m'),(63186,'5 Plaeng Sud Tai Rub Pro 5 Larn'),(63246,'Yok Tap Guaruntee Raka'),(63357,'Ban Lod Sud Reang Rub Pro 5 Larn Dok Bier Soong Sud 1.99%'),(63438,'Luer Noi Tae Pro Yer'),(63488,'Pro Tid Speed Deal Duan Tunjai'),(64581,'Sek Hai Dai Took Pro Lod 900k'),(64852,'11.11 Pro Break Taek'),(65597,'Pro Duan Dai Ban Ngai Bab Rhoo Rhoo Lod Soong Sud 30k'),(65676,'Oh My Deal!'),(65927,'Hai Kern Roi Koo Dai 100%'),(67513,'Pro Dee Tang Free Took Hong!'),(68452,'Haus Deals'),(68542,'Love On Top'),(68567,'Double Deal Rub Pro Soong Sood 1.2m'),(68878,'Koo Dai Tem Rab Kuen 100k'),(68879,'Happy Hour Lod Soong Sood 1.5m'),(69925,'Deal Dee Only You');
/*!40000 ALTER TABLE `promotion` ENABLE KEYS */;
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
