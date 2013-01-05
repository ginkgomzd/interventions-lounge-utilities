
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
DROP TABLE IF EXISTS `field_deleted_data_50`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_deleted_data_50` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned DEFAULT NULL COMMENT 'The entity revision id this data is attached to, or NULL if the entity type is not versioned',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_intervention_type_tid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`entity_type`,`entity_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`),
  KEY `field_intervention_type_tid` (`field_intervention_type_tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data storage for field 50 (field_intervention_type)';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `field_deleted_data_50` WRITE;
/*!40000 ALTER TABLE `field_deleted_data_50` DISABLE KEYS */;
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3811,8906,'und',0,68);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3812,8907,'und',0,65);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3813,8908,'und',0,76);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3814,8909,'und',0,77);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3815,8910,'und',0,63);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3816,8911,'und',0,77);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3817,8912,'und',0,65);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3818,8913,'und',0,78);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3819,8914,'und',0,77);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3820,8915,'und',0,63);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3821,8916,'und',0,77);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3822,8917,'und',0,63);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3823,8918,'und',0,63);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3824,8919,'und',0,63);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3825,8920,'und',0,63);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3826,8921,'und',0,63);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3827,8922,'und',0,79);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3828,8923,'und',0,78);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3829,8924,'und',0,63);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3830,8925,'und',0,62);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3831,8926,'und',0,62);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3832,8927,'und',0,63);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3833,8928,'und',0,63);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3834,8929,'und',0,63);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3835,8930,'und',0,63);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3836,8931,'und',0,63);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3837,8932,'und',0,63);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3838,8933,'und',0,63);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3839,8934,'und',0,63);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3840,8935,'und',0,79);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3841,8936,'und',0,63);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3842,8937,'und',0,60);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3843,8938,'und',0,63);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3844,8939,'und',0,78);
INSERT INTO `field_deleted_data_50` VALUES ('node','mx_intervention',1,3937,9156,'und',0,63);
/*!40000 ALTER TABLE `field_deleted_data_50` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

