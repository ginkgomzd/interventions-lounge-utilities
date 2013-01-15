
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
DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `uid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Primary Key: Unique user ID.',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT 'Unique user name.',
  `pass` varchar(128) NOT NULL DEFAULT '' COMMENT 'User’s password (hashed).',
  `mail` varchar(254) DEFAULT '' COMMENT 'User’s e-mail address.',
  `theme` varchar(255) NOT NULL DEFAULT '' COMMENT 'User’s default theme.',
  `signature` varchar(255) NOT NULL DEFAULT '' COMMENT 'User’s signature.',
  `signature_format` varchar(255) DEFAULT NULL COMMENT 'The filter_format.format of the signature.',
  `created` int(11) NOT NULL DEFAULT '0' COMMENT 'Timestamp for when user was created.',
  `access` int(11) NOT NULL DEFAULT '0' COMMENT 'Timestamp for previous time user accessed the site.',
  `login` int(11) NOT NULL DEFAULT '0' COMMENT 'Timestamp for user’s last login.',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Whether the user is active(1) or blocked(0).',
  `timezone` varchar(32) DEFAULT NULL COMMENT 'User’s time zone.',
  `language` varchar(12) NOT NULL DEFAULT '' COMMENT 'User’s default language.',
  `picture` int(11) NOT NULL DEFAULT '0' COMMENT 'Foreign key: file_managed.fid of user’s picture.',
  `init` varchar(254) DEFAULT '' COMMENT 'E-mail address used for initial account creation.',
  `data` longblob COMMENT 'A serialized array of name value pairs that are related to the user. Any form values posted during user edit are stored and are loaded into the $user object during user_load(). Use of this field is discouraged and it will likely disappear in a future...',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `name` (`name`),
  KEY `access` (`access`),
  KEY `created` (`created`),
  KEY `mail` (`mail`),
  KEY `picture` (`picture`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores user data.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (0,'','','','','',NULL,0,0,0,0,NULL,'',0,'',NULL);
INSERT INTO `users` VALUES (1,'admin','$S$DE0OtQaldyjPrJmLzMv.2RDPQkAF4qF/lm3KBHjwnlWe5kXi4/F5','margaux@grandjunctiondesign.com','','','filtered_html',1320355382,1357680653,1357584200,1,'America/New_York','',0,'margaux@grandjunctiondesign.com','a:1:{s:7:\"contact\";i:0;}');
INSERT INTO `users` VALUES (9,'matthew','$S$DizyuX.WD2OhRkE6EepTzOIL400auQCQewQfhwzl43.GYyMqnhN6','matthew@grandjunctiondesign.com','','','filtered_html',1321444075,1349291982,1349287950,1,'America/Denver','',0,'matthew@grandjunctiondesign.com','a:1:{s:7:\"contact\";i:0;}');
INSERT INTO `users` VALUES (10,'rick','$S$DQtJuBQzJBcOer58l3a26sXe9LAgIsyVoPBsZo7SXtXPusBx1xQY','elricky@gmail.com','','','filtered_html',1321913552,1354184988,1353998668,1,'Asia/Tokyo','',0,'elricky@gmail.com','a:1:{s:7:\"contact\";i:0;}');
INSERT INTO `users` VALUES (12,'lauren','$S$Dp06M43hpHdkcmmqvIDljqsKSUSERnZg1p5V5yPhiLKWR3JjQSaZ','llewis@achievingthedream.org','','','filtered_html',1321993193,1357309935,1357240385,1,'America/Denver','',0,'llewis@achievingthedream.org','a:1:{s:7:\"contact\";i:1;}');
INSERT INTO `users` VALUES (13,'elyssa','$S$D.w4LdadkHAwAV4KcAMdi.RanT7ZKzM7IIMUWUqz.Rt13UEJg9ai','communications@achievingthedream.org','','','filtered_html',1321993275,1357316853,1357222065,1,'America/Denver','',0,'communications@achievingthedream.org','a:1:{s:7:\"contact\";i:1;}');
INSERT INTO `users` VALUES (15,'katie','$S$DtSfcOAA5H7wrr6bh29hT1KQ7MVahvQ9XVZse9JOdB00xtlY6.6z','kloovis@achievingthedream.org','','','filtered_html',1322059817,1353442240,1352831406,1,'America/Denver','',0,'kloovis@achievingthedream.org','a:1:{s:7:\"contact\";i:0;}');
INSERT INTO `users` VALUES (16,'tina','$S$DN74bGvPBaEvwHJ4xEjUMHoTzDhJM0aWPpgPXpzpkwsd8gyMm8HN','thenry@aacc.nche.edu','','','filtered_html',1322667692,1357224266,1357223848,1,'America/Denver','',0,'thenry@aacc.nche.edu','a:1:{s:7:\"contact\";i:0;}');
INSERT INTO `users` VALUES (33,'meredith','$S$D3rvj.2mXdAVFoJj3wrdfyaxt7fB97.rQuvAwZr3j4hwd7dfngrM','mhatch@achievingthedream.org','','','filtered_html',1324322756,1343411674,1343411225,0,'America/Denver','',0,'mhatch@achievingthedream.org','a:1:{s:7:\"contact\";i:1;}');
INSERT INTO `users` VALUES (59,'nicole','$S$DgaaDJrgyam7lEEQBfnAxfXVDqyWFd6faOkH2NF88aAccqriZn2f','nmelander@achievingthedream.org','','','filtered_html',1329760444,1330119366,1330119366,1,'America/New_York','',0,'nmelander@achievingthedream.org','a:1:{s:7:\"contact\";i:1;}');
INSERT INTO `users` VALUES (60,'kennard','$S$DnMgAX90tp5LnvGzNEPympBDmW30SZbCZQQ/Yi4BkMZoVZXDa9RA','kshirley@achievingthedream.org','','','filtered_html',1331069629,1333042678,1331069656,0,'America/Denver','',0,'kshirley@achievingthedream.org','a:1:{s:7:\"contact\";i:1;}');
INSERT INTO `users` VALUES (70,'cristina','$S$DzXd3r9sZA4kcKi2q9yPQIV3mR64kS7B16Uyj6F292z14AYnrork','cblanco@achievingthedream.org','','','filtered_html',1345493101,1345577508,1345575808,0,'America/New_York','',0,'cblanco@achievingthedream.org','a:1:{s:7:\"contact\";i:1;}');
INSERT INTO `users` VALUES (86,'Alexandra','$S$D1gifCIGqNIg2U34sBrrcl0zEJjG7I2T/w4wwh/1fMKXrVQl/8Bz','aroose@achievingthedream.org','','','filtered_html',1353351105,1357164084,1357164084,1,'America/New_York','',0,'aroose@achievingthedream.org','a:1:{s:7:\"contact\";i:1;}');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

