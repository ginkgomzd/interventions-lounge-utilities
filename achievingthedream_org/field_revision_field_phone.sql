
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
DROP TABLE IF EXISTS `field_revision_field_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_revision_field_phone` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_phone_value` varchar(255) DEFAULT NULL,
  `field_phone_format` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entity_type`,`entity_id`,`revision_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`),
  KEY `field_phone_format` (`field_phone_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Revision archive storage for field 40 (field_phone)';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `field_revision_field_phone` WRITE;
/*!40000 ALTER TABLE `field_revision_field_phone` DISABLE KEYS */;
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,51,2565,'und',0,'(240) 450-3811',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,51,3117,'und',0,'(240) 450-3811',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,51,3251,'und',0,'(240) 450-3811',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,51,3398,'und',0,'(240) 450-3811',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,51,3493,'und',0,'(240) 450-3811',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,51,6127,'und',0,'(240) 450-3811',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,2501,'und',0,'240-450-0075 ext. 999',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,2503,'und',0,'240-450-0075 ext. 999',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,2513,'und',0,'240-450-0075 ext. 999',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,2577,'und',0,'240-450-3815',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,3190,'und',0,'240-450-3815',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,3404,'und',0,'240-450-3815',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,3499,'und',0,'240-450-3815',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,7286,'und',0,'240-450-3815',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,7287,'und',0,'240-450-3815',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,7288,'und',0,'240-450-3815',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,9158,'und',0,'240-450-3815',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,9159,'und',0,'240-450-3815',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,9160,'und',0,'240-450-3815',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,9161,'und',0,'240-450-3815',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,9162,'und',0,'240-450-3815',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,9163,'und',0,'240-450-3815',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,9164,'und',0,'240-450-3815',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,9165,'und',0,'240-450-3815',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,9166,'und',0,'240-450-3815',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,52,9712,'und',0,'240-450-3815',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,87,2581,'und',0,'(240) 450-3817',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,87,3407,'und',0,'(240) 450-3817',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,87,3492,'und',0,'(240) 450-3817',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,87,7889,'und',0,'(240) 450-3817',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,87,9776,'und',0,'(240) 450-3817',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,87,9777,'und',0,'(240) 450-3817',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,87,9778,'und',0,'(240) 450-3817',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,87,9779,'und',0,'(240) 450-3817',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,87,9782,'und',0,'(240) 450-3817',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,278,2583,'und',0,'(240) 450-3819',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,278,3239,'und',0,'(240) 450-3819',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,278,3409,'und',0,'(240) 450-3819',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,278,3505,'und',0,'(240) 450-3819',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,279,2566,'und',0,'(240) 450-3813',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,279,2616,'und',0,'(240) 450-3813',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,279,2740,'und',0,'(240) 450-3813',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,279,3252,'und',0,'(240) 450-3813',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,279,3253,'und',0,'(240) 450-3813',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,279,3399,'und',0,'(240) 450-3813',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,279,3494,'und',0,'(240) 450-3813',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,280,2584,'und',0,'(240) 450-3820',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,280,3411,'und',0,'(240) 450-3820',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,280,3507,'und',0,'(240) 450-3820',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,281,2582,'und',0,'(240) 450-3810',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,281,2829,'und',0,'(240) 450-3810',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,281,2830,'und',0,'(240) 450-3810',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,281,3408,'und',0,'(240) 450-3810',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,281,3504,'und',0,'(240) 450-3810',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,281,6128,'und',0,'(240) 450-3810',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,282,2578,'und',0,'(240) 450-3816',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,282,3405,'und',0,'(240) 450-3816',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,282,3502,'und',0,'(240) 450-3816',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,283,2586,'und',0,'(240) 450-3814',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,283,2627,'und',0,'(240) 450-3814',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,283,2628,'und',0,'(240) 450-3814',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,283,2653,'und',0,'(240) 450-3814',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,283,2743,'und',0,'(240) 450-3814',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,283,3181,'und',0,'(240) 450-3814',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,283,3182,'und',0,'(240) 450-3814',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,283,3415,'und',0,'(240) 450-3814',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,283,3512,'und',0,'(240) 450-3814',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,283,3513,'und',0,'(240) 450-3814',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,283,4867,'und',0,'(240) 450-3814',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,283,7448,'und',0,'(240) 450-3814',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,290,2575,'und',0,'(240) 450-3826',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,290,3237,'und',0,'(240) 450-3826',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,290,3402,'und',0,'(240) 450-3826',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,290,3497,'und',0,'(240) 450-3826',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,290,3500,'und',0,'(240) 450-3826',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,406,5445,'und',0,'240-450-3834',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,406,9623,'und',0,'240-450-3834',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,406,9624,'und',0,'240-450-3834',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1144,2576,'und',0,'(240) 450-3818',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1144,3183,'und',0,'(240) 450-3818',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1144,3348,'und',0,'(240) 450-3818',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1144,3371,'und',0,'(240) 450-3818',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1144,3403,'und',0,'(240) 450-3818',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1144,3498,'und',0,'(240) 450-3818',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1144,3501,'und',0,'(240) 450-3818',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1144,4887,'und',0,'(240) 450-3818',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1144,8105,'und',0,'(240) 450-3818',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1144,8106,'und',0,'(240) 450-3818',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1144,8110,'und',0,'(240) 450-3818',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1144,8116,'und',0,'(240) 450-3818',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1145,2579,'und',0,'(240) 450-3830',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1145,2580,'und',0,'(240) 450-3830',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1145,2656,'und',0,'(240) 450-3830',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1145,2942,'und',0,'(240) 450-3830',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1145,3330,'und',0,'(240) 450-3830',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1145,3331,'und',0,'(240) 450-3830',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1145,3406,'und',0,'(240) 450-3830',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1145,3503,'und',0,'(240) 450-3830',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1147,2567,'und',0,'(240) 450-3829',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1147,2568,'und',0,'(240) 450-3829',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1147,2569,'und',0,'(240) 450-3829',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1147,2571,'und',0,'(240) 450-3829',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1147,2572,'und',0,'(240) 450-3829',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1147,2573,'und',0,'(240) 450-3829',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1147,2964,'und',0,'(240) 450-3829',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1147,2965,'und',0,'(240) 450-3829',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1147,2966,'und',0,'(240) 450-3829',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1147,3184,'und',0,'(240) 450-3829',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1147,3235,'und',0,'(240) 450-3829',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1147,3240,'und',0,'(240) 450-3829',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1147,3305,'und',0,'(240) 450-3829',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1147,3329,'und',0,'(240) 450-3829',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1147,3400,'und',0,'(240) 450-3829',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1147,3495,'und',0,'(240) 450-3829',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1147,9621,'und',0,'(240) 450-3829',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1147,9625,'und',0,'(240) 450-3829',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1481,3511,'und',0,'240-450-3831',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1482,3509,'und',0,'240-450-3827',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1482,8556,'und',0,'240-450-3827',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1483,3332,'und',0,'240-450-3832',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1483,3335,'und',0,'240-450-3832',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1483,3410,'und',0,'240-450-3832',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1483,3506,'und',0,'240-450-3832',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1483,9780,'und',0,'240-450-3832',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1483,9781,'und',0,'240-450-3832',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1484,3333,'und',0,'240-450-3828',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1484,3334,'und',0,'240-450-3828',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1484,3345,'und',0,'240-450-3828',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1484,3346,'und',0,'240-450-3828',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1484,3347,'und',0,'240-450-3828',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1484,5417,'und',0,'240-450-3828',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1484,5418,'und',0,'240-450-3828',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1484,5419,'und',0,'240-450-3828',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1484,5420,'und',0,'240-450-3828',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,1484,9622,'und',0,'240-450-3828',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,4047,9628,'und',0,'240-450-3840',NULL);
INSERT INTO `field_revision_field_phone` VALUES ('node','person',0,4048,9629,'und',0,'240-450-3825',NULL);
/*!40000 ALTER TABLE `field_revision_field_phone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

