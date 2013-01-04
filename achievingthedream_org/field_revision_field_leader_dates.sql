
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
DROP TABLE IF EXISTS `field_revision_field_leader_dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_revision_field_leader_dates` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_leader_dates_value` varchar(255) DEFAULT NULL,
  `field_leader_dates_format` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entity_type`,`entity_id`,`revision_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`),
  KEY `field_leader_dates_format` (`field_leader_dates_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Revision archive storage for field 36 (field_leader_dates)';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `field_revision_field_leader_dates` WRITE;
/*!40000 ALTER TABLE `field_revision_field_leader_dates` DISABLE KEYS */;
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,544,1909,'und',0,'2011 to 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,544,1947,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,544,2496,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,544,3074,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,545,1825,'und',0,'1928 to present',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,545,1840,'und',0,'1928 to present',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,545,1842,'und',0,'1928 to present',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,545,1877,'und',0,'1928 to present',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,545,1910,'und',0,'2010 to 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,545,1948,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,545,2477,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,545,2631,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,545,3166,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,551,9303,'und',0,'2012 - 2015',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,553,1921,'und',0,'2010 to 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,553,1959,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,553,2497,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,555,1924,'und',0,'2011 to 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,555,1962,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,555,2499,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,556,9304,'und',0,'2012 - 2015',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,559,9307,'und',0,'2012 - 2015',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,560,1935,'und',0,'2011 to 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,560,1974,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,560,2110,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,560,2563,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,560,2641,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,560,2814,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,560,2815,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,560,2867,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,562,1938,'und',0,'2011 to 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,562,1977,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,562,2111,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,562,2561,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,562,2782,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,562,2783,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,562,2868,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,565,1942,'und',0,'2009 to 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,565,1981,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,565,2559,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,566,9308,'und',0,'2012 - 2015',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,567,1945,'und',0,'2011 to 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,567,1946,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,567,2112,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,567,2558,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,567,2828,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,567,2861,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,567,2862,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,569,1985,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,569,2557,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,571,1987,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,571,2556,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,575,1991,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,575,2555,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,575,2781,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,576,9309,'und',0,'2012 - 2015',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,578,1995,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,578,2492,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,578,2553,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,582,9310,'und',0,'2012 - 2015',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,583,2000,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,583,2113,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,583,2550,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,583,2632,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,586,1907,'und',0,'2011 to 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,586,2003,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,586,2549,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,593,2016,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,593,2114,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,593,2544,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,602,2027,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,602,2247,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,602,2542,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,604,2029,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,604,2540,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,607,2032,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,607,2115,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,607,2537,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,609,9312,'und',0,'2012 - 2015',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,610,1905,'und',0,'2009 to 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,610,2035,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,610,2108,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,610,2536,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,610,2955,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,610,3314,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,610,3391,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,610,3821,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,610,3846,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,612,2037,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,612,2535,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,612,3310,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,614,2039,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,614,2534,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,617,2044,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,617,2116,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,617,2530,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,621,2048,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,621,2528,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,637,2057,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,637,2154,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,637,2524,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,639,2059,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,639,2117,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,639,2520,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,639,2522,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,642,2062,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,642,2519,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,644,2063,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,644,2518,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,644,2657,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,644,2658,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,644,2659,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,644,2680,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,646,2067,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,646,2517,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,648,2069,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,648,2106,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,648,2514,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,649,2070,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,649,2512,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,652,9313,'und',0,'2012 - 2015',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,654,2076,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,654,2511,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,655,2077,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,655,2510,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,658,9314,'und',0,'2012 - 2015',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,659,9315,'und',0,'2012 - 2015',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,659,9328,'und',0,'2012 - 2015',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,659,9329,'und',0,'2012 - 2015',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,662,9317,'und',0,'2012 - 2015',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,668,2093,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,668,2172,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,668,2509,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,668,3387,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,670,2096,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,670,2508,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,670,2831,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,670,2869,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,673,2099,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,673,2295,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,673,2507,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,676,2102,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,676,2506,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,677,2103,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,677,2505,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,679,1923,'und',0,'2009 to 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,679,1961,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,679,2232,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,679,2498,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,680,1925,'und',0,'2010 to 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,680,1963,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,680,2500,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,681,1930,'und',0,'2009 to 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,681,1968,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,681,2502,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,682,1931,'und',0,'2011 to 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,682,1969,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,682,2504,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,683,1933,'und',0,'2011 to 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,683,1972,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,683,2109,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,683,2564,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,683,2644,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,683,2660,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,684,9306,'und',0,'2012 - 2015',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,685,1940,'und',0,'2009 to 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,685,1979,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,685,2560,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,685,2809,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,685,2810,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,685,2811,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,685,2865,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,687,2004,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,687,2547,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,688,2006,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,688,2545,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,688,3313,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,692,9311,'und',0,'2012 - 2015',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,694,1906,'und',0,'2011 to 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,694,2041,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,694,2533,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,694,2956,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,694,2957,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,694,2958,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,694,2959,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,694,3629,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,694,3820,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,695,2052,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,695,2526,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,695,2961,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,695,2963,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,695,3822,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,696,2051,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,696,2527,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,696,2813,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,697,2042,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,697,2532,'und',0,'2010 - 2013',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,705,1936,'und',0,'2011 to 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,705,1975,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,705,2562,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,705,2647,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,705,3070,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,705,3071,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,705,3073,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,705,8708,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,709,1908,'und',0,'2009 to 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,709,2084,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,709,2107,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,709,2515,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,709,2646,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,709,3072,'und',0,'2009 - 2012',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,729,2053,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,729,2525,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,729,3389,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,729,3390,'und',0,'2011 - 2014',NULL);
INSERT INTO `field_revision_field_leader_dates` VALUES ('node','college_profile',0,730,9318,'und',0,'2012 - 2015',NULL);
/*!40000 ALTER TABLE `field_revision_field_leader_dates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

