
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
DROP TABLE IF EXISTS `cache_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_menu` (
  `cid` varchar(255) NOT NULL DEFAULT '' COMMENT 'Primary Key: Unique cache ID.',
  `data` longblob COMMENT 'A collection of data to cache.',
  `expire` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry should expire, or 0 for never.',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT 'A Unix timestamp indicating when the cache entry was created.',
  `serialized` smallint(6) NOT NULL DEFAULT '0' COMMENT 'A flag to indicate whether content is serialized (1) or not (0).',
  PRIMARY KEY (`cid`),
  KEY `expire` (`expire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Cache table for the menu system to store router...';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `cache_menu` WRITE;
/*!40000 ALTER TABLE `cache_menu` DISABLE KEYS */;
INSERT INTO `cache_menu` VALUES ('menu_block_menus','a:10:{s:7:\"_active\";s:31:\"<the menu selected by the page>\";s:15:\"menu-dream-2012\";s:10:\"DREAM 2012\";s:15:\"menu-dream-2013\";s:10:\"DREAM 2013\";s:8:\"features\";s:8:\"Features\";s:32:\"menu-logo-and-identity-standards\";s:27:\"Logo and Identity Standards\";s:9:\"main-menu\";s:9:\"Main menu\";s:10:\"management\";s:10:\"Management\";s:10:\"navigation\";s:10:\"Navigation\";s:9:\"user-menu\";s:9:\"User menu\";s:19:\"menu-webmaster-menu\";s:14:\"Webmaster Menu\";}',0,1357345045,1);
INSERT INTO `cache_menu` VALUES ('menu_custom','a:9:{s:8:\"features\";a:3:{s:9:\"menu_name\";s:8:\"features\";s:5:\"title\";s:8:\"Features\";s:11:\"description\";s:36:\"Menu items for any enabled features.\";}s:9:\"main-menu\";a:3:{s:9:\"menu_name\";s:9:\"main-menu\";s:5:\"title\";s:9:\"Main menu\";s:11:\"description\";s:115:\"The <em>Main</em> menu is used on many sites to show the major sections of the site, often in a top navigation bar.\";}s:10:\"management\";a:3:{s:9:\"menu_name\";s:10:\"management\";s:5:\"title\";s:10:\"Management\";s:11:\"description\";s:69:\"The <em>Management</em> menu contains links for administrative tasks.\";}s:15:\"menu-dream-2012\";a:3:{s:9:\"menu_name\";s:15:\"menu-dream-2012\";s:5:\"title\";s:10:\"DREAM 2012\";s:11:\"description\";s:0:\"\";}s:15:\"menu-dream-2013\";a:3:{s:9:\"menu_name\";s:15:\"menu-dream-2013\";s:5:\"title\";s:10:\"DREAM 2013\";s:11:\"description\";s:0:\"\";}s:32:\"menu-logo-and-identity-standards\";a:3:{s:9:\"menu_name\";s:32:\"menu-logo-and-identity-standards\";s:5:\"title\";s:27:\"Logo and Identity Standards\";s:11:\"description\";s:49:\"to navigate the logo and identity standards pages\";}s:19:\"menu-webmaster-menu\";a:3:{s:9:\"menu_name\";s:19:\"menu-webmaster-menu\";s:5:\"title\";s:14:\"Webmaster Menu\";s:11:\"description\";s:0:\"\";}s:10:\"navigation\";a:3:{s:9:\"menu_name\";s:10:\"navigation\";s:5:\"title\";s:10:\"Navigation\";s:11:\"description\";s:150:\"The <em>Navigation</em> menu contains links intended for site visitors. Links are added to the <em>Navigation</em> menu automatically by some modules.\";}s:9:\"user-menu\";a:3:{s:9:\"menu_name\";s:9:\"user-menu\";s:5:\"title\";s:9:\"User menu\";s:11:\"description\";s:99:\"The <em>User</em> menu contains links related to the user\'s account, as well as the \'Log out\' link.\";}}',0,1357345045,1);
/*!40000 ALTER TABLE `cache_menu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

