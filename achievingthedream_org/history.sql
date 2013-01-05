
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
DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT 'The users.uid that read the node nid.',
  `nid` int(11) NOT NULL DEFAULT '0' COMMENT 'The node.nid that was read.',
  `timestamp` int(11) NOT NULL DEFAULT '0' COMMENT 'The Unix timestamp at which the read occurred.',
  PRIMARY KEY (`uid`,`nid`),
  KEY `nid` (`nid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='A record of which users have read which nodes.';
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `history` WRITE;
/*!40000 ALTER TABLE `history` DISABLE KEYS */;
INSERT INTO `history` VALUES (1,98,1357227971);
INSERT INTO `history` VALUES (1,276,1356107150);
INSERT INTO `history` VALUES (1,278,1354900599);
INSERT INTO `history` VALUES (1,3809,1356708607);
INSERT INTO `history` VALUES (1,3845,1356708592);
INSERT INTO `history` VALUES (1,3869,1357309995);
INSERT INTO `history` VALUES (1,3914,1357225990);
INSERT INTO `history` VALUES (1,3920,1357309999);
INSERT INTO `history` VALUES (1,3924,1357309998);
INSERT INTO `history` VALUES (1,3937,1354894090);
INSERT INTO `history` VALUES (1,4062,1357225998);
INSERT INTO `history` VALUES (1,4078,1355163467);
INSERT INTO `history` VALUES (1,4079,1355164005);
INSERT INTO `history` VALUES (1,4080,1357227939);
INSERT INTO `history` VALUES (1,4081,1355168424);
INSERT INTO `history` VALUES (1,4082,1357237530);
INSERT INTO `history` VALUES (12,52,1355244793);
INSERT INTO `history` VALUES (12,73,1355437855);
INSERT INTO `history` VALUES (12,87,1355845646);
INSERT INTO `history` VALUES (12,89,1355241577);
INSERT INTO `history` VALUES (12,96,1354739226);
INSERT INTO `history` VALUES (12,98,1357309493);
INSERT INTO `history` VALUES (12,268,1354740871);
INSERT INTO `history` VALUES (12,271,1355156436);
INSERT INTO `history` VALUES (12,273,1357309544);
INSERT INTO `history` VALUES (12,277,1357309500);
INSERT INTO `history` VALUES (12,279,1355170455);
INSERT INTO `history` VALUES (12,283,1355246727);
INSERT INTO `history` VALUES (12,287,1357164446);
INSERT INTO `history` VALUES (12,290,1355157850);
INSERT INTO `history` VALUES (12,291,1355867836);
INSERT INTO `history` VALUES (12,293,1355867800);
INSERT INTO `history` VALUES (12,297,1357240388);
INSERT INTO `history` VALUES (12,304,1357309547);
INSERT INTO `history` VALUES (12,377,1355167677);
INSERT INTO `history` VALUES (12,1144,1355170462);
INSERT INTO `history` VALUES (12,1147,1355170375);
INSERT INTO `history` VALUES (12,1630,1355157934);
INSERT INTO `history` VALUES (12,1704,1355867813);
INSERT INTO `history` VALUES (12,1729,1355241659);
INSERT INTO `history` VALUES (12,3506,1357310033);
INSERT INTO `history` VALUES (12,3760,1355245526);
INSERT INTO `history` VALUES (12,3761,1355241643);
INSERT INTO `history` VALUES (12,3784,1355158164);
INSERT INTO `history` VALUES (12,3869,1357164448);
INSERT INTO `history` VALUES (12,3894,1355164506);
INSERT INTO `history` VALUES (12,3921,1357261601);
INSERT INTO `history` VALUES (12,3924,1355496068);
INSERT INTO `history` VALUES (12,3979,1355148428);
INSERT INTO `history` VALUES (12,4038,1357309578);
INSERT INTO `history` VALUES (12,4047,1355170381);
INSERT INTO `history` VALUES (12,4062,1357164494);
INSERT INTO `history` VALUES (12,4075,1355492108);
INSERT INTO `history` VALUES (12,4080,1355245520);
INSERT INTO `history` VALUES (13,87,1355868377);
INSERT INTO `history` VALUES (13,98,1357316853);
INSERT INTO `history` VALUES (13,270,1354896647);
INSERT INTO `history` VALUES (13,278,1355868328);
INSERT INTO `history` VALUES (13,280,1357313366);
INSERT INTO `history` VALUES (13,282,1355867966);
INSERT INTO `history` VALUES (13,287,1357246961);
INSERT INTO `history` VALUES (13,297,1357229608);
INSERT INTO `history` VALUES (13,330,1357316935);
INSERT INTO `history` VALUES (13,389,1356024927);
INSERT INTO `history` VALUES (13,553,1355946996);
INSERT INTO `history` VALUES (13,555,1355946976);
INSERT INTO `history` VALUES (13,562,1355934680);
INSERT INTO `history` VALUES (13,563,1356034327);
INSERT INTO `history` VALUES (13,648,1355166209);
INSERT INTO `history` VALUES (13,653,1355165973);
INSERT INTO `history` VALUES (13,657,1355166252);
INSERT INTO `history` VALUES (13,660,1357245249);
INSERT INTO `history` VALUES (13,696,1355946972);
INSERT INTO `history` VALUES (13,716,1355171244);
INSERT INTO `history` VALUES (13,844,1355497521);
INSERT INTO `history` VALUES (13,1131,1355497511);
INSERT INTO `history` VALUES (13,1147,1355868321);
INSERT INTO `history` VALUES (13,1483,1355868314);
INSERT INTO `history` VALUES (13,1630,1357234189);
INSERT INTO `history` VALUES (13,1701,1355165582);
INSERT INTO `history` VALUES (13,1720,1355165616);
INSERT INTO `history` VALUES (13,1774,1355953887);
INSERT INTO `history` VALUES (13,1779,1354897553);
INSERT INTO `history` VALUES (13,1832,1355165611);
INSERT INTO `history` VALUES (13,1918,1355948752);
INSERT INTO `history` VALUES (13,1955,1356035888);
INSERT INTO `history` VALUES (13,1956,1357235246);
INSERT INTO `history` VALUES (13,1958,1354736265);
INSERT INTO `history` VALUES (13,2717,1356035803);
INSERT INTO `history` VALUES (13,3481,1355948778);
INSERT INTO `history` VALUES (13,3558,1355948745);
INSERT INTO `history` VALUES (13,3760,1355777469);
INSERT INTO `history` VALUES (13,3869,1357246965);
INSERT INTO `history` VALUES (13,3894,1357243857);
INSERT INTO `history` VALUES (13,3914,1355944528);
INSERT INTO `history` VALUES (13,3919,1356028663);
INSERT INTO `history` VALUES (13,3920,1357246970);
INSERT INTO `history` VALUES (13,3921,1357246974);
INSERT INTO `history` VALUES (13,3924,1356029299);
INSERT INTO `history` VALUES (13,3959,1357242860);
INSERT INTO `history` VALUES (13,3962,1357242832);
INSERT INTO `history` VALUES (13,3979,1357310684);
INSERT INTO `history` VALUES (13,3984,1355945014);
INSERT INTO `history` VALUES (13,3985,1355174131);
INSERT INTO `history` VALUES (13,4012,1354895207);
INSERT INTO `history` VALUES (13,4038,1355945007);
INSERT INTO `history` VALUES (13,4046,1355868325);
INSERT INTO `history` VALUES (13,4047,1355868335);
INSERT INTO `history` VALUES (13,4048,1355867988);
INSERT INTO `history` VALUES (13,4062,1355249653);
INSERT INTO `history` VALUES (13,4064,1355160203);
INSERT INTO `history` VALUES (13,4068,1354895188);
INSERT INTO `history` VALUES (13,4069,1357222383);
INSERT INTO `history` VALUES (13,4072,1354895202);
INSERT INTO `history` VALUES (13,4073,1354744290);
INSERT INTO `history` VALUES (13,4074,1354895214);
INSERT INTO `history` VALUES (13,4075,1355500046);
INSERT INTO `history` VALUES (13,4076,1355497564);
INSERT INTO `history` VALUES (13,4077,1355160192);
INSERT INTO `history` VALUES (13,4080,1355777594);
INSERT INTO `history` VALUES (13,4082,1355249639);
INSERT INTO `history` VALUES (13,4083,1355776696);
INSERT INTO `history` VALUES (13,4085,1355500038);
INSERT INTO `history` VALUES (13,4086,1357222313);
INSERT INTO `history` VALUES (13,4090,1355500408);
INSERT INTO `history` VALUES (13,4092,1357222354);
INSERT INTO `history` VALUES (13,4095,1355499906);
INSERT INTO `history` VALUES (13,4097,1357222363);
INSERT INTO `history` VALUES (13,4099,1355941564);
INSERT INTO `history` VALUES (13,4102,1355941489);
INSERT INTO `history` VALUES (13,4103,1355500052);
INSERT INTO `history` VALUES (13,4104,1355497568);
INSERT INTO `history` VALUES (13,4105,1355941467);
INSERT INTO `history` VALUES (13,4106,1355776708);
INSERT INTO `history` VALUES (13,4107,1357222325);
INSERT INTO `history` VALUES (13,4109,1355941508);
INSERT INTO `history` VALUES (13,4116,1357222322);
INSERT INTO `history` VALUES (13,4117,1356020213);
INSERT INTO `history` VALUES (13,4118,1356020200);
INSERT INTO `history` VALUES (13,4123,1357222359);
INSERT INTO `history` VALUES (13,4124,1357222366);
INSERT INTO `history` VALUES (13,4125,1357222393);
INSERT INTO `history` VALUES (13,4126,1357222389);
INSERT INTO `history` VALUES (13,4127,1357222369);
INSERT INTO `history` VALUES (13,4128,1357222374);
INSERT INTO `history` VALUES (13,4129,1357222379);
INSERT INTO `history` VALUES (13,4133,1357222300);
INSERT INTO `history` VALUES (13,4135,1357222397);
INSERT INTO `history` VALUES (13,4138,1357222426);
INSERT INTO `history` VALUES (13,4140,1357222408);
INSERT INTO `history` VALUES (13,4141,1357222417);
INSERT INTO `history` VALUES (13,4142,1357222414);
INSERT INTO `history` VALUES (13,4143,1357222419);
INSERT INTO `history` VALUES (16,98,1357224273);
INSERT INTO `history` VALUES (16,821,1357224283);
INSERT INTO `history` VALUES (16,3894,1356632116);
INSERT INTO `history` VALUES (16,3917,1356632121);
INSERT INTO `history` VALUES (86,73,1355502190);
INSERT INTO `history` VALUES (86,74,1355502207);
INSERT INTO `history` VALUES (86,90,1355502346);
INSERT INTO `history` VALUES (86,93,1355502031);
INSERT INTO `history` VALUES (86,94,1355502016);
INSERT INTO `history` VALUES (86,96,1355502199);
INSERT INTO `history` VALUES (86,97,1355502126);
INSERT INTO `history` VALUES (86,98,1357164141);
INSERT INTO `history` VALUES (86,268,1355502165);
INSERT INTO `history` VALUES (86,275,1355503550);
INSERT INTO `history` VALUES (86,276,1355502182);
INSERT INTO `history` VALUES (86,286,1355502157);
INSERT INTO `history` VALUES (86,1131,1355503543);
INSERT INTO `history` VALUES (86,3762,1355426057);
INSERT INTO `history` VALUES (86,3784,1355502148);
INSERT INTO `history` VALUES (86,3869,1355413847);
INSERT INTO `history` VALUES (86,4062,1355329281);
INSERT INTO `history` VALUES (86,4082,1355329177);
/*!40000 ALTER TABLE `history` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

