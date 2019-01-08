-- MySQL dump 10.13  Distrib 8.0.12, for Linux (x86_64)
--
-- Host: localhost    Database: osam
-- ------------------------------------------------------
-- Server version	8.0.12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contact`
--

DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `contact` (
  `name` varchar(20) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `comment` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact`
--

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES ('naman','guptanaman008@gmail.com','nice project'),('shobhit','abc','nice project'),('rishabh','def','nice project'),('xyz','gmail','frey'),('Aishwaria Sir','def@gmail.com','Very good project'),('sonam','som@gmail.com','wow'),('Harsh','gugula@gmail.com','Nice project'),('shashank','sk.shashank26@gmail.com','very impressive');
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cq`
--

DROP TABLE IF EXISTS `cq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cq` (
  `questions` varchar(200) DEFAULT NULL,
  `option1` varchar(100) DEFAULT NULL,
  `option2` varchar(100) DEFAULT NULL,
  `option3` varchar(100) DEFAULT NULL,
  `option4` varchar(100) DEFAULT NULL,
  `correct` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cq`
--

LOCK TABLES `cq` WRITE;
/*!40000 ALTER TABLE `cq` DISABLE KEYS */;
INSERT INTO `cq` VALUES ('Which of these have lower time complexity ?','if()','for()','while()','do while()','if()'),('What is the base clas of all java classes ?','Object','Throwable','Runnable','None of the above','Object'),('What is software ?','Ai','JDBC','Java','Python','Ai'),('+ is a ..... operator','conditional','aritmetic','ternary','relational','arithmetic');
/*!40000 ALTER TABLE `cq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eq`
--

DROP TABLE IF EXISTS `eq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `eq` (
  `questions` varchar(200) DEFAULT NULL,
  `option1` varchar(20) DEFAULT NULL,
  `option2` varchar(20) DEFAULT NULL,
  `option3` varchar(20) DEFAULT NULL,
  `option4` varchar(20) DEFAULT NULL,
  `correct` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eq`
--

LOCK TABLES `eq` WRITE;
/*!40000 ALTER TABLE `eq` DISABLE KEYS */;
INSERT INTO `eq` VALUES ('What is the meaning of horrendous ?','Bad','Good','Attrocious','Clumsy','Attrocious'),('What is medeocre','good','bad','average','god','average'),('What is the meaning of extraordinary ?','smart','extra smart','intelligent','special','special'),('What is honey ?','Sweet','Salty','Attrocious','Repugnant','Sweet');
/*!40000 ALTER TABLE `eq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mq`
--

DROP TABLE IF EXISTS `mq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `mq` (
  `questions` varchar(200) DEFAULT NULL,
  `option1` varchar(100) DEFAULT NULL,
  `option2` varchar(100) DEFAULT NULL,
  `option3` varchar(100) DEFAULT NULL,
  `option4` varchar(100) DEFAULT NULL,
  `correct` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mq`
--

LOCK TABLES `mq` WRITE;
/*!40000 ALTER TABLE `mq` DISABLE KEYS */;
INSERT INTO `mq` VALUES ('What is sinQ/cosQ ?','cotQ','cosecQ','secQ','tanQ','tanQ'),('What is the sign of Angle','Q','W','E','R','Q');
/*!40000 ALTER TABLE `mq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signUp`
--

DROP TABLE IF EXISTS `signUp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `signUp` (
  `name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `secQ` varchar(255) DEFAULT NULL,
  `secAns` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signUp`
--

LOCK TABLES `signUp` WRITE;
/*!40000 ALTER TABLE `signUp` DISABLE KEYS */;
INSERT INTO `signUp` VALUES ('abhishek','abhishek001',413,'12345','What is your dog\'s name ?','tommy'),('Ayush kapil','ayushkapil45',957,'456','What is your dog\'s name ?','Naman'),('Naman Gupta','ngGupta',903,'12345','Your most secretive Word ?','R'),('priyesh  singh','Priyesh@1997',521,'Priyesh@31','What is your dog\'s name ?','bully'),('Rishav Chauhan','rishav1397',308,'123','Your most secretive Word ?','R'),('Rishabh KUmar','rk246',460,'12345678','Something that no one else knows ?','i am a superhero'),('Rushil Gupta','Rushil.2597',977,'Rushil@1234','Something that no one else knows ?','Naman forced me to sign up'),('Sebin Babu','sebin1998@gmail.com',452,'sebinsebin','Your most secretive Word ?','Floop'),('SHASHANK','SHASHANK.SK26',939,'lucifer','What is your dog\'s name ?','tommy'),('saurabh suryavanshi','suryavanshi',334,'12345678','What is your dog\'s name ?','pathania g');
/*!40000 ALTER TABLE `signUp` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-08 13:00:33
