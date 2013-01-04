
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
DROP TABLE IF EXISTS `field_data_field_quote_attribution`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_data_field_quote_attribution` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned DEFAULT NULL COMMENT 'The entity revision id this data is attached to, or NULL if the entity type is not versioned',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_quote_attribution_value` varchar(255) DEFAULT NULL,
  `field_quote_attribution_format` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entity_type`,`entity_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`),
  KEY `field_quote_attribution_format` (`field_quote_attribution_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data storage for field 34 (field_quote_attribution)';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `field_data_field_quote_attribution` WRITE;
/*!40000 ALTER TABLE `field_data_field_quote_attribution` DISABLE KEYS */;
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,544,3074,'und',0,'Susan A. Winsor, President, Aiken Technical College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,545,3166,'und',0,'Bruce H. Leslie, Chancellor, Alamo Colleges',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,547,1950,'und',0,'Dr. Russell Lowery-Hart, Vice President for Academic Affairs, Amarillo College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,548,1952,'und',0,'Hank Dunn, President, Asheville-Buncombe Technical Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,549,1953,'und',0,'Flora W. Tydings, President, Athens Technical College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,552,1956,'und',0,'Dr. McKeown, President, Bellingham Technical College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,553,2497,'und',0,'Millicent M. Valek, President, Brazosport College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,555,2499,'und',0,'Mary L. Fifield, PhD., President, Bunker Hill Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,557,2476,'und',0,'Dr. Ron Anderson, President, Century College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,558,1967,'und',0,'Dr. John Walstrum, President, Clover Park Technical College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,560,2867,'und',0,'Dr. Joe D. Forrester, President, Community College of Beaver County',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,562,2868,'und',0,'Joyce Judy, President, Community College of Vermont',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,565,2559,'und',0,'B. Carlyle Ramsey, President, Danville Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,567,2862,'und',0,'Jerome S. Parker, President, Delaware County Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,569,2557,'und',0,'William G. Ingram, President, Durham Technical Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,570,1986,'und',0,'Daniel LaVista, Chancellor, Los Angeles Community College District',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,572,1988,'und',0,'Lawrence Barrett, President, Eastern Maine Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,575,2781,'und',0,'Richard M. Rhodes, President, El Paso Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,577,2860,'und',0,'David Beyer, President, Everett Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,581,1998,'und',0,'Ed Brewster, Ed.D., President, Grays Harbor College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,583,2632,'und',0,'Donald W. Cameron,  President, Guilford Technical Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,586,2549,'und',0,'Jack Bermingham, President, Highline Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,589,2009,'und',0,'Tony Newberry, President and CEO, Jefferson Community and Technical College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,591,2014,'und',0,'Mary Spilde, President, Lane Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,599,2023,'und',0,'Dr. Chip Chapdelaine, President, Los Angeles Trade-Technical College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,601,2777,'und',0,'Chris Bailey, President, Lower Columbia College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,602,2542,'und',0,'Ann R. Britt, President, Martin Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,604,2540,'und',0,'Karen A. Stout, President, Montgomery County Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,607,2537,'und',0,'Scott Hamilton, President, Mountain Empire Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,610,3846,'und',0,'Margie Huerta, President, Doña Ana Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,612,3310,'und',0,'Donald L. Plotts, President, North Central State College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,614,2534,'und',0,'Arthur L. Scott, President, Northampton Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,617,2530,'und',0,'David L. Levinson, President, Norwalk Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,618,3194,'und',0,'Tim Meyer, Chancellor, Oakland Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,621,2528,'und',0,'Walter A. Tobin, President, Orangeburg-Calhoun Technical College  ',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,636,2056,'und',0,'Charlene M. Dukes, President, Prince George’s Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,637,2524,'und',0,'Dan F. Bakke, President, Pulaski Technical College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,638,2058,'und',0,'Casey Crabill, President, Raritan Valley Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,639,2522,'und',0,'Steve Hanson, President, Renton Technical College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,642,2519,'und',0,'Terrence Gomes, President, Roxbury Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,644,2680,'und',0,'Dr. Brenda Hellyer, Chancellor, San Jacinto College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,646,2517,'und',0,'Steven Johnson, President, Sinclair Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,647,2068,'und',0,'Dr. Gary Tollefson, President, Skagit Valley College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,648,2514,'und',0,'Shirley A. Reed, President, South Texas College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,649,2512,'und',0,'Ismael Sosa Jr., President, Southwest Texas Junior College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,654,2511,'und',0,'Pamela J. Transue, President, Tacoma Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,655,2510,'und',0,'Jim Murdaugh, President, TCC',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,657,2078,'und',0,'Erma Johnson Hadley, Chancellor, Tarrant County College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,668,3387,'und',0,'Sanford C. Shugart, President, Valencia College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,670,2869,'und',0,'Curtis L. Ivery, Chancellor, Wayne County Communty College District',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,673,2507,'und',0,'Daniel J. Obara, President, Westmoreland County Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,675,2101,'und',0,'Kathi Hiyane-Brown, President, Whatcom Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,676,2506,'und',0,'Linda J. Kaminski, President, Yakima Valley Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,677,2505,'und',0,'Dr. Paul R. Brown, President, Zane State College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,678,3076,'und',0,'Martha A. Smith, President, Anne Arundel Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,679,2498,'und',0,'J. David Armstrong, Jr., President, Broward College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,680,2500,'und',0,'Wilfredo Nieves, President, Capital Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,681,2502,'und',0,'Thomas B. Baynum, President, Coastal Bend College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,682,2504,'und',0,'Dr. Michael Elam, President, College of the Mainland',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,683,2660,'und',0,'Alex Johnson, President, Community College of Allegheny County',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,685,2865,'und',0,'Jerry Sue Thornton, President, Cuyahoga Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,687,2547,'und',0,'Ken Atwater, President, Hillsborough Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,688,3313,'und',0,'Mary S. Spangler, Chancellor, Houston Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,691,2013,'und',0,'Dr. Robert Harrison, President, Lake Michigan College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,692,9311,'und',0,'Karen L. Miner, Achieving the Dream Director, Lone Star College System',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,694,3820,'und',0,'Dr. Lane A. Glenn, President, Northern Essex Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,695,3822,'und',0,'Paul W. Conco, President, Paul D. Camp Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,696,2813,'und',0,'Max F. Wingett, President, Patrick Henry Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,697,2532,'und',0,'Robert G. Templin, Jr., President, Northern Virginia Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,705,8708,'und',0,'Stephen M. Curtis, President, Community College of Philadelphia',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,729,3390,'und',0,'Steven F. Murray, Chancellor, Phillips Community College of the University of Arkansas',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,2616,5214,'und',0,'Anthony O. Parker, President, Albany Technical College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,2617,5216,'und',0,'Fitzgerald Hill, Ed.D.,  President, Arkansas Baptist College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,2619,5219,'und',0,'Terry Elam, President, Augusta Technical College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,2620,5224,'und',0,'Stephen Franks, President, Central Alabama Community College ',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,2621,5226,'und',0,'Michael D. Moye, Ed.D., President, Central Georgia Technical College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,2622,5140,'und',0,'Dr. Michael D. Richards, President, College of Southern Nevada',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,2623,5232,'und',0,'David T. Harrison, Ph.D., President, Columbus State Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,2624,5235,'und',0,'J. Robert Jones, President, Columbus Technical College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,2625,5236,'und',0,'Dr. Patricia Skinner, President, Gaston College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,2626,5237,'und',0,'J. Larry Teems, Acting President, Georgia Piedmont Technical College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,2627,6063,'und',0,'Michele L. Johnson, Ph.D., Chancellor, Pierce College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,2628,5347,'und',0,'Brenda S. Kays, Ed.D., President, Stanly Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,2629,5395,'und',0,'Dr. Vicki Hawsey, President, Wallace State Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,2630,5454,'und',0,'Dr. Greg Hamann, President, Linn-Benton Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,2631,5531,'und',0,'William D. Law, Jr., President, St. Petersburg College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,2632,5238,'und',0,'Eduardo J. Padrón, Ph.D., President, Miami Dade College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,2637,5241,'und',0,'Bruce Koike, Interim President, Oregon Coast Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,2638,5343,'und',0,'Dr. Patty Scott, President, Southwestern Oregon Community College',NULL);
INSERT INTO `field_data_field_quote_attribution` VALUES ('node','college_profile',0,2642,5239,'und',0,'Dr. Regina Peruggi, President, Kingsborough Community College',NULL);
/*!40000 ALTER TABLE `field_data_field_quote_attribution` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

