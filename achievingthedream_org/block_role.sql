
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
DROP TABLE IF EXISTS `block_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block_role` (
  `module` varchar(64) NOT NULL COMMENT 'The block’s origin module, from block.module.',
  `delta` varchar(32) NOT NULL COMMENT 'The block’s unique delta within module, from block.delta.',
  `rid` int(10) unsigned NOT NULL COMMENT 'The user’s role ID from users_roles.rid.',
  PRIMARY KEY (`module`,`delta`,`rid`),
  KEY `rid` (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sets up access permissions for blocks based on user roles';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `block_role` WRITE;
/*!40000 ALTER TABLE `block_role` DISABLE KEYS */;
INSERT INTO `block_role` VALUES ('block','17',3);
INSERT INTO `block_role` VALUES ('block','17',4);
INSERT INTO `block_role` VALUES ('block','17',5);
INSERT INTO `block_role` VALUES ('faq_ask','unanswered',6);
INSERT INTO `block_role` VALUES ('menu','menu-webmaster-menu',4);
INSERT INTO `block_role` VALUES ('system','management',4);
INSERT INTO `block_role` VALUES ('tagadelic','4',2);
INSERT INTO `block_role` VALUES ('tagadelic','4',3);
INSERT INTO `block_role` VALUES ('tagadelic','4',4);
INSERT INTO `block_role` VALUES ('tagadelic','4',5);
INSERT INTO `block_role` VALUES ('views','all_news_feeds-block_2',3);
INSERT INTO `block_role` VALUES ('views','all_news_feeds-block_2',4);
INSERT INTO `block_role` VALUES ('views','all_news_feeds-block_2',5);
INSERT INTO `block_role` VALUES ('views','archive-block',3);
INSERT INTO `block_role` VALUES ('views','archive-block',4);
INSERT INTO `block_role` VALUES ('views','archive-block',5);
INSERT INTO `block_role` VALUES ('views','blog_posts_by_person-block',2);
INSERT INTO `block_role` VALUES ('views','blog_posts_by_person-block',3);
INSERT INTO `block_role` VALUES ('views','blog_posts_by_person-block',4);
INSERT INTO `block_role` VALUES ('views','blog_posts_by_person-block',5);
INSERT INTO `block_role` VALUES ('views','blog_topic_list-block',2);
INSERT INTO `block_role` VALUES ('views','blog_topic_list-block',3);
INSERT INTO `block_role` VALUES ('views','blog_topic_list-block',4);
INSERT INTO `block_role` VALUES ('views','blog_topic_list-block',5);
INSERT INTO `block_role` VALUES ('views','popular-block',2);
INSERT INTO `block_role` VALUES ('views','popular-block',3);
INSERT INTO `block_role` VALUES ('views','popular-block',4);
INSERT INTO `block_role` VALUES ('views','popular-block',5);
/*!40000 ALTER TABLE `block_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

