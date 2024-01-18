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
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contract` (
  `Contract_ID` int NOT NULL AUTO_INCREMENT,
  `Contract_type` varchar(50) NOT NULL,
  `Date_Time` date DEFAULT NULL,
  `Name` varchar(50) NOT NULL,
  `Use_Project_Name` varchar(50) NOT NULL,
  `Make_Customer_Customer_ID` int NOT NULL,
  PRIMARY KEY (`Contract_ID`),
  KEY `fk_useprojn` (`Use_Project_Name`),
  KEY `fk_cusid` (`Make_Customer_Customer_ID`),
  CONSTRAINT `fk_cusid` FOREIGN KEY (`Make_Customer_Customer_ID`) REFERENCES `customer` (`Cus_ID`),
  CONSTRAINT `fk_useprojn` FOREIGN KEY (`Use_Project_Name`) REFERENCES `project` (`Name`)
) ENGINE=InnoDB AUTO_INCREMENT=89466 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
INSERT INTO `contract` VALUES (80164,'Sales Contract','2018-12-13','D-Condo Sales Contract','Town Avenue Song-Kwae',72516),(80465,'Mortgage','2017-12-23','Bu Gaan Mortgage','Setthasiri Wongwaen - Lamlukka',73685),(81625,'Mortgage','2015-06-12','Narasiri Mortgage','Burasiri Panya Indra',79323),(82012,'Sales Contract','2018-08-17','Saransiri Sales Contract','Mettown Bangna',12745),(82056,'Mortgage','2016-12-23','D-Condo Mortage','Setthasiri Wongwaen - Lamlukka',13685),(82256,'Homeowners Associations','2020-03-23','Burasiri Homeowners Associations','THE BASE Central Phuket',76643),(82310,'Mortgage','2017-11-29','Narasiri Mortgage','Dcondo Hideaway Rangsit',79853),(84061,'Homeowners Associations','2018-09-09','Burasiri Homeowners Associations','La Casita Hua Hin',16265),(84356,'Sales Contract','2018-11-29','Condo Me Sales Contract','Dcondo Hideaway Rangsit',25862),(84830,'Mortgage','2019-09-28','Habitia Mortgage','KHUN by Yoo Inspired by Starck',20015),(84928,'Mortgage','2016-03-23','Habitia Mortgage','THE BASE Central Phuket',56455),(85030,'Mortgage','2016-09-28','Bu Gaan Mortgage','KHUN by Yoo Inspired by Starck',16423),(85214,'Sales Contract','2018-12-13','Burasiri Sales Contract','Town Avenue Song-Kwae',12516),(85620,'Sales Contract','2015-09-06','D-Condo Sales Contract','Kanasiri Rangsit Klong 2',15402),(85633,'Homeowners Associations','2018-12-23','Burasiri Homeowners Associations','Setthasiri Wongwaen - Lamlukka',45856),(85822,'Homeowners Associations','2018-09-28','Burasiri Homeowners Associations','KHUN by Yoo Inspired by Starck',76423),(86031,'Sales Contract','2017-06-12','Burasiri Sales Contract','Burasiri Panya Indra',19323),(86042,'Sales Contract','2019-09-09','Burasiri Sales Contract','La Casita Hua Hin',47952),(86202,'Homeowners Associations','2016-09-06','Kanasiri Homeowners Associations','Kanasiri Rangsit Klong 2',12680),(86325,'Homeowners Associations','2019-06-12','Burasiri Homeowners Associations','Burasiri Panya Indra',30544),(86435,'Homeowners Associations','2018-02-10','Burasiri Homeowners Associations','Town Avenue Merge Rattanathibet',53025),(86524,'Sales Contract','2015-08-17','D-Condo Sales Contract','Mettown Bangna',72745),(86578,'Mortgage','2016-09-09','Setthasiri Mortgage','La Casita Hua Hin',76265),(87527,'Sales Contract','2016-12-13','Anasiri Payap Sales Contract','Town Avenue Song-Kwae',52776),(88086,'Sales Contract','2018-11-29','Anasiri Payap Sales Contract','Dcondo Hideaway Rangsit',19853),(88520,'Mortgage','2020-02-10','Bu Gaan Mortgage','Town Avenue Merge Rattanathibet',12310),(88522,'Sales Contract','2017-02-10','Anasiri Payap Sales Contract','Town Avenue Merge Rattanathibet',72310),(88963,'Mortgage','2015-09-06','Setthasiri Mortgage','Kanasiri Rangsit Klong 2',72680),(89043,'Sales Contract','2017-03-23','Condo Me Sales Contract','THE BASE Central Phuket',16643),(89465,'Sales Contract','2017-08-17','D-Condo Sales Contract','Mettown Bangna',35785);
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
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
