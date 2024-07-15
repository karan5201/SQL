-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bank
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accounts` (
  `a_id` int NOT NULL AUTO_INCREMENT,
  `balance` float NOT NULL,
  `client_id` int NOT NULL,
  `branch_id` int DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`a_id`),
  KEY `brach_fk_idx` (`branch_id`),
  KEY `clients_fk_idx` (`client_id`),
  CONSTRAINT `brach_fk` FOREIGN KEY (`branch_id`) REFERENCES `branches` (`B_id`),
  CONSTRAINT `clients_fk` FOREIGN KEY (`client_id`) REFERENCES `clients` (`C_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5251 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accounts`
--

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;
INSERT INTO `accounts` VALUES (5201,320,2,301,'saving'),(5202,684,2,302,'saving'),(5203,416,2,301,'credit'),(5204,145,2,301,'od'),(5205,440,2,303,'saving'),(5206,300,1,301,'saving'),(5207,150,1,302,'saving'),(5208,230,1,305,'od'),(5209,170,1,303,'credit'),(5210,245,1,304,'saving'),(5211,310,3,301,'saving'),(5212,480,3,302,'credit'),(5213,410,3,303,'saving'),(5214,480,3,304,'od'),(5215,195,3,305,'saving'),(5216,400,4,301,'saving'),(5217,300,4,302,'od'),(5218,400,4,303,'credit'),(5219,500,4,304,'saving'),(5220,400,4,305,'od'),(5221,270,5,301,'saving'),(5222,270,5,302,'od'),(5223,320,5,303,'saving'),(5224,516,5,304,'credit'),(5225,447,5,305,'od'),(5226,510,6,301,'credit'),(5227,610,6,302,'od'),(5228,310,6,303,'saving'),(5229,339,6,304,'od'),(5230,448,6,305,'credit'),(5231,420,7,301,'saving'),(5232,450,7,302,'od'),(5233,290,7,303,'credit'),(5234,370,7,304,'od'),(5235,360,7,305,'saving'),(5236,500,8,301,'od'),(5237,400,8,302,'saving'),(5238,350,8,303,'saving'),(5239,600,8,304,'credit'),(5240,500,8,305,'od'),(5241,290,9,301,'saving'),(5242,350,9,302,'od'),(5243,260,9,303,'saving'),(5244,390,9,304,'credit'),(5245,410,9,305,'saving'),(5246,510,10,301,'od'),(5247,580,10,302,'saving'),(5248,340,10,303,'credit'),(5249,310,10,304,'saving'),(5250,190,10,305,'credit');
/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-29 18:00:16
