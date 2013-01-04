
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
DROP TABLE IF EXISTS `workbench_moderation_node_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workbench_moderation_node_history` (
  `hid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Node history entry key.',
  `vid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Node revision id. Foreign key to node_revision',
  `nid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Node id. Foreign key to node',
  `from_state` varchar(255) DEFAULT NULL COMMENT 'The old moderation state of the node',
  `state` varchar(255) DEFAULT NULL COMMENT 'The current moderation state of the node.',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The user id of the moderator who made the change. Foreign key to users.',
  `stamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The timestamp of the change.',
  `published` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicated the live revision of a node.',
  `current` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicated the current revision of a node.',
  PRIMARY KEY (`hid`),
  KEY `nid` (`nid`),
  KEY `vid` (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `workbench_moderation_node_history` WRITE;
/*!40000 ALTER TABLE `workbench_moderation_node_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `workbench_moderation_node_history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

