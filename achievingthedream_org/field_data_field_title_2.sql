
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
DROP TABLE IF EXISTS `field_data_field_title_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_data_field_title_2` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned DEFAULT NULL COMMENT 'The entity revision id this data is attached to, or NULL if the entity type is not versioned',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_title_2_value` varchar(255) DEFAULT NULL,
  `field_title_2_format` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entity_type`,`entity_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`),
  KEY `field_title_2_format` (`field_title_2_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data storage for field 6 (field_title_2)';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `field_data_field_title_2` WRITE;
/*!40000 ALTER TABLE `field_data_field_title_2` DISABLE KEYS */;
INSERT INTO `field_data_field_title_2` VALUES ('node','press_release',0,49,53,'und',0,'Six Michigan colleges join Achieving the Dream: Community Colleges Count; receive $450,000 grants to plan, launch and implement student success strategies',NULL);
INSERT INTO `field_data_field_title_2` VALUES ('node','press_release',0,185,284,'und',0,'These emerging leaders join the ranks of now 52 Achieving the Dream Leader Colleges that are raising persistence and graduation rates, closing achievement gaps, and changing lives.',NULL);
INSERT INTO `field_data_field_title_2` VALUES ('node','press_release',0,1179,2645,'und',0,'Community college students across the U.S. can win prizes in 3-­minute video competition',NULL);
INSERT INTO `field_data_field_title_2` VALUES ('node','press_release',0,1451,3152,'und',0,'New publication and national discussion seek to dismantle department silos; show that greater student success turns centrally on a campus-wide culture of evidence',NULL);
INSERT INTO `field_data_field_title_2` VALUES ('node','press_release',0,1454,3151,'und',0,'New publication explains how some community colleges are scaling promising student success interventions; national discussion helps colleges design approaches at-scale from the start.',NULL);
INSERT INTO `field_data_field_title_2` VALUES ('node','press_release',0,1480,9111,'und',0,'Artistic talent earns two Achieving the Dream community college students more than $1,000 in prize money, wide exposure for their talents, and meals for more than 1,000 distressed neighbors in their communities',NULL);
INSERT INTO `field_data_field_title_2` VALUES ('node','press_release',0,1677,6062,'und',0,'New website and new staff members are just the start of an already exciting new year; read the “Top Ten List of Accomplishments so-far in 2012!”',NULL);
INSERT INTO `field_data_field_title_2` VALUES ('node','press_release',0,1706,3604,'und',0,'Zane State receives national recognition and cash prize for closing achievement gaps and improving retention rates',NULL);
INSERT INTO `field_data_field_title_2` VALUES ('node','press_release',0,1712,4101,'und',0,'Achieving the Dream and the Walmart Foundation team up to get in the classrooms of some of the most innovative community colleges in the country to help improve education outcomes for approximately 100,000 students.',NULL);
INSERT INTO `field_data_field_title_2` VALUES ('node','press_release',0,1779,3709,'und',0,'DREAM Big for College Video Contest is one of several components to Achieving the Dream’s new student-centered “DREAM Big for College” campaign that is fast-tracking community college students’ voices right to the ear of policy-makers and influencers.',NULL);
INSERT INTO `field_data_field_title_2` VALUES ('node','press_release',0,2862,9412,'und',0,'27 institutions selected into the Achieving the Dream National Reform Network; commit to rigorous student success and completion ',NULL);
INSERT INTO `field_data_field_title_2` VALUES ('node','press_release',0,3503,8003,'und',0,'Congratulatory Statement from Achieving the Dream President and CEO William Trueheart',NULL);
INSERT INTO `field_data_field_title_2` VALUES ('node','press_release',0,3743,8780,'und',0,'$185,000 grant from TG will allow Achieving the Dream Leader Colleges to spread effective practices throughout Texas and the nation',NULL);
INSERT INTO `field_data_field_title_2` VALUES ('node','press_release',0,3962,9210,'und',0,'Four students earn the opportunity to positively shape the student success and completion agenda across the country through a new student ambassador pilot program ',NULL);
INSERT INTO `field_data_field_title_2` VALUES ('node','press_release',0,3977,9322,'und',0,'Emerging community college leaders join the ranks of now 66 Achieving the Dream Leader Colleges that are raising persistence and graduation rates and closing achievement gaps ',NULL);
INSERT INTO `field_data_field_title_2` VALUES ('node','press_release',0,3984,9355,'und',0,'Grants of $215,000 will allow Achieving the Dream Leader Colleges to expand successful interventions within their colleges and across the nation ',NULL);
INSERT INTO `field_data_field_title_2` VALUES ('node','press_release',0,4038,9576,'und',0,'States will leverage their participation in the Postsecondary State Policy Network to implement long-lasting reforms so more students can earn a market-valued credential',NULL);
/*!40000 ALTER TABLE `field_data_field_title_2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

