
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
DROP TABLE IF EXISTS `flag_counts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flag_counts` (
  `fid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `content_type` varchar(32) NOT NULL DEFAULT '' COMMENT 'The flag type, usually one of "node", "comment", "user".',
  `content_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The unique ID of the content, usually either the cid, uid, or nid.',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The number of times this content has been flagged for this flag.',
  PRIMARY KEY (`fid`,`content_id`),
  KEY `fid_content_type` (`fid`,`content_type`),
  KEY `content_type_content_id` (`content_type`,`content_id`),
  KEY `count` (`count`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='The number of times an item has been flagged.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `flag_counts` WRITE;
/*!40000 ALTER TABLE `flag_counts` DISABLE KEYS */;
INSERT INTO `flag_counts` VALUES (2,'node',1677,1);
INSERT INTO `flag_counts` VALUES (2,'node',1686,1);
INSERT INTO `flag_counts` VALUES (2,'node',1712,1);
INSERT INTO `flag_counts` VALUES (2,'node',2869,1);
INSERT INTO `flag_counts` VALUES (2,'node',3006,1);
INSERT INTO `flag_counts` VALUES (2,'node',3103,1);
INSERT INTO `flag_counts` VALUES (2,'node',3190,1);
INSERT INTO `flag_counts` VALUES (2,'node',3312,1);
INSERT INTO `flag_counts` VALUES (2,'node',3335,1);
INSERT INTO `flag_counts` VALUES (2,'node',3337,1);
INSERT INTO `flag_counts` VALUES (2,'node',3346,1);
INSERT INTO `flag_counts` VALUES (2,'node',3381,1);
INSERT INTO `flag_counts` VALUES (2,'node',3389,1);
INSERT INTO `flag_counts` VALUES (2,'node',3402,1);
INSERT INTO `flag_counts` VALUES (2,'node',3411,1);
INSERT INTO `flag_counts` VALUES (2,'node',3414,1);
INSERT INTO `flag_counts` VALUES (2,'node',3425,1);
INSERT INTO `flag_counts` VALUES (2,'node',3449,1);
INSERT INTO `flag_counts` VALUES (2,'node',3503,1);
/*!40000 ALTER TABLE `flag_counts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

