
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
DROP TABLE IF EXISTS `flag_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flag_types` (
  `fid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'The unqiue flag ID as defined for the flag in flags.',
  `type` varchar(32) NOT NULL DEFAULT '' COMMENT 'The types (usually from node_type) that can be flagged by this fid.',
  KEY `fid` (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The types (usually as defined in node_type) that are...';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `flag_types` WRITE;
/*!40000 ALTER TABLE `flag_types` DISABLE KEYS */;
INSERT INTO `flag_types` VALUES (2,'college_profile');
INSERT INTO `flag_types` VALUES (2,'news');
INSERT INTO `flag_types` VALUES (2,'newsletter_component');
INSERT INTO `flag_types` VALUES (2,'person');
INSERT INTO `flag_types` VALUES (2,'press_release');
INSERT INTO `flag_types` VALUES (2,'resource');
/*!40000 ALTER TABLE `flag_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

