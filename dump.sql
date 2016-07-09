-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: samridhi
-- ------------------------------------------------------
-- Server version	5.7.9-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mapping`
--

DROP TABLE IF EXISTS `mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mapping` (
  `id` int(11) DEFAULT NULL,
  `registration_id` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapping`
--

LOCK TABLES `mapping` WRITE;
/*!40000 ALTER TABLE `mapping` DISABLE KEYS */;
INSERT INTO `mapping` VALUES (2,'5467ab678234r');
/*!40000 ALTER TABLE `mapping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `father` varchar(20) DEFAULT NULL,
  `father_occupation` varchar(50) DEFAULT NULL,
  `mother` varchar(20) DEFAULT NULL,
  `mother_occupation` varchar(50) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `adhar_card_number` varchar(12) DEFAULT NULL,
  `location` text,
  `living_period` int(11) DEFAULT NULL,
  `school_before` char(1) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `alt_contact_number` varchar(20) DEFAULT NULL,
  `registration_id` varchar(13) NOT NULL,
  PRIMARY KEY (`registration_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('Rozelle','Jain','2016-07-12','F','ABC','BusinessMan','PQR','HouseWife','Hindi',23456,'23456723','Bangalore',30,'n','34567890','23456789','5467ab678234r');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey`
--

DROP TABLE IF EXISTS `survey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `father` varchar(20) DEFAULT NULL,
  `father_occupation` varchar(50) DEFAULT NULL,
  `mother` varchar(20) DEFAULT NULL,
  `mother_occupation` varchar(50) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `adhar_card_number` varchar(12) DEFAULT NULL,
  `location` text,
  `living_period` int(11) DEFAULT NULL,
  `school_before` char(1) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `alt_contact_number` varchar(20) DEFAULT NULL,
  `flag` binary(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey`
--

LOCK TABLES `survey` WRITE;
/*!40000 ALTER TABLE `survey` DISABLE KEYS */;
INSERT INTO `survey` VALUES (2,'Rozelle','ttt','2016-07-12','F','ABC','BusinessMan','PQR','HouseWife','Hindi',23456,'34567','Bangalore',30,'y','3489567','455657','0');
/*!40000 ALTER TABLE `survey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `survey_not_updated`
--

DROP TABLE IF EXISTS `survey_not_updated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `survey_not_updated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `father` varchar(20) DEFAULT NULL,
  `father_occupation` varchar(50) DEFAULT NULL,
  `mother` varchar(20) DEFAULT NULL,
  `mother_occupation` varchar(50) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `income` int(11) DEFAULT NULL,
  `adhar_card_number` varchar(12) DEFAULT NULL,
  `location` text,
  `living_period` int(11) DEFAULT NULL,
  `school_before` char(1) DEFAULT NULL,
  `contact_number` varchar(20) DEFAULT NULL,
  `alt_contact_number` varchar(20) DEFAULT NULL,
  `flag` binary(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `survey_not_updated`
--

LOCK TABLES `survey_not_updated` WRITE;
/*!40000 ALTER TABLE `survey_not_updated` DISABLE KEYS */;
INSERT INTO `survey_not_updated` VALUES (1,'Rozelle','Jain','2016-07-12','F','ABC','BusinessMan','PQR','HouseWife','Hindi',23456,'23456723','Bangalore',30,'y','34567890','23456789','0'),(2,'Rozelle','Jain','2016-07-12','F','ABC','BusinessMan','PQR','HouseWife','Hindi',23456,'23456723','Bangalore',30,'n','34567890','23456789','0'),(15,'xdfghjn','wrte5yu','2016-06-09','M','rctfvygbh','e','fghn','xgbhnjmk','d',345,'23456723','gyjgi',34,'y','3489567','455657','0');
/*!40000 ALTER TABLE `survey_not_updated` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-10  3:53:15
