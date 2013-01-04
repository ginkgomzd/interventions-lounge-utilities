
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
DROP TABLE IF EXISTS `field_data_field_resource_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_data_field_resource_type` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned DEFAULT NULL COMMENT 'The entity revision id this data is attached to, or NULL if the entity type is not versioned',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_resource_type_tid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`entity_type`,`entity_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`),
  KEY `field_resource_type_tid` (`field_resource_type_tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data storage for field 13 (field_resource_type)';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `field_data_field_resource_type` WRITE;
/*!40000 ALTER TABLE `field_data_field_resource_type` DISABLE KEYS */;
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,111,223,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,112,193,'und',0,28);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,113,197,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,115,198,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,117,194,'und',0,27);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,118,201,'und',0,27);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,120,185,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,121,3650,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,123,188,'und',0,27);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,124,1225,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,125,344,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,126,192,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,129,182,'und',0,28);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,130,181,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,131,179,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,132,178,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,133,247,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,134,1229,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,135,200,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,137,205,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,138,2936,'und',0,27);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,139,212,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,140,214,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,141,215,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,142,224,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,143,218,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,144,220,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,145,221,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,147,225,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,148,346,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,149,244,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,150,228,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,151,229,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,152,230,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,153,231,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,154,243,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,155,348,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,156,234,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,157,237,'und',0,30);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,158,1264,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,159,240,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,160,251,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,161,8598,'und',0,30);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,162,256,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,163,253,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,164,255,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,165,257,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,166,258,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,167,259,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,168,1499,'und',0,30);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,169,261,'und',0,30);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,172,270,'und',0,30);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,173,265,'und',0,30);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,177,2594,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,178,271,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,181,2123,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,183,300,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,184,298,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,195,314,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,200,315,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,202,313,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,205,312,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,207,317,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,209,319,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,211,321,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,212,2651,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,215,326,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,217,328,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,219,330,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,220,331,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,221,332,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,222,333,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,223,334,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,224,342,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,225,336,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,227,467,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,232,3317,'und',0,28);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,233,358,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,237,362,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,238,363,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,239,364,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,240,367,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,241,366,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,246,376,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,247,379,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,248,378,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,249,380,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,250,381,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,251,383,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,252,384,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,253,385,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,254,387,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,255,388,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,256,389,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,257,390,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,258,391,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,259,392,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,260,393,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,261,394,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,262,399,'und',0,30);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,264,403,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,266,404,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,849,1807,'und',0,32);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1153,3576,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1154,2589,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1155,3578,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1158,8599,'und',0,15);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1190,3009,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1311,5321,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1566,3318,'und',0,28);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1638,3580,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1639,3579,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1640,3577,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1641,3575,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1642,3487,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1643,3488,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1644,8602,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1645,3485,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1646,8600,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1647,3483,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1648,8603,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1649,8601,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1650,3476,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1687,3571,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1689,3557,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1690,3559,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1691,3560,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1692,3562,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1693,3563,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1694,3564,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1695,3565,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1696,3566,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1698,3569,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1716,3615,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1724,3623,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1725,3624,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1771,3729,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1772,3683,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1773,3730,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1774,3685,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1775,3687,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1776,3688,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1777,3690,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1778,3691,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1780,3705,'und',0,9);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1792,3721,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1795,3724,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1796,3725,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1797,3726,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1798,3727,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1805,3737,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1807,3739,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1808,3740,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1843,3777,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1844,3778,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1847,3783,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1848,3825,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1849,3785,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1857,3794,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1858,3796,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1880,3826,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1881,3827,'und',0,31);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1905,3867,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,1972,3975,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,2709,4917,'und',0,28);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,2908,5304,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,2912,6947,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,3100,9148,'und',0,10);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,3236,6238,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,3425,7785,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,3458,7892,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,3506,8008,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,3520,8071,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,3618,8369,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,3621,8378,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,3789,8861,'und',0,16);
INSERT INTO `field_data_field_resource_type` VALUES ('node','resource',0,3952,9188,'und',0,30);
/*!40000 ALTER TABLE `field_data_field_resource_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
