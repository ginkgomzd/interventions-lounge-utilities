
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
DROP TABLE IF EXISTS `wysiwyg_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wysiwyg_user` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The users.uid of the user.',
  `format` varchar(255) DEFAULT NULL COMMENT 'The filter_format.format of the text format.',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Boolean indicating whether the format is enabled by default.',
  KEY `uid` (`uid`),
  KEY `format` (`format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores user preferences for wysiwyg profiles.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wysiwyg_user` WRITE;
/*!40000 ALTER TABLE `wysiwyg_user` DISABLE KEYS */;
INSERT INTO `wysiwyg_user` VALUES (15,'filtered_html',1);
INSERT INTO `wysiwyg_user` VALUES (59,'filtered_html',1);
INSERT INTO `wysiwyg_user` VALUES (60,'filtered_html',1);
INSERT INTO `wysiwyg_user` VALUES (60,'full_html',1);
INSERT INTO `wysiwyg_user` VALUES (33,'filtered_html',1);
INSERT INTO `wysiwyg_user` VALUES (33,'full_html',1);
INSERT INTO `wysiwyg_user` VALUES (13,'filtered_html',1);
INSERT INTO `wysiwyg_user` VALUES (13,'full_html',1);
INSERT INTO `wysiwyg_user` VALUES (1,'filtered_html',1);
INSERT INTO `wysiwyg_user` VALUES (1,'full_html',1);
INSERT INTO `wysiwyg_user` VALUES (9,'filtered_html',1);
INSERT INTO `wysiwyg_user` VALUES (9,'full_html',1);
INSERT INTO `wysiwyg_user` VALUES (10,'filtered_html',1);
INSERT INTO `wysiwyg_user` VALUES (10,'full_html',1);
INSERT INTO `wysiwyg_user` VALUES (86,'filtered_html',1);
INSERT INTO `wysiwyg_user` VALUES (16,'filtered_html',1);
INSERT INTO `wysiwyg_user` VALUES (16,'full_html',1);
/*!40000 ALTER TABLE `wysiwyg_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

