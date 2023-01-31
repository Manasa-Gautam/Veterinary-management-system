-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: ovcsdb
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbladmin` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `uname` varchar(100) NOT NULL,
  `upass` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `added_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'admin','admin@123','admin@gmail.com','2022-10-13 21:01:25');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblanimal`
--

DROP TABLE IF EXISTS `tblanimal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblanimal` (
  `animal_id` varchar(100) NOT NULL,
  `animal_type` varchar(45) DEFAULT NULL,
  `animal_name` varchar(45) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `image` varchar(400) DEFAULT NULL,
  `image_path` varchar(400) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL,
  `farmer_name` varchar(100) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`animal_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblanimal`
--

LOCK TABLES `tblanimal` WRITE;
/*!40000 ALTER TABLE `tblanimal` DISABLE KEYS */;
INSERT INTO `tblanimal` VALUES ('A20221012043344','Mammals','Buffalo','It a jafarabadi buffalo, Gives 10-12 litre milk per day.',123000,'buffalo.JPG','F:/workspace/OnlineVeternaryClinicSystem/WebContent/uploads/buffalo.JPG','7276763516','Arun Shivaji Pandit',0,'2022-10-12 11:04:56','2022-10-14 12:20:18');
/*!40000 ALTER TABLE `tblanimal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblbuyrequest`
--

DROP TABLE IF EXISTS `tblbuyrequest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbuyrequest` (
  `request_id` int NOT NULL AUTO_INCREMENT,
  `client_name` varchar(100) DEFAULT NULL,
  `client_mobile` varchar(100) DEFAULT NULL,
  `animal_id` varchar(100) DEFAULT NULL,
  `farmer_name` varchar(100) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbuyrequest`
--

