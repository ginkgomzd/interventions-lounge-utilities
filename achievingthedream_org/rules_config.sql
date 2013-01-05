
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
DROP TABLE IF EXISTS `rules_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rules_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'The internal identifier for any configuration.',
  `name` varchar(64) NOT NULL COMMENT 'The name of the configuration.',
  `label` varchar(255) NOT NULL DEFAULT 'unlabeled' COMMENT 'The label of the configuration.',
  `plugin` varchar(127) NOT NULL COMMENT 'The name of the plugin of this configuration.',
  `active` int(11) NOT NULL DEFAULT '1' COMMENT 'Boolean indicating whether the configuration is active. Usage depends on how the using module makes use of it.',
  `weight` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Weight of the configuration. Usage depends on how the using module makes use of it.',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT 'The exportable status of the entity.',
  `dirty` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Dirty configurations fail the integrity check, e.g. due to missing dependencies.',
  `module` varchar(255) DEFAULT NULL COMMENT 'The name of the providing module if the entity has been defined in code.',
  `data` longblob COMMENT 'Everything else, serialized.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `plugin` (`plugin`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `rules_config` WRITE;
/*!40000 ALTER TABLE `rules_config` DISABLE KEYS */;
INSERT INTO `rules_config` VALUES (1,'rules_assign_newsletter_flag','Assign Newsletter Flag','reaction rule',1,0,1,0,'rules','O:17:\"RulesReactionRule\":14:{s:9:\"\0*\0parent\";N;s:2:\"id\";s:1:\"1\";s:12:\"\0*\0elementId\";i:1;s:6:\"weight\";s:1:\"0\";s:8:\"settings\";a:0:{}s:4:\"name\";s:28:\"rules_assign_newsletter_flag\";s:6:\"module\";s:5:\"rules\";s:6:\"status\";s:1:\"1\";s:5:\"label\";s:22:\"Assign Newsletter Flag\";s:4:\"tags\";a:0:{}s:11:\"\0*\0children\";a:1:{i:0;O:11:\"RulesAction\":6:{s:9:\"\0*\0parent\";r:1;s:2:\"id\";N;s:12:\"\0*\0elementId\";N;s:6:\"weight\";i:0;s:8:\"settings\";a:4:{s:4:\"view\";s:21:\"admin_content|default\";s:4:\"args\";N;s:17:\"entity_list:label\";s:18:\"A list of entities\";s:15:\"entity_list:var\";s:11:\"entity_list\";}s:14:\"\0*\0elementName\";s:38:\"views_bulk_operations_action_load_list\";}}s:7:\"\0*\0info\";a:0:{}s:13:\"\0*\0conditions\";O:8:\"RulesAnd\":8:{s:9:\"\0*\0parent\";r:1;s:2:\"id\";N;s:12:\"\0*\0elementId\";i:2;s:6:\"weight\";i:0;s:8:\"settings\";a:0:{}s:11:\"\0*\0children\";a:0:{}s:7:\"\0*\0info\";a:0:{}s:9:\"\0*\0negate\";b:0;}s:9:\"\0*\0events\";a:1:{i:0;s:10:\"user_login\";}}');
INSERT INTO `rules_config` VALUES (2,'rules_email_notification_on_comment_submission','Email Notification on Comment Submission','reaction rule',1,0,1,0,'rules','O:17:\"RulesReactionRule\":14:{s:9:\"\0*\0parent\";N;s:2:\"id\";s:1:\"2\";s:12:\"\0*\0elementId\";i:1;s:6:\"weight\";s:1:\"0\";s:8:\"settings\";a:0:{}s:4:\"name\";s:46:\"rules_email_notification_on_comment_submission\";s:6:\"module\";s:5:\"rules\";s:6:\"status\";s:1:\"1\";s:5:\"label\";s:40:\"Email Notification on Comment Submission\";s:4:\"tags\";a:0:{}s:11:\"\0*\0children\";a:1:{i:0;O:11:\"RulesAction\":6:{s:9:\"\0*\0parent\";r:1;s:2:\"id\";N;s:12:\"\0*\0elementId\";i:3;s:6:\"weight\";i:0;s:8:\"settings\";a:6:{s:2:\"to\";s:28:\"llewis@achievingthedream.org\";s:7:\"subject\";s:34:\"New Blog Comment on [comment:node]\";s:7:\"message\";s:108:\"Subject: [comment:subject]\r\n\r\nComment:\r\n[comment:body]\r\n\r\nYou can edit the comment here:\r\n[comment:edit-url]\";s:4:\"from\";N;s:15:\"subject:process\";O:19:\"RulesTokenEvaluator\":2:{s:10:\"\0*\0setting\";b:1;s:12:\"\0*\0processor\";N;}s:15:\"message:process\";O:19:\"RulesTokenEvaluator\":2:{s:10:\"\0*\0setting\";b:1;s:12:\"\0*\0processor\";N;}}s:14:\"\0*\0elementName\";s:4:\"mail\";}}s:7:\"\0*\0info\";a:0:{}s:13:\"\0*\0conditions\";O:8:\"RulesAnd\":8:{s:9:\"\0*\0parent\";r:1;s:2:\"id\";N;s:12:\"\0*\0elementId\";i:2;s:6:\"weight\";i:0;s:8:\"settings\";a:0:{}s:11:\"\0*\0children\";a:0:{}s:7:\"\0*\0info\";a:0:{}s:9:\"\0*\0negate\";b:0;}s:9:\"\0*\0events\";a:1:{i:0;s:14:\"comment_insert\";}}');
/*!40000 ALTER TABLE `rules_config` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

