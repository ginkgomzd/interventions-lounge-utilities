
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
DROP TABLE IF EXISTS `contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: Unique category ID.',
  `category` varchar(255) NOT NULL DEFAULT '' COMMENT 'Category name.',
  `recipients` longtext NOT NULL COMMENT 'Comma-separated list of recipient e-mail addresses.',
  `reply` longtext NOT NULL COMMENT 'Text of the auto-reply message.',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT 'The category’s weight.',
  `selected` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Flag to indicate whether or not category is selected by default. (1 = Yes, 0 = No)',
  PRIMARY KEY (`cid`),
  UNIQUE KEY `category` (`category`),
  KEY `list` (`weight`,`category`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='Contact form category settings.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `contact` WRITE;
/*!40000 ALTER TABLE `contact` DISABLE KEYS */;
INSERT INTO `contact` VALUES (1,'Scheduling Requests: Jazmin Lopez, Executive Assistant to the President and CEO','jlopez@achievingthedream.org','',0,0);
INSERT INTO `contact` VALUES (3,'Media Inquiries: Lauren Lewis, Associate Director of Communications','llewis@achievingthedream.org','',0,0);
INSERT INTO `contact` VALUES (4,'RFP and Leader College Inquiries: Sarah Hollister, Associate Director of Programs','shollister@acheivingthedream.org','',0,0);
INSERT INTO `contact` VALUES (5,'Prospective Colleges: Mia Gabrielle Ramos, Assistant Director of Programs','mramos@achievingthedream.org','',0,0);
INSERT INTO `contact` VALUES (6,'Prospective Investors: George Cushman, Senior Director of Development','gcushman@achievingthedream.org','',0,0);
INSERT INTO `contact` VALUES (7,'General Inquiries: Kennard Shirley, Administrative Assistant','info@achievingthedream.org','',0,1);
INSERT INTO `contact` VALUES (8,'Policy Inquiries: Meredith Archer Hatch, Associate Director of Programs','mhatch@achievingthedream.org','',0,0);
/*!40000 ALTER TABLE `contact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

