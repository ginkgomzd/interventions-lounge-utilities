
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
DROP TABLE IF EXISTS `flag_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flag_content` (
  `fcid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The unique ID for this particular tag.',
  `fid` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'The unqiue flag ID this content has been flagged with, from flags.',
  `content_type` varchar(32) NOT NULL DEFAULT '' COMMENT 'The flag type, one of "node", "comment", "user".',
  `content_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The unique ID of the content, such as either the cid, uid, or nid.',
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The user ID by which this content was created.',
  `sid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The user’s session id as stored in the session table.',
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The UNIX time stamp representing when the flag was set.',
  PRIMARY KEY (`fcid`),
  UNIQUE KEY `fid_content_id_uid_sid` (`fid`,`content_id`,`uid`,`sid`),
  KEY `content_type_content_id` (`content_type`,`content_id`),
  KEY `content_type_uid_sid` (`content_type`,`uid`,`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='Content that has been flagged.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `flag_content` WRITE;
/*!40000 ALTER TABLE `flag_content` DISABLE KEYS */;
INSERT INTO `flag_content` VALUES (1,2,'node',1712,0,0,1333047039);
INSERT INTO `flag_content` VALUES (3,2,'node',1686,0,0,1333138047);
INSERT INTO `flag_content` VALUES (4,2,'node',1677,0,0,1333138188);
INSERT INTO `flag_content` VALUES (5,2,'node',2869,0,0,1335470000);
INSERT INTO `flag_content` VALUES (6,2,'node',3335,0,0,1340634325);
INSERT INTO `flag_content` VALUES (7,2,'node',3381,0,0,1341322888);
INSERT INTO `flag_content` VALUES (8,2,'node',3389,0,0,1341328670);
INSERT INTO `flag_content` VALUES (9,2,'node',3006,0,0,1341328712);
INSERT INTO `flag_content` VALUES (10,2,'node',3425,0,0,1342044333);
INSERT INTO `flag_content` VALUES (11,2,'node',3402,0,0,1342186823);
INSERT INTO `flag_content` VALUES (12,2,'node',3414,0,0,1342186965);
INSERT INTO `flag_content` VALUES (13,2,'node',3346,0,0,1342187335);
INSERT INTO `flag_content` VALUES (14,2,'node',3312,0,0,1342187347);
INSERT INTO `flag_content` VALUES (15,2,'node',3190,0,0,1342187429);
INSERT INTO `flag_content` VALUES (16,2,'node',3103,0,0,1342187494);
INSERT INTO `flag_content` VALUES (17,2,'node',3337,0,0,1342187537);
INSERT INTO `flag_content` VALUES (18,2,'node',3411,0,0,1342187586);
INSERT INTO `flag_content` VALUES (19,2,'node',3449,0,0,1342704410);
INSERT INTO `flag_content` VALUES (20,2,'node',3503,0,0,1343399736);
/*!40000 ALTER TABLE `flag_content` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

