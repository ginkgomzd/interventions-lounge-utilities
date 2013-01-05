
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
DROP TABLE IF EXISTS `field_data_field_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_data_field_email` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned DEFAULT NULL COMMENT 'The entity revision id this data is attached to, or NULL if the entity type is not versioned',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_email_email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entity_type`,`entity_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data storage for field 41 (field_email)';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `field_data_field_email` WRITE;
/*!40000 ALTER TABLE `field_data_field_email` DISABLE KEYS */;
INSERT INTO `field_data_field_email` VALUES ('node','person',0,51,6127,'und',0,'bfletcher@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,52,9712,'und',0,'kloovis@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,87,9782,'und',0,'llewis@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,278,3505,'und',0,'mhatch@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,279,3494,'und',0,'clincoln@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,280,3507,'und',0,'nmelander@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,281,6128,'und',0,'mmotamen@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,282,3502,'und',0,'kshirley@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,283,7448,'und',0,'jlopez@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,290,3500,'und',0,'gcushman@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,341,7445,'und',0,'rglover@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,406,9624,'und',0,'cblanco@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,1144,8116,'und',0,'jlopez@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,1145,3503,'und',0,'lsummers@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,1147,9625,'und',0,'dwerden@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,1481,3511,'und',0,'shollister@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,1482,8556,'und',0,'rsinger@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,1483,9781,'und',0,'mramos@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,1484,9622,'und',0,'dbrowning@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,4046,9626,'und',0,'jthompkins@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,4047,9628,'und',0,'aroose@achievingthedream.org');
INSERT INTO `field_data_field_email` VALUES ('node','person',0,4048,9629,'und',0,'communications@achievingthedream.org ');
/*!40000 ALTER TABLE `field_data_field_email` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

