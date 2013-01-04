
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
DROP TABLE IF EXISTS `field_revision_field_small_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `field_revision_field_small_image` (
  `entity_type` varchar(128) NOT NULL DEFAULT '' COMMENT 'The entity type this data is attached to',
  `bundle` varchar(128) NOT NULL DEFAULT '' COMMENT 'The field instance bundle to which this row belongs, used when deleting a field instance',
  `deleted` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'A boolean indicating whether this data item has been deleted',
  `entity_id` int(10) unsigned NOT NULL COMMENT 'The entity id this data is attached to',
  `revision_id` int(10) unsigned NOT NULL COMMENT 'The entity revision id this data is attached to',
  `language` varchar(32) NOT NULL DEFAULT '' COMMENT 'The language for this data item.',
  `delta` int(10) unsigned NOT NULL COMMENT 'The sequence number for this data item, used for multi-value fields',
  `field_small_image_fid` int(10) unsigned DEFAULT NULL COMMENT 'The file_managed.fid being referenced in this field.',
  `field_small_image_alt` varchar(512) DEFAULT NULL,
  `field_small_image_title` varchar(1024) DEFAULT NULL,
  `field_small_image_width` int(10) unsigned DEFAULT NULL COMMENT 'The width of the image in pixels.',
  `field_small_image_height` int(10) unsigned DEFAULT NULL COMMENT 'The height of the image in pixels.',
  PRIMARY KEY (`entity_type`,`entity_id`,`revision_id`,`deleted`,`delta`,`language`),
  KEY `entity_type` (`entity_type`),
  KEY `bundle` (`bundle`),
  KEY `deleted` (`deleted`),
  KEY `entity_id` (`entity_id`),
  KEY `revision_id` (`revision_id`),
  KEY `language` (`language`),
  KEY `field_small_image_fid` (`field_small_image_fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Revision archive storage for field 20 (field_small_image)';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `field_revision_field_small_image` WRITE;
