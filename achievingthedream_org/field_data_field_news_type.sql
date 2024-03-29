
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
DROP TABLE IF EXISTS `field_data_field_news_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_data_field_news_type` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned DEFAULT NULL COMMENT 'The entity revision id this data is attached to, or NULL if the entity type is not versioned',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_news_type_tid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`entity_type`,`entity_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`),
  KEY `field_news_type_tid` (`field_news_type_tid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Data storage for field 16 (field_news_type)';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `field_data_field_news_type` WRITE;
/*!40000 ALTER TABLE `field_data_field_news_type` DISABLE KEYS */;
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,162,256,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,163,253,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,166,258,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,237,362,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,238,363,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,239,364,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,240,367,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,241,366,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,246,376,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,247,379,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,248,378,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,249,380,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,250,381,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,251,383,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,252,384,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,253,385,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,254,387,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,255,388,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,256,389,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,257,390,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,258,391,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,259,392,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,260,393,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,624,1092,'und',0,8);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,625,1093,'und',0,8);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,626,1094,'und',0,8);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,627,1095,'und',0,8);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,628,1096,'und',0,8);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,629,1097,'und',0,8);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,630,1098,'und',0,8);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,744,1428,'und',0,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,849,1807,'und',0,8);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,911,2171,'und',0,8);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1121,2439,'und',0,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1128,2456,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1156,2591,'und',0,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1185,2662,'und',0,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1189,2786,'und',0,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1314,2969,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1315,2970,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1316,2971,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1505,3221,'und',0,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1615,3386,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1616,3388,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1635,3429,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1686,5978,'und',0,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1722,3621,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1722,3621,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1769,3679,'und',0,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1791,3720,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1888,3845,'und',0,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1917,3884,'und',0,8);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1936,3943,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1957,3941,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1960,3944,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1980,3989,'und',0,43);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,1982,3997,'und',0,6);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,2708,4910,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,2713,4921,'und',0,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,2733,4985,'und',0,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,2804,5086,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,2804,5086,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,2824,5106,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,2863,5231,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,2954,5389,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3006,7628,'und',0,50);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3010,5471,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3010,5471,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3011,8547,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3016,5486,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3036,5506,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3077,7816,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3103,7820,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3131,5656,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3190,7819,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3218,7636,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3219,7640,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3279,7643,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3312,6840,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3328,7641,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3329,7635,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3331,7638,'und',0,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3338,7180,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3342,7185,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3344,7190,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3344,7190,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3345,7182,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3345,7182,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3346,7179,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3347,7632,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3347,7632,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3352,7607,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3352,7607,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3360,7365,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3360,7365,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3364,7375,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3364,7375,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3368,7634,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3368,7634,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3369,7387,'und',0,8);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3370,7596,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3370,7596,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3373,7441,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3373,7441,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3379,7817,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3383,7605,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3383,7605,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3389,7630,'und',0,50);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3393,7685,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3396,7689,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3402,7706,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3404,7710,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3412,7754,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3412,7754,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3414,7755,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3414,7755,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3416,7759,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3420,7775,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3434,7822,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3434,7822,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3449,7867,'und',0,50);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3454,7877,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3460,7895,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3472,7917,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3474,7918,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3492,7967,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3492,7967,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3496,8073,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3501,7997,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3522,8092,'und',0,50);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3541,8131,'und',0,50);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3541,8131,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3550,8264,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3552,8160,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3552,8160,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3588,8265,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3588,8265,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3594,8289,'und',0,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3595,8299,'und',0,50);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3610,8370,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3682,8541,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3687,8545,'und',0,50);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3701,8586,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3714,8680,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3726,8706,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3726,8706,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3741,8822,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3753,8804,'und',0,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3767,8811,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3767,8811,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3775,8984,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3864,8990,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3866,8988,'und',0,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3895,9060,'und',0,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3908,9141,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3911,9101,'und',0,50);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3934,9145,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3955,9227,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3955,9227,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3961,9460,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3961,9460,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3966,9237,'und',0,50);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3978,9368,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3980,9673,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3980,9673,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3990,9692,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3990,9692,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3995,9373,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3995,9373,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3997,9473,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3997,9473,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3999,9377,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,3999,9377,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4001,9381,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4001,9381,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4006,9445,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4006,9445,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4010,9478,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4010,9478,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4011,9762,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4012,9691,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4012,9691,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4014,9424,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4014,9424,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4029,9587,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4029,9587,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4040,9591,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4040,9591,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4043,9602,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4043,9602,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4049,9630,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4049,9630,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4051,9641,'und',0,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4067,9687,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4067,9687,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4075,9701,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4075,9701,'und',1,1);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4083,9758,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4085,9757,'und',0,2);
INSERT INTO `field_data_field_news_type` VALUES ('node','news',0,4105,9770,'und',0,2);
/*!40000 ALTER TABLE `field_data_field_news_type` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

