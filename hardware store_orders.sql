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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `shipping_details` text,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,1,'2024-04-08 00:00:00',150.00,'Purchased','Standard Shipping'),(2,2,'2024-04-08 00:00:00',200.00,'Purchased','Express Shipping'),(3,3,'2024-04-08 00:00:00',100.00,'Cancelled','Local Pickup'),(4,4,'2024-04-08 00:00:00',250.00,'Purchased','Standard Shipping'),(5,5,'2024-04-08 00:00:00',300.00,'Purchased','Standard Shipping'),(6,6,'2024-04-08 00:00:00',200.00,'Cancelled','Express Shipping'),(7,7,'2024-04-08 00:00:00',120.00,'Purchased','Standard Shipping'),(8,8,'2024-04-08 00:00:00',180.00,'Purchased','Express Shipping'),(9,9,'2024-04-08 00:00:00',210.00,'Purchased','Standard Shipping'),(10,10,'2024-04-08 00:00:00',190.00,'Cancelled','Express Shipping'),(11,11,'2024-04-08 00:00:00',160.00,'Purchased','Standard Shipping'),(12,12,'2024-04-08 00:00:00',220.00,'Purchased','Express Shipping'),(13,13,'2024-04-08 00:00:00',230.00,'Purchased','Standard Shipping'),(14,14,'2024-04-08 00:00:00',140.00,'Cancelled','Standard Shipping'),(15,15,'2024-04-08 00:00:00',260.00,'Purchased','Express Shipping'),(16,16,'2024-04-08 00:00:00',280.00,'Purchased','Standard Shipping'),(17,17,'2024-04-08 00:00:00',170.00,'Purchased','Express Shipping'),(18,19,'2024-04-08 00:00:00',240.00,'Cancelled','Standard Shipping'),(19,19,'2024-04-08 00:00:00',320.00,'Purchased','Express Shipping'),(20,20,'2024-04-08 00:00:00',290.00,'Purchased','Standard Shipping');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
