
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
DROP TABLE IF EXISTS `field_revision_field_intervention_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_revision_field_intervention_status` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_intervention_status_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`entity_type`,`entity_id`,`revision_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`),
  KEY `field_intervention_status_value` (`field_intervention_status_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Revision archive storage for field 49 (field_intervention...';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `field_revision_field_intervention_status` WRITE;
/*!40000 ALTER TABLE `field_revision_field_intervention_status` DISABLE KEYS */;
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3791,8863,'und',0,0);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3792,8864,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3793,8865,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3794,8866,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3795,8867,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3796,8891,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3797,8892,'und',0,0);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3798,8893,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3799,8894,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3800,8895,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3801,8896,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3802,8897,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3803,8898,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3804,8899,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3805,8900,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3806,8901,'und',0,0);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3807,8902,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3808,8903,'und',0,0);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3809,8904,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3810,8905,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3811,8906,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3812,8907,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3813,8908,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3814,8909,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3815,8910,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3816,8911,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3817,8912,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3818,8913,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3819,8914,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3820,8915,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3821,8916,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3822,8917,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3823,8918,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3824,8919,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3825,8920,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3826,8921,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3827,8922,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3828,8923,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3829,8924,'und',0,0);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3830,8925,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3831,8926,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3832,8927,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3833,8928,'und',0,0);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3834,8929,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3835,8930,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3836,8931,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3837,8932,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3838,8933,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3839,8934,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3840,8935,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3841,8936,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3842,8937,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3843,8938,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3844,8939,'und',0,1);
INSERT INTO `field_revision_field_intervention_status` VALUES ('node','intervention',0,3937,9156,'und',0,1);
/*!40000 ALTER TABLE `field_revision_field_intervention_status` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
