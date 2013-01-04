
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
DROP TABLE IF EXISTS `mollom_form`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mollom_form` (
  `form_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'The protected form ID.',
  `mode` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Protection mode for the form.',
  `checks` text COMMENT 'Text analyis checks to perform.',
  `discard` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'Whether to discard (1) or retain (0) bad posts.',
  `moderation` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Whether to integrate with Mollom moderation.',
  `enabled_fields` text COMMENT 'Form elements to analyze.',
  `strictness` varchar(8) NOT NULL DEFAULT 'normal' COMMENT 'Strictness of text analysis checks.',
  `module` varchar(255) NOT NULL DEFAULT '' COMMENT 'Module name owning the form.',
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores configuration of forms protected by Mollom.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `mollom_form` WRITE;
/*!40000 ALTER TABLE `mollom_form` DISABLE KEYS */;
INSERT INTO `mollom_form` VALUES ('comment_node_article_form',1,'a:1:{i:0;s:4:\"spam\";}',1,0,'a:2:{i:0;s:7:\"subject\";i:1;s:27:\"comment_body][und][0][value\";}','normal','comment');
/*!40000 ALTER TABLE `mollom_form` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

