-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: ms17
-- ------------------------------------------------------
-- Server version	10.1.34-MariaDB

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
-- Table structure for table `nimekiri`
--

DROP TABLE IF EXISTS `nimekiri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nimekiri` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `Eesnimi` varchar(30) NOT NULL,
  `Perenimi` varchar(30) NOT NULL,
  `id_code` char(11) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nimekiri`
--

LOCK TABLES `nimekiri` WRITE;
/*!40000 ALTER TABLE `nimekiri` DISABLE KEYS */;
INSERT INTO `nimekiri` VALUES (10,'Aldar','P„rnoja','54878965124','2018-09-11 10:43:21'),(12,'Aldar','P„rnoja','15986487512','2018-09-11 11:01:49'),(13,'Endel','EesvÃ¤rav','12345678912','2018-09-11 12:54:18'),(14,'Endel','EesvÃ¤rav','12345678912','2018-09-11 12:54:43'),(16,'Endel','EesvÃ¤rav','12345678912','2018-09-18 09:58:49'),(17,'Endel','EesvÃ¤rav','12345678912','2018-09-18 10:09:11'),(18,'Endel','EesvÃ¤rav','12345678912','2018-09-18 10:35:12'),(19,'Endel','EesvÃ¤rav','12345678912','2018-09-18 10:52:36'),(20,'Endel','EesvÃ¤rav','12345678912','2018-09-18 11:02:20'),(21,'Endel','EesvÃ¤rav','12345678912','2018-09-18 11:03:34'),(22,'Endel','EesvÃ¤rav','12345678912','2018-09-18 11:03:37'),(23,'Endel','EesvÃ¤rav','12345678912','2018-09-18 12:36:45');
/*!40000 ALTER TABLE `nimekiri` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-02 13:02:25
