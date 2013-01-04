
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
DROP TABLE IF EXISTS `nodequeue_subqueue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodequeue_subqueue` (
  `sqid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Subqueue identifier',
  `qid` int(10) unsigned NOT NULL COMMENT 'Queue identifier.',
  `reference` varchar(255) DEFAULT '0',
  `title` varchar(255) DEFAULT '',
  PRIMARY KEY (`sqid`),
  KEY `qid` (`qid`),
  KEY `reference` (`reference`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='Subqueues are minor queues that inherit all of the...';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `nodequeue_subqueue` WRITE;
/*!40000 ALTER TABLE `nodequeue_subqueue` DISABLE KEYS */;
INSERT INTO `nodequeue_subqueue` VALUES (2,2,'2','Homepage Featured Items');
INSERT INTO `nodequeue_subqueue` VALUES (3,3,'3','Cutting Edge Series');
INSERT INTO `nodequeue_subqueue` VALUES (4,4,'4','2011 Promising Practices');
INSERT INTO `nodequeue_subqueue` VALUES (5,5,'5','2010 Promising Practices');
INSERT INTO `nodequeue_subqueue` VALUES (6,6,'6','Founding Partners');
INSERT INTO `nodequeue_subqueue` VALUES (7,7,'7','Principles and Practices');
INSERT INTO `nodequeue_subqueue` VALUES (8,8,'8','Homepage Carousel');
INSERT INTO `nodequeue_subqueue` VALUES (9,9,'9','ATD Newsletter');
INSERT INTO `nodequeue_subqueue` VALUES (10,10,'10','Recommended Resources');
INSERT INTO `nodequeue_subqueue` VALUES (11,11,'11','CCRC Assessment of Evidence Series');
INSERT INTO `nodequeue_subqueue` VALUES (12,12,'12','WalMart Grant News Coverage');
INSERT INTO `nodequeue_subqueue` VALUES (13,13,'13','Best of DREAM');
/*!40000 ALTER TABLE `nodequeue_subqueue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

