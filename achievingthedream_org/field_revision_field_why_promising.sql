
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
DROP TABLE IF EXISTS `field_revision_field_why_promising`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_revision_field_why_promising` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_why_promising_value` longtext,
  `field_why_promising_summary` longtext,
  `field_why_promising_format` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entity_type`,`entity_id`,`revision_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`),
  KEY `field_why_promising_format` (`field_why_promising_format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Revision archive storage for field 58 (field_why_promising)';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `field_revision_field_why_promising` WRITE;
/*!40000 ALTER TABLE `field_revision_field_why_promising` DISABLE KEYS */;
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3791,8863,'und',0,'The course is designed to reduce the number of developmental education courses students must take for college readiness and increase critical thinking content.','','plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3795,8867,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3796,8891,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3797,8892,'und',0,'Acceleration is showing some promise as a strategy for moving students through remediation quickly. Pass rates in redesigned English courses are slightly higher. Both the above strategies are showing positive results.','','plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3798,8893,'und',0,'As they have demonstrated in math and backed by research, CAI if done appropriately is an effective intervention.  Incorporating emotional intelligence components into a course has also been effective as seen in their intervention with the gateway course, College English.','','plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3799,8894,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3800,8895,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3806,8901,'und',0,'Contextualized curriculum is a valuable process if instruction uses curriculum to make relationships among disciplines and to acelerate a student\'s progress to college level work.','','plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3807,8902,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3808,8903,'und',0,'A 2010 study by CCRC using college data found that students who participated in ALP were much more likely to pass college-level English courses compared to those students who took the highest level of developmental writing (ENGL052) by itself.  The study found that the ALP approach is more cost-effective strategy for enabling students to take and pass English 101 and 102 than the conventional sequential developmental education model.  The study found no association between ALP enrollment and increased persistence, however. A more recent analysis by CCRC that tracked students over a longer period and used a matched sample technique confirmed the findings of the 2010 analysis that ALP students outperformed their non-ALP counterparts in completing college-level English courses.   In addition, by using a larger number of cohorts and tracking students over a longer period of time, CCRC also found that ALP students were more likely to persist to the next year and accumulate more college credits than were non-ALP students.','','plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3809,8904,'und',0,'Case management is an intensive advising and mentoring concept that is student-focused.  It focuses on individual student need and academic/career planning efforts.  It closely monitors students and insists upon frequent interaction.  Research shows that interaction is the most important factor in determining whether students persist.',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3811,8906,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3813,8908,'und',0,'The success of the learning communities lies with the success of a newly designed college success course.',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3814,8909,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3815,8910,'und',0,'Developmental English students and other students needing the most academic help were targeted for interventions. 52.2% of Developmental English students who participated in the mandatory orientation received a C or better, versus 48.8% of those who did not participate. Approximately 75% of those were retained by the college. The overall retention rate of those participating in an intervention versus those who did not was 81.4% (did participate) versus 74.6% (did not) (Fall to Spring, 2010 to 2011). Success rates for passing a core English class and improved retention rates indicate that the program is on the right track. Thus far approximately 300 students have been impacted.',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3816,8911,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3818,8913,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3819,8914,'und',0,'The format allows for student to move through developmental math at a more rapid rate.  This intervention is in the early stages. Students only take the modules where there are deficiencies.  This directly identifies and addresses where a deficiency exists.',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3821,8916,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3822,8917,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3825,8920,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3826,8921,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3827,8922,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3828,8923,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3829,8924,'und',0,'The success rate for students in developmental math have increased from 42% in spring 2010 to 55% in fall 2010 to 62% in fall 2011.','','plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3830,8925,'und',0,'The results for students within the specific course are promising, but what is particularly attractive about this intervention is the work of mapping across several courses to ensure greater integration.',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3831,8926,'und',0,'Improved retention from term-to-term and year-to-year.',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3832,8927,'und',0,'MyMathLab is the recognized industry standard.  It is designed to move students through math at their own pace.  It has built-in supports and creates a work environment that optimizes the time of lab instructors. EGCC\'s evaluation results show increased pass rates in redesigned math classes.',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3833,8928,'und',0,'This is a more intrusive approach with additional time on task which has contributed significantly to increased success rates (which when they first started were addmitedly extremely low).','','plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3834,8929,'und',0,'Higher success rates (77% for those who participated vs. 71% of those who did not).',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3835,8930,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3836,8931,'und',0,'Based on data that too many students were not successfully completing the college algebra courses needed for a degree, and analyzing the data that demonstrated a time gap in student enrolling in these two courses, the College created this math linkage program so students would not lose what they had learned in the intermediate algebra course.',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3838,8933,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3839,8934,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3840,8935,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3841,8936,'und',0,'This intervention has shown higher success rates among attendees when compared to non attendees.  The progression rates through the developmental courses and into gateway courses has also improved. Finally, this intervention has also demonstrated higher rates of success among students of color and significantly lowered achievement gaps.','','plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3842,8937,'und',0,'',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3843,8938,'und',0,'This will enable students to progress more rapidly into other developmental courses with improved understanding of numeracy, and progress into math courses appropriate to their chosen field of study. This intervention has been through several evolutionary stages and has increasingly zeroed in on which students are under-prepared, and how best to address their differing levels of need for special support.',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3844,8939,'und',0,'The mathematics faculty will be able to ascertain which form of lecture/lab combination is most effective.  Also, the modular approach is beneficial, especially for upper level students.',NULL,'plain_text');
INSERT INTO `field_revision_field_why_promising` VALUES ('node','mx_intervention',0,3937,9156,'und',0,'Success rates in Dev Ed and Gateway math combined have grown from 40% in 2006 to 44.9% in 2011.  For Development math, rates increased over the same period from 35.4% to 40.3% and in Gateway math, from 26.2 to 44.9%.  Students moving through the Dev Ed treatments resulted in higher overall Gateway math success rates that rose steadily over the period as more students moved through the pipeline.','','filtered_html');
/*!40000 ALTER TABLE `field_revision_field_why_promising` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

