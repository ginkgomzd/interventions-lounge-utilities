
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
DROP TABLE IF EXISTS `nodequeue_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodequeue_types` (
  `qid` bigint(20) unsigned NOT NULL COMMENT 'Primary key for nodequeue_queue',
  `type` varchar(255) DEFAULT NULL COMMENT 'Node Type',
  KEY `qid` (`qid`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines the node types which are allowed in each queue';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `nodequeue_types` WRITE;
/*!40000 ALTER TABLE `nodequeue_types` DISABLE KEYS */;
INSERT INTO `nodequeue_types` VALUES (3,'resource');
INSERT INTO `nodequeue_types` VALUES (4,'resource');
INSERT INTO `nodequeue_types` VALUES (5,'resource');
INSERT INTO `nodequeue_types` VALUES (7,'resource');
INSERT INTO `nodequeue_types` VALUES (8,'slideshow_image');
INSERT INTO `nodequeue_types` VALUES (9,'panel');
INSERT INTO `nodequeue_types` VALUES (6,'organization');
INSERT INTO `nodequeue_types` VALUES (11,'resource');
INSERT INTO `nodequeue_types` VALUES (10,'panel');
INSERT INTO `nodequeue_types` VALUES (10,'resource');
INSERT INTO `nodequeue_types` VALUES (12,'news');
INSERT INTO `nodequeue_types` VALUES (12,'press_release');
INSERT INTO `nodequeue_types` VALUES (2,'page');
INSERT INTO `nodequeue_types` VALUES (2,'article');
INSERT INTO `nodequeue_types` VALUES (2,'news');
INSERT INTO `nodequeue_types` VALUES (2,'press_release');
INSERT INTO `nodequeue_types` VALUES (2,'resource');
INSERT INTO `nodequeue_types` VALUES (13,'page');
INSERT INTO `nodequeue_types` VALUES (13,'hidden_page');
INSERT INTO `nodequeue_types` VALUES (13,'press_release');
INSERT INTO `nodequeue_types` VALUES (13,'resource');
/*!40000 ALTER TABLE `nodequeue_types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

