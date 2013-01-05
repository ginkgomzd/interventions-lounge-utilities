
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
DROP TABLE IF EXISTS `nodequeue_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nodequeue_queue` (
  `qid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The primary identifier for a queue.',
  `name` varchar(128) DEFAULT NULL COMMENT 'The machine name for the queue.',
  `title` varchar(255) NOT NULL COMMENT 'Title of a queue.',
  `subqueue_title` varchar(255) NOT NULL COMMENT 'Title of a subqueue.',
  `size` int(11) DEFAULT '0' COMMENT 'How many nodes this queue will hold',
  `link` varchar(40) DEFAULT NULL COMMENT 'The link text to show under a node to add it to the queue.',
  `link_remove` varchar(40) DEFAULT NULL COMMENT 'The link text to show under a node to remove it from the queue.',
  `owner` varchar(255) DEFAULT NULL,
  `show_in_ui` tinyint(4) DEFAULT '1',
  `show_in_tab` tinyint(4) DEFAULT '1',
  `show_in_links` tinyint(4) DEFAULT '1',
  `reference` varchar(255) DEFAULT '0',
  `reverse` tinyint(4) DEFAULT '0',
  `i18n` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`qid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='Base table for queues, storing global information for...';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `nodequeue_queue` WRITE;
/*!40000 ALTER TABLE `nodequeue_queue` DISABLE KEYS */;
INSERT INTO `nodequeue_queue` VALUES (2,'homepage_spotlight','Homepage Featured Items','',0,'','','nodequeue',1,1,0,'0',0,0);
INSERT INTO `nodequeue_queue` VALUES (3,'cutting_edge_series','Cutting Edge Series','',0,'','','nodequeue',1,1,0,'0',0,0);
INSERT INTO `nodequeue_queue` VALUES (4,'promising_practices','2011 Promising Practices','',0,'','','nodequeue',1,1,0,'0',0,0);
INSERT INTO `nodequeue_queue` VALUES (5,'2010_promising_practices','2010 Promising Practices','',0,'','','nodequeue',1,1,0,'0',0,0);
INSERT INTO `nodequeue_queue` VALUES (6,'founding_partners','Founding Partners','',0,'','','nodequeue',1,1,0,'0',0,0);
INSERT INTO `nodequeue_queue` VALUES (7,'principles_and_practices','Principles and Practices','',0,'','','nodequeue',1,1,0,'0',0,0);
INSERT INTO `nodequeue_queue` VALUES (8,'homepage_carousel','Homepage Carousel','',4,'','','nodequeue',1,1,0,'0',0,0);
INSERT INTO `nodequeue_queue` VALUES (9,'atd_newsletter','ATD Newsletter','',0,'','','nodequeue',1,1,0,'0',0,0);
INSERT INTO `nodequeue_queue` VALUES (10,'recommended_resources','Recommended Resources','',0,'','','nodequeue',1,1,0,'0',0,0);
INSERT INTO `nodequeue_queue` VALUES (11,'ccrc_assessment_of_evidence_seri','CCRC Assessment of Evidence Series','',0,'','','nodequeue',1,1,0,'0',0,0);
INSERT INTO `nodequeue_queue` VALUES (12,'walmart_grant_news_coverage','WalMart Grant News Coverage','',0,'','','nodequeue',1,1,0,'0',0,0);
INSERT INTO `nodequeue_queue` VALUES (13,'best_of_dream','Best of DREAM','',0,'','','nodequeue',1,1,0,'0',0,0);
/*!40000 ALTER TABLE `nodequeue_queue` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

