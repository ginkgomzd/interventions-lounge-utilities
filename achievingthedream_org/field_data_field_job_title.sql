
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
DROP TABLE IF EXISTS `field_data_field_job_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_data_field_job_title` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned DEFAULT NULL COMMENT 'The entity revision id this data is attached to, or NULL if the entity type is not versioned',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_job_title_value` varchar(255) DEFAULT NULL,
  `field_job_title_format` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entity_type`,`entity_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`),
  KEY `field_job_title_format` (`field_job_title_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data storage for field 8 (field_job_title)';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `field_data_field_job_title` WRITE;
/*!40000 ALTER TABLE `field_data_field_job_title` DISABLE KEYS */;
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,51,6127,'und',0,'Senior Director of Organizational Development and Change',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,52,9166,'und',0,'Chief Operating Officer',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,87,7889,'und',0,'Associate Director of Communications',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,278,3505,'und',0,'Associate Director of Programs (Policy)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,279,3494,'und',0,'Senior Vice President',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,280,3507,'und',0,'Chief Technology Officer',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,281,6128,'und',0,'Chief Financial Officer',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,282,3502,'und',0,'Administrative Assistant',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,283,7448,'und',0,'President and CEO & Director',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,288,3250,'und',0,'Chairman of the Board',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,289,9604,'und',0,'Secretary of the Board ',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,290,3500,'und',0,'Senior Director of Development',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,291,3142,'und',0,'Development Committee Chair ',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,292,9605,'und',0,'Treasurer of the Board',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,293,2789,'und',0,'Program Committee Chair ',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,294,3138,'und',0,'Director',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,295,2753,'und',0,'Director',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,296,2746,'und',0,'Director',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,318,9415,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,319,2760,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,320,2705,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,321,2730,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,322,2771,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,323,2712,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,324,9234,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,325,2695,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,326,2731,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,327,9597,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,328,9599,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,329,2755,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,330,2733,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,331,547,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,332,2752,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,333,9191,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,334,2751,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,335,2756,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,336,2681,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,337,2707,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,339,2761,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,340,2768,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,341,7445,'und',0,'Senior Director of Data Coaching and Data Strategy ',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,342,2739,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,344,2745,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,345,2721,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,346,2699,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,347,6100,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,348,2759,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,365,9192,'und',0,'Data Coach & Advisor (Community College Research Center, Teachers College, Columbia University)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,366,597,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,367,2706,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,374,9331,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,375,9193,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,376,9245,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,377,2764,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,378,8434,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,379,9414,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,380,9326,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,382,2702,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,383,632,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,385,9593,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,386,2757,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,387,2703,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,388,2754,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,389,644,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,391,2715,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,392,2758,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,393,2767,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,394,651,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,395,2717,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,396,655,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,397,2679,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,398,2749,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,399,2747,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,400,2742,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,401,2676,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,402,2765,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,403,8195,'und',0,'Advisor (Formerly of the American Association of Community Colleges)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,404,2693,'und',0,'Advisor (American Association of Community Colleges)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,405,2725,'und',0,'Advisor (American Association of Community Colleges)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,406,9624,'und',0,'Associate Director of Programs (Learning Events)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,407,2737,'und',0,'Advisor (American Association of Community Colleges)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,408,675,'und',0,'Advisor (American Association of Community Colleges)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,409,676,'und',0,'Advisor (American Association of Community Colleges)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,410,677,'und',0,'Advisor (American Association of Community Colleges)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,411,2708,'und',0,'Advisor (American Association of Community Colleges)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,412,2713,'und',0,'Advisor (American Association of Community Colleges)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,413,2718,'und',0,'Advisor (American Association of Community Colleges)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,414,8196,'und',0,'Advisor (Formerly of the Community College Leadership Program at the University of Texas-Austin)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,415,685,'und',0,'Advisor (Community College Leadership Program at the University of Texas-Austin)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,416,2732,'und',0,'Advisor (Community College Research Center, Teachers College, Columbia University)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,420,2727,'und',0,'Advisor (Jobs for the Future)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,421,2724,'und',0,'Advisor (Jobs for the Future)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,422,2710,'und',0,'Advisor (Jobs for the Future)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,423,694,'und',0,'Advisor (Jobs for the Future)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,426,8117,'und',0,'Advisor (MDC)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,427,2677,'und',0,'Advisor (Formerly of MDC)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,430,8184,'und',0,'Advisor (MDC)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,431,8185,'und',0,'Advisor (MDC)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,432,8188,'und',0,'Advisor (MDC)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,433,2541,'und',0,'Advisor (MDC)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,434,8199,'und',0,'Advisor (MDC)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,435,8186,'und',0,'Advisor (MDC)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,436,8187,'und',0,'Advisor (MDC)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,437,2543,'und',0,'Advisor (MDC)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,439,2734,'und',0,'Advisor (MDRC)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,440,2701,'und',0,'Advisor (MDRC)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,441,2738,'und',0,'Advisor (Public Agenda)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,442,2697,'und',0,'Advisor (JBL Associates)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,443,2728,'und',0,'Advisor (JBL Associates)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,444,2704,'und',0,'Advisor (JBL Associates)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,461,2688,'und',0,'Advisor (JBL Associates)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,462,2726,'und',0,'Advisor (Lipman Hearne) ',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,715,3043,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,1144,8116,'und',0,'Executive Assistant to the President and CEO',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,1145,3503,'und',0,'Assistant Director of Finance',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,1147,9625,'und',0,'Associate Director of Finance (Accounting)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,1150,2690,'und',0,'Leadership Coach & Advisor (Community College Leadership Program at the University of Texas-Austin)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,1151,2776,'und',0,'Leadership Coach & Advisor (Community College Leadership Program at the University of Texas-Austin)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,1178,2709,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,1481,3511,'und',0,'Associate Director of Programs (Leader Colleges)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,1482,8556,'und',0,'Vice President for Community College Relations and Applied Research',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,1483,3506,'und',0,'Assistant Director of Programs (New Colleges)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,1484,9622,'und',0,'Associate Director of Finance',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,1500,3211,'und',0,'Advisor (Montgomery County Community College)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,1704,3593,'und',0,'Director',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,1707,9150,'und',0,'Data Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,1878,3819,'und',0,'Leadership Coach',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,3565,8192,'und',0,'Advisor (MDC)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,3566,8193,'und',0,'Advisor (MDC)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,3567,8194,'und',0,'Advisor (MDC)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,3568,8312,'und',0,'Advisor (Grand Junction Design)',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,3930,9243,'und',0,'Leadership Coach ',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,3931,9196,'und',0,'Leadership Coach ',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,3932,9242,'und',0,' Leadership Coach ',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,4041,9596,'und',0,'Data Coach ',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,4046,9626,'und',0,'Community Engagement Coordinator, VISTA ',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,4047,9628,'und',0,'Assistant Director of Communications ',NULL);
INSERT INTO `field_data_field_job_title` VALUES ('node','person',0,4048,9629,'und',0,'Communications and Executive Intern ',NULL);
/*!40000 ALTER TABLE `field_data_field_job_title` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

