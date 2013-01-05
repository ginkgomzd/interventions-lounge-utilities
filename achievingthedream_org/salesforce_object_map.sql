
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
DROP TABLE IF EXISTS `salesforce_object_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesforce_object_map` (
  `name` varchar(64) NOT NULL DEFAULT '' COMMENT 'Foreign key for salesforce_field_map - the fieldmap that corresponds to this record.',
  `oid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Specific Drupal object identifier (e.g. node id or comment id)',
  `sfid` varchar(32) NOT NULL DEFAULT '' COMMENT 'Salesforce object identifier (e.g. 000000000000000000)',
  `drupal_entity` varchar(128) NOT NULL DEFAULT '' COMMENT 'Drupal entity name (e.g. "node", "user")',
  `drupal_bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'Drupal bundle name (e.g. "page", or vocabulary name)',
  PRIMARY KEY (`name`,`oid`),
  KEY `sfid` (`sfid`),
  KEY `name` (`name`),
  KEY `entity_bundle_oid` (`drupal_entity`,`drupal_bundle`,`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Drupal to Salesforce object mapping table';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `salesforce_object_map` WRITE;
/*!40000 ALTER TABLE `salesforce_object_map` DISABLE KEYS */;
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2535,'001U0000008lCjtIAE','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2536,'001U0000008lCjuIAE','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2537,'001U0000008lCjvIAE','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2538,'001U0000008lCjwIAE','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2539,'001U0000008lCjxIAE','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2540,'001U0000008lCjyIAE','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2541,'001U0000008lCjzIAE','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2542,'001U0000008lCk0IAE','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2543,'001U0000008lCk1IAE','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2544,'001U0000008lCk2IAE','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2545,'001U0000008lCk3IAE','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2546,'001U0000008lCk4IAE','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2547,'001U0000008lCk6IAE','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2548,'001U0000008lCk7IAE','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2549,'001U0000008lCk8IAE','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2550,'001U0000008lCk9IAE','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2551,'001U0000008lCkAIAU','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2552,'001U0000008lCkBIAU','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2553,'001U0000008lCkDIAU','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2554,'001U0000008lCkEIAU','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2555,'001U0000008lCkFIAU','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2556,'001U0000008lCkGIAU','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2557,'001U0000008lCkHIAU','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2558,'001U0000008lCkIIAU','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2559,'001U000000DK0aGIAT','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2560,'001U000000DJzWZIA1','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2561,'001U000000DJodqIAD','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2562,'001U000000DH7KSIA1','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2563,'001U000000DJpc1IAD','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2564,'001U000000DK16wIAD','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2565,'001U000000DK7PJIA1','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2566,'001U000000CJd8sIAD','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2567,'001U000000DJqqIIAT','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2568,'001U000000DJr3nIAD','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2569,'001U000000EZg6iIAD','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2570,'001U000000DK4wMIAT','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2571,'001U000000DK3yFIAT','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2572,'001U000000CJKPrIAP','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2593,'001U0000009RQ6XIAW','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2594,'001U0000009TXidIAG','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2595,'001U000000BBNzgIAH','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2596,'001U000000BBa5MIAT','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2597,'001U000000BBXJkIAP','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2598,'001U000000BBZOeIAP','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2599,'001U000000BBaOJIA1','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2609,'001U000000BBZOPIA5','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2610,'001U000000BBZ4zIAH','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2611,'001U000000CIg02IAD','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2612,'001U000000CHC17IAH','node','college_profile_salesforce');
INSERT INTO `salesforce_object_map` VALUES ('organization_second',2613,'001U000000EZU3TIAX','node','college_profile_salesforce');
/*!40000 ALTER TABLE `salesforce_object_map` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

