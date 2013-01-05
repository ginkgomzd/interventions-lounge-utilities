
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
DROP TABLE IF EXISTS `views_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `views_view` (
  `vid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The view ID of the field, defined by the database.',
  `name` varchar(128) NOT NULL DEFAULT '' COMMENT 'The unique name of the view. This is the primary field views are loaded from, and is used so that views may be internal and not necessarily in the database. May only be alphanumeric characters plus underscores.',
  `description` varchar(255) DEFAULT '' COMMENT 'A description of the view for the admin interface.',
  `tag` varchar(255) DEFAULT '' COMMENT 'A tag used to group/sort views in the admin interface',
  `base_table` varchar(64) NOT NULL DEFAULT '' COMMENT 'What table this view is based on, such as node, user, comment, or term.',
  `human_name` varchar(255) DEFAULT '' COMMENT 'A human readable name used to be displayed in the admin interface',
  `core` int(11) DEFAULT '0' COMMENT 'Stores the drupal core version of the view.',
  PRIMARY KEY (`vid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='Stores the general data for a view.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `views_view` WRITE;
/*!40000 ALTER TABLE `views_view` DISABLE KEYS */;
INSERT INTO `views_view` VALUES (1,'all_news_feeds','','default','node','all news feeds',7);
INSERT INTO `views_view` VALUES (2,'admin_all_news','','default','node','Admin All News',7);
INSERT INTO `views_view` VALUES (3,'people','','default','node','People',7);
INSERT INTO `views_view` VALUES (4,'brag_bar','','default','node','Brag Bar',7);
INSERT INTO `views_view` VALUES (5,'nodequeue_2','Display a list of all nodes in queue \'Homepage Spotlight\'','nodequeue','node','',0);
INSERT INTO `views_view` VALUES (6,'slideshow','','default','node','Slideshow',7);
INSERT INTO `views_view` VALUES (7,'resources','Various displays of resources','default','node','Resources',7);
INSERT INTO `views_view` VALUES (8,'cutting_edge_series','','default','node','Cutting Edge Series',7);
INSERT INTO `views_view` VALUES (9,'taxonomy_term','A view to emulate Drupal core\'s handling of taxonomy/term.','default','node','Taxonomy term',7);
INSERT INTO `views_view` VALUES (10,'nodequeue_4','Display a list of all nodes in queues for \'Promising Practices\'','nodequeue','node','Promising Practices',0);
INSERT INTO `views_view` VALUES (11,'map_colleges','','default','node','Map',7);
INSERT INTO `views_view` VALUES (12,'nodequeue_6','Display a list of all nodes in queue \'Founding Partners\'','nodequeue','node','Founding Partners',0);
INSERT INTO `views_view` VALUES (13,'nodequeue_7','Display a list of all nodes in queue \'Principles and Practices\'','nodequeue','node','Principles and Practices',0);
INSERT INTO `views_view` VALUES (14,'college_lists','','default','node','College Lists',7);
INSERT INTO `views_view` VALUES (15,'investors_and_partners','various displays of organizations who are founders, investors, partners','default','node','Investors and Partners',7);
INSERT INTO `views_view` VALUES (16,'newsletters','','default','node','Newsletters',7);
INSERT INTO `views_view` VALUES (17,'nodequeue_3','Display a list of all nodes in queue \'Cutting Edge Series\'','nodequeue','node','Cutting Edge Series',0);
INSERT INTO `views_view` VALUES (18,'press_releases','','default','node','Press Releases',7);
INSERT INTO `views_view` VALUES (19,'nodequeue_9','Display a list of all nodes in queue \'ATD Newsletter\'','nodequeue','node','',0);
INSERT INTO `views_view` VALUES (20,'colleges_for_export','','default','node','colleges for export',7);
INSERT INTO `views_view` VALUES (21,'archive','Display a list of months that link to content for that month.','default','node','Archive',0);
INSERT INTO `views_view` VALUES (22,'nodequeue_10','Display a list of all nodes in queue \'Recommended Resources\'','nodequeue','node','Recommended Resources',0);
INSERT INTO `views_view` VALUES (24,'nodequeue_11','Display a list of all nodes in queue \'CCRC Assessment of Evidence Series\'','nodequeue','node','CCRC Assessment of Evidence Series',0);
INSERT INTO `views_view` VALUES (25,'flickr_slideshows_with_aggregato','','default','aggregator_item','Flickr Slideshows with Aggregator',7);
INSERT INTO `views_view` VALUES (26,'newsletter_workflow','','default','node','Newsletter Workflow',7);
INSERT INTO `views_view` VALUES (27,'newsletter_compiled','','default','node','Newsletter Compiled',7);
INSERT INTO `views_view` VALUES (28,'popular','Shows the most-viewed nodes on the site. This requires the statistics to be enabled at administer >> reports >> access log settings.','default','node','Popular content',0);
INSERT INTO `views_view` VALUES (29,'blog_topic_list','','default','taxonomy_term_data','Blog Topic List',7);
INSERT INTO `views_view` VALUES (30,'blog_posts_by_person','','default','node','Blog Posts by Person',7);
INSERT INTO `views_view` VALUES (31,'newsletter_from_the_field','','default','node','Newsletter: From the Field',7);
INSERT INTO `views_view` VALUES (32,'newsletter_inside_atd','','default','node','Newsletter: Inside ATD',7);
INSERT INTO `views_view` VALUES (33,'newsletter_achieving_success','','default','node','Newsletter: Achieving Success',7);
INSERT INTO `views_view` VALUES (34,'nodequeue_12','Display a list of all nodes in queue \'WalMart Grant News Coverage\'','nodequeue','node','WalMart Grant News Coverage',0);
INSERT INTO `views_view` VALUES (35,'faq','FAQ listings','default','node','FAQ',7);
INSERT INTO `views_view` VALUES (36,'interventions','','mx intervention','node','Interventions by Content Area',7);
INSERT INTO `views_view` VALUES (37,'interventions_by_target','','mx intervention','node','Interventions by Target',7);
INSERT INTO `views_view` VALUES (39,'interventions_filters','','mx intervention','node','Interventions Filters',7);
INSERT INTO `views_view` VALUES (40,'nodequeue_13','Display a list of all nodes in queue \'Best of DREAM\'','nodequeue','node','Slideshow: Best of DREAM',0);
/*!40000 ALTER TABLE `views_view` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

