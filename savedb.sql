-- MySQL dump 10.19  Distrib 10.3.34-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: exo1GT
-- ------------------------------------------------------
-- Server version	10.3.34-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `categ_id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`categ_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Thriller','2022-05-23 21:39:24'),(2,'Action','2022-05-23 21:39:24'),(3,'Romance','2022-05-23 21:39:24'),(4,'Fiction','2022-05-23 21:39:24'),(5,'Guerre','2022-05-23 21:39:24'),(6,'Politique','2022-05-23 21:39:24');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `movie_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `fk_categ` int(11) NOT NULL,
  PRIMARY KEY (`movie_id`),
  KEY `FK_CATEG_MOVIE` (`fk_categ`),
  CONSTRAINT `FK_CATEG_MOVIE` FOREIGN KEY (`fk_categ`) REFERENCES `categories` (`categ_id`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (64,' Le Parrain (1972)\"',1),(65,' The Dark Knight (2008)\"',3),(66,' Les évadés (1994)\"',4),(67,' Pulp Fiction (1994)\"',5),(68,' Les Affranchis (1990)\"',6),(69,' Les Aventuriers de l\'arche perdue (1981)\"',1),(70,' Les Dents de la mer (1975)\"',2),(71,' Le Seigneur des anneaux La Communauté de l\'anneau (2001)\"',4),(72,' Retour vers le futur (1985)\"',5),(73,' Le Parrain  (1974)\"',6),(74,' Blade Runner (1982)\"',1),(75,' Alien (1979)\"',2),(76,' Aliens (1986)\"',3),(77,' Le Seigneur des anneaux Le Retour du roi (2003)\"',4),(78,' Fight Club de David Fincher (1999)\"',5),(79,' Inception (2010)\"',6),(80,' Jurrasic Park (1993)\"',1),(81,' 2001 l\'Odyssée de l\'espace (1968)\"',3),(82,' Apocalypse Now (1979)\"',4),(83,' Le Seigneur des anneaux ( 2002)\"',5),(84,' Matrix (1999)\"',6),(85,' Terminator 2: Le Jugement dernier (1991)\"',1),(86,' Heat (1996)\"',2),(87,' Casablanca (1947)\"',4),(88,' The Big Lebowski (1998)\"',5),(89,' Seven (1996)\"',6),(90,' Taxi Driver (1976)\"',1),(91,' Usual Suspects (1995)\"',2),(92,' La Liste de Schindler (1994)\"',3),(93,' Les Gardiens de la Galaxie (2014)\"',4),(94,' Shining (1980)\"',5),(95,' Les Infiltrés (2006)\"',6),(96,' The Thing (1982)\"',1),(97,' Mad Max Fury Road (2015)\"',2),(98,' Il faut sauver le soldat Ryan (1998)\"',3),(99,' 12 hommes en colère (1957)\"',4),(100,' Eternal Sunshine of the Spotless Mind (2004)\"',5),(101,' There Will Be Blood (2008)\"',6),(102,' Gladiator (2000)\"',2),(103,' Drive (2011)\"',3),(104,' Citizen Kane (1946)\"',4),(105,' Interstellar (2014)\"',5),(106,' Le Silence des Agneaux (1991)\"',6),(107,' Trainspotting (1996)\"',1),(108,' Lawrence d\'Arabie (1963)\"',2),(109,' La vie est belle (1948)\"',3),(110,' Il était une fois dans l\'Ouest (1969)\"',4),(111,' Psychose (1960)\"',5),(112,' Sueurs Froides (1958)\"',6),(113,' Le Labyrinthe de Pan (2006)\"',1),(114,' Reservoir Dogs (1992)\"',2),(115,' Whiplash (2014)\"',3),(116,' Inglourious Basterds (2009)\"',4),(117,' E.T. (1982)\"',5),(118,' American Beauty (2000)\"',6),(119,' Forrest Gump (1994)\"',1),(120,' La La Land (2017)\"',2),(121,' Donnie Darko (2002)\"',3);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-24  0:26:03
