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
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project` (
  `Name` varchar(50) NOT NULL,
  `location` varchar(300) DEFAULT NULL,
  `relavant_info` varchar(500) DEFAULT NULL,
  `Area_size` varchar(50) DEFAULT NULL,
  `promotion_Pro_ID` int DEFAULT NULL,
  `ResidentHouse_Number` int NOT NULL,
  PRIMARY KEY (`Name`),
  KEY `fk_pjpid` (`promotion_Pro_ID`),
  KEY `fk_pjrhn` (`ResidentHouse_Number`),
  CONSTRAINT `fk_pjpid` FOREIGN KEY (`promotion_Pro_ID`) REFERENCES `promotion` (`Pro_ID`),
  CONSTRAINT `fk_pjrhn` FOREIGN KEY (`ResidentHouse_Number`) REFERENCES `residents` (`House_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES `project` WRITE;
/*!40000 ALTER TABLE `project` DISABLE KEYS */;
INSERT INTO `project` VALUES ('Burasiri Panya Indra','Liap Khlong Song Rd, Khwaeng Bang Chan, Khet Khlong Sam Wa, Bangkok 10510','The “Veranda Series” homes provide you with a breathtakingly romantic housing concept in the New England Colonial Style.','163 rai',60578,2036),('Dcondo Hideaway Rangsit','Chiangrak Road, Klong Luang, Pathum Thani 12150','Enjoy your solitude in an 8-rai green oasis. Relax with everything you love, privately and socially. Fulfill the fun lifestyle with leisurely jogging and cooking with fresh vegetables.','Approximately 8 rai',61354,4924),('Kanasiri Rangsit Klong 2','Soi Rangsit-nakhon nayok 46, Rangsit Road , Khu Khot, Lamlukka, Pathum Thani 12150','It uses the abundance of field at Rungsit area as an inspiration for its design. The pattern grid is used from rectangle of the field which represents modernity and reflected to the former area of the project. The urban planning is run systematically and simply.','43-0-61.33 rai',62751,1382),('KHUN by Yoo Inspired by Starck','Sukhumvit 55 Road (Thong Lor), Klongton-Nua, Wattana, Bangkok 10510','Reflect your individuality through architecture and design. Inspired by the industrial heritage and the distinctive lifestyle of Thong Lo, KHUN by YOO incorporates outstanding creativity and opulent amenities that promise to deliver an incomparable place to call home.','Approximately 1 Rai',63186,4773),('La Casita Hua Hin','94/2 Hua Hin, Prachaubkirikhan 77110','\"La Casita” in Spanish means a house filled with the happiness of love and warmth. However, for Sansiri, La Casita is the embodiment of a new condominium at the heart of Hua Hin that truly stands out with Spanish-inspired architecture.','Approximately 6 Rai',63357,8569),('Mettown Bangna','Bangna Road , Bang Bo, Bang Bo, Samut Prakan 10560','Welcome to a brand-new neighbourhood of gracefully-designed townhomes that superbly respond to the lifestyle demands of all family members.','Approximately 13.44 acre',61597,7510),('Setthasiri Wongwaen - Lamlukka','38 Lamlukka Road, Bueng Kham Phroi, Lamlukka, Pathumthani 12150','The freedom to live your life in a new dimension. The project answers the demand of members of the new generation who love freedom, who are weary of monotony, and who possess distinctive lifestyles.','78-0-44.76 rai',68452,8366),('THE BASE Central Phuket','Chaofa West Road, Wichit, Muang Phuket, Phuket 83000','At the confluence of an enchanting lifestyle where the native people and Chinese from across the seas come together in a perfect harmony of diversity to create the Peranakan culture so prevalent to Phuket inspiring a way of living at the heart of the city affording the ultimate freedom, convenience and discovery of new opportunities each and every day.','Approximately 4 Rai',67513,9422),('Town Avenue Merge Rattanathibet','Rattanathibet Road, Sao Thong Hin, Bang Yai, Nonthaburi 11140','Discover a truly unique home design inspired by the concept of “Urban Fabric.” Lines and shapes traced from urban elements, such as buildings, streets and lamp posts, seamlessly blend into natural beauty.','17.60 acre',62400,5869),('Town Avenue Song-Kwae','Singhawat Road, Tambon Plai Chumphon, Muang, Phitsanulok 65000','Popularly referred to as the \'Song Kwae\' or \'the City of Two Rivers\', Phitsanulok is an important and historic city in lower northern Thailand which gets its nickname from its prominent location on the banks of two major rivers – Nan River and Kwae Noi River.','17-1-48.79 rai',63246,2661);
/*!40000 ALTER TABLE `project` ENABLE KEYS */;
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
