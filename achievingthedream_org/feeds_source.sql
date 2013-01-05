
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
DROP TABLE IF EXISTS `feeds_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feeds_source` (
  `id` varchar(128) NOT NULL DEFAULT '' COMMENT 'Id of the feed configuration.',
  `feed_nid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Node nid if this particular source is attached to a feed node.',
  `config` text COMMENT 'Configuration of the source.',
  `source` text NOT NULL COMMENT 'Main source resource identifier. E. g. a path or a URL.',
  `state` longtext COMMENT 'State of import or clearing batches.',
  `fetcher_result` longtext COMMENT 'Cache for fetcher result.',
  `imported` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Timestamp when this source was imported last.',
  PRIMARY KEY (`id`,`feed_nid`),
  KEY `id` (`id`),
  KEY `feed_nid` (`feed_nid`),
  KEY `id_source` (`id`,`source`(128))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Source definitions for feeds.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `feeds_source` WRITE;
/*!40000 ALTER TABLE `feeds_source` DISABLE KEYS */;
INSERT INTO `feeds_source` VALUES ('achieving_dream',0,'a:1:{s:16:\"FeedsHTTPFetcher\";a:1:{s:6:\"source\";s:85:\"http://news.google.com/news?pz=1&cf=all&ned=us&hl=en&csid=bab2de4c04609017&output=rss\";}}','http://news.google.com/news?pz=1&cf=all&ned=us&hl=en&csid=bab2de4c04609017&output=rss','b:0;','b:0;',1357316151);
INSERT INTO `feeds_source` VALUES ('anthony_carnevale',0,'a:1:{s:16:\"FeedsHTTPFetcher\";a:1:{s:6:\"source\";s:85:\"http://news.google.com/news?pz=1&cf=all&ned=us&hl=en&csid=5e32860627694ce9&output=rss\";}}','http://news.google.com/news?pz=1&cf=all&ned=us&hl=en&csid=5e32860627694ce9&output=rss','b:0;','b:0;',1357316151);
INSERT INTO `feeds_source` VALUES ('college_profile_import',0,'a:2:{s:16:\"FeedsFileFetcher\";a:3:{s:3:\"fid\";s:3:\"309\";s:6:\"source\";s:40:\"public://feeds/import_round_1_take_2.csv\";s:6:\"upload\";s:0:\"\";}s:14:\"FeedsCSVParser\";a:2:{s:9:\"delimiter\";s:1:\",\";s:10:\"no_headers\";i:0;}}','public://feeds/import_round_1_take_2.csv','b:0;','b:0;',1323717723);
INSERT INTO `feeds_source` VALUES ('founding_partners',0,'a:1:{s:16:\"FeedsHTTPFetcher\";a:1:{s:6:\"source\";s:85:\"http://news.google.com/news?pz=1&cf=all&ned=us&hl=en&csid=694aa46072a93ff3&output=rss\";}}','http://news.google.com/news?pz=1&cf=all&ned=us&hl=en&csid=694aa46072a93ff3&output=rss','b:0;','b:0;',1357316151);
INSERT INTO `feeds_source` VALUES ('have_fun_do_good',0,'a:1:{s:16:\"FeedsHTTPFetcher\";a:1:{s:6:\"source\";s:49:\"http://sethgodin.typepad.com/#.TrmgSvTlCqk.google\";}}','http://sethgodin.typepad.com/#.TrmgSvTlCqk.google','b:0;','b:0;',1323891662);
INSERT INTO `feeds_source` VALUES ('interventions',0,'a:2:{s:16:\"FeedsFileFetcher\";a:3:{s:3:\"fid\";s:4:\"1309\";s:6:\"source\";s:53:\"public://feeds/2012-10-02 intervention data 1-4_0.csv\";s:6:\"upload\";s:0:\"\";}s:14:\"FeedsCSVParser\";a:2:{s:9:\"delimiter\";s:1:\",\";s:10:\"no_headers\";i:0;}}','public://feeds/2012-10-02 intervention data 1-4_0.csv','b:0;','b:0;',1349275020);
INSERT INTO `feeds_source` VALUES ('katya_feed',0,'a:1:{s:16:\"FeedsHTTPFetcher\";a:1:{s:6:\"source\";s:56:\"http://feeds.feedblitz.com/katyasnon-profitmarketingblog\";}}','http://feeds.feedblitz.com/katyasnon-profitmarketingblog','b:0;','b:0;',1323889081);
INSERT INTO `feeds_source` VALUES ('meltwater_2011',0,'a:2:{s:16:\"FeedsFileFetcher\";a:3:{s:3:\"fid\";s:3:\"635\";s:6:\"source\";s:35:\"public://feeds/Meltwater 2009_0.csv\";s:6:\"upload\";s:0:\"\";}s:14:\"FeedsCSVParser\";a:2:{s:9:\"delimiter\";s:1:\",\";s:10:\"no_headers\";i:0;}}','public://feeds/Meltwater 2009_0.csv','b:0;','b:0;',1326399307);
/*!40000 ALTER TABLE `feeds_source` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

