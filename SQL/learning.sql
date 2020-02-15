-- MySQL dump 10.13  Distrib 8.0.12, for Linux (x86_64)
--
-- Host: localhost    Database: learning
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Import_table`
--

DROP TABLE IF EXISTS `Import_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Import_table` (
  `Name` varchar(50) NOT NULL,
  `Idn` varchar(5) NOT NULL,
  `Mobile` int(10) NOT NULL,
  `Email_id` varchar(50) NOT NULL,
  PRIMARY KEY (`Idn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Import_table`
--

LOCK TABLES `Import_table` WRITE;
/*!40000 ALTER TABLE `Import_table` DISABLE KEYS */;
INSERT INTO `Import_table` VALUES ('ak0','ak101',1234567890,'qbc@gmail.com'),('ak1','ak102',1122334455,'ggrt@gov.in'),('ak2','ak103',1412563894,'kjl@apual.in'),('ak3','ak104',1020304050,'yyutr@gmail.com');
/*!40000 ALTER TABLE `Import_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_details`
--

DROP TABLE IF EXISTS `flight_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `flight_details` (
  `flight` varchar(50) NOT NULL,
  `fuel` float NOT NULL,
  `price` float NOT NULL,
  `Min_Height(ft.)` float NOT NULL,
  `Max_Height(ft.)` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_details`
--

LOCK TABLES `flight_details` WRITE;
/*!40000 ALTER TABLE `flight_details` DISABLE KEYS */;
INSERT INTO `flight_details` VALUES ('fighterplane',458000,85000,3000,3500),('fighterplane1',459000,95000,3500,4000),('fighterplane2',460000,95000,3000,3500),('fighterplane3',461000,85000,5000,5500),('fighterplane4',463000,75000,3200,5000),('fighterplane5',468000,85000,4000,5000);
/*!40000 ALTER TABLE `flight_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tableLearn`
--

DROP TABLE IF EXISTS `tableLearn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tableLearn` (
  `First_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Id` varchar(5) NOT NULL,
  `Mobile` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tableLearn`
--

LOCK TABLES `tableLearn` WRITE;
/*!40000 ALTER TABLE `tableLearn` DISABLE KEYS */;
INSERT INTO `tableLearn` VALUES ('Jhon','Reymon','01101',1234567890),('Sandy','Parker','01102',1122334455),('Jack','Millan','01103',1412563894),('Adam','Washington','01104',1020304050),('Ceasy','M.S.','01105',1056485600),
('Laura','Clington','01106',1456201256);
/*!40000 ALTER TABLE `tableLearn` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-05 14:05:32
