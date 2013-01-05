
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
DROP TABLE IF EXISTS `mollom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mollom` (
  `entity` varchar(32) NOT NULL DEFAULT '' COMMENT 'Entity type of the content.',
  `id` varchar(36) NOT NULL DEFAULT '' COMMENT 'Unique entity ID of the content.',
  `contentId` varchar(128) NOT NULL DEFAULT '' COMMENT 'Content ID returned by Mollom.',
  `captchaId` varchar(128) NOT NULL DEFAULT '' COMMENT 'CAPTCHA ID returned by Mollom.',
  `form_id` varchar(255) NOT NULL DEFAULT '' COMMENT 'The form_id of the form being protected.',
  `changed` int(11) NOT NULL DEFAULT '0' COMMENT 'Unix timestamp when the data was changed.',
  `moderate` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Whether the content needs to be moderated.',
  `spamScore` float DEFAULT NULL COMMENT 'Text analysis spam check result.',
  `spamClassification` varchar(16) DEFAULT NULL COMMENT 'Text analysis final spam classification result.',
  `solved` tinyint(4) DEFAULT NULL COMMENT 'Whether a CAPTCHA has been solved (1) or not (0).',
  `qualityScore` float DEFAULT NULL COMMENT 'Text analysis quality check result.',
  `profanityScore` float DEFAULT NULL COMMENT 'Text analysis profanity check result.',
  `reason` varchar(255) NOT NULL DEFAULT '' COMMENT 'A special reason for why a post was blocked.',
  `languages` varchar(255) NOT NULL DEFAULT '' COMMENT 'Text analysis language check result.',
  PRIMARY KEY (`entity`,`id`),
  KEY `contentId` (`contentId`),
  KEY `captchaId` (`captchaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores Mollom responses for content.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `mollom` WRITE;
/*!40000 ALTER TABLE `mollom` DISABLE KEYS */;
/*!40000 ALTER TABLE `mollom` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

