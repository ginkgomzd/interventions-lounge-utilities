
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
DROP TABLE IF EXISTS `flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flags` (
  `fid` smallint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The unique ID for this particular flag.',
  `content_type` varchar(32) NOT NULL DEFAULT '' COMMENT 'The flag type, such as one of "node", "comment", or "user".',
  `name` varchar(32) DEFAULT '' COMMENT 'The machine-name for this flag.',
  `title` varchar(255) DEFAULT '' COMMENT 'The human-readable title for this flag.',
  `global` tinyint(4) DEFAULT '0' COMMENT 'Whether this flag state should act as a single toggle to all users across the site.',
  `options` text COMMENT 'The options and configuration of this flag.',
  PRIMARY KEY (`fid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='All available flags in the system.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `flags` WRITE;
/*!40000 ALTER TABLE `flags` DISABLE KEYS */;
INSERT INTO `flags` VALUES (2,'node','newsletter','Newsletter',1,'a:14:{s:10:\"flag_short\";s:22:\"Add to Newsletter List\";s:9:\"flag_long\";s:0:\"\";s:12:\"flag_message\";s:0:\"\";s:12:\"unflag_short\";s:27:\"Remove from Newsletter List\";s:11:\"unflag_long\";s:0:\"\";s:14:\"unflag_message\";s:0:\"\";s:18:\"unflag_denied_text\";s:0:\"\";s:9:\"link_type\";s:6:\"toggle\";s:5:\"roles\";a:2:{s:4:\"flag\";a:2:{i:0;s:1:\"3\";i:1;s:1:\"4\";}s:6:\"unflag\";a:2:{i:0;s:1:\"3\";i:1;s:1:\"4\";}}s:12:\"show_on_page\";i:1;s:14:\"show_on_teaser\";i:1;s:12:\"show_on_form\";i:1;s:13:\"access_author\";s:0:\"\";s:4:\"i18n\";i:0;}');
/*!40000 ALTER TABLE `flags` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

