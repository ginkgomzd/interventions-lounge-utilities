
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
DROP TABLE IF EXISTS `image_effects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_effects` (
  `ieid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The primary identifier for an image effect.',
  `isid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The image_styles.isid for an image style.',
  `weight` int(11) NOT NULL DEFAULT '0' COMMENT 'The weight of the effect in the style.',
  `name` varchar(255) NOT NULL COMMENT 'The unique name of the effect to be executed.',
  `data` longblob NOT NULL COMMENT 'The configuration data for the effect.',
  PRIMARY KEY (`ieid`),
  KEY `isid` (`isid`),
  KEY `weight` (`weight`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='Stores configuration options for image effects.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `image_effects` WRITE;
/*!40000 ALTER TABLE `image_effects` DISABLE KEYS */;
INSERT INTO `image_effects` VALUES (4,3,1,'image_scale','a:3:{s:5:\"width\";s:3:\"300\";s:6:\"height\";s:0:\"\";s:7:\"upscale\";i:0;}');
INSERT INTO `image_effects` VALUES (5,4,1,'image_scale','a:3:{s:5:\"width\";s:3:\"200\";s:6:\"height\";s:0:\"\";s:7:\"upscale\";i:0;}');
INSERT INTO `image_effects` VALUES (9,6,1,'image_scale_and_crop','a:2:{s:5:\"width\";s:2:\"60\";s:6:\"height\";s:2:\"60\";}');
INSERT INTO `image_effects` VALUES (12,8,1,'image_scale','a:3:{s:5:\"width\";s:3:\"200\";s:6:\"height\";s:0:\"\";s:7:\"upscale\";i:0;}');
INSERT INTO `image_effects` VALUES (13,9,1,'image_scale','a:3:{s:5:\"width\";s:3:\"200\";s:6:\"height\";s:0:\"\";s:7:\"upscale\";i:0;}');
INSERT INTO `image_effects` VALUES (14,10,1,'image_scale','a:3:{s:5:\"width\";s:3:\"650\";s:6:\"height\";s:0:\"\";s:7:\"upscale\";i:0;}');
INSERT INTO `image_effects` VALUES (15,11,1,'image_scale','a:3:{s:5:\"width\";s:3:\"650\";s:6:\"height\";s:0:\"\";s:7:\"upscale\";i:0;}');
INSERT INTO `image_effects` VALUES (16,12,1,'image_scale','a:3:{s:5:\"width\";s:3:\"650\";s:6:\"height\";s:0:\"\";s:7:\"upscale\";i:0;}');
INSERT INTO `image_effects` VALUES (17,5,2,'image_scale_and_crop','a:2:{s:5:\"width\";s:3:\"780\";s:6:\"height\";s:3:\"365\";}');
INSERT INTO `image_effects` VALUES (19,13,1,'image_scale','a:3:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:0:\"\";s:7:\"upscale\";i:0;}');
INSERT INTO `image_effects` VALUES (20,13,2,'image_crop','a:3:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"100\";s:6:\"anchor\";s:10:\"center-top\";}');
INSERT INTO `image_effects` VALUES (22,14,1,'image_scale','a:3:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:0:\"\";s:7:\"upscale\";i:1;}');
INSERT INTO `image_effects` VALUES (23,14,2,'image_crop','a:3:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"100\";s:6:\"anchor\";s:10:\"center-top\";}');
INSERT INTO `image_effects` VALUES (33,16,1,'imagefield_focus_scale_and_crop','a:4:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"100\";s:8:\"strength\";s:4:\"high\";s:8:\"fallback\";s:5:\"image\";}');
INSERT INTO `image_effects` VALUES (34,1,2,'imagefield_focus_scale_and_crop','a:3:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"100\";s:8:\"strength\";s:4:\"high\";}');
INSERT INTO `image_effects` VALUES (36,17,1,'imagefield_focus_scale_and_crop','a:3:{s:5:\"width\";s:3:\"100\";s:6:\"height\";s:3:\"130\";s:8:\"strength\";s:4:\"high\";}');
/*!40000 ALTER TABLE `image_effects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

