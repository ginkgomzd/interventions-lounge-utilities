
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
DROP TABLE IF EXISTS `draggableviews_structure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `draggableviews_structure` (
  `dvid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The primary identifier.',
  `view_name` varchar(32) NOT NULL DEFAULT '' COMMENT 'Makes the order unique for each view.',
  `view_display` varchar(32) NOT NULL DEFAULT '' COMMENT 'Makes the order unique for each view display.',
  `args` varchar(255) DEFAULT '' COMMENT 'Makes the order unique for a given set of arguments',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'Id of the entity that we are sorting (node, user, etc.).',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT 'The order weight.',
  PRIMARY KEY (`dvid`),
  UNIQUE KEY `dvid` (`dvid`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='The table saves the order settings of an draggableview.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `draggableviews_structure` WRITE;
/*!40000 ALTER TABLE `draggableviews_structure` DISABLE KEYS */;
INSERT INTO `draggableviews_structure` VALUES (21,'newsletter_compiled','page_1','[]',1677,0);
INSERT INTO `draggableviews_structure` VALUES (22,'newsletter_compiled','page_1','[]',1686,1);
INSERT INTO `draggableviews_structure` VALUES (23,'newsletter_compiled','page_1','[]',1712,0);
INSERT INTO `draggableviews_structure` VALUES (24,'newsletter_compiled','page_1','[]',2869,0);
INSERT INTO `draggableviews_structure` VALUES (25,'newsletter_compiled','page_1','[]',3205,0);
/*!40000 ALTER TABLE `draggableviews_structure` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

