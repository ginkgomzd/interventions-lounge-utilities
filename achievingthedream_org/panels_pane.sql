
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
DROP TABLE IF EXISTS `panels_pane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `panels_pane` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `did` int(11) NOT NULL DEFAULT '0',
  `panel` varchar(32) DEFAULT '',
  `type` varchar(32) DEFAULT '',
  `subtype` varchar(64) DEFAULT '',
  `shown` tinyint(4) DEFAULT '1',
  `access` longtext,
  `configuration` longtext,
  `cache` longtext,
  `style` longtext,
  `css` longtext,
  `extras` longtext,
  `position` smallint(6) DEFAULT '0',
  `locks` longtext,
  PRIMARY KEY (`pid`),
  KEY `did_idx` (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `panels_pane` WRITE;
/*!40000 ALTER TABLE `panels_pane` DISABLE KEYS */;
INSERT INTO `panels_pane` VALUES (5,2,'left','node','node',1,'a:0:{}','a:8:{s:3:\"nid\";s:3:\"690\";s:5:\"links\";i:0;s:16:\"leave_node_title\";i:0;s:10:\"identifier\";s:0:\"\";s:10:\"build_mode\";s:4:\"full\";s:15:\"link_node_title\";i:0;s:14:\"override_title\";i:0;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0,'N;');
INSERT INTO `panels_pane` VALUES (8,2,'right','block','views--exp-resources-page_7',1,'a:0:{}','a:2:{s:14:\"override_title\";i:0;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',1,'N;');
INSERT INTO `panels_pane` VALUES (9,2,'right','custom','custom',1,'a:0:{}','a:5:{s:11:\"admin_title\";s:24:\"intro text: right column\";s:5:\"title\";s:9:\"or Filter\";s:4:\"body\";s:16:\"by type or topic\";s:6:\"format\";s:10:\"plain_text\";s:10:\"substitute\";i:0;}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0,'N;');
INSERT INTO `panels_pane` VALUES (10,3,'left','custom','custom',1,'a:0:{}','a:5:{s:11:\"admin_title\";s:13:\"intro message\";s:5:\"title\";s:8:\"Welcome!\";s:4:\"body\";s:73:\"Welcome to the Spring 2012 edition of the Achieving the Dream Newsletter.\";s:6:\"format\";s:10:\"plain_text\";s:10:\"substitute\";i:1;}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0,'N;');
INSERT INTO `panels_pane` VALUES (11,2,'bottom','node','node',1,'a:0:{}','a:8:{s:3:\"nid\";s:4:\"1130\";s:5:\"links\";i:0;s:16:\"leave_node_title\";i:0;s:10:\"identifier\";s:0:\"\";s:10:\"build_mode\";s:4:\"full\";s:15:\"link_node_title\";i:0;s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0,'N;');
INSERT INTO `panels_pane` VALUES (14,3,'left','node','node',1,'a:0:{}','a:8:{s:3:\"nid\";s:4:\"1132\";s:5:\"links\";i:0;s:16:\"leave_node_title\";i:0;s:10:\"identifier\";s:0:\"\";s:10:\"build_mode\";s:4:\"full\";s:15:\"link_node_title\";i:0;s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:18:\"Mark Your Calendar\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',1,'N;');
INSERT INTO `panels_pane` VALUES (15,2,'right','block','block-13',1,'a:0:{}','a:2:{s:14:\"override_title\";i:0;s:19:\"override_title_text\";s:9:\"or Search\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',3,'N;');
INSERT INTO `panels_pane` VALUES (16,2,'right','custom','custom',1,'a:0:{}','a:5:{s:11:\"admin_title\";s:6:\"spacer\";s:5:\"title\";s:0:\"\";s:4:\"body\";s:13:\"<p>&nbsp;</p>\";s:6:\"format\";s:13:\"filtered_html\";s:10:\"substitute\";i:1;}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',2,'N;');
INSERT INTO `panels_pane` VALUES (17,4,'right_above','block','block-18',0,'a:0:{}','a:2:{s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:8:\"The Buzz\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',1,NULL);
INSERT INTO `panels_pane` VALUES (18,4,'top','node','node',1,'a:0:{}','a:8:{s:3:\"nid\";s:4:\"1631\";s:5:\"links\";i:0;s:16:\"leave_node_title\";i:0;s:10:\"identifier\";s:0:\"\";s:10:\"build_mode\";s:4:\"full\";s:15:\"link_node_title\";i:0;s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0,NULL);
INSERT INTO `panels_pane` VALUES (20,4,'left_above','node','node',1,'a:0:{}','a:8:{s:3:\"nid\";s:4:\"1634\";s:5:\"links\";i:0;s:16:\"leave_node_title\";i:0;s:10:\"identifier\";s:0:\"\";s:10:\"build_mode\";s:4:\"full\";s:15:\"link_node_title\";i:0;s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:10:\"Must-Reads\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0,NULL);
INSERT INTO `panels_pane` VALUES (21,4,'right_above','node','node',1,'a:0:{}','a:8:{s:3:\"nid\";s:4:\"1633\";s:5:\"links\";i:0;s:16:\"leave_node_title\";i:0;s:10:\"identifier\";s:0:\"\";s:10:\"build_mode\";s:4:\"full\";s:15:\"link_node_title\";i:0;s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:17:\"Conference Agenda\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0,NULL);
INSERT INTO `panels_pane` VALUES (27,4,'middle','node','node',0,'a:0:{}','a:8:{s:3:\"nid\";s:4:\"1655\";s:5:\"links\";i:0;s:16:\"leave_node_title\";i:0;s:10:\"identifier\";s:0:\"\";s:10:\"build_mode\";s:4:\"full\";s:15:\"link_node_title\";i:0;s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:15:\"Top Video Picks\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',1,NULL);
INSERT INTO `panels_pane` VALUES (28,6,'middle','block','views-nodequeue_3-block',1,'a:0:{}','a:2:{s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',1,NULL);
INSERT INTO `panels_pane` VALUES (30,6,'middle','token','node:field_summary',1,'a:0:{}','a:4:{s:8:\"sanitize\";i:1;s:7:\"context\";s:10:\"panel-node\";s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0,NULL);
INSERT INTO `panels_pane` VALUES (31,7,'middle','token','node:field_summary',1,'a:0:{}','a:4:{s:8:\"sanitize\";i:1;s:7:\"context\";s:10:\"panel-node\";s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0,NULL);
INSERT INTO `panels_pane` VALUES (32,7,'middle','block','views-nodequeue_11-block',1,'a:0:{}','a:2:{s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',1,NULL);
INSERT INTO `panels_pane` VALUES (33,4,'middle','node','node',0,'a:0:{}','a:8:{s:3:\"nid\";s:4:\"1701\";s:5:\"links\";i:0;s:16:\"leave_node_title\";i:0;s:10:\"identifier\";s:0:\"\";s:10:\"build_mode\";s:4:\"full\";s:15:\"link_node_title\";i:0;s:14:\"override_title\";i:0;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0,NULL);
INSERT INTO `panels_pane` VALUES (36,4,'right_above','node','node',1,'a:0:{}','a:8:{s:3:\"nid\";s:4:\"1852\";s:5:\"links\";i:0;s:16:\"leave_node_title\";i:0;s:10:\"identifier\";s:0:\"\";s:10:\"build_mode\";s:4:\"full\";s:15:\"link_node_title\";i:0;s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:16:\"More DREAM Links\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',2,NULL);
INSERT INTO `panels_pane` VALUES (37,4,'left_above','node','node',1,'a:0:{}','a:8:{s:3:\"nid\";s:4:\"1916\";s:5:\"links\";i:0;s:16:\"leave_node_title\";i:0;s:10:\"identifier\";s:0:\"\";s:10:\"build_mode\";s:4:\"full\";s:15:\"link_node_title\";i:0;s:14:\"override_title\";i:0;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',1,'a:0:{}');
INSERT INTO `panels_pane` VALUES (38,3,'right','views_panes','newsletter_from_the_field-panel_pane_1',1,'a:0:{}','a:0:{}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0,'a:0:{}');
INSERT INTO `panels_pane` VALUES (39,3,'right','views_panes','newsletter_inside_atd-panel_pane_1',1,'a:0:{}','a:0:{}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',1,'a:0:{}');
INSERT INTO `panels_pane` VALUES (40,3,'right','views_panes','newsletter_achieving_success-panel_pane_1',1,'a:0:{}','a:0:{}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',2,'a:0:{}');
INSERT INTO `panels_pane` VALUES (41,2,'top','block','block-23',1,'a:0:{}','a:2:{s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0,'a:0:{}');
INSERT INTO `panels_pane` VALUES (42,8,'top','node','node',1,'a:0:{}','a:8:{s:3:\"nid\";s:4:\"3845\";s:5:\"links\";i:1;s:16:\"leave_node_title\";i:0;s:10:\"identifier\";s:0:\"\";s:10:\"build_mode\";s:4:\"full\";s:15:\"link_node_title\";i:0;s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0,'a:0:{}');
INSERT INTO `panels_pane` VALUES (43,8,'right','node','node',1,'a:0:{}','a:8:{s:3:\"nid\";s:4:\"3847\";s:5:\"links\";i:0;s:16:\"leave_node_title\";i:0;s:10:\"identifier\";s:0:\"\";s:10:\"build_mode\";s:4:\"full\";s:15:\"link_node_title\";i:0;s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:13:\"Content Area:\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0,'a:0:{}');
INSERT INTO `panels_pane` VALUES (44,8,'middle','node','node',1,'a:0:{}','a:8:{s:3:\"nid\";s:4:\"3848\";s:5:\"links\";i:0;s:16:\"leave_node_title\";i:0;s:10:\"identifier\";s:0:\"\";s:10:\"build_mode\";s:4:\"full\";s:15:\"link_node_title\";i:0;s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:18:\"Target Population:\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0,'a:0:{}');
INSERT INTO `panels_pane` VALUES (45,8,'left','node','node',1,'a:0:{}','a:8:{s:3:\"nid\";s:4:\"3849\";s:5:\"links\";i:0;s:16:\"leave_node_title\";i:0;s:10:\"identifier\";s:0:\"\";s:10:\"build_mode\";s:4:\"full\";s:15:\"link_node_title\";i:0;s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:5:\"Type:\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0,'a:0:{}');
INSERT INTO `panels_pane` VALUES (48,9,'left','node','node',1,'a:0:{}','a:8:{s:3:\"nid\";s:4:\"3870\";s:5:\"links\";i:0;s:16:\"leave_node_title\";i:0;s:10:\"identifier\";s:0:\"\";s:10:\"build_mode\";s:4:\"full\";s:15:\"link_node_title\";i:0;s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0,'a:0:{}');
INSERT INTO `panels_pane` VALUES (49,9,'right','node','node',1,'a:0:{}','a:8:{s:3:\"nid\";s:4:\"3871\";s:5:\"links\";i:0;s:16:\"leave_node_title\";i:0;s:10:\"identifier\";s:0:\"\";s:10:\"build_mode\";s:4:\"full\";s:15:\"link_node_title\";i:0;s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:10:\"What\'s New\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0,'a:0:{}');
INSERT INTO `panels_pane` VALUES (51,10,'middle','node','node',1,'a:0:{}','a:8:{s:3:\"nid\";s:4:\"3915\";s:5:\"links\";i:0;s:16:\"leave_node_title\";i:0;s:10:\"identifier\";s:0:\"\";s:10:\"build_mode\";s:4:\"full\";s:15:\"link_node_title\";i:0;s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',0,'a:0:{}');
INSERT INTO `panels_pane` VALUES (54,10,'middle','views','nodequeue_13',1,'a:0:{}','a:14:{s:23:\"override_pager_settings\";i:0;s:9:\"use_pager\";i:0;s:14:\"nodes_per_page\";s:1:\"0\";s:8:\"pager_id\";s:1:\"0\";s:6:\"offset\";s:1:\"0\";s:9:\"more_link\";i:0;s:10:\"feed_icons\";i:0;s:10:\"panel_args\";i:0;s:12:\"link_to_view\";i:0;s:4:\"args\";s:0:\"\";s:3:\"url\";s:0:\"\";s:7:\"display\";s:4:\"page\";s:14:\"override_title\";i:0;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',1,'a:0:{}');
INSERT INTO `panels_pane` VALUES (55,10,'middle','node','node',1,'a:0:{}','a:8:{s:3:\"nid\";s:4:\"3916\";s:5:\"links\";i:0;s:16:\"leave_node_title\";i:0;s:10:\"identifier\";s:0:\"\";s:10:\"build_mode\";s:4:\"full\";s:15:\"link_node_title\";i:0;s:14:\"override_title\";i:1;s:19:\"override_title_text\";s:0:\"\";}','a:0:{}','a:1:{s:8:\"settings\";N;}','a:0:{}','a:0:{}',2,'a:0:{}');
/*!40000 ALTER TABLE `panels_pane` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

