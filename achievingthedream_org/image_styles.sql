
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
DROP TABLE IF EXISTS `image_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image_styles` (
  `isid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'The primary identifier for an image style.',
  `name` varchar(255) NOT NULL COMMENT 'The style name.',
  PRIMARY KEY (`isid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='Stores configuration options for image styles.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `image_styles` WRITE;
/*!40000 ALTER TABLE `image_styles` DISABLE KEYS */;
INSERT INTO `image_styles` VALUES (1,'thumbnail');
INSERT INTO `image_styles` VALUES (3,'node-level_attached_image');
INSERT INTO `image_styles` VALUES (4,'node-level_person_photo');
INSERT INTO `image_styles` VALUES (5,'carousel_slide');
INSERT INTO `image_styles` VALUES (6,'carousel_thumbnail');
INSERT INTO `image_styles` VALUES (8,'inline_photo_float_left');
INSERT INTO `image_styles` VALUES (9,'inline_photo_float_right');
INSERT INTO `image_styles` VALUES (10,'inline_chart_center');
INSERT INTO `image_styles` VALUES (11,'inline_chart_float_left');
INSERT INTO `image_styles` VALUES (12,'inline_chart_float_right');
INSERT INTO `image_styles` VALUES (13,'thumbnail_headshot');
INSERT INTO `image_styles` VALUES (14,'thumbnail_headshot_2');
INSERT INTO `image_styles` VALUES (16,'imagefield_focus');
INSERT INTO `image_styles` VALUES (17,'thumbnail_resource_rectangular');
/*!40000 ALTER TABLE `image_styles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

