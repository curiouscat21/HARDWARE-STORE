-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: hardware store
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `customer_wholesale`
--

DROP TABLE IF EXISTS `customer_wholesale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_wholesale` (
  `customer_id` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `contact_info` text,
  `purchase_history` text,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_wholesale`
--

LOCK TABLES `customer_wholesale` WRITE;
/*!40000 ALTER TABLE `customer_wholesale` DISABLE KEYS */;
INSERT INTO `customer_wholesale` VALUES (1,'John','Job','Pablo@gmail.com','Purchased'),(2,'Emma','Lynn','lynlyn@gmail.com','Purchased'),(3,'Oliver','Cole','jacky@gmail.com','Cancelled'),(4,'Samantha','Smith','sam.smith@example.com','Purchased'),(5,'Michael','Johnson','m.johnson@example.com','Purchased'),(6,'Emily','Davis','emilyd@example.com','Purchased'),(7,'David','Brown','david.b@example.com','Cancelled'),(8,'Jennifer','Martinez','jen.martinez@example.com','Purchased'),(9,'Robert','Taylor','rtaylor@example.com','Purchased'),(10,'Jessica','Anderson','j.anderson@example.com','Purchased'),(11,'Christopher','Wilson','chris.w@example.com','Cancelled'),(12,'Amanda','Thomas','amanda.t@example.com','Purchased'),(13,'Matthew','Hernandez','mattyh@example.com','Purchased'),(14,'Elizabeth','Young','elyoung@example.com','Purchased'),(15,'Daniel','Walker','dwalker@example.com','Cancelled'),(16,'Sarah','King','sarahk@example.com','Purchased'),(17,'William','White','will.white@example.com','Purchased'),(18,'Ashley','Scott','ash.scott@example.com','Purchased'),(19,'Joseph','Green','jgreen@example.com','Cancelled'),(20,'Lauren','Evans','lauren.e@example.com','Purchased');
/*!40000 ALTER TABLE `customer_wholesale` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-08 13:58:17
