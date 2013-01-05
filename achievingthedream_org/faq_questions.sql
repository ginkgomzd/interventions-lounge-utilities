
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
DROP TABLE IF EXISTS `faq_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faq_questions` (
  `nid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The primary identifier for a node.',
  `vid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The primary identifier for a node revision.',
  `question` text NOT NULL COMMENT 'The faq short question text.',
  `detailed_question` text COMMENT 'The faq long question text.',
  PRIMARY KEY (`nid`,`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='A table containing the long question text of each faq...';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `faq_questions` WRITE;
/*!40000 ALTER TABLE `faq_questions` DISABLE KEYS */;
INSERT INTO `faq_questions` VALUES (3620,8375,'Test question','');
INSERT INTO `faq_questions` VALUES (3633,8404,'What is your favorite color?','');
INSERT INTO `faq_questions` VALUES (3634,8405,'What day does DREAM begin?','');
/*!40000 ALTER TABLE `faq_questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

