
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
DROP TABLE IF EXISTS `salesforce_fieldmap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesforce_fieldmap` (
  `fieldmap` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Numeric ID of the fieldmap. Exists for backwards compatibility only.',
  `name` varchar(64) DEFAULT NULL COMMENT 'Unique ID for this object. Used to identify it programmatically, and make it exportable via CTools.',
  `automatic` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates whether this fieldmap automatically exports to Salesforce.',
  `salesforce` varchar(32) NOT NULL DEFAULT '' COMMENT 'The Salesforce object type for this fieldmap.',
  `drupal_entity` varchar(128) NOT NULL DEFAULT '' COMMENT 'The Drupal entity for this fieldmap (e.g. "node", "user").',
  `drupal_bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The Drupal bundle for this fieldmap (e.g. "page", or vocabulary name)',
  `description` varchar(255) DEFAULT '' COMMENT 'Name or brief description of this fieldmap',
  `fields` text NOT NULL COMMENT 'Serialized fieldmap',
  PRIMARY KEY (`fieldmap`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Drupal to Salesforce field mappings';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `salesforce_fieldmap` WRITE;
/*!40000 ALTER TABLE `salesforce_fieldmap` DISABLE KEYS */;
INSERT INTO `salesforce_fieldmap` VALUES (5,'organization_second',0,'Account','node','college_profile_salesforce','populate drupal with the \"organization\" object in salesforce','a:1:{s:4:\"Name\";s:5:\"title\";}');
/*!40000 ALTER TABLE `salesforce_fieldmap` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

