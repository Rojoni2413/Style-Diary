-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: festive_db
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `festival_tag` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Red-White Boishakhi Jamdani',5500.00,'saree1.jpeg','boishakh'),(2,'Tangail Tat Saree Classic',2500.00,'saree2.jpeg','boishakh'),(3,'Block Print Cotton Saree',1800.00,'saree3.jpeg','boishakh'),(4,'Hand-painted Alpona Saree',4500.00,'saree4.jpeg','boishakh'),(5,'Boishakhi Silk Boutique',6800.00,'saree5.jpeg','boishakh'),(6,'Traditional Garad Saree',7500.00,'saree6.jpeg','boishakh'),(7,'Linen Festive Red Saree',3200.00,'saree7.jpeg','boishakh'),(8,'Floral Boishakhi Muslin',2500.00,'saree8.jpeg','boishakh'),(9,'Red-White Festive Panjabi',2200.00,'panjabi1.jpeg','boishakh'),(10,'Boishakhi Block Kurta',1200.00,'panjabi2.jpeg','boishakh'),(11,'Cotton Comfort Panjabi',1500.00,'panjabi3.jpeg','boishakh'),(12,'Designer Boishakhi Kabli',4800.00,'panjabi4.jpeg','boishakh'),(13,'Alpona Hand Fan',250.00,'pankha1.jpeg','boishakh'),(14,'Nakshi Kantha Pankha',450.00,'pankha2.jpeg','boishakh'),(15,'Jute Crafted Pankha',350.00,'pankha3.jpeg','boishakh'),(16,'Village Heritage Fan',200.00,'pankha4.jpeg','boishakh'),(17,'Bamboo Decorative Fan',150.00,'pankha5.jpeg','boishakh'),(18,'Floral Painted Pankha',500.00,'pankha6.jpeg','boishakh'),(19,'Shitol-Pati Hand Fan',400.00,'pankha7.jpeg','boishakh'),(20,'Classic Red-White Fan',300.00,'pankha8.jpeg','boishakh'),(21,'Boishakhi Reshmi Churi Set',350.00,'bangle1.jpeg','boishakh'),(22,'Glass Bangle Festive Mix',250.00,'bangle2.jpeg','boishakh'),(23,'Terracotta Bangle Pair',500.00,'bangle3.jpeg','boishakh'),(24,'Floral Clay Bangles',450.00,'bangle4.jpeg','boishakh'),(25,'Hand-painted Wooden Bangles',650.00,'bangle5.jpeg','boishakh'),(26,'Clay Choker Necklace',850.00,'jwellery1.jpeg','boishakh'),(27,'Oxidized Silver Jwellwery',1200.00,'jwellery2.jpeg','boishakh'),(28,'Boishakhi Beaded Mala',750.00,'jwellery3.jpeg','boishakh'),(29,'Terracotta Jewellery Set',1500.00,'jwellery4.jpeg','boishakh'),(30,'Traditional Hansuli Set',2200.00,'jwellery5.jpeg','boishakh'),(31,'Luxury Lawn Embroidered 3PC',4500.00,'pak_1.jpg','eid'),(32,'Organza Party Wear 3PC',6500.00,'pak_2.jpg','eid'),(33,'Aghanoor Digital Print 3PC',3800.00,'pak_3.jpg','eid'),(34,'Chiffon Wedding Edition 3PC',8200.00,'pak_4.jpg','eid'),(35,'Cotton Silk Festive 3PC',5200.00,'pak_5.jpg','eid'),(36,'Classic Family Combo',8500.00,'family_combo1.jpg','eid'),(37,'Royal Silk Family Set',9200.00,'family_combo2.jpg','eid'),(38,'Festive Combo',7800.00,'family_combo3.jpg','eid'),(39,'Little Champ Set',1850.00,'kids_1.jpg','eid'),(40,'Tiny Angel',2800.00,'kids_2.jpg','eid'),(41,'Junior Nawab Sherwani',3500.00,'kids_3.jpg','eid'),(42,'Floral Fairy',2200.00,'kids_4.jpg','eid'),(43,'Urban Kids Denim Fusion',1500.00,'kids_5.jpg','eid');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-11  1:45:16
