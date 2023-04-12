-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: expensemanager
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `accountId` int NOT NULL AUTO_INCREMENT,
  `accountType` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`accountId`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'abc',1),(2,'abc',1),(3,'',1),(4,'',1),(5,'',1),(6,'',1),(7,'',1),(8,'',1),(9,'NRI',0),(10,NULL,1),(11,NULL,1),(12,NULL,1),(13,NULL,1),(14,NULL,1),(15,'Saving',0),(16,NULL,1),(17,'Recuring',0),(18,'Salary',0),(19,'Current',0),(20,'Fixed',0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `categoryId` int NOT NULL AUTO_INCREMENT,
  `categoryName` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`categoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (5,'Food',0),(6,'Entertainment',1),(7,'AutoMobile',1),(8,'Family',1),(9,'Vaction',1),(10,'Loans',0),(11,'Utilite',0),(12,'Travel',0),(13,'Personal',0),(14,'Tax',0),(15,'Other',1),(16,'roshni',1),(17,'',1),(18,'food',1),(19,'Entertainment',0),(20,'Entertainment',1),(21,NULL,1),(22,NULL,1),(23,NULL,1),(24,'nxknc',1),(25,'nxknc',1),(26,'',1),(27,'',1),(28,'',1),(29,'',1),(30,'',1),(31,'',1),(32,'Beauty',0);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `expense`
--

DROP TABLE IF EXISTS `expense`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `expense` (
  `expenseId` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `subCategoryId` int DEFAULT NULL,
  `vendorId` int DEFAULT NULL,
  `accountId` int DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`expenseId`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `expense`
--

LOCK TABLES `expense` WRITE;
/*!40000 ALTER TABLE `expense` DISABLE KEYS */;
INSERT INTO `expense` VALUES (11,'my expense',5,9,22,9,6,453,'2023-03-28','fghjkl',-1,0),(12,'My Birtday party',12,4,19,19,12,45550,'2023-04-01','totoal expense is 45550',NULL,0),(14,'Salary of 2 weeks',13,9,17,9,6,25000,'2023-04-01','Total expense is 5000',NULL,0),(15,'My Birthday party',5,9,17,9,11,40000,'2023-04-02','totoal expense is 455',NULL,0),(16,'movie',19,10,21,18,12,25000,'2023-03-29','total 5000 rs',NULL,0),(17,'movie',19,10,21,17,12,25000,'2023-03-27','Total expense is 5000',NULL,0),(18,'hbfjdbdkjgrij',19,9,22,18,12,1200,'2023-03-26','sxdcfvgbnm,.dfghjk',NULL,0),(19,'dfghjkl;',-1,-1,-1,-1,-1,852,'2023-04-20','dfghj,',NULL,0),(20,'Movie',19,11,21,4,6,1200,'2023-03-27','Total expense is 5000',NULL,0),(34,'Surat Trip',12,4,19,18,6,1200,'2023-04-10','total 500 rs',NULL,0),(35,'Movie Show',13,10,21,18,11,1200,'2023-04-10','total 500 rs',NULL,0),(36,'Mumbai Trip',12,4,19,19,6,5000,'2023-04-10','Total expense is 5000',NULL,0),(37,'xchvhj',11,4,17,15,12,497,'2023-04-10','sdu',NULL,0);
/*!40000 ALTER TABLE `expense` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `income`
--

DROP TABLE IF EXISTS `income`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `income` (
  `incomeId` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `userId` int DEFAULT NULL,
  `accountId` int DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `statusId` int DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`incomeId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `income`
--

LOCK TABLES `income` WRITE;
/*!40000 ALTER TABLE `income` DISABLE KEYS */;
INSERT INTO `income` VALUES (1,'hjkl','2023-04-01',1,9,'kl;',6,963,0),(2,'hjkl','2023-04-01',1,9,'kl;',6,963,1),(3,'Salary','2023-03-26',1,9,'today month salary',6,25000,0),(4,'qwerty','2023-04-03',NULL,9,'Total expense is 5000',11,50000,0),(5,'qwertyuiopsdfghjm,.','2023-03-30',NULL,19,'abc',12,25000,0),(6,'qwerty','2023-03-28',1,15,'sdcfvgbhnjmk,l',12,4845,0),(7,'qwe','2023-04-26',15,17,'cv',12,520,0),(8,'tttttttttttttttttttttttttttttttttttttttttttt','2023-04-09',10,19,'rrrrrrrrrrrrrrrrrrrrrr',12,25000,1),(9,'ttttttttttttttttt','2023-04-09',10,19,'rrrrrrrrrrrrrrrrrrrrrr',12,25000,1),(10,'qwertyu','2023-04-09',4,17,'total 500 rs',12,74748,0),(11,'qwert','2023-04-09',9,17,'p;kihyhwhb',11,8520,0),(12,'Riyash','2023-04-05',9,18,'asdfghjkl',12,8520,0);
/*!40000 ALTER TABLE `income` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status` (
  `statusId` int NOT NULL AUTO_INCREMENT,
  `statusName` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status`
--

LOCK TABLES `status` WRITE;
/*!40000 ALTER TABLE `status` DISABLE KEYS */;
INSERT INTO `status` VALUES (1,'cleared',1),(2,'cleared',1),(3,'cleared',1),(4,'cleared',1),(5,'cleared',1),(6,'cleared',0),(7,'',1),(8,'',1),(9,'',1),(10,'',1),(11,'uncleard',0),(12,'cleared',0);
/*!40000 ALTER TABLE `status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategory`
--

DROP TABLE IF EXISTS `subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategory` (
  `subCategoryId` int NOT NULL AUTO_INCREMENT,
  `subCategoryName` varchar(30) DEFAULT NULL,
  `categoryId` int DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`subCategoryId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategory`
--

LOCK TABLES `subcategory` WRITE;
/*!40000 ALTER TABLE `subcategory` DISABLE KEYS */;
INSERT INTO `subcategory` VALUES (3,'Snacks',5,0),(4,'AMTS',12,0),(5,'breakfast',5,0),(6,'rent',13,1),(7,'rent',13,1),(8,'rent',13,0),(9,'Dinner',5,0),(10,'Movie',19,0),(11,'Movie',19,0),(12,'rent',13,0),(13,'Bus',NULL,0),(14,'AMTS',5,0);
/*!40000 ALTER TABLE `subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `firstName` varchar(40) DEFAULT NULL,
  `lastName` varchar(40) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `role` int DEFAULT NULL,
  `otp` varchar(50) DEFAULT NULL,
  `createdAt` date DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Roshni','Patel','roshni@gmail.com','roshni@123',2,NULL,NULL),(2,'admin','admin','admin@admin.com','admin@12',1,NULL,NULL),(3,'Roshni','Patel','roshupatel24@gmail.com','242424',2,'G2PGFd',NULL),(4,'Komal','Gamit','komalgamit02@gmail.com','222222',2,'EMWaRr',NULL),(9,'Riya','Pate','','',2,'JddvL5',NULL),(10,'Riya','Patel','roshni24@gmail.com','Riya@12',2,NULL,NULL),(12,NULL,NULL,'priya@gmail.com','Priya@12',2,NULL,NULL),(13,'Priya','Patel','priya@gmail.com','Priya@123',2,NULL,NULL),(14,'5486','kmjci','roshupatel24@gmail','jhgf',2,NULL,NULL),(15,'riyu','patel','9723104904','',2,NULL,NULL),(16,'15486llmxj','ksjnnsklcn','abs@gmail.com','loj',2,NULL,NULL),(17,'Riya','Patel','riyuptl24@gmail.com','123456,123456',2,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor`
--

DROP TABLE IF EXISTS `vendor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor` (
  `vendorId` int NOT NULL AUTO_INCREMENT,
  `vendorName` varchar(50) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`vendorId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor`
--

LOCK TABLES `vendor` WRITE;
/*!40000 ALTER TABLE `vendor` DISABLE KEYS */;
INSERT INTO `vendor` VALUES (1,'Nayka',0),(2,'llenscart',1),(3,'llenscart',1),(4,'nayka',1),(5,'',1),(6,'',1),(7,'',1),(8,'',1),(9,'',1),(10,'',1),(11,'',1),(12,'nayka',1),(13,'nayka',1),(14,'',1),(15,'',1),(16,'',1),(17,'zometo',0),(18,'',1),(19,'Uber',0),(20,'lenscart',0),(21,'Inox',0),(22,'Dominnnnnnnnos',0);
/*!40000 ALTER TABLE `vendor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'expensemanager'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-12 12:18:32
