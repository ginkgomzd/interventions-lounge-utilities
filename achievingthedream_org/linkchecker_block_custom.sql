
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
DROP TABLE IF EXISTS `linkchecker_block_custom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `linkchecker_block_custom` (
  `bid` int(11) NOT NULL COMMENT 'Primary Key: Unique block_custom.bid.',
  `lid` int(11) NOT NULL COMMENT 'Primary Key: Unique linkchecker_link.lid.',
  PRIMARY KEY (`bid`,`lid`),
  KEY `lid` (`lid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Stores all link references for custom blocks.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `linkchecker_block_custom` WRITE;
/*!40000 ALTER TABLE `linkchecker_block_custom` DISABLE KEYS */;
INSERT INTO `linkchecker_block_custom` VALUES (1,1455);
INSERT INTO `linkchecker_block_custom` VALUES (1,1456);
INSERT INTO `linkchecker_block_custom` VALUES (3,225);
INSERT INTO `linkchecker_block_custom` VALUES (3,256);
INSERT INTO `linkchecker_block_custom` VALUES (3,278);
INSERT INTO `linkchecker_block_custom` VALUES (3,315);
INSERT INTO `linkchecker_block_custom` VALUES (3,316);
INSERT INTO `linkchecker_block_custom` VALUES (3,317);
INSERT INTO `linkchecker_block_custom` VALUES (3,321);
INSERT INTO `linkchecker_block_custom` VALUES (4,717);
INSERT INTO `linkchecker_block_custom` VALUES (4,1322);
INSERT INTO `linkchecker_block_custom` VALUES (4,1323);
INSERT INTO `linkchecker_block_custom` VALUES (4,1325);
INSERT INTO `linkchecker_block_custom` VALUES (4,1326);
INSERT INTO `linkchecker_block_custom` VALUES (4,1327);
INSERT INTO `linkchecker_block_custom` VALUES (4,1328);
INSERT INTO `linkchecker_block_custom` VALUES (4,1329);
INSERT INTO `linkchecker_block_custom` VALUES (4,1330);
INSERT INTO `linkchecker_block_custom` VALUES (5,239);
INSERT INTO `linkchecker_block_custom` VALUES (5,240);
INSERT INTO `linkchecker_block_custom` VALUES (5,241);
INSERT INTO `linkchecker_block_custom` VALUES (5,242);
INSERT INTO `linkchecker_block_custom` VALUES (5,243);
INSERT INTO `linkchecker_block_custom` VALUES (5,244);
INSERT INTO `linkchecker_block_custom` VALUES (5,245);
INSERT INTO `linkchecker_block_custom` VALUES (5,246);
INSERT INTO `linkchecker_block_custom` VALUES (5,247);
INSERT INTO `linkchecker_block_custom` VALUES (5,248);
INSERT INTO `linkchecker_block_custom` VALUES (5,712);
INSERT INTO `linkchecker_block_custom` VALUES (6,175);
INSERT INTO `linkchecker_block_custom` VALUES (6,358);
INSERT INTO `linkchecker_block_custom` VALUES (6,359);
INSERT INTO `linkchecker_block_custom` VALUES (6,654);
INSERT INTO `linkchecker_block_custom` VALUES (6,655);
INSERT INTO `linkchecker_block_custom` VALUES (6,832);
INSERT INTO `linkchecker_block_custom` VALUES (6,1059);
INSERT INTO `linkchecker_block_custom` VALUES (6,1060);
INSERT INTO `linkchecker_block_custom` VALUES (6,1282);
INSERT INTO `linkchecker_block_custom` VALUES (6,1490);
INSERT INTO `linkchecker_block_custom` VALUES (6,1495);
INSERT INTO `linkchecker_block_custom` VALUES (6,1496);
INSERT INTO `linkchecker_block_custom` VALUES (6,1497);
INSERT INTO `linkchecker_block_custom` VALUES (9,221);
INSERT INTO `linkchecker_block_custom` VALUES (11,209);
INSERT INTO `linkchecker_block_custom` VALUES (12,215);
INSERT INTO `linkchecker_block_custom` VALUES (12,222);
INSERT INTO `linkchecker_block_custom` VALUES (12,224);
INSERT INTO `linkchecker_block_custom` VALUES (14,249);
INSERT INTO `linkchecker_block_custom` VALUES (15,1057);
INSERT INTO `linkchecker_block_custom` VALUES (17,299);
INSERT INTO `linkchecker_block_custom` VALUES (17,300);
INSERT INTO `linkchecker_block_custom` VALUES (17,301);
INSERT INTO `linkchecker_block_custom` VALUES (17,302);
INSERT INTO `linkchecker_block_custom` VALUES (19,744);
INSERT INTO `linkchecker_block_custom` VALUES (19,745);
INSERT INTO `linkchecker_block_custom` VALUES (19,746);
INSERT INTO `linkchecker_block_custom` VALUES (19,747);
INSERT INTO `linkchecker_block_custom` VALUES (19,748);
INSERT INTO `linkchecker_block_custom` VALUES (19,1511);
INSERT INTO `linkchecker_block_custom` VALUES (20,897);
INSERT INTO `linkchecker_block_custom` VALUES (20,901);
INSERT INTO `linkchecker_block_custom` VALUES (20,902);
INSERT INTO `linkchecker_block_custom` VALUES (20,903);
INSERT INTO `linkchecker_block_custom` VALUES (20,904);
INSERT INTO `linkchecker_block_custom` VALUES (20,905);
INSERT INTO `linkchecker_block_custom` VALUES (20,906);
INSERT INTO `linkchecker_block_custom` VALUES (20,990);
INSERT INTO `linkchecker_block_custom` VALUES (22,1033);
INSERT INTO `linkchecker_block_custom` VALUES (22,1034);
INSERT INTO `linkchecker_block_custom` VALUES (22,1035);
INSERT INTO `linkchecker_block_custom` VALUES (22,1044);
INSERT INTO `linkchecker_block_custom` VALUES (22,1045);
INSERT INTO `linkchecker_block_custom` VALUES (22,1046);
INSERT INTO `linkchecker_block_custom` VALUES (22,1047);
INSERT INTO `linkchecker_block_custom` VALUES (22,1048);
INSERT INTO `linkchecker_block_custom` VALUES (24,1287);
INSERT INTO `linkchecker_block_custom` VALUES (25,746);
INSERT INTO `linkchecker_block_custom` VALUES (25,1503);
INSERT INTO `linkchecker_block_custom` VALUES (25,1511);
INSERT INTO `linkchecker_block_custom` VALUES (25,1520);
INSERT INTO `linkchecker_block_custom` VALUES (25,1521);
/*!40000 ALTER TABLE `linkchecker_block_custom` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
