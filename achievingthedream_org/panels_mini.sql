
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
DROP TABLE IF EXISTS `panels_mini`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `panels_mini` (
  `pid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The primary key for uniqueness.',
  `name` varchar(255) DEFAULT NULL COMMENT 'The unique name of the mini panel.',
  `category` varchar(64) DEFAULT NULL COMMENT 'The category this mini panel appears in on the add content pane.',
  `did` int(11) DEFAULT NULL COMMENT 'The display ID of the panel.',
  `admin_title` varchar(128) DEFAULT NULL COMMENT 'The administrative title of the mini panel.',
  `admin_description` longtext COMMENT 'Administrative title of this mini panel.',
  `requiredcontexts` longtext COMMENT 'An array of required contexts.',
  `contexts` longtext COMMENT 'An array of contexts embedded into the panel.',
  `relationships` longtext COMMENT 'An array of relationships embedded into the panel.',
  PRIMARY KEY (`pid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `panels_mini` WRITE;
/*!40000 ALTER TABLE `panels_mini` DISABLE KEYS */;
/*!40000 ALTER TABLE `panels_mini` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

