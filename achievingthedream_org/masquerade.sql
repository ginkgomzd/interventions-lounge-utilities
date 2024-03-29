
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
DROP TABLE IF EXISTS `masquerade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masquerade` (
  `sid` varchar(64) NOT NULL DEFAULT '' COMMENT 'The current session for this masquerading user corresponding to their sessions.sid.',
  `uid_from` int(11) NOT NULL DEFAULT '0' COMMENT 'The users.uid corresponding to a session.',
  `uid_as` int(11) NOT NULL DEFAULT '0' COMMENT 'The users.uid this session is masquerading as.',
  KEY `sid` (`sid`,`uid_from`),
  KEY `sid_2` (`sid`,`uid_as`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Each masquerading user has their session recorded into...';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `masquerade` WRITE;
/*!40000 ALTER TABLE `masquerade` DISABLE KEYS */;
INSERT INTO `masquerade` VALUES ('Ekf7CKCZrCejtjr6BAVuXmh3mrdg2f3CcKvMMmkLHeE',86,12);
/*!40000 ALTER TABLE `masquerade` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

