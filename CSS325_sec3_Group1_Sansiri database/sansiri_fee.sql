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
-- Table structure for table `fee`
--

DROP TABLE IF EXISTS `fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fee` (
  `Fee_Type` varchar(50) NOT NULL,
  `Date_Time` varchar(50) DEFAULT NULL,
  `ID` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=56202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee`
--

LOCK TABLES `fee` WRITE;
/*!40000 ALTER TABLE `fee` DISABLE KEYS */;
INSERT INTO `fee` VALUES ('Stamp Duty','3 months',30265),('Transfer Fee','4 years',32005),('Lease Registration Fee','Leases exceeding 3 years, and up to 30 years',32044),('Lease Registration Fee','Leases exceeding 3 years, and up to 30 years',32045),('Specific Business Tax (SBT)','5 years',32046),('Lease Registration Fee','Leases exceeding 3 years, and up to 30 years',32155),('Withholding Tax (WHT)','2 years',33245),('Specific Business Tax (SBT)','5 years',42052),('Withholding Tax (WHT)','2 years',42055),('Transfer Fee','4 years',42125),('Specific Business Tax (SBT)','5 years',45200),('Specific Business Tax (SBT)','5 years',45304),('Transfer Fee','4 years',45456),('Transfer Fee','4 years',45628),('Withholding Tax (WHT)','2 years',45635),('Withholding Tax (WHT)','2 years',45637),('Specific Business Tax (SBT)','5 years',45650),('Lease Registration Fee','Leases exceeding 3 years, and up to 30 years',48622),('Withholding Tax (WHT)','2 years',49325),('Withholding Tax (WHT)','2 years',49528),('Withholding Tax (WHT)','2 years',50267),('Transfer Fee','4 years',52052),('Stamp Duty','3 months',53120),('Withholding Tax (WHT)','2 years',53400),('Stamp Duty','3 months',53672),('Specific Business Tax (SBT)','5 years',54200),('Transfer Fee','4 years',54243),('Lease Registration Fee','Leases exceeding 3 years, and up to 30 years',54340),('Stamp Duty','3 months',55623),('Transfer Fee','4 years',56201);
/*!40000 ALTER TABLE `fee` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-11  5:40:58
