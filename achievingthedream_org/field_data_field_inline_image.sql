
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
DROP TABLE IF EXISTS `field_data_field_inline_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_data_field_inline_image` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned DEFAULT NULL COMMENT 'The entity revision id this data is attached to, or NULL if the entity type is not versioned',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_inline_image_fid` int(10) unsigned DEFAULT NULL COMMENT 'The file_managed.fid being referenced in this field.',
  `field_inline_image_alt` varchar(512) DEFAULT NULL,
  `field_inline_image_title` varchar(1024) DEFAULT NULL,
  `field_inline_image_width` int(10) unsigned DEFAULT NULL COMMENT 'The width of the image in pixels.',
  `field_inline_image_height` int(10) unsigned DEFAULT NULL COMMENT 'The height of the image in pixels.',
  PRIMARY KEY (`entity_type`,`entity_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`),
  KEY `field_inline_image_fid` (`field_inline_image_fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data storage for field 22 (field_inline_image)';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `field_data_field_inline_image` WRITE;
/*!40000 ALTER TABLE `field_data_field_inline_image` DISABLE KEYS */;
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,245,375,'und',0,161,'','Cross-State Data Work Group Table',560,449);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,277,415,'und',0,1426,'','',711,517);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,544,3074,'und',0,523,'','',399,505);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,545,3166,'und',0,564,'','',445,660);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,553,2497,'und',0,504,'','',349,515);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,565,2559,'und',0,535,'','',349,543);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,567,2862,'und',0,536,'','',381,508);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,569,2557,'und',0,537,'','',419,519);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,571,2556,'und',0,539,'','',486,607);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,575,2781,'und',0,541,'','',360,515);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,578,2553,'und',0,543,'','',359,524);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,583,2632,'und',0,545,'','',359,524);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,586,2549,'und',0,511,'','',320,528);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,602,2542,'und',0,550,'','',405,517);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,604,2540,'und',0,552,'','',383,553);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,607,2537,'und',0,554,'','',385,499);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,612,3310,'und',0,555,'','',360,514);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,614,2534,'und',0,557,'','',392,520);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,617,2530,'und',0,559,'','',340,522);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,637,2524,'und',0,576,'','',349,548);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,642,2519,'und',0,578,'','',410,519);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,648,2514,'und',0,586,'','',364,449);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,649,2512,'und',0,583,'','',407,502);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,655,2510,'und',0,566,'','',352,519);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,668,3387,'und',0,568,'','',345,514);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,676,2506,'und',0,572,'','',352,523);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,677,2505,'und',0,565,'CSI Intervention','',418,558);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,679,2498,'und',0,524,'','',339,510);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,680,2500,'und',0,505,'','',352,518);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,682,2504,'und',0,530,'','',377,513);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,683,2660,'und',0,528,'','',360,522);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,685,2865,'und',0,532,'','',384,502);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,687,2547,'und',0,513,'','',375,520);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,688,3313,'und',0,515,'','',374,445);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,690,1176,'und',0,325,'','',647,552);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,691,2013,'und',0,546,'','',346,508);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,692,9311,'und',0,548,'','',379,520);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,696,2813,'und',0,563,'','',394,511);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,697,2532,'und',0,560,'','',380,508);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,705,8708,'und',0,517,'','',375,519);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,729,3390,'und',0,574,'','',421,514);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,840,1795,'und',0,519,'','',333,441);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,840,1795,'und',1,642,'','',259,375);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,840,1795,'und',2,660,'','',180,180);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,840,1795,'und',3,685,'','',295,245);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,840,1795,'und',4,760,'','',200,227);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,840,1795,'und',5,787,'','',233,234);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,840,1795,'und',6,970,'','',380,259);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,840,1795,'und',7,1042,'','',460,316);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,840,1795,'und',8,1054,'','',410,308);
INSERT INTO `field_data_field_inline_image` VALUES ('node','press_release',0,1480,9111,'und',0,733,'T-Shirt Contest Winner, Levi Miller','',652,691);
INSERT INTO `field_data_field_inline_image` VALUES ('node','press_release',0,1480,9111,'und',1,734,'T-Shirt Contest Winner, Laura Shaler','',572,608);
INSERT INTO `field_data_field_inline_image` VALUES ('node','press_release',0,1480,9111,'und',2,735,'T-Shirt Contest Winner, Levi Miller','',626,390);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,1574,3326,'und',0,980,'','',200,150);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,1633,3461,'und',0,790,'','Agenda Cover',451,590);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,1634,3427,'und',0,789,'','Flash Drive',755,378);
INSERT INTO `field_data_field_inline_image` VALUES ('node','press_release',0,1779,3709,'und',0,900,'','',443,312);
INSERT INTO `field_data_field_inline_image` VALUES ('node','press_release',0,1779,3709,'und',1,903,'','',720,576);
INSERT INTO `field_data_field_inline_image` VALUES ('node','press_release',0,1779,3709,'und',2,905,'','',4320,3240);
INSERT INTO `field_data_field_inline_image` VALUES ('node','press_release',0,1779,3709,'und',3,908,'','',378,291);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,1897,3857,'und',0,981,'','',200,150);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,1916,3881,'und',0,962,'','',405,540);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,1918,3886,'und',0,1012,'','',200,150);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,1918,3886,'und',1,1132,'','',1800,1350);
INSERT INTO `field_data_field_inline_image` VALUES ('node','college_profile',0,2620,5224,'und',0,1036,'','',264,259);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,2793,5049,'und',0,1023,'','',1952,3264);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,2911,5311,'und',0,1122,'','',203,153);
INSERT INTO `field_data_field_inline_image` VALUES ('node','hidden_page',0,3183,5934,'und',0,1093,'','Horizontal Signature',300,160);
INSERT INTO `field_data_field_inline_image` VALUES ('node','hidden_page',0,3183,5934,'und',1,1095,'','',290,160);
INSERT INTO `field_data_field_inline_image` VALUES ('node','hidden_page',0,3183,5934,'und',2,1096,'','',300,300);
INSERT INTO `field_data_field_inline_image` VALUES ('node','hidden_page',0,3183,5934,'und',3,1097,'','',300,300);
INSERT INTO `field_data_field_inline_image` VALUES ('node','hidden_page',0,3183,5934,'und',4,1098,'','',200,200);
INSERT INTO `field_data_field_inline_image` VALUES ('node','hidden_page',0,3183,5934,'und',5,1099,'','',200,200);
INSERT INTO `field_data_field_inline_image` VALUES ('node','hidden_page',0,3184,5935,'und',0,1101,'','',1941,337);
INSERT INTO `field_data_field_inline_image` VALUES ('node','hidden_page',0,3184,5935,'und',1,1102,'','',388,67);
INSERT INTO `field_data_field_inline_image` VALUES ('node','hidden_page',0,3184,5935,'und',2,1103,'','',180,251);
INSERT INTO `field_data_field_inline_image` VALUES ('node','hidden_page',0,3184,5935,'und',3,1109,'','',174,245);
INSERT INTO `field_data_field_inline_image` VALUES ('node','hidden_page',0,3186,5936,'und',0,1106,'','',1800,1800);
INSERT INTO `field_data_field_inline_image` VALUES ('node','hidden_page',0,3186,5936,'und',1,1107,'','',216,216);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,3350,7205,'und',0,1127,'','',3589,2088);
INSERT INTO `field_data_field_inline_image` VALUES ('node','news',0,3389,7630,'und',0,1136,'','',250,376);
INSERT INTO `field_data_field_inline_image` VALUES ('node','news',0,3449,7867,'und',0,1168,'','',380,248);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,3481,7944,'und',0,1269,'','',200,150);
INSERT INTO `field_data_field_inline_image` VALUES ('node','news',0,3522,8092,'und',0,1191,'','',240,320);
INSERT INTO `field_data_field_inline_image` VALUES ('node','news',0,3595,8299,'und',0,1257,'','San Jacinto College computer information technology graduate Stephen Funderburk is making it on his own as an associate degree holder who now works as a systems administrator for a company in Houston. Photo credit: Jeannie Peng-Armao, San Jacinto College marketing department.',1200,797);
INSERT INTO `field_data_field_inline_image` VALUES ('node','news',0,3687,8545,'und',0,1282,'','Getting direction: Stories from today’s college student ',150,239);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,3760,8803,'und',0,1288,'','',652,691);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,3760,8803,'und',1,1289,'','',517,638);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,3760,8803,'und',2,1290,'','',760,600);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,3760,8803,'und',3,1291,'','',572,346);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,3871,9002,'und',0,1412,'','Disneyland Tickets',125,100);
INSERT INTO `field_data_field_inline_image` VALUES ('node','news',0,3911,9101,'und',0,1311,'','Engineering Students Donate Their Time',1024,678);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,3915,9109,'und',0,1333,'','',720,172);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,3916,9112,'und',0,1319,'','',440,298);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,3916,9112,'und',1,1320,'','',650,378);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,3959,9203,'und',0,1355,'','Robert Ramirez',300,300);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,3959,9203,'und',1,1356,'','Elizabeth Davis',300,300);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,3959,9203,'und',2,1357,'','Sam Jones',300,300);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,3959,9203,'und',3,1358,'','Sandra Valley Bagley',300,300);
INSERT INTO `field_data_field_inline_image` VALUES ('node','press_release',0,3962,9210,'und',0,1363,'Sandra Valley Bagley','',1728,1152);
INSERT INTO `field_data_field_inline_image` VALUES ('node','press_release',0,3962,9210,'und',1,1364,'Elizabeth Davis','',900,1125);
INSERT INTO `field_data_field_inline_image` VALUES ('node','press_release',0,3962,9210,'und',2,1365,'Sam Jones','',795,957);
INSERT INTO `field_data_field_inline_image` VALUES ('node','press_release',0,3962,9210,'und',3,1366,'Robert Ramirez','',1800,1200);
INSERT INTO `field_data_field_inline_image` VALUES ('node','news',0,3966,9237,'und',0,1378,'','',383,336);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,3979,9324,'und',0,1451,'','',200,150);
INSERT INTO `field_data_field_inline_image` VALUES ('node','page',0,3998,9369,'und',0,1411,'','Disneyland Tickets',120,240);
INSERT INTO `field_data_field_inline_image` VALUES ('node','news',0,4050,9637,'und',0,1446,'','',436,168);
/*!40000 ALTER TABLE `field_data_field_inline_image` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

