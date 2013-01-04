
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
DROP TABLE IF EXISTS `metatag_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metatag_config` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The primary identifier for a metatag configuration set.',
  `instance` varchar(255) NOT NULL DEFAULT '' COMMENT 'The machine-name of the configuration, typically entity-type:bundle.',
  `config` longblob NOT NULL COMMENT 'Serialized data containing the meta tag configuration.',
  PRIMARY KEY (`cid`),
  UNIQUE KEY `instance` (`instance`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Storage of meta tag configuration and defaults.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `metatag_config` WRITE;
/*!40000 ALTER TABLE `metatag_config` DISABLE KEYS */;
INSERT INTO `metatag_config` VALUES (1,'node:page','a:0:{}');
INSERT INTO `metatag_config` VALUES (2,'node:hidden_page','a:2:{s:11:\"description\";a:1:{s:5:\"value\";s:0:\"\";}s:6:\"robots\";a:1:{s:5:\"value\";a:5:{s:7:\"noindex\";s:7:\"noindex\";s:8:\"nofollow\";s:8:\"nofollow\";s:9:\"noarchive\";i:0;s:9:\"nosnippet\";i:0;s:5:\"noodp\";i:0;}}}');
INSERT INTO `metatag_config` VALUES (3,'node:newsletter_component','a:1:{s:6:\"robots\";a:1:{s:5:\"value\";a:5:{s:7:\"noindex\";s:7:\"noindex\";s:8:\"nofollow\";s:8:\"nofollow\";s:9:\"noarchive\";s:9:\"noarchive\";s:9:\"nosnippet\";i:0;s:5:\"noodp\";i:0;}}}');
/*!40000 ALTER TABLE `metatag_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

