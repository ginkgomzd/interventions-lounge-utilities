
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
DROP TABLE IF EXISTS `field_revision_field_target_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_revision_field_target_url` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_target_url_url` varchar(2048) DEFAULT NULL,
  `field_target_url_title` varchar(255) DEFAULT NULL,
  `field_target_url_attributes` mediumtext,
  PRIMARY KEY (`entity_type`,`entity_id`,`revision_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Revision archive storage for field 18 (field_target_url)';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `field_revision_field_target_url` WRITE;
/*!40000 ALTER TABLE `field_revision_field_target_url` DISABLE KEYS */;
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,712,1208,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/about_us',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,712,1372,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/about_us',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,712,2780,'und',0,'http://achievingthedream.org/about_us',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,1335,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/get_involved/events',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,1347,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/get_involved/events',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,1351,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/get_involved/events',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,1369,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/get_involved/events',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,1371,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/get_involved/events',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,1405,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/get_involved/events',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,1406,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/get_involved/events',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,1491,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/get_involved/events',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,1492,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/get_involved/events',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,2778,'und',0,'http://achievingthedream.org/get_involved/events',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,2785,'und',0,'http://www.achievingthedreammembers.org/members/dreamdefault.html',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,2799,'und',0,'http://www.achievingthedreammembers.org/members/dreamdefault.html',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,2800,'und',0,'http://www.achievingthedreammembers.org/members/dreamdefault.html',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,2801,'und',0,'http://www.achievingthedreammembers.org/members/dreamdefault.html',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,2802,'und',0,'http://www.achievingthedreammembers.org/members/dreamdefault.html',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,2803,'und',0,'http://www.achievingthedreammembers.org/members/dreamdefault.html',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,2806,'und',0,'http://www.achievingthedreammembers.org/members/dreamdefault.html',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,2807,'und',0,'http://www.achievingthedreammembers.org/members/dreamdefault.html',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,2808,'und',0,'http://www.achievingthedreammembers.org/members/dreamdefault.html',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,3170,'und',0,'http://www.achievingthedreammembers.org/members/dreamdefault.html',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,3171,'und',0,'http://www.achievingthedreammembers.org/members/dreamdefault.html',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,3172,'und',0,'http://www.achievingthedreammembers.org/members/dreamdefault.html',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,718,3173,'und',0,'http://www.achievingthedreammembers.org/members/dreamdefault.html',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,731,1385,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/press_release/statement_achieving_dream_president_and_ceo_william_e_trueheart_valencia_college_being',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,731,1397,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/press_release/statement_achieving_dream_president_and_ceo_william_e_trueheart_valencia_college_being',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,731,1399,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/press_release/statement_achieving_dream_president_and_ceo_william_e_trueheart_valencia_college_being',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,731,1400,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/press_release/statement_achieving_dream_president_and_ceo_william_e_trueheart_valencia_college_being',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,731,1417,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/press_release/statement_achieving_dream_president_and_ceo_william_e_trueheart_valencia_college_being',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,731,1418,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/press_release/statement_achieving_dream_president_and_ceo_william_e_trueheart_valencia_college_being',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,731,1421,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/press_release/statement_achieving_dream_president_and_ceo_william_e_trueheart_valencia_college_being',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,731,2593,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/map/colleges?field_college_type_tid%5B%5D=33',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,731,2596,'und',0,'http://www.achievingthedream.org/map/colleges/leader_colleges',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,731,5227,'und',0,'http://www.achievingthedream.org/press_release/270000_students_now_have_a_better_chance_of_graduating_from_college_and_achieving',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,731,5228,'und',0,'http://www.achievingthedream.org/press_release/270000_students_now_have_a_better_chance_of_graduating_from_college_and_achieving',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,733,1404,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/press_release/statement_achieving_dream_president_and_ceo_william_e_trueheart_valencia_college_being',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,733,1424,'und',0,'http://achievingthedream.org.rste057vlmp01.blackmesh.com/press_release/statement_achieving_dream_president_and_ceo_william_e_trueheart_valencia_college_being',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,733,2779,'und',0,'http://achievingthedream.org/press_release/statement_achieving_dream_president_and_ceo_william_e_trueheart_valencia_college_being',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,733,7147,'und',0,'http://www.achievingthedream.org/WalmartPRESSforCompletionGrantRecipients',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,1477,3165,'und',0,'www.achievingthedream.org',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,1477,3176,'und',0,'http://www.achievingthedream.org/press_release/two_community_college_students_win_big_inaugural_dream_big_college_t_shirt_design',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,1477,3177,'und',0,'http://www.achievingthedream.org/press_release/two_community_college_students_win_big_inaugural_dream_big_college_t_shirt_design',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,1477,3178,'und',0,'http://www.achievingthedream.org/press_release/two_community_college_students_win_big_inaugural_dream_big_college_t_shirt_design',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,1477,3179,'und',0,'http://www.achievingthedream.org/press_release/two_community_college_students_win_big_inaugural_dream_big_college_t_shirt_design',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,1477,3180,'und',0,'http://www.achievingthedream.org/press_release/two_community_college_students_win_big_inaugural_dream_big_college_t_shirt_design',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,1477,3185,'und',0,'http://www.achievingthedream.org/press_release/two_community_college_students_win_big_inaugural_dream_big_college_t_shirt_design',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,1678,3537,'und',0,'http://achievingthedream.org/DREAM2012',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,1678,3539,'und',0,'http://achievingthedream.org/DREAM2012',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,1678,3547,'und',0,'http://achievingthedream.org/DREAM2012',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,1678,3672,'und',0,'http://achievingthedream.org/DREAM2012',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,1679,3538,'und',0,'http://achievingthedream.org/DREAM2012',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,1679,3540,'und',0,'http://achievingthedream.org/DREAM2012',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,1679,3541,'und',0,'http://achievingthedream.org',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,1679,3605,'und',0,'http://www.achievingthedream.org/press_release/zane_state_college_receives_national_award',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,1729,3628,'und',0,'http://www.achievingthedream.org',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,1729,3630,'und',0,'www.facebook.org/achievingthedream',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,1729,3631,'und',0,'www.facebook.org/achievingthedream',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,1729,3701,'und',0,'http://www.achievingthedream.org/press_release/prince_george_s_county_community_college_student_wins_dream_big_for_college_video',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3349,7199,'und',0,'www.achievingthedream.org/DREAM2013',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3349,7200,'und',0,'www.achievingthedream.org/DREAM2013',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3349,8494,'und',0,'www.achievingthedream.org/DREAM2013',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3349,8495,'und',0,'www.achievingthedream.org/DREAM2013',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3349,8496,'und',0,'www.achievingthedream.org/DREAM2013',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3349,8497,'und',0,'www.achievingthedream.org/DREAM2013',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3349,8498,'und',0,'www.achievingthedream.org/DREAM2013',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3349,8796,'und',0,'www.achievingthedream.org/DREAM2013',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3349,8800,'und',0,'www.achievingthedream.org/DREAM2013',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3349,8816,'und',0,'www.achievingthedream.org/DREAM2013',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3349,9017,'und',0,'www.achievingthedream.org/DREAM2013',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3349,9018,'und',0,'www.achievingthedream.org/DREAM2013',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3349,9019,'und',0,'www.achievingthedream.org/DREAM2013',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3349,9126,'und',0,'www.achievingthedream.org/DREAM2013',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3493,7970,'und',0,'http://achievingthedream.org/Initiatives/Catalyst_Fund',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3493,7971,'und',0,'http://achievingthedream.org/Initiatives/Catalyst_Fund',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3761,8782,'und',0,'http://www.achievingthedream.org',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3761,8783,'und',0,'http://www.achievingthedream.org/student_engagement_campaign',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3761,8794,'und',0,'http://www.achievingthedream.org/student_engagement_campaign',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3761,8795,'und',0,'http://www.achievingthedream.org/student_engagement_campaign',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3960,9204,'und',0,'http://www.achievingthedream.org/approach/public_engagement/dreambassadors',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3965,9228,'und',0,'http://achievingthedream.org/institutional_change/leah_meyer_austin_award',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3965,9229,'und',0,'http://achievingthedream.org/institutional_change/leah_meyer_austin_award',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3965,9230,'und',0,'http://achievingthedream.org/institutional_change/leah_meyer_austin_award',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3965,9231,'und',0,'http://achievingthedream.org/institutional_change/leah_meyer_austin_award',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3965,9232,'und',0,'http://achievingthedream.org/institutional_change/leah_meyer_austin_award',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3965,9233,'und',0,'http://achievingthedream.org/institutional_change/leah_meyer_austin_award',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3965,9241,'und',0,'http://achievingthedream.org/institutional_change/leah_meyer_austin_award',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3975,9299,'und',0,'http://www.achievingthedream.org',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3975,9300,'und',0,'http://www.achievingthedream.org',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3975,9301,'und',0,'http://www.achievingthedream.org',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,3975,9321,'und',0,'www.achievingthedream.org/press_release/14_achieving_the_dream_institutions_earn_leader_college_distinction',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,4039,9577,'und',0,'http://achievingthedream.org/press_release/11_states_to_work_toward_improving_student_success_at_community_colleges',NULL,'a:0:{}');
INSERT INTO `field_revision_field_target_url` VALUES ('node','slideshow_image',0,4039,9578,'und',0,'http://achievingthedream.org/press_release/11_states_to_work_toward_improving_student_success_at_community_colleges',NULL,'a:0:{}');
/*!40000 ALTER TABLE `field_revision_field_target_url` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

