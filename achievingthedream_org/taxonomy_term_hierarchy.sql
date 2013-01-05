
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
DROP TABLE IF EXISTS `taxonomy_term_hierarchy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxonomy_term_hierarchy` (
  `tid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Primary Key: The taxonomy_term_data.tid of the term.',
  `parent` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Primary Key: The taxonomy_term_data.tid of the term’s parent. 0 indicates no parent.',
  PRIMARY KEY (`tid`,`parent`),
  KEY `parent` (`parent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores the hierarchical relationship between terms.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `taxonomy_term_hierarchy` WRITE;
/*!40000 ALTER TABLE `taxonomy_term_hierarchy` DISABLE KEYS */;
INSERT INTO `taxonomy_term_hierarchy` VALUES (1,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (2,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (6,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (8,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (9,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (10,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (11,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (13,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (14,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (15,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (16,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (18,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (19,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (20,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (21,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (22,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (23,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (24,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (25,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (27,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (28,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (29,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (30,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (31,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (33,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (34,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (35,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (36,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (37,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (38,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (39,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (40,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (41,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (42,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (43,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (44,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (45,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (46,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (47,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (48,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (49,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (50,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (51,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (52,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (53,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (54,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (55,0);
INSERT INTO `taxonomy_term_hierarchy` VALUES (56,20);
INSERT INTO `taxonomy_term_hierarchy` VALUES (57,20);
INSERT INTO `taxonomy_term_hierarchy` VALUES (58,0);
/*!40000 ALTER TABLE `taxonomy_term_hierarchy` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

