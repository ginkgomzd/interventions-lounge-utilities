
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
DROP TABLE IF EXISTS `field_data_field_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_data_field_summary` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned DEFAULT NULL COMMENT 'The entity revision id this data is attached to, or NULL if the entity type is not versioned',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_summary_value` longtext,
  `field_summary_summary` longtext,
  `field_summary_format` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entity_type`,`entity_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`),
  KEY `field_summary_format` (`field_summary_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data storage for field 42 (field_summary)';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `field_data_field_summary` WRITE;
/*!40000 ALTER TABLE `field_data_field_summary` DISABLE KEYS */;
INSERT INTO `field_data_field_summary` VALUES ('node','panel',0,912,6093,'und',0,'<p>This is the summary of the newsletter, I think this appears on the main newsletter list of newsletters.</p>','','filtered_html');
INSERT INTO `field_data_field_summary` VALUES ('node','panel',0,1669,3926,'und',0,'<p><strong>The Cutting Edge Series: New Ways to Help Community Colleges Help Students Succeed</strong></p><p>Achieving the Dream is resolute in our commitment to improve student outcomes and this series is designed to provide solutions to community colleges as they work to move the needle on student success and completion. In partnership with Public Agenda, Achieving the Dream commissioned the Cutting Edge Series to respond findings that community colleges are facing similar challenges, such as engaging faculty, scaling interventions, and building IR and IT capacity.</p>','','filtered_html');
INSERT INTO `field_data_field_summary` VALUES ('node','panel',0,1670,3582,'und',0,'<p>CCRC has gathered and synthesized a large body of research evidence on strategies that may improve the success of community college students. Working papers in the CCRC Assessment of Evidence Series use the research literature to draw conclusions and provide concrete evidence-based recommendations to practitioners, policymakers, and researchers in eight major topic areas: Organizational Improvement; Online Learning; Non-Academic Support; Institutional and Program Structure; Developmental Mathematics Pedagogy; Developmental Assessment and Placement;Contextualization of Basic Skills Instruction; and Developmental Acceleration.</p>','','filtered_html');
/*!40000 ALTER TABLE `field_data_field_summary` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

