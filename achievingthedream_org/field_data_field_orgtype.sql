
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
DROP TABLE IF EXISTS `field_data_field_orgtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_data_field_orgtype` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned DEFAULT NULL COMMENT 'The entity revision id this data is attached to, or NULL if the entity type is not versioned',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_orgtype_tid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`entity_type`,`entity_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`),
  KEY `field_orgtype_tid` (`field_orgtype_tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data storage for field 37 (field_orgtype)';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `field_data_field_orgtype` WRITE;
/*!40000 ALTER TABLE `field_data_field_orgtype` DISABLE KEYS */;
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,53,2189,'und',0,37);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,109,2180,'und',0,37);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,109,2180,'und',1,41);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,110,2174,'und',0,37);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,114,2188,'und',0,37);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,116,3717,'und',0,37);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,116,3717,'und',1,41);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,119,2187,'und',0,37);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,122,2179,'und',0,37);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,122,2179,'und',1,41);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,127,2183,'und',0,37);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,127,2183,'und',1,41);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,128,2185,'und',0,37);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,128,2185,'und',1,41);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,146,9449,'und',0,37);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,146,9449,'und',1,41);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,263,2186,'und',0,37);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,265,2182,'und',0,37);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,369,2552,'und',0,37);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,369,2552,'und',1,41);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,370,2551,'und',0,37);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,370,2551,'und',1,41);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,371,2554,'und',0,39);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,913,2449,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,914,2224,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,915,2227,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,916,2446,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,917,2445,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,918,2443,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,919,2442,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,921,2441,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,922,2440,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,923,2228,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,924,2402,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,925,2230,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,926,2231,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,927,2447,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,928,2444,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,929,2233,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,934,2234,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,935,2246,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,936,2294,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,937,2296,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,938,2297,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,939,2674,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,940,2671,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,941,2356,'und',0,38);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,1651,3449,'und',0,37);
INSERT INTO `field_data_field_orgtype` VALUES ('node','organization',0,1665,3711,'und',0,38);
/*!40000 ALTER TABLE `field_data_field_orgtype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

