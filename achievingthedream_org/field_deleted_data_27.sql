
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
DROP TABLE IF EXISTS `field_deleted_data_27`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_deleted_data_27` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned DEFAULT NULL COMMENT 'The entity revision id this data is attached to, or NULL if the entity type is not versioned',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_leader_college_value` int(11) DEFAULT NULL,
  PRIMARY KEY (`entity_type`,`entity_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`),
  KEY `field_leader_college_value` (`field_leader_college_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data storage for field 27 (field_leader_college)';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `field_deleted_data_27` WRITE;
/*!40000 ALTER TABLE `field_deleted_data_27` DISABLE KEYS */;
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,544,3074,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,545,3166,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,546,3208,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,547,1950,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,548,1952,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,549,1953,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,550,2299,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,551,9303,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,552,1956,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,553,2497,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,554,2637,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,555,2499,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,556,9304,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,557,2476,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,558,1967,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,559,9307,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,560,2867,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,561,8087,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,562,2868,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,563,1978,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,564,1980,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,565,2559,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,566,9308,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,567,2862,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,568,1984,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,569,2557,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,570,1986,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,571,2556,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,572,1988,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,573,1989,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,574,1990,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,575,2781,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,576,9309,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,577,2860,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,578,2553,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,579,1996,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,580,1997,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,581,1998,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,582,9310,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,583,2632,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,584,2001,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,585,2002,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,586,2549,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,587,2668,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,588,2008,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,589,2009,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,590,2011,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,591,2014,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,592,2015,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,593,2544,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,594,2018,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,595,2019,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,596,2020,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,597,2021,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,598,2022,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,599,2023,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,600,2105,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,601,2777,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,602,2542,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,603,2028,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,604,2540,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,605,2030,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,606,2031,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,607,2537,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,608,2033,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,609,9312,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,610,3846,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,611,2036,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,612,3310,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,613,2038,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,614,2534,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,615,2040,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,616,2043,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,617,2530,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,618,3194,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,619,2046,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,620,2047,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,621,2528,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,622,2049,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,623,2050,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,634,2163,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,635,2298,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,636,2056,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,637,2524,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,638,2058,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,639,2522,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,640,2060,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,641,2061,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,642,2519,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,643,2075,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,644,2680,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,645,2066,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,646,2517,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,647,2068,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,648,2514,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,649,2512,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,650,2638,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,651,2072,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,652,9313,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,653,2832,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,654,2511,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,655,2510,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,657,2078,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,658,9314,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,659,9329,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,660,2082,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,661,7336,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,662,9317,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,663,2086,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,664,2087,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,665,2300,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,666,2494,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,667,2091,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,668,3387,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,669,2094,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,670,2869,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,671,2097,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,672,2098,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,673,2507,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,674,2100,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,675,2101,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,676,2506,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,677,2505,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,678,3076,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,679,2498,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,680,2500,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,681,2502,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,682,2504,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,683,2660,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,684,9306,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,685,2865,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,686,8588,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,687,2547,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,688,3313,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,689,3169,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,691,2013,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,692,9311,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,693,2026,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,694,3820,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,695,3822,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,696,2813,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,697,2532,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,698,1994,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,699,2064,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,700,2010,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,701,1957,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,702,1958,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,703,1964,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,704,1971,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,706,2012,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,707,2065,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,708,2104,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,709,3072,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,710,2092,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,711,2095,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,729,3390,'und',0,1);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,730,9318,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2616,5214,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2617,5216,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2618,5217,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2619,5219,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2620,5224,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2621,5226,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2622,5140,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2623,5232,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2624,5235,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2625,5236,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2626,5237,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2627,6063,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2628,5347,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2629,5395,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2630,5454,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2631,5531,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2632,5238,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2633,5954,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2634,5220,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2635,5229,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2636,5240,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2637,5241,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2638,5343,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2639,5348,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2640,7660,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2641,5349,'und',0,0);
INSERT INTO `field_deleted_data_27` VALUES ('node','college_profile',1,2642,5239,'und',0,0);
/*!40000 ALTER TABLE `field_deleted_data_27` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

