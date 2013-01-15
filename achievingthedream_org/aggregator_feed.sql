
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
DROP TABLE IF EXISTS `aggregator_feed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aggregator_feed` (
  `fid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key: Unique feed ID.',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT 'Title of the feed.',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT 'URL to the feed.',
  `refresh` int(11) NOT NULL DEFAULT '0' COMMENT 'How often to check for new feed items, in seconds.',
  `checked` int(11) NOT NULL DEFAULT '0' COMMENT 'Last time feed was checked for new items, as Unix timestamp.',
  `queued` int(11) NOT NULL DEFAULT '0' COMMENT 'Time when this feed was queued for refresh, 0 if not queued.',
  `link` varchar(255) NOT NULL DEFAULT '' COMMENT 'The parent website of the feed; comes from the <link> element in the feed.',
  `description` longtext NOT NULL COMMENT 'The parent website’s description; comes from the <description> element in the feed.',
  `image` longtext NOT NULL COMMENT 'An image representing the feed.',
  `hash` varchar(64) NOT NULL DEFAULT '' COMMENT 'Calculated hash of the feed data, used for validating cache.',
  `etag` varchar(255) NOT NULL DEFAULT '' COMMENT 'Entity tag HTTP response header, used for validating cache.',
  `modified` int(11) NOT NULL DEFAULT '0' COMMENT 'When the feed was last modified, as a Unix timestamp.',
  `block` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Number of items to display in the feed’s block.',
  PRIMARY KEY (`fid`),
  UNIQUE KEY `url` (`url`),
  UNIQUE KEY `title` (`title`),
  KEY `queued` (`queued`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Stores feeds to be parsed by the aggregator.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `aggregator_feed` WRITE;
/*!40000 ALTER TABLE `aggregator_feed` DISABLE KEYS */;
INSERT INTO `aggregator_feed` VALUES (1,'Flickr DREAM 2012 Wednesday','http://pipes.yahoo.com/pipes/pipe.run?_id=HHvHTP7h2xGPZ1tDdbq02Q&_render=rss&urlinput2=http%3A%2F%2Fapi.flickr.com%2Fservices%2Ffeeds%2Fphotoset.gne%3Fset%3D72157629542480817%26nsid%3D77814274%40N08%26lang%3Den-us',900,1357680653,0,'http://pipes.yahoo.com/pipes/pipe.info?_id=HHvHTP7h2xGPZ1tDdbq02Q','Get larger images in your Flickr feeds.   \nCreated by Tom Lee of http://www.echoditto.com and http://www.manifestdensity.net','','1525abe89005c17c737202d84ffa08df226cf9a9b31177b54691d5e41be4e901','',0,0);
/*!40000 ALTER TABLE `aggregator_feed` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

