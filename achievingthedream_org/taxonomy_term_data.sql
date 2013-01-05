
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
DROP TABLE IF EXISTS `taxonomy_term_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxonomy_term_data` (
  `tid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: Unique term ID.',
  `vid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The taxonomy_vocabulary.vid of the vocabulary to which the term is assigned.',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT 'The term name.',
  `description` longtext COMMENT 'A description of the term.',
  `format` varchar(255) DEFAULT NULL COMMENT 'The filter_format.format of the description.',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT 'The weight of this term in relation to other terms.',
  PRIMARY KEY (`tid`),
  KEY `taxonomy_tree` (`vid`,`weight`,`name`),
  KEY `vid_name` (`vid`,`name`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='Stores term information.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `taxonomy_term_data` WRITE;
/*!40000 ALTER TABLE `taxonomy_term_data` DISABLE KEYS */;
INSERT INTO `taxonomy_term_data` VALUES (1,2,'ATD in the News','','filtered_html',1);
INSERT INTO `taxonomy_term_data` VALUES (2,2,'Colleges in the News','','filtered_html',0);
INSERT INTO `taxonomy_term_data` VALUES (6,2,'Policy Newsletter','','filtered_html',2);
INSERT INTO `taxonomy_term_data` VALUES (8,2,'Data Newsletter','','filtered_html',3);
INSERT INTO `taxonomy_term_data` VALUES (9,3,'Video','','filtered_html',0);
INSERT INTO `taxonomy_term_data` VALUES (10,3,'Guide','','filtered_html',0);
INSERT INTO `taxonomy_term_data` VALUES (11,4,'Equity','','filtered_html',11);
INSERT INTO `taxonomy_term_data` VALUES (13,4,'Policy Change','<p>Public policy is a powerful force that can either help or hinder the efforts of community colleges working to increase rates of success for students. As more students earn post-secondary credentials within a given community, they are prepared to contribute more highly-valued skills and participate in building a strong and stable economy. With 6.7 million students enrolled in the nation&rsquo;s 1,200 community colleges, there is a powerful incentive for lawmakers at every level to facilitate their success. Achieving the Dream is showing that once legislators and policymakers understand this dynamic, they become our partners in implementing well-informed, far-reaching policy changes.</p><p>Since 2004, Jobs for the Future has led the state-policy and capacity-building efforts for Achieving the Dream, working closely with policymakers in 15 states. The goal is to align state policy with lessons from community colleges working to improve student progress and completion, so that promising practices and processes are adopted and sustained statewide.</p><p>Achieving the Dream&rsquo;s state policy work focuses on:</p><ul><li>Developing a visible public policy commitment to student access and success</li><li>Strengthening state data systems and their use to make student outcomes more transparent and facilitate higher performance</li><li>Aligning community college academic expectations with those of secondary systems and four-year higher education institutions</li><li>Providing incentives for improved services for academically underprepared students</li><li>Expanding funding incentives and financial aid policies that increase persistence</li></ul>','filtered_html',13);
INSERT INTO `taxonomy_term_data` VALUES (14,3,'Audio','','filtered_html',0);
INSERT INTO `taxonomy_term_data` VALUES (15,3,'Evaluation','','filtered_html',0);
INSERT INTO `taxonomy_term_data` VALUES (16,3,'Report','','filtered_html',0);
INSERT INTO `taxonomy_term_data` VALUES (18,4,'Use of Evidence','','filtered_html',8);
INSERT INTO `taxonomy_term_data` VALUES (19,4,'Developmental Education','','filtered_html',1);
INSERT INTO `taxonomy_term_data` VALUES (20,4,'Engagement','','filtered_html',4);
INSERT INTO `taxonomy_term_data` VALUES (21,4,'Scaling','','filtered_html',5);
INSERT INTO `taxonomy_term_data` VALUES (22,4,'Leadership','<p><strong>Summary:&nbsp;</strong><br />The looming leadership void threatens the long-term sustainability of important institutional change work for student success underway at the nation&rsquo;s community colleges. Achieving the Dream, along with <a href=\"http://www.aspeninstitute.org/\" target=\"_blank\">The Aspen Institute</a>, is addressing this challenge by instituting a new task force of Achieving the Dream Leader College Presidents who are committed to ensuring that their evidence-based, student-centered reforms continue with the next generation of leaders.</p><p><strong>The Challenge:&nbsp;</strong><br />Reductions in public funding support, increases in enrollment, changes in student demographics, greater completion expectations, ever-changing technologies, and new types of competitors are all evolving challenges facing community college leaders. These phenomena are occurring while a majority of community college presidents are approaching retirement and many community college doctoral leadership programs are experiencing significant declines in enrollment.</p><p><strong>Our Solution:</strong><br />A new partnership with the <a href=\"http://www.aspeninstitute.org/\" target=\"_blank\">The Aspen Institute</a> is researching how to best help Achieving the Dream Leader College Presidents sustain their important student-centered reforms through the next generation of leaders. Achieving the Dream will create an idea-sharing space in community college leadership development. Open source information will be made available to Achieving the Dream stakeholders and other organizations involved in educational leadership. Curricular modules will be developed with Leader College Presidents for use throughout the Achieving the Dream National Reform Network. A report with findings and recommendations on leadership development will be released in late 2012.</p><p><em>&ldquo;The nation&rsquo;s community colleges face a new set of realities that require a new set of dynamic skills from future leaders: achieving significantly better outcomes for an increasingly diverse and growing student body at a lower cost per student. Achieving the Dream Leader College Presidents have formed a new task force that will provide the 21st century community college president with the knowledge and skills needed to thrive in this new environment.&rdquo;</em>&nbsp;-<a href=\"/people/robert_g_templin_jr_edd\" target=\"_blank\">Robert G. Templin</a>, Chairman of Achieving the Dream Board of Directors and President of <a href=\"/college_profile/northern_virginia_community_college\" target=\"_blank\">Northern Virginia Community College</a></p>','filtered_html',0);
INSERT INTO `taxonomy_term_data` VALUES (23,4,'Technology','','filtered_html',16);
INSERT INTO `taxonomy_term_data` VALUES (24,4,'Communications','','filtered_html',14);
INSERT INTO `taxonomy_term_data` VALUES (25,4,'Continuous Improvement','','filtered_html',10);
INSERT INTO `taxonomy_term_data` VALUES (27,3,'Toolkit','','filtered_html',0);
INSERT INTO `taxonomy_term_data` VALUES (28,3,'Assessment','','filtered_html',0);
INSERT INTO `taxonomy_term_data` VALUES (29,4,'Institutional Research & IT','','filtered_html',15);
INSERT INTO `taxonomy_term_data` VALUES (30,3,'Case Study','','filtered_html',0);
INSERT INTO `taxonomy_term_data` VALUES (31,3,'Presentation','','filtered_html',0);
INSERT INTO `taxonomy_term_data` VALUES (33,5,'Leader College','','filtered_html',0);
INSERT INTO `taxonomy_term_data` VALUES (34,5,'Participating Institution','','filtered_html',2);
INSERT INTO `taxonomy_term_data` VALUES (35,5,'Former Institution','','filtered_html',3);
INSERT INTO `taxonomy_term_data` VALUES (36,5,'Former Leader College','','filtered_html',1);
INSERT INTO `taxonomy_term_data` VALUES (37,6,'Authoring Organization','','filtered_html',0);
INSERT INTO `taxonomy_term_data` VALUES (38,6,'Investor','','filtered_html',3);
INSERT INTO `taxonomy_term_data` VALUES (39,6,'Founding Investor','','filtered_html',1);
INSERT INTO `taxonomy_term_data` VALUES (40,6,'Partner','','filtered_html',4);
INSERT INTO `taxonomy_term_data` VALUES (41,6,'Founding Partner','','filtered_html',2);
INSERT INTO `taxonomy_term_data` VALUES (42,6,'Friend','','filtered_html',5);
INSERT INTO `taxonomy_term_data` VALUES (43,2,'Achieving the Dream Newsletter','','filtered_html',4);
INSERT INTO `taxonomy_term_data` VALUES (44,7,'From the Field','<p>News from and about our participating institutions.</p>','filtered_html',0);
INSERT INTO `taxonomy_term_data` VALUES (45,7,'Achieving Success','','filtered_html',2);
INSERT INTO `taxonomy_term_data` VALUES (46,7,'Data Notes','','filtered_html',3);
INSERT INTO `taxonomy_term_data` VALUES (47,7,'Recommended Reading','<p>New and/or useful resources and publications.</p>','filtered_html',4);
INSERT INTO `taxonomy_term_data` VALUES (48,7,'Inside Achieving the Dream','<p>News from headquarters: new hires, promotions, etc.</p>','filtered_html',1);
INSERT INTO `taxonomy_term_data` VALUES (49,8,'Test Newsletter 2012','','filtered_html',0);
INSERT INTO `taxonomy_term_data` VALUES (50,2,'Student Profile','','filtered_html',0);
INSERT INTO `taxonomy_term_data` VALUES (51,9,'DREAM 2013 Logistics','','filtered_html',1);
INSERT INTO `taxonomy_term_data` VALUES (52,9,'DREAM 2013 Session Submission','','filtered_html',0);
INSERT INTO `taxonomy_term_data` VALUES (53,4,'Career Pathways','','filtered_html',2);
INSERT INTO `taxonomy_term_data` VALUES (54,4,'Volunteerism','','filtered_html',3);
INSERT INTO `taxonomy_term_data` VALUES (55,4,'Prior Learning Assessment','','filtered_html',7);
INSERT INTO `taxonomy_term_data` VALUES (56,4,'Faculty Engagement','','filtered_html',1);
INSERT INTO `taxonomy_term_data` VALUES (57,4,'Student Engagement','','filtered_html',0);
INSERT INTO `taxonomy_term_data` VALUES (58,4,'Financial Literacy','','filtered_html',6);
/*!40000 ALTER TABLE `taxonomy_term_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

