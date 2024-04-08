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
-- Table structure for table `customer_individual`
--

DROP TABLE IF EXISTS `customer_individual`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_individual` (
  `customer_id` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `contact_info` text,
  `purchase_history` text,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_individual`
--

LOCK TABLES `customer_individual` WRITE;
/*!40000 ALTER TABLE `customer_individual` DISABLE KEYS */;
INSERT INTO `customer_individual` VALUES (1,'Alex','Joe','joei@gmail.com','Purchased'),(2,'Jhonny','Mahinay','jhonny@gmail.com','Purchased'),(3,'Abel','Nacasi','abel@gmail.com','Cancelled'),(4,'Pablo','Job','Pablo@gmail.com','Purchased'),(5,'Annah','Lynn','lynlyn@gmail.com','Purchased'),(6,'Jack','Cole','jacky@gmail.com','Cancelled');
/*!40000 ALTER TABLE `customer_individual` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `discount` (
  `promotion_id` int NOT NULL,
  `type` varchar(50) DEFAULT NULL,
  `discount` decimal(5,2) DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`promotion_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount`
--

LOCK TABLES `discount` WRITE;
/*!40000 ALTER TABLE `discount` DISABLE KEYS */;
INSERT INTO `discount` VALUES (1,'Percentage',10.00,123,'Tools'),(2,'Fixed',5.00,456,'Building Materials'),(3,'Percentage',15.00,789,'Plumbing'),(4,'Fixed',7.00,12,'Electrical'),(5,'Percentage',20.00,345,'Tools'),(6,'Fixed',3.00,678,'Building Materials'),(7,'Percentage',12.00,901,'Plumbing'),(8,'Fixed',6.00,234,'Electrical'),(9,'Percentage',18.00,567,'Tools'),(10,'Fixed',4.00,890,'Building Materials');
/*!40000 ALTER TABLE `discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_item` (
  `order_id` int DEFAULT NULL,
  `SKU` int DEFAULT NULL,
  `quantity` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,11112222,150),(2,11112223,200),(3,11112224,100),(4,11112225,250),(5,11112226,300),(6,11112227,180),(7,11112228,120),(8,11112229,220),(9,11112230,270),(10,11112231,190),(11,11112232,160),(12,11112233,210),(13,11112234,230),(14,11112235,140),(15,11112236,260),(16,11112237,280),(17,11112238,170),(18,11112239,240),(19,11112240,320),(20,11112241,290),(1,11112222,150),(2,11112223,200),(3,11112224,100),(4,11112225,250),(5,11112226,300),(6,11112227,180),(7,11112228,120),(8,11112229,220),(9,11112230,270),(10,11112231,190),(11,11112232,160),(12,11112233,210),(13,11112234,230),(14,11112235,140),(15,11112236,260),(16,11112237,280),(17,11112238,170),(18,11112239,240),(19,11112240,320),(20,11112241,290);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `SKU` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `specifications` text,
  `category` varchar(50) DEFAULT NULL,
  `subcategory` varchar(50) DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `unit_cost` decimal(10,2) DEFAULT NULL,
  `retail_price` decimal(10,2) DEFAULT NULL,
  `stock_level` int DEFAULT NULL,
  `min_stock_level` int DEFAULT NULL,
  `max_stock_level` int DEFAULT NULL,
  PRIMARY KEY (`SKU`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (11112222,'Alex','flexible metallic conductor','Physical dimensions: 10x5x2 cm, Weight: 50 grams, Materials: Metal','Electronics','Cables',1,10.00,15.00,100,20,200),(11112223,'Jhonny','flexible metallic conductor','Physical dimensions: 15x3x3 cm, Weight: 70 grams, Materials: Metal','Tools','Hammers',1,12.00,18.00,80,15,150),(11112224,'Abel','flexible metallic conductor','Physical dimensions: 200x10x5 cm, Weight: 500 grams, Materials: Wood','Building Materials','Lumber',1,8.00,14.00,120,25,180),(11112225,'Pablo','flexible metallic conductor','Physical dimensions: 5x5x5 cm, Weight: 100 grams, Materials: Plastic','Plumbing','Pipes',1,15.00,25.00,90,10,120),(11112226,'Annah','flexible metallic conductor','Physical dimensions: 100x1x1 cm, Weight: 30 grams, Materials: Metal','Electrical','Wires',3,20.00,30.00,70,5,100),(11112227,'Jack','flexible metallic conductor','Physical dimensions: 20x2x2 cm, Weight: 40 grams, Materials: Metal','Tools','Nails',1,9.00,12.00,110,20,160),(11112228,'John','flexible metallic conductor','Physical dimensions: 150x10x5 cm, Weight: 300 grams, Materials: Wood','Building Materials','Lumber',1,8.00,14.00,100,20,200),(11112229,'Emma','flexible metallic conductor','Physical dimensions: 10x10x10 cm, Weight: 200 grams, Materials: Plastic','Plumbing','Pipes',2,15.00,25.00,80,10,150),(11112230,'Oliver','flexible metallic conductor','Physical dimensions: 50x1x1 cm, Weight: 20 grams, Materials: Metal','Electrical','Wires',1,20.00,30.00,90,5,120),(11112231,'Samantha','flexible metallic conductor','Physical dimensions: 15x4x4 cm, Weight: 60 grams, Materials: Metal','Tools','Hammers',1,12.00,18.00,70,15,130),(11112232,'Michael','flexible metallic conductor','Physical dimensions: 30x3x3 cm, Weight: 80 grams, Materials: Wood','Building Materials','Nails',1,9.00,12.00,120,20,180),(11112233,'Emily','flexible metallic conductor','Physical dimensions: 8x8x8 cm, Weight: 150 grams, Materials: Plastic','Plumbing','Pipes',2,15.00,25.00,100,10,160),(11112234,'David','flexible metallic conductor','Physical dimensions: 70x1x1 cm, Weight: 25 grams, Materials: Metal','Electrical','Wires',1,20.00,30.00,80,5,130),(11112235,'Jennifer','flexible metallic conductor','Physical dimensions: 25x2x2 cm, Weight: 45 grams, Materials: Metal','Tools','Nails',3,9.00,12.00,90,15,140),(11112236,'Robert','flexible metallic conductor','Physical dimensions: 180x10x5 cm, Weight: 400 grams, Materials: Wood','Building Materials','Lumber',1,8.00,14.00,110,20,190),(11112237,'Jessica','flexible metallic conductor','Physical dimensions: 7x7x7 cm, Weight: 120 grams, Materials: Plastic','Plumbing','Pipes',3,15.00,25.00,70,10,130),(11112238,'Christopher','flexible metallic conductor','Physical dimensions: 60x1x1 cm, Weight: 35 grams, Materials: Metal','Electrical','Wires',1,20.00,30.00,120,5,150),(11112239,'Amanda','flexible metallic conductor','Physical dimensions: 18x4x4 cm, Weight: 55 grams, Materials: Metal','Tools','Hammers',1,12.00,18.00,100,15,160),(11112240,'Matthew','flexible metallic conductor','Physical dimensions: 40x3x3 cm, Weight: 90 grams, Materials: Wood','Building Materials','Nails',3,9.00,12.00,130,20,200),(11112241,'Elizabeth','flexible metallic conductor','Physical dimensions: 30x5x5 cm, Weight: 200 grams, Materials: Plastic','Plumbing','Pipes',2,15.00,25.00,110,10,170),(11112242,'Daniel','flexible metallic conductor','Physical dimensions: 80x1x1 cm, Weight: 40 grams, Materials: Metal','Electrical','Wires',2,20.00,30.00,130,5,160),(11112243,'Sarah','flexible metallic conductor','Physical dimensions: 20x2x2 cm, Weight: 70 grams, Materials: Metal','Tools','Nails',1,9.00,12.00,80,15,170),(11112244,'William','flexible metallic conductor','Physical dimensions: 160x10x5 cm, Weight: 350 grams, Materials: Wood','Building Materials','Lumber',3,8.00,14.00,140,20,210),(11112245,'Ashley','flexible metallic conductor','Physical dimensions: 50x5x5 cm, Weight: 180 grams, Materials: Plastic','Plumbing','Pipes',2,15.00,25.00,120,10,180),(11112246,'Joseph','flexible metallic conductor','Physical dimensions: 22x1x1 cm, Weight: 45 grams, Materials: Metal','Electrical','Wires',1,20.00,30.00,140,5,170),(11112247,'Lauren','flexible metallic conductor','Physical dimensions: 10x5x3 cm, Weight: 80 grams, Materials: Metal','Building Materials','Nails',1,6.00,10.00,150,30,250);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_order`
--

DROP TABLE IF EXISTS `purchase_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_order` (
  `order_id` int NOT NULL,
  `supplier_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `agreed_price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_order`
--

LOCK TABLES `purchase_order` WRITE;
/*!40000 ALTER TABLE `purchase_order` DISABLE KEYS */;
INSERT INTO `purchase_order` VALUES (1,202220269,123,150,15.00),(2,202220269,456,200,18.00),(3,202220269,789,100,14.00),(4,202280245,12,250,22.50),(5,202220269,345,300,25.00),(6,202220269,678,180,12.00),(7,202280243,901,120,12.00),(8,202220269,234,220,25.00),(9,202220269,567,270,30.00),(10,202220269,890,190,15.00),(11,202280243,890,160,10.00),(12,202220269,890,210,25.00),(13,202280245,901,230,30.00),(14,202220269,901,140,10.00),(15,202280245,123,260,14.00),(16,202280243,456,280,25.00),(17,202280243,456,170,30.00),(18,202220269,12,240,15.00),(19,202280245,678,320,10.00),(20,202280243,678,290,25.00);
/*!40000 ALTER TABLE `purchase_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_history`
--

DROP TABLE IF EXISTS `sales_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_history` (
  `sale_id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  `sale_date` datetime DEFAULT NULL,
  PRIMARY KEY (`sale_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_history`
--

LOCK TABLES `sales_history` WRITE;
/*!40000 ALTER TABLE `sales_history` DISABLE KEYS */;
INSERT INTO `sales_history` VALUES (1,1,'2024-04-07 10:30:00'),(2,2,'2024-04-07 11:45:00'),(3,3,'2024-04-07 13:15:00'),(4,4,'2024-04-08 09:00:00'),(5,5,'2024-04-08 10:15:00'),(6,6,'2024-04-08 12:30:00'),(7,7,'2024-04-08 14:45:00'),(8,8,'2024-04-08 16:00:00'),(9,9,'2024-04-09 08:30:00'),(10,10,'2024-04-09 09:45:00'),(11,11,'2024-04-09 11:00:00'),(12,12,'2024-04-09 13:15:00'),(13,13,'2024-04-09 14:30:00'),(14,14,'2024-04-10 08:00:00'),(15,15,'2024-04-10 09:15:00'),(16,16,'2024-04-10 10:30:00'),(17,17,'2024-04-10 11:45:00'),(18,18,'2024-04-10 13:00:00'),(19,19,'2024-04-10 14:15:00'),(20,20,'2024-04-10 15:30:00');
/*!40000 ALTER TABLE `sales_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplier_id` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `contact_info` text,
  `payment_method` text,
  `address` text,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (202220269,'John','Ustares','john@gmail.com','cash','Puerto Princesa City, Tinuguiban'),(202280243,'Mark','Jardin','mark@gmail.com','cash','Puerto Princesa City, Brgy San Pedro'),(202280245,'Drew','Wakefield','drew@gmail.com','bank transfer','Puerto Princesa City, Brgy San Jose');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-08 15:30:54