/*!40000 ALTER TABLE `field_revision_field_small_image` DISABLE KEYS */;
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,712,1208,'und',0,327,'','',300,300);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,712,1372,'und',0,327,'','',300,300);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,712,2780,'und',0,327,'','',300,300);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,1335,'und',0,444,'','',300,300);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,1347,'und',0,444,'','',300,300);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,1351,'und',0,444,'','',300,300);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,1369,'und',0,444,'','',300,300);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,1371,'und',0,444,'','',300,300);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,1405,'und',0,490,'','',300,300);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,1406,'und',0,491,'','',193,193);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,1491,'und',0,491,'','',193,193);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,1492,'und',0,491,'','',193,193);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,2778,'und',0,491,'','',193,193);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,2785,'und',0,491,'','',193,193);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,2799,'und',0,491,'','',193,193);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,2800,'und',0,491,'','',193,193);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,2801,'und',0,491,'','',193,193);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,2802,'und',0,491,'','',193,193);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,2803,'und',0,491,'','',193,193);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,2806,'und',0,491,'','',193,193);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,2807,'und',0,491,'','',193,193);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,2808,'und',0,491,'','',193,193);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,3170,'und',0,491,'','',193,193);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,3171,'und',0,491,'','',193,193);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,3172,'und',0,491,'','',193,193);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,718,3173,'und',0,491,'','',193,193);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,731,1385,'und',0,473,'','',248,248);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,731,1397,'und',0,481,'','',202,202);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,731,1399,'und',0,481,'','',202,202);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,731,1400,'und',0,481,'','',202,202);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,731,1417,'und',0,481,'','',202,202);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,731,1418,'und',0,481,'','',202,202);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,731,1421,'und',0,481,'','',202,202);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,731,2593,'und',0,481,'','',202,202);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,731,2596,'und',0,481,'','',202,202);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,731,5227,'und',0,481,'','',202,202);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,731,5228,'und',0,481,'','',202,202);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,733,1404,'und',0,488,'','',300,300);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,733,1424,'und',0,488,'','',300,300);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,733,2779,'und',0,488,'','',300,300);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,733,7147,'und',0,488,'','',300,300);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,1153,3576,'und',0,856,'','',403,522);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,1155,3578,'und',0,858,'','',405,527);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,1477,3165,'und',0,710,'','',298,282);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,1477,3176,'und',0,710,'','',298,282);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,1477,3177,'und',0,710,'','',298,282);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,1477,3178,'und',0,710,'','',298,282);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,1477,3179,'und',0,710,'','',298,282);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,1477,3180,'und',0,710,'','',298,282);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,1477,3185,'und',0,710,'','',298,282);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,1638,3580,'und',0,860,'','',400,520);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,1639,3579,'und',0,859,'','',781,600);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,1640,3577,'und',0,857,'','',404,526);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,1641,3572,'und',0,855,'','',254,316);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,1641,3573,'und',0,855,'','',254,316);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,1641,3575,'und',0,855,'','',254,316);
INSERT INTO `field_revision_field_small_image` VALUES ('node','panel',0,1669,3581,'und',0,861,'','',405,519);
INSERT INTO `field_revision_field_small_image` VALUES ('node','panel',0,1669,3926,'und',0,861,'','',405,519);
INSERT INTO `field_revision_field_small_image` VALUES ('node','panel',0,1670,3582,'und',0,862,'','',380,237);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,1678,3537,'und',0,825,'','',100,100);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,1678,3539,'und',0,825,'','',100,100);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,1678,3547,'und',0,825,'','',100,100);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,1678,3672,'und',0,825,'','',100,100);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,1679,3538,'und',0,827,'','',100,100);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,1679,3540,'und',0,827,'','',100,100);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,1679,3541,'und',0,827,'','',100,100);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,1679,3605,'und',0,827,'','',100,100);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,1729,3628,'und',0,880,'','',188,188);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,1729,3630,'und',0,880,'','',188,188);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,1729,3631,'und',0,880,'','',188,188);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,1729,3701,'und',0,880,'','',188,188);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,1905,3867,'und',0,961,'','',687,887);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,2912,5318,'und',0,1047,'','',454,585);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,2912,5319,'und',0,1047,'','',454,585);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,2912,5320,'und',0,1047,'','',454,585);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,2912,5323,'und',0,1047,'','',454,585);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,2912,5581,'und',0,1047,'','',454,585);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,2912,5956,'und',0,1047,'','',454,585);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,2912,5957,'und',0,1047,'','',454,585);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,2912,6166,'und',0,1047,'','',454,585);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,2912,6946,'und',0,1047,'','',454,585);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,2912,6947,'und',0,1047,'','',454,585);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3349,7199,'und',0,1126,'','',300,201);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3349,7200,'und',0,1126,'','',300,201);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3349,8494,'und',0,1126,'','',300,201);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3349,8495,'und',0,1126,'','',300,201);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3349,8496,'und',0,1126,'','',300,201);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3349,8497,'und',0,1126,'','',300,201);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3349,8498,'und',0,1126,'','',300,201);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3349,8796,'und',0,1126,'','',300,201);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3349,8800,'und',0,1126,'','',300,201);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3349,8816,'und',0,1126,'','',300,201);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3349,9017,'und',0,1126,'','',300,201);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3349,9018,'und',0,1126,'','',300,201);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3349,9019,'und',0,1126,'','',300,201);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3349,9126,'und',0,1126,'','',300,201);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,3458,7891,'und',0,1171,'','',620,804);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,3458,7892,'und',0,1171,'','',620,804);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3493,7970,'und',0,1184,'','',300,200);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3493,7971,'und',0,1185,'','',198,193);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,3506,8007,'und',0,1188,'','',544,705);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,3506,8008,'und',0,1188,'','',544,705);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,3618,8368,'und',0,1266,'','',479,620);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,3618,8369,'und',0,1266,'','',479,620);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3761,8782,'und',0,1293,'','',100,100);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3761,8783,'und',0,1293,'','',100,100);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3761,8794,'und',0,1293,'','',100,100);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3761,8795,'und',0,1293,'','',100,100);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,3789,8858,'und',0,1305,'','',481,602);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,3789,8859,'und',0,1305,'','',481,602);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,3789,8860,'und',0,1305,'','',481,602);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,3789,8861,'und',0,1305,'','',481,602);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,3952,9187,'und',0,1352,'','',508,656);
INSERT INTO `field_revision_field_small_image` VALUES ('node','resource',0,3952,9188,'und',0,1352,'','',508,656);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3960,9204,'und',0,1360,'','',200,200);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3965,9228,'und',0,1369,'','',249,224);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3965,9229,'und',0,1369,'','',249,224);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3965,9230,'und',0,1369,'','',249,224);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3965,9231,'und',0,1369,'','',249,224);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3965,9232,'und',0,1369,'','',249,224);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3965,9233,'und',0,1375,'','',300,242);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3965,9241,'und',0,1380,'','',98,99);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3975,9299,'und',0,1386,'','',150,150);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3975,9300,'und',0,1386,'','',150,150);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3975,9301,'und',0,1386,'','',150,150);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,3975,9321,'und',0,1386,'','',150,150);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,4039,9577,'und',0,1430,'','',300,242);
INSERT INTO `field_revision_field_small_image` VALUES ('node','slideshow_image',0,4039,9578,'und',0,1430,'','',300,242);
/*!40000 ALTER TABLE `field_revision_field_small_image` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

