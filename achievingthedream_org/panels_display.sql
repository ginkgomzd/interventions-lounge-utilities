
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
DROP TABLE IF EXISTS `panels_display`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `panels_display` (
  `did` int(11) NOT NULL AUTO_INCREMENT,
  `layout` varchar(255) DEFAULT '',
  `layout_settings` longtext,
  `panel_settings` longtext,
  `cache` text,
  `title` varchar(255) DEFAULT '',
  `hide_title` tinyint(4) DEFAULT '0',
  `title_pane` int(11) DEFAULT '0',
  PRIMARY KEY (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `panels_display` WRITE;
/*!40000 ALTER TABLE `panels_display` DISABLE KEYS */;
INSERT INTO `panels_display` VALUES (2,'twocol_stacked','a:0:{}','a:1:{s:14:\"style_settings\";a:5:{s:7:\"default\";N;s:4:\"left\";N;s:5:\"right\";N;s:3:\"top\";N;s:6:\"bottom\";N;}}','a:0:{}','',0,0);
INSERT INTO `panels_display` VALUES (3,'twocol','a:0:{}','a:1:{s:14:\"style_settings\";a:10:{s:7:\"default\";N;s:4:\"left\";N;s:5:\"right\";N;s:3:\"top\";N;s:10:\"left_above\";N;s:11:\"right_above\";N;s:6:\"middle\";N;s:10:\"left_below\";N;s:11:\"right_below\";N;s:6:\"bottom\";N;}}','a:0:{}','',0,0);
INSERT INTO `panels_display` VALUES (4,'twocol_bricks','a:0:{}','a:1:{s:14:\"style_settings\";a:8:{s:7:\"default\";N;s:3:\"top\";N;s:10:\"left_above\";N;s:11:\"right_above\";N;s:6:\"middle\";N;s:10:\"left_below\";N;s:11:\"right_below\";N;s:6:\"bottom\";N;}}','a:0:{}','',0,0);
INSERT INTO `panels_display` VALUES (6,'onecol','a:0:{}','a:1:{s:14:\"style_settings\";a:2:{s:7:\"default\";N;s:6:\"middle\";N;}}','a:0:{}','',0,0);
INSERT INTO `panels_display` VALUES (7,'onecol','a:0:{}','a:1:{s:14:\"style_settings\";a:2:{s:7:\"default\";N;s:6:\"middle\";N;}}','a:0:{}','',0,0);
INSERT INTO `panels_display` VALUES (8,'threecol_33_34_33_stacked','a:0:{}','a:1:{s:14:\"style_settings\";a:6:{s:7:\"default\";N;s:3:\"top\";N;s:4:\"left\";N;s:6:\"middle\";N;s:5:\"right\";N;s:6:\"bottom\";N;}}','a:0:{}','',0,0);
INSERT INTO `panels_display` VALUES (9,'twocol_stacked','a:0:{}','a:1:{s:14:\"style_settings\";a:5:{s:7:\"default\";N;s:3:\"top\";N;s:4:\"left\";N;s:5:\"right\";N;s:6:\"bottom\";N;}}','a:0:{}','',0,0);
INSERT INTO `panels_display` VALUES (10,'onecol','a:0:{}','a:1:{s:14:\"style_settings\";a:2:{s:7:\"default\";N;s:6:\"middle\";N;}}','a:0:{}','',0,0);
/*!40000 ALTER TABLE `panels_display` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

