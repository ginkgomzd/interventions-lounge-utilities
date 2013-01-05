
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
DROP TABLE IF EXISTS `metatag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metatag` (
  `entity_type` varchar(32) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `entity_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The entity id this data is attached to',
  `data` longblob NOT NULL,
  PRIMARY KEY (`entity_type`,`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `metatag` WRITE;
/*!40000 ALTER TABLE `metatag` DISABLE KEYS */;
INSERT INTO `metatag` VALUES ('node',3172,'a:1:{s:6:\"robots\";a:1:{s:5:\"value\";a:6:{s:7:\"noindex\";s:7:\"noindex\";s:8:\"nofollow\";s:8:\"nofollow\";i:0;i:0;s:9:\"noarchive\";i:0;s:9:\"nosnippet\";i:0;s:5:\"noodp\";i:0;}}}');
INSERT INTO `metatag` VALUES ('node',3985,'a:1:{s:6:\"robots\";a:1:{s:5:\"value\";a:6:{s:7:\"noindex\";s:7:\"noindex\";s:8:\"nofollow\";s:8:\"nofollow\";i:0;i:0;s:9:\"noarchive\";i:0;s:9:\"nosnippet\";i:0;s:5:\"noodp\";i:0;}}}');
/*!40000 ALTER TABLE `metatag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

