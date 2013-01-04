
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
DROP TABLE IF EXISTS `workbench_moderation_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workbench_moderation_states` (
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'The machine name of the moderation state.',
  `label` varchar(255) DEFAULT NULL COMMENT 'A label for the moderation state.',
  `description` varchar(255) DEFAULT NULL COMMENT 'A description of the moderation state.',
  `weight` int(11) DEFAULT '0' COMMENT 'Sort weight for the moderation state.',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Defines all possible states';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `workbench_moderation_states` WRITE;
/*!40000 ALTER TABLE `workbench_moderation_states` DISABLE KEYS */;
INSERT INTO `workbench_moderation_states` VALUES ('draft','Draft','Work in progress',-99);
INSERT INTO `workbench_moderation_states` VALUES ('needs_review','Needs Review','Ready for moderation',0);
INSERT INTO `workbench_moderation_states` VALUES ('published','Published','Make this version live',99);
/*!40000 ALTER TABLE `workbench_moderation_states` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

