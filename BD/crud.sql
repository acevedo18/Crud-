-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: crud
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `precio` int NOT NULL,
  `clave_producto` int NOT NULL,
  `prod_temporada` varchar(10) DEFAULT 'FALSE',
  `imagen_link` varchar(100) DEFAULT NULL,
  `cantidad_producto` varchar(45) DEFAULT NULL,
  `tipo_producto` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Green Chilli',15,1,'FALSE','https://images.indianexpress.com/2019/11/green-chilli_759.jpg','100 gms','vegetables'),(2,'Ash Gourd',55,2,'FALSE','/product_images/ashgourd.jpeg','1 kg','vegetables'),(3,'Beans',37,3,'FALSE','/product_images/beans.jpeg','1 kg','vegetables'),(4,'Beetroot',90,4,'FALSE','/product_images/Beetroot.jpeg','1 kg','vegetables'),(5,'Cabbage',42,5,'FALSE','/product_images/cabbage.jpeg','1 kg','vegetables'),(6,'Carrot',43,6,'TRUE','/product_images/carrot.jpeg','1 kg','vegetables'),(7,'Cauliflower',38,7,'FALSE','/product_images/Cauliflower.jpeg','1 kg','vegetables'),(8,'Chilli',10,8,'FALSE','/product_images/Chilli.jpeg','100 gms','vegetables'),(9,'Corn',30,9,'TRUE','/product_images/Corn.jpeg','1 Piece','vegetables'),(10,'Cucumber',55,10,'FALSE','/product_images/Cucumber.jpeg','1 kg','vegetables'),(11,'Drumstick',10,11,'FALSE','/product_images/Drumstick.jpeg','1 Piece','vegetables'),(12,'Garlic',55,12,'FASLE','/product_images/Garlic.jpeg','100 gms','vegetables'),(13,'Ginger',30,13,'FALSE','/product_images/Ginger.jpeg','100 gms','vegetables'),(14,'Jackfruit',95,14,'FALSE','/product_images/Jackfruit.jpeg','1 Piece','vegetables'),(15,'Ladies finger',30,15,'FALSE','/product_images/Ladiesfinger.jpeg','1 kg','vegetables'),(16,'Onion',120,16,'FALSE','/product_images/onion.jpeg','1 kg','vegetables'),(17,'Potato',80,17,'FALSE','/product_images/potato.jpeg','1 kg','vegetables'),(18,'Radish',55,18,'FALSE','/product_images/radish.jpeg','1 kg','vegetables'),(19,'Tamarind',43,19,'FALSE','/product_images/Tamarind.jpeg','1 kg','vegetables'),(20,'Tomato',23,20,'FALSE','/product_images/tomato.jpeg','1 kg','vegetables'),(21,'Apple',150,21,'FALSE','/product_images/apple.jpeg','1 kg','fruits'),(22,'Apricot',55,22,'FALSE','/product_images/Apricot.jpeg','1 kg','fruits'),(23,'Banana',20,23,'FALSE','/product_images/Banana.jpeg','2 Pieces','fruits'),(24,'Blueberry',55,24,'FALSE','/product_images/Blueberry.jpeg','1 kg','fruits'),(25,'Coconut',20,25,'FALSE','/product_images/Coconut.jpeg','1 Piece','fruits'),(26,'Custard Apple',90,26,'FALSE','/product_images/CustardApple.jpeg','1 kg','fruits'),(27,'Dates',50,27,'FALSE','/product_images/Dates.jpeg','100 gms','fruits'),(28,'Fig',30,28,'FALSE','/product_images/Fig.jpeg','1 kg','fruits'),(29,'Gooseberry',40,29,'FALSE','/product_images/Gooseberry.jpeg','1 kg','fruits'),(30,'Guava',50,30,'FALSE','/product_images/Guava.jpeg','1 kg','fruits'),(31,'Lemon',5,31,'FALSE','/product_images/Lemon.jpeg','1 Piece','fruits'),(32,'Lychee',40,32,'FALSE','/product_images/Lychee.jpeg','1 kg','fruits'),(33,'Mango',120,33,'TRUE','/product_images/Mango.jpeg','1 kg','fruits'),(34,'Orange',140,34,'FALSE','/product_images/orange.jpeg','1 kg','fruits'),(35,'Papaya',30,35,'TRUE','/product_images/Papaya.jpeg','1 Piece','fruits'),(36,'Pear',30,36,'FALSE','/product_images/Pear.jpeg','1 kg','fruits'),(38,'Pomogranate',140,38,'FALSE','/product_images/Pomogranate.jpeg','1 kg','fruits'),(39,'Sapota',60,39,'TRUE','/product_images/Sapota.jpeg','1 kg','fruits'),(40,'Star fruit',50,40,'FALSE','/product_images/Starfruit.jpeg','1 Piece','fruits'),(41,'Sweetlime',140,41,'FALSE','/product_images/Sweetlime.jpeg','1 kg','fruits'),(42,'Watermelon',50,42,'TRUE','/product_images/Watermelon.jpeg','1 Piece','fruits');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-11 15:14:34