LOCK TABLES `tblbuyrequest` WRITE;
/*!40000 ALTER TABLE `tblbuyrequest` DISABLE KEYS */;
INSERT INTO `tblbuyrequest` VALUES (1,'Kishor Balasaheb Kadam','9404308673','A20221012043344','Arun Shivaji Pandit','I want to purchase this.','Pending','2022-11-28 04:57:20','2022-11-28 10:27:20');
/*!40000 ALTER TABLE `tblbuyrequest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcaptcha`
--

DROP TABLE IF EXISTS `tblcaptcha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcaptcha` (
  `captcha` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcaptcha`
--

LOCK TABLES `tblcaptcha` WRITE;
/*!40000 ALTER TABLE `tblcaptcha` DISABLE KEYS */;
INSERT INTO `tblcaptcha` VALUES ('17496');
/*!40000 ALTER TABLE `tblcaptcha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblclient`
--

DROP TABLE IF EXISTS `tblclient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblclient` (
  `client_id` varchar(100) NOT NULL,
  `client_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile_no` varchar(100) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `upass` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblclient`
--

LOCK TABLES `tblclient` WRITE;
/*!40000 ALTER TABLE `tblclient` DISABLE KEYS */;
INSERT INTO `tblclient` VALUES ('C20221009072048','Kishor Balasaheb Kadam','kadamk33@gmail.com','9404308673','kishor','kishor@123','2022-10-09 13:51:14','2022-10-14 10:47:47'),('C20221014095508','Javed Tamboli','javed.tamboli@yahoo.com','9844444444','javed','javed@123','2022-10-14 04:25:46','2022-10-14 09:55:46'),('C20221014103523','Raju Kadam','rk@gmail.com','9874562475','raju','raju@123','2022-10-14 05:05:53','2022-10-14 10:35:53');
/*!40000 ALTER TABLE `tblclient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldoctor`
--

DROP TABLE IF EXISTS `tbldoctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldoctor` (
  `doctor_id` varchar(100) NOT NULL,
  `doctor_name` varchar(100) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `doctor_fees` int DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `upass` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldoctor`
--

LOCK TABLES `tbldoctor` WRITE;
/*!40000 ALTER TABLE `tbldoctor` DISABLE KEYS */;
INSERT INTO `tbldoctor` VALUES ('D20221009081429','Sagar Prakash Kharmale','Veternary',550,'sagar','sagar@123','2022-10-09 14:44:51','2022-10-15 09:18:10'),('D20221014103442','Govind Raut','Veternary',700,'govind','govind@123','2022-10-14 05:05:09','2022-10-15 09:10:24');
/*!40000 ALTER TABLE `tbldoctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbldoctorfees`
--

DROP TABLE IF EXISTS `tbldoctorfees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbldoctorfees` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `response_id` varchar(100) DEFAULT NULL,
  `farmerName` varchar(100) DEFAULT NULL,
  `doctorName` varchar(100) DEFAULT NULL,
  `doctorFees` int DEFAULT NULL,
  `card_holder_name` varchar(100) DEFAULT NULL,
  `debit_card_number` varchar(200) DEFAULT NULL,
  `expiration_month_year` varchar(200) DEFAULT NULL,
  `cvv` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbldoctorfees`
--

LOCK TABLES `tbldoctorfees` WRITE;
/*!40000 ALTER TABLE `tbldoctorfees` DISABLE KEYS */;
INSERT INTO `tbldoctorfees` VALUES (1,'R20221015092839','Arun Shivaji Pandit','Sagar Prakash Kharmale',550,'Arun Shivaji Pandit','5874 6985 3652 1452','August 2025',555,'2022-10-15 05:31:29','2022-10-15 11:01:29');
/*!40000 ALTER TABLE `tbldoctorfees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfarmer`
--

DROP TABLE IF EXISTS `tblfarmer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblfarmer` (
  `farmer_id` varchar(100) NOT NULL,
  `farmer_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile_no` varchar(100) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `upass` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`farmer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfarmer`
--

LOCK TABLES `tblfarmer` WRITE;
/*!40000 ALTER TABLE `tblfarmer` DISABLE KEYS */;
INSERT INTO `tblfarmer` VALUES ('F20221009074043','Arun Shivaji Pandit','arun@gmail.com','9757877594','arun','arun@123','2022-10-09 14:11:37','2022-10-14 10:57:50');
/*!40000 ALTER TABLE `tblfarmer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblfoodproducts`
--

DROP TABLE IF EXISTS `tblfoodproducts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblfoodproducts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `food_name` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `amount` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblfoodproducts`
--

LOCK TABLES `tblfoodproducts` WRITE;
/*!40000 ALTER TABLE `tblfoodproducts` DISABLE KEYS */;
INSERT INTO `tblfoodproducts` VALUES (1,'Sugar Cane','Food Product',25,'Its sweet food for eating animals',700,'2022-10-13 10:52:57','2022-10-13 16:26:06'),(2,'Nutrient Seeds','Fertilizers',80,'Its an nutrient seeds',500,'2022-10-13 10:58:27','2022-10-13 16:28:27'),(3,'Cattle Feed','Food Product',50,'Its a protein feed for animal.',2450,'2022-10-13 15:37:18','2022-10-13 21:07:18'),(4,'SMARTHEART Gold Salmon & Rice Dog Food','Food Product',25,'COMFORTABLE DIGESTION',750,'2022-10-13 15:40:05','2022-10-13 21:10:05'),(5,'Calf starters','Food Product',12,'Calf starter is a mixture consisting of ground farm grains, protein feeds and minerals, vitamins and antibiotics.',840,'2022-10-13 15:41:34','2022-10-13 21:11:34');
/*!40000 ALTER TABLE `tblfoodproducts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblpayment`
--

DROP TABLE IF EXISTS `tblpayment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblpayment` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `payment` int DEFAULT NULL,
  `card_holder_name` varchar(100) DEFAULT NULL,
  `debit_card_number` varchar(200) DEFAULT NULL,
  `expiration_month_year` varchar(200) DEFAULT NULL,
  `cvv` int DEFAULT NULL,
  `client_name` varchar(100) DEFAULT NULL,
  `client_mobile` varchar(100) DEFAULT NULL,
  `animal_id` varchar(100) DEFAULT NULL,
  `animal_name` varchar(100) DEFAULT NULL,
  `farner_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblpayment`
--

LOCK TABLES `tblpayment` WRITE;
/*!40000 ALTER TABLE `tblpayment` DISABLE KEYS */;
/*!40000 ALTER TABLE `tblpayment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblresponse`
--

DROP TABLE IF EXISTS `tblresponse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblresponse` (
  `response_id` varchar(100) NOT NULL,
  `farmer_name` varchar(100) DEFAULT NULL,
  `doctor_id` varchar(100) DEFAULT NULL,
  `response` varchar(500) DEFAULT NULL,
  `fees` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`response_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblresponse`
--

LOCK TABLES `tblresponse` WRITE;
/*!40000 ALTER TABLE `tblresponse` DISABLE KEYS */;
INSERT INTO `tblresponse` VALUES ('R20221015092839','Arun Shivaji Pandit','D20221009081429','Use antibiotics.',550,1,'2022-10-15 03:59:24','2022-10-15 11:01:29'),('R20221015110735','Arun Shivaji Pandit','D20221009081429','Give injections.',550,0,'2022-10-15 05:38:01','2022-10-15 11:08:01');
/*!40000 ALTER TABLE `tblresponse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblreview`
--

DROP TABLE IF EXISTS `tblreview`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblreview` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `content` varchar(100) DEFAULT NULL,
  `ratings` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`review_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblreview`
--

LOCK TABLES `tblreview` WRITE;
/*!40000 ALTER TABLE `tblreview` DISABLE KEYS */;
INSERT INTO `tblreview` VALUES (1,'Kishor Balasaheb Kadam','Awesome veterinary online website.',4.5,'2022-10-13 16:19:29','2022-10-13 21:49:29'),(2,'Javed Tamboli','Fabulous online veterinary clinic website I have ever seen.',4.7,'2022-10-14 04:27:04','2022-10-14 09:57:04');
/*!40000 ALTER TABLE `tblreview` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblsymptoms`
--

DROP TABLE IF EXISTS `tblsymptoms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblsymptoms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `farmer_name` varchar(100) DEFAULT NULL,
  `disease_name` varchar(100) DEFAULT NULL,
  `disease_image_name` varchar(100) DEFAULT NULL,
  `disease_image_path` varchar(100) DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `animal_name` varchar(45) DEFAULT NULL,
  `animal_type` varchar(45) DEFAULT NULL,
  `doctor_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblsymptoms`
--

LOCK TABLES `tblsymptoms` WRITE;
/*!40000 ALTER TABLE `tblsymptoms` DISABLE KEYS */;
INSERT INTO `tblsymptoms` VALUES (1,'Arun Shivaji Pandit','Red color spot on skin','dog-skin.jpg','F:/workspace/OnlineVeternaryClinicSystem/WebContent/uploads/dog-skin.jpg','body skin has red spots.','Dog','Mammals','Sagar Prakash Kharmale','2022-10-14 05:03:41','2022-10-14 10:34:20');
/*!40000 ALTER TABLE `tblsymptoms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-18 11:33:05
