
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
DROP TABLE IF EXISTS `wysiwyg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wysiwyg` (
  `format` varchar(255) NOT NULL COMMENT 'The filter_format.format of the text format.',
  `editor` varchar(128) NOT NULL DEFAULT '' COMMENT 'Internal name of the editor attached to the text format.',
  `settings` text COMMENT 'Configuration settings for the editor.',
  PRIMARY KEY (`format`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores Wysiwyg profiles.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `wysiwyg` WRITE;
/*!40000 ALTER TABLE `wysiwyg` DISABLE KEYS */;
INSERT INTO `wysiwyg` VALUES ('filtered_html','ckeditor','a:20:{s:7:\"default\";i:1;s:11:\"user_choose\";i:1;s:11:\"show_toggle\";i:1;s:5:\"theme\";s:8:\"advanced\";s:8:\"language\";s:2:\"en\";s:7:\"buttons\";a:1:{s:7:\"default\";a:12:{s:4:\"Bold\";i:1;s:6:\"Italic\";i:1;s:6:\"Strike\";i:1;s:12:\"BulletedList\";i:1;s:12:\"NumberedList\";i:1;s:7:\"Outdent\";i:1;s:6:\"Indent\";i:1;s:4:\"Link\";i:1;s:6:\"Unlink\";i:1;s:6:\"Anchor\";i:1;s:11:\"Superscript\";i:1;s:10:\"Blockquote\";i:1;}}s:11:\"toolbar_loc\";s:3:\"top\";s:13:\"toolbar_align\";s:4:\"left\";s:8:\"path_loc\";s:6:\"bottom\";s:8:\"resizing\";i:1;s:11:\"verify_html\";i:1;s:12:\"preformatted\";i:0;s:22:\"convert_fonts_to_spans\";i:0;s:17:\"remove_linebreaks\";i:0;s:23:\"apply_source_formatting\";i:0;s:27:\"paste_auto_cleanup_on_paste\";i:1;s:13:\"block_formats\";s:32:\"p,address,pre,h2,h3,h4,h5,h6,div\";s:11:\"css_setting\";s:5:\"theme\";s:8:\"css_path\";s:0:\"\";s:11:\"css_classes\";s:0:\"\";}');
INSERT INTO `wysiwyg` VALUES ('full_html','ckeditor','a:20:{s:7:\"default\";i:1;s:11:\"user_choose\";i:1;s:11:\"show_toggle\";i:1;s:5:\"theme\";s:8:\"advanced\";s:8:\"language\";s:2:\"en\";s:7:\"buttons\";a:1:{s:7:\"default\";a:13:{s:4:\"Bold\";i:1;s:6:\"Italic\";i:1;s:6:\"Strike\";i:1;s:12:\"BulletedList\";i:1;s:12:\"NumberedList\";i:1;s:7:\"Outdent\";i:1;s:6:\"Indent\";i:1;s:4:\"Link\";i:1;s:6:\"Unlink\";i:1;s:6:\"Anchor\";i:1;s:11:\"Superscript\";i:1;s:10:\"Blockquote\";i:1;s:5:\"Table\";i:1;}}s:11:\"toolbar_loc\";s:3:\"top\";s:13:\"toolbar_align\";s:4:\"left\";s:8:\"path_loc\";s:6:\"bottom\";s:8:\"resizing\";i:1;s:11:\"verify_html\";i:1;s:12:\"preformatted\";i:0;s:22:\"convert_fonts_to_spans\";i:0;s:17:\"remove_linebreaks\";i:0;s:23:\"apply_source_formatting\";i:0;s:27:\"paste_auto_cleanup_on_paste\";i:1;s:13:\"block_formats\";s:32:\"p,address,pre,h2,h3,h4,h5,h6,div\";s:11:\"css_setting\";s:5:\"theme\";s:8:\"css_path\";s:0:\"\";s:11:\"css_classes\";s:0:\"\";}');
INSERT INTO `wysiwyg` VALUES ('php_code','',NULL);
INSERT INTO `wysiwyg` VALUES ('plain_text','',NULL);
/*!40000 ALTER TABLE `wysiwyg` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

