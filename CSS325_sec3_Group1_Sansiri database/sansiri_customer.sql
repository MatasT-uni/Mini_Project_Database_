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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `Cus_ID` int NOT NULL AUTO_INCREMENT,
  `DOB` date DEFAULT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `GetPromotion_Pro_ID` int NOT NULL,
  `GenerateOwnership_Ownership_ID` int NOT NULL,
  `verification_documents` varchar(5) NOT NULL,
  `phone_num` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`Cus_ID`,`GetPromotion_Pro_ID`,`GenerateOwnership_Ownership_ID`),
  KEY `fk_promotion` (`GetPromotion_Pro_ID`),
  KEY `fk_ownershipid` (`GenerateOwnership_Ownership_ID`),
  KEY `fk_verifydoc` (`verification_documents`),
  CONSTRAINT `fk_ownershipid` FOREIGN KEY (`GenerateOwnership_Ownership_ID`) REFERENCES `ownership` (`Ownership_ID`),
  CONSTRAINT `fk_promotion` FOREIGN KEY (`GetPromotion_Pro_ID`) REFERENCES `promotion` (`Pro_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=79854 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (12310,'2006-06-26','Taylor','Lang',62217,22310,'No','098-326-9967'),(12516,'1990-11-13','Toyate','Tyloy',61275,22516,'Yes','089-714-6431'),(12680,'1987-06-06','Frank','Smith',68542,22680,'Yes','087-525-6699'),(12745,'1987-12-30','Aspas','Copa',69925,22745,'Yes','091-235-5655'),(13685,'2007-06-01','Maki','Lone',68878,23685,'No','084-263-6357'),(15402,'1986-06-12','Jimmy','Budgee',63357,32680,'Yes','084-263-6358'),(16265,'1982-06-12','Yugene','Kiko',68879,76265,'Yes','086-955-9871'),(16423,'1988-03-12','Mike','Dick',61247,26423,'Yes','085-853-6245'),(16643,'1995-10-27','Timmy','Zaro',68567,26645,'Yes','089-714-9831'),(19323,'2007-02-20','Yhandi','Wang',62975,29323,'No','084-263-6388'),(19853,'1984-10-02','Yay','Pion',61323,29853,'Yes','084-653-7421'),(20015,'1987-03-12','Kilay','Thony',67513,56423,'Yes','098-326-9952'),(25862,'1984-10-01','Henry','Kola',68452,19853,'Yes','092-987-3651'),(30544,'2007-02-19','Smith','Dermico',61354,59323,'No','086-955-9833'),(35785,'1986-12-30','Nizam','Maha',63246,52745,'Yes','084-653-9899'),(45856,'2006-06-07','Petong','Nakron',64852,53685,'No','091-235-6655'),(47952,'1981-03-12','Tony','Yana',60578,26265,'Yes','087-525-6698'),(52776,'1989-11-18','John','Ratchata',62358,42516,'Yes','080-452-4555'),(53025,'2005-06-26','Pong','Nasri',63186,52310,'No','089-714-7746'),(56455,'1995-09-27','Terry','Homa',61597,36643,'Yes','085-853-6213'),(72310,'2006-06-26','Raze','Boto',63438,22310,'No','098-326-9348'),(72516,'1989-11-17','Jin','See',62400,22516,'Yes','089-714-7747'),(72680,'1987-06-12','Fin','Nom',65676,22680,'Yes','087-525-6782'),(72745,'1986-12-05','Matas','Pro',65927,22745,'Yes','084-263-1872'),(73685,'2006-06-08','Gon','Lee',62751,23685,'No','084-263-6333'),(76265,'1983-04-12','Kiiljoy','Naon',62248,86265,'Yes','086-955-9847'),(76423,'1988-04-12','Neon','Kun',65597,26423,'Yes','084-263-6328'),(76643,'1996-09-29','Brim','Stone',61157,26644,'Yes','084-653-9829'),(79323,'2008-03-19','Jett','Rey',63488,29323,'No','089-714-4446'),(79853,'1985-10-01','Naphat','Hala',64581,29853,'Yes','091-235-6255');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
