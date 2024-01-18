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
-- Table structure for table `residents`
--

DROP TABLE IF EXISTS `residents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `residents` (
  `House_Number` int NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Fee_F_ID` int DEFAULT NULL,
  `Resident_Car_PlateNumber` varchar(50) DEFAULT NULL,
  `Contact_legaldepartment_ID` int DEFAULT NULL,
  PRIMARY KEY (`House_Number`),
  KEY `fk_rffid` (`Fee_F_ID`),
  KEY `fk_platenum` (`Resident_Car_PlateNumber`),
  KEY `fk_legalidforesidents` (`Contact_legaldepartment_ID`),
  CONSTRAINT `fk_legalidforesidents` FOREIGN KEY (`Contact_legaldepartment_ID`) REFERENCES `legaldepartment` (`legal_ID`),
  CONSTRAINT `fk_platenum` FOREIGN KEY (`Resident_Car_PlateNumber`) REFERENCES `car` (`Plate_Num`),
  CONSTRAINT `fk_rffid` FOREIGN KEY (`Fee_F_ID`) REFERENCES `fee` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `residents`
--

LOCK TABLES `residents` WRITE;
/*!40000 ALTER TABLE `residents` DISABLE KEYS */;
INSERT INTO `residents` VALUES (1382,'Saul Goodman',56201,'HJ 2322',32423),(2036,'Roger Lum',56201,'PP 6592',23154),(2661,'Rick Novak',56201,'JJ 5244',23554),(4773,'Marlen Dona',56201,'TY 5299',32423),(4924,'Ronald Barr',56201,'FF 9523',56583),(5869,'Walter White',32155,'RT 8895',23154),(7510,'Margaret Adelman',55623,'OP 3266',46438),(8366,'Susan Connor',32155,'AS 2633',56823),(8569,'Pepe Porha',32155,'RE 7884',23538),(9422,'Marie Broadbet',49325,'QD 2365',23538);
/*!40000 ALTER TABLE `residents` ENABLE KEYS */;
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
