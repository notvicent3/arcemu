-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: arcemu_world
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.16.04.1

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

--
-- Table structure for table `ai_agents`
--

DROP TABLE IF EXISTS `ai_agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ai_agents` (
  `entry` int(11) unsigned NOT NULL DEFAULT '0',
  `instance_mode` int(10) unsigned NOT NULL DEFAULT '4',
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `event` int(11) unsigned NOT NULL DEFAULT '0',
  `chance` int(11) unsigned NOT NULL DEFAULT '0',
  `maxcount` int(11) unsigned NOT NULL DEFAULT '0',
  `spell` int(11) unsigned NOT NULL DEFAULT '0',
  `spelltype` int(11) unsigned NOT NULL DEFAULT '0',
  `targettype_overwrite` int(11) NOT NULL DEFAULT '-1',
  `cooldown_overwrite` int(11) NOT NULL DEFAULT '-1',
  `floatMisc1` float NOT NULL DEFAULT '0',
  `Misc2` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='AI System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_agents`
--

LOCK TABLES `ai_agents` WRITE;
/*!40000 ALTER TABLE `ai_agents` DISABLE KEYS */;
/*!40000 ALTER TABLE `ai_agents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ai_threattospellid`
--

DROP TABLE IF EXISTS `ai_threattospellid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ai_threattospellid` (
  `spell` int(11) unsigned NOT NULL DEFAULT '0',
  `mod` int(11) NOT NULL DEFAULT '0',
  `modcoef` float NOT NULL DEFAULT '1',
  PRIMARY KEY (`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='AI System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ai_threattospellid`
--

LOCK TABLES `ai_threattospellid` WRITE;
/*!40000 ALTER TABLE `ai_threattospellid` DISABLE KEYS */;
/*!40000 ALTER TABLE `ai_threattospellid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areatriggers`
--

DROP TABLE IF EXISTS `areatriggers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areatriggers` (
  `entry` int(11) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned DEFAULT '0',
  `map` int(11) unsigned DEFAULT NULL,
  `screen` int(11) unsigned DEFAULT NULL,
  `name` varchar(100) DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `required_honor_rank` int(11) unsigned NOT NULL DEFAULT '0',
  `required_level` tinyint(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Trigger System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areatriggers`
--

LOCK TABLES `areatriggers` WRITE;
/*!40000 ALTER TABLE `areatriggers` DISABLE KEYS */;
/*!40000 ALTER TABLE `areatriggers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auctionhouse`
--

DROP TABLE IF EXISTS `auctionhouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auctionhouse` (
  `id` int(32) NOT NULL AUTO_INCREMENT,
  `creature_entry` bigint(64) unsigned NOT NULL DEFAULT '0',
  `ahgroup` int(32) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Auction House';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auctionhouse`
--

LOCK TABLES `auctionhouse` WRITE;
/*!40000 ALTER TABLE `auctionhouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `auctionhouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banned_phrases`
--

DROP TABLE IF EXISTS `banned_phrases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banned_phrases` (
  `phrase` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`phrase`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banned_phrases`
--

LOCK TABLES `banned_phrases` WRITE;
/*!40000 ALTER TABLE `banned_phrases` DISABLE KEYS */;
/*!40000 ALTER TABLE `banned_phrases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `battlemasters`
--

DROP TABLE IF EXISTS `battlemasters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `battlemasters` (
  `creature_entry` int(10) unsigned NOT NULL DEFAULT '0',
  `battleground_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`creature_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `battlemasters`
--

LOCK TABLES `battlemasters` WRITE;
/*!40000 ALTER TABLE `battlemasters` DISABLE KEYS */;
/*!40000 ALTER TABLE `battlemasters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientaddons`
--

DROP TABLE IF EXISTS `clientaddons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientaddons` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `crc` bigint(20) unsigned DEFAULT NULL,
  `banned` int(10) unsigned NOT NULL DEFAULT '0',
  `showinlist` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Client Addons';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientaddons`
--

LOCK TABLES `clientaddons` WRITE;
/*!40000 ALTER TABLE `clientaddons` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientaddons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `command_overrides`
--

DROP TABLE IF EXISTS `command_overrides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `command_overrides` (
  `command_name` varchar(100) NOT NULL,
  `access_level` varchar(10) NOT NULL,
  PRIMARY KEY (`command_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Commands System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `command_overrides`
--

LOCK TABLES `command_overrides` WRITE;
/*!40000 ALTER TABLE `command_overrides` DISABLE KEYS */;
/*!40000 ALTER TABLE `command_overrides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_formations`
--

DROP TABLE IF EXISTS `creature_formations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_formations` (
  `spawn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `target_spawn_id` int(10) unsigned NOT NULL DEFAULT '0',
  `follow_angle` float NOT NULL DEFAULT '0',
  `follow_dist` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`spawn_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Creature System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_formations`
--

LOCK TABLES `creature_formations` WRITE;
/*!40000 ALTER TABLE `creature_formations` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_formations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_names`
--

DROP TABLE IF EXISTS `creature_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_names` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `subname` varchar(100) NOT NULL,
  `info_str` varchar(500) NOT NULL,
  `flags1` int(10) unsigned NOT NULL DEFAULT '0',
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  `family` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `killcredit1` int(10) unsigned NOT NULL DEFAULT '0',
  `killcredit2` int(10) unsigned NOT NULL DEFAULT '0',
  `male_displayid` int(30) unsigned NOT NULL DEFAULT '0',
  `female_displayid` int(30) unsigned NOT NULL DEFAULT '0',
  `male_displayid2` int(30) unsigned NOT NULL DEFAULT '0',
  `female_displayid2` int(30) unsigned NOT NULL DEFAULT '0',
  `unknown_float1` float NOT NULL DEFAULT '1',
  `unknown_float2` float NOT NULL DEFAULT '1',
  `leader` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `questitem1` int(11) unsigned NOT NULL DEFAULT '0',
  `questitem2` int(11) unsigned NOT NULL DEFAULT '0',
  `questitem3` int(11) unsigned NOT NULL DEFAULT '0',
  `questitem4` int(11) unsigned NOT NULL DEFAULT '0',
  `questitem5` int(11) unsigned NOT NULL DEFAULT '0',
  `questitem6` int(11) unsigned NOT NULL DEFAULT '0',
  `waypointid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Creature System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_names`
--

LOCK TABLES `creature_names` WRITE;
/*!40000 ALTER TABLE `creature_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_names_localized`
--

DROP TABLE IF EXISTS `creature_names_localized`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_names_localized` (
  `id` int(30) unsigned NOT NULL,
  `language_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 NOT NULL,
  `subname` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`id`,`language_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_names_localized`
--

LOCK TABLES `creature_names_localized` WRITE;
/*!40000 ALTER TABLE `creature_names_localized` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_names_localized` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_proto`
--

DROP TABLE IF EXISTS `creature_proto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_proto` (
  `entry` int(30) unsigned NOT NULL DEFAULT '0',
  `minlevel` int(30) unsigned NOT NULL,
  `maxlevel` int(30) unsigned NOT NULL,
  `faction` int(30) unsigned NOT NULL DEFAULT '0',
  `minhealth` int(30) unsigned NOT NULL,
  `maxhealth` int(30) unsigned NOT NULL,
  `mana` int(30) unsigned NOT NULL DEFAULT '0',
  `scale` float NOT NULL DEFAULT '0',
  `npcflags` int(30) unsigned NOT NULL DEFAULT '0',
  `attacktime` int(30) unsigned NOT NULL DEFAULT '0',
  `attacktype` int(4) NOT NULL DEFAULT '0',
  `mindamage` float NOT NULL DEFAULT '0',
  `maxdamage` float NOT NULL DEFAULT '0',
  `can_ranged` int(11) unsigned NOT NULL DEFAULT '0',
  `rangedattacktime` int(30) unsigned NOT NULL DEFAULT '0',
  `rangedmindamage` float unsigned NOT NULL DEFAULT '0',
  `rangedmaxdamage` float unsigned NOT NULL DEFAULT '0',
  `respawntime` int(30) unsigned NOT NULL DEFAULT '0',
  `armor` int(30) unsigned NOT NULL DEFAULT '0',
  `resistance1` int(30) unsigned NOT NULL DEFAULT '0',
  `resistance2` int(30) unsigned NOT NULL DEFAULT '0',
  `resistance3` int(30) unsigned NOT NULL DEFAULT '0',
  `resistance4` int(30) unsigned NOT NULL DEFAULT '0',
  `resistance5` int(30) unsigned NOT NULL DEFAULT '0',
  `resistance6` int(30) unsigned NOT NULL DEFAULT '0',
  `combat_reach` float NOT NULL DEFAULT '0',
  `bounding_radius` float NOT NULL DEFAULT '0',
  `auras` longtext NOT NULL,
  `boss` int(11) unsigned NOT NULL DEFAULT '0',
  `money` int(30) NOT NULL DEFAULT '0',
  `invisibility_type` int(30) unsigned NOT NULL,
  `walk_speed` float NOT NULL DEFAULT '2.5',
  `run_speed` float NOT NULL DEFAULT '8',
  `fly_speed` float NOT NULL DEFAULT '14',
  `extra_a9_flags` int(30) NOT NULL DEFAULT '0',
  `spell1` int(30) unsigned NOT NULL DEFAULT '0',
  `spell2` int(30) unsigned NOT NULL DEFAULT '0',
  `spell3` int(30) unsigned NOT NULL DEFAULT '0',
  `spell4` int(30) unsigned NOT NULL DEFAULT '0',
  `spell5` int(30) unsigned NOT NULL DEFAULT '0',
  `spell6` int(30) unsigned NOT NULL DEFAULT '0',
  `spell7` int(30) unsigned NOT NULL DEFAULT '0',
  `spell8` int(30) unsigned NOT NULL DEFAULT '0',
  `spell_flags` int(30) NOT NULL DEFAULT '0',
  `modImmunities` int(30) unsigned NOT NULL DEFAULT '0',
  `isTrainingDummy` int(10) unsigned NOT NULL DEFAULT '0',
  `guardtype` int(10) unsigned NOT NULL DEFAULT '0',
  `summonguard` int(10) unsigned NOT NULL DEFAULT '0',
  `spelldataid` int(10) unsigned NOT NULL DEFAULT '0',
  `vehicleid` int(10) unsigned NOT NULL DEFAULT '0',
  `rooted` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Creature System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_proto`
--

LOCK TABLES `creature_proto` WRITE;
/*!40000 ALTER TABLE `creature_proto` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_proto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_quest_finisher`
--

DROP TABLE IF EXISTS `creature_quest_finisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_quest_finisher` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `quest` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED COMMENT='Creature System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_quest_finisher`
--

LOCK TABLES `creature_quest_finisher` WRITE;
/*!40000 ALTER TABLE `creature_quest_finisher` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_quest_finisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_quest_starter`
--

DROP TABLE IF EXISTS `creature_quest_starter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_quest_starter` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `quest` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=FIXED COMMENT='Creature System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_quest_starter`
--

LOCK TABLES `creature_quest_starter` WRITE;
/*!40000 ALTER TABLE `creature_quest_starter` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_quest_starter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_spawns`
--

DROP TABLE IF EXISTS `creature_spawns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_spawns` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry` int(30) NOT NULL,
  `map` int(30) NOT NULL,
  `position_x` float NOT NULL,
  `position_y` float NOT NULL,
  `position_z` float NOT NULL,
  `orientation` float NOT NULL,
  `movetype` int(30) NOT NULL DEFAULT '0',
  `displayid` int(30) unsigned NOT NULL DEFAULT '0',
  `faction` int(30) NOT NULL DEFAULT '14',
  `flags` int(30) NOT NULL DEFAULT '0',
  `bytes0` int(30) NOT NULL DEFAULT '0',
  `bytes1` int(30) NOT NULL DEFAULT '0',
  `bytes2` int(30) NOT NULL DEFAULT '0',
  `emote_state` int(30) NOT NULL DEFAULT '0',
  `npc_respawn_link` int(30) NOT NULL DEFAULT '0',
  `channel_spell` int(30) NOT NULL DEFAULT '0',
  `channel_target_sqlid` int(30) NOT NULL DEFAULT '0',
  `channel_target_sqlid_creature` int(30) NOT NULL DEFAULT '0',
  `standstate` int(10) NOT NULL DEFAULT '0',
  `death_state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mountdisplayid` int(10) unsigned NOT NULL DEFAULT '0',
  `slot1item` int(10) unsigned NOT NULL DEFAULT '0',
  `slot2item` int(10) unsigned NOT NULL DEFAULT '0',
  `slot3item` int(10) unsigned NOT NULL DEFAULT '0',
  `CanFly` smallint(3) NOT NULL DEFAULT '0',
  `phase` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Spawn System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_spawns`
--

LOCK TABLES `creature_spawns` WRITE;
/*!40000 ALTER TABLE `creature_spawns` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_spawns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_staticspawns`
--

DROP TABLE IF EXISTS `creature_staticspawns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_staticspawns` (
  `id` int(30) unsigned NOT NULL AUTO_INCREMENT,
  `entry` int(30) NOT NULL,
  `Map` int(30) NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `o` float NOT NULL,
  `movetype` int(30) NOT NULL DEFAULT '0',
  `displayid` int(30) unsigned NOT NULL DEFAULT '0',
  `factionid` int(30) NOT NULL DEFAULT '35',
  `flags` int(30) NOT NULL DEFAULT '0',
  `bytes0` int(30) NOT NULL DEFAULT '0',
  `bytes1` int(30) NOT NULL DEFAULT '0',
  `bytes2` int(30) NOT NULL DEFAULT '0',
  `emote_state` int(30) NOT NULL DEFAULT '0',
  `npc_respawn_link` int(30) NOT NULL DEFAULT '0',
  `channel_spell` int(30) NOT NULL DEFAULT '0',
  `channel_target_sqlid` int(30) NOT NULL DEFAULT '0',
  `channel_target_sqlid_creature` int(30) NOT NULL DEFAULT '0',
  `standstate` int(10) NOT NULL DEFAULT '0',
  `death_state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mountdisplayid` int(10) unsigned NOT NULL DEFAULT '0',
  `slot1item` int(10) unsigned NOT NULL DEFAULT '0',
  `slot2item` int(10) unsigned NOT NULL DEFAULT '0',
  `slot3item` int(10) unsigned NOT NULL DEFAULT '0',
  `CanFly` smallint(3) NOT NULL DEFAULT '0',
  `phase` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Spawn System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_staticspawns`
--

LOCK TABLES `creature_staticspawns` WRITE;
/*!40000 ALTER TABLE `creature_staticspawns` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_staticspawns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_timed_emotes`
--

DROP TABLE IF EXISTS `creature_timed_emotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_timed_emotes` (
  `spawnid` int(10) unsigned NOT NULL DEFAULT '0',
  `rowid` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `msg` text,
  `msg_type` int(10) unsigned NOT NULL DEFAULT '0',
  `msg_lang` int(10) unsigned NOT NULL DEFAULT '0',
  `expire_after` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`spawnid`,`rowid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_timed_emotes`
--

LOCK TABLES `creature_timed_emotes` WRITE;
/*!40000 ALTER TABLE `creature_timed_emotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_timed_emotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creature_waypoints`
--

DROP TABLE IF EXISTS `creature_waypoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_waypoints` (
  `spawnid` int(10) unsigned NOT NULL DEFAULT '0',
  `waypointid` int(10) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `waittime` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `forwardemoteoneshot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `forwardemoteid` int(10) unsigned NOT NULL DEFAULT '0',
  `backwardemoteoneshot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `backwardemoteid` int(10) unsigned NOT NULL DEFAULT '0',
  `forwardskinid` int(10) unsigned NOT NULL DEFAULT '0',
  `backwardskinid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`spawnid`,`waypointid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Creature System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_waypoints`
--

LOCK TABLES `creature_waypoints` WRITE;
/*!40000 ALTER TABLE `creature_waypoints` DISABLE KEYS */;
/*!40000 ALTER TABLE `creature_waypoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fishing`
--

DROP TABLE IF EXISTS `fishing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fishing` (
  `Zone` int(10) unsigned NOT NULL DEFAULT '0',
  `MinSkill` int(10) unsigned DEFAULT NULL,
  `MaxSkill` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`Zone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Fishing System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fishing`
--

LOCK TABLES `fishing` WRITE;
/*!40000 ALTER TABLE `fishing` DISABLE KEYS */;
/*!40000 ALTER TABLE `fishing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_names`
--

DROP TABLE IF EXISTS `gameobject_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_names` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `Type` int(10) unsigned NOT NULL DEFAULT '0',
  `DisplayID` int(10) unsigned NOT NULL DEFAULT '0',
  `Name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Category` varchar(100) NOT NULL,
  `CastBarText` varchar(100) NOT NULL,
  `UnkStr` varchar(100) NOT NULL,
  `spellfocus` int(10) unsigned NOT NULL DEFAULT '0',
  `sound1` int(10) unsigned NOT NULL DEFAULT '0',
  `sound2` int(10) unsigned NOT NULL DEFAULT '0',
  `sound3` int(10) unsigned NOT NULL DEFAULT '0',
  `sound4` int(10) unsigned NOT NULL DEFAULT '0',
  `sound5` int(10) unsigned NOT NULL DEFAULT '0',
  `sound6` int(10) unsigned NOT NULL DEFAULT '0',
  `sound7` int(10) unsigned NOT NULL DEFAULT '0',
  `sound8` int(10) unsigned NOT NULL DEFAULT '0',
  `sound9` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown1` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown2` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown3` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown4` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown5` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown6` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown7` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown8` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown9` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown10` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown11` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown12` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown13` int(10) unsigned NOT NULL DEFAULT '0',
  `unknown14` int(10) unsigned NOT NULL DEFAULT '0',
  `Size` float NOT NULL DEFAULT '1',
  `QuestItem1` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestItem2` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestItem3` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestItem4` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestItem5` int(11) unsigned NOT NULL DEFAULT '0',
  `QuestItem6` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Gameobject System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_names`
--

LOCK TABLES `gameobject_names` WRITE;
/*!40000 ALTER TABLE `gameobject_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_names_localized`
--

DROP TABLE IF EXISTS `gameobject_names_localized`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_names_localized` (
  `entry` int(30) NOT NULL,
  `language_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `name` varchar(100) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`entry`,`language_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_names_localized`
--

LOCK TABLES `gameobject_names_localized` WRITE;
/*!40000 ALTER TABLE `gameobject_names_localized` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_names_localized` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_quest_finisher`
--

DROP TABLE IF EXISTS `gameobject_quest_finisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_quest_finisher` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `quest` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Quest System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_quest_finisher`
--

LOCK TABLES `gameobject_quest_finisher` WRITE;
/*!40000 ALTER TABLE `gameobject_quest_finisher` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_quest_finisher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_quest_item_binding`
--

DROP TABLE IF EXISTS `gameobject_quest_item_binding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_quest_item_binding` (
  `entry` int(11) NOT NULL DEFAULT '0',
  `quest` int(11) NOT NULL DEFAULT '0',
  `item` int(11) NOT NULL DEFAULT '0',
  `item_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`item`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Quest System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_quest_item_binding`
--

LOCK TABLES `gameobject_quest_item_binding` WRITE;
/*!40000 ALTER TABLE `gameobject_quest_item_binding` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_quest_item_binding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_quest_pickup_binding`
--

DROP TABLE IF EXISTS `gameobject_quest_pickup_binding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_quest_pickup_binding` (
  `entry` int(11) NOT NULL DEFAULT '0',
  `quest` int(11) NOT NULL DEFAULT '0',
  `required_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Quest System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_quest_pickup_binding`
--

LOCK TABLES `gameobject_quest_pickup_binding` WRITE;
/*!40000 ALTER TABLE `gameobject_quest_pickup_binding` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_quest_pickup_binding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_quest_starter`
--

DROP TABLE IF EXISTS `gameobject_quest_starter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_quest_starter` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `quest` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Quest System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_quest_starter`
--

LOCK TABLES `gameobject_quest_starter` WRITE;
/*!40000 ALTER TABLE `gameobject_quest_starter` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_quest_starter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_spawns`
--

DROP TABLE IF EXISTS `gameobject_spawns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_spawns` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Entry` int(10) unsigned NOT NULL DEFAULT '0',
  `map` int(10) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `Facing` float NOT NULL DEFAULT '0',
  `orientation1` float NOT NULL DEFAULT '0',
  `orientation2` float NOT NULL DEFAULT '0',
  `orientation3` float NOT NULL DEFAULT '0',
  `orientation4` float NOT NULL DEFAULT '0',
  `State` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `Faction` int(10) unsigned NOT NULL DEFAULT '0',
  `Scale` float NOT NULL DEFAULT '0',
  `stateNpcLink` int(10) unsigned NOT NULL DEFAULT '0',
  `phase` int(10) unsigned NOT NULL DEFAULT '1',
  `overrides` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=cp1251 COLLATE=cp1251_general_cs PACK_KEYS=0 ROW_FORMAT=FIXED COMMENT='Spawn System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_spawns`
--

LOCK TABLES `gameobject_spawns` WRITE;
/*!40000 ALTER TABLE `gameobject_spawns` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_spawns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_staticspawns`
--

DROP TABLE IF EXISTS `gameobject_staticspawns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_staticspawns` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `entry` int(30) NOT NULL,
  `map` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `facing` float NOT NULL,
  `o` float NOT NULL,
  `o1` float NOT NULL,
  `o2` float NOT NULL,
  `o3` float NOT NULL,
  `state` int(11) NOT NULL DEFAULT '0',
  `flags` int(30) NOT NULL DEFAULT '0',
  `faction` int(11) NOT NULL DEFAULT '0',
  `scale` float NOT NULL,
  `respawnNpcLink` int(11) NOT NULL DEFAULT '0',
  `phase` int(10) unsigned NOT NULL DEFAULT '1',
  `overrides` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Spawn System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_staticspawns`
--

LOCK TABLES `gameobject_staticspawns` WRITE;
/*!40000 ALTER TABLE `gameobject_staticspawns` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_staticspawns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gameobject_teleports`
--

DROP TABLE IF EXISTS `gameobject_teleports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gameobject_teleports` (
  `entry` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mapid` int(10) unsigned NOT NULL,
  `x_pos` float NOT NULL,
  `y_pos` float NOT NULL,
  `z_pos` float NOT NULL,
  `orientation` float NOT NULL,
  `required_level` int(10) unsigned NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC COMMENT='Optional table to create custom portals';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gameobject_teleports`
--

LOCK TABLES `gameobject_teleports` WRITE;
/*!40000 ALTER TABLE `gameobject_teleports` DISABLE KEYS */;
/*!40000 ALTER TABLE `gameobject_teleports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graveyards`
--

DROP TABLE IF EXISTS `graveyards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graveyards` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `zoneid` int(10) unsigned NOT NULL DEFAULT '0',
  `adjacentzoneid` int(10) unsigned NOT NULL DEFAULT '0',
  `mapid` int(10) unsigned NOT NULL DEFAULT '0',
  `faction` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Graveyard System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graveyards`
--

LOCK TABLES `graveyards` WRITE;
/*!40000 ALTER TABLE `graveyards` DISABLE KEYS */;
/*!40000 ALTER TABLE `graveyards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instance_bosses`
--

DROP TABLE IF EXISTS `instance_bosses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `instance_bosses` (
  `mapid` int(11) unsigned NOT NULL DEFAULT '0',
  `creatureid` int(11) unsigned NOT NULL DEFAULT '0',
  `trash` text NOT NULL,
  `trash_respawn_override` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mapid`,`creatureid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Instance Boss Definitions';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instance_bosses`
--

LOCK TABLES `instance_bosses` WRITE;
/*!40000 ALTER TABLE `instance_bosses` DISABLE KEYS */;
/*!40000 ALTER TABLE `instance_bosses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_quest_association`
--

DROP TABLE IF EXISTS `item_quest_association`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_quest_association` (
  `item` int(11) NOT NULL DEFAULT '0',
  `quest` int(11) NOT NULL DEFAULT '0',
  `item_count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`item`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Quest System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_quest_association`
--

LOCK TABLES `item_quest_association` WRITE;
/*!40000 ALTER TABLE `item_quest_association` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_quest_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_randomprop_groups`
--

DROP TABLE IF EXISTS `item_randomprop_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_randomprop_groups` (
  `entry_id` int(30) NOT NULL,
  `randomprops_entryid` int(30) NOT NULL,
  `chance` float NOT NULL,
  PRIMARY KEY (`entry_id`,`randomprops_entryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_randomprop_groups`
--

LOCK TABLES `item_randomprop_groups` WRITE;
/*!40000 ALTER TABLE `item_randomprop_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_randomprop_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_randomsuffix_groups`
--

DROP TABLE IF EXISTS `item_randomsuffix_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `item_randomsuffix_groups` (
  `entry_id` int(30) NOT NULL,
  `randomsuffix_entryid` int(30) NOT NULL,
  `chance` float NOT NULL,
  PRIMARY KEY (`entry_id`,`randomsuffix_entryid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Item System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_randomsuffix_groups`
--

LOCK TABLES `item_randomsuffix_groups` WRITE;
/*!40000 ALTER TABLE `item_randomsuffix_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_randomsuffix_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemnames`
--

DROP TABLE IF EXISTS `itemnames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemnames` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `slotid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemnames`
--

LOCK TABLES `itemnames` WRITE;
/*!40000 ALTER TABLE `itemnames` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemnames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itempages`
--

DROP TABLE IF EXISTS `itempages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itempages` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `text` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `next_page` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Item System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itempages`
--

LOCK TABLES `itempages` WRITE;
/*!40000 ALTER TABLE `itempages` DISABLE KEYS */;
/*!40000 ALTER TABLE `itempages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itempages_localized`
--

DROP TABLE IF EXISTS `itempages_localized`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itempages_localized` (
  `entry` int(30) NOT NULL,
  `language_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `text` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`entry`,`language_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itempages_localized`
--

LOCK TABLES `itempages_localized` WRITE;
/*!40000 ALTER TABLE `itempages_localized` DISABLE KEYS */;
/*!40000 ALTER TABLE `itempages_localized` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itempetfood`
--

DROP TABLE IF EXISTS `itempetfood`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itempetfood` (
  `entry` int(11) NOT NULL,
  `food_type` int(11) NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itempetfood`
--

LOCK TABLES `itempetfood` WRITE;
/*!40000 ALTER TABLE `itempetfood` DISABLE KEYS */;
/*!40000 ALTER TABLE `itempetfood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `entry` int(255) unsigned NOT NULL DEFAULT '0',
  `class` int(30) NOT NULL DEFAULT '0',
  `subclass` int(30) NOT NULL DEFAULT '0',
  `field4` int(10) NOT NULL DEFAULT '-1',
  `name1` varchar(255) NOT NULL,
  `displayid` int(70) unsigned NOT NULL DEFAULT '0',
  `quality` int(30) NOT NULL DEFAULT '0',
  `flags` int(30) NOT NULL DEFAULT '0',
  `flags2` int(11) unsigned NOT NULL DEFAULT '0',
  `buyprice` int(30) NOT NULL DEFAULT '0',
  `sellprice` int(30) NOT NULL DEFAULT '0',
  `inventorytype` int(30) NOT NULL DEFAULT '0',
  `allowableclass` int(30) NOT NULL DEFAULT '0',
  `allowablerace` int(30) NOT NULL DEFAULT '0',
  `itemlevel` int(30) NOT NULL DEFAULT '0',
  `requiredlevel` int(30) NOT NULL DEFAULT '0',
  `RequiredSkill` int(30) NOT NULL DEFAULT '0',
  `RequiredSkillRank` int(30) NOT NULL DEFAULT '0',
  `RequiredSpell` int(30) NOT NULL DEFAULT '0',
  `RequiredPlayerRank1` int(30) NOT NULL DEFAULT '0',
  `RequiredPlayerRank2` int(30) NOT NULL DEFAULT '0',
  `RequiredFaction` int(30) NOT NULL DEFAULT '0',
  `RequiredFactionStanding` int(30) NOT NULL DEFAULT '0',
  `Unique` int(30) NOT NULL DEFAULT '0',
  `maxcount` int(30) NOT NULL DEFAULT '0',
  `ContainerSlots` int(30) NOT NULL DEFAULT '0',
  `itemstatscount` int(10) unsigned NOT NULL DEFAULT '10',
  `stat_type1` int(30) NOT NULL DEFAULT '0',
  `stat_value1` int(30) NOT NULL DEFAULT '0',
  `stat_type2` int(30) NOT NULL DEFAULT '0',
  `stat_value2` int(30) NOT NULL DEFAULT '0',
  `stat_type3` int(30) NOT NULL DEFAULT '0',
  `stat_value3` int(30) NOT NULL DEFAULT '0',
  `stat_type4` int(30) NOT NULL DEFAULT '0',
  `stat_value4` int(30) NOT NULL DEFAULT '0',
  `stat_type5` int(30) NOT NULL DEFAULT '0',
  `stat_value5` int(30) NOT NULL DEFAULT '0',
  `stat_type6` int(30) NOT NULL DEFAULT '0',
  `stat_value6` int(30) NOT NULL DEFAULT '0',
  `stat_type7` int(30) NOT NULL DEFAULT '0',
  `stat_value7` int(30) NOT NULL DEFAULT '0',
  `stat_type8` int(30) NOT NULL DEFAULT '0',
  `stat_value8` int(30) NOT NULL DEFAULT '0',
  `stat_type9` int(30) NOT NULL DEFAULT '0',
  `stat_value9` int(30) NOT NULL DEFAULT '0',
  `stat_type10` int(30) NOT NULL DEFAULT '0',
  `stat_value10` int(30) NOT NULL DEFAULT '0',
  `ScaledStatsDistributionId` int(32) unsigned NOT NULL DEFAULT '0',
  `ScaledStatsDistributionFlags` int(32) unsigned NOT NULL DEFAULT '0',
  `dmg_min1` float NOT NULL DEFAULT '0',
  `dmg_max1` float NOT NULL DEFAULT '0',
  `dmg_type1` int(30) NOT NULL DEFAULT '0',
  `dmg_min2` float NOT NULL DEFAULT '0',
  `dmg_max2` float NOT NULL DEFAULT '0',
  `dmg_type2` int(30) NOT NULL DEFAULT '0',
  `armor` int(30) NOT NULL DEFAULT '0',
  `holy_res` int(30) NOT NULL DEFAULT '0',
  `fire_res` int(30) NOT NULL DEFAULT '0',
  `nature_res` int(30) NOT NULL DEFAULT '0',
  `frost_res` int(30) NOT NULL DEFAULT '0',
  `shadow_res` int(30) NOT NULL DEFAULT '0',
  `arcane_res` int(30) NOT NULL DEFAULT '0',
  `delay` int(30) NOT NULL DEFAULT '0',
  `ammo_type` int(30) NOT NULL DEFAULT '0',
  `range` float NOT NULL DEFAULT '0',
  `spellid_1` int(30) NOT NULL DEFAULT '0',
  `spelltrigger_1` int(30) NOT NULL DEFAULT '0',
  `spellcharges_1` int(30) NOT NULL DEFAULT '0',
  `spellcooldown_1` int(30) NOT NULL DEFAULT '0',
  `spellcategory_1` int(30) NOT NULL DEFAULT '0',
  `spellcategorycooldown_1` int(30) NOT NULL DEFAULT '0',
  `spellid_2` int(30) NOT NULL DEFAULT '0',
  `spelltrigger_2` int(30) NOT NULL DEFAULT '0',
  `spellcharges_2` int(30) NOT NULL DEFAULT '0',
  `spellcooldown_2` int(30) NOT NULL DEFAULT '0',
  `spellcategory_2` int(30) NOT NULL DEFAULT '0',
  `spellcategorycooldown_2` int(30) NOT NULL DEFAULT '0',
  `spellid_3` int(30) NOT NULL DEFAULT '0',
  `spelltrigger_3` int(30) NOT NULL DEFAULT '0',
  `spellcharges_3` int(30) NOT NULL DEFAULT '0',
  `spellcooldown_3` int(30) NOT NULL DEFAULT '0',
  `spellcategory_3` int(30) NOT NULL DEFAULT '0',
  `spellcategorycooldown_3` int(30) NOT NULL DEFAULT '0',
  `spellid_4` int(30) NOT NULL DEFAULT '0',
  `spelltrigger_4` int(30) NOT NULL DEFAULT '0',
  `spellcharges_4` int(30) NOT NULL DEFAULT '0',
  `spellcooldown_4` int(30) NOT NULL DEFAULT '0',
  `spellcategory_4` int(30) NOT NULL DEFAULT '0',
  `spellcategorycooldown_4` int(30) NOT NULL DEFAULT '0',
  `spellid_5` int(30) NOT NULL DEFAULT '0',
  `spelltrigger_5` int(30) NOT NULL DEFAULT '0',
  `spellcharges_5` int(30) NOT NULL DEFAULT '0',
  `spellcooldown_5` int(30) NOT NULL DEFAULT '0',
  `spellcategory_5` int(30) NOT NULL DEFAULT '0',
  `spellcategorycooldown_5` int(30) NOT NULL DEFAULT '0',
  `bonding` int(30) NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL DEFAULT '',
  `page_id` int(30) NOT NULL DEFAULT '0',
  `page_language` int(30) NOT NULL DEFAULT '0',
  `page_material` int(30) NOT NULL DEFAULT '0',
  `quest_id` int(30) NOT NULL DEFAULT '0',
  `lock_id` int(30) NOT NULL DEFAULT '0',
  `lock_material` int(30) NOT NULL DEFAULT '0',
  `sheathID` int(30) NOT NULL DEFAULT '0',
  `randomprop` int(30) NOT NULL DEFAULT '0',
  `randomsuffix` int(30) NOT NULL DEFAULT '0',
  `block` int(30) NOT NULL DEFAULT '0',
  `itemset` int(30) NOT NULL DEFAULT '0',
  `MaxDurability` int(30) NOT NULL DEFAULT '0',
  `ZoneNameID` int(30) NOT NULL DEFAULT '0',
  `mapid` int(30) DEFAULT NULL,
  `bagfamily` int(30) NOT NULL DEFAULT '0',
  `TotemCategory` int(30) DEFAULT NULL,
  `socket_color_1` int(30) DEFAULT NULL,
  `unk201_3` int(30) NOT NULL DEFAULT '0',
  `socket_color_2` int(30) DEFAULT NULL,
  `unk201_5` int(30) NOT NULL DEFAULT '0',
  `socket_color_3` int(30) DEFAULT NULL,
  `unk201_7` int(30) NOT NULL DEFAULT '0',
  `socket_bonus` int(30) DEFAULT NULL,
  `GemProperties` int(30) DEFAULT NULL,
  `ReqDisenchantSkill` int(30) NOT NULL DEFAULT '-1',
  `ArmorDamageModifier` int(30) NOT NULL DEFAULT '0',
  `existingduration` int(10) unsigned NOT NULL DEFAULT '0',
  `ItemLimitCategoryId` int(32) unsigned NOT NULL DEFAULT '0',
  `HolidayId` int(32) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Item System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_extendedcost`
--

DROP TABLE IF EXISTS `items_extendedcost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items_extendedcost` (
  `ItemId` int(30) NOT NULL,
  `CostId` int(30) NOT NULL,
  PRIMARY KEY (`ItemId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_extendedcost`
--

LOCK TABLES `items_extendedcost` WRITE;
/*!40000 ALTER TABLE `items_extendedcost` DISABLE KEYS */;
/*!40000 ALTER TABLE `items_extendedcost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_localized`
--

DROP TABLE IF EXISTS `items_localized`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items_localized` (
  `entry` int(30) NOT NULL,
  `language_code` varchar(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`entry`,`language_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_localized`
--

LOCK TABLES `items_localized` WRITE;
/*!40000 ALTER TABLE `items_localized` DISABLE KEYS */;
/*!40000 ALTER TABLE `items_localized` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loot_creatures`
--

DROP TABLE IF EXISTS `loot_creatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loot_creatures` (
  `entryid` int(11) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `normal10percentchance` float NOT NULL DEFAULT '0',
  `normal25percentchance` float NOT NULL DEFAULT '0',
  `heroic10percentchance` float NOT NULL DEFAULT '0',
  `heroic25percentchance` float NOT NULL DEFAULT '0',
  `mincount` int(30) unsigned NOT NULL DEFAULT '1',
  `maxcount` int(30) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`entryid`,`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 PACK_KEYS=0 ROW_FORMAT=FIXED COMMENT='Loot System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loot_creatures`
--

LOCK TABLES `loot_creatures` WRITE;
/*!40000 ALTER TABLE `loot_creatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `loot_creatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loot_fishing`
--

DROP TABLE IF EXISTS `loot_fishing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loot_fishing` (
  `entryid` int(11) unsigned NOT NULL DEFAULT '0',
  `itemid` int(11) unsigned NOT NULL DEFAULT '0',
  `normal10percentchance` float NOT NULL DEFAULT '0',
  `normal25percentchance` float NOT NULL DEFAULT '0',
  `heroic10percentchance` float NOT NULL DEFAULT '0',
  `heroic25percentchance` float NOT NULL DEFAULT '0',
  `mincount` int(30) unsigned NOT NULL DEFAULT '1',
  `maxcount` int(30) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`itemid`,`entryid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Loot System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loot_fishing`
--

LOCK TABLES `loot_fishing` WRITE;
/*!40000 ALTER TABLE `loot_fishing` DISABLE KEYS */;
/*!40000 ALTER TABLE `loot_fishing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loot_gameobjects`
--

DROP TABLE IF EXISTS `loot_gameobjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loot_gameobjects` (
  `entryid` int(11) unsigned NOT NULL DEFAULT '0',
  `itemid` int(11) unsigned NOT NULL DEFAULT '0',
  `normal10percentchance` float NOT NULL DEFAULT '0',
  `normal25percentchance` float NOT NULL DEFAULT '0',
  `heroic10percentchance` float NOT NULL DEFAULT '0',
  `heroic25percentchance` float NOT NULL DEFAULT '0',
  `mincount` int(30) unsigned NOT NULL DEFAULT '1',
  `maxcount` int(30) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`entryid`,`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Loot System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loot_gameobjects`
--

LOCK TABLES `loot_gameobjects` WRITE;
/*!40000 ALTER TABLE `loot_gameobjects` DISABLE KEYS */;
/*!40000 ALTER TABLE `loot_gameobjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loot_items`
--

DROP TABLE IF EXISTS `loot_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loot_items` (
  `entryid` int(11) unsigned NOT NULL DEFAULT '0',
  `itemid` int(11) unsigned NOT NULL DEFAULT '25',
  `normal10percentchance` float NOT NULL DEFAULT '0',
  `normal25percentchance` float NOT NULL DEFAULT '0',
  `heroic10percentchance` float NOT NULL DEFAULT '0',
  `heroic25percentchance` float NOT NULL DEFAULT '0',
  `mincount` int(30) unsigned NOT NULL DEFAULT '1',
  `maxcount` int(30) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`entryid`,`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Loot System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loot_items`
--

LOCK TABLES `loot_items` WRITE;
/*!40000 ALTER TABLE `loot_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `loot_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loot_pickpocketing`
--

DROP TABLE IF EXISTS `loot_pickpocketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loot_pickpocketing` (
  `entryid` int(11) unsigned NOT NULL DEFAULT '0',
  `itemid` int(11) unsigned NOT NULL DEFAULT '25',
  `normal10percentchance` float NOT NULL DEFAULT '0',
  `normal25percentchance` float NOT NULL DEFAULT '0',
  `heroic10percentchance` float NOT NULL DEFAULT '0',
  `heroic25percentchance` float NOT NULL DEFAULT '0',
  `mincount` int(30) unsigned NOT NULL DEFAULT '1',
  `maxcount` int(30) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`entryid`,`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Loot System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loot_pickpocketing`
--

LOCK TABLES `loot_pickpocketing` WRITE;
/*!40000 ALTER TABLE `loot_pickpocketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `loot_pickpocketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loot_skinning`
--

DROP TABLE IF EXISTS `loot_skinning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loot_skinning` (
  `entryid` int(10) unsigned NOT NULL DEFAULT '0',
  `itemid` int(10) unsigned NOT NULL DEFAULT '0',
  `normal10percentchance` float NOT NULL DEFAULT '0',
  `normal25percentchance` float NOT NULL DEFAULT '0',
  `heroic10percentchance` float NOT NULL DEFAULT '0',
  `heroic25percentchance` float NOT NULL DEFAULT '0',
  `mincount` int(30) unsigned NOT NULL DEFAULT '1',
  `maxcount` int(30) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`itemid`,`entryid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Loot System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loot_skinning`
--

LOCK TABLES `loot_skinning` WRITE;
/*!40000 ALTER TABLE `loot_skinning` DISABLE KEYS */;
/*!40000 ALTER TABLE `loot_skinning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `map_checkpoint`
--

DROP TABLE IF EXISTS `map_checkpoint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `map_checkpoint` (
  `entry` int(30) NOT NULL,
  `prereq_checkpoint_id` int(30) NOT NULL,
  `creature_id` int(30) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Map System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `map_checkpoint`
--

LOCK TABLES `map_checkpoint` WRITE;
/*!40000 ALTER TABLE `map_checkpoint` DISABLE KEYS */;
/*!40000 ALTER TABLE `map_checkpoint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc_gossip_textid`
--

DROP TABLE IF EXISTS `npc_gossip_textid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npc_gossip_textid` (
  `creatureid` int(10) unsigned NOT NULL DEFAULT '0',
  `textid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`creatureid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='NPC System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npc_gossip_textid`
--

LOCK TABLES `npc_gossip_textid` WRITE;
/*!40000 ALTER TABLE `npc_gossip_textid` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_gossip_textid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc_monstersay`
--

DROP TABLE IF EXISTS `npc_monstersay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npc_monstersay` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `event` int(10) unsigned NOT NULL DEFAULT '0',
  `chance` float NOT NULL DEFAULT '0',
  `language` int(10) unsigned NOT NULL DEFAULT '0',
  `type` int(10) unsigned NOT NULL DEFAULT '0',
  `monstername` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `text0` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `text1` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `text2` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `text3` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `text4` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`entry`,`event`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='NPC System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npc_monstersay`
--

LOCK TABLES `npc_monstersay` WRITE;
/*!40000 ALTER TABLE `npc_monstersay` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_monstersay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc_text`
--

DROP TABLE IF EXISTS `npc_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npc_text` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `prob0` float NOT NULL DEFAULT '0',
  `text0_0` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `text0_1` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang0` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay0_0` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote0_1` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay0_2` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote0_3` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay0_4` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote0_5` int(10) unsigned NOT NULL DEFAULT '0',
  `prob1` float NOT NULL DEFAULT '0',
  `text1_0` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `text1_1` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang1` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay1_0` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote1_1` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay1_2` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote1_3` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay1_4` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote1_5` int(10) unsigned NOT NULL DEFAULT '0',
  `prob2` float NOT NULL DEFAULT '0',
  `text2_0` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `text2_1` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang2` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay2_0` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote2_1` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay2_2` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote2_3` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay2_4` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote2_5` int(10) unsigned NOT NULL DEFAULT '0',
  `prob3` float NOT NULL DEFAULT '0',
  `text3_0` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `text3_1` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang3` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay3_0` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote3_1` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay3_2` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote3_3` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay3_4` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote3_5` int(10) unsigned NOT NULL DEFAULT '0',
  `prob4` float NOT NULL DEFAULT '0',
  `text4_0` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `text4_1` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang4` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay4_0` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote4_1` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay4_2` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote4_3` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay4_4` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote4_5` int(10) unsigned NOT NULL DEFAULT '0',
  `prob5` float NOT NULL DEFAULT '0',
  `text5_0` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `text5_1` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang5` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay5_0` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote5_1` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay5_2` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote5_3` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay5_4` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote5_5` int(10) unsigned NOT NULL DEFAULT '0',
  `prob6` float NOT NULL DEFAULT '0',
  `text6_0` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `text6_1` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang6` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay6_0` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote6_1` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay6_2` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote6_3` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay6_4` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote6_5` int(10) unsigned NOT NULL DEFAULT '0',
  `prob7` float NOT NULL DEFAULT '0',
  `text7_0` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `text7_1` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `lang7` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay7_0` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote7_1` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay7_2` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote7_3` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteDelay7_4` int(10) unsigned NOT NULL DEFAULT '0',
  `Emote7_5` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='NPC System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npc_text`
--

LOCK TABLES `npc_text` WRITE;
/*!40000 ALTER TABLE `npc_text` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `npc_text_localized`
--

DROP TABLE IF EXISTS `npc_text_localized`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `npc_text_localized` (
  `entry` int(30) NOT NULL,
  `language_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `text0` varchar(200) CHARACTER SET latin1 NOT NULL,
  `text0_1` varchar(200) CHARACTER SET latin1 NOT NULL,
  `text1` varchar(200) CHARACTER SET latin1 NOT NULL,
  `text1_1` varchar(200) CHARACTER SET latin1 NOT NULL,
  `text2` varchar(200) CHARACTER SET latin1 NOT NULL,
  `text2_1` varchar(200) CHARACTER SET latin1 NOT NULL,
  `text3` varchar(200) CHARACTER SET latin1 NOT NULL,
  `text3_1` varchar(200) CHARACTER SET latin1 NOT NULL,
  `text4` varchar(200) CHARACTER SET latin1 NOT NULL,
  `text4_1` varchar(200) CHARACTER SET latin1 NOT NULL,
  `text5` varchar(200) CHARACTER SET latin1 NOT NULL,
  `text5_1` varchar(200) CHARACTER SET latin1 NOT NULL,
  `text6` varchar(200) CHARACTER SET latin1 NOT NULL,
  `text6_1` varchar(200) CHARACTER SET latin1 NOT NULL,
  `text7` varchar(200) CHARACTER SET latin1 NOT NULL,
  `text7_1` varchar(200) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`entry`,`language_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `npc_text_localized`
--

LOCK TABLES `npc_text_localized` WRITE;
/*!40000 ALTER TABLE `npc_text_localized` DISABLE KEYS */;
/*!40000 ALTER TABLE `npc_text_localized` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `petdefaultspells`
--

DROP TABLE IF EXISTS `petdefaultspells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `petdefaultspells` (
  `entry` int(11) NOT NULL DEFAULT '0',
  `spell` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Pet System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `petdefaultspells`
--

LOCK TABLES `petdefaultspells` WRITE;
/*!40000 ALTER TABLE `petdefaultspells` DISABLE KEYS */;
/*!40000 ALTER TABLE `petdefaultspells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercreateinfo`
--

DROP TABLE IF EXISTS `playercreateinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playercreateinfo` (
  `Index` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `factiontemplate` int(10) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mapID` int(10) unsigned NOT NULL DEFAULT '0',
  `zoneID` int(10) unsigned NOT NULL DEFAULT '0',
  `positionX` float NOT NULL DEFAULT '0',
  `positionY` float NOT NULL DEFAULT '0',
  `positionZ` float NOT NULL DEFAULT '0',
  `displayID` smallint(5) unsigned NOT NULL DEFAULT '0',
  `BaseStrength` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BaseAgility` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BaseStamina` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BaseIntellect` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BaseSpirit` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `BaseHealth` int(10) unsigned NOT NULL DEFAULT '0',
  `BaseMana` int(10) unsigned NOT NULL DEFAULT '0',
  `BaseRage` int(10) unsigned NOT NULL DEFAULT '0',
  `BaseFocus` int(10) unsigned NOT NULL DEFAULT '0',
  `BaseEnergy` int(10) unsigned NOT NULL DEFAULT '0',
  `attackpower` int(10) unsigned NOT NULL DEFAULT '0',
  `mindmg` float NOT NULL DEFAULT '0',
  `maxdmg` float NOT NULL DEFAULT '0',
  `introid` int(10) unsigned NOT NULL DEFAULT '0',
  `taximask` tinytext,
  PRIMARY KEY (`Index`)
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=latin1 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercreateinfo`
--

LOCK TABLES `playercreateinfo` WRITE;
/*!40000 ALTER TABLE `playercreateinfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `playercreateinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercreateinfo_bars`
--

DROP TABLE IF EXISTS `playercreateinfo_bars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playercreateinfo_bars` (
  `race` tinyint(3) unsigned DEFAULT NULL,
  `class` tinyint(3) unsigned DEFAULT NULL,
  `button` int(10) unsigned DEFAULT NULL,
  `action` int(10) unsigned DEFAULT NULL,
  `type` int(10) unsigned DEFAULT NULL,
  `misc` int(10) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercreateinfo_bars`
--

LOCK TABLES `playercreateinfo_bars` WRITE;
/*!40000 ALTER TABLE `playercreateinfo_bars` DISABLE KEYS */;
/*!40000 ALTER TABLE `playercreateinfo_bars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercreateinfo_items`
--

DROP TABLE IF EXISTS `playercreateinfo_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playercreateinfo_items` (
  `indexid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `protoid` int(10) unsigned NOT NULL DEFAULT '0',
  `slotid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amount` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`indexid`,`protoid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercreateinfo_items`
--

LOCK TABLES `playercreateinfo_items` WRITE;
/*!40000 ALTER TABLE `playercreateinfo_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `playercreateinfo_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercreateinfo_skills`
--

DROP TABLE IF EXISTS `playercreateinfo_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playercreateinfo_skills` (
  `indexid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `skillid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlevel` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`indexid`,`skillid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercreateinfo_skills`
--

LOCK TABLES `playercreateinfo_skills` WRITE;
/*!40000 ALTER TABLE `playercreateinfo_skills` DISABLE KEYS */;
/*!40000 ALTER TABLE `playercreateinfo_skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playercreateinfo_spells`
--

DROP TABLE IF EXISTS `playercreateinfo_spells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playercreateinfo_spells` (
  `indexid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `spellid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`indexid`,`spellid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Player System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercreateinfo_spells`
--

LOCK TABLES `playercreateinfo_spells` WRITE;
/*!40000 ALTER TABLE `playercreateinfo_spells` DISABLE KEYS */;
/*!40000 ALTER TABLE `playercreateinfo_spells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professiondiscoveries`
--

DROP TABLE IF EXISTS `professiondiscoveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professiondiscoveries` (
  `SpellId` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellToDiscover` int(10) unsigned NOT NULL DEFAULT '0',
  `SkillValue` int(10) unsigned NOT NULL DEFAULT '0',
  `Chance` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`SpellId`,`SpellToDiscover`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professiondiscoveries`
--

LOCK TABLES `professiondiscoveries` WRITE;
/*!40000 ALTER TABLE `professiondiscoveries` DISABLE KEYS */;
/*!40000 ALTER TABLE `professiondiscoveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_poi`
--

DROP TABLE IF EXISTS `quest_poi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quest_poi` (
  `questId` int(10) unsigned NOT NULL DEFAULT '0',
  `poiId` int(10) unsigned NOT NULL DEFAULT '0',
  `objIndex` int(10) NOT NULL DEFAULT '0',
  `mapId` int(10) unsigned NOT NULL DEFAULT '0',
  `mapAreaId` int(10) unsigned NOT NULL DEFAULT '0',
  `floorId` int(10) unsigned NOT NULL DEFAULT '0',
  `unk3` int(10) unsigned NOT NULL DEFAULT '0',
  `unk4` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `questId` (`questId`,`poiId`),
  KEY `id` (`poiId`,`questId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_poi`
--

LOCK TABLES `quest_poi` WRITE;
/*!40000 ALTER TABLE `quest_poi` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_poi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest_poi_points`
--

DROP TABLE IF EXISTS `quest_poi_points`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quest_poi_points` (
  `questId` int(10) unsigned NOT NULL DEFAULT '0',
  `poiId` int(10) unsigned NOT NULL DEFAULT '0',
  `x` int(10) NOT NULL DEFAULT '0',
  `y` int(10) NOT NULL DEFAULT '0',
  KEY `questId_id` (`questId`,`poiId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest_poi_points`
--

LOCK TABLES `quest_poi_points` WRITE;
/*!40000 ALTER TABLE `quest_poi_points` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest_poi_points` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quests`
--

DROP TABLE IF EXISTS `quests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quests` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `ZoneId` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `MinLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `questlevel` int(10) unsigned NOT NULL DEFAULT '0',
  `Type` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredRaces` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredClass` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredTradeskill` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredTradeskillValue` int(5) unsigned NOT NULL DEFAULT '0',
  `RequiredRepFaction` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredRepValue` int(10) unsigned NOT NULL DEFAULT '0',
  `LimitTime` int(10) unsigned NOT NULL DEFAULT '0',
  `SpecialFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `PrevQuestId` int(10) unsigned NOT NULL DEFAULT '0',
  `NextQuestId` int(10) unsigned NOT NULL DEFAULT '0',
  `srcItem` int(10) unsigned NOT NULL DEFAULT '0',
  `SrcItemCount` int(10) unsigned NOT NULL DEFAULT '0',
  `Title` char(255) NOT NULL,
  `Details` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Objectives` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `CompletionText` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IncompleteText` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `EventObjective` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ObjectivesCompleteText` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ObjectiveText1` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ObjectiveText2` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ObjectiveText3` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ObjectiveText4` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ReqItemId1` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqItemId2` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqItemId3` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqItemId4` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqItemId5` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqItemId6` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqItemCount1` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqItemCount2` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqItemCount3` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqItemCount4` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqItemCount5` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqItemCount6` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqKillMobOrGOId1` int(10) NOT NULL DEFAULT '0',
  `ReqKillMobOrGOId2` int(10) NOT NULL DEFAULT '0',
  `ReqKillMobOrGOId3` int(10) NOT NULL DEFAULT '0',
  `ReqKillMobOrGOId4` int(10) NOT NULL DEFAULT '0',
  `ReqKillMobOrGOCount1` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqKillMobOrGOCount2` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqKillMobOrGOCount3` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqKillMobOrGOCount4` int(10) unsigned NOT NULL DEFAULT '0',
  `ReqCastSpellId1` int(11) NOT NULL DEFAULT '0',
  `ReqCastSpellId2` int(11) NOT NULL DEFAULT '0',
  `ReqCastSpellId3` int(11) NOT NULL DEFAULT '0',
  `ReqCastSpellId4` int(11) NOT NULL DEFAULT '0',
  `ReqEmoteId1` int(10) unsigned DEFAULT '0',
  `ReqEmoteId2` int(10) unsigned DEFAULT '0',
  `ReqEmoteId3` int(10) unsigned DEFAULT '0',
  `ReqEmoteId4` int(10) unsigned DEFAULT '0',
  `RewChoiceItemId1` int(10) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemId2` int(10) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemId3` int(10) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemId4` int(10) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemId5` int(10) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemId6` int(10) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemCount1` int(10) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemCount2` int(10) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemCount3` int(10) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemCount4` int(10) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemCount5` int(10) unsigned NOT NULL DEFAULT '0',
  `RewChoiceItemCount6` int(10) unsigned NOT NULL DEFAULT '0',
  `RewItemId1` int(10) unsigned NOT NULL DEFAULT '0',
  `RewItemId2` int(10) unsigned NOT NULL DEFAULT '0',
  `RewItemId3` int(10) unsigned NOT NULL DEFAULT '0',
  `RewItemId4` int(10) unsigned NOT NULL DEFAULT '0',
  `RewItemCount1` int(10) unsigned NOT NULL DEFAULT '0',
  `RewItemCount2` int(10) unsigned NOT NULL DEFAULT '0',
  `RewItemCount3` int(10) unsigned NOT NULL DEFAULT '0',
  `RewItemCount4` int(10) unsigned NOT NULL DEFAULT '0',
  `RewRepFaction1` int(10) unsigned NOT NULL DEFAULT '0',
  `RewRepFaction2` int(10) unsigned NOT NULL DEFAULT '0',
  `RewRepFaction3` int(10) unsigned NOT NULL DEFAULT '0',
  `RewRepFaction4` int(10) unsigned NOT NULL DEFAULT '0',
  `RewRepFaction5` int(10) unsigned NOT NULL DEFAULT '0',
  `RewRepFaction6` int(10) unsigned NOT NULL DEFAULT '0',
  `RewRepValue1` int(10) NOT NULL DEFAULT '0',
  `RewRepValue2` int(10) NOT NULL DEFAULT '0',
  `RewRepValue3` int(10) unsigned NOT NULL DEFAULT '0',
  `RewRepValue4` int(10) unsigned NOT NULL DEFAULT '0',
  `RewRepValue5` int(10) unsigned NOT NULL DEFAULT '0',
  `RewRepValue6` int(10) unsigned NOT NULL DEFAULT '0',
  `RewRepLimit` int(10) unsigned NOT NULL DEFAULT '0',
  `RewMoney` int(10) NOT NULL DEFAULT '0',
  `RewXP` int(10) unsigned NOT NULL DEFAULT '0',
  `RewSpell` int(10) unsigned NOT NULL DEFAULT '0',
  `CastSpell` int(10) unsigned NOT NULL DEFAULT '0',
  `MailTemplateId` int(10) unsigned NOT NULL DEFAULT '0',
  `MailDelaySecs` int(10) unsigned NOT NULL DEFAULT '0',
  `MailSendItem` int(10) unsigned NOT NULL DEFAULT '0',
  `PointMapId` int(10) unsigned NOT NULL DEFAULT '0',
  `PointX` float NOT NULL DEFAULT '0',
  `PointY` float NOT NULL DEFAULT '0',
  `PointOpt` int(10) unsigned NOT NULL DEFAULT '0',
  `RewardMoneyAtMaxLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `ExploreTrigger1` int(10) unsigned NOT NULL DEFAULT '0',
  `ExploreTrigger2` int(10) unsigned NOT NULL DEFAULT '0',
  `ExploreTrigger3` int(10) unsigned NOT NULL DEFAULT '0',
  `ExploreTrigger4` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredOneOfQuest` longtext NOT NULL,
  `RequiredQuest1` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredQuest2` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredQuest3` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredQuest4` int(10) unsigned NOT NULL DEFAULT '0',
  `RemoveQuests` longtext NOT NULL,
  `ReceiveItemId1` int(10) unsigned NOT NULL DEFAULT '0',
  `ReceiveItemId2` int(10) unsigned NOT NULL DEFAULT '0',
  `ReceiveItemId3` int(10) unsigned NOT NULL DEFAULT '0',
  `ReceiveItemId4` int(10) unsigned NOT NULL DEFAULT '0',
  `ReceiveItemCount1` int(10) unsigned NOT NULL DEFAULT '0',
  `ReceiveItemCount2` int(10) unsigned NOT NULL DEFAULT '0',
  `ReceiveItemCount3` int(10) unsigned NOT NULL DEFAULT '0',
  `ReceiveItemCount4` int(10) unsigned NOT NULL DEFAULT '0',
  `IsRepeatable` int(11) NOT NULL DEFAULT '0',
  `bonushonor` int(10) unsigned NOT NULL DEFAULT '0',
  `bonusarenapoints` int(10) unsigned NOT NULL DEFAULT '0',
  `rewardtitleid` int(10) unsigned NOT NULL DEFAULT '0',
  `rewardtalents` int(10) unsigned NOT NULL DEFAULT '0',
  `suggestedplayers` int(10) unsigned NOT NULL DEFAULT '0',
  `detailemotecount` int(10) unsigned NOT NULL DEFAULT '0',
  `detailemote1` int(10) unsigned NOT NULL DEFAULT '0',
  `detailemote2` int(10) unsigned NOT NULL DEFAULT '0',
  `detailemote3` int(10) unsigned NOT NULL DEFAULT '0',
  `detailemote4` int(10) unsigned NOT NULL DEFAULT '0',
  `detailemotedelay1` int(10) unsigned NOT NULL DEFAULT '0',
  `detailemotedelay2` int(10) unsigned NOT NULL DEFAULT '0',
  `detailemotedelay3` int(10) unsigned NOT NULL DEFAULT '0',
  `detailemotedelay4` int(10) unsigned NOT NULL DEFAULT '0',
  `completionemotecnt` int(10) unsigned NOT NULL DEFAULT '0',
  `completionemote1` int(10) unsigned NOT NULL DEFAULT '0',
  `completionemote2` int(10) unsigned NOT NULL DEFAULT '0',
  `completionemote3` int(10) unsigned NOT NULL DEFAULT '0',
  `completionemote4` int(10) unsigned NOT NULL DEFAULT '0',
  `completionemotedelay1` int(10) unsigned NOT NULL DEFAULT '0',
  `completionemotedelay2` int(10) unsigned NOT NULL DEFAULT '0',
  `completionemotedelay3` int(10) unsigned NOT NULL DEFAULT '0',
  `completionemotedelay4` int(10) unsigned NOT NULL DEFAULT '0',
  `completeemote` int(10) unsigned NOT NULL DEFAULT '0',
  `incompleteemote` int(10) unsigned NOT NULL DEFAULT '0',
  `iscompletedbyspelleffect` int(10) unsigned NOT NULL DEFAULT '0',
  `RewXPId` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Quests System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quests`
--

LOCK TABLES `quests` WRITE;
/*!40000 ALTER TABLE `quests` DISABLE KEYS */;
/*!40000 ALTER TABLE `quests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quests_localized`
--

DROP TABLE IF EXISTS `quests_localized`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quests_localized` (
  `entry` int(30) NOT NULL,
  `language_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `Title` text CHARACTER SET latin1 NOT NULL,
  `Details` text CHARACTER SET latin1 NOT NULL,
  `Objectives` text CHARACTER SET latin1 NOT NULL,
  `CompletionText` text CHARACTER SET latin1 NOT NULL,
  `IncompleteText` text CHARACTER SET latin1 NOT NULL,
  `EndText` text CHARACTER SET latin1 NOT NULL,
  `ObjectiveText1` text CHARACTER SET latin1 NOT NULL,
  `ObjectiveText2` text CHARACTER SET latin1 NOT NULL,
  `ObjectiveText3` text CHARACTER SET latin1 NOT NULL,
  `ObjectiveText4` text CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`entry`,`language_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quests_localized`
--

LOCK TABLES `quests_localized` WRITE;
/*!40000 ALTER TABLE `quests_localized` DISABLE KEYS */;
/*!40000 ALTER TABLE `quests_localized` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recall`
--

DROP TABLE IF EXISTS `recall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recall` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `MapId` int(10) unsigned NOT NULL DEFAULT '0',
  `positionX` float NOT NULL DEFAULT '0',
  `positionY` float NOT NULL DEFAULT '0',
  `positionZ` float NOT NULL DEFAULT '0',
  `Orientation` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tele Command';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recall`
--

LOCK TABLES `recall` WRITE;
/*!40000 ALTER TABLE `recall` DISABLE KEYS */;
/*!40000 ALTER TABLE `recall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reputation_creature_onkill`
--

DROP TABLE IF EXISTS `reputation_creature_onkill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reputation_creature_onkill` (
  `creature_id` int(30) NOT NULL,
  `faction_change_alliance` int(30) NOT NULL,
  `faction_change_horde` int(30) NOT NULL,
  `change_value` int(30) NOT NULL,
  `rep_limit` int(30) NOT NULL,
  PRIMARY KEY (`creature_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Creature System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reputation_creature_onkill`
--

LOCK TABLES `reputation_creature_onkill` WRITE;
/*!40000 ALTER TABLE `reputation_creature_onkill` DISABLE KEYS */;
/*!40000 ALTER TABLE `reputation_creature_onkill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reputation_faction_onkill`
--

DROP TABLE IF EXISTS `reputation_faction_onkill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reputation_faction_onkill` (
  `faction_id` int(30) NOT NULL,
  `change_factionid_alliance` int(30) NOT NULL,
  `change_deltamin_alliance` int(30) NOT NULL,
  `change_deltamax_alliance` int(30) NOT NULL,
  `change_factionid_horde` int(30) NOT NULL,
  `change_deltamin_horde` int(30) NOT NULL,
  `change_deltamax_horde` int(30) NOT NULL,
  PRIMARY KEY (`faction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Creature System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reputation_faction_onkill`
--

LOCK TABLES `reputation_faction_onkill` WRITE;
/*!40000 ALTER TABLE `reputation_faction_onkill` DISABLE KEYS */;
/*!40000 ALTER TABLE `reputation_faction_onkill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reputation_instance_onkill`
--

DROP TABLE IF EXISTS `reputation_instance_onkill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reputation_instance_onkill` (
  `mapid` int(30) NOT NULL,
  `mob_rep_reward` int(30) NOT NULL,
  `mob_rep_limit` int(30) NOT NULL,
  `boss_rep_reward` int(30) NOT NULL,
  `boss_rep_limit` int(30) NOT NULL,
  `faction_change_alliance` int(30) NOT NULL,
  `faction_change_horde` int(30) NOT NULL,
  PRIMARY KEY (`mapid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Creature System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reputation_instance_onkill`
--

LOCK TABLES `reputation_instance_onkill` WRITE;
/*!40000 ALTER TABLE `reputation_instance_onkill` DISABLE KEYS */;
/*!40000 ALTER TABLE `reputation_instance_onkill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_coef_override`
--

DROP TABLE IF EXISTS `spell_coef_override`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_coef_override` (
  `id` double DEFAULT NULL,
  `name` varchar(300) DEFAULT NULL,
  `Dspell_coef_override` float DEFAULT NULL,
  `OTspell_coef_override` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_coef_override`
--

LOCK TABLES `spell_coef_override` WRITE;
/*!40000 ALTER TABLE `spell_coef_override` DISABLE KEYS */;
INSERT INTO `spell_coef_override` VALUES (8400,'Fireball Rank 5',1,0),(8401,'Fireball Rank 6',1,0),(8402,'Fireball Rank 7',1,0),(10148,'Fireball Rank 8',1,0),(10149,'Fireball Rank 9',1,0),(10150,'Fireball Rank 10',1,0),(10151,'Fireball Rank 11',1,0),(25306,'Fireball Rank 12',1,0),(27070,'Fireball Rank 13',1,0),(38692,'Fireball Rank 14',1,0),(30455,'Ice Lance',0.1429,0),(603,'Curse of Doom Rank 1',0,2),(30910,'Curse of Doom Rank 2',0,2),(980,'Curse of Agony Rank 1',0,1.2),(1014,'Curse of Agony Rank 2',0,1.2),(6217,'Curse of Agony Rank 3',0,1.2),(11711,'Curse of Agony Rank 4',0,1.2),(11712,'Curse of Agony Rank 5',0,1.2),(11713,'Curse of Agony Rank 6',0,1.2),(27218,'Curse of Agony Rank 7',0,1.2),(33763,'Libebloom',0.4286,0.518),(18265,'Siphon Life Rank 1',0,2),(18879,'Siphon Life Rank 2',0,2),(18880,'Siphon Life Rank 3',0,2),(18881,'Siphon Life Rank 4',0,2),(27264,'Siphon Life Rank 5',0,2),(30911,'Siphon Life Rank 6',0,2),(139,'Renew Rank 1',0,1),(6074,'Renew Rank 2',0,1),(6075,'Renew Rank 3',0,1),(6076,'Renew Rank 4',0,1),(6077,'Renew Rank 5',0,1),(6078,'Renew Rank 6',0,1),(10927,'Renew Rank 7',0,1),(10928,'Renew Rank 8',0,1),(10929,'Renew Rank 9',0,1),(25315,'Renew Rank 10',0,1),(25221,'Renew Rank 11',0,1),(21084,'Seal of Righteousness Rank 1',0.1,0),(20287,'Seal of Righteousness Rank 2',0.1,0),(20288,'Seal of Righteousness Rank 3',0.1,0),(20289,'Seal of Righteousness Rank 4',0.1,0),(20290,'Seal of Righteousness Rank 5',0.1,0),(20291,'Seal of Righteousness Rank 6',0.1,0),(20292,'Seal of Righteousness Rank 7',0.1,0),(20293,'Seal of Righteousness Rank 8',0.1,0),(27155,'Seal of Righteousness Rank 9',0.1,0),(20424,'Seal of Command',0.2,0),(17,'Power Word: Shield Rank 1',0.3,-1),(592,'Power Word: Shield Rank 2',0.3,-1),(600,'Power Word: Shield Rank 3',0.3,-1),(3747,'Power Word: Shield Rank 4',0.3,-1),(6065,'Power Word: Shield Rank 5',0.3,-1),(6066,'Power Word: Shield Rank 6',0.3,-1),(10898,'Power Word: Shield Rank 7',0.3,-1),(10899,'Power Word: Shield Rank 8',0.3,-1),(10900,'Power Word: Shield Rank 9',0.3,-1),(10901,'Power Word: Shield Rank 10',0.3,-1),(25217,'Power Word: Shield Rank 11',0.3,-1),(25218,'Power Word: Shield Rank 12',0.3,-1),(11426,'Ice Barrier Rank 1',-1,0.1),(13031,'Ice Barrier Rank 2',-1,0.1),(13032,'Ice Barrier Rank 3',-1,0.1),(13033,'Ice Barrier Rank 4',-1,0.1),(27134,'Ice Barrier Rank 5',-1,0.1),(33405,'Ice Barrier Rank 6',-1,0.1),(6143,'Frost Ward Rank 1',-1,0.3),(8461,'Frost Ward Rank 2',-1,0.3),(8462,'Frost Ward Rank 3',-1,0.3),(10177,'Frost Ward Rank 4',-1,0.3),(28609,'Frost Ward Rank 5',-1,0.3),(32796,'Frost Ward Rank 6',-1,0.3),(543,'Fire Ward Rank 1',-1,0.3),(8457,'Fire Ward Rank 2',-1,0.3),(8458,'Fire Ward Rank 3',-1,0.3),(10223,'Fire Ward Rank 4',-1,0.3),(10225,'Fire Ward Rank 5',-1,0.3),(27128,'Fire Ward Rank 6',-1,0.3),(6229,'Shadow Ward Rank 1',-1,0.3),(11739,'Shadow Ward Rank 2',-1,0.3),(11740,'Shadow Ward Rank 3',-1,0.3),(28610,'Shadow Ward Rank 4',-1,0.3);
/*!40000 ALTER TABLE `spell_coef_override` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_disable`
--

DROP TABLE IF EXISTS `spell_disable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_disable` (
  `spellid` int(30) NOT NULL,
  `replacement_spellid` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Spell System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_disable`
--

LOCK TABLES `spell_disable` WRITE;
/*!40000 ALTER TABLE `spell_disable` DISABLE KEYS */;
/*!40000 ALTER TABLE `spell_disable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_disable_trainers`
--

DROP TABLE IF EXISTS `spell_disable_trainers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_disable_trainers` (
  `spellid` int(30) NOT NULL,
  `replacement_spellid` int(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Trainer System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_disable_trainers`
--

LOCK TABLES `spell_disable_trainers` WRITE;
/*!40000 ALTER TABLE `spell_disable_trainers` DISABLE KEYS */;
/*!40000 ALTER TABLE `spell_disable_trainers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_effects_override`
--

DROP TABLE IF EXISTS `spell_effects_override`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_effects_override` (
  `spellId` int(30) unsigned NOT NULL DEFAULT '0',
  `EffectID` int(30) unsigned NOT NULL DEFAULT '0',
  `Disable` int(30) unsigned NOT NULL DEFAULT '0',
  `Effect` int(30) unsigned NOT NULL DEFAULT '0',
  `BasePoints` int(30) NOT NULL DEFAULT '0',
  `ApplyAuraName` int(30) unsigned NOT NULL DEFAULT '0',
  `SpellGroupRelation` int(30) NOT NULL DEFAULT '0',
  `MiscValue` int(30) NOT NULL DEFAULT '0',
  `TriggerSpell` int(30) unsigned NOT NULL DEFAULT '0',
  `ImplicitTargetA` int(30) NOT NULL DEFAULT '0',
  `ImplicitTargetB` int(30) NOT NULL DEFAULT '0',
  `EffectCustomFlag` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`spellId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_effects_override`
--

LOCK TABLES `spell_effects_override` WRITE;
/*!40000 ALTER TABLE `spell_effects_override` DISABLE KEYS */;
INSERT INTO `spell_effects_override` VALUES (57840,0,0,0,0,0,0,0,0,0,0,4),(379,0,0,0,0,0,0,0,0,21,0,0);
/*!40000 ALTER TABLE `spell_effects_override` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spell_proc`
--

DROP TABLE IF EXISTS `spell_proc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_proc` (
  `spellID` int(30) NOT NULL DEFAULT '0',
  `ProcOnNameHash` int(30) unsigned NOT NULL DEFAULT '0',
  `ProcFlag` int(30) NOT NULL DEFAULT '0',
  `TargetSelf` tinyint(1) NOT NULL DEFAULT '0',
  `ProcChance` int(30) NOT NULL DEFAULT '-1',
  `ProcCharges` smallint(30) NOT NULL DEFAULT '-1',
  `ProcInterval` int(30) NOT NULL DEFAULT '0',
  `EffectTriggerSpell[0]` int(10) NOT NULL DEFAULT '-1',
  `EffectTriggerSpell[1]` int(10) NOT NULL DEFAULT '-1',
  `EffectTriggerSpell[2]` int(10) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`spellID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_proc`
--

LOCK TABLES `spell_proc` WRITE;
/*!40000 ALTER TABLE `spell_proc` DISABLE KEYS */;
INSERT INTO `spell_proc` VALUES (23920,0,134348800,0,100,1,0,-1,-1,-1),(30482,0,10792,0,-1,0,0,-1,-1,-1),(43045,0,10792,0,-1,0,0,-1,-1,-1),(324,0,666152,0,100,3,0,-1,-1,-1),(325,0,666152,0,100,3,0,-1,-1,-1),(905,0,666152,0,100,3,0,-1,-1,-1),(945,0,666152,0,100,3,0,-1,-1,-1),(8134,0,666152,0,100,3,0,-1,-1,-1),(10431,0,666152,0,100,3,0,-1,-1,-1),(10432,0,666152,0,100,3,0,-1,-1,-1),(25469,0,666152,0,100,3,0,-1,-1,-1),(25472,0,666152,0,100,3,0,-1,-1,-1),(49280,0,666152,0,100,3,0,-1,-1,-1),(49281,0,666152,0,100,3,0,-1,-1,-1),(43046,0,10792,0,-1,-1,0,-1,-1,-1),(37982,0,4,0,1,0,0,-1,-1,-1),(27521,0,16,0,5,0,0,-1,-1,-1),(38394,0,1024,0,-1,-1,0,-1,-1,-1),(64976,0,16,0,-1,-1,0,-1,-1,-1),(65156,3808755873,0,0,-1,-1,0,-1,-1,-1);
/*!40000 ALTER TABLE `spell_proc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spellclickspells`
--

DROP TABLE IF EXISTS `spellclickspells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spellclickspells` (
  `CreatureID` int(10) unsigned NOT NULL,
  `SpellID` int(10) unsigned NOT NULL,
  PRIMARY KEY (`CreatureID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spellclickspells`
--

LOCK TABLES `spellclickspells` WRITE;
/*!40000 ALTER TABLE `spellclickspells` DISABLE KEYS */;
INSERT INTO `spellclickspells` VALUES (28605,52263),(32633,61425),(29929,55531),(31897,7001),(31896,27873),(31895,27874),(31894,28276),(31893,48084),(31883,48085);
/*!40000 ALTER TABLE `spellclickspells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spelloverride`
--

DROP TABLE IF EXISTS `spelloverride`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spelloverride` (
  `overrideId` int(10) unsigned NOT NULL DEFAULT '0',
  `spellId` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `overrideId` (`overrideId`,`spellId`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Spell System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spelloverride`
--

LOCK TABLES `spelloverride` WRITE;
/*!40000 ALTER TABLE `spelloverride` DISABLE KEYS */;
/*!40000 ALTER TABLE `spelloverride` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spelltargetconstraints`
--

DROP TABLE IF EXISTS `spelltargetconstraints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spelltargetconstraints` (
  `SpellID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier of the spell',
  `TargetType` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Type of the target ( 0 = Creature, 1 = Gameobject )',
  `TargetID` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier of the target',
  PRIMARY KEY (`SpellID`,`TargetType`,`TargetID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spelltargetconstraints`
--

LOCK TABLES `spelltargetconstraints` WRITE;
/*!40000 ALTER TABLE `spelltargetconstraints` DISABLE KEYS */;
INSERT INTO `spelltargetconstraints` VALUES (0,0,0),(2699,0,5307),(3607,0,2530),(4130,0,2760),(4131,0,2761),(4132,0,2762),(19548,0,1196),(19674,0,1126),(19687,0,1201),(19688,0,2956),(19689,0,2959),(19692,0,2970),(19693,0,1998),(19694,0,3099),(19696,0,3107),(19697,0,3126),(19699,0,2043),(19700,0,1996),(19938,0,10556),(27907,0,15941),(27907,0,15945),(28369,0,18879),(29528,0,16518),(30077,0,17226),(30099,0,15650),(30102,0,15652),(30105,0,16353),(30646,0,17217),(30653,0,17374),(30654,0,17203),(30877,0,17326),(32578,0,20748),(32825,0,22357),(34665,0,16880),(35772,0,20774),(36310,0,20058),(36314,0,20132),(37136,0,21731),(38177,0,21387),(38554,0,19440),(41291,0,22357),(41621,0,23487),(44997,0,24972),(47394,0,26261),(52244,0,28750),(52252,0,28750),(52389,0,28802),(52390,0,28802),(52487,0,28843);
/*!40000 ALTER TABLE `spelltargetconstraints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teleport_coords`
--

DROP TABLE IF EXISTS `teleport_coords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teleport_coords` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `name` char(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `mapId` int(10) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `totrigger` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='World System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teleport_coords`
--

LOCK TABLES `teleport_coords` WRITE;
/*!40000 ALTER TABLE `teleport_coords` DISABLE KEYS */;
/*!40000 ALTER TABLE `teleport_coords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `totemdisplayids`
--

DROP TABLE IF EXISTS `totemdisplayids`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `totemdisplayids` (
  `displayid` int(10) unsigned NOT NULL DEFAULT '0',
  `draeneiid` int(10) unsigned NOT NULL DEFAULT '0',
  `trollid` int(10) unsigned NOT NULL DEFAULT '0',
  `orcid` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`displayid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `totemdisplayids`
--

LOCK TABLES `totemdisplayids` WRITE;
/*!40000 ALTER TABLE `totemdisplayids` DISABLE KEYS */;
INSERT INTO `totemdisplayids` VALUES (4587,19075,30763,30759),(4588,19073,30761,30757),(4589,19074,30762,30758),(4590,19071,30760,30756),(4683,19075,30763,30759);
/*!40000 ALTER TABLE `totemdisplayids` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainer_defs`
--

DROP TABLE IF EXISTS `trainer_defs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainer_defs` (
  `entry` int(11) unsigned NOT NULL DEFAULT '0',
  `required_skill` int(11) unsigned NOT NULL DEFAULT '0',
  `required_skillvalue` int(11) unsigned DEFAULT '0',
  `req_class` int(11) unsigned NOT NULL DEFAULT '0',
  `RequiredRace` int(11) NOT NULL DEFAULT '0',
  `RequiredReputation` int(11) NOT NULL DEFAULT '0',
  `RequiredReputationValue` int(11) NOT NULL DEFAULT '0',
  `trainer_type` int(11) unsigned NOT NULL DEFAULT '0',
  `trainer_ui_window_message` text,
  `can_train_gossip_textid` int(11) NOT NULL,
  `cannot_train_gossip_textid` int(11) NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Trainer System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainer_defs`
--

LOCK TABLES `trainer_defs` WRITE;
/*!40000 ALTER TABLE `trainer_defs` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainer_defs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainer_spells`
--

DROP TABLE IF EXISTS `trainer_spells`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainer_spells` (
  `entry` int(11) unsigned NOT NULL DEFAULT '0',
  `cast_spell` int(11) unsigned NOT NULL DEFAULT '0',
  `learn_spell` int(11) unsigned NOT NULL,
  `spellcost` int(11) unsigned NOT NULL DEFAULT '0',
  `reqspell` int(11) unsigned NOT NULL DEFAULT '0',
  `reqskill` int(11) unsigned NOT NULL DEFAULT '0',
  `reqskillvalue` int(11) unsigned NOT NULL DEFAULT '0',
  `reqlevel` int(11) unsigned NOT NULL DEFAULT '0',
  `deletespell` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`cast_spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Trainer System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainer_spells`
--

LOCK TABLES `trainer_spells` WRITE;
/*!40000 ALTER TABLE `trainer_spells` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainer_spells` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trainerspelloverride`
--

DROP TABLE IF EXISTS `trainerspelloverride`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trainerspelloverride` (
  `spellid` int(10) unsigned NOT NULL DEFAULT '0',
  `cost` int(10) unsigned NOT NULL DEFAULT '0',
  `requiredspell` int(10) unsigned NOT NULL DEFAULT '0',
  `deletespell` int(10) unsigned NOT NULL DEFAULT '0',
  `requiredskill` int(10) unsigned NOT NULL DEFAULT '0',
  `requiredskillvalue` int(10) unsigned NOT NULL DEFAULT '0',
  `reqlevel` int(10) unsigned NOT NULL DEFAULT '0',
  `requiredclass` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `spellid` (`spellid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Trainer System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trainerspelloverride`
--

LOCK TABLES `trainerspelloverride` WRITE;
/*!40000 ALTER TABLE `trainerspelloverride` DISABLE KEYS */;
/*!40000 ALTER TABLE `trainerspelloverride` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_creatures`
--

DROP TABLE IF EXISTS `transport_creatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transport_creatures` (
  `transport_entry` int(10) unsigned NOT NULL,
  `creature_entry` int(10) unsigned NOT NULL,
  `position_x` float NOT NULL,
  `position_y` float NOT NULL,
  `position_z` float NOT NULL,
  `orientation` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_creatures`
--

LOCK TABLES `transport_creatures` WRITE;
/*!40000 ALTER TABLE `transport_creatures` DISABLE KEYS */;
/*!40000 ALTER TABLE `transport_creatures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transport_data`
--

DROP TABLE IF EXISTS `transport_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transport_data` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` text,
  `period` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Transports';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transport_data`
--

LOCK TABLES `transport_data` WRITE;
/*!40000 ALTER TABLE `transport_data` DISABLE KEYS */;
INSERT INTO `transport_data` VALUES (176495,'Grom\'Gol Base Camp and Undercity',315032),(176310,'Stormwind and Auberdine',234510),(176244,'Teldrassil and Auberdine',312734),(176231,'Menethil Harbor and Theramore Isle',230162),(175080,'Grom\'Gol Base Camp and Orgrimmar',248990),(164871,'Orgrimmar and Undercity',239334),(20808,'Ratchet and Booty Bay',231236),(177233,'Forgotton Coast and Feathermoon Stronghold',259751),(181646,'Azuremyst and Auberdine',238707),(190536,'Valiance Keep and Stormwind',271979),(181688,'Valgarde and Menethil',445534),(181689,'Undercity and Vengeance Landing',214579),(186238,'Orgrimmar and Warsong Hold',302705),(186371,'Stolen Zeppelin',484211),(187568,'Moa\'ki Harbor Turtle Boat',445220),(187038,'Pirate boat',307953),(188511,'Unu\'pe Turtle Boat',502354),(192241,'Orgrims Hammer',1424158),(192242,'Fizzcrank Airstrip',1051387);
/*!40000 ALTER TABLE `transport_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit_display_sizes`
--

DROP TABLE IF EXISTS `unit_display_sizes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit_display_sizes` (
  `DisplayID` int(11) unsigned NOT NULL,
  `halfsize` float NOT NULL DEFAULT '1',
  `modelid` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`DisplayID`),
  UNIQUE KEY `DisplayID` (`DisplayID`),
  KEY `DisplayID_2` (`DisplayID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit_display_sizes`
--

LOCK TABLES `unit_display_sizes` WRITE;
/*!40000 ALTER TABLE `unit_display_sizes` DISABLE KEYS */;
INSERT INTO `unit_display_sizes` VALUES (112,0.717302,112),(240,0.717302,112),(456,0.717302,112),(495,0.717302,112),(496,0.717302,112),(517,0.717302,112),(553,0.717302,112),(947,0.717302,112),(1260,0.717302,112),(59,0.840558,59),(1624,0.840558,59),(1667,0.840558,59),(1678,0.840558,59),(1904,0.840558,59),(1941,0.840558,59),(2026,0.840558,59),(2082,0.840558,59),(2083,0.840558,59),(2084,0.840558,59),(2085,0.840558,59),(2086,0.840558,59),(2087,0.840558,59),(2088,0.840558,59),(2089,0.840558,59),(2090,0.840558,59),(2091,0.840558,59),(2092,0.840558,59),(2093,0.840558,59),(2094,0.840558,59),(2095,0.840558,59),(2096,0.840558,59),(2097,0.840558,59),(2098,0.840558,59),(2099,0.840558,59),(2100,0.840558,59),(2101,0.840558,59),(2102,0.840558,59),(2103,0.840558,59),(2104,0.840558,59),(2105,0.840558,59),(2106,0.840558,59),(2128,0.840558,59),(2129,0.840558,59),(2130,0.840558,59),(2131,0.840558,59),(2140,0.840558,59),(2141,0.840558,59),(2411,0.840558,59),(2578,0.840558,59),(2704,0.840558,59),(2738,0.840558,59),(2739,0.840558,59),(2831,0.840558,59),(2892,0.840558,59),(2895,0.840558,59),(2951,0.840558,59),(3002,0.840558,59),(3129,0.840558,59),(3442,0.840558,59),(3550,0.840558,59),(3556,0.840558,59),(3771,0.840558,59),(3773,0.840558,59),(3774,0.840558,59),(3775,0.840558,59),(3776,0.840558,59),(3777,0.840558,59),(3778,0.840558,59),(3782,0.840558,59),(3783,0.840558,59),(3792,0.840558,59),(3793,0.840558,59),(3794,0.840558,59),(3795,0.840558,59),(3796,0.840558,59),(3799,0.840558,59),(3800,0.840558,59),(3801,0.840558,59),(3802,0.840558,59),(3803,0.840558,59),(3804,0.840558,59),(3808,0.840558,59),(3809,0.840558,59),(3810,0.840558,59),(3811,0.840558,59),(3812,0.840558,59),(3813,0.840558,59),(3814,0.840558,59),(3815,0.840558,59),(3816,0.840558,59),(3817,0.840558,59),(3818,0.840558,59),(3819,0.840558,59),(3821,0.840558,59),(3822,0.840558,59),(3823,0.840558,59),(3824,0.840558,59),(3826,0.840558,59),(3843,0.840558,59),(3844,0.840558,59),(3845,0.840558,59),(3872,0.840558,59),(3881,0.840558,59),(3889,0.840558,59),(3895,0.840558,59),(3898,0.840558,59),(3907,0.840558,59),(3914,0.840558,59),(4262,0.840558,59),(4265,0.840558,59),(4288,0.840558,59),(4289,0.840558,59),(4298,0.840558,59),(4299,0.840558,59),(4300,0.840558,59),(4301,0.840558,59),(4306,0.840558,59),(4307,0.840558,59),(4308,0.840558,59),(4318,0.840558,59),(4511,0.840558,59),(4512,0.840558,59),(4516,0.840558,59),(4517,0.840558,59),(4518,0.840558,59),(4519,0.840558,59),(4520,0.840558,59),(4542,0.840558,59),(4568,0.840558,59),(4604,0.840558,59),(4608,0.840558,59),(4648,0.840558,59),(4715,0.840558,59),(4726,0.840558,59),(4952,0.840558,59),(4992,0.840558,59),(5108,0.840558,59),(5205,0.840558,59),(5372,0.840558,59),(5373,0.840558,59),(5406,0.840558,59),(5486,0.840558,59),(5507,0.840558,59),(5778,0.840558,59),(6066,0.840558,59),(6208,0.840558,59),(6550,0.840558,59),(6777,0.840558,59),(6832,0.840558,59),(6834,0.840558,59),(6836,0.840558,59),(6847,0.840558,59),(6854,0.840558,59),(6855,0.840558,59),(6869,0.840558,59),(6874,0.840558,59),(6893,0.840558,59),(6918,0.840558,59),(6983,0.840558,59),(6996,0.840558,59),(7115,0.840558,59),(7357,0.840558,59),(7360,0.840558,59),(7361,0.840558,59),(7364,0.840558,59),(7366,0.840558,59),(7370,0.840558,59),(7372,0.840558,59),(7374,0.840558,59),(7377,0.840558,59),(7380,0.840558,59),(7381,0.840558,59),(7531,0.840558,59),(7620,0.840558,59),(7622,0.840558,59),(7623,0.840558,59),(7624,0.840558,59),(7626,0.840558,59),(7629,0.840558,59),(7824,0.840558,59),(7998,0.840558,59),(7999,0.840558,59),(8169,0.840558,59),(8334,0.840558,59),(8350,0.840558,59),(8355,0.840558,59),(8634,0.840558,59),(8666,0.840558,59),(8669,0.840558,59),(8670,0.840558,59),(8762,0.840558,59),(8767,0.840558,59),(8773,0.840558,59),(8792,0.840558,59),(8832,0.840558,59),(9233,0.840558,59),(9234,0.840558,59),(9256,0.840558,59),(9272,0.840558,59),(9337,0.840558,59),(9391,0.840558,59),(9742,0.840558,59),(9770,0.840558,59),(9771,0.840558,59),(9772,0.840558,59),(9776,0.840558,59),(9898,0.840558,59),(9899,0.840558,59),(9900,0.840558,59),(9901,0.840558,59),(9902,0.840558,59),(9935,0.840558,59),(9936,0.840558,59),(10049,0.840558,59),(10050,0.840558,59),(10057,0.840558,59),(10069,0.840558,59),(10132,0.840558,59),(10148,0.840558,59),(10152,0.840558,59),(10181,0.840558,59),(10182,0.840558,59),(10188,0.840558,59),(10225,0.840558,59),(10226,0.840558,59),(10230,0.840558,59),(10231,0.840558,59),(10235,0.840558,59),(10236,0.840558,59),(10240,0.840558,59),(10241,0.840558,59),(10243,0.840558,59),(10254,0.840558,59),(10566,0.840558,59),(10577,0.840558,59),(10586,0.840558,59),(10614,0.840558,59),(10617,0.840558,59),(10653,0.840558,59),(10689,0.840558,59),(10735,0.840558,59),(10736,0.840558,59),(10958,0.840558,59),(10969,0.840558,59),(11274,0.840558,59),(11286,0.840558,59),(11322,0.840558,59),(11359,0.840558,59),(11456,0.840558,59),(11469,0.840558,59),(11590,0.840558,59),(11685,0.840558,59),(11688,0.840558,59),(11738,0.840558,59),(11754,0.840558,59),(11755,0.840558,59),(11772,0.840558,59),(11773,0.840558,59),(11774,0.840558,59),(11790,0.840558,59),(11791,0.840558,59),(11792,0.840558,59),(11795,0.840558,59),(11797,0.840558,59),(11799,0.840558,59),(11803,0.840558,59),(11852,0.840558,59),(11874,0.840558,59),(11876,0.840558,59),(11878,0.840558,59),(11880,0.840558,59),(11882,0.840558,59),(11884,0.840558,59),(11886,0.840558,59),(11887,0.840558,59),(11902,0.840558,59),(12058,0.840558,59),(12083,0.840558,59),(12170,0.840558,59),(12673,0.840558,59),(12943,0.840558,59),(12969,0.840558,59),(13281,0.840558,59),(13285,0.840558,59),(13303,0.840558,59),(13308,0.840558,59),(13325,0.840558,59),(13338,0.840558,59),(13341,0.840558,59),(13364,0.840558,59),(13367,0.840558,59),(13400,0.840558,59),(13464,0.840558,59),(13468,0.840558,59),(13541,0.840558,59),(13565,0.840558,59),(13569,0.840558,59),(13573,0.840558,59),(13817,0.840558,59),(13818,0.840558,59),(13821,0.840558,59),(13822,0.840558,59),(13828,0.840558,59),(13831,0.840558,59),(13833,0.840558,59),(13835,0.840558,59),(14216,0.840558,59),(14233,0.840558,59),(14323,0.840558,59),(14427,0.840558,59),(14494,0.840558,59),(14495,0.840558,59),(14496,0.840558,59),(14580,0.840558,59),(14612,0.840558,59),(14758,0.840558,59),(14881,0.840558,59),(15230,0.840558,59),(15245,0.840558,59),(15314,0.840558,59),(15318,0.840558,59),(15319,0.840558,59),(15322,0.840558,59),(15342,0.840558,59),(15370,0.840558,59),(15371,0.840558,59),(15478,0.840558,59),(15537,0.840558,59),(15544,0.840558,59),(15568,0.840558,59),(15604,0.840558,59),(15609,0.840558,59),(15613,0.840558,59),(15615,0.840558,59),(15627,0.840558,59),(15635,0.840558,59),(15642,0.840558,59),(15644,0.840558,59),(15648,0.840558,59),(15720,0.840558,59),(15759,0.840558,59),(15770,0.840558,59),(15771,0.840558,59),(15817,0.840558,59),(15827,0.840558,59),(15829,0.840558,59),(15844,0.840558,59),(15856,0.840558,59),(15863,0.840558,59),(15869,0.840558,59),(15875,0.840558,59),(15955,0.840558,59),(15976,0.840558,59),(15997,0.840558,59),(16029,0.840558,59),(16294,0.840558,59),(16303,0.840558,59),(16304,0.840558,59),(16308,0.840558,59),(16430,0.840558,59),(16432,0.840558,59),(16966,0.840558,59),(17285,0.840558,59),(17300,0.840558,59),(17309,0.840558,59),(17319,0.840558,59),(17332,0.840558,59),(17580,0.840558,59),(17804,0.840558,59),(17848,0.840558,59),(18176,0.840558,59),(18183,0.840558,59),(18186,0.840558,59),(18409,0.840558,59),(18532,0.840558,59),(18738,0.840558,59),(18807,0.840558,59),(18872,0.840558,59),(18898,0.840558,59),(19022,0.840558,59),(19184,0.840558,59),(19426,0.840558,59),(19427,0.840558,59),(19521,0.840558,59),(20192,0.840558,59),(20319,0.840558,59),(20585,0.840558,59),(20612,0.840558,59),(20618,0.840558,59),(20680,0.840558,59),(20993,0.840558,59),(21036,0.840558,59),(21088,0.840558,59),(21109,0.840558,59),(21139,0.840558,59),(21200,0.840558,59),(21201,0.840558,59),(21313,0.840558,59),(21471,0.840558,59),(21641,0.840558,59),(21653,0.840558,59),(21654,0.840558,59),(21657,0.840558,59),(21658,0.840558,59),(21663,0.840558,59),(21664,0.840558,59),(21679,0.840558,59),(21870,0.840558,59),(21872,0.840558,59),(22377,0.840558,59),(22400,0.840558,59),(22571,0.840558,59),(22694,0.840558,59),(22891,0.840558,59),(22950,0.840558,59),(22961,0.840558,59),(23663,0.840558,59),(23727,0.840558,59),(23779,0.840558,59),(16126,0.436486,2250),(16200,0.436486,2250),(16202,0.436486,2250),(16210,0.436486,2250),(16211,0.436486,2250),(16222,0.436486,2250),(16223,0.436486,2250),(16227,0.436486,2250),(16492,0.436486,2250),(16493,0.436486,2250),(16610,0.436486,2250),(16613,0.436486,2250),(16636,0.436486,2250),(16647,0.436486,2250),(16726,0.436486,2250),(16785,0.436486,2250),(16791,0.436486,2250),(16792,0.436486,2250),(16805,0.436486,2250),(16853,0.436486,2250),(16856,0.436486,2250),(16857,0.436486,2250),(16911,0.436486,2250),(16914,0.436486,2250),(16923,0.436486,2250),(16924,0.436486,2250),(16945,0.436486,2250),(17001,0.436486,2250),(17004,0.436486,2250),(17007,0.436486,2250),(17022,0.436486,2250),(17025,0.436486,2250),(17026,0.436486,2250),(17027,0.436486,2250),(17031,0.436486,2250),(17082,0.436486,2250),(17114,0.436486,2250),(17165,0.436486,2250),(17174,0.436486,2250),(17178,0.436486,2250),(17179,0.436486,2250),(17214,0.436486,2250),(17215,0.436486,2250),(17220,0.436486,2250),(17223,0.436486,2250),(17226,0.436486,2250),(17230,0.436486,2250),(17231,0.436486,2250),(17234,0.436486,2250),(17236,0.436486,2250),(17241,0.436486,2250),(17242,0.436486,2250),(17245,0.436486,2250),(17269,0.436486,2250),(17282,0.436486,2250),(17293,0.436486,2250),(17326,0.436486,2250),(17327,0.436486,2250),(17334,0.436486,2250),(17374,0.436486,2250),(17375,0.436486,2250),(17388,0.436486,2250),(17412,0.436486,2250),(17424,0.436486,2250),(17427,0.436486,2250),(17428,0.436486,2250),(17435,0.436486,2250),(17436,0.436486,2250),(17439,0.436486,2250),(17440,0.436486,2250),(17441,0.436486,2250),(17442,0.436486,2250),(17448,0.436486,2250),(17480,0.436486,2250),(17482,0.436486,2250),(17483,0.436486,2250),(17484,0.436486,2250),(17486,0.436486,2250),(17487,0.436486,2250),(17489,0.436486,2250),(17491,0.436486,2250),(17492,0.436486,2250),(17493,0.436486,2250),(17495,0.436486,2250),(17496,0.436486,2250),(17497,0.436486,2250),(17499,0.436486,2250),(17500,0.436486,2250),(17501,0.436486,2250),(17506,0.436486,2250),(17508,0.436486,2250),(17509,0.436486,2250),(17514,0.436486,2250),(17515,0.436486,2250),(17517,0.436486,2250),(17683,0.436486,2250),(17684,0.436486,2250),(17690,0.436486,2250),(17770,0.436486,2250),(17830,0.436486,2250),(17882,0.436486,2250),(17905,0.436486,2250),(17907,0.436486,2250),(17912,0.436486,2250),(17915,0.436486,2250),(17919,0.436486,2250),(17922,0.436486,2250),(17923,0.436486,2250),(17926,0.436486,2250),(17927,0.436486,2250),(17930,0.436486,2250),(17931,0.436486,2250),(17934,0.436486,2250),(17935,0.436486,2250),(17937,0.436486,2250),(17940,0.436486,2250),(17941,0.436486,2250),(17944,0.436486,2250),(17945,0.436486,2250),(17968,0.436486,2250),(18022,0.436486,2250),(18067,0.436486,2250),(18073,0.436486,2250),(18079,0.436486,2250),(18080,0.436486,2250),(18137,0.436486,2250),(18149,0.436486,2250),(18171,0.436486,2250),(18220,0.436486,2250),(18256,0.436486,2250),(18257,0.436486,2250),(18298,0.436486,2250),(18299,0.436486,2250),(18305,0.436486,2250),(18319,0.436486,2250),(18327,0.436486,2250),(18331,0.436486,2250),(18332,0.436486,2250),(18348,0.436486,2250),(18441,0.436486,2250),(18442,0.436486,2250),(18466,0.436486,2250),(18469,0.436486,2250),(18482,0.436486,2250),(18496,0.436486,2250),(18499,0.436486,2250),(18537,0.436486,2250),(18541,0.436486,2250),(18548,0.436486,2250),(18550,0.436486,2250),(18555,0.436486,2250),(18574,0.436486,2250),(18575,0.436486,2250),(18794,0.436486,2250),(18842,0.436486,2250),(18883,0.436486,2250),(18884,0.436486,2250),(18903,0.436486,2250),(18959,0.436486,2250),(18963,0.436486,2250),(19080,0.436486,2250),(19082,0.436486,2250),(19100,0.436486,2250),(19101,0.436486,2250),(19106,0.436486,2250),(19107,0.436486,2250),(19132,0.436486,2250),(19137,0.436486,2250),(19138,0.436486,2250),(19140,0.436486,2250),(19147,0.436486,2250),(19171,0.436486,2250),(19195,0.436486,2250),(19280,0.436486,2250),(19333,0.436486,2250),(19348,0.436486,2250),(19477,0.436486,2250),(19510,0.436486,2250),(19570,0.436486,2250),(19571,0.436486,2250),(19598,0.436486,2250),(19713,0.436486,2250),(19714,0.436486,2250),(19794,0.436486,2250),(20034,0.436486,2250),(20035,0.436486,2250),(20107,0.436486,2250),(20108,0.436486,2250),(20109,0.436486,2250),(20120,0.436486,2250),(20169,0.436486,2250),(20170,0.436486,2250),(20181,0.436486,2250),(20183,0.436486,2250),(20184,0.436486,2250),(20189,0.436486,2250),(20190,0.436486,2250),(20253,0.436486,2250),(20270,0.436486,2250),(20286,0.436486,2250),(20289,0.436486,2250),(20314,0.436486,2250),(20323,0.436486,2250),(20482,0.436486,2250),(20552,0.436486,2250),(20553,0.436486,2250),(20558,0.436486,2250),(20652,0.436486,2250),(20705,0.436486,2250),(20706,0.436486,2250),(20754,0.436486,2250),(20755,0.436486,2250),(20982,0.436486,2250),(21050,0.436486,2250),(21084,0.436486,2250),(21095,0.436486,2250),(21128,0.436486,2250),(21143,0.436486,2250),(21178,0.436486,2250),(21218,0.436486,2250),(21222,0.436486,2250),(21223,0.436486,2250),(21270,0.436486,2250),(21512,0.436486,2250),(21514,0.436486,2250),(21517,0.436486,2250),(21518,0.436486,2250),(21671,0.436486,2250),(21842,0.436486,2250),(21843,0.436486,2250),(22362,0.436486,2250),(22557,0.436486,2250),(22681,0.436486,2250),(22755,0.436486,2250),(22766,0.436486,2250),(22767,0.436486,2250),(22768,0.436486,2250),(22775,0.436486,2250),(22835,0.436486,2250),(22842,0.436486,2250),(22915,0.436486,2250),(22916,0.436486,2250),(22917,0.436486,2250),(22918,0.436486,2250),(22927,0.436486,2250),(22939,0.436486,2250),(22940,0.436486,2250),(22941,0.436486,2250),(22955,0.436486,2250),(22959,0.436486,2250),(22971,0.436486,2250),(22975,0.436486,2250),(23067,0.436486,2250),(23295,0.436486,2250),(23296,0.436486,2250),(23470,0.436486,2250),(23560,0.436486,2250),(23589,0.436486,2250),(23595,0.436486,2250),(23673,0.436486,2250),(23717,0.436486,2250),(23899,0.436486,2250),(4269,5.0489,351),(6884,5.0489,351),(8015,5.0489,351),(9560,5.0489,351),(10807,5.0489,351),(10808,5.0489,351),(10809,5.0489,351),(10810,5.0489,351),(12682,5.0489,351),(12683,5.0489,351),(15931,7.63001,2234),(16586,7.63001,2234),(17228,2.84277,2402),(17450,2.84277,2402),(17758,2.84277,2402),(18028,2.84277,2402),(18224,2.84277,2402),(18227,2.84277,2402),(18228,2.84277,2402),(18229,2.84277,2402),(18449,2.84277,2402),(18823,2.84277,2402),(19164,2.84277,2402),(19687,2.84277,2402),(20469,2.84277,2402),(20812,2.84277,2402),(22415,2.84277,2402),(21427,3.33118,2578),(21473,3.33118,2578),(21474,3.33118,2578),(21492,3.33118,2578),(4244,0.471704,315),(4494,0.471704,315),(4678,0.471704,315),(6549,0.471704,315),(6630,0.471704,315),(6779,0.471704,315),(6994,0.471704,315),(7604,0.471704,315),(7874,0.471704,315),(9149,0.471704,315),(10379,0.471704,315),(10382,0.471704,315),(11671,0.471704,315),(17307,0.471704,315),(18286,0.903314,2424),(18291,0.903314,2424),(18371,0.903314,2424),(19214,0.903314,2424),(19274,0.903314,2424),(19294,0.903314,2424),(19358,0.903314,2424),(19359,0.903314,2424),(19738,0.903314,2424),(19885,0.903314,2424),(19886,0.903314,2424),(19949,0.903314,2424),(19950,0.903314,2424),(20191,0.903314,2424),(20330,0.903314,2424),(20386,0.903314,2424),(20533,0.903314,2424),(20916,0.903314,2424),(20952,0.903314,2424),(20967,0.903314,2424),(20968,0.903314,2424),(20975,0.903314,2424),(22833,0.903314,2424),(23267,0.903314,2424),(50,0.3379,50),(176,0.3379,50),(302,0.3379,50),(1261,0.3379,50),(1287,0.3379,50),(1295,0.3379,50),(1296,0.3379,50),(1297,0.3379,50),(1300,0.3379,50),(1361,0.3379,50),(1439,0.3379,50),(1440,0.3379,50),(1441,0.3379,50),(1442,0.3379,50),(1443,0.3379,50),(1444,0.3379,50),(1445,0.3379,50),(1446,0.3379,50),(1447,0.3379,50),(1448,0.3379,50),(1449,0.3379,50),(1450,0.3379,50),(1469,0.3379,50),(1470,0.3379,50),(1471,0.3379,50),(1472,0.3379,50),(1473,0.3379,50),(1474,0.3379,50),(1477,0.3379,50),(1480,0.3379,50),(1481,0.3379,50),(1482,0.3379,50),(1483,0.3379,50),(1495,0.3379,50),(1496,0.3379,50),(1497,0.3379,50),(1498,0.3379,50),(1520,0.3379,50),(1521,0.3379,50),(1522,0.3379,50),(1523,0.3379,50),(1526,0.3379,50),(1544,0.3379,50),(1546,0.3379,50),(1571,0.3379,50),(1612,0.3379,50),(1615,0.3379,50),(1640,0.3379,50),(1658,0.3379,50),(1691,0.3379,50),(1692,0.3379,50),(1697,0.3379,50),(1743,0.3379,50),(1745,0.3379,50),(1768,0.3379,50),(1815,0.3379,50),(1840,0.3379,50),(1842,0.3379,50),(1853,0.3379,50),(1855,0.3379,50),(1856,0.3379,50),(1857,0.3379,50),(1862,0.3379,50),(1900,0.3379,50),(2038,0.3379,50),(2043,0.3379,50),(2047,0.3379,50),(2204,0.3379,50),(2315,0.3379,50),(2317,0.3379,50),(2319,0.3379,50),(2321,0.3379,50),(2330,0.3379,50),(2331,0.3379,50),(2333,0.3379,50),(2336,0.3379,50),(2339,0.3379,50),(2341,0.3379,50),(2344,0.3379,50),(2348,0.3379,50),(2349,0.3379,50),(2355,0.3379,50),(2358,0.3379,50),(2359,0.3379,50),(2362,0.3379,50),(2365,0.3379,50),(2366,0.3379,50),(2367,0.3379,50),(2374,0.3379,50),(2375,0.3379,50),(2379,0.3379,50),(2386,0.3379,50),(2391,0.3379,50),(2394,0.3379,50),(2396,0.3379,50),(2398,0.3379,50),(2399,0.3379,50),(2400,0.3379,50),(2401,0.3379,50),(2407,0.3379,50),(2443,0.3379,50),(2448,0.3379,50),(2460,0.3379,50),(2473,0.3379,50),(2474,0.3379,50),(2475,0.3379,50),(2476,0.3379,50),(2477,0.3379,50),(2478,0.3379,50),(2479,0.3379,50),(2480,0.3379,50),(2481,0.3379,50),(2482,0.3379,50),(2483,0.3379,50),(2494,0.3379,50),(2496,0.3379,50),(2497,0.3379,50),(2500,0.3379,50),(2501,0.3379,50),(2503,0.3379,50),(2505,0.3379,50),(2508,0.3379,50),(2509,0.3379,50),(2512,0.3379,50),(2515,0.3379,50),(2516,0.3379,50),(2518,0.3379,50),(2521,0.3379,50),(2523,0.3379,50),(2525,0.3379,50),(2558,0.3379,50),(2562,0.3379,50),(2564,0.3379,50),(2583,0.3379,50),(2591,0.3379,50),(2608,0.3379,50),(2680,0.3379,50),(2869,0.3379,50),(2896,0.3379,50),(2959,0.3379,50),(2970,0.3379,50),(2973,0.3379,50),(2979,0.3379,50),(2980,0.3379,50),(2983,0.3379,50),(2984,0.3379,50),(2993,0.3379,50),(3003,0.3379,50),(3133,0.3379,50),(3135,0.3379,50),(3140,0.3379,50),(3141,0.3379,50),(3143,0.3379,50),(3145,0.3379,50),(3227,0.3379,50),(3230,0.3379,50),(3234,0.3379,50),(3257,0.3379,50),(3260,0.3379,50),(3268,0.3379,50),(3269,0.3379,50),(3270,0.3379,50),(3287,0.3379,50),(3288,0.3379,50),(3289,0.3379,50),(3290,0.3379,50),(3291,0.3379,50),(3292,0.3379,50),(3318,0.3379,50),(3319,0.3379,50),(3320,0.3379,50),(3321,0.3379,50),(3323,0.3379,50),(3329,0.3379,50),(3330,0.3379,50),(3335,0.3379,50),(3344,0.3379,50),(3345,0.3379,50),(3347,0.3379,50),(3350,0.3379,50),(3356,0.3379,50),(3363,0.3379,50),(3364,0.3379,50),(3365,0.3379,50),(3366,0.3379,50),(3367,0.3379,50),(3368,0.3379,50),(3369,0.3379,50),(3375,0.3379,50),(3377,0.3379,50),(3378,0.3379,50),(3379,0.3379,50),(3448,0.3379,50),(3450,0.3379,50),(3455,0.3379,50),(3463,0.3379,50),(3466,0.3379,50),(3485,0.3379,50),(3486,0.3379,50),(3560,0.3379,50),(3567,0.3379,50),(3582,0.3379,50),(3586,0.3379,50),(3590,0.3379,50),(3591,0.3379,50),(3593,0.3379,50),(3602,0.3379,50),(3611,0.3379,50),(3618,0.3379,50),(3622,0.3379,50),(3624,0.3379,50),(3630,0.3379,50),(3634,0.3379,50),(3641,0.3379,50),(3643,0.3379,50),(3646,0.3379,50),(3647,0.3379,50),(3658,0.3379,50),(3689,0.3379,50),(3694,0.3379,50),(3696,0.3379,50),(3707,0.3379,50),(3708,0.3379,50),(3710,0.3379,50),(3713,0.3379,50),(3715,0.3379,50),(3717,0.3379,50),(3718,0.3379,50),(3722,0.3379,50),(3724,0.3379,50),(3726,0.3379,50),(3728,0.3379,50),(3730,0.3379,50),(3735,0.3379,50),(3768,0.3379,50),(3828,0.3379,50),(3830,0.3379,50),(3834,0.3379,50),(3836,0.3379,50),(3901,0.3379,50),(3904,0.3379,50),(3915,0.3379,50),(3918,0.3379,50),(3931,0.3379,50),(3932,0.3379,50),(3935,0.3379,50),(3938,0.3379,50),(3943,0.3379,50),(3949,0.3379,50),(3961,0.3379,50),(3966,0.3379,50),(3977,0.3379,50),(3978,0.3379,50),(3979,0.3379,50),(3980,0.3379,50),(3983,0.3379,50),(3988,0.3379,50),(4015,0.3379,50),(4017,0.3379,50),(4019,0.3379,50),(4023,0.3379,50),(4025,0.3379,50),(4026,0.3379,50),(4027,0.3379,50),(4054,0.3379,50),(4138,0.3379,50),(4140,0.3379,50),(4144,0.3379,50),(4146,0.3379,50),(4147,0.3379,50),(4217,0.3379,50),(4219,0.3379,50),(4221,0.3379,50),(4230,0.3379,50),(4273,0.3379,50),(4274,0.3379,50),(4277,0.3379,50),(4278,0.3379,50),(4280,0.3379,50),(4282,0.3379,50),(4284,0.3379,50),(4322,0.3379,50),(4323,0.3379,50),(4330,0.3379,50),(4334,0.3379,50),(4337,0.3379,50),(4340,0.3379,50),(4349,0.3379,50),(4393,0.3379,50),(4394,0.3379,50),(4411,0.3379,50),(4412,0.3379,50),(4419,0.3379,50),(4421,0.3379,50),(4433,0.3379,50),(4462,0.3379,50),(4488,0.3379,50),(4490,0.3379,50),(4558,0.3379,50),(4618,0.3379,50),(4619,0.3379,50),(4669,0.3379,50),(4670,0.3379,50),(4673,0.3379,50),(4674,0.3379,50),(4675,0.3379,50),(4677,0.3379,50),(4718,0.3379,50),(4837,0.3379,50),(4840,0.3379,50),(4853,0.3379,50),(4854,0.3379,50),(4855,0.3379,50),(4856,0.3379,50),(4857,0.3379,50),(4858,0.3379,50),(4859,0.3379,50),(4888,0.3379,50),(4894,0.3379,50),(4909,0.3379,50),(4948,0.3379,50),(4951,0.3379,50),(4968,0.3379,50),(4994,0.3379,50),(5036,0.3379,50),(5086,0.3379,50),(5092,0.3379,50),(5129,0.3379,50),(5130,0.3379,50),(5165,0.3379,50),(5365,0.3379,50),(5375,0.3379,50),(5407,0.3379,50),(5429,0.3379,50),(5444,0.3379,50),(5446,0.3379,50),(5499,0.3379,50),(5527,0.3379,50),(5531,0.3379,50),(5533,0.3379,50),(5545,0.3379,50),(5546,0.3379,50),(5552,0.3379,50),(5565,0.3379,50),(5569,0.3379,50),(5572,0.3379,50),(5574,0.3379,50),(5725,0.3379,50),(5783,0.3379,50),(5785,0.3379,50),(5786,0.3379,50),(5807,0.3379,50),(5809,0.3379,50),(5811,0.3379,50),(5814,0.3379,50),(5815,0.3379,50),(5817,0.3379,50),(5821,0.3379,50),(5823,0.3379,50),(5825,0.3379,50),(5829,0.3379,50),(5909,0.3379,50),(5910,0.3379,50),(6435,0.3379,50),(6574,0.3379,50),(6684,0.3379,50),(6703,0.3379,50),(6716,0.3379,50),(6720,0.3379,50),(6724,0.3379,50),(6728,0.3379,50),(6732,0.3379,50),(6739,0.3379,50),(6753,0.3379,50),(6773,0.3379,50),(6792,0.3379,50),(6945,0.3379,50),(6948,0.3379,50),(6951,0.3379,50),(6956,0.3379,50),(6958,0.3379,50),(6960,0.3379,50),(6964,0.3379,50),(7030,0.3379,50),(7309,0.3379,50),(7311,0.3379,50),(7330,0.3379,50),(7369,0.3379,50),(7371,0.3379,50),(7390,0.3379,50),(7589,0.3379,50),(7590,0.3379,50),(7592,0.3379,50),(7596,0.3379,50),(7605,0.3379,50),(7608,0.3379,50),(7610,0.3379,50),(7611,0.3379,50),(7669,0.3379,50),(7729,0.3379,50),(7730,0.3379,50),(7802,0.3379,50),(7834,0.3379,50),(7905,0.3379,50),(7911,0.3379,50),(8185,0.3379,50),(8191,0.3379,50),(8476,0.3379,50),(8489,0.3379,50),(8632,0.3379,50),(8695,0.3379,50),(8761,0.3379,50),(8769,0.3379,50),(8774,0.3379,50),(8779,0.3379,50),(8809,0.3379,50),(9070,0.3379,50),(9255,0.3379,50),(9257,0.3379,50),(9330,0.3379,50),(9346,0.3379,50),(9811,0.3379,50),(9812,0.3379,50),(9813,0.3379,50),(10129,0.3379,50),(10140,0.3379,50),(10211,0.3379,50),(10232,0.3379,50),(10280,0.3379,50),(10281,0.3379,50),(10288,0.3379,50),(10289,0.3379,50),(10293,0.3379,50),(10294,0.3379,50),(10297,0.3379,50),(10298,0.3379,50),(10301,0.3379,50),(10302,0.3379,50),(10305,0.3379,50),(10306,0.3379,50),(10309,0.3379,50),(10310,0.3379,50),(10313,0.3379,50),(10314,0.3379,50),(10322,0.3379,50),(10323,0.3379,50),(10326,0.3379,50),(10327,0.3379,50),(10330,0.3379,50),(10331,0.3379,50),(10334,0.3379,50),(10335,0.3379,50),(10337,0.3379,50),(10346,0.3379,50),(10347,0.3379,50),(10352,0.3379,50),(10353,0.3379,50),(10360,0.3379,50),(10361,0.3379,50),(10368,0.3379,50),(10369,0.3379,50),(10372,0.3379,50),(10373,0.3379,50),(10378,0.3379,50),(10380,0.3379,50),(10385,0.3379,50),(10386,0.3379,50),(10389,0.3379,50),(10390,0.3379,50),(10393,0.3379,50),(10394,0.3379,50),(10396,0.3379,50),(10397,0.3379,50),(10400,0.3379,50),(10401,0.3379,50),(10405,0.3379,50),(10406,0.3379,50),(10410,0.3379,50),(10411,0.3379,50),(10415,0.3379,50),(10416,0.3379,50),(10419,0.3379,50),(10420,0.3379,50),(10423,0.3379,50),(10424,0.3379,50),(10429,0.3379,50),(10430,0.3379,50),(10431,0.3379,50),(10432,0.3379,50),(10455,0.3379,50),(10459,0.3379,50),(10480,0.3379,50),(10481,0.3379,50),(10485,0.3379,50),(10486,0.3379,50),(10490,0.3379,50),(10491,0.3379,50),(10494,0.3379,50),(10495,0.3379,50),(10498,0.3379,50),(10499,0.3379,50),(10502,0.3379,50),(10503,0.3379,50),(10506,0.3379,50),(10507,0.3379,50),(10510,0.3379,50),(10511,0.3379,50),(10514,0.3379,50),(10515,0.3379,50),(10518,0.3379,50),(10519,0.3379,50),(10531,0.3379,50),(10532,0.3379,50),(10533,0.3379,50),(10534,0.3379,50),(10537,0.3379,50),(10538,0.3379,50),(10541,0.3379,50),(10542,0.3379,50),(10549,0.3379,50),(10557,0.3379,50),(10562,0.3379,50),(10591,0.3379,50),(10609,0.3379,50),(10610,0.3379,50),(10633,0.3379,50),(10634,0.3379,50),(10639,0.3379,50),(10640,0.3379,50),(10822,0.3379,50),(10823,0.3379,50),(10895,0.3379,50),(10909,0.3379,50),(10910,0.3379,50),(10941,0.3379,50),(10942,0.3379,50),(10948,0.3379,50),(10955,0.3379,50),(10956,0.3379,50),(10995,0.3379,50),(11015,0.3379,50),(11016,0.3379,50),(11019,0.3379,50),(11020,0.3379,50),(11023,0.3379,50),(11024,0.3379,50),(11026,0.3379,50),(11039,0.3379,50),(11040,0.3379,50),(11041,0.3379,50),(11042,0.3379,50),(11043,0.3379,50),(11073,0.3379,50),(11118,0.3379,50),(11120,0.3379,50),(11122,0.3379,50),(11125,0.3379,50),(11128,0.3379,50),(11131,0.3379,50),(11134,0.3379,50),(11145,0.3379,50),(11148,0.3379,50),(11151,0.3379,50),(11154,0.3379,50),(11285,0.3379,50),(11290,0.3379,50),(11300,0.3379,50),(11304,0.3379,50),(11308,0.3379,50),(11324,0.3379,50),(11392,0.3379,50),(11393,0.3379,50),(11407,0.3379,50),(11458,0.3379,50),(11462,0.3379,50),(11477,0.3379,50),(11478,0.3379,50),(11512,0.3379,50),(11742,0.3379,50),(11744,0.3379,50),(11746,0.3379,50),(11747,0.3379,50),(11810,0.3379,50),(11815,0.3379,50),(11835,0.3379,50),(11890,0.3379,50),(11898,0.3379,50),(11929,0.3379,50),(12430,0.3379,50),(12435,0.3379,50),(12823,0.3379,50),(12916,0.3379,50),(12922,0.3379,50),(12923,0.3379,50),(13337,0.3379,50),(13391,0.3379,50),(13441,0.3379,50),(13442,0.3379,50),(13443,0.3379,50),(13451,0.3379,50),(13452,0.3379,50),(13631,0.3379,50),(13635,0.3379,50),(13639,0.3379,50),(13643,0.3379,50),(13648,0.3379,50),(13653,0.3379,50),(13657,0.3379,50),(13661,0.3379,50),(13890,0.3379,50),(13892,0.3379,50),(13894,0.3379,50),(13896,0.3379,50),(13949,0.3379,50),(13951,0.3379,50),(13953,0.3379,50),(14500,0.3379,50),(14535,0.3379,50),(14536,0.3379,50),(14539,0.3379,50),(14540,0.3379,50),(14545,0.3379,50),(14876,0.3379,50),(14944,0.3379,50),(14946,0.3379,50),(14947,0.3379,50),(15116,0.3379,50),(15143,0.3379,50),(15147,0.3379,50),(15148,0.3379,50),(15173,0.3379,50),(15175,0.3379,50),(15184,0.3379,50),(15186,0.3379,50),(15193,0.3379,50),(15195,0.3379,50),(15253,0.3379,50),(15254,0.3379,50),(15264,0.3379,50),(15282,0.3379,50),(15283,0.3379,50),(15328,0.3379,50),(15332,0.3379,50),(15373,0.3379,50),(15407,0.3379,50),(15449,0.3379,50),(15455,0.3379,50),(15551,0.3379,50),(15594,0.3379,50),(15669,0.3379,50),(15719,0.3379,50),(15745,0.3379,50),(15768,0.3379,50),(15769,0.3379,50),(15777,0.3379,50),(15812,0.3379,50),(15832,0.3379,50),(15834,0.3379,50),(15846,0.3379,50),(15859,0.3379,50),(15861,0.3379,50),(15940,0.3379,50),(15947,0.3379,50),(15950,0.3379,50),(15965,0.3379,50),(15967,0.3379,50),(15999,0.3379,50),(16010,0.3379,50),(16014,0.3379,50),(16016,0.3379,50),(16019,0.3379,50),(16078,0.3379,50),(16094,0.3379,50),(16104,0.3379,50),(16148,0.3379,50),(16152,0.3379,50),(16161,0.3379,50),(16185,0.3379,50),(16186,0.3379,50),(16187,0.3379,50),(16218,0.3379,50),(16230,0.3379,50),(16231,0.3379,50),(16232,0.3379,50),(16322,0.3379,50),(16338,0.3379,50),(16375,0.3379,50),(16388,0.3379,50),(16392,0.3379,50),(16399,0.3379,50),(16400,0.3379,50),(16410,0.3379,50),(16412,0.3379,50),(16420,0.3379,50),(16424,0.3379,50),(16440,0.3379,50),(16441,0.3379,50),(16450,0.3379,50),(16456,0.3379,50),(16457,0.3379,50),(16460,0.3379,50),(16461,0.3379,50),(16466,0.3379,50),(16467,0.3379,50),(16487,0.3379,50),(16488,0.3379,50),(16496,0.3379,50),(16497,0.3379,50),(16499,0.3379,50),(16504,0.3379,50),(16507,0.3379,50),(16511,0.3379,50),(16516,0.3379,50),(16517,0.3379,50),(16520,0.3379,50),(16526,0.3379,50),(16531,0.3379,50),(16537,0.3379,50),(16538,0.3379,50),(16547,0.3379,50),(16548,0.3379,50),(16549,0.3379,50),(16550,0.3379,50),(16551,0.3379,50),(16552,0.3379,50),(16553,0.3379,50),(16554,0.3379,50),(16557,0.3379,50),(16558,0.3379,50),(16561,0.3379,50),(16562,0.3379,50),(16564,0.3379,50),(16565,0.3379,50),(16566,0.3379,50),(16569,0.3379,50),(16596,0.3379,50),(16597,0.3379,50),(16600,0.3379,50),(16601,0.3379,50),(16604,0.3379,50),(16606,0.3379,50),(16627,0.3379,50),(16639,0.3379,50),(16640,0.3379,50),(16963,0.3379,50),(17037,0.3379,50),(17047,0.3379,50),(17068,0.3379,50),(17069,0.3379,50),(17120,0.3379,50),(17121,0.3379,50),(17138,0.3379,50),(17160,0.3379,50),(17172,0.3379,50),(17315,0.3379,50),(17369,0.3379,50),(17947,0.3379,50),(17948,0.3379,50),(17959,0.3379,50),(17960,0.3379,50),(17979,0.3379,50),(17980,0.3379,50),(17999,0.3379,50),(18000,0.3379,50),(18004,0.3379,50),(18005,0.3379,50),(18008,0.3379,50),(18009,0.3379,50),(18044,0.3379,50),(18052,0.3379,50),(18112,0.3379,50),(18121,0.3379,50),(18161,0.3379,50),(18173,0.3379,50),(18234,0.3379,50),(18247,0.3379,50),(18248,0.3379,50),(18252,0.3379,50),(18262,0.3379,50),(18265,0.3379,50),(18266,0.3379,50),(18276,0.3379,50),(18336,0.3379,50),(18337,0.3379,50),(18438,0.3379,50),(18440,0.3379,50),(18447,0.3379,50),(18451,0.3379,50),(18452,0.3379,50),(18472,0.3379,50),(18478,0.3379,50),(18488,0.3379,50),(18618,0.3379,50),(18619,0.3379,50),(18625,0.3379,50),(18663,0.3379,50),(18705,0.3379,50),(18706,0.3379,50),(18707,0.3379,50),(18716,0.3379,50),(18800,0.3379,50),(18858,0.3379,50),(18978,0.3379,50),(18979,0.3379,50),(19002,0.3379,50),(19086,0.3379,50),(19177,0.3379,50),(19229,0.3379,50),(19278,0.3379,50),(19306,0.3379,50),(19307,0.3379,50),(19310,0.3379,50),(19311,0.3379,50),(19327,0.3379,50),(19379,0.3379,50),(19431,0.3379,50),(19481,0.3379,50),(19545,0.3379,50),(19613,0.3379,50),(19615,0.3379,50),(19724,0.3379,50),(19919,0.3379,50),(20036,0.3379,50),(20043,0.3379,50),(20256,0.3379,50),(20378,0.3379,50),(20485,0.3379,50),(20659,0.3379,50),(20664,0.3379,50),(20700,0.3379,50),(20740,0.3379,50),(20840,0.3379,50),(20887,0.3379,50),(20888,0.3379,50),(20889,0.3379,50),(21258,0.3379,50),(21452,0.3379,50),(21453,0.3379,50),(21454,0.3379,50),(21459,0.3379,50),(21480,0.3379,50),(21498,0.3379,50),(21534,0.3379,50),(21621,0.3379,50),(21645,0.3379,50),(21647,0.3379,50),(21650,0.3379,50),(21667,0.3379,50),(21704,0.3379,50),(21740,0.3379,50),(21743,0.3379,50),(21818,0.3379,50),(21821,0.3379,50),(21858,0.3379,50),(21860,0.3379,50),(22370,0.3379,50),(22385,0.3379,50),(22403,0.3379,50),(22504,0.3379,50),(22560,0.3379,50),(22616,0.3379,50),(22660,0.3379,50),(22665,0.3379,50),(22666,0.3379,50),(22687,0.3379,50),(22815,0.3379,50),(22821,0.3379,50),(23503,0.3379,50),(23666,0.3379,50),(23737,0.3379,50),(16875,1.67815,2284),(17808,1.67815,2284),(17857,1.67815,2284),(17858,1.67815,2284),(17859,1.67815,2284),(17860,1.67815,2284),(17876,1.67815,2284),(18518,1.67815,2284),(18628,1.67815,2284),(18633,1.67815,2284),(20137,1.67815,2284),(20148,1.67815,2284),(20151,1.67815,2284),(20152,1.67815,2284),(20153,1.67815,2284),(20154,1.67815,2284),(20271,1.67815,2284),(20273,1.67815,2284),(20536,1.67815,2284),(20548,1.67815,2284),(20573,1.67815,2284),(20574,1.67815,2284),(20586,1.67815,2284),(20598,1.67815,2284),(20817,1.67815,2284),(20819,1.67815,2284),(20864,1.67815,2284),(21032,1.67815,2284),(21173,1.67815,2284),(21214,1.67815,2284),(21352,1.67815,2284),(14329,1.74841,1912),(14330,1.74841,1912),(14331,1.74841,1912),(14332,1.74841,1912),(14333,1.74841,1912),(14632,1.74841,1912),(15290,1.74841,1912),(15432,2.14659,2205),(1824,0.723037,207),(1825,0.723037,207),(6148,0.723037,207),(6197,0.723037,207),(8175,0.723037,207),(10045,0.723037,207),(12432,0.723037,207),(12769,0.723037,207),(16587,0.723037,207),(17070,0.723037,207),(17607,0.723037,207),(19304,0.723037,207),(20544,0.723037,207),(20594,0.723037,207),(20608,0.723037,207),(21269,0.723037,207),(21302,0.723037,207),(15788,1.66768,2226),(15948,1.66768,2226),(60,0.704947,60),(1322,0.704947,60),(1905,0.704947,60),(1942,0.704947,60),(2107,0.704947,60),(2108,0.704947,60),(2109,0.704947,60),(2110,0.704947,60),(2111,0.704947,60),(2112,0.704947,60),(2113,0.704947,60),(2114,0.704947,60),(2115,0.704947,60),(2116,0.704947,60),(2117,0.704947,60),(2118,0.704947,60),(2119,0.704947,60),(2120,0.704947,60),(2121,0.704947,60),(2122,0.704947,60),(2123,0.704947,60),(2124,0.704947,60),(2125,0.704947,60),(2126,0.704947,60),(2127,0.704947,60),(2132,0.704947,60),(2133,0.704947,60),(2178,0.704947,60),(2412,0.704947,60),(2579,0.704947,60),(2901,0.704947,60),(3000,0.704947,60),(3770,0.704947,60),(3772,0.704947,60),(3779,0.704947,60),(3780,0.704947,60),(3781,0.704947,60),(3784,0.704947,60),(3797,0.704947,60),(3798,0.704947,60),(3806,0.704947,60),(3807,0.704947,60),(3820,0.704947,60),(3841,0.704947,60),(3848,0.704947,60),(3867,0.704947,60),(3875,0.704947,60),(3893,0.704947,60),(3896,0.704947,60),(4263,0.704947,60),(4375,0.704947,60),(4383,0.704947,60),(4510,0.704947,60),(4513,0.704947,60),(4529,0.704947,60),(4533,0.704947,60),(4538,0.704947,60),(4541,0.704947,60),(4605,0.704947,60),(4614,0.704947,60),(4695,0.704947,60),(5371,0.704947,60),(5487,0.704947,60),(5506,0.704947,60),(5847,0.704947,60),(6554,0.704947,60),(6831,0.704947,60),(6833,0.704947,60),(6835,0.704947,60),(7116,0.704947,60),(7248,0.704947,60),(7358,0.704947,60),(7359,0.704947,60),(7363,0.704947,60),(7365,0.704947,60),(7376,0.704947,60),(7378,0.704947,60),(7599,0.704947,60),(7615,0.704947,60),(7621,0.704947,60),(7625,0.704947,60),(7627,0.704947,60),(7628,0.704947,60),(7870,0.704947,60),(7936,0.704947,60),(8356,0.704947,60),(8572,0.704947,60),(8660,0.704947,60),(9025,0.704947,60),(9254,0.704947,60),(9269,0.704947,60),(9347,0.704947,60),(9392,0.704947,60),(10051,0.704947,60),(10052,0.704947,60),(10092,0.704947,60),(10093,0.704947,60),(10149,0.704947,60),(10153,0.704947,60),(10180,0.704947,60),(10223,0.704947,60),(10224,0.704947,60),(10227,0.704947,60),(10228,0.704947,60),(10233,0.704947,60),(10234,0.704947,60),(10238,0.704947,60),(10239,0.704947,60),(10253,0.704947,60),(10564,0.704947,60),(10623,0.704947,60),(10652,0.704947,60),(10692,0.704947,60),(10734,0.704947,60),(10737,0.704947,60),(11280,0.704947,60),(11673,0.704947,60),(11681,0.704947,60),(11687,0.704947,60),(11770,0.704947,60),(11771,0.704947,60),(11775,0.704947,60),(11789,0.704947,60),(11796,0.704947,60),(11875,0.704947,60),(11877,0.704947,60),(11879,0.704947,60),(11881,0.704947,60),(11883,0.704947,60),(11885,0.704947,60),(11888,0.704947,60),(11889,0.704947,60),(12059,0.704947,60),(12084,0.704947,60),(12675,0.704947,60),(12948,0.704947,60),(12970,0.704947,60),(12976,0.704947,60),(13304,0.704947,60),(13309,0.704947,60),(13339,0.704947,60),(13368,0.704947,60),(13401,0.704947,60),(13478,0.704947,60),(13542,0.704947,60),(13562,0.704947,60),(13566,0.704947,60),(13570,0.704947,60),(13574,0.704947,60),(13819,0.704947,60),(13820,0.704947,60),(13823,0.704947,60),(13824,0.704947,60),(13830,0.704947,60),(13832,0.704947,60),(13834,0.704947,60),(13836,0.704947,60),(14305,0.704947,60),(14306,0.704947,60),(15246,0.704947,60),(15341,0.704947,60),(15353,0.704947,60),(15472,0.704947,60),(15541,0.704947,60),(15607,0.704947,60),(15608,0.704947,60),(15619,0.704947,60),(15628,0.704947,60),(15631,0.704947,60),(15633,0.704947,60),(15645,0.704947,60),(15647,0.704947,60),(15664,0.704947,60),(15721,0.704947,60),(15730,0.704947,60),(15754,0.704947,60),(15772,0.704947,60),(15773,0.704947,60),(15815,0.704947,60),(15828,0.704947,60),(15830,0.704947,60),(15857,0.704947,60),(15865,0.704947,60),(15876,0.704947,60),(15877,0.704947,60),(15957,0.704947,60),(16281,0.704947,60),(16334,0.704947,60),(16442,0.704947,60),(16588,0.704947,60),(16739,0.704947,60),(17471,0.704947,60),(17529,0.704947,60),(17566,0.704947,60),(17850,0.704947,60),(18806,0.704947,60),(18871,0.704947,60),(18918,0.704947,60),(18991,0.704947,60),(19183,0.704947,60),(19425,0.704947,60),(19520,0.704947,60),(20584,0.704947,60),(20619,0.704947,60),(20886,0.704947,60),(20994,0.704947,60),(21089,0.704947,60),(21172,0.704947,60),(21655,0.704947,60),(21656,0.704947,60),(21660,0.704947,60),(21680,0.704947,60),(21871,0.704947,60),(21873,0.704947,60),(22376,0.704947,60),(22564,0.704947,60),(22693,0.704947,60),(22807,0.704947,60),(23130,0.704947,60),(23452,0.704947,60),(23661,0.704947,60),(21484,6.33383,2582),(4805,1.73883,457),(6079,1.73883,457),(6080,1.73883,457),(6442,1.73883,457),(6443,1.73883,457),(6444,1.73883,457),(6447,1.73883,457),(6448,1.73883,457),(9695,1.73883,457),(9714,1.73883,457),(9952,1.73883,457),(9991,1.73883,457),(10426,1.73883,457),(17642,1.39647,2371),(17643,1.39647,2371),(17716,1.39647,2371),(18310,1.39647,2371),(18502,1.39647,2371),(18503,1.39647,2371),(18504,1.39647,2371),(18533,1.39647,2371),(18534,1.39647,2371),(18833,1.39647,2371),(18834,1.39647,2371),(19694,1.39647,2371),(19850,1.39647,2371),(19852,1.39647,2371),(19853,1.39647,2371),(19855,1.39647,2371),(19856,1.39647,2371),(19857,1.39647,2371),(19858,1.39647,2371),(19859,1.39647,2371),(19860,1.39647,2371),(19861,1.39647,2371),(19862,1.39647,2371),(19863,1.39647,2371),(19864,1.39647,2371),(19865,1.39647,2371),(19866,1.39647,2371),(19867,1.39647,2371),(19868,1.39647,2371),(19876,1.39647,2371),(20069,1.39647,2371),(20144,1.39647,2371),(20238,1.39647,2371),(20760,1.39647,2371),(22734,1.39647,2371),(17006,1.67815,2311),(17805,1.67815,2311),(17864,1.67815,2311),(18012,1.67815,2311),(18347,1.67815,2311),(18480,1.67815,2311),(18485,1.67815,2311),(18489,1.67815,2311),(18517,1.67815,2311),(18728,1.67815,2311),(20260,1.67815,2311),(20272,1.67815,2311),(20278,1.67815,2311),(20572,1.67815,2311),(21211,1.67815,2311),(21261,1.67815,2311),(23447,2.50463,2705),(10056,0.518207,1391),(15512,0.518207,1391),(20245,0.518207,1391),(20345,0.518207,1391),(20349,0.518207,1391),(10005,0.471287,1351),(10375,0.499118,2208),(15476,0.499118,2208),(15504,0.499118,2208),(15515,0.499118,2208),(15517,0.499118,2208),(15519,0.499118,2208),(15521,0.499118,2208),(15524,0.499118,2208),(15528,0.499118,2208),(15532,0.499118,2208),(15906,0.499118,2208),(15909,0.499118,2208),(15912,0.499118,2208),(15914,0.499118,2208),(15915,0.499118,2208),(15916,0.499118,2208),(15936,0.499118,2208),(16037,0.499118,2208),(16047,0.499118,2208),(16055,0.499118,2208),(16057,0.499118,2208),(16058,0.499118,2208),(16067,0.499118,2208),(16068,0.499118,2208),(16070,0.499118,2208),(16079,0.499118,2208),(16083,0.499118,2208),(16088,0.499118,2208),(16103,0.499118,2208),(16112,0.499118,2208),(16118,0.499118,2208),(16123,0.499118,2208),(16134,0.499118,2208),(16182,0.499118,2208),(16184,0.499118,2208),(16192,0.499118,2208),(16207,0.499118,2208),(16248,0.499118,2208),(16250,0.499118,2208),(16265,0.499118,2208),(16285,0.499118,2208),(16286,0.499118,2208),(16287,0.499118,2208),(16319,0.499118,2208),(16469,0.499118,2208),(16470,0.499118,2208),(16471,0.499118,2208),(16472,0.499118,2208),(16624,0.499118,2208),(16625,0.499118,2208),(16626,0.499118,2208),(16648,0.499118,2208),(16655,0.499118,2208),(16658,0.499118,2208),(16692,0.499118,2208),(16693,0.499118,2208),(16697,0.499118,2208),(16699,0.499118,2208),(16700,0.499118,2208),(16701,0.499118,2208),(16702,0.499118,2208),(16703,0.499118,2208),(16704,0.499118,2208),(16705,0.499118,2208),(16706,0.499118,2208),(16707,0.499118,2208),(16708,0.499118,2208),(16710,0.499118,2208),(16712,0.499118,2208),(16714,0.499118,2208),(16715,0.499118,2208),(16717,0.499118,2208),(16719,0.499118,2208),(16720,0.499118,2208),(16734,0.499118,2208),(16735,0.499118,2208),(16746,0.499118,2208),(16747,0.499118,2208),(16755,0.499118,2208),(16756,0.499118,2208),(16757,0.499118,2208),(16758,0.499118,2208),(16759,0.499118,2208),(16761,0.499118,2208),(16762,0.499118,2208),(16766,0.499118,2208),(16767,0.499118,2208),(16768,0.499118,2208),(16769,0.499118,2208),(16770,0.499118,2208),(16771,0.499118,2208),(16772,0.499118,2208),(16773,0.499118,2208),(16787,0.499118,2208),(16788,0.499118,2208),(16808,0.499118,2208),(16809,0.499118,2208),(16810,0.499118,2208),(16811,0.499118,2208),(16813,0.499118,2208),(16814,0.499118,2208),(16815,0.499118,2208),(16816,0.499118,2208),(16817,0.499118,2208),(16818,0.499118,2208),(16819,0.499118,2208),(16821,0.499118,2208),(16822,0.499118,2208),(16823,0.499118,2208),(16824,0.499118,2208),(16825,0.499118,2208),(16826,0.499118,2208),(16827,0.499118,2208),(16828,0.499118,2208),(16829,0.499118,2208),(16830,0.499118,2208),(16831,0.499118,2208),(16832,0.499118,2208),(16847,0.499118,2208),(16848,0.499118,2208),(16849,0.499118,2208),(16851,0.499118,2208),(16852,0.499118,2208),(16918,0.499118,2208),(16954,0.499118,2208),(16955,0.499118,2208),(16983,0.499118,2208),(17115,0.499118,2208),(17122,0.499118,2208),(17159,0.499118,2208),(17168,0.499118,2208),(17198,0.499118,2208),(17199,0.499118,2208),(17201,0.499118,2208),(17224,0.499118,2208),(17257,0.499118,2208),(17258,0.499118,2208),(17259,0.499118,2208),(17261,0.499118,2208),(17264,0.499118,2208),(17267,0.499118,2208),(17278,0.499118,2208),(17279,0.499118,2208),(17289,0.499118,2208),(17290,0.499118,2208),(17296,0.499118,2208),(17329,0.499118,2208),(17348,0.499118,2208),(17349,0.499118,2208),(17352,0.499118,2208),(17353,0.499118,2208),(17356,0.499118,2208),(17357,0.499118,2208),(17360,0.499118,2208),(17361,0.499118,2208),(17364,0.499118,2208),(17365,0.499118,2208),(17367,0.499118,2208),(17376,0.499118,2208),(17473,0.499118,2208),(17474,0.499118,2208),(17477,0.499118,2208),(17536,0.499118,2208),(17538,0.499118,2208),(17539,0.499118,2208),(17552,0.499118,2208),(17553,0.499118,2208),(17568,0.499118,2208),(17615,0.499118,2208),(17658,0.499118,2208),(17672,0.499118,2208),(17673,0.499118,2208),(17681,0.499118,2208),(17773,0.499118,2208),(17774,0.499118,2208),(17778,0.499118,2208),(17815,0.499118,2208),(17816,0.499118,2208),(17817,0.499118,2208),(17827,0.499118,2208),(17844,0.499118,2208),(17874,0.499118,2208),(17875,0.499118,2208),(17883,0.499118,2208),(17892,0.499118,2208),(17893,0.499118,2208),(17900,0.499118,2208),(17918,0.499118,2208),(17958,0.499118,2208),(17988,0.499118,2208),(18014,0.499118,2208),(18016,0.499118,2208),(18017,0.499118,2208),(18020,0.499118,2208),(18032,0.499118,2208),(18034,0.499118,2208),(18074,0.499118,2208),(18102,0.499118,2208),(18134,0.499118,2208),(18144,0.499118,2208),(18146,0.499118,2208),(18157,0.499118,2208),(18158,0.499118,2208),(18172,0.499118,2208),(18189,0.499118,2208),(18198,0.499118,2208),(18199,0.499118,2208),(18202,0.499118,2208),(18203,0.499118,2208),(18207,0.499118,2208),(18208,0.499118,2208),(18211,0.499118,2208),(18218,0.499118,2208),(18219,0.499118,2208),(18243,0.499118,2208),(18253,0.499118,2208),(18258,0.499118,2208),(18277,0.499118,2208),(18278,0.499118,2208),(18304,0.499118,2208),(18334,0.499118,2208),(18343,0.499118,2208),(18346,0.499118,2208),(18432,0.499118,2208),(18435,0.499118,2208),(18520,0.499118,2208),(18562,0.499118,2208),(18563,0.499118,2208),(18655,0.499118,2208),(18661,0.499118,2208),(18674,0.499118,2208),(18675,0.499118,2208),(18676,0.499118,2208),(18682,0.499118,2208),(18683,0.499118,2208),(18754,0.499118,2208),(18756,0.499118,2208),(18759,0.499118,2208),(18760,0.499118,2208),(18761,0.499118,2208),(18762,0.499118,2208),(18764,0.499118,2208),(18765,0.499118,2208),(18766,0.499118,2208),(18769,0.499118,2208),(18771,0.499118,2208),(18772,0.499118,2208),(18773,0.499118,2208),(18793,0.499118,2208),(18828,0.499118,2208),(18829,0.499118,2208),(18841,0.499118,2208),(18881,0.499118,2208),(18906,0.499118,2208),(18908,0.499118,2208),(18924,0.499118,2208),(18925,0.499118,2208),(18940,0.499118,2208),(18941,0.499118,2208),(18942,0.499118,2208),(18943,0.499118,2208),(18949,0.499118,2208),(18950,0.499118,2208),(18952,0.499118,2208),(18972,0.499118,2208),(18980,0.499118,2208),(18982,0.499118,2208),(18984,0.499118,2208),(19008,0.499118,2208),(19045,0.499118,2208),(19049,0.499118,2208),(19051,0.499118,2208),(19052,0.499118,2208),(19055,0.499118,2208),(19056,0.499118,2208),(19084,0.499118,2208),(19111,0.499118,2208),(19117,0.499118,2208),(19118,0.499118,2208),(19123,0.499118,2208),(19124,0.499118,2208),(19143,0.499118,2208),(19150,0.499118,2208),(19157,0.499118,2208),(19170,0.499118,2208),(19192,0.499118,2208),(19202,0.499118,2208),(19205,0.499118,2208),(19209,0.499118,2208),(19237,0.499118,2208),(19238,0.499118,2208),(19267,0.499118,2208),(19317,0.499118,2208),(19322,0.499118,2208),(19323,0.499118,2208),(19336,0.499118,2208),(19384,0.499118,2208),(19385,0.499118,2208),(19386,0.499118,2208),(19388,0.499118,2208),(19390,0.499118,2208),(19392,0.499118,2208),(19394,0.499118,2208),(19396,0.499118,2208),(19398,0.499118,2208),(19402,0.499118,2208),(19409,0.499118,2208),(19411,0.499118,2208),(19412,0.499118,2208),(19423,0.499118,2208),(19439,0.499118,2208),(19440,0.499118,2208),(19445,0.499118,2208),(19446,0.499118,2208),(19448,0.499118,2208),(19449,0.499118,2208),(19452,0.499118,2208),(19453,0.499118,2208),(19459,0.499118,2208),(19460,0.499118,2208),(19463,0.499118,2208),(19467,0.499118,2208),(19468,0.499118,2208),(19469,0.499118,2208),(19470,0.499118,2208),(19472,0.499118,2208),(19474,0.499118,2208),(19489,0.499118,2208),(19490,0.499118,2208),(19492,0.499118,2208),(19494,0.499118,2208),(19495,0.499118,2208),(19499,0.499118,2208),(19503,0.499118,2208),(19507,0.499118,2208),(19513,0.499118,2208),(19515,0.499118,2208),(19516,0.499118,2208),(19576,0.499118,2208),(19577,0.499118,2208),(19578,0.499118,2208),(19622,0.499118,2208),(19623,0.499118,2208),(19624,0.499118,2208),(19625,0.499118,2208),(19683,0.499118,2208),(19698,0.499118,2208),(19703,0.499118,2208),(19706,0.499118,2208),(19707,0.499118,2208),(19737,0.499118,2208),(19744,0.499118,2208),(19795,0.499118,2208),(19798,0.499118,2208),(19801,0.499118,2208),(19802,0.499118,2208),(19805,0.499118,2208),(19807,0.499118,2208),(19808,0.499118,2208),(19813,0.499118,2208),(19814,0.499118,2208),(19815,0.499118,2208),(19817,0.499118,2208),(19821,0.499118,2208),(19822,0.499118,2208),(19824,0.499118,2208),(19825,0.499118,2208),(19827,0.499118,2208),(19829,0.499118,2208),(19831,0.499118,2208),(19833,0.499118,2208),(19835,0.499118,2208),(19837,0.499118,2208),(19840,0.499118,2208),(19903,0.499118,2208),(19920,0.499118,2208),(19965,0.499118,2208),(19966,0.499118,2208),(19970,0.499118,2208),(19990,0.499118,2208),(19993,0.499118,2208),(20033,0.499118,2208),(20060,0.499118,2208),(20095,0.499118,2208),(20096,0.499118,2208),(20128,0.499118,2208),(20130,0.499118,2208),(20131,0.499118,2208),(20132,0.499118,2208),(20133,0.499118,2208),(20134,0.499118,2208),(20177,0.499118,2208),(20178,0.499118,2208),(20179,0.499118,2208),(20218,0.499118,2208),(20236,0.499118,2208),(20266,0.499118,2208),(20275,0.499118,2208),(20277,0.499118,2208),(20310,0.499118,2208),(20311,0.499118,2208),(20335,0.499118,2208),(20336,0.499118,2208),(20339,0.499118,2208),(20340,0.499118,2208),(20343,0.499118,2208),(20350,0.499118,2208),(20351,0.499118,2208),(20354,0.499118,2208),(20355,0.499118,2208),(20360,0.499118,2208),(20361,0.499118,2208),(20368,0.499118,2208),(20369,0.499118,2208),(20434,0.499118,2208),(20435,0.499118,2208),(20436,0.499118,2208),(20455,0.499118,2208),(20458,0.499118,2208),(20514,0.499118,2208),(20578,0.499118,2208),(20631,0.499118,2208),(20633,0.499118,2208),(20649,0.499118,2208),(20674,0.499118,2208),(20676,0.499118,2208),(20677,0.499118,2208),(20707,0.499118,2208),(20708,0.499118,2208),(20712,0.499118,2208),(20713,0.499118,2208),(20716,0.499118,2208),(20717,0.499118,2208),(20720,0.499118,2208),(20721,0.499118,2208),(20756,0.499118,2208),(20757,0.499118,2208),(20758,0.499118,2208),(20759,0.499118,2208),(20765,0.499118,2208),(20773,0.499118,2208),(20774,0.499118,2208),(20778,0.499118,2208),(20779,0.499118,2208),(20780,0.499118,2208),(20791,0.499118,2208),(20792,0.499118,2208),(20813,0.499118,2208),(20978,0.499118,2208),(21007,0.499118,2208),(21008,0.499118,2208),(21009,0.499118,2208),(21010,0.499118,2208),(21011,0.499118,2208),(21015,0.499118,2208),(21016,0.499118,2208),(21017,0.499118,2208),(21086,0.499118,2208),(21176,0.499118,2208),(21194,0.499118,2208),(21198,0.499118,2208),(21205,0.499118,2208),(21206,0.499118,2208),(21215,0.499118,2208),(21229,0.499118,2208),(21230,0.499118,2208),(21264,0.499118,2208),(21312,0.499118,2208),(21331,0.499118,2208),(21333,0.499118,2208),(21334,0.499118,2208),(21337,0.499118,2208),(21341,0.499118,2208),(21416,0.499118,2208),(21417,0.499118,2208),(21418,0.499118,2208),(21445,0.499118,2208),(21463,0.499118,2208),(21466,0.499118,2208),(21467,0.499118,2208),(21468,0.499118,2208),(21469,0.499118,2208),(21501,0.499118,2208),(21504,0.499118,2208),(21505,0.499118,2208),(21506,0.499118,2208),(21509,0.499118,2208),(21513,0.499118,2208),(21530,0.499118,2208),(21531,0.499118,2208),(21532,0.499118,2208),(21557,0.499118,2208),(21560,0.499118,2208),(21561,0.499118,2208),(21562,0.499118,2208),(21563,0.499118,2208),(21564,0.499118,2208),(21565,0.499118,2208),(21568,0.499118,2208),(21569,0.499118,2208),(21572,0.499118,2208),(21605,0.499118,2208),(21623,0.499118,2208),(21675,0.499118,2208),(21682,0.499118,2208),(21703,0.499118,2208),(21839,0.499118,2208),(21841,0.499118,2208),(21882,0.499118,2208),(22361,0.499118,2208),(22405,0.499118,2208),(22426,0.499118,2208),(22430,0.499118,2208),(22513,0.499118,2208),(22539,0.499118,2208),(22540,0.499118,2208),(22554,0.499118,2208),(22580,0.499118,2208),(22583,0.499118,2208),(22584,0.499118,2208),(22585,0.499118,2208),(22586,0.499118,2208),(22680,0.499118,2208),(22735,0.499118,2208),(22736,0.499118,2208),(22749,0.499118,2208),(22752,0.499118,2208),(22757,0.499118,2208),(22758,0.499118,2208),(22759,0.499118,2208),(22774,0.499118,2208),(22782,0.499118,2208),(22783,0.499118,2208),(22786,0.499118,2208),(22787,0.499118,2208),(22792,0.499118,2208),(22793,0.499118,2208),(22805,0.499118,2208),(22817,0.499118,2208),(22834,0.499118,2208),(22839,0.499118,2208),(22846,0.499118,2208),(22856,0.499118,2208),(22857,0.499118,2208),(22861,0.499118,2208),(22911,0.499118,2208),(22912,0.499118,2208),(22913,0.499118,2208),(22914,0.499118,2208),(22923,0.499118,2208),(22924,0.499118,2208),(22928,0.499118,2208),(22930,0.499118,2208),(22931,0.499118,2208),(22932,0.499118,2208),(22933,0.499118,2208),(22934,0.499118,2208),(22952,0.499118,2208),(22953,0.499118,2208),(22964,0.499118,2208),(22969,0.499118,2208),(22970,0.499118,2208),(22994,0.499118,2208),(23003,0.499118,2208),(23084,0.499118,2208),(23087,0.499118,2208),(23090,0.499118,2208),(23091,0.499118,2208),(23094,0.499118,2208),(23153,0.499118,2208),(23154,0.499118,2208),(23156,0.499118,2208),(23157,0.499118,2208),(23158,0.499118,2208),(23159,0.499118,2208),(23161,0.499118,2208),(23290,0.499118,2208),(23291,0.499118,2208),(23450,0.499118,2208),(23526,0.499118,2208),(23529,0.499118,2208),(23530,0.499118,2208),(23533,0.499118,2208),(23536,0.499118,2208),(23539,0.499118,2208),(23542,0.499118,2208),(23545,0.499118,2208),(23559,0.499118,2208),(23590,0.499118,2208),(23592,0.499118,2208),(23596,0.499118,2208),(23667,0.499118,2208),(23714,0.499118,2208),(17005,1.67815,2310),(17080,1.67815,2310),(17573,1.67815,2310),(17806,1.67815,2310),(17809,1.67815,2310),(17865,1.67815,2310),(17866,1.67815,2310),(17867,1.67815,2310),(17868,1.67815,2310),(17869,1.67815,2310),(17877,1.67815,2310),(17879,1.67815,2310),(18434,1.67815,2310),(18516,1.67815,2310),(18519,1.67815,2310),(18632,1.67815,2310),(18634,1.67815,2310),(18635,1.67815,2310),(18636,1.67815,2310),(19604,1.67815,2310),(19605,1.67815,2310),(19606,1.67815,2310),(20259,1.67815,2310),(20274,1.67815,2310),(20276,1.67815,2310),(20471,1.67815,2310),(20575,1.67815,2310),(20576,1.67815,2310),(20587,1.67815,2310),(20599,1.67815,2310),(20601,1.67815,2310),(20602,1.67815,2310),(20603,1.67815,2310),(20682,1.67815,2310),(20683,1.67815,2310),(20766,1.67815,2310),(20818,1.67815,2310),(20821,1.67815,2310),(20874,1.67815,2310),(20881,1.67815,2310),(20883,1.67815,2310),(20885,1.67815,2310),(20957,1.67815,2310),(21140,1.67815,2310),(21141,1.67815,2310),(21168,1.67815,2310),(21298,1.67815,2310),(21324,1.67815,2310),(21325,1.67815,2310),(22418,1.67815,2310),(20239,1.4356,2514),(20281,1.4356,2514),(20399,1.4356,2514),(20400,1.4356,2514),(20401,1.4356,2514),(20402,1.4356,2514),(20403,1.4356,2514),(20404,1.4356,2514),(20405,1.4356,2514),(20406,1.4356,2514),(20407,1.4356,2514),(20408,1.4356,2514),(20409,1.4356,2514),(20410,1.4356,2514),(20411,1.4356,2514),(20412,1.4356,2514),(20413,1.4356,2514),(20414,1.4356,2514),(20415,1.4356,2514),(20456,1.4356,2514),(20473,1.4356,2514),(20554,1.4356,2514),(20555,1.4356,2514),(20556,1.4356,2514),(21391,1.4356,2514),(21394,1.4356,2514),(21412,1.4356,2514),(18402,3.1579,2411),(18996,3.1579,2411),(20011,3.1579,2411),(20841,3.1579,2411),(17202,4.81064,2332),(11641,5.19694,1711),(12240,5.19694,1711),(12241,5.19694,1711),(12242,5.19694,1711),(12244,5.19694,1711),(12245,5.19694,1711),(12246,5.19694,1711),(12247,5.19694,1711),(19023,5.19694,1711),(19024,5.19694,1711),(19025,5.19694,1711),(19026,5.19694,1711),(14348,5.3629,1914),(14349,5.3629,1914),(14578,5.3629,1914),(14579,5.3629,1914),(19027,5.3629,1914),(1478,0.719317,185),(1759,0.719317,185),(1976,0.719317,185),(2025,0.719317,185),(2588,0.719317,185),(2735,0.719317,185),(2888,0.719317,185),(2898,0.719317,185),(3608,0.719317,185),(3986,0.719317,185),(3991,0.719317,185),(3993,0.719317,185),(3995,0.719317,185),(3997,0.719317,185),(4000,0.719317,185),(4001,0.719317,185),(4003,0.719317,185),(4013,0.719317,185),(4033,0.719317,185),(4047,0.719317,185),(4066,0.719317,185),(4068,0.719317,185),(4070,0.719317,185),(4071,0.719317,185),(4072,0.719317,185),(4073,0.719317,185),(4074,0.719317,185),(4075,0.719317,185),(4076,0.719317,185),(4078,0.719317,185),(4079,0.719317,185),(4081,0.719317,185),(4082,0.719317,185),(4083,0.719317,185),(4086,0.719317,185),(4092,0.719317,185),(4093,0.719317,185),(4094,0.719317,185),(4095,0.719317,185),(4096,0.719317,185),(4097,0.719317,185),(4098,0.719317,185),(4099,0.719317,185),(4100,0.719317,185),(4102,0.719317,185),(4104,0.719317,185),(4105,0.719317,185),(4228,0.719317,185),(4239,0.719317,185),(4242,0.719317,185),(4255,0.719317,185),(4359,0.719317,185),(4360,0.719317,185),(4361,0.719317,185),(4363,0.719317,185),(4370,0.719317,185),(4475,0.719317,185),(4532,0.719317,185),(4534,0.719317,185),(4537,0.719317,185),(4540,0.719317,185),(4569,0.719317,185),(4570,0.719317,185),(4571,0.719317,185),(4572,0.719317,185),(4573,0.719317,185),(4574,0.719317,185),(4575,0.719317,185),(4576,0.719317,185),(4577,0.719317,185),(4579,0.719317,185),(4580,0.719317,185),(4581,0.719317,185),(4582,0.719317,185),(4584,0.719317,185),(4609,0.719317,185),(4610,0.719317,185),(4616,0.719317,185),(4621,0.719317,185),(4622,0.719317,185),(4623,0.719317,185),(4624,0.719317,185),(4625,0.719317,185),(4627,0.719317,185),(4628,0.719317,185),(4632,0.719317,185),(4633,0.719317,185),(4634,0.719317,185),(4635,0.719317,185),(4638,0.719317,185),(4639,0.719317,185),(4661,0.719317,185),(4663,0.719317,185),(4690,0.719317,185),(4711,0.719317,185),(4769,0.719317,185),(4771,0.719317,185),(4773,0.719317,185),(4776,0.719317,185),(4778,0.719317,185),(4779,0.719317,185),(4781,0.719317,185),(4954,0.719317,185),(5236,0.719317,185),(5370,0.719317,185),(5577,0.719317,185),(5605,0.719317,185),(5606,0.719317,185),(5607,0.719317,185),(5608,0.719317,185),(5609,0.719317,185),(5610,0.719317,185),(5611,0.719317,185),(5612,0.719317,185),(5613,0.719317,185),(5625,0.719317,185),(5626,0.719317,185),(5646,0.719317,185),(5767,0.719317,185),(5779,0.719317,185),(5885,0.719317,185),(6060,0.719317,185),(6411,0.719317,185),(6413,0.719317,185),(6415,0.719317,185),(6417,0.719317,185),(6419,0.719317,185),(6421,0.719317,185),(6423,0.719317,185),(6425,0.719317,185),(6427,0.719317,185),(6429,0.719317,185),(6434,0.719317,185),(6436,0.719317,185),(6439,0.719317,185),(6440,0.719317,185),(6441,0.719317,185),(6479,0.719317,185),(6480,0.719317,185),(6483,0.719317,185),(6485,0.719317,185),(6487,0.719317,185),(6489,0.719317,185),(6491,0.719317,185),(6493,0.719317,185),(6495,0.719317,185),(6497,0.719317,185),(6508,0.719317,185),(6510,0.719317,185),(6512,0.719317,185),(6514,0.719317,185),(6535,0.719317,185),(6538,0.719317,185),(6540,0.719317,185),(6542,0.719317,185),(6590,0.719317,185),(6670,0.719317,185),(6672,0.719317,185),(6675,0.719317,185),(6678,0.719317,185),(6680,0.719317,185),(6682,0.719317,185),(6687,0.719317,185),(6690,0.719317,185),(6693,0.719317,185),(6694,0.719317,185),(6695,0.719317,185),(6696,0.719317,185),(6697,0.719317,185),(6698,0.719317,185),(6699,0.719317,185),(6700,0.719317,185),(6701,0.719317,185),(6702,0.719317,185),(6707,0.719317,185),(6708,0.719317,185),(6709,0.719317,185),(6780,0.719317,185),(6795,0.719317,185),(6839,0.719317,185),(6850,0.719317,185),(6858,0.719317,185),(6872,0.719317,185),(6877,0.719317,185),(6940,0.719317,185),(6997,0.719317,185),(7037,0.719317,185),(7042,0.719317,185),(7328,0.719317,185),(7351,0.719317,185),(7353,0.719317,185),(7631,0.719317,185),(7813,0.719317,185),(7822,0.719317,185),(7902,0.719317,185),(7921,0.719317,185),(8335,0.719317,185),(8349,0.719317,185),(8653,0.719317,185),(8777,0.719317,185),(8780,0.719317,185),(9023,0.719317,185),(9024,0.719317,185),(9235,0.719317,185),(9236,0.719317,185),(9261,0.719317,185),(9291,0.719317,185),(9292,0.719317,185),(9293,0.719317,185),(9336,0.719317,185),(9349,0.719317,185),(9351,0.719317,185),(9578,0.719317,185),(9579,0.719317,185),(9580,0.719317,185),(9674,0.719317,185),(9675,0.719317,185),(9682,0.719317,185),(9683,0.719317,185),(9709,0.719317,185),(9710,0.719317,185),(9715,0.719317,185),(9716,0.719317,185),(9719,0.719317,185),(9720,0.719317,185),(9724,0.719317,185),(9725,0.719317,185),(9728,0.719317,185),(9729,0.719317,185),(9733,0.719317,185),(9764,0.719317,185),(9766,0.719317,185),(9768,0.719317,185),(9769,0.719317,185),(9911,0.719317,185),(9939,0.719317,185),(9940,0.719317,185),(10141,0.719317,185),(10171,0.719317,185),(10251,0.719317,185),(10252,0.719317,185),(10357,0.719317,185),(10434,0.719317,185),(10435,0.719317,185),(10438,0.719317,185),(10441,0.719317,185),(10442,0.719317,185),(10443,0.719317,185),(10444,0.719317,185),(10452,0.719317,185),(10473,0.719317,185),(10660,0.719317,185),(10726,0.719317,185),(11054,0.719317,185),(11055,0.719317,185),(11056,0.719317,185),(11074,0.719317,185),(11075,0.719317,185),(11080,0.719317,185),(11081,0.719317,185),(11100,0.719317,185),(11101,0.719317,185),(11109,0.719317,185),(11110,0.719317,185),(11113,0.719317,185),(11114,0.719317,185),(11158,0.719317,185),(11159,0.719317,185),(11167,0.719317,185),(11168,0.719317,185),(11182,0.719317,185),(11183,0.719317,185),(11189,0.719317,185),(11190,0.719317,185),(11193,0.719317,185),(11194,0.719317,185),(11197,0.719317,185),(11198,0.719317,185),(11201,0.719317,185),(11202,0.719317,185),(11217,0.719317,185),(11218,0.719317,185),(11221,0.719317,185),(11222,0.719317,185),(11225,0.719317,185),(11226,0.719317,185),(11229,0.719317,185),(11230,0.719317,185),(11233,0.719317,185),(11234,0.719317,185),(11237,0.719317,185),(11238,0.719317,185),(11245,0.719317,185),(11246,0.719317,185),(11288,0.719317,185),(11298,0.719317,185),(11311,0.719317,185),(11312,0.719317,185),(11313,0.719317,185),(11314,0.719317,185),(11320,0.719317,185),(11327,0.719317,185),(11443,0.719317,185),(11468,0.719317,185),(11595,0.719317,185),(11667,0.719317,185),(11745,0.719317,185),(11749,0.719317,185),(11758,0.719317,185),(11759,0.719317,185),(11762,0.719317,185),(11763,0.719317,185),(11817,0.719317,185),(11820,0.719317,185),(12035,0.719317,185),(12036,0.719317,185),(12039,0.719317,185),(12041,0.719317,185),(12390,0.719317,185),(12671,0.719317,185),(12709,0.719317,185),(12829,0.719317,185),(12832,0.719317,185),(12849,0.719317,185),(12934,0.719317,185),(12953,0.719317,185),(12956,0.719317,185),(12960,0.719317,185),(12989,0.719317,185),(13089,0.719317,185),(13469,0.719317,185),(14013,0.719317,185),(14014,0.719317,185),(14017,0.719317,185),(14018,0.719317,185),(14021,0.719317,185),(14022,0.719317,185),(14026,0.719317,185),(14027,0.719317,185),(14030,0.719317,185),(14031,0.719317,185),(14034,0.719317,185),(14035,0.719317,185),(14052,0.719317,185),(14053,0.719317,185),(14056,0.719317,185),(14057,0.719317,185),(14061,0.719317,185),(14063,0.719317,185),(14064,0.719317,185),(14072,0.719317,185),(14232,0.719317,185),(14760,0.719317,185),(14761,0.719317,185),(14764,0.719317,185),(14765,0.719317,185),(14766,0.719317,185),(14770,0.719317,185),(14772,0.719317,185),(14773,0.719317,185),(14786,0.719317,185),(14877,0.719317,185),(14993,0.719317,185),(14995,0.719317,185),(14997,0.719317,185),(14998,0.719317,185),(15000,0.719317,185),(15003,0.719317,185),(15004,0.719317,185),(15012,0.719317,185),(15144,0.719317,185),(15205,0.719317,185),(15210,0.719317,185),(15211,0.719317,185),(15216,0.719317,185),(15217,0.719317,185),(15233,0.719317,185),(15267,0.719317,185),(15268,0.719317,185),(15269,0.719317,185),(15424,0.719317,185),(15502,0.719317,185),(15543,0.719317,185),(15574,0.719317,185),(15575,0.719317,185),(15577,0.719317,185),(15578,0.719317,185),(15701,0.719317,185),(15731,0.719317,185),(15737,0.719317,185),(15757,0.719317,185),(15814,0.719317,185),(15840,0.719317,185),(15893,0.719317,185),(15979,0.719317,185),(16283,0.719317,185),(16295,0.719317,185),(16297,0.719317,185),(16340,0.719317,185),(16446,0.719317,185),(17272,0.719317,185),(17335,0.719317,185),(17336,0.719317,185),(17414,0.719317,185),(17415,0.719317,185),(17416,0.719317,185),(17417,0.719317,185),(17418,0.719317,185),(17426,0.719317,185),(17565,0.719317,185),(17630,0.719317,185),(17631,0.719317,185),(17632,0.719317,185),(17633,0.719317,185),(17634,0.719317,185),(17807,0.719317,185),(17985,0.719317,185),(18124,0.719317,185),(18308,0.719317,185),(18664,0.719317,185),(18694,0.719317,185),(18714,0.719317,185),(18809,0.719317,185),(18874,0.719317,185),(18912,0.719317,185),(19186,0.719317,185),(19208,0.719317,185),(19429,0.719317,185),(19430,0.719317,185),(19666,0.719317,185),(20145,0.719317,185),(20240,0.719317,185),(20321,0.719317,185),(20459,0.719317,185),(20472,0.719317,185),(21292,0.719317,185),(21294,0.719317,185),(21329,0.719317,185),(21497,0.719317,185),(21677,0.719317,185),(21738,0.719317,185),(21767,0.719317,185),(21875,0.719317,185),(21877,0.719317,185),(21893,0.719317,185),(21934,0.719317,185),(22118,0.719317,185),(22128,0.719317,185),(22211,0.719317,185),(22379,0.719317,185),(22435,0.719317,185),(22489,0.719317,185),(22492,0.719317,185),(22493,0.719317,185),(22572,0.719317,185),(22696,0.719317,185),(22887,0.719317,185),(22962,0.719317,185),(22983,0.719317,185),(23671,0.719317,185),(23735,0.719317,185),(23775,0.719317,185),(16892,4.15336,2291),(16893,4.15336,2291),(16894,4.15336,2291),(16895,4.15336,2291),(16896,4.15336,2291),(19754,4.15336,2291),(19763,4.15336,2291),(20247,4.15336,2291),(20265,4.15336,2291),(17457,1.15031,2278),(18288,1.15031,2278),(18621,1.15031,2278),(18817,1.15031,2278),(18818,1.15031,2278),(18819,1.15031,2278),(19189,1.15031,2278),(19190,1.15031,2278),(19590,1.15031,2278),(19593,1.15031,2278),(19961,1.15031,2278),(20538,1.15031,2278),(20673,1.15031,2278),(5107,2.14519,692),(5988,2.14519,692),(6589,2.14519,692),(18916,2.57097,2449),(19372,2.57097,2449),(19579,2.57097,2449),(19877,2.57097,2449),(19878,2.57097,2449),(20217,2.57097,2449),(20358,2.57097,2449),(20525,2.57097,2449),(20526,2.57097,2449),(20527,2.57097,2449),(20528,2.57097,2449),(20529,2.57097,2449),(20532,2.57097,2449),(20590,2.57097,2449),(20929,2.57097,2449),(21350,2.57097,2449),(21351,2.57097,2449),(21395,2.57097,2449),(21447,2.57097,2449),(21586,2.57097,2449),(23266,2.57097,2449),(22653,1.59441,2647),(16324,0.819198,2263),(16331,0.819198,2263),(16473,0.819198,2263),(16474,0.819198,2263),(16475,0.819198,2263),(17406,0.819198,2263),(19746,1.14505,2503),(19747,1.14505,2503),(19756,1.14505,2503),(19762,1.14505,2503),(19905,1.14505,2503),(19906,1.14505,2503),(19907,1.14505,2503),(19908,1.14505,2503),(19925,1.14505,2503),(19929,1.14505,2503),(19932,1.14505,2503),(19937,1.14505,2503),(20017,1.14505,2503),(20172,1.14505,2503),(20657,1.14505,2503),(20899,1.14505,2503),(6895,0.478041,832),(7175,0.478041,832),(7909,0.478041,832),(8630,0.478041,832),(8665,0.478041,832),(9132,0.478041,832),(9553,0.478041,832),(9780,0.478041,832),(9791,0.478041,832),(10651,0.478041,832),(10654,0.478041,832),(10665,0.478041,832),(10744,0.478041,832),(10745,0.478041,832),(10746,0.478041,832),(11388,0.478041,832),(11389,0.478041,832),(11675,0.478041,832),(11676,0.478041,832),(11689,0.478041,832),(12229,0.478041,832),(12409,0.478041,832),(12968,0.478041,832),(13344,0.478041,832),(13345,0.478041,832),(13347,0.478041,832),(13350,0.478041,832),(13355,0.478041,832),(14302,0.478041,832),(14303,0.478041,832),(15094,0.478041,832),(15236,0.478041,832),(15266,0.478041,832),(15300,0.478041,832),(15323,0.478041,832),(15549,0.478041,832),(15752,0.478041,832),(15764,0.478041,832),(15765,0.478041,832),(15917,0.478041,832),(16171,0.478041,832),(16431,0.478041,832),(16949,0.478041,832),(18024,0.478041,832),(18293,0.478041,832),(18968,0.478041,832),(18969,0.478041,832),(19004,0.478041,832),(19161,0.478041,832),(19207,0.478041,832),(19225,0.478041,832),(19339,0.478041,832),(19340,0.478041,832),(19341,0.478041,832),(19420,0.478041,832),(19421,0.478041,832),(20430,0.478041,832),(20583,0.478041,832),(20622,0.478041,832),(20806,0.478041,832),(20905,0.478041,832),(21062,0.478041,832),(21181,0.478041,832),(21187,0.478041,832),(21190,0.478041,832),(21237,0.478041,832),(21293,0.478041,832),(21629,0.478041,832),(21766,0.478041,832),(21856,0.478041,832),(21857,0.478041,832),(22368,0.478041,832),(22393,0.478041,832),(22414,0.478041,832),(22438,0.478041,832),(22439,0.478041,832),(22740,0.478041,832),(22780,0.478041,832),(22881,0.478041,832),(22890,0.478041,832),(22897,0.478041,832),(22898,0.478041,832),(22900,0.478041,832),(23443,0.478041,832),(23692,0.478041,832),(23758,0.478041,832),(23760,0.478041,832),(23761,0.478041,832),(23765,0.478041,832),(23780,0.478041,832),(24030,0.478041,832),(24031,0.478041,832),(24033,0.478041,832),(24034,0.478041,832),(22720,2.58355,2657),(21631,0.944334,2591),(20389,14.7664,2527),(20593,14.7664,2527),(20811,14.7664,2527),(21301,14.7664,2527),(21446,14.7664,2527),(21393,2.1903,2577),(22629,2.1903,2577),(17702,5.85247,2378),(17719,5.85247,2378),(17720,5.85247,2378),(17721,5.85247,2378),(17722,5.85247,2378),(5927,1.89242,225),(9389,1.89242,225),(9390,1.89242,225),(12234,1.89242,225),(12235,1.89242,225),(12236,1.89242,225),(12237,1.89242,225),(12238,1.89242,225),(12243,1.89242,225),(16266,1.89242,225),(17029,1.89242,225),(17056,1.89242,225),(17058,1.89242,225),(15928,2.08907,2243),(16462,2.08907,2243),(17180,2.08907,2243),(17346,2.08907,2243),(17814,2.08907,2243),(18041,2.08907,2243),(18043,2.08907,2243),(18831,2.08907,2243),(18923,2.08907,2243),(19729,2.08907,2243),(19730,2.08907,2243),(19785,2.08907,2243),(21485,6.32308,2583),(15501,0.748258,2210),(15589,0.748258,2210),(15934,0.748258,2210),(16217,0.748258,2210),(18147,0.748258,2210),(18163,0.748258,2210),(18274,0.748258,2210),(19018,0.748258,2210),(19285,0.748258,2210),(19286,0.748258,2210),(19287,0.748258,2210),(19288,0.748258,2210),(19330,0.748258,2210),(19331,0.748258,2210),(19435,0.748258,2210),(19436,0.748258,2210),(19600,0.748258,2210),(19690,0.748258,2210),(20476,0.748258,2210),(22587,0.748258,2210),(22588,0.748258,2210),(17887,9.62758,2395),(18650,9.62758,2395),(22724,1.90901,2666),(22733,1.94255,2661),(23240,1.94255,2661),(55,0.608381,55),(1285,0.608381,55),(1527,0.608381,55),(1528,0.608381,55),(1542,0.608381,55),(1701,0.608381,55),(1703,0.608381,55),(1704,0.608381,55),(1706,0.608381,55),(1709,0.608381,55),(1711,0.608381,55),(1712,0.608381,55),(1718,0.608381,55),(1722,0.608381,55),(1725,0.608381,55),(1729,0.608381,55),(1732,0.608381,55),(1757,0.608381,55),(1770,0.608381,55),(1771,0.608381,55),(1854,0.608381,55),(1895,0.608381,55),(1896,0.608381,55),(1898,0.608381,55),(1899,0.608381,55),(1931,0.608381,55),(1945,0.608381,55),(1956,0.608381,55),(1983,0.608381,55),(2059,0.608381,55),(2060,0.608381,55),(2061,0.608381,55),(2062,0.608381,55),(2063,0.608381,55),(2064,0.608381,55),(2065,0.608381,55),(2066,0.608381,55),(2067,0.608381,55),(2192,0.608381,55),(2241,0.608381,55),(2242,0.608381,55),(2243,0.608381,55),(2244,0.608381,55),(2245,0.608381,55),(2246,0.608381,55),(2247,0.608381,55),(2248,0.608381,55),(2249,0.608381,55),(2250,0.608381,55),(2251,0.608381,55),(2252,0.608381,55),(2253,0.608381,55),(2254,0.608381,55),(2255,0.608381,55),(2256,0.608381,55),(2257,0.608381,55),(2258,0.608381,55),(2259,0.608381,55),(2260,0.608381,55),(2261,0.608381,55),(2262,0.608381,55),(2263,0.608381,55),(2264,0.608381,55),(2265,0.608381,55),(2266,0.608381,55),(2267,0.608381,55),(2268,0.608381,55),(2269,0.608381,55),(2270,0.608381,55),(2271,0.608381,55),(2272,0.608381,55),(2273,0.608381,55),(2274,0.608381,55),(2275,0.608381,55),(2276,0.608381,55),(2277,0.608381,55),(2416,0.608381,55),(2427,0.608381,55),(2458,0.608381,55),(2484,0.608381,55),(2530,0.608381,55),(2572,0.608381,55),(2595,0.608381,55),(2596,0.608381,55),(2686,0.608381,55),(3131,0.608381,55),(3298,0.608381,55),(3299,0.608381,55),(3300,0.608381,55),(3301,0.608381,55),(3302,0.608381,55),(3303,0.608381,55),(3444,0.608381,55),(3789,0.608381,55),(3790,0.608381,55),(3894,0.608381,55),(4159,0.608381,55),(4160,0.608381,55),(4161,0.608381,55),(4163,0.608381,55),(4164,0.608381,55),(4165,0.608381,55),(4166,0.608381,55),(4169,0.608381,55),(4170,0.608381,55),(4172,0.608381,55),(4173,0.608381,55),(4180,0.608381,55),(4183,0.608381,55),(4201,0.608381,55),(4211,0.608381,55),(4212,0.608381,55),(4213,0.608381,55),(4214,0.608381,55),(4215,0.608381,55),(4216,0.608381,55),(4232,0.608381,55),(4237,0.608381,55),(4243,0.608381,55),(4246,0.608381,55),(4248,0.608381,55),(4249,0.608381,55),(4252,0.608381,55),(4253,0.608381,55),(4271,0.608381,55),(4291,0.608381,55),(4303,0.608381,55),(4304,0.608381,55),(4400,0.608381,55),(4401,0.608381,55),(4404,0.608381,55),(4405,0.608381,55),(4407,0.608381,55),(4408,0.608381,55),(4413,0.608381,55),(4414,0.608381,55),(4415,0.608381,55),(4471,0.608381,55),(4483,0.608381,55),(4484,0.608381,55),(4485,0.608381,55),(4599,0.608381,55),(4930,0.608381,55),(4946,0.608381,55),(4963,0.608381,55),(4989,0.608381,55),(4990,0.608381,55),(5070,0.608381,55),(5071,0.608381,55),(5078,0.608381,55),(5083,0.608381,55),(5084,0.608381,55),(5225,0.608381,55),(5440,0.608381,55),(5748,0.608381,55),(5749,0.608381,55),(5768,0.608381,55),(6063,0.608381,55),(6071,0.608381,55),(6075,0.608381,55),(6230,0.608381,55),(6231,0.608381,55),(6301,0.608381,55),(6868,0.608381,55),(6879,0.608381,55),(6984,0.608381,55),(6988,0.608381,55),(6989,0.608381,55),(6990,0.608381,55),(6991,0.608381,55),(7016,0.608381,55),(7019,0.608381,55),(7021,0.608381,55),(7022,0.608381,55),(7024,0.608381,55),(7026,0.608381,55),(7249,0.608381,55),(7379,0.608381,55),(7538,0.608381,55),(7601,0.608381,55),(7749,0.608381,55),(7901,0.608381,55),(7996,0.608381,55),(7997,0.608381,55),(8229,0.608381,55),(8354,0.608381,55),(8449,0.608381,55),(8694,0.608381,55),(9026,0.608381,55),(9271,0.608381,55),(9275,0.608381,55),(9282,0.608381,55),(9549,0.608381,55),(9552,0.608381,55),(9820,0.608381,55),(9824,0.608381,55),(9825,0.608381,55),(9826,0.608381,55),(10146,0.608381,55),(10190,0.608381,55),(10558,0.608381,55),(10567,0.608381,55),(10616,0.608381,55),(10636,0.608381,55),(10645,0.608381,55),(10647,0.608381,55),(10649,0.608381,55),(10738,0.608381,55),(10858,0.608381,55),(10980,0.608381,55),(11205,0.608381,55),(11207,0.608381,55),(11209,0.608381,55),(11211,0.608381,55),(11213,0.608381,55),(11215,0.608381,55),(11241,0.608381,55),(11243,0.608381,55),(11249,0.608381,55),(11251,0.608381,55),(11256,0.608381,55),(11326,0.608381,55),(11395,0.608381,55),(11479,0.608381,55),(11592,0.608381,55),(11664,0.608381,55),(11680,0.608381,55),(11768,0.608381,55),(11769,0.608381,55),(11776,0.608381,55),(11900,0.608381,55),(12032,0.608381,55),(12034,0.608381,55),(12044,0.608381,55),(12047,0.608381,55),(12053,0.608381,55),(12269,0.608381,55),(12729,0.608381,55),(12926,0.608381,55),(12977,0.608381,55),(13149,0.608381,55),(13319,0.608381,55),(13392,0.608381,55),(13409,0.608381,55),(13455,0.608381,55),(13458,0.608381,55),(13472,0.608381,55),(13630,0.608381,55),(13634,0.608381,55),(13638,0.608381,55),(13642,0.608381,55),(14310,0.608381,55),(14384,0.608381,55),(14386,0.608381,55),(14397,0.608381,55),(14398,0.608381,55),(14407,0.608381,55),(14408,0.608381,55),(14409,0.608381,55),(14412,0.608381,55),(14420,0.608381,55),(14422,0.608381,55),(14755,0.608381,55),(14954,0.608381,55),(15304,0.608381,55),(15305,0.608381,55),(15311,0.608381,55),(15313,0.608381,55),(15315,0.608381,55),(15320,0.608381,55),(15399,0.608381,55),(15403,0.608381,55),(15419,0.608381,55),(15421,0.608381,55),(15427,0.608381,55),(15428,0.608381,55),(15447,0.608381,55),(15456,0.608381,55),(15479,0.608381,55),(15550,0.608381,55),(15563,0.608381,55),(15581,0.608381,55),(15601,0.608381,55),(15603,0.608381,55),(15610,0.608381,55),(15621,0.608381,55),(15624,0.608381,55),(15634,0.608381,55),(15638,0.608381,55),(15646,0.608381,55),(15685,0.608381,55),(15689,0.608381,55),(15690,0.608381,55),(15691,0.608381,55),(15692,0.608381,55),(15707,0.608381,55),(15734,0.608381,55),(15758,0.608381,55),(15819,0.608381,55),(15820,0.608381,55),(15862,0.608381,55),(15864,0.608381,55),(15870,0.608381,55),(15872,0.608381,55),(15883,0.608381,55),(15884,0.608381,55),(15935,0.608381,55),(15949,0.608381,55),(15996,0.608381,55),(16158,0.608381,55),(16342,0.608381,55),(16343,0.608381,55),(16435,0.608381,55),(16783,0.608381,55),(16858,0.608381,55),(16974,0.608381,55),(17171,0.608381,55),(17274,0.608381,55),(17295,0.608381,55),(17301,0.608381,55),(17320,0.608381,55),(17342,0.608381,55),(17343,0.608381,55),(17524,0.608381,55),(17613,0.608381,55),(17771,0.608381,55),(17783,0.608381,55),(17847,0.608381,55),(18306,0.608381,55),(18709,0.608381,55),(18803,0.608381,55),(18868,0.608381,55),(19180,0.608381,55),(19536,0.608381,55),(20121,0.608381,55),(20122,0.608381,55),(20124,0.608381,55),(20129,0.608381,55),(20193,0.608381,55),(20318,0.608381,55),(20621,0.608381,55),(20871,0.608381,55),(20878,0.608381,55),(20970,0.608381,55),(20991,0.608381,55),(21034,0.608381,55),(21090,0.608381,55),(21106,0.608381,55),(21107,0.608381,55),(21108,0.608381,55),(21111,0.608381,55),(21129,0.608381,55),(21142,0.608381,55),(21309,0.608381,55),(21672,0.608381,55),(21863,0.608381,55),(21865,0.608381,55),(22373,0.608381,55),(22569,0.608381,55),(22614,0.608381,55),(22690,0.608381,55),(22808,0.608381,55),(22824,0.608381,55),(22825,0.608381,55),(22848,0.608381,55),(22849,0.608381,55),(22978,0.608381,55),(23441,0.608381,55),(23662,0.608381,55),(169,2.17019,24),(1126,2.17019,24),(4200,2.17019,24),(7029,2.17019,24),(7950,2.17019,24),(10905,2.17019,24),(10906,2.17019,24),(12817,2.17019,24),(14520,2.17019,24),(17312,2.17019,24),(18783,2.17019,24),(19725,2.17019,24),(19963,2.17019,24),(20324,2.17019,24),(388,3.38522,61),(410,3.38522,61),(490,3.38522,61),(507,3.38522,61),(1105,3.38522,61),(1106,3.38522,61),(1192,3.38522,61),(1210,3.38522,61),(1228,3.38522,61),(1229,3.38522,61),(2305,3.38522,61),(3248,3.38522,61),(7348,3.38522,61),(7349,3.38522,61),(10273,3.38522,61),(10824,3.38522,61),(10825,3.38522,61),(10826,3.38522,61),(10827,3.38522,61),(12433,3.38522,61),(14313,3.38522,61),(14319,3.38522,61),(23514,3.38522,61),(23709,3.38522,61),(18684,9.55105,2432),(19112,9.55105,2432),(21263,1.72663,2568),(21170,1.4356,2554),(21234,1.4356,2554),(21392,1.4356,2554),(5047,0.801811,551),(5048,0.801811,551),(5049,0.801811,551),(7970,0.801811,551),(9015,0.801811,551),(9016,0.801811,551),(9017,0.801811,551),(9018,0.801811,551),(9129,0.801811,551),(10951,0.801811,551),(11491,0.801811,551),(14152,0.801811,551),(14255,0.801811,551),(15298,0.801811,551),(15301,0.801811,551),(18193,0.801811,551),(18251,0.801811,551),(18287,0.801811,551),(18342,0.801811,551),(18345,0.801811,551),(18654,0.801811,551),(18786,0.801811,551),(18832,0.801811,551),(19901,0.801811,551),(20531,0.801811,551),(21307,0.801811,551),(21365,0.801811,551),(6852,4.81064,147),(21659,0.634486,2596),(21146,35.6999,2549),(14307,1.29889,1891),(14308,1.29889,1891),(14309,1.29889,1891),(14352,1.29889,1891),(14355,1.29889,1891),(14356,1.29889,1891),(14357,1.29889,1891),(14358,1.29889,1891),(14359,1.29889,1891),(14885,1.29889,1891),(14886,1.29889,1891),(14887,1.29889,1891),(14888,1.29889,1891),(14889,1.29889,1891),(15987,1.29889,1891),(19279,1.29889,1891),(19895,1.29889,1891),(20936,1.29889,1891),(20945,1.29889,1891),(17209,2.62977,2276),(17977,2.62977,2276),(18370,2.62977,2276),(19168,2.62977,2276),(19415,2.62977,2276),(19639,2.62977,2276),(19900,2.62977,2276),(1140,0.477858,164),(1233,0.477858,164),(1302,0.477858,164),(1304,0.477858,164),(1412,0.477858,164),(1550,0.477858,164),(2454,0.477858,164),(2455,0.477858,164),(6328,0.477858,164),(21899,0.640382,2630),(16279,0.674255,2261),(16309,0.674255,2261),(807,4.85426,137),(814,4.85426,137),(815,4.85426,137),(831,4.85426,137),(833,4.85426,137),(834,4.85426,137),(835,4.85426,137),(925,4.85426,137),(1034,4.85426,137),(1035,4.85426,137),(1036,4.85426,137),(1037,4.85426,137),(1038,4.85426,137),(1039,4.85426,137),(1080,4.85426,137),(1250,4.85426,137),(1251,4.85426,137),(1609,4.85426,137),(2548,4.85426,137),(2549,4.85426,137),(2550,4.85426,137),(2850,4.85426,137),(2996,4.85426,137),(4090,4.85426,137),(13589,4.85426,137),(14256,4.85426,137),(15145,4.85426,137),(18417,4.85426,137),(20763,4.85426,137),(21242,4.85426,137),(20297,1.37234,2515),(20298,1.37234,2515),(20299,1.37234,2515),(20307,1.37234,2515),(20308,1.37234,2515),(20309,1.37234,2515),(20834,1.37234,2515),(20835,1.37234,2515),(21252,1.66479,2565),(2289,1.58378,214),(20216,9.11635,2448),(22355,9.11635,2448),(18685,13.1549,2433),(18997,13.1549,2433),(19091,0.244696,2462),(19318,0.244696,2462),(19335,0.244696,2462),(17210,2.59952,2277),(18368,2.59952,2277),(18646,2.59952,2277),(17204,1.32613,2334),(22352,0.571692,2634),(21661,2.43952,2597),(16925,0.002128,2296),(17608,0.002128,2296),(20292,0.002128,2296),(53,0.591506,53),(115,0.591506,53),(312,0.591506,53),(803,0.591506,53),(824,0.591506,53),(825,0.591506,53),(832,0.591506,53),(870,0.591506,53),(1277,0.591506,53),(1280,0.591506,53),(1282,0.591506,53),(1354,0.591506,53),(1355,0.591506,53),(1362,0.591506,53),(1363,0.591506,53),(1376,0.591506,53),(1396,0.591506,53),(1398,0.591506,53),(1399,0.591506,53),(1400,0.591506,53),(1402,0.591506,53),(1406,0.591506,53),(1409,0.591506,53),(1410,0.591506,53),(1411,0.591506,53),(1413,0.591506,53),(1416,0.591506,53),(1417,0.591506,53),(1519,0.591506,53),(1567,0.591506,53),(1568,0.591506,53),(1569,0.591506,53),(1570,0.591506,53),(1572,0.591506,53),(1596,0.591506,53),(1597,0.591506,53),(1598,0.591506,53),(1622,0.591506,53),(1623,0.591506,53),(1625,0.591506,53),(1626,0.591506,53),(1627,0.591506,53),(1628,0.591506,53),(1629,0.591506,53),(1630,0.591506,53),(1650,0.591506,53),(1655,0.591506,53),(1656,0.591506,53),(1657,0.591506,53),(1663,0.591506,53),(1665,0.591506,53),(1668,0.591506,53),(1671,0.591506,53),(1672,0.591506,53),(1673,0.591506,53),(1674,0.591506,53),(1675,0.591506,53),(1676,0.591506,53),(1677,0.591506,53),(1683,0.591506,53),(1684,0.591506,53),(1685,0.591506,53),(1764,0.591506,53),(1774,0.591506,53),(1775,0.591506,53),(1776,0.591506,53),(1777,0.591506,53),(1778,0.591506,53),(1779,0.591506,53),(1780,0.591506,53),(1781,0.591506,53),(1782,0.591506,53),(1783,0.591506,53),(1784,0.591506,53),(1785,0.591506,53),(1787,0.591506,53),(1788,0.591506,53),(1789,0.591506,53),(1790,0.591506,53),(1792,0.591506,53),(1794,0.591506,53),(1795,0.591506,53),(1796,0.591506,53),(1797,0.591506,53),(1798,0.591506,53),(1800,0.591506,53),(1801,0.591506,53),(1802,0.591506,53),(1803,0.591506,53),(1804,0.591506,53),(1805,0.591506,53),(1806,0.591506,53),(1807,0.591506,53),(1808,0.591506,53),(1809,0.591506,53),(1810,0.591506,53),(1813,0.591506,53),(1820,0.591506,53),(1821,0.591506,53),(1822,0.591506,53),(1834,0.591506,53),(1835,0.591506,53),(1837,0.591506,53),(1844,0.591506,53),(1845,0.591506,53),(1846,0.591506,53),(1847,0.591506,53),(1848,0.591506,53),(1849,0.591506,53),(1851,0.591506,53),(1891,0.591506,53),(1892,0.591506,53),(1893,0.591506,53),(1894,0.591506,53),(1935,0.591506,53),(1968,0.591506,53),(1970,0.591506,53),(2142,0.591506,53),(2283,0.591506,53),(2284,0.591506,53),(2285,0.591506,53),(2363,0.591506,53),(2417,0.591506,53),(2584,0.591506,53),(2677,0.591506,53),(2790,0.591506,53),(2871,0.591506,53),(2882,0.591506,53),(2894,0.591506,53),(3007,0.591506,53),(3036,0.591506,53),(3037,0.591506,53),(3038,0.591506,53),(3042,0.591506,53),(3043,0.591506,53),(3044,0.591506,53),(3045,0.591506,53),(3046,0.591506,53),(3047,0.591506,53),(3053,0.591506,53),(3054,0.591506,53),(3072,0.591506,53),(3073,0.591506,53),(3074,0.591506,53),(3075,0.591506,53),(3076,0.591506,53),(3077,0.591506,53),(3078,0.591506,53),(3079,0.591506,53),(3080,0.591506,53),(3081,0.591506,53),(3082,0.591506,53),(3083,0.591506,53),(3084,0.591506,53),(3085,0.591506,53),(3086,0.591506,53),(3087,0.591506,53),(3088,0.591506,53),(3089,0.591506,53),(3090,0.591506,53),(3091,0.591506,53),(3092,0.591506,53),(3093,0.591506,53),(3094,0.591506,53),(3095,0.591506,53),(3096,0.591506,53),(3097,0.591506,53),(3098,0.591506,53),(3099,0.591506,53),(3100,0.591506,53),(3101,0.591506,53),(3102,0.591506,53),(3103,0.591506,53),(3132,0.591506,53),(3232,0.591506,53),(3238,0.591506,53),(3265,0.591506,53),(3304,0.591506,53),(3305,0.591506,53),(3306,0.591506,53),(3307,0.591506,53),(3308,0.591506,53),(3309,0.591506,53),(3310,0.591506,53),(3353,0.591506,53),(3355,0.591506,53),(3388,0.591506,53),(3389,0.591506,53),(3390,0.591506,53),(3391,0.591506,53),(3392,0.591506,53),(3393,0.591506,53),(3394,0.591506,53),(3395,0.591506,53),(3396,0.591506,53),(3397,0.591506,53),(3398,0.591506,53),(3399,0.591506,53),(3400,0.591506,53),(3401,0.591506,53),(3403,0.591506,53),(3406,0.591506,53),(3407,0.591506,53),(3408,0.591506,53),(3409,0.591506,53),(3410,0.591506,53),(3411,0.591506,53),(3412,0.591506,53),(3413,0.591506,53),(3414,0.591506,53),(3415,0.591506,53),(3416,0.591506,53),(3417,0.591506,53),(3418,0.591506,53),(3419,0.591506,53),(3420,0.591506,53),(3421,0.591506,53),(3422,0.591506,53),(3423,0.591506,53),(3424,0.591506,53),(3425,0.591506,53),(3426,0.591506,53),(3427,0.591506,53),(3428,0.591506,53),(3429,0.591506,53),(3430,0.591506,53),(3431,0.591506,53),(3432,0.591506,53),(3433,0.591506,53),(3434,0.591506,53),(3435,0.591506,53),(3436,0.591506,53),(3437,0.591506,53),(3438,0.591506,53),(3439,0.591506,53),(3451,0.591506,53),(3452,0.591506,53),(3456,0.591506,53),(3458,0.591506,53),(3460,0.591506,53),(3471,0.591506,53),(3473,0.591506,53),(3474,0.591506,53),(3475,0.591506,53),(3476,0.591506,53),(3477,0.591506,53),(3478,0.591506,53),(3479,0.591506,53),(3480,0.591506,53),(3481,0.591506,53),(3487,0.591506,53),(3488,0.591506,53),(3490,0.591506,53),(3491,0.591506,53),(3513,0.591506,53),(3524,0.591506,53),(3525,0.591506,53),(3526,0.591506,53),(3527,0.591506,53),(3558,0.591506,53),(3571,0.591506,53),(3572,0.591506,53),(3573,0.591506,53),(3594,0.591506,53),(3595,0.591506,53),(3596,0.591506,53),(3597,0.591506,53),(3598,0.591506,53),(3599,0.591506,53),(3600,0.591506,53),(3756,0.591506,53),(3757,0.591506,53),(3761,0.591506,53),(3763,0.591506,53),(3765,0.591506,53),(3769,0.591506,53),(3785,0.591506,53),(3787,0.591506,53),(3837,0.591506,53),(3839,0.591506,53),(3870,0.591506,53),(3874,0.591506,53),(3902,0.591506,53),(3903,0.591506,53),(3906,0.591506,53),(3908,0.591506,53),(3909,0.591506,53),(3911,0.591506,53),(3912,0.591506,53),(3917,0.591506,53),(3921,0.591506,53),(3923,0.591506,53),(3925,0.591506,53),(3927,0.591506,53),(3933,0.591506,53),(3934,0.591506,53),(3936,0.591506,53),(3954,0.591506,53),(3962,0.591506,53),(3963,0.591506,53),(3964,0.591506,53),(3969,0.591506,53),(3970,0.591506,53),(4042,0.591506,53),(4103,0.591506,53),(4116,0.591506,53),(4117,0.591506,53),(4118,0.591506,53),(4119,0.591506,53),(4218,0.591506,53),(4222,0.591506,53),(4224,0.591506,53),(4225,0.591506,53),(4229,0.591506,53),(4315,0.591506,53),(4432,0.591506,53),(4476,0.591506,53),(4595,0.591506,53),(4596,0.591506,53),(4597,0.591506,53),(4598,0.591506,53),(4637,0.591506,53),(4640,0.591506,53),(4828,0.591506,53),(4838,0.591506,53),(4886,0.591506,53),(4887,0.591506,53),(4890,0.591506,53),(4891,0.591506,53),(4899,0.591506,53),(4900,0.591506,53),(4901,0.591506,53),(4903,0.591506,53),(4911,0.591506,53),(4932,0.591506,53),(4933,0.591506,53),(4934,0.591506,53),(4935,0.591506,53),(4936,0.591506,53),(4937,0.591506,53),(4938,0.591506,53),(4944,0.591506,53),(4949,0.591506,53),(4950,0.591506,53),(4956,0.591506,53),(4957,0.591506,53),(4969,0.591506,53),(4986,0.591506,53),(4988,0.591506,53),(4995,0.591506,53),(4997,0.591506,53),(4998,0.591506,53),(5010,0.591506,53),(5019,0.591506,53),(5020,0.591506,53),(5021,0.591506,53),(5023,0.591506,53),(5037,0.591506,53),(5041,0.591506,53),(5044,0.591506,53),(5077,0.591506,53),(5079,0.591506,53),(5088,0.591506,53),(5089,0.591506,53),(5090,0.591506,53),(5105,0.591506,53),(5106,0.591506,53),(5131,0.591506,53),(5227,0.591506,53),(5385,0.591506,53),(5409,0.591506,53),(5410,0.591506,53),(5426,0.591506,53),(5434,0.591506,53),(5445,0.591506,53),(5465,0.591506,53),(5525,0.591506,53),(5529,0.591506,53),(5570,0.591506,53),(5575,0.591506,53),(5648,0.591506,53),(5708,0.591506,53),(5709,0.591506,53),(5710,0.591506,53),(5752,0.591506,53),(5771,0.591506,53),(5818,0.591506,53),(5826,0.591506,53),(5986,0.591506,53),(5991,0.591506,53),(6007,0.591506,53),(6009,0.591506,53),(6010,0.591506,53),(6025,0.591506,53),(6026,0.591506,53),(6051,0.591506,53),(6052,0.591506,53),(6053,0.591506,53),(6054,0.591506,53),(6055,0.591506,53),(6056,0.591506,53),(6057,0.591506,53),(6059,0.591506,53),(6062,0.591506,53),(6067,0.591506,53),(6127,0.591506,53),(6198,0.591506,53),(6449,0.591506,53),(6568,0.591506,53),(6649,0.591506,53),(6668,0.591506,53),(6669,0.591506,53),(6717,0.591506,53),(6721,0.591506,53),(6725,0.591506,53),(6729,0.591506,53),(6740,0.591506,53),(6754,0.591506,53),(6845,0.591506,53),(6846,0.591506,53),(6939,0.591506,53),(6947,0.591506,53),(6949,0.591506,53),(6953,0.591506,53),(6962,0.591506,53),(6965,0.591506,53),(6995,0.591506,53),(7001,0.591506,53),(7003,0.591506,53),(7005,0.591506,53),(7007,0.591506,53),(7009,0.591506,53),(7120,0.591506,53),(7250,0.591506,53),(7273,0.591506,53),(7383,0.591506,53),(7598,0.591506,53),(7751,0.591506,53),(7753,0.591506,53),(7758,0.591506,53),(7759,0.591506,53),(7760,0.591506,53),(7761,0.591506,53),(7762,0.591506,53),(7764,0.591506,53),(7765,0.591506,53),(7766,0.591506,53),(7769,0.591506,53),(7789,0.591506,53),(7790,0.591506,53),(7791,0.591506,53),(7792,0.591506,53),(7793,0.591506,53),(7794,0.591506,53),(7796,0.591506,53),(7797,0.591506,53),(7798,0.591506,53),(7799,0.591506,53),(7800,0.591506,53),(7801,0.591506,53),(7805,0.591506,53),(7814,0.591506,53),(7815,0.591506,53),(7816,0.591506,53),(7817,0.591506,53),(7819,0.591506,53),(7827,0.591506,53),(7859,0.591506,53),(7860,0.591506,53),(7861,0.591506,53),(7862,0.591506,53),(7865,0.591506,53),(7866,0.591506,53),(7867,0.591506,53),(7868,0.591506,53),(7912,0.591506,53),(7914,0.591506,53),(7915,0.591506,53),(7916,0.591506,53),(7929,0.591506,53),(7930,0.591506,53),(7931,0.591506,53),(7932,0.591506,53),(7990,0.591506,53),(8089,0.591506,53),(8170,0.591506,53),(8176,0.591506,53),(8413,0.591506,53),(8590,0.591506,53),(8591,0.591506,53),(8592,0.591506,53),(8593,0.591506,53),(8594,0.591506,53),(8595,0.591506,53),(8596,0.591506,53),(8597,0.591506,53),(8654,0.591506,53),(8655,0.591506,53),(8658,0.591506,53),(8661,0.591506,53),(8662,0.591506,53),(8663,0.591506,53),(8673,0.591506,53),(8674,0.591506,53),(8678,0.591506,53),(8679,0.591506,53),(8681,0.591506,53),(8682,0.591506,53),(8686,0.591506,53),(8687,0.591506,53),(8688,0.591506,53),(8689,0.591506,53),(8692,0.591506,53),(8696,0.591506,53),(8698,0.591506,53),(8704,0.591506,53),(8708,0.591506,53),(8709,0.591506,53),(8710,0.591506,53),(8718,0.591506,53),(8729,0.591506,53),(8749,0.591506,53),(8750,0.591506,53),(8751,0.591506,53),(8752,0.591506,53),(8753,0.591506,53),(8754,0.591506,53),(8755,0.591506,53),(8756,0.591506,53),(8757,0.591506,53),(8758,0.591506,53),(8759,0.591506,53),(8793,0.591506,53),(8794,0.591506,53),(8798,0.591506,53),(8799,0.591506,53),(8803,0.591506,53),(8804,0.591506,53),(8805,0.591506,53),(8806,0.591506,53),(8807,0.591506,53),(8812,0.591506,53),(8813,0.591506,53),(8814,0.591506,53),(8815,0.591506,53),(8820,0.591506,53),(8821,0.591506,53),(8822,0.591506,53),(8823,0.591506,53),(8825,0.591506,53),(8826,0.591506,53),(8827,0.591506,53),(8828,0.591506,53),(8830,0.591506,53),(8872,0.591506,53),(8893,0.591506,53),(8929,0.591506,53),(9053,0.591506,53),(9072,0.591506,53),(9089,0.591506,53),(9130,0.591506,53),(9212,0.591506,53),(9258,0.591506,53),(9283,0.591506,53),(9288,0.591506,53),(9289,0.591506,53),(9309,0.591506,53),(9329,0.591506,53),(9332,0.591506,53),(9550,0.591506,53),(9740,0.591506,53),(9741,0.591506,53),(9773,0.591506,53),(9814,0.591506,53),(9816,0.591506,53),(9817,0.591506,53),(9946,0.591506,53),(9947,0.591506,53),(9969,0.591506,53),(10109,0.591506,53),(10110,0.591506,53),(10111,0.591506,53),(10135,0.591506,53),(10184,0.591506,53),(10195,0.591506,53),(10245,0.591506,53),(10374,0.591506,53),(10462,0.591506,53),(10466,0.591506,53),(10471,0.591506,53),(10588,0.591506,53),(10622,0.591506,53),(10629,0.591506,53),(10635,0.591506,53),(10644,0.591506,53),(10693,0.591506,53),(10694,0.591506,53),(11027,0.591506,53),(11049,0.591506,53),(11051,0.591506,53),(11052,0.591506,53),(11053,0.591506,53),(11409,0.591506,53),(11424,0.591506,53),(11425,0.591506,53),(11426,0.591506,53),(11427,0.591506,53),(11511,0.591506,53),(11666,0.591506,53),(11733,0.591506,53),(11740,0.591506,53),(11806,0.591506,53),(11822,0.591506,53),(11830,0.591506,53),(11831,0.591506,53),(11832,0.591506,53),(11833,0.591506,53),(11834,0.591506,53),(11896,0.591506,53),(11899,0.591506,53),(12052,0.591506,53),(12055,0.591506,53),(12057,0.591506,53),(12065,0.591506,53),(12076,0.591506,53),(12289,0.591506,53),(12474,0.591506,53),(12917,0.591506,53),(12925,0.591506,53),(12932,0.591506,53),(12945,0.591506,53),(12967,0.591506,53),(13151,0.591506,53),(13249,0.591506,53),(13253,0.591506,53),(13254,0.591506,53),(13258,0.591506,53),(13262,0.591506,53),(13266,0.591506,53),(13270,0.591506,53),(13274,0.591506,53),(13298,0.591506,53),(13311,0.591506,53),(13312,0.591506,53),(13315,0.591506,53),(13316,0.591506,53),(13320,0.591506,53),(13321,0.591506,53),(13326,0.591506,53),(13351,0.591506,53),(13369,0.591506,53),(13371,0.591506,53),(13379,0.591506,53),(13383,0.591506,53),(13384,0.591506,53),(13386,0.591506,53),(13445,0.591506,53),(13446,0.591506,53),(13461,0.591506,53),(13471,0.591506,53),(13476,0.591506,53),(13532,0.591506,53),(13543,0.591506,53),(13632,0.591506,53),(13636,0.591506,53),(13640,0.591506,53),(13645,0.591506,53),(13650,0.591506,53),(13654,0.591506,53),(13658,0.591506,53),(13671,0.591506,53),(13709,0.591506,53),(13711,0.591506,53),(13714,0.591506,53),(13729,0.591506,53),(13781,0.591506,53),(13783,0.591506,53),(13785,0.591506,53),(13786,0.591506,53),(13789,0.591506,53),(13790,0.591506,53),(13795,0.591506,53),(13797,0.591506,53),(13799,0.591506,53),(13801,0.591506,53),(13803,0.591506,53),(13805,0.591506,53),(13841,0.591506,53),(13849,0.591506,53),(13850,0.591506,53),(14092,0.591506,53),(14212,0.591506,53),(14235,0.591506,53),(14322,0.591506,53),(14396,0.591506,53),(14404,0.591506,53),(14405,0.591506,53),(14652,0.591506,53),(14653,0.591506,53),(14654,0.591506,53),(14655,0.591506,53),(14662,0.591506,53),(14665,0.591506,53),(14666,0.591506,53),(14668,0.591506,53),(14669,0.591506,53),(14670,0.591506,53),(14671,0.591506,53),(14672,0.591506,53),(14793,0.591506,53),(14794,0.591506,53),(14878,0.591506,53),(15134,0.591506,53),(15222,0.591506,53),(15238,0.591506,53),(15259,0.591506,53),(15260,0.591506,53),(15263,0.591506,53),(15309,0.591506,53),(15310,0.591506,53),(15389,0.591506,53),(15426,0.591506,53),(15441,0.591506,53),(15444,0.591506,53),(15448,0.591506,53),(15460,0.591506,53),(15553,0.591506,53),(15558,0.591506,53),(15565,0.591506,53),(15566,0.591506,53),(15596,0.591506,53),(15597,0.591506,53),(15600,0.591506,53),(15606,0.591506,53),(15611,0.591506,53),(15612,0.591506,53),(15614,0.591506,53),(15616,0.591506,53),(15617,0.591506,53),(15622,0.591506,53),(15625,0.591506,53),(15626,0.591506,53),(15630,0.591506,53),(15632,0.591506,53),(15636,0.591506,53),(15637,0.591506,53),(15641,0.591506,53),(15643,0.591506,53),(15662,0.591506,53),(15714,0.591506,53),(15726,0.591506,53),(15735,0.591506,53),(15746,0.591506,53),(15776,0.591506,53),(15835,0.591506,53),(15837,0.591506,53),(15845,0.591506,53),(15847,0.591506,53),(15849,0.591506,53),(15887,0.591506,53),(15956,0.591506,53),(15981,0.591506,53),(15986,0.591506,53),(15993,0.591506,53),(15995,0.591506,53),(16082,0.591506,53),(16096,0.591506,53),(16106,0.591506,53),(16108,0.591506,53),(16144,0.591506,53),(16149,0.591506,53),(16219,0.591506,53),(16339,0.591506,53),(16354,0.591506,53),(16366,0.591506,53),(16371,0.591506,53),(16376,0.591506,53),(16378,0.591506,53),(16379,0.591506,53),(16380,0.591506,53),(16383,0.591506,53),(16389,0.591506,53),(16393,0.591506,53),(16394,0.591506,53),(16403,0.591506,53),(16404,0.591506,53),(16413,0.591506,53),(16500,0.591506,53),(16505,0.591506,53),(16521,0.591506,53),(16523,0.591506,53),(16533,0.591506,53),(16793,0.591506,53),(16835,0.591506,53),(16837,0.591506,53),(16843,0.591506,53),(16933,0.591506,53),(16961,0.591506,53),(17036,0.591506,53),(17324,0.591506,53),(17557,0.591506,53),(17570,0.591506,53),(17661,0.591506,53),(17802,0.591506,53),(18096,0.591506,53),(18114,0.591506,53),(18122,0.591506,53),(18177,0.591506,53),(18182,0.591506,53),(18210,0.591506,53),(18457,0.591506,53),(18522,0.591506,53),(18523,0.591506,53),(18536,0.591506,53),(18666,0.591506,53),(18739,0.591506,53),(18747,0.591506,53),(18748,0.591506,53),(18749,0.591506,53),(18750,0.591506,53),(18751,0.591506,53),(18752,0.591506,53),(18779,0.591506,53),(18780,0.591506,53),(18784,0.591506,53),(18787,0.591506,53),(18788,0.591506,53),(18789,0.591506,53),(18790,0.591506,53),(18797,0.591506,53),(18814,0.591506,53),(18815,0.591506,53),(18845,0.591506,53),(19159,0.591506,53),(19174,0.591506,53),(19244,0.591506,53),(19256,0.591506,53),(19567,0.591506,53),(20150,0.591506,53),(20225,0.591506,53),(20243,0.591506,53),(20301,0.591506,53),(20302,0.591506,53),(20317,0.591506,53),(20427,0.591506,53),(20443,0.591506,53),(20444,0.591506,53),(20461,0.591506,53),(20463,0.591506,53),(20836,0.591506,53),(21031,0.591506,53),(21044,0.591506,53),(21056,0.591506,53),(21065,0.591506,53),(21182,0.591506,53),(21228,0.591506,53),(21273,0.591506,53),(21414,0.591506,53),(21500,0.591506,53),(21574,0.591506,53),(21642,0.591506,53),(21668,0.591506,53),(21824,0.591506,53),(21826,0.591506,53),(21827,0.591506,53),(21846,0.591506,53),(21847,0.591506,53),(21969,0.591506,53),(21970,0.591506,53),(22365,0.591506,53),(22384,0.591506,53),(22390,0.591506,53),(22394,0.591506,53),(22395,0.591506,53),(22396,0.591506,53),(22397,0.591506,53),(22436,0.591506,53),(22445,0.591506,53),(22446,0.591506,53),(22449,0.591506,53),(22450,0.591506,53),(22451,0.591506,53),(22454,0.591506,53),(22455,0.591506,53),(22461,0.591506,53),(22566,0.591506,53),(22603,0.591506,53),(22684,0.591506,53),(22892,0.591506,53),(23451,0.591506,53),(23500,0.591506,53),(23678,0.591506,53),(23769,0.591506,53),(21018,14.8984,2546),(20344,5.80001,2516),(20809,5.80001,2516),(21425,5.80001,2516),(21545,5.80001,2516),(21548,5.80001,2516),(22620,5.80001,2516),(1563,0.404552,182),(1832,0.404552,182),(1889,0.404552,182),(1930,0.404552,182),(2071,0.404552,182),(2180,0.404552,182),(2184,0.404552,182),(2456,0.404552,182),(2457,0.404552,182),(2581,0.404552,182),(2872,0.404552,182),(2891,0.404552,182),(2897,0.404552,182),(2950,0.404552,182),(3040,0.404552,182),(3052,0.404552,182),(3055,0.404552,182),(3104,0.404552,182),(3105,0.404552,182),(3107,0.404552,182),(3109,0.404552,182),(3110,0.404552,182),(3111,0.404552,182),(3112,0.404552,182),(3113,0.404552,182),(3114,0.404552,182),(3115,0.404552,182),(3116,0.404552,182),(3117,0.404552,182),(3118,0.404552,182),(3314,0.404552,182),(3315,0.404552,182),(3316,0.404552,182),(3440,0.404552,182),(3441,0.404552,182),(3457,0.404552,182),(3469,0.404552,182),(3482,0.404552,182),(3561,0.404552,182),(3568,0.404552,182),(3583,0.404552,182),(3587,0.404552,182),(3607,0.404552,182),(3733,0.404552,182),(3885,0.404552,182),(4049,0.404552,182),(4051,0.404552,182),(4285,0.404552,182),(4286,0.404552,182),(4287,0.404552,182),(4316,0.404552,182),(4474,0.404552,182),(4493,0.404552,182),(4717,0.404552,182),(4775,0.404552,182),(4864,0.404552,182),(4865,0.404552,182),(4873,0.404552,182),(4895,0.404552,182),(4896,0.404552,182),(4953,0.404552,182),(4999,0.404552,182),(5015,0.404552,182),(5016,0.404552,182),(5376,0.404552,182),(5377,0.404552,182),(5427,0.404552,182),(5428,0.404552,182),(5433,0.404552,182),(5436,0.404552,182),(5437,0.404552,182),(5438,0.404552,182),(5443,0.404552,182),(5451,0.404552,182),(5485,0.404552,182),(5647,0.404552,182),(6072,0.404552,182),(6446,0.404552,182),(6545,0.404552,182),(6608,0.404552,182),(6610,0.404552,182),(6628,0.404552,182),(6632,0.404552,182),(6710,0.404552,182),(6711,0.404552,182),(6713,0.404552,182),(6733,0.404552,182),(6913,0.404552,182),(6914,0.404552,182),(6920,0.404552,182),(6921,0.404552,182),(6922,0.404552,182),(6923,0.404552,182),(6924,0.404552,182),(6925,0.404552,182),(6926,0.404552,182),(6927,0.404552,182),(6928,0.404552,182),(6929,0.404552,182),(6930,0.404552,182),(6931,0.404552,182),(6932,0.404552,182),(6933,0.404552,182),(6934,0.404552,182),(6935,0.404552,182),(6936,0.404552,182),(6937,0.404552,182),(6967,0.404552,182),(6968,0.404552,182),(6973,0.404552,182),(6974,0.404552,182),(6981,0.404552,182),(7004,0.404552,182),(7006,0.404552,182),(7028,0.404552,182),(7038,0.404552,182),(7041,0.404552,182),(7331,0.404552,182),(7600,0.404552,182),(7795,0.404552,182),(7807,0.404552,182),(7831,0.404552,182),(7852,0.404552,182),(7907,0.404552,182),(7951,0.404552,182),(7952,0.404552,182),(8012,0.404552,182),(8353,0.404552,182),(8652,0.404552,182),(8829,0.404552,182),(8894,0.404552,182),(8895,0.404552,182),(9027,0.404552,182),(9211,0.404552,182),(9819,0.404552,182),(10089,0.404552,182),(10136,0.404552,182),(10213,0.404552,182),(10215,0.404552,182),(10216,0.404552,182),(10548,0.404552,182),(10982,0.404552,182),(10989,0.404552,182),(11124,0.404552,182),(11127,0.404552,182),(11130,0.404552,182),(11133,0.404552,182),(11136,0.404552,182),(11147,0.404552,182),(11150,0.404552,182),(11153,0.404552,182),(11156,0.404552,182),(11276,0.404552,182),(11289,0.404552,182),(11465,0.404552,182),(11694,0.404552,182),(11757,0.404552,182),(11818,0.404552,182),(12068,0.404552,182),(12078,0.404552,182),(12669,0.404552,182),(12911,0.404552,182),(12915,0.404552,182),(12921,0.404552,182),(12942,0.404552,182),(12944,0.404552,182),(12965,0.404552,182),(13252,0.404552,182),(13257,0.404552,182),(13260,0.404552,182),(13264,0.404552,182),(13269,0.404552,182),(13273,0.404552,182),(13276,0.404552,182),(13353,0.404552,182),(13374,0.404552,182),(13382,0.404552,182),(13388,0.404552,182),(13456,0.404552,182),(13533,0.404552,182),(13538,0.404552,182),(13547,0.404552,182),(13552,0.404552,182),(14093,0.404552,182),(14172,0.404552,182),(14234,0.404552,182),(14529,0.404552,182),(14532,0.404552,182),(14587,0.404552,182),(14752,0.404552,182),(14774,0.404552,182),(14855,0.404552,182),(14856,0.404552,182),(15265,0.404552,182),(15418,0.404552,182),(15445,0.404552,182),(15457,0.404552,182),(15557,0.404552,182),(15560,0.404552,182),(15660,0.404552,182),(15668,0.404552,182),(15687,0.404552,182),(15711,0.404552,182),(15729,0.404552,182),(15775,0.404552,182),(15803,0.404552,182),(15804,0.404552,182),(15805,0.404552,182),(15806,0.404552,182),(15807,0.404552,182),(15808,0.404552,182),(15809,0.404552,182),(15889,0.404552,182),(15972,0.404552,182),(15994,0.404552,182),(16382,0.404552,182),(16448,0.404552,182),(16786,0.404552,182),(16934,0.404552,182),(16960,0.404552,182),(17014,0.404552,182),(17530,0.404552,182),(18103,0.404552,182),(18104,0.404552,182),(18105,0.404552,182),(18107,0.404552,182),(18130,0.404552,182),(18175,0.404552,182),(18204,0.404552,182),(18691,0.404552,182),(18792,0.404552,182),(18799,0.404552,182),(18847,0.404552,182),(18973,0.404552,182),(19005,0.404552,182),(19069,0.404552,182),(19160,0.404552,182),(19176,0.404552,182),(19206,0.404552,182),(19239,0.404552,182),(19539,0.404552,182),(19614,0.404552,182),(19942,0.404552,182),(20075,0.404552,182),(20077,0.404552,182),(20078,0.404552,182),(20081,0.404552,182),(20082,0.404552,182),(20085,0.404552,182),(20086,0.404552,182),(20092,0.404552,182),(20111,0.404552,182),(20163,0.404552,182),(20171,0.404552,182),(20269,0.404552,182),(20325,0.404552,182),(20331,0.404552,182),(20418,0.404552,182),(20442,0.404552,182),(20464,0.404552,182),(20474,0.404552,182),(20580,0.404552,182),(20613,0.404552,182),(20615,0.404552,182),(20646,0.404552,182),(20647,0.404552,182),(20648,0.404552,182),(21027,0.404552,182),(21028,0.404552,182),(21029,0.404552,182),(21030,0.404552,182),(21185,0.404552,182),(21272,0.404552,182),(21496,0.404552,182),(21529,0.404552,182),(21673,0.404552,182),(21692,0.404552,182),(21693,0.404552,182),(21694,0.404552,182),(21695,0.404552,182),(21696,0.404552,182),(21851,0.404552,182),(21853,0.404552,182),(22367,0.404552,182),(22404,0.404552,182),(22567,0.404552,182),(22686,0.404552,182),(22816,0.404552,182),(23467,0.404552,182),(23672,0.404552,182),(23740,0.404552,182),(79,0.300418,79),(221,0.300418,79),(251,0.300418,79),(262,0.300418,79),(338,0.300418,79),(3640,0.300418,79),(7935,0.300418,79),(10730,0.300418,79),(11655,0.300418,79),(19619,0.300418,79),(21744,0.300418,79),(23647,2.18285,2718),(23656,2.18285,2718),(14337,1.69549,1917),(14338,1.69549,1917),(14582,1.69549,1917),(14583,1.69549,1917),(16630,7.89011,2272),(17205,7.89011,2272),(18671,7.89011,2272),(18947,7.89011,2272),(18951,7.89011,2272),(19227,7.89011,2272),(19230,7.89011,2272),(19501,7.89011,2272),(21435,7.89011,2272),(20543,0.300434,2524),(127,0.607634,127),(351,0.607634,127),(797,0.607634,127),(1279,0.607634,127),(4429,0.607634,127),(11358,0.607634,127),(161,1.88231,43),(165,1.88231,43),(372,1.88231,43),(380,1.88231,43),(447,1.88231,43),(557,1.88231,43),(604,1.88231,43),(643,1.88231,43),(644,1.88231,43),(647,1.88231,43),(666,1.88231,43),(776,1.88231,43),(780,1.88231,43),(781,1.88231,43),(782,1.88231,43),(783,1.88231,43),(784,1.88231,43),(785,1.88231,43),(801,1.88231,43),(802,1.88231,43),(855,1.88231,43),(868,1.88231,43),(869,1.88231,43),(903,1.88231,43),(1100,1.88231,43),(1164,1.88231,43),(1207,1.88231,43),(1222,1.88231,43),(1950,1.88231,43),(3202,1.88231,43),(3203,1.88231,43),(4124,1.88231,43),(4613,1.88231,43),(7339,1.88231,43),(9278,1.88231,43),(9280,1.88231,43),(9287,1.88231,43),(9509,1.88231,43),(9511,1.88231,43),(9558,1.88231,43),(10274,1.88231,43),(11416,1.88231,43),(15878,1.88231,43),(16476,1.88231,43),(16784,1.88231,43),(18156,1.88231,43),(19347,1.88231,43),(19531,1.88231,43),(20630,1.88231,43),(20634,1.88231,43),(20801,1.88231,43),(20830,1.88231,43),(21355,1.88231,43),(23114,1.88231,43),(18050,1.00845,2394),(18069,1.00845,2394),(18919,1.00845,2394),(18954,1.00845,2394),(18955,1.00845,2394),(18957,1.00845,2394),(18998,1.00845,2394),(19070,1.00845,2394),(19882,1.00845,2394),(22621,1.00845,2394),(23370,1.00845,2394),(1564,0.311612,183),(1890,0.311612,183),(2590,0.311612,183),(2884,0.311612,183),(3106,0.311612,183),(3108,0.311612,183),(3119,0.311612,183),(3120,0.311612,183),(3121,0.311612,183),(3124,0.311612,183),(3125,0.311612,183),(3562,0.311612,183),(3569,0.311612,183),(3584,0.311612,183),(3588,0.311612,183),(5017,0.311612,183),(5018,0.311612,183),(5033,0.311612,183),(5042,0.311612,183),(5093,0.311612,183),(5378,0.311612,183),(5425,0.311612,183),(5435,0.311612,183),(6609,0.311612,183),(6611,0.311612,183),(6629,0.311612,183),(6712,0.311612,183),(6714,0.311612,183),(6881,0.311612,183),(6975,0.311612,183),(6976,0.311612,183),(6982,0.311612,183),(7000,0.311612,183),(7039,0.311612,183),(7119,0.311612,183),(7138,0.311612,183),(7969,0.311612,183),(8478,0.311612,183),(8693,0.311612,183),(8776,0.311612,183),(8896,0.311612,183),(8897,0.311612,183),(9131,0.311612,183),(9331,0.311612,183),(9818,0.311612,183),(9821,0.311612,183),(10008,0.311612,183),(10147,0.311612,183),(10214,0.311612,183),(10465,0.311612,183),(10569,0.311612,183),(10571,0.311612,183),(10575,0.311612,183),(10620,0.311612,183),(10722,0.311612,183),(11173,0.311612,183),(11175,0.311612,183),(11176,0.311612,183),(11177,0.311612,183),(11281,0.311612,183),(11292,0.311612,183),(11596,0.311612,183),(11691,0.311612,183),(11800,0.311612,183),(11827,0.311612,183),(12067,0.311612,183),(12079,0.311612,183),(12935,0.311612,183),(12940,0.311612,183),(12941,0.311612,183),(12991,0.311612,183),(12992,0.311612,183),(13251,0.311612,183),(13256,0.311612,183),(13261,0.311612,183),(13265,0.311612,183),(13268,0.311612,183),(13272,0.311612,183),(13277,0.311612,183),(13354,0.311612,183),(13373,0.311612,183),(13381,0.311612,183),(13389,0.311612,183),(13534,0.311612,183),(13539,0.311612,183),(13549,0.311612,183),(13553,0.311612,183),(14327,0.311612,183),(14973,0.311612,183),(14974,0.311612,183),(14975,0.311612,183),(14976,0.311612,183),(15223,0.311612,183),(15368,0.311612,183),(15390,0.311612,183),(15453,0.311612,183),(15458,0.311612,183),(15480,0.311612,183),(15663,0.311612,183),(15712,0.311612,183),(15795,0.311612,183),(15796,0.311612,183),(15797,0.311612,183),(15798,0.311612,183),(15799,0.311612,183),(15800,0.311612,183),(15801,0.311612,183),(15802,0.311612,183),(15890,0.311612,183),(16372,0.311612,183),(16447,0.311612,183),(17136,0.311612,183),(17531,0.311612,183),(17629,0.311612,183),(17660,0.311612,183),(18108,0.311612,183),(18133,0.311612,183),(18491,0.311612,183),(18798,0.311612,183),(18846,0.311612,183),(19175,0.311612,183),(19281,0.311612,183),(20079,0.311612,183),(20080,0.311612,183),(20083,0.311612,183),(20084,0.311612,183),(20087,0.311612,183),(20088,0.311612,183),(20112,0.311612,183),(20320,0.311612,183),(20332,0.311612,183),(20520,0.311612,183),(20581,0.311612,183),(20614,0.311612,183),(20616,0.311612,183),(20869,0.311612,183),(21183,0.311612,183),(21186,0.311612,183),(21310,0.311612,183),(21415,0.311612,183),(21604,0.311612,183),(21674,0.311612,183),(21701,0.311612,183),(21850,0.311612,183),(21852,0.311612,183),(21887,0.311612,183),(21972,0.311612,183),(22366,0.311612,183),(22434,0.311612,183),(22511,0.311612,183),(22512,0.311612,183),(22559,0.311612,183),(22685,0.311612,183),(22699,0.311612,183),(23438,0.311612,183),(23446,0.311612,183),(23676,0.311612,183),(11410,1.45764,1631),(16571,1.45764,1631),(16572,1.45764,1631),(18701,1.45764,1631),(19249,1.45764,1631),(20146,1.45764,1631),(20831,1.45764,1631),(20832,1.45764,1631),(17764,2.58677,2335),(18155,2.58677,2335),(18645,2.58677,2335),(18698,2.58677,2335),(19093,2.58677,2335),(19667,2.58677,2335),(19677,2.58677,2335),(19691,2.58677,2335),(20346,2.58677,2335),(20860,2.58677,2335),(20863,2.58677,2335),(21260,2.58677,2335),(10718,1.69904,1511),(10719,1.69904,1511),(10720,1.69904,1511),(10721,1.69904,1511),(16937,1.69904,1511),(16938,1.69904,1511),(16939,1.69904,1511),(18292,1.0662,2427),(20939,1.0662,2427),(19400,3.72564,2490),(19401,3.72564,2490),(19403,3.72564,2490),(19404,3.72564,2490),(19405,3.72564,2490),(19406,3.72564,2490),(19407,3.72564,2490),(19416,3.72564,2490),(19554,3.72564,2490),(20098,3.72564,2490),(20596,3.72564,2490),(21148,3.72564,2490),(21282,3.72564,2490),(23516,3.72564,2490),(892,1.81343,1231),(15506,1.81343,1231),(15507,1.81343,1231),(15591,1.81343,1231),(15592,1.81343,1231),(15593,1.81343,1231),(16244,1.81343,1231),(16245,1.81343,1231),(18167,1.81343,1231),(19705,1.81343,1231),(20808,1.81343,1231),(20815,1.81343,1231),(21793,1.81343,1231),(21907,1.81343,1231),(22101,1.81343,1231),(22204,1.81343,1231),(19679,3.78808,2522),(20521,3.78808,2522),(20853,3.78808,2522),(20854,3.78808,2522),(20914,3.78808,2522),(21150,3.78808,2522),(21152,3.72564,2551),(21155,3.72564,2551),(21156,3.72564,2551),(21157,3.72564,2551),(21158,3.72564,2551),(21423,3.72564,2551),(21444,3.72564,2551),(15431,4.9077,2204),(15739,4.9077,2204),(19067,4.9077,2204),(17712,2.48355,2380),(17713,2.48355,2380),(17714,2.48355,2380),(19006,2.48355,2380),(19007,2.48355,2380),(19029,2.48355,2380),(19289,2.48355,2380),(19290,2.48355,2380),(19291,2.48355,2380),(19292,2.48355,2380),(19455,2.48355,2380),(19775,2.48355,2380),(19962,2.48355,2380),(20139,2.48355,2380),(20226,2.48355,2380),(18813,6.07808,2445),(18944,6.07808,2445),(22409,6.07808,2445),(19250,1.68814,2475),(19640,1.68814,2475),(6882,0.48285,831),(6894,0.48285,831),(6946,0.48285,831),(6952,0.48285,831),(6954,0.48285,831),(6961,0.48285,831),(6966,0.48285,831),(7031,0.48285,831),(7032,0.48285,831),(7033,0.48285,831),(7034,0.48285,831),(7035,0.48285,831),(7036,0.48285,831),(7047,0.48285,831),(7048,0.48285,831),(7049,0.48285,831),(7050,0.48285,831),(7051,0.48285,831),(7052,0.48285,831),(7053,0.48285,831),(7054,0.48285,831),(7055,0.48285,831),(7056,0.48285,831),(7057,0.48285,831),(7058,0.48285,831),(7059,0.48285,831),(7060,0.48285,831),(7061,0.48285,831),(7073,0.48285,831),(7074,0.48285,831),(7093,0.48285,831),(7094,0.48285,831),(7095,0.48285,831),(7096,0.48285,831),(7097,0.48285,831),(7098,0.48285,831),(7099,0.48285,831),(7100,0.48285,831),(7101,0.48285,831),(7102,0.48285,831),(7103,0.48285,831),(7104,0.48285,831),(7105,0.48285,831),(7106,0.48285,831),(7107,0.48285,831),(7108,0.48285,831),(7109,0.48285,831),(7110,0.48285,831),(7111,0.48285,831),(7112,0.48285,831),(7113,0.48285,831),(7124,0.48285,831),(7125,0.48285,831),(7126,0.48285,831),(7127,0.48285,831),(7128,0.48285,831),(7129,0.48285,831),(7130,0.48285,831),(7131,0.48285,831),(7132,0.48285,831),(7133,0.48285,831),(7134,0.48285,831),(7135,0.48285,831),(7136,0.48285,831),(7137,0.48285,831),(7153,0.48285,831),(7154,0.48285,831),(7155,0.48285,831),(7156,0.48285,831),(7157,0.48285,831),(7158,0.48285,831),(7159,0.48285,831),(7160,0.48285,831),(7161,0.48285,831),(7162,0.48285,831),(7163,0.48285,831),(7164,0.48285,831),(7165,0.48285,831),(7166,0.48285,831),(7167,0.48285,831),(7168,0.48285,831),(7169,0.48285,831),(7170,0.48285,831),(7171,0.48285,831),(7172,0.48285,831),(7173,0.48285,831),(7174,0.48285,831),(7176,0.48285,831),(7177,0.48285,831),(7178,0.48285,831),(7179,0.48285,831),(7180,0.48285,831),(7181,0.48285,831),(7182,0.48285,831),(7183,0.48285,831),(7184,0.48285,831),(7185,0.48285,831),(7186,0.48285,831),(7187,0.48285,831),(7188,0.48285,831),(7189,0.48285,831),(7190,0.48285,831),(7191,0.48285,831),(7192,0.48285,831),(7193,0.48285,831),(7194,0.48285,831),(7195,0.48285,831),(7196,0.48285,831),(7197,0.48285,831),(7198,0.48285,831),(7199,0.48285,831),(7200,0.48285,831),(7201,0.48285,831),(7202,0.48285,831),(7203,0.48285,831),(7204,0.48285,831),(7205,0.48285,831),(7206,0.48285,831),(7207,0.48285,831),(7208,0.48285,831),(7209,0.48285,831),(7210,0.48285,831),(7211,0.48285,831),(7212,0.48285,831),(7213,0.48285,831),(7214,0.48285,831),(7215,0.48285,831),(7216,0.48285,831),(7217,0.48285,831),(7218,0.48285,831),(7219,0.48285,831),(7220,0.48285,831),(7221,0.48285,831),(7222,0.48285,831),(7223,0.48285,831),(7224,0.48285,831),(7225,0.48285,831),(7226,0.48285,831),(7227,0.48285,831),(7228,0.48285,831),(7229,0.48285,831),(7230,0.48285,831),(7231,0.48285,831),(7232,0.48285,831),(7233,0.48285,831),(7234,0.48285,831),(7235,0.48285,831),(7236,0.48285,831),(7237,0.48285,831),(7238,0.48285,831),(7239,0.48285,831),(7240,0.48285,831),(7241,0.48285,831),(7242,0.48285,831),(7243,0.48285,831),(7244,0.48285,831),(7245,0.48285,831),(7246,0.48285,831),(7247,0.48285,831),(7272,0.48285,831),(7329,0.48285,831),(7332,0.48285,831),(7333,0.48285,831),(7334,0.48285,831),(7335,0.48285,831),(7337,0.48285,831),(7338,0.48285,831),(7340,0.48285,831),(7341,0.48285,831),(7342,0.48285,831),(7343,0.48285,831),(7346,0.48285,831),(7354,0.48285,831),(7355,0.48285,831),(7509,0.48285,831),(7529,0.48285,831),(7613,0.48285,831),(7670,0.48285,831),(7750,0.48285,831),(7809,0.48285,831),(7811,0.48285,831),(7838,0.48285,831),(7841,0.48285,831),(7849,0.48285,831),(7993,0.48285,831),(8009,0.48285,831),(8010,0.48285,831),(8069,0.48285,831),(8477,0.48285,831),(8569,0.48285,831),(8631,0.48285,831),(8656,0.48285,831),(8667,0.48285,831),(8845,0.48285,831),(8846,0.48285,831),(8847,0.48285,831),(8848,0.48285,831),(8849,0.48285,831),(9259,0.48285,831),(9284,0.48285,831),(9286,0.48285,831),(9340,0.48285,831),(9341,0.48285,831),(9348,0.48285,831),(9352,0.48285,831),(9561,0.48285,831),(9777,0.48285,831),(10454,0.48285,831),(10472,0.48285,831),(10650,0.48285,831),(10655,0.48285,831),(10656,0.48285,831),(10739,0.48285,831),(10740,0.48285,831),(10741,0.48285,831),(10742,0.48285,831),(10743,0.48285,831),(10747,0.48285,831),(10748,0.48285,831),(10754,0.48285,831),(10981,0.48285,831),(11353,0.48285,831),(11375,0.48285,831),(11376,0.48285,831),(11377,0.48285,831),(11379,0.48285,831),(11387,0.48285,831),(11461,0.48285,831),(11470,0.48285,831),(11629,0.48285,831),(11630,0.48285,831),(11679,0.48285,831),(11690,0.48285,831),(11911,0.48285,831),(12230,0.48285,831),(13050,0.48285,831),(13342,0.48285,831),(13346,0.48285,831),(13348,0.48285,831),(13349,0.48285,831),(13356,0.48285,831),(13439,0.48285,831),(13969,0.48285,831),(13991,0.48285,831),(14304,0.48285,831),(14381,0.48285,831),(14498,0.48285,831),(14530,0.48285,831),(14561,0.48285,831),(14566,0.48285,831),(14664,0.48285,831),(14775,0.48285,831),(14854,0.48285,831),(15095,0.48285,831),(15096,0.48285,831),(15097,0.48285,831),(15201,0.48285,831),(15202,0.48285,831),(15203,0.48285,831),(15235,0.48285,831),(15237,0.48285,831),(15278,0.48285,831),(15279,0.48285,831),(15324,0.48285,831),(15698,0.48285,831),(15750,0.48285,831),(15762,0.48285,831),(15763,0.48285,831),(15977,0.48285,831),(15998,0.48285,831),(16022,0.48285,831),(16023,0.48285,831),(16172,0.48285,831),(16468,0.48285,831),(16950,0.48285,831),(16951,0.48285,831),(16952,0.48285,831),(16978,0.48285,831),(17836,0.48285,831),(18174,0.48285,831),(18290,0.48285,831),(18473,0.48285,831),(18744,0.48285,831),(18776,0.48285,831),(18966,0.48285,831),(18967,0.48285,831),(18999,0.48285,831),(19000,0.48285,831),(19037,0.48285,831),(19038,0.48285,831),(19043,0.48285,831),(19046,0.48285,831),(19047,0.48285,831),(19076,0.48285,831),(19077,0.48285,831),(19079,0.48285,831),(19088,0.48285,831),(19151,0.48285,831),(19167,0.48285,831),(19197,0.48285,831),(19198,0.48285,831),(19203,0.48285,831),(19224,0.48285,831),(19226,0.48285,831),(19261,0.48285,831),(19262,0.48285,831),(19263,0.48285,831),(19264,0.48285,831),(19265,0.48285,831),(19266,0.48285,831),(19342,0.48285,831),(19343,0.48285,831),(19417,0.48285,831),(19418,0.48285,831),(19419,0.48285,831),(19502,0.48285,831),(19524,0.48285,831),(19580,0.48285,831),(19904,0.48285,831),(20003,0.48285,831),(20016,0.48285,831),(20326,0.48285,831),(20428,0.48285,831),(20429,0.48285,831),(20438,0.48285,831),(20582,0.48285,831),(20805,0.48285,831),(20906,0.48285,831),(21051,0.48285,831),(21060,0.48285,831),(21061,0.48285,831),(21067,0.48285,831),(21188,0.48285,831),(21189,0.48285,831),(21236,0.48285,831),(21276,0.48285,831),(21277,0.48285,831),(21288,0.48285,831),(21289,0.48285,831),(21290,0.48285,831),(21462,0.48285,831),(21625,0.48285,831),(21626,0.48285,831),(21627,0.48285,831),(21646,0.48285,831),(21649,0.48285,831),(21698,0.48285,831),(21699,0.48285,831),(21700,0.48285,831),(21854,0.48285,831),(21855,0.48285,831),(22369,0.48285,831),(22398,0.48285,831),(22399,0.48285,831),(22433,0.48285,831),(22480,0.48285,831),(22487,0.48285,831),(22494,0.48285,831),(22495,0.48285,831),(22498,0.48285,831),(22507,0.48285,831),(22508,0.48285,831),(22531,0.48285,831),(22545,0.48285,831),(22553,0.48285,831),(22605,0.48285,831),(22723,0.48285,831),(22739,0.48285,831),(22743,0.48285,831),(22744,0.48285,831),(22745,0.48285,831),(22746,0.48285,831),(22879,0.48285,831),(22880,0.48285,831),(22882,0.48285,831),(22883,0.48285,831),(22884,0.48285,831),(22885,0.48285,831),(22886,0.48285,831),(22888,0.48285,831),(22889,0.48285,831),(22895,0.48285,831),(22896,0.48285,831),(22899,0.48285,831),(23444,0.48285,831),(23659,0.48285,831),(23691,0.48285,831),(23757,0.48285,831),(23759,0.48285,831),(23762,0.48285,831),(23763,0.48285,831),(23764,0.48285,831),(23766,0.48285,831),(23768,0.48285,831),(23777,0.48285,831),(24010,0.48285,831),(24023,0.48285,831),(24028,0.48285,831),(24029,0.48285,831),(24032,0.48285,831),(24035,0.48285,831),(24036,0.48285,831),(2414,1.31656,218),(2485,1.31656,218),(2486,1.31656,218),(2487,1.31656,218),(2488,1.31656,218),(2489,1.31656,218),(2491,1.31656,218),(2729,1.31656,218),(2730,1.31656,218),(2731,1.31656,218),(2732,1.31656,218),(2765,1.31656,218),(2766,1.31656,218),(2864,1.31656,218),(3247,1.31656,218),(5905,1.31656,218),(5985,1.31656,218),(6068,1.31656,218),(6069,1.31656,218),(6070,1.31656,218),(7347,1.31656,218),(8969,1.31656,218),(8970,1.31656,218),(9749,1.31656,218),(10983,1.31656,218),(10984,1.31656,218),(10985,1.31656,218),(10986,1.31656,218),(10987,1.31656,218),(10988,1.31656,218),(11098,1.31656,218),(13097,1.31656,218),(15327,1.31656,218),(15336,1.31656,218),(15383,1.31656,218),(15384,1.31656,218),(15385,1.31656,218),(15422,1.31656,218),(15423,1.31656,218),(15433,1.31656,218),(15469,1.31656,218),(15470,1.31656,218),(15471,1.31656,218),(15533,1.31656,218),(18115,1.31656,218),(20009,1.31656,218),(20010,1.31656,218),(20014,1.31656,218),(20015,1.31656,218),(20600,1.31656,218),(20790,1.31656,218),(20911,1.31656,218),(20912,1.31656,218),(20963,1.31656,218),(20979,1.31656,218),(193,1.45764,66),(377,1.45764,66),(381,1.45764,66),(389,1.45764,66),(499,1.45764,66),(503,1.45764,66),(607,1.45764,66),(703,1.45764,66),(704,1.45764,66),(744,1.45764,66),(1167,1.45764,66),(1208,1.45764,66),(2450,1.45764,66),(2453,1.45764,66),(3026,1.45764,66),(3027,1.45764,66),(3035,1.45764,66),(4713,1.45764,66),(4714,1.45764,66),(4716,1.45764,66),(6121,1.45764,66),(6122,1.45764,66),(6807,1.45764,66),(8869,1.45764,66),(8870,1.45764,66),(8871,1.45764,66),(10015,1.45764,66),(15922,1.45764,66),(20007,1.45764,66),(20008,1.45764,66),(20814,1.45764,66),(20829,1.45764,66),(23730,1.45764,66),(8571,1.88861,1232),(17463,0.861471,2367),(17464,0.861471,2367),(17560,0.861471,2367),(17576,0.861471,2367),(17583,0.861471,2367),(17584,0.861471,2367),(17585,0.861471,2367),(17586,0.861471,2367),(17587,0.861471,2367),(17588,0.861471,2367),(17589,0.861471,2367),(17590,0.861471,2367),(17591,0.861471,2367),(17592,0.861471,2367),(17594,0.861471,2367),(17595,0.861471,2367),(17598,0.861471,2367),(17599,0.861471,2367),(17600,0.861471,2367),(17601,0.861471,2367),(17602,0.861471,2367),(17603,0.861471,2367),(17604,0.861471,2367),(17606,0.861471,2367),(17609,0.861471,2367),(17616,0.861471,2367),(17619,0.861471,2367),(17648,0.861471,2367),(17680,0.861471,2367),(17691,0.861471,2367),(17705,0.861471,2367),(17728,0.861471,2367),(17747,0.861471,2367),(17755,0.861471,2367),(17756,0.861471,2367),(17757,0.861471,2367),(17760,0.861471,2367),(17761,0.861471,2367),(17763,0.861471,2367),(17766,0.861471,2367),(17767,0.861471,2367),(17792,0.861471,2367),(17793,0.861471,2367),(17811,0.861471,2367),(17818,0.861471,2367),(17823,0.861471,2367),(17824,0.861471,2367),(17825,0.861471,2367),(17831,0.861471,2367),(17833,0.861471,2367),(17837,0.861471,2367),(17838,0.861471,2367),(17955,0.861471,2367),(17956,0.861471,2367),(17973,0.861471,2367),(17974,0.861471,2367),(18027,0.861471,2367),(18046,0.861471,2367),(18071,0.861471,2367),(18214,0.861471,2367),(18221,0.861471,2367),(18222,0.861471,2367),(18281,0.861471,2367),(18282,0.861471,2367),(18284,0.861471,2367),(18285,0.861471,2367),(18300,0.861471,2367),(18301,0.861471,2367),(18302,0.861471,2367),(18307,0.861471,2367),(18324,0.861471,2367),(18418,0.861471,2367),(18460,0.861471,2367),(18462,0.861471,2367),(18464,0.861471,2367),(18512,0.861471,2367),(18513,0.861471,2367),(18514,0.861471,2367),(18528,0.861471,2367),(18529,0.861471,2367),(18530,0.861471,2367),(18538,0.861471,2367),(18549,0.861471,2367),(18570,0.861471,2367),(18571,0.861471,2367),(18581,0.861471,2367),(18582,0.861471,2367),(18589,0.861471,2367),(18599,0.861471,2367),(18600,0.861471,2367),(18601,0.861471,2367),(18602,0.861471,2367),(18603,0.861471,2367),(18604,0.861471,2367),(18626,0.861471,2367),(18642,0.861471,2367),(18656,0.861471,2367),(19108,0.861471,2367),(19297,0.861471,2367),(19497,0.861471,2367),(19720,0.861471,2367),(19721,0.861471,2367),(19841,0.861471,2367),(19842,0.861471,2367),(19843,0.861471,2367),(19851,0.861471,2367),(19854,0.861471,2367),(20005,0.861471,2367),(20254,0.861471,2367),(20255,0.861471,2367),(20279,0.861471,2367),(20280,0.861471,2367),(20312,0.861471,2367),(20333,0.861471,2367),(20334,0.861471,2367),(20388,0.861471,2367),(20398,0.861471,2367),(20421,0.861471,2367),(20422,0.861471,2367),(20439,0.861471,2367),(20440,0.861471,2367),(20441,0.861471,2367),(20478,0.861471,2367),(20483,0.861471,2367),(20523,0.861471,2367),(20537,0.861471,2367),(20610,0.861471,2367),(20635,0.861471,2367),(20636,0.861471,2367),(20637,0.861471,2367),(20638,0.861471,2367),(20639,0.861471,2367),(20640,0.861471,2367),(20644,0.861471,2367),(20660,0.861471,2367),(20661,0.861471,2367),(20668,0.861471,2367),(20670,0.861471,2367),(20694,0.861471,2367),(20961,0.861471,2367),(20962,0.861471,2367),(21039,0.861471,2367),(21092,0.861471,2367),(21093,0.861471,2367),(21101,0.861471,2367),(21105,0.861471,2367),(21115,0.861471,2367),(21116,0.861471,2367),(21117,0.861471,2367),(21118,0.861471,2367),(21123,0.861471,2367),(21184,0.861471,2367),(21202,0.861471,2367),(21203,0.861471,2367),(21344,0.861471,2367),(21345,0.861471,2367),(21346,0.861471,2367),(21387,0.861471,2367),(21388,0.861471,2367),(21402,0.861471,2367),(21408,0.861471,2367),(21422,0.861471,2367),(21440,0.861471,2367),(21442,0.861471,2367),(21475,0.861471,2367),(21476,0.861471,2367),(21499,0.861471,2367),(21591,0.861471,2367),(21592,0.861471,2367),(21593,0.861471,2367),(21594,0.861471,2367),(21595,0.861471,2367),(21596,0.861471,2367),(21606,0.861471,2367),(21607,0.861471,2367),(22541,0.861471,2367),(22709,0.861471,2367),(23131,0.861471,2367),(23132,0.861471,2367),(23687,0.861471,2367),(22903,0.397536,2674),(1698,2.18849,204),(20857,3.3847,2540),(22253,3.3847,2540),(17191,2.41454,2423),(17674,2.41454,2423),(17685,2.41454,2423),(17686,2.41454,2423),(17687,2.41454,2423),(17688,2.41454,2423),(17689,2.41454,2423),(17739,2.41454,2423),(17740,2.41454,2423),(17748,2.41454,2423),(17794,2.41454,2423),(17839,2.41454,2423),(17840,2.41454,2423),(17841,2.41454,2423),(18066,2.41454,2423),(18271,2.41454,2423),(18365,2.41454,2423),(18659,2.41454,2423),(18660,2.41454,2423),(18848,2.41454,2423),(18888,2.41454,2423),(18960,2.41454,2423),(18961,2.41454,2423),(19072,2.41454,2423),(19090,2.41454,2423),(19094,2.41454,2423),(19095,2.41454,2423),(19096,2.41454,2423),(19097,2.41454,2423),(19098,2.41454,2423),(19105,2.41454,2423),(19251,2.41454,2423),(19337,2.41454,2423),(19626,2.41454,2423),(19627,2.41454,2423),(19629,2.41454,2423),(19630,2.41454,2423),(19631,2.41454,2423),(19632,2.41454,2423),(19636,2.41454,2423),(19638,2.41454,2423),(19645,2.41454,2423),(19646,2.41454,2423),(19647,2.41454,2423),(19648,2.41454,2423),(19649,2.41454,2423),(19650,2.41454,2423),(19651,2.41454,2423),(19652,2.41454,2423),(19653,2.41454,2423),(19654,2.41454,2423),(19655,2.41454,2423),(19656,2.41454,2423),(19671,2.41454,2423),(19675,2.41454,2423),(19684,2.41454,2423),(19686,2.41454,2423),(19692,2.41454,2423),(19697,2.41454,2423),(19710,2.41454,2423),(19739,2.41454,2423),(19745,2.41454,2423),(19772,2.41454,2423),(19773,2.41454,2423),(19774,2.41454,2423),(19778,2.41454,2423),(19780,2.41454,2423),(19889,2.41454,2423),(19896,2.41454,2423),(19946,2.41454,2423),(19954,2.41454,2423),(19955,2.41454,2423),(19956,2.41454,2423),(19957,2.41454,2423),(19958,2.41454,2423),(19959,2.41454,2423),(19960,2.41454,2423),(19964,2.41454,2423),(20028,2.41454,2423),(20161,2.41454,2423),(20174,2.41454,2423),(20175,2.41454,2423),(20295,2.41454,2423),(20419,2.41454,2423),(20423,2.41454,2423),(20466,2.41454,2423),(20467,2.41454,2423),(20468,2.41454,2423),(20534,2.41454,2423),(20557,2.41454,2423),(20895,2.41454,2423),(20897,2.41454,2423),(20898,2.41454,2423),(21097,2.41454,2423),(21102,2.41454,2423),(21317,2.41454,2423),(21472,2.41454,2423),(21489,2.41454,2423),(22386,2.41454,2423),(22419,2.41454,2423),(62,3.96644,62),(800,3.96644,62),(1092,3.96644,62),(1397,3.96644,62),(1772,3.96644,62),(1993,3.96644,62),(2423,3.96644,62),(2728,3.96644,62),(2837,3.96644,62),(4872,3.96644,62),(5051,3.96644,62),(6674,3.96644,62),(6735,3.96644,62),(6736,3.96644,62),(6737,3.96644,62),(7271,3.96644,62),(7289,3.96644,62),(10897,3.96644,62),(10898,3.96644,62),(10899,3.96644,62),(10900,3.96644,62),(15288,3.96644,62),(23224,0.571564,2690),(23228,0.571564,2690),(23477,0.571564,2690),(23478,0.571564,2690),(17208,2.73576,2275),(18289,2.73576,2275),(18816,2.73576,2275),(19035,2.73576,2275),(19254,2.73576,2275),(19899,2.73576,2275),(20509,2.73576,2275),(202,0.84494,44),(203,0.84494,44),(522,0.84494,44),(523,0.84494,44),(524,0.84494,44),(563,0.84494,44),(564,0.84494,44),(574,0.84494,44),(657,0.84494,44),(729,0.84494,44),(736,0.84494,44),(1098,0.84494,44),(1947,0.84494,44),(1979,0.84494,44),(11179,0.84494,44),(11180,0.84494,44),(11181,0.84494,44),(17053,0.84494,44),(19044,0.84494,44),(16635,1.57318,2393),(18170,1.57318,2393),(18726,1.57318,2393),(18958,1.57318,2393),(19338,1.57318,2393),(19681,1.57318,2393),(19883,1.57318,2393),(19952,1.57318,2393),(6851,5.85247,85),(15761,1.99203,2223),(15778,1.99203,2223),(17620,2.5619,2358),(17677,2.5619,2358),(17678,2.5619,2358),(17679,2.5619,2358),(17896,2.5619,2358),(17897,2.5619,2358),(17899,2.5619,2358),(17901,2.5619,2358),(17902,2.5619,2358),(17908,2.5619,2358),(17909,2.5619,2358),(18045,2.5619,2358),(20164,2.5619,2358),(20166,2.5619,2358),(22732,2.5619,2358),(16213,1.63587,2260),(5050,1.74307,552),(16039,1.74307,552),(16045,1.74307,552),(16408,1.74307,552),(2281,1.56463,213),(21632,0.773629,2592),(5145,5.59332,571),(5645,5.59332,571),(6369,5.59332,571),(6370,5.59332,571),(6371,5.59332,571),(6372,5.59332,571),(6373,5.59332,571),(6374,5.59332,571),(6375,5.59332,571),(6376,5.59332,571),(6377,5.59332,571),(6378,5.59332,571),(6379,5.59332,571),(7553,5.59332,571),(7975,5.59332,571),(8317,5.59332,571),(8318,5.59332,571),(9231,5.59332,571),(9584,5.59332,571),(9585,5.59332,571),(9586,5.59332,571),(9806,5.59332,571),(9995,5.59332,571),(9996,5.59332,571),(12820,5.59332,571),(12821,5.59332,571),(13971,5.59332,571),(13972,5.59332,571),(13993,5.59332,571),(14012,5.59332,571),(15293,5.59332,571),(18467,5.59332,571),(20851,5.59332,571),(21235,5.59332,571),(17402,1.04946,2353),(17581,1.04946,2353),(17605,1.04946,2353),(17663,1.04946,2353),(17951,1.04946,2353),(17954,1.04946,2353),(18270,1.04946,2353),(18384,1.04946,2353),(18387,1.04946,2353),(18388,1.04946,2353),(18389,1.04946,2353),(18390,1.04946,2353),(18393,1.04946,2353),(18394,1.04946,2353),(18397,1.04946,2353),(18398,1.04946,2353),(18399,1.04946,2353),(18400,1.04946,2353),(18401,1.04946,2353),(19360,1.04946,2353),(19361,1.04946,2353),(19362,1.04946,2353),(19363,1.04946,2353),(19364,1.04946,2353),(20100,1.04946,2353),(20199,1.04946,2353),(20200,1.04946,2353),(20201,1.04946,2353),(20205,1.04946,2353),(20235,1.04946,2353),(20470,1.04946,2353),(20643,1.04946,2353),(20662,1.04946,2353),(20671,1.04946,2353),(20772,1.04946,2353),(20990,1.04946,2353),(21159,1.04946,2353),(21160,1.04946,2353),(21161,1.04946,2353),(21165,1.04946,2353),(21166,1.04946,2353),(22413,1.04946,2353),(22417,1.04946,2353),(22598,1.04946,2353),(22874,1.04946,2353),(22875,1.04946,2353),(22876,1.04946,2353),(22877,1.04946,2353),(23494,1.04946,2353),(23648,1.04946,2353),(17166,3.48978,2326),(17378,3.48978,2326),(1070,1.46338,160),(1204,1.46338,160),(1405,1.46338,160),(2172,1.46338,160),(4607,1.46338,160),(5488,1.46338,160),(6537,1.46338,160),(8409,1.46338,160),(8529,1.46338,160),(9449,1.46338,160),(12109,1.46338,160),(12129,1.46338,160),(12231,1.46338,160),(14508,1.46338,160),(14513,1.46338,160),(14517,1.46338,160),(14518,1.46338,160),(14527,1.46338,160),(18244,1.46338,160),(19902,1.46338,160),(20431,1.46338,160),(21320,1.46338,160),(21321,1.46338,160),(22748,1.46338,160),(1534,1.53881,192),(1535,1.53881,192),(1536,1.53881,192),(2301,1.53881,192),(2609,1.53881,192),(2709,1.53881,192),(2710,1.53881,192),(2711,1.53881,192),(2712,1.53881,192),(2713,1.53881,192),(2714,1.53881,192),(2715,1.53881,192),(2716,1.53881,192),(2726,1.53881,192),(4636,1.53881,192),(4689,1.53881,192),(8050,1.53881,192),(10270,1.53881,192),(10271,1.53881,192),(10902,1.53881,192),(10903,1.53881,192),(10904,1.53881,192),(12966,1.53881,192),(18505,3.84435,2428),(18820,3.84435,2428),(21397,3.84435,2428),(23177,0.431925,2686),(23178,0.431925,2686),(23334,0.431925,2686),(15475,0.360006,2209),(15505,0.360006,2209),(15510,0.360006,2209),(15514,0.360006,2209),(15516,0.360006,2209),(15518,0.360006,2209),(15520,0.360006,2209),(15522,0.360006,2209),(15523,0.360006,2209),(15525,0.360006,2209),(15526,0.360006,2209),(15527,0.360006,2209),(15529,0.360006,2209),(15530,0.360006,2209),(15531,0.360006,2209),(15907,0.360006,2209),(15908,0.360006,2209),(15910,0.360006,2209),(15911,0.360006,2209),(15913,0.360006,2209),(15919,0.360006,2209),(15924,0.360006,2209),(15930,0.360006,2209),(15933,0.360006,2209),(16036,0.360006,2209),(16038,0.360006,2209),(16046,0.360006,2209),(16059,0.360006,2209),(16065,0.360006,2209),(16069,0.360006,2209),(16080,0.360006,2209),(16090,0.360006,2209),(16115,0.360006,2209),(16116,0.360006,2209),(16117,0.360006,2209),(16119,0.360006,2209),(16120,0.360006,2209),(16121,0.360006,2209),(16122,0.360006,2209),(16133,0.360006,2209),(16183,0.360006,2209),(16193,0.360006,2209),(16247,0.360006,2209),(16249,0.360006,2209),(16288,0.360006,2209),(16289,0.360006,2209),(16290,0.360006,2209),(16291,0.360006,2209),(16321,0.360006,2209),(16543,0.360006,2209),(16544,0.360006,2209),(16545,0.360006,2209),(16546,0.360006,2209),(16592,0.360006,2209),(16675,0.360006,2209),(16676,0.360006,2209),(16677,0.360006,2209),(16678,0.360006,2209),(16679,0.360006,2209),(16680,0.360006,2209),(16681,0.360006,2209),(16682,0.360006,2209),(16683,0.360006,2209),(16684,0.360006,2209),(16685,0.360006,2209),(16686,0.360006,2209),(16687,0.360006,2209),(16688,0.360006,2209),(16689,0.360006,2209),(16690,0.360006,2209),(16691,0.360006,2209),(16694,0.360006,2209),(16695,0.360006,2209),(16696,0.360006,2209),(16698,0.360006,2209),(16709,0.360006,2209),(16713,0.360006,2209),(16716,0.360006,2209),(16718,0.360006,2209),(16722,0.360006,2209),(16725,0.360006,2209),(16732,0.360006,2209),(16733,0.360006,2209),(16745,0.360006,2209),(16748,0.360006,2209),(16749,0.360006,2209),(16750,0.360006,2209),(16751,0.360006,2209),(16752,0.360006,2209),(16753,0.360006,2209),(16754,0.360006,2209),(16760,0.360006,2209),(16763,0.360006,2209),(16764,0.360006,2209),(16765,0.360006,2209),(16774,0.360006,2209),(16775,0.360006,2209),(16776,0.360006,2209),(16777,0.360006,2209),(16778,0.360006,2209),(16779,0.360006,2209),(16780,0.360006,2209),(16781,0.360006,2209),(16795,0.360006,2209),(16796,0.360006,2209),(16797,0.360006,2209),(16798,0.360006,2209),(16799,0.360006,2209),(16800,0.360006,2209),(16801,0.360006,2209),(16802,0.360006,2209),(16803,0.360006,2209),(16804,0.360006,2209),(16812,0.360006,2209),(16820,0.360006,2209),(16833,0.360006,2209),(16845,0.360006,2209),(16846,0.360006,2209),(16850,0.360006,2209),(16859,0.360006,2209),(16865,0.360006,2209),(16926,0.360006,2209),(16948,0.360006,2209),(16956,0.360006,2209),(16957,0.360006,2209),(17116,0.360006,2209),(17211,0.360006,2209),(17260,0.360006,2209),(17265,0.360006,2209),(17266,0.360006,2209),(17268,0.360006,2209),(17284,0.360006,2209),(17297,0.360006,2209),(17325,0.360006,2209),(17350,0.360006,2209),(17351,0.360006,2209),(17354,0.360006,2209),(17355,0.360006,2209),(17358,0.360006,2209),(17359,0.360006,2209),(17362,0.360006,2209),(17363,0.360006,2209),(17366,0.360006,2209),(17368,0.360006,2209),(17377,0.360006,2209),(17475,0.360006,2209),(17476,0.360006,2209),(17540,0.360006,2209),(17541,0.360006,2209),(17551,0.360006,2209),(17614,0.360006,2209),(17641,0.360006,2209),(17651,0.360006,2209),(17671,0.360006,2209),(17676,0.360006,2209),(17775,0.360006,2209),(17776,0.360006,2209),(17777,0.360006,2209),(17779,0.360006,2209),(17780,0.360006,2209),(17785,0.360006,2209),(17813,0.360006,2209),(17819,0.360006,2209),(17820,0.360006,2209),(17828,0.360006,2209),(17842,0.360006,2209),(17843,0.360006,2209),(17845,0.360006,2209),(17878,0.360006,2209),(17884,0.360006,2209),(17894,0.360006,2209),(17895,0.360006,2209),(17898,0.360006,2209),(17916,0.360006,2209),(17917,0.360006,2209),(18003,0.360006,2209),(18015,0.360006,2209),(18018,0.360006,2209),(18019,0.360006,2209),(18021,0.360006,2209),(18033,0.360006,2209),(18037,0.360006,2209),(18086,0.360006,2209),(18095,0.360006,2209),(18100,0.360006,2209),(18106,0.360006,2209),(18132,0.360006,2209),(18145,0.360006,2209),(18148,0.360006,2209),(18151,0.360006,2209),(18153,0.360006,2209),(18159,0.360006,2209),(18180,0.360006,2209),(18187,0.360006,2209),(18196,0.360006,2209),(18197,0.360006,2209),(18200,0.360006,2209),(18201,0.360006,2209),(18205,0.360006,2209),(18206,0.360006,2209),(18212,0.360006,2209),(18217,0.360006,2209),(18233,0.360006,2209),(18239,0.360006,2209),(18259,0.360006,2209),(18260,0.360006,2209),(18335,0.360006,2209),(18344,0.360006,2209),(18433,0.360006,2209),(18436,0.360006,2209),(18521,0.360006,2209),(18564,0.360006,2209),(18565,0.360006,2209),(18629,0.360006,2209),(18677,0.360006,2209),(18678,0.360006,2209),(18711,0.360006,2209),(18757,0.360006,2209),(18758,0.360006,2209),(18763,0.360006,2209),(18767,0.360006,2209),(18768,0.360006,2209),(18770,0.360006,2209),(18774,0.360006,2209),(18775,0.360006,2209),(18785,0.360006,2209),(18830,0.360006,2209),(18840,0.360006,2209),(18905,0.360006,2209),(18910,0.360006,2209),(18926,0.360006,2209),(18929,0.360006,2209),(18931,0.360006,2209),(18948,0.360006,2209),(18981,0.360006,2209),(18983,0.360006,2209),(18985,0.360006,2209),(18986,0.360006,2209),(19019,0.360006,2209),(19048,0.360006,2209),(19050,0.360006,2209),(19053,0.360006,2209),(19054,0.360006,2209),(19115,0.360006,2209),(19116,0.360006,2209),(19119,0.360006,2209),(19120,0.360006,2209),(19121,0.360006,2209),(19122,0.360006,2209),(19125,0.360006,2209),(19126,0.360006,2209),(19155,0.360006,2209),(19166,0.360006,2209),(19169,0.360006,2209),(19193,0.360006,2209),(19204,0.360006,2209),(19210,0.360006,2209),(19217,0.360006,2209),(19268,0.360006,2209),(19271,0.360006,2209),(19282,0.360006,2209),(19316,0.360006,2209),(19380,0.360006,2209),(19381,0.360006,2209),(19387,0.360006,2209),(19391,0.360006,2209),(19393,0.360006,2209),(19397,0.360006,2209),(19399,0.360006,2209),(19413,0.360006,2209),(19424,0.360006,2209),(19441,0.360006,2209),(19442,0.360006,2209),(19443,0.360006,2209),(19444,0.360006,2209),(19450,0.360006,2209),(19451,0.360006,2209),(19461,0.360006,2209),(19462,0.360006,2209),(19464,0.360006,2209),(19465,0.360006,2209),(19466,0.360006,2209),(19471,0.360006,2209),(19473,0.360006,2209),(19475,0.360006,2209),(19487,0.360006,2209),(19488,0.360006,2209),(19491,0.360006,2209),(19493,0.360006,2209),(19496,0.360006,2209),(19500,0.360006,2209),(19504,0.360006,2209),(19505,0.360006,2209),(19506,0.360006,2209),(19508,0.360006,2209),(19511,0.360006,2209),(19512,0.360006,2209),(19514,0.360006,2209),(19517,0.360006,2209),(19518,0.360006,2209),(19526,0.360006,2209),(19572,0.360006,2209),(19573,0.360006,2209),(19574,0.360006,2209),(19596,0.360006,2209),(19660,0.360006,2209),(19664,0.360006,2209),(19792,0.360006,2209),(19803,0.360006,2209),(19804,0.360006,2209),(19806,0.360006,2209),(19809,0.360006,2209),(19810,0.360006,2209),(19811,0.360006,2209),(19812,0.360006,2209),(19816,0.360006,2209),(19818,0.360006,2209),(19819,0.360006,2209),(19820,0.360006,2209),(19823,0.360006,2209),(19826,0.360006,2209),(19828,0.360006,2209),(19830,0.360006,2209),(19832,0.360006,2209),(19834,0.360006,2209),(19836,0.360006,2209),(19846,0.360006,2209),(19967,0.360006,2209),(19968,0.360006,2209),(19992,0.360006,2209),(19994,0.360006,2209),(20061,0.360006,2209),(20097,0.360006,2209),(20119,0.360006,2209),(20176,0.360006,2209),(20222,0.360006,2209),(20237,0.360006,2209),(20267,0.360006,2209),(20305,0.360006,2209),(20322,0.360006,2209),(20337,0.360006,2209),(20338,0.360006,2209),(20341,0.360006,2209),(20342,0.360006,2209),(20352,0.360006,2209),(20353,0.360006,2209),(20356,0.360006,2209),(20357,0.360006,2209),(20362,0.360006,2209),(20363,0.360006,2209),(20370,0.360006,2209),(20371,0.360006,2209),(20384,0.360006,2209),(20579,0.360006,2209),(20632,0.360006,2209),(20650,0.360006,2209),(20653,0.360006,2209),(20678,0.360006,2209),(20702,0.360006,2209),(20709,0.360006,2209),(20710,0.360006,2209),(20714,0.360006,2209),(20715,0.360006,2209),(20718,0.360006,2209),(20719,0.360006,2209),(20722,0.360006,2209),(20723,0.360006,2209),(20771,0.360006,2209),(20866,0.360006,2209),(20981,0.360006,2209),(21000,0.360006,2209),(21001,0.360006,2209),(21012,0.360006,2209),(21013,0.360006,2209),(21014,0.360006,2209),(21085,0.360006,2209),(21167,0.360006,2209),(21175,0.360006,2209),(21180,0.360006,2209),(21207,0.360006,2209),(21208,0.360006,2209),(21231,0.360006,2209),(21232,0.360006,2209),(21332,0.360006,2209),(21335,0.360006,2209),(21336,0.360006,2209),(21338,0.360006,2209),(21339,0.360006,2209),(21340,0.360006,2209),(21399,0.360006,2209),(21419,0.360006,2209),(21420,0.360006,2209),(21449,0.360006,2209),(21450,0.360006,2209),(21451,0.360006,2209),(21464,0.360006,2209),(21465,0.360006,2209),(21470,0.360006,2209),(21494,0.360006,2209),(21508,0.360006,2209),(21510,0.360006,2209),(21511,0.360006,2209),(21533,0.360006,2209),(21558,0.360006,2209),(21559,0.360006,2209),(21566,0.360006,2209),(21567,0.360006,2209),(21570,0.360006,2209),(21571,0.360006,2209),(21676,0.360006,2209),(21683,0.360006,2209),(21741,0.360006,2209),(21838,0.360006,2209),(21840,0.360006,2209),(22230,0.360006,2209),(22360,0.360006,2209),(22402,0.360006,2209),(22427,0.360006,2209),(22542,0.360006,2209),(22555,0.360006,2209),(22602,0.360006,2209),(22679,0.360006,2209),(22737,0.360006,2209),(22738,0.360006,2209),(22741,0.360006,2209),(22754,0.360006,2209),(22760,0.360006,2209),(22761,0.360006,2209),(22762,0.360006,2209),(22781,0.360006,2209),(22784,0.360006,2209),(22785,0.360006,2209),(22788,0.360006,2209),(22789,0.360006,2209),(22794,0.360006,2209),(22795,0.360006,2209),(22804,0.360006,2209),(22831,0.360006,2209),(22836,0.360006,2209),(22847,0.360006,2209),(22858,0.360006,2209),(22859,0.360006,2209),(22904,0.360006,2209),(22907,0.360006,2209),(22908,0.360006,2209),(22909,0.360006,2209),(22910,0.360006,2209),(22926,0.360006,2209),(22935,0.360006,2209),(22936,0.360006,2209),(22937,0.360006,2209),(22954,0.360006,2209),(22957,0.360006,2209),(22973,0.360006,2209),(23020,0.360006,2209),(23085,0.360006,2209),(23086,0.360006,2209),(23088,0.360006,2209),(23089,0.360006,2209),(23092,0.360006,2209),(23093,0.360006,2209),(23095,0.360006,2209),(23096,0.360006,2209),(23097,0.360006,2209),(23098,0.360006,2209),(23099,0.360006,2209),(23100,0.360006,2209),(23292,0.360006,2209),(23293,0.360006,2209),(23440,0.360006,2209),(23527,0.360006,2209),(23528,0.360006,2209),(23531,0.360006,2209),(23532,0.360006,2209),(23534,0.360006,2209),(23535,0.360006,2209),(23537,0.360006,2209),(23538,0.360006,2209),(23540,0.360006,2209),(23541,0.360006,2209),(23543,0.360006,2209),(23544,0.360006,2209),(23546,0.360006,2209),(23547,0.360006,2209),(23557,0.360006,2209),(23588,0.360006,2209),(23591,0.360006,2209),(23594,0.360006,2209),(23715,0.360006,2209),(23750,0.360006,2209),(21382,2.51211,2576),(14589,0.300434,2011),(4972,1.37779,531),(4973,1.37779,531),(4974,1.37779,531),(4975,1.37779,531),(4976,1.37779,531),(4977,1.37779,531),(4978,1.37779,531),(4979,1.37779,531),(4980,1.37779,531),(4981,1.37779,531),(4982,1.37779,531),(4983,1.37779,531),(5029,1.37779,531),(5765,1.37779,531),(6749,1.37779,531),(6750,1.37779,531),(6766,1.37779,531),(11259,1.37779,531),(11260,1.37779,531),(11261,1.37779,531),(11262,1.37779,531),(11263,1.37779,531),(11266,1.37779,531),(11268,1.37779,531),(16137,2.62789,2253),(2402,1.58885,216),(2404,1.58885,216),(2405,1.58885,216),(2408,1.58885,216),(2409,1.58885,216),(2410,1.58885,216),(20681,0.772603,2531),(21112,0.772603,2531),(21318,0.772603,2531),(21357,0.772603,2531),(21662,0.966497,2598),(11121,18.4474,1571),(23872,18.4474,1571),(21431,0.798295,2585),(6978,1.11832,852),(6979,1.11832,852),(10115,3.00281,1411),(12649,3.00281,1411),(14519,3.00281,1411),(20943,3.00281,1411),(21262,0.777957,2567),(21576,0.777957,2567),(792,1.27146,136),(809,1.27146,136),(837,1.27146,136),(838,1.27146,136),(839,1.27146,136),(840,1.27146,136),(841,1.27146,136),(842,1.27146,136),(843,1.27146,136),(844,1.27146,136),(845,1.27146,136),(1094,1.27146,136),(3186,1.27146,136),(3187,1.27146,136),(3188,1.27146,136),(5244,1.27146,136),(5245,1.27146,136),(5294,1.27146,136),(5295,1.27146,136),(5296,1.27146,136),(8129,1.27146,136),(8839,1.27146,136),(8841,1.27146,136),(8844,1.27146,136),(10133,1.27146,136),(15302,1.27146,136),(320,1.706,82),(321,1.706,82),(471,1.706,82),(598,1.706,82),(599,1.706,82),(613,1.706,82),(614,1.706,82),(616,1.706,82),(632,1.706,82),(633,1.706,82),(698,1.706,82),(748,1.706,82),(749,1.706,82),(917,1.706,82),(918,1.706,82),(954,1.706,82),(1008,1.706,82),(1043,1.706,82),(1055,1.706,82),(1056,1.706,82),(1058,1.706,82),(1059,1.706,82),(1095,1.706,82),(1933,1.706,82),(1978,1.706,82),(2031,1.706,82),(2278,1.706,82),(2279,1.706,82),(2300,1.706,82),(2437,1.706,82),(3029,1.706,82),(3030,1.706,82),(3031,1.706,82),(4472,1.706,82),(5066,1.706,82),(5067,1.706,82),(5068,1.706,82),(5069,1.706,82),(6082,1.706,82),(6210,1.706,82),(6248,1.706,82),(6805,1.706,82),(6942,1.706,82),(6943,1.706,82),(9230,1.706,82),(9949,1.706,82),(9950,1.706,82),(9951,1.706,82),(9953,1.706,82),(9955,1.706,82),(9957,1.706,82),(9958,1.706,82),(9992,1.706,82),(9993,1.706,82),(11029,1.706,82),(11031,1.706,82),(11444,1.706,82),(11445,1.706,82),(11446,1.706,82),(11447,1.706,82),(11448,1.706,82),(11449,1.706,82),(11450,1.706,82),(11451,1.706,82),(11452,1.706,82),(11453,1.706,82),(11454,1.706,82),(11455,1.706,82),(11910,1.706,82),(14318,1.706,82),(14572,1.706,82),(14935,1.706,82),(15138,1.706,82),(15151,1.706,82),(15486,1.706,82),(15920,1.706,82),(17003,1.706,82),(18416,1.706,82),(20424,1.706,82),(20425,1.706,82),(22517,1.706,82),(33,1.14505,33),(326,1.14505,33),(3190,1.14505,33),(3250,1.14505,33),(6168,1.14505,33),(6170,1.14505,33),(6704,1.14505,33),(6705,1.14505,33),(11532,1.14505,33),(11537,1.14505,33),(11538,1.14505,33),(11539,1.14505,33),(11542,1.14505,33),(11543,1.14505,33),(11546,1.14505,33),(11550,1.14505,33),(11556,1.14505,33),(11558,1.14505,33),(11560,1.14505,33),(11562,1.14505,33),(11563,1.14505,33),(11566,1.14505,33),(11572,1.14505,33),(11573,1.14505,33),(11578,1.14505,33),(11585,1.14505,33),(12003,1.14505,33),(12472,1.14505,33),(13129,1.14505,33),(14423,1.14505,33),(16020,1.14505,33),(17454,1.14505,33),(17821,1.14505,33),(17835,1.14505,33),(18333,1.14505,33),(18354,1.14505,33),(19485,1.14505,33),(19922,1.14505,33),(19927,1.14505,33),(19930,1.14505,33),(19934,1.14505,33),(19939,1.14505,33),(19953,1.14505,33),(21634,1.14505,33),(21967,1.14505,33),(20510,14.7664,2519),(22424,14.7664,2519),(21633,0.984195,2593),(23574,1.30068,2719),(22838,14.8984,2689),(51,0.843136,51),(1139,0.843136,51),(1275,0.843136,51),(1310,0.843136,51),(1311,0.843136,51),(1313,0.843136,51),(1314,0.843136,51),(1315,0.843136,51),(1316,0.843136,51),(1317,0.843136,51),(1318,0.843136,51),(1320,0.843136,51),(1321,0.843136,51),(1323,0.843136,51),(1324,0.843136,51),(1326,0.843136,51),(1327,0.843136,51),(1328,0.843136,51),(1329,0.843136,51),(1330,0.843136,51),(1331,0.843136,51),(1332,0.843136,51),(1334,0.843136,51),(1335,0.843136,51),(1359,0.843136,51),(1366,0.843136,51),(1368,0.843136,51),(1369,0.843136,51),(1370,0.843136,51),(1371,0.843136,51),(1372,0.843136,51),(1373,0.843136,51),(1374,0.843136,51),(1375,0.843136,51),(1377,0.843136,51),(1379,0.843136,51),(1382,0.843136,51),(1383,0.843136,51),(1384,0.843136,51),(1385,0.843136,51),(1386,0.843136,51),(1387,0.843136,51),(1388,0.843136,51),(1390,0.843136,51),(1391,0.843136,51),(1392,0.843136,51),(1393,0.843136,51),(1394,0.843136,51),(1395,0.843136,51),(1619,0.843136,51),(1652,0.843136,51),(1653,0.843136,51),(1654,0.843136,51),(1735,0.843136,51),(1836,0.843136,51),(1866,0.843136,51),(1867,0.843136,51),(1869,0.843136,51),(1870,0.843136,51),(1871,0.843136,51),(1872,0.843136,51),(1876,0.843136,51),(1877,0.843136,51),(1880,0.843136,51),(1881,0.843136,51),(1883,0.843136,51),(1884,0.843136,51),(1885,0.843136,51),(1886,0.843136,51),(1906,0.843136,51),(1909,0.843136,51),(2532,0.843136,51),(2576,0.843136,51),(2675,0.843136,51),(2740,0.843136,51),(2870,0.843136,51),(2890,0.843136,51),(2900,0.843136,51),(2971,0.843136,51),(2972,0.843136,51),(2997,0.843136,51),(3443,0.843136,51),(3508,0.843136,51),(3511,0.843136,51),(3519,0.843136,51),(3546,0.843136,51),(3604,0.843136,51),(3605,0.843136,51),(3606,0.843136,51),(3609,0.843136,51),(3673,0.843136,51),(3684,0.843136,51),(3685,0.843136,51),(3686,0.843136,51),(3687,0.843136,51),(3736,0.843136,51),(3737,0.843136,51),(3738,0.843136,51),(3739,0.843136,51),(3740,0.843136,51),(3741,0.843136,51),(3742,0.843136,51),(3743,0.843136,51),(3744,0.843136,51),(3745,0.843136,51),(3746,0.843136,51),(3747,0.843136,51),(3748,0.843136,51),(3749,0.843136,51),(3751,0.843136,51),(3752,0.843136,51),(3753,0.843136,51),(3754,0.843136,51),(3755,0.843136,51),(3758,0.843136,51),(3759,0.843136,51),(3760,0.843136,51),(3846,0.843136,51),(3847,0.843136,51),(3849,0.843136,51),(3851,0.843136,51),(3852,0.843136,51),(3855,0.843136,51),(3856,0.843136,51),(3857,0.843136,51),(3858,0.843136,51),(3865,0.843136,51),(3866,0.843136,51),(3868,0.843136,51),(3869,0.843136,51),(3873,0.843136,51),(3877,0.843136,51),(3878,0.843136,51),(3884,0.843136,51),(3887,0.843136,51),(3888,0.843136,51),(3890,0.843136,51),(3950,0.843136,51),(3951,0.843136,51),(3952,0.843136,51),(3957,0.843136,51),(3968,0.843136,51),(4030,0.843136,51),(4032,0.843136,51),(4034,0.843136,51),(4045,0.843136,51),(4048,0.843136,51),(4148,0.843136,51),(4186,0.843136,51),(4188,0.843136,51),(4190,0.843136,51),(4192,0.843136,51),(4194,0.843136,51),(4197,0.843136,51),(4199,0.843136,51),(4202,0.843136,51),(4204,0.843136,51),(4205,0.843136,51),(4206,0.843136,51),(4207,0.843136,51),(4208,0.843136,51),(4209,0.843136,51),(4227,0.843136,51),(4238,0.843136,51),(4259,0.843136,51),(4261,0.843136,51),(4292,0.843136,51),(4293,0.843136,51),(4294,0.843136,51),(4295,0.843136,51),(4296,0.843136,51),(4297,0.843136,51),(4311,0.843136,51),(4353,0.843136,51),(4354,0.843136,51),(4364,0.843136,51),(4365,0.843136,51),(4366,0.843136,51),(4367,0.843136,51),(4368,0.843136,51),(4371,0.843136,51),(4372,0.843136,51),(4373,0.843136,51),(4374,0.843136,51),(4376,0.843136,51),(4380,0.843136,51),(4382,0.843136,51),(4384,0.843136,51),(4386,0.843136,51),(4387,0.843136,51),(4388,0.843136,51),(4389,0.843136,51),(4390,0.843136,51),(4391,0.843136,51),(4428,0.843136,51),(4463,0.843136,51),(4464,0.843136,51),(4477,0.843136,51),(4492,0.843136,51),(4495,0.843136,51),(4497,0.843136,51),(4499,0.843136,51),(4501,0.843136,51),(4503,0.843136,51),(4506,0.843136,51),(4508,0.843136,51),(4514,0.843136,51),(4515,0.843136,51),(4521,0.843136,51),(4525,0.843136,51),(4527,0.843136,51),(4539,0.843136,51),(4543,0.843136,51),(4544,0.843136,51),(4545,0.843136,51),(4547,0.843136,51),(4548,0.843136,51),(4549,0.843136,51),(4550,0.843136,51),(4551,0.843136,51),(4552,0.843136,51),(4554,0.843136,51),(4555,0.843136,51),(4556,0.843136,51),(4559,0.843136,51),(4560,0.843136,51),(4561,0.843136,51),(4562,0.843136,51),(4563,0.843136,51),(4564,0.843136,51),(4565,0.843136,51),(4567,0.843136,51),(4594,0.843136,51),(4602,0.843136,51),(4611,0.843136,51),(4612,0.843136,51),(4656,0.843136,51),(4657,0.843136,51),(4666,0.843136,51),(4685,0.843136,51),(4694,0.843136,51),(4696,0.843136,51),(4697,0.843136,51),(4699,0.843136,51),(4701,0.843136,51),(4703,0.843136,51),(4705,0.843136,51),(4707,0.843136,51),(4709,0.843136,51),(4720,0.843136,51),(4721,0.843136,51),(4725,0.843136,51),(4727,0.843136,51),(4898,0.843136,51),(4902,0.843136,51),(4912,0.843136,51),(4913,0.843136,51),(4914,0.843136,51),(4915,0.843136,51),(4916,0.843136,51),(4917,0.843136,51),(4918,0.843136,51),(4919,0.843136,51),(4924,0.843136,51),(4925,0.843136,51),(4926,0.843136,51),(4927,0.843136,51),(4939,0.843136,51),(4970,0.843136,51),(5190,0.843136,51),(5307,0.843136,51),(5368,0.843136,51),(5535,0.843136,51),(5705,0.843136,51),(5707,0.843136,51),(5727,0.843136,51),(5729,0.843136,51),(5730,0.843136,51),(5769,0.843136,51),(5770,0.843136,51),(5776,0.843136,51),(5846,0.843136,51),(6006,0.843136,51),(6029,0.843136,51),(6030,0.843136,51),(6031,0.843136,51),(6032,0.843136,51),(6033,0.843136,51),(6034,0.843136,51),(6035,0.843136,51),(6036,0.843136,51),(6037,0.843136,51),(6038,0.843136,51),(6039,0.843136,51),(6040,0.843136,51),(6041,0.843136,51),(6042,0.843136,51),(6043,0.843136,51),(6044,0.843136,51),(6045,0.843136,51),(6046,0.843136,51),(6047,0.843136,51),(6048,0.843136,51),(6049,0.843136,51),(6050,0.843136,51),(6308,0.843136,51),(6389,0.843136,51),(6390,0.843136,51),(6393,0.843136,51),(6395,0.843136,51),(6397,0.843136,51),(6399,0.843136,51),(6401,0.843136,51),(6403,0.843136,51),(6405,0.843136,51),(6407,0.843136,51),(6409,0.843136,51),(6410,0.843136,51),(6432,0.843136,51),(6570,0.843136,51),(6571,0.843136,51),(6575,0.843136,51),(6775,0.843136,51),(6785,0.843136,51),(6786,0.843136,51),(6787,0.843136,51),(6793,0.843136,51),(6843,0.843136,51),(6848,0.843136,51),(6856,0.843136,51),(6870,0.843136,51),(6873,0.843136,51),(6875,0.843136,51),(6883,0.843136,51),(6916,0.843136,51),(7362,0.843136,51),(7373,0.843136,51),(7384,0.843136,51),(7389,0.843136,51),(7530,0.843136,51),(7832,0.843136,51),(7844,0.843136,51),(7871,0.843136,51),(7875,0.843136,51),(7889,0.843136,51),(7904,0.843136,51),(8000,0.843136,51),(8001,0.843136,51),(8331,0.843136,51),(8333,0.843136,51),(8351,0.843136,51),(8352,0.843136,51),(8629,0.843136,51),(8633,0.843136,51),(8649,0.843136,51),(8664,0.843136,51),(8668,0.843136,51),(8677,0.843136,51),(8697,0.843136,51),(8699,0.843136,51),(8700,0.843136,51),(8701,0.843136,51),(8702,0.843136,51),(8703,0.843136,51),(8760,0.843136,51),(8766,0.843136,51),(8891,0.843136,51),(8898,0.843136,51),(8899,0.843136,51),(8900,0.843136,51),(8901,0.843136,51),(8989,0.843136,51),(9049,0.843136,51),(9133,0.843136,51),(9151,0.843136,51),(9213,0.843136,51),(9250,0.843136,51),(9267,0.843136,51),(9268,0.843136,51),(9281,0.843136,51),(9470,0.843136,51),(9574,0.843136,51),(9575,0.843136,51),(9576,0.843136,51),(9577,0.843136,51),(9596,0.843136,51),(9599,0.843136,51),(9602,0.843136,51),(9603,0.843136,51),(9604,0.843136,51),(9605,0.843136,51),(9606,0.843136,51),(9609,0.843136,51),(9610,0.843136,51),(9613,0.843136,51),(9614,0.843136,51),(9615,0.843136,51),(9616,0.843136,51),(9617,0.843136,51),(9618,0.843136,51),(9619,0.843136,51),(9620,0.843136,51),(9621,0.843136,51),(9623,0.843136,51),(9625,0.843136,51),(9626,0.843136,51),(9627,0.843136,51),(9628,0.843136,51),(9629,0.843136,51),(9630,0.843136,51),(9633,0.843136,51),(9634,0.843136,51),(9635,0.843136,51),(9636,0.843136,51),(9637,0.843136,51),(9638,0.843136,51),(9641,0.843136,51),(9642,0.843136,51),(9644,0.843136,51),(9645,0.843136,51),(9648,0.843136,51),(9649,0.843136,51),(9652,0.843136,51),(9653,0.843136,51),(9656,0.843136,51),(9657,0.843136,51),(9660,0.843136,51),(9661,0.843136,51),(9664,0.843136,51),(9665,0.843136,51),(9668,0.843136,51),(9669,0.843136,51),(9670,0.843136,51),(9671,0.843136,51),(9672,0.843136,51),(9673,0.843136,51),(9678,0.843136,51),(9679,0.843136,51),(9680,0.843136,51),(9681,0.843136,51),(9686,0.843136,51),(9687,0.843136,51),(9688,0.843136,51),(9689,0.843136,51),(9690,0.843136,51),(9691,0.843136,51),(9692,0.843136,51),(9693,0.843136,51),(9694,0.843136,51),(9696,0.843136,51),(9697,0.843136,51),(9698,0.843136,51),(9699,0.843136,51),(9734,0.843136,51),(9735,0.843136,51),(9736,0.843136,51),(9737,0.843136,51),(9738,0.843136,51),(9739,0.843136,51),(9761,0.843136,51),(9762,0.843136,51),(9778,0.843136,51),(9779,0.843136,51),(9794,0.843136,51),(9797,0.843136,51),(9798,0.843136,51),(9799,0.843136,51),(9802,0.843136,51),(9803,0.843136,51),(10009,0.843136,51),(10010,0.843136,51),(10038,0.843136,51),(10071,0.843136,51),(10137,0.843136,51),(10172,0.843136,51),(10173,0.843136,51),(10176,0.843136,51),(10177,0.843136,51),(10186,0.843136,51),(10198,0.843136,51),(10210,0.843136,51),(10218,0.843136,51),(10219,0.843136,51),(10222,0.843136,51),(10461,0.843136,51),(10570,0.843136,51),(10578,0.843136,51),(10589,0.843136,51),(10611,0.843136,51),(10658,0.843136,51),(10695,0.843136,51),(10696,0.843136,51),(10697,0.843136,51),(10727,0.843136,51),(11278,0.843136,51),(11328,0.843136,51),(11429,0.843136,51),(11430,0.843136,51),(11431,0.843136,51),(11434,0.843136,51),(11435,0.843136,51),(11438,0.843136,51),(11439,0.843136,51),(11510,0.843136,51),(11660,0.843136,51),(11736,0.843136,51),(11751,0.843136,51),(11753,0.843136,51),(11798,0.843136,51),(11801,0.843136,51),(11809,0.843136,51),(11812,0.843136,51),(11849,0.843136,51),(11851,0.843136,51),(11855,0.843136,51),(11856,0.843136,51),(11859,0.843136,51),(11860,0.843136,51),(11863,0.843136,51),(11864,0.843136,51),(11866,0.843136,51),(11868,0.843136,51),(11870,0.843136,51),(11872,0.843136,51),(11894,0.843136,51),(11895,0.843136,51),(11953,0.843136,51),(11955,0.843136,51),(11956,0.843136,51),(11957,0.843136,51),(11961,0.843136,51),(11962,0.843136,51),(11963,0.843136,51),(11965,0.843136,51),(11967,0.843136,51),(11969,0.843136,51),(11972,0.843136,51),(11973,0.843136,51),(11976,0.843136,51),(11977,0.843136,51),(11979,0.843136,51),(11981,0.843136,51),(11984,0.843136,51),(11987,0.843136,51),(11990,0.843136,51),(11991,0.843136,51),(11994,0.843136,51),(11995,0.843136,51),(11996,0.843136,51),(12000,0.843136,51),(12001,0.843136,51),(12005,0.843136,51),(12007,0.843136,51),(12008,0.843136,51),(12010,0.843136,51),(12012,0.843136,51),(12015,0.843136,51),(12016,0.843136,51),(12020,0.843136,51),(12024,0.843136,51),(12025,0.843136,51),(12026,0.843136,51),(12028,0.843136,51),(12060,0.843136,51),(12061,0.843136,51),(12080,0.843136,51),(12081,0.843136,51),(12089,0.843136,51),(12165,0.843136,51),(12167,0.843136,51),(12629,0.843136,51),(12676,0.843136,51),(12678,0.843136,51),(12679,0.843136,51),(12790,0.843136,51),(12809,0.843136,51),(12810,0.843136,51),(12938,0.843136,51),(12949,0.843136,51),(12951,0.843136,51),(12959,0.843136,51),(12961,0.843136,51),(12971,0.843136,51),(12975,0.843136,51),(13152,0.843136,51),(13278,0.843136,51),(13280,0.843136,51),(13282,0.843136,51),(13284,0.843136,51),(13286,0.843136,51),(13288,0.843136,51),(13294,0.843136,51),(13296,0.843136,51),(13300,0.843136,51),(13301,0.843136,51),(13306,0.843136,51),(13322,0.843136,51),(13330,0.843136,51),(13334,0.843136,51),(13335,0.843136,51),(13361,0.843136,51),(13363,0.843136,51),(13365,0.843136,51),(13370,0.843136,51),(13375,0.843136,51),(13377,0.843136,51),(13385,0.843136,51),(13394,0.843136,51),(13398,0.843136,51),(13411,0.843136,51),(13414,0.843136,51),(13415,0.843136,51),(13429,0.843136,51),(13430,0.843136,51),(13434,0.843136,51),(13436,0.843136,51),(13462,0.843136,51),(13463,0.843136,51),(13467,0.843136,51),(13475,0.843136,51),(13544,0.843136,51),(13554,0.843136,51),(13558,0.843136,51),(13563,0.843136,51),(13567,0.843136,51),(13571,0.843136,51),(13590,0.843136,51),(13592,0.843136,51),(13594,0.843136,51),(13596,0.843136,51),(13598,0.843136,51),(13600,0.843136,51),(13769,0.843136,51),(13773,0.843136,51),(13777,0.843136,51),(13793,0.843136,51),(13808,0.843136,51),(13809,0.843136,51),(13813,0.843136,51),(13825,0.843136,51),(13837,0.843136,51),(13842,0.843136,51),(13852,0.843136,51),(13853,0.843136,51),(14292,0.843136,51),(14293,0.843136,51),(14296,0.843136,51),(14320,0.843136,51),(14360,0.843136,51),(14361,0.843136,51),(14371,0.843136,51),(14413,0.843136,51),(14415,0.843136,51),(14429,0.843136,51),(14563,0.843136,51),(14564,0.843136,51),(14718,0.843136,51),(14719,0.843136,51),(14732,0.843136,51),(14769,0.843136,51),(14785,0.843136,51),(14797,0.843136,51),(14798,0.843136,51),(14812,0.843136,51),(14879,0.843136,51),(14894,0.843136,51),(14945,0.843136,51),(14948,0.843136,51),(14949,0.843136,51),(14972,0.843136,51),(15032,0.843136,51),(15099,0.843136,51),(15139,0.843136,51),(15228,0.843136,51),(15243,0.843136,51),(15247,0.843136,51),(15248,0.843136,51),(15352,0.843136,51),(15387,0.843136,51),(15416,0.843136,51),(15462,0.843136,51),(15548,0.843136,51),(15567,0.843136,51),(15571,0.843136,51),(15572,0.843136,51),(15650,0.843136,51),(15651,0.843136,51),(15661,0.843136,51),(15716,0.843136,51),(15736,0.843136,51),(15756,0.843136,51),(15760,0.843136,51),(15811,0.843136,51),(15821,0.843136,51),(15823,0.843136,51),(15825,0.843136,51),(15838,0.843136,51),(15851,0.843136,51),(15853,0.843136,51),(15855,0.843136,51),(15891,0.843136,51),(15954,0.843136,51),(15966,0.843136,51),(15988,0.843136,51),(16220,0.843136,51),(16263,0.843136,51),(16264,0.843136,51),(16267,0.843136,51),(16268,0.843136,51),(16270,0.843136,51),(16284,0.843136,51),(16292,0.843136,51),(16300,0.843136,51),(16301,0.843136,51),(16302,0.843136,51),(16306,0.843136,51),(16307,0.843136,51),(16310,0.843136,51),(16311,0.843136,51),(16312,0.843136,51),(16316,0.843136,51),(16317,0.843136,51),(16341,0.843136,51),(16396,0.843136,51),(16401,0.843136,51),(16402,0.843136,51),(16411,0.843136,51),(16438,0.843136,51),(16478,0.843136,51),(16479,0.843136,51),(16481,0.843136,51),(16482,0.843136,51),(16483,0.843136,51),(16484,0.843136,51),(16489,0.843136,51),(16580,0.843136,51),(16583,0.843136,51),(16628,0.843136,51),(16642,0.843136,51),(16643,0.843136,51),(16645,0.843136,51),(16646,0.843136,51),(16651,0.843136,51),(16652,0.843136,51),(16656,0.843136,51),(16657,0.843136,51),(16659,0.843136,51),(16661,0.843136,51),(16662,0.843136,51),(16664,0.843136,51),(16665,0.843136,51),(16666,0.843136,51),(16667,0.843136,51),(16670,0.843136,51),(16673,0.843136,51),(16674,0.843136,51),(16737,0.843136,51),(16738,0.843136,51),(16743,0.843136,51),(16806,0.843136,51),(16836,0.843136,51),(16903,0.843136,51),(16967,0.843136,51),(16968,0.843136,51),(16969,0.843136,51),(16973,0.843136,51),(16996,0.843136,51),(17016,0.843136,51),(17017,0.843136,51),(17039,0.843136,51),(17040,0.843136,51),(17043,0.843136,51),(17048,0.843136,51),(17088,0.843136,51),(17111,0.843136,51),(17117,0.843136,51),(17137,0.843136,51),(17143,0.843136,51),(17147,0.843136,51),(17149,0.843136,51),(17151,0.843136,51),(17152,0.843136,51),(17154,0.843136,51),(17167,0.843136,51),(17186,0.843136,51),(17190,0.843136,51),(17292,0.843136,51),(17331,0.843136,51),(17337,0.843136,51),(17338,0.843136,51),(17370,0.843136,51),(17452,0.843136,51),(17453,0.843136,51),(17459,0.843136,51),(17460,0.843136,51),(17462,0.843136,51),(17466,0.843136,51),(17467,0.843136,51),(17468,0.843136,51),(17470,0.843136,51),(17520,0.843136,51),(17521,0.843136,51),(17527,0.843136,51),(17593,0.843136,51),(17611,0.843136,51),(17617,0.843136,51),(17621,0.843136,51),(17622,0.843136,51),(17635,0.843136,51),(17650,0.843136,51),(17659,0.843136,51),(17664,0.843136,51),(17665,0.843136,51),(17668,0.843136,51),(17730,0.843136,51),(17731,0.843136,51),(17735,0.843136,51),(17745,0.843136,51),(17762,0.843136,51),(17768,0.843136,51),(17769,0.843136,51),(17788,0.843136,51),(17789,0.843136,51),(17801,0.843136,51),(17803,0.843136,51),(17855,0.843136,51),(17957,0.843136,51),(17965,0.843136,51),(17966,0.843136,51),(17971,0.843136,51),(17978,0.843136,51),(18023,0.843136,51),(18048,0.843136,51),(18051,0.843136,51),(18056,0.843136,51),(18059,0.843136,51),(18087,0.843136,51),(18091,0.843136,51),(18092,0.843136,51),(18093,0.843136,51),(18118,0.843136,51),(18127,0.843136,51),(18136,0.843136,51),(18165,0.843136,51),(18181,0.843136,51),(18192,0.843136,51),(18242,0.843136,51),(18280,0.843136,51),(18408,0.843136,51),(18415,0.843136,51),(18421,0.843136,51),(18444,0.843136,51),(18459,0.843136,51),(18461,0.843136,51),(18463,0.843136,51),(18483,0.843136,51),(18484,0.843136,51),(18497,0.843136,51),(18498,0.843136,51),(18500,0.843136,51),(18501,0.843136,51),(18506,0.843136,51),(18507,0.843136,51),(18535,0.843136,51),(18542,0.843136,51),(18543,0.843136,51),(18544,0.843136,51),(18545,0.843136,51),(18556,0.843136,51),(18557,0.843136,51),(18558,0.843136,51),(18576,0.843136,51),(18579,0.843136,51),(18580,0.843136,51),(18583,0.843136,51),(18584,0.843136,51),(18590,0.843136,51),(18591,0.843136,51),(18592,0.843136,51),(18593,0.843136,51),(18594,0.843136,51),(18595,0.843136,51),(18609,0.843136,51),(18610,0.843136,51),(18611,0.843136,51),(18641,0.843136,51),(18669,0.843136,51),(18670,0.843136,51),(18672,0.843136,51),(18673,0.843136,51),(18693,0.843136,51),(18732,0.843136,51),(18734,0.843136,51),(18805,0.843136,51),(18822,0.843136,51),(18850,0.843136,51),(18852,0.843136,51),(18861,0.843136,51),(18864,0.843136,51),(18865,0.843136,51),(18866,0.843136,51),(18870,0.843136,51),(18894,0.843136,51),(18895,0.843136,51),(18896,0.843136,51),(18909,0.843136,51),(18911,0.843136,51),(18913,0.843136,51),(18915,0.843136,51),(18938,0.843136,51),(18992,0.843136,51),(18994,0.843136,51),(18995,0.843136,51),(19015,0.843136,51),(19016,0.843136,51),(19017,0.843136,51),(19028,0.843136,51),(19041,0.843136,51),(19083,0.843136,51),(19182,0.843136,51),(19247,0.843136,51),(19253,0.843136,51),(19319,0.843136,51),(19320,0.843136,51),(19346,0.843136,51),(19353,0.843136,51),(19356,0.843136,51),(19523,0.843136,51),(19532,0.843136,51),(19643,0.843136,51),(19644,0.843136,51),(19789,0.843136,51),(20004,0.843136,51),(20020,0.843136,51),(20051,0.843136,51),(20052,0.843136,51),(20054,0.843136,51),(20055,0.843136,51),(20056,0.843136,51),(20057,0.843136,51),(20072,0.843136,51),(20073,0.843136,51),(20074,0.843136,51),(20091,0.843136,51),(20110,0.843136,51),(20113,0.843136,51),(20114,0.843136,51),(20117,0.843136,51),(20136,0.843136,51),(20140,0.843136,51),(20141,0.843136,51),(20157,0.843136,51),(20196,0.843136,51),(20197,0.843136,51),(20198,0.843136,51),(20203,0.843136,51),(20207,0.843136,51),(20208,0.843136,51),(20209,0.843136,51),(20219,0.843136,51),(20221,0.843136,51),(20228,0.843136,51),(20233,0.843136,51),(20234,0.843136,51),(20244,0.843136,51),(20252,0.843136,51),(20303,0.843136,51),(20304,0.843136,51),(20393,0.843136,51),(20394,0.843136,51),(20395,0.843136,51),(20416,0.843136,51),(20426,0.843136,51),(20447,0.843136,51),(20448,0.843136,51),(20451,0.843136,51),(20453,0.843136,51),(20457,0.843136,51),(20475,0.843136,51),(20481,0.843136,51),(20489,0.843136,51),(20490,0.843136,51),(20561,0.843136,51),(20562,0.843136,51),(20623,0.843136,51),(20624,0.843136,51),(20625,0.843136,51),(20626,0.843136,51),(20627,0.843136,51),(20655,0.843136,51),(20665,0.843136,51),(20692,0.843136,51),(20695,0.843136,51),(20711,0.843136,51),(20786,0.843136,51),(20787,0.843136,51),(20788,0.843136,51),(20879,0.843136,51),(20913,0.843136,51),(20925,0.843136,51),(20926,0.843136,51),(20928,0.843136,51),(20940,0.843136,51),(20946,0.843136,51),(20949,0.843136,51),(20950,0.843136,51),(20953,0.843136,51),(20954,0.843136,51),(21002,0.843136,51),(21033,0.843136,51),(21035,0.843136,51),(21054,0.843136,51),(21055,0.843136,51),(21058,0.843136,51),(21059,0.843136,51),(21080,0.843136,51),(21254,0.843136,51),(21266,0.843136,51),(21295,0.843136,51),(21372,0.843136,51),(21373,0.843136,51),(21377,0.843136,51),(21379,0.843136,51),(21380,0.843136,51),(21386,0.843136,51),(21398,0.843136,51),(21403,0.843136,51),(21421,0.843136,51),(21543,0.843136,51),(21544,0.843136,51),(21546,0.843136,51),(21551,0.843136,51),(21575,0.843136,51),(21588,0.843136,51),(21589,0.843136,51),(21620,0.843136,51),(21684,0.843136,51),(21719,0.843136,51),(21742,0.843136,51),(21867,0.843136,51),(21869,0.843136,51),(22002,0.843136,51),(22375,0.843136,51),(22437,0.843136,51),(22488,0.843136,51),(22490,0.843136,51),(22491,0.843136,51),(22570,0.843136,51),(22692,0.843136,51),(22710,0.843136,51),(22800,0.843136,51),(22801,0.843136,51),(22945,0.843136,51),(22946,0.843136,51),(22947,0.843136,51),(22963,0.843136,51),(23128,0.843136,51),(23134,0.843136,51),(23453,0.843136,51),(23677,0.843136,51),(23688,0.843136,51),(23789,0.843136,51),(23790,0.843136,51),(5228,1.74306,491),(10670,1.74306,491),(10671,1.74306,491),(10672,1.74306,491),(10673,1.74306,491),(16041,1.74306,491),(16407,1.74306,491),(16452,1.74306,491),(21630,0.805359,2590),(10169,1.30249,1431),(10170,1.30249,1431),(11561,1.30249,1431),(11564,1.30249,1431),(11565,1.30249,1431),(11571,1.30249,1431),(11574,1.30249,1431),(11576,1.30249,1431),(11583,1.30249,1431),(13132,1.30249,1431),(14424,1.30249,1431),(17750,1.30249,1431),(17782,1.30249,1431),(18356,1.30249,1431),(18357,1.30249,1431),(18429,1.30249,1431),(19921,1.30249,1431),(19926,1.30249,1431),(19933,1.30249,1431),(19938,1.30249,1431),(20018,1.30249,1431),(21665,0.930895,2599),(16416,0.571724,2470),(17647,1.57833,2542),(19628,1.57833,2542),(19633,1.57833,2542),(19635,1.57833,2542),(19637,1.57833,2542),(19657,1.57833,2542),(19661,1.57833,2542),(19676,1.57833,2542),(20902,1.57833,2542),(20983,1.57833,2542),(20984,1.57833,2542),(20985,1.57833,2542),(20986,1.57833,2542),(20987,1.57833,2542),(20988,1.57833,2542),(20989,1.57833,2542),(21004,1.57833,2542),(21005,1.57833,2542),(21019,1.57833,2542),(21020,1.57833,2542),(21021,1.57833,2542),(21046,1.57833,2542),(21078,1.57833,2542),(21096,1.57833,2542),(21103,1.57833,2542),(21113,1.57833,2542),(21132,1.57833,2542),(21461,1.57833,2542),(21488,1.57833,2542),(22358,1.57833,2542),(22387,1.57833,2542),(1461,3.45934,188),(11362,3.45934,188),(13170,3.45934,188),(14383,3.45934,188),(14884,3.45934,188),(16975,3.45934,188),(20250,3.45934,188),(18607,1.16534,2429),(18649,1.16534,2429),(20856,1.16534,2429),(1336,2.87379,75),(1742,2.87379,75),(1974,2.87379,75),(1975,2.87379,75),(2699,2.87379,75),(2700,2.87379,75),(2702,2.87379,75),(2703,2.87379,75),(2705,2.87379,75),(2706,2.87379,75),(2707,2.87379,75),(2708,2.87379,75),(3006,2.87379,75),(3204,2.87379,75),(3205,2.87379,75),(4065,2.87379,75),(4091,2.87379,75),(7569,2.87379,75),(7691,2.87379,75),(7829,2.87379,75),(7906,2.87379,75),(9913,2.87379,75),(10183,2.87379,75),(10991,2.87379,75),(15137,2.87379,75),(15275,2.87379,75),(19793,2.87379,75),(1566,5.85247,331),(22388,2.53331,2640),(22389,2.53331,2640),(23506,2.53331,2640),(23507,2.53331,2640),(19314,0.300418,2485),(4305,4.49282,352),(4312,4.49282,352),(4317,4.49282,352),(4435,4.49282,352),(4480,4.49282,352),(4767,4.49282,352),(4768,4.49282,352),(5966,4.49282,352),(11034,4.49282,352),(14557,4.49282,352),(14558,4.49282,352),(14559,4.49282,352),(15132,4.49282,352),(15133,4.49282,352),(15135,4.49282,352),(15150,4.49282,352),(15182,4.49282,352),(15923,4.49282,352),(15866,27.1354,2230),(15882,27.1354,2230),(15900,27.1354,2230),(19748,1.14505,2504),(19749,1.14505,2504),(19750,1.14505,2504),(19751,1.14505,2504),(19752,1.14505,2504),(19753,1.14505,2504),(19755,1.14505,2504),(19765,1.14505,2504),(19909,1.14505,2504),(20019,1.14505,2504),(20173,1.14505,2504),(20194,1.14505,2504),(20241,1.14505,2504),(21134,1.14505,2504),(15509,1.41083,2218),(15774,1.41083,2218),(16395,1.41083,2218),(16573,1.41083,2218),(17445,1.41083,2218),(18414,1.41083,2218),(17765,5.22473,2384),(17784,5.22473,2384),(18945,5.22473,2384),(18987,5.22473,2384),(19682,5.22473,2384),(152,0.520142,29),(628,0.520142,29),(4688,0.520142,29),(5685,0.520142,29),(10920,0.520142,29),(10921,0.520142,29),(11650,0.520142,29),(11651,0.520142,29),(11652,0.520142,29),(11653,0.520142,29),(14132,0.520142,29),(14192,0.520142,29),(14193,0.520142,29),(14314,0.520142,29),(14317,0.520142,29),(16863,0.520142,29),(18349,0.520142,29),(18350,0.520142,29),(18422,0.520142,29),(18423,0.520142,29),(18424,0.520142,29),(18425,0.520142,29),(18426,0.520142,29),(18427,0.520142,29),(18428,0.520142,29),(18620,0.520142,29),(56,0.413352,56),(1543,0.413352,56),(1681,0.413352,56),(1682,0.413352,56),(1700,0.413352,56),(1702,0.413352,56),(1705,0.413352,56),(1707,0.413352,56),(1708,0.413352,56),(1710,0.413352,56),(1714,0.413352,56),(1716,0.413352,56),(1717,0.413352,56),(1719,0.413352,56),(1721,0.413352,56),(1723,0.413352,56),(1726,0.413352,56),(1727,0.413352,56),(1728,0.413352,56),(1730,0.413352,56),(1733,0.413352,56),(1750,0.413352,56),(1914,0.413352,56),(1915,0.413352,56),(1916,0.413352,56),(1932,0.413352,56),(1937,0.413352,56),(1957,0.413352,56),(1980,0.413352,56),(1982,0.413352,56),(2034,0.413352,56),(2035,0.413352,56),(2053,0.413352,56),(2054,0.413352,56),(2055,0.413352,56),(2056,0.413352,56),(2057,0.413352,56),(2058,0.413352,56),(2068,0.413352,56),(2182,0.413352,56),(2183,0.413352,56),(2191,0.413352,56),(2196,0.413352,56),(2197,0.413352,56),(2198,0.413352,56),(2199,0.413352,56),(2200,0.413352,56),(2201,0.413352,56),(2202,0.413352,56),(2203,0.413352,56),(2205,0.413352,56),(2206,0.413352,56),(2207,0.413352,56),(2208,0.413352,56),(2209,0.413352,56),(2210,0.413352,56),(2211,0.413352,56),(2212,0.413352,56),(2213,0.413352,56),(2214,0.413352,56),(2215,0.413352,56),(2216,0.413352,56),(2217,0.413352,56),(2218,0.413352,56),(2219,0.413352,56),(2220,0.413352,56),(2221,0.413352,56),(2222,0.413352,56),(2223,0.413352,56),(2224,0.413352,56),(2225,0.413352,56),(2226,0.413352,56),(2227,0.413352,56),(2228,0.413352,56),(2229,0.413352,56),(2230,0.413352,56),(2231,0.413352,56),(2232,0.413352,56),(2233,0.413352,56),(2306,0.413352,56),(2313,0.413352,56),(2415,0.413352,56),(2422,0.413352,56),(2459,0.413352,56),(2529,0.413352,56),(2575,0.413352,56),(2788,0.413352,56),(2865,0.413352,56),(2866,0.413352,56),(2867,0.413352,56),(2966,0.413352,56),(3001,0.413352,56),(3295,0.413352,56),(3296,0.413352,56),(3297,0.413352,56),(3445,0.413352,56),(3791,0.413352,56),(4106,0.413352,56),(4126,0.413352,56),(4168,0.413352,56),(4181,0.413352,56),(4182,0.413352,56),(4210,0.413352,56),(4233,0.413352,56),(4234,0.413352,56),(4235,0.413352,56),(4236,0.413352,56),(4240,0.413352,56),(4247,0.413352,56),(4250,0.413352,56),(4251,0.413352,56),(4254,0.413352,56),(4290,0.413352,56),(4302,0.413352,56),(4313,0.413352,56),(4345,0.413352,56),(4346,0.413352,56),(4348,0.413352,56),(4399,0.413352,56),(4402,0.413352,56),(4403,0.413352,56),(4406,0.413352,56),(4409,0.413352,56),(4410,0.413352,56),(4487,0.413352,56),(4841,0.413352,56),(4842,0.413352,56),(4843,0.413352,56),(4844,0.413352,56),(4845,0.413352,56),(4846,0.413352,56),(4847,0.413352,56),(4848,0.413352,56),(4849,0.413352,56),(4850,0.413352,56),(4851,0.413352,56),(4852,0.413352,56),(4861,0.413352,56),(4862,0.413352,56),(4929,0.413352,56),(4958,0.413352,56),(4985,0.413352,56),(4991,0.413352,56),(5186,0.413352,56),(5366,0.413352,56),(5439,0.413352,56),(5441,0.413352,56),(5442,0.413352,56),(5745,0.413352,56),(5774,0.413352,56),(6061,0.413352,56),(6348,0.413352,56),(6349,0.413352,56),(6553,0.413352,56),(6797,0.413352,56),(6840,0.413352,56),(6919,0.413352,56),(6985,0.413352,56),(6986,0.413352,56),(6987,0.413352,56),(6992,0.413352,56),(7012,0.413352,56),(7013,0.413352,56),(7014,0.413352,56),(7015,0.413352,56),(7017,0.413352,56),(7018,0.413352,56),(7020,0.413352,56),(7023,0.413352,56),(7025,0.413352,56),(7044,0.413352,56),(7045,0.413352,56),(7123,0.413352,56),(7274,0.413352,56),(7275,0.413352,56),(7532,0.413352,56),(7602,0.413352,56),(7603,0.413352,56),(7825,0.413352,56),(7830,0.413352,56),(7895,0.413352,56),(7934,0.413352,56),(8657,0.413352,56),(8765,0.413352,56),(9055,0.413352,56),(9136,0.413352,56),(9249,0.413352,56),(9270,0.413352,56),(9294,0.413352,56),(9339,0.413352,56),(9344,0.413352,56),(9551,0.413352,56),(9775,0.413352,56),(9822,0.413352,56),(9823,0.413352,56),(9937,0.413352,56),(9938,0.413352,56),(10145,0.413352,56),(10185,0.413352,56),(10196,0.413352,56),(10402,0.413352,56),(10407,0.413352,56),(10412,0.413352,56),(10565,0.413352,56),(10573,0.413352,56),(10574,0.413352,56),(10582,0.413352,56),(10592,0.413352,56),(10615,0.413352,56),(10624,0.413352,56),(10646,0.413352,56),(10657,0.413352,56),(10749,0.413352,56),(10878,0.413352,56),(11044,0.413352,56),(11045,0.413352,56),(11046,0.413352,56),(11047,0.413352,56),(11048,0.413352,56),(11206,0.413352,56),(11208,0.413352,56),(11210,0.413352,56),(11212,0.413352,56),(11214,0.413352,56),(11216,0.413352,56),(11242,0.413352,56),(11244,0.413352,56),(11250,0.413352,56),(11252,0.413352,56),(11270,0.413352,56),(11323,0.413352,56),(11356,0.413352,56),(11657,0.413352,56),(11662,0.413352,56),(11663,0.413352,56),(11670,0.413352,56),(11682,0.413352,56),(11683,0.413352,56),(11684,0.413352,56),(11692,0.413352,56),(11729,0.413352,56),(11766,0.413352,56),(11767,0.413352,56),(11777,0.413352,56),(11802,0.413352,56),(11907,0.413352,56),(12031,0.413352,56),(12033,0.413352,56),(12040,0.413352,56),(12045,0.413352,56),(12050,0.413352,56),(12069,0.413352,56),(12070,0.413352,56),(12071,0.413352,56),(12072,0.413352,56),(12169,0.413352,56),(12270,0.413352,56),(12291,0.413352,56),(12476,0.413352,56),(12749,0.413352,56),(12912,0.413352,56),(12913,0.413352,56),(12914,0.413352,56),(12924,0.413352,56),(12927,0.413352,56),(12931,0.413352,56),(12964,0.413352,56),(13189,0.413352,56),(13190,0.413352,56),(13229,0.413352,56),(13230,0.413352,56),(13231,0.413352,56),(13232,0.413352,56),(13290,0.413352,56),(13291,0.413352,56),(13292,0.413352,56),(13293,0.413352,56),(13357,0.413352,56),(13358,0.413352,56),(13359,0.413352,56),(13360,0.413352,56),(13393,0.413352,56),(13403,0.413352,56),(13674,0.413352,56),(13675,0.413352,56),(13676,0.413352,56),(13677,0.413352,56),(13678,0.413352,56),(13679,0.413352,56),(13680,0.413352,56),(13681,0.413352,56),(13682,0.413352,56),(13683,0.413352,56),(13684,0.413352,56),(13685,0.413352,56),(13686,0.413352,56),(13687,0.413352,56),(13688,0.413352,56),(13689,0.413352,56),(14215,0.413352,56),(14353,0.413352,56),(14393,0.413352,56),(14399,0.413352,56),(14400,0.413352,56),(14410,0.413352,56),(14411,0.413352,56),(14417,0.413352,56),(14418,0.413352,56),(14419,0.413352,56),(14421,0.413352,56),(14426,0.413352,56),(14613,0.413352,56),(14614,0.413352,56),(14615,0.413352,56),(14712,0.413352,56),(14713,0.413352,56),(14714,0.413352,56),(14715,0.413352,56),(14784,0.413352,56),(14813,0.413352,56),(14873,0.413352,56),(14880,0.413352,56),(14912,0.413352,56),(15098,0.413352,56),(15100,0.413352,56),(15225,0.413352,56),(15255,0.413352,56),(15256,0.413352,56),(15257,0.413352,56),(15258,0.413352,56),(15306,0.413352,56),(15307,0.413352,56),(15308,0.413352,56),(15312,0.413352,56),(15317,0.413352,56),(15321,0.413352,56),(15325,0.413352,56),(15330,0.413352,56),(15358,0.413352,56),(15372,0.413352,56),(15377,0.413352,56),(15420,0.413352,56),(15425,0.413352,56),(15429,0.413352,56),(15430,0.413352,56),(15454,0.413352,56),(15459,0.413352,56),(15477,0.413352,56),(15482,0.413352,56),(15561,0.413352,56),(15562,0.413352,56),(15580,0.413352,56),(15585,0.413352,56),(15602,0.413352,56),(15605,0.413352,56),(15618,0.413352,56),(15620,0.413352,56),(15623,0.413352,56),(15629,0.413352,56),(15639,0.413352,56),(15640,0.413352,56),(15670,0.413352,56),(15708,0.413352,56),(15727,0.413352,56),(15748,0.413352,56),(15816,0.413352,56),(15842,0.413352,56),(15871,0.413352,56),(15873,0.413352,56),(15874,0.413352,56),(15885,0.413352,56),(15886,0.413352,56),(15899,0.413352,56),(15959,0.413352,56),(16000,0.413352,56),(16030,0.413352,56),(16084,0.413352,56),(16085,0.413352,56),(16086,0.413352,56),(16087,0.413352,56),(16344,0.413352,56),(16345,0.413352,56),(16414,0.413352,56),(16429,0.413352,56),(16782,0.413352,56),(16864,0.413352,56),(16932,0.413352,56),(16959,0.413352,56),(16976,0.413352,56),(17124,0.413352,56),(17271,0.413352,56),(17275,0.413352,56),(17294,0.413352,56),(17313,0.413352,56),(17339,0.413352,56),(17341,0.413352,56),(17571,0.413352,56),(17810,0.413352,56),(17849,0.413352,56),(17873,0.413352,56),(18184,0.413352,56),(18185,0.413352,56),(18708,0.413352,56),(18729,0.413352,56),(18802,0.413352,56),(18827,0.413352,56),(18867,0.413352,56),(19179,0.413352,56),(19245,0.413352,56),(19881,0.413352,56),(20038,0.413352,56),(20123,0.413352,56),(20126,0.413352,56),(20420,0.413352,56),(20620,0.413352,56),(20873,0.413352,56),(20884,0.413352,56),(20992,0.413352,56),(21022,0.413352,56),(21091,0.413352,56),(21136,0.413352,56),(21271,0.413352,56),(21862,0.413352,56),(21864,0.413352,56),(22372,0.413352,56),(22561,0.413352,56),(22609,0.413352,56),(22612,0.413352,56),(22613,0.413352,56),(22615,0.413352,56),(22689,0.413352,56),(22730,0.413352,56),(22826,0.413352,56),(22827,0.413352,56),(22828,0.413352,56),(22829,0.413352,56),(22830,0.413352,56),(22850,0.413352,56),(22851,0.413352,56),(22853,0.413352,56),(22854,0.413352,56),(22863,0.413352,56),(22864,0.413352,56),(22865,0.413352,56),(22866,0.413352,56),(22867,0.413352,56),(22868,0.413352,56),(23480,0.413352,56),(23664,0.413352,56),(7536,3.04203,892),(19716,3.04203,892),(21041,3.04203,892),(21042,3.04203,892),(21043,3.04203,892),(21047,3.04203,892),(38,1.26682,38),(178,1.26682,38),(1040,1.26682,38),(1041,1.26682,38),(1042,1.26682,38),(1219,1.26682,38),(1220,1.26682,38),(1221,1.26682,38),(1281,1.26682,38),(1283,1.26682,38),(1284,1.26682,38),(1961,1.26682,38),(2741,1.26682,38),(6076,1.26682,38),(16992,1.26682,38),(17011,1.26682,38),(17012,1.26682,38),(18470,1.26682,38),(20375,1.26682,38),(20376,1.26682,38),(21087,1.26682,38),(21268,1.26682,38),(18696,1.43973,2434),(19478,1.43973,2434),(19479,1.43973,2434),(19480,1.43973,2434),(21147,1.43973,2434),(16897,2.94259,2295),(16898,2.94259,2295),(16899,2.94259,2295),(16900,2.94259,2295),(16901,2.94259,2295),(16902,2.94259,2295),(17562,2.94259,2295),(19704,2.94259,2295),(19709,2.94259,2295),(19786,2.94259,2295),(19788,2.94259,2295),(19974,2.94259,2295),(20094,2.94259,2295),(20837,2.94259,2295),(20838,2.94259,2295),(20839,2.94259,2295),(20842,2.94259,2295),(20731,1.90806,2533),(20735,1.90806,2533),(20736,1.90806,2533),(20737,1.90806,2533),(21121,1.90806,2533),(6761,2.43141,1011),(7863,2.43141,1011),(7974,2.43141,1011),(8249,2.43141,1011),(8309,2.43141,1011),(8312,2.43141,1011),(8314,2.43141,1011),(8316,2.43141,1011),(12530,2.43141,1011),(12889,2.43141,1011),(12892,2.43141,1011),(12894,2.43141,1011),(22231,2.43141,1011),(21243,3.4691,2559),(21135,4.59757,2548),(21137,4.59757,2548),(21526,4.59757,2548),(16314,5.59434,2262),(17772,5.59434,2262),(20684,5.59434,2262),(21520,5.59434,2262),(21521,5.59434,2262),(21522,5.59434,2262),(21523,5.59434,2262),(21524,5.59434,2262),(21525,5.59434,2262),(21822,2.48355,2610),(21900,2.48355,2610),(52,0.533162,52),(1312,0.533162,52),(1319,0.533162,52),(1325,0.533162,52),(1333,0.533162,52),(1358,0.533162,52),(1360,0.533162,52),(1367,0.533162,52),(1378,0.533162,52),(1380,0.533162,52),(1381,0.533162,52),(1389,0.533162,52),(1868,0.533162,52),(1874,0.533162,52),(1875,0.533162,52),(1878,0.533162,52),(1879,0.533162,52),(1907,0.533162,52),(1908,0.533162,52),(2413,0.533162,52),(2577,0.533162,52),(2885,0.533162,52),(2886,0.533162,52),(3128,0.533162,52),(3564,0.533162,52),(3750,0.533162,52),(3850,0.533162,52),(3892,0.533162,52),(3897,0.533162,52),(3953,0.533162,52),(3972,0.533162,52),(4031,0.533162,52),(4035,0.533162,52),(4046,0.533162,52),(4187,0.533162,52),(4189,0.533162,52),(4191,0.533162,52),(4193,0.533162,52),(4195,0.533162,52),(4196,0.533162,52),(4198,0.533162,52),(4260,0.533162,52),(4264,0.533162,52),(4350,0.533162,52),(4351,0.533162,52),(4352,0.533162,52),(4355,0.533162,52),(4356,0.533162,52),(4369,0.533162,52),(4377,0.533162,52),(4385,0.533162,52),(4481,0.533162,52),(4496,0.533162,52),(4498,0.533162,52),(4500,0.533162,52),(4502,0.533162,52),(4504,0.533162,52),(4536,0.533162,52),(4546,0.533162,52),(4601,0.533162,52),(4698,0.533162,52),(4700,0.533162,52),(4702,0.533162,52),(4704,0.533162,52),(4706,0.533162,52),(4708,0.533162,52),(4710,0.533162,52),(4728,0.533162,52),(4897,0.533162,52),(4941,0.533162,52),(4964,0.533162,52),(4966,0.533162,52),(5367,0.533162,52),(5706,0.533162,52),(5777,0.533162,52),(6005,0.533162,52),(6391,0.533162,52),(6392,0.533162,52),(6394,0.533162,52),(6396,0.533162,52),(6398,0.533162,52),(6400,0.533162,52),(6402,0.533162,52),(6404,0.533162,52),(6406,0.533162,52),(6408,0.533162,52),(6551,0.533162,52),(6768,0.533162,52),(6788,0.533162,52),(6794,0.533162,52),(6993,0.533162,52),(6999,0.533162,52),(7375,0.533162,52),(7812,0.533162,52),(7823,0.533162,52),(7876,0.533162,52),(8479,0.533162,52),(8650,0.533162,52),(8671,0.533162,52),(8789,0.533162,52),(8889,0.533162,52),(8890,0.533162,52),(9260,0.533162,52),(9763,0.533162,52),(9765,0.533162,52),(9795,0.533162,52),(9796,0.533162,52),(9800,0.533162,52),(9801,0.533162,52),(9804,0.533162,52),(9805,0.533162,52),(9849,0.533162,52),(9850,0.533162,52),(9851,0.533162,52),(9852,0.533162,52),(9853,0.533162,52),(9854,0.533162,52),(9855,0.533162,52),(9856,0.533162,52),(9857,0.533162,52),(9858,0.533162,52),(9859,0.533162,52),(9860,0.533162,52),(9861,0.533162,52),(9862,0.533162,52),(9863,0.533162,52),(9864,0.533162,52),(9865,0.533162,52),(9866,0.533162,52),(9867,0.533162,52),(9868,0.533162,52),(9869,0.533162,52),(9870,0.533162,52),(9871,0.533162,52),(9872,0.533162,52),(9873,0.533162,52),(9874,0.533162,52),(9875,0.533162,52),(9876,0.533162,52),(9877,0.533162,52),(9878,0.533162,52),(9879,0.533162,52),(9880,0.533162,52),(9881,0.533162,52),(9882,0.533162,52),(9883,0.533162,52),(9884,0.533162,52),(9885,0.533162,52),(9886,0.533162,52),(9887,0.533162,52),(9888,0.533162,52),(9889,0.533162,52),(9890,0.533162,52),(9891,0.533162,52),(9892,0.533162,52),(9893,0.533162,52),(9894,0.533162,52),(9895,0.533162,52),(9896,0.533162,52),(9897,0.533162,52),(10004,0.533162,52),(10138,0.533162,52),(10174,0.533162,52),(10175,0.533162,52),(10178,0.533162,52),(10179,0.533162,52),(10220,0.533162,52),(10221,0.533162,52),(11408,0.533162,52),(11432,0.533162,52),(11433,0.533162,52),(11436,0.533162,52),(11437,0.533162,52),(11440,0.533162,52),(11441,0.533162,52),(11589,0.533162,52),(11821,0.533162,52),(11850,0.533162,52),(11853,0.533162,52),(11854,0.533162,52),(11857,0.533162,52),(11858,0.533162,52),(11861,0.533162,52),(11862,0.533162,52),(11865,0.533162,52),(11867,0.533162,52),(11869,0.533162,52),(11871,0.533162,52),(11901,0.533162,52),(11950,0.533162,52),(11951,0.533162,52),(11952,0.533162,52),(11954,0.533162,52),(11958,0.533162,52),(11959,0.533162,52),(11960,0.533162,52),(11964,0.533162,52),(11966,0.533162,52),(11968,0.533162,52),(11970,0.533162,52),(11971,0.533162,52),(11974,0.533162,52),(11975,0.533162,52),(11978,0.533162,52),(11980,0.533162,52),(11983,0.533162,52),(11985,0.533162,52),(11988,0.533162,52),(11989,0.533162,52),(11992,0.533162,52),(11993,0.533162,52),(11998,0.533162,52),(11999,0.533162,52),(12004,0.533162,52),(12006,0.533162,52),(12009,0.533162,52),(12011,0.533162,52),(12013,0.533162,52),(12014,0.533162,52),(12017,0.533162,52),(12019,0.533162,52),(12021,0.533162,52),(12022,0.533162,52),(12023,0.533162,52),(12027,0.533162,52),(12062,0.533162,52),(12063,0.533162,52),(12082,0.533162,52),(12166,0.533162,52),(12392,0.533162,52),(12477,0.533162,52),(12670,0.533162,52),(12680,0.533162,52),(12681,0.533162,52),(12689,0.533162,52),(12811,0.533162,52),(12946,0.533162,52),(12950,0.533162,52),(12952,0.533162,52),(12972,0.533162,52),(12974,0.533162,52),(13279,0.533162,52),(13283,0.533162,52),(13287,0.533162,52),(13289,0.533162,52),(13295,0.533162,52),(13297,0.533162,52),(13302,0.533162,52),(13305,0.533162,52),(13307,0.533162,52),(13323,0.533162,52),(13331,0.533162,52),(13362,0.533162,52),(13366,0.533162,52),(13376,0.533162,52),(13378,0.533162,52),(13395,0.533162,52),(13399,0.533162,52),(13402,0.533162,52),(13410,0.533162,52),(13412,0.533162,52),(13413,0.533162,52),(13431,0.533162,52),(13435,0.533162,52),(13437,0.533162,52),(13473,0.533162,52),(13477,0.533162,52),(13546,0.533162,52),(13555,0.533162,52),(13559,0.533162,52),(13564,0.533162,52),(13568,0.533162,52),(13572,0.533162,52),(13591,0.533162,52),(13593,0.533162,52),(13595,0.533162,52),(13597,0.533162,52),(13599,0.533162,52),(13601,0.533162,52),(13770,0.533162,52),(13774,0.533162,52),(13778,0.533162,52),(13810,0.533162,52),(13814,0.533162,52),(13826,0.533162,52),(13838,0.533162,52),(13843,0.533162,52),(13851,0.533162,52),(13970,0.533162,52),(14294,0.533162,52),(14295,0.533162,52),(14298,0.533162,52),(14299,0.533162,52),(14300,0.533162,52),(14301,0.533162,52),(14321,0.533162,52),(14362,0.533162,52),(14363,0.533162,52),(14414,0.533162,52),(14499,0.533162,52),(14716,0.533162,52),(14717,0.533162,52),(14757,0.533162,52),(14781,0.533162,52),(14799,0.533162,52),(14800,0.533162,52),(14874,0.533162,52),(14882,0.533162,52),(14914,0.533162,52),(14943,0.533162,52),(15002,0.533162,52),(15033,0.533162,52),(15244,0.533162,52),(15249,0.533162,52),(15250,0.533162,52),(15410,0.533162,52),(15535,0.533162,52),(15542,0.533162,52),(15573,0.533162,52),(15652,0.533162,52),(15653,0.533162,52),(15717,0.533162,52),(15724,0.533162,52),(15751,0.533162,52),(15810,0.533162,52),(15822,0.533162,52),(15824,0.533162,52),(15826,0.533162,52),(15852,0.533162,52),(15854,0.533162,52),(15892,0.533162,52),(16095,0.533162,52),(16150,0.533162,52),(16221,0.533162,52),(16296,0.533162,52),(16315,0.533162,52),(16318,0.533162,52),(16436,0.533162,52),(16477,0.533162,52),(16585,0.533162,52),(16644,0.533162,52),(16649,0.533162,52),(16650,0.533162,52),(16653,0.533162,52),(16654,0.533162,52),(16663,0.533162,52),(16668,0.533162,52),(16669,0.533162,52),(16671,0.533162,52),(16672,0.533162,52),(16834,0.533162,52),(16867,0.533162,52),(16905,0.533162,52),(16965,0.533162,52),(16979,0.533162,52),(17449,0.533162,52),(17458,0.533162,52),(17465,0.533162,52),(17534,0.533162,52),(17564,0.533162,52),(17623,0.533162,52),(17624,0.533162,52),(17636,0.533162,52),(17666,0.533162,52),(17667,0.533162,52),(17669,0.533162,52),(17670,0.533162,52),(17734,0.533162,52),(17742,0.533162,52),(17744,0.533162,52),(17790,0.533162,52),(17791,0.533162,52),(17963,0.533162,52),(17964,0.533162,52),(17967,0.533162,52),(17981,0.533162,52),(17987,0.533162,52),(18025,0.533162,52),(18049,0.533162,52),(18057,0.533162,52),(18060,0.533162,52),(18061,0.533162,52),(18090,0.533162,52),(18119,0.533162,52),(18191,0.533162,52),(18318,0.533162,52),(18456,0.533162,52),(18465,0.533162,52),(18468,0.533162,52),(18486,0.533162,52),(18508,0.533162,52),(18559,0.533162,52),(18585,0.533162,52),(18586,0.533162,52),(18587,0.533162,52),(18588,0.533162,52),(18596,0.533162,52),(18597,0.533162,52),(18598,0.533162,52),(18605,0.533162,52),(18606,0.533162,52),(18608,0.533162,52),(18612,0.533162,52),(18613,0.533162,52),(18614,0.533162,52),(18630,0.533162,52),(18665,0.533162,52),(18680,0.533162,52),(18737,0.533162,52),(18804,0.533162,52),(18869,0.533162,52),(18897,0.533162,52),(18907,0.533162,52),(18917,0.533162,52),(18932,0.533162,52),(18939,0.533162,52),(18993,0.533162,52),(19181,0.533162,52),(19243,0.533162,52),(19334,0.533162,52),(19355,0.533162,52),(19498,0.533162,52),(19519,0.533162,52),(19534,0.533162,52),(19984,0.533162,52),(20006,0.533162,52),(20022,0.533162,52),(20053,0.533162,52),(20058,0.533162,52),(20059,0.533162,52),(20115,0.533162,52),(20116,0.533162,52),(20118,0.533162,52),(20143,0.533162,52),(20202,0.533162,52),(20210,0.533162,52),(20215,0.533162,52),(20220,0.533162,52),(20257,0.533162,52),(20316,0.533162,52),(20379,0.533162,52),(20391,0.533162,52),(20392,0.533162,52),(20396,0.533162,52),(20449,0.533162,52),(20450,0.533162,52),(20452,0.533162,52),(20454,0.533162,52),(20486,0.533162,52),(20491,0.533162,52),(20492,0.533162,52),(20495,0.533162,52),(20496,0.533162,52),(20497,0.533162,52),(20498,0.533162,52),(20503,0.533162,52),(20504,0.533162,52),(20505,0.533162,52),(20506,0.533162,52),(20563,0.533162,52),(20656,0.533162,52),(20669,0.533162,52),(20693,0.533162,52),(20696,0.533162,52),(20796,0.533162,52),(20797,0.533162,52),(20804,0.533162,52),(20880,0.533162,52),(20942,0.533162,52),(20947,0.533162,52),(20948,0.533162,52),(20951,0.533162,52),(20955,0.533162,52),(20956,0.533162,52),(21052,0.533162,52),(21068,0.533162,52),(21216,0.533162,52),(21314,0.533162,52),(21390,0.533162,52),(21436,0.533162,52),(21590,0.533162,52),(21720,0.533162,52),(21866,0.533162,52),(21868,0.533162,52),(22374,0.533162,52),(22481,0.533162,52),(22482,0.533162,52),(22483,0.533162,52),(22484,0.533162,52),(22499,0.533162,52),(22562,0.533162,52),(22691,0.533162,52),(23675,0.533162,52),(23689,0.533162,52),(23729,0.533162,52),(23778,0.533162,52),(20511,1.32613,2520),(20515,1.32613,2520),(15363,14.7664,2196),(15367,14.7664,2196),(9954,1.73883,1331),(9956,1.73883,1331),(10054,1.73883,1331),(10113,1.73883,1331),(14364,1.73883,1331),(17090,1.73883,1331),(5238,6.8435,454),(5239,6.8435,454),(5240,6.8435,454),(5305,6.8435,454),(21381,2.57896,2575),(22966,3.21783,2676),(22990,3.21783,2676),(22991,3.21783,2676),(22992,3.21783,2676),(11460,14.8093,1651),(15473,14.8093,1651),(22676,14.8093,1651),(22965,14.8093,1651),(21483,6.21239,2581),(16350,1.60406,2267),(19879,1.60406,2267),(19880,1.60406,2267),(19971,1.60406,2267),(22431,1.60406,2267),(22646,1.60406,2267),(21974,1.73072,2626),(18697,1.49158,2435),(19482,1.49158,2435),(19483,1.49158,2435),(19484,1.49158,2435),(20359,1.49158,2435),(20675,1.49158,2435),(20937,1.49158,2435),(17751,1.90924,2383),(17752,1.90924,2383),(17753,1.90924,2383),(18029,1.90924,2383),(18030,1.90924,2383),(20820,1.90924,2383),(20828,1.90924,2383),(20833,1.90924,2383),(22855,1.90924,2383),(17578,0.450372,2369),(17970,0.450372,2369),(17990,0.450372,2369),(17991,0.450372,2369),(17992,0.450372,2369),(18162,0.450372,2369),(18824,0.450372,2369),(18825,0.450372,2369),(18826,0.450372,2369),(19787,0.450372,2369),(21151,0.450372,2369),(20366,0.410117,2537),(17206,2.23687,2273),(18369,2.23687,2273),(18405,2.23687,2273),(18647,2.23687,2273),(19152,2.23687,2273),(20000,2.23687,2273),(20002,2.23687,2273),(1479,0.503064,186),(1760,0.503064,186),(1882,0.503064,186),(1897,0.503064,186),(2589,0.503064,186),(2734,0.503064,186),(2883,0.503064,186),(3990,0.503064,186),(3992,0.503064,186),(3994,0.503064,186),(3996,0.503064,186),(3998,0.503064,186),(3999,0.503064,186),(4002,0.503064,186),(4077,0.503064,186),(4080,0.503064,186),(4084,0.503064,186),(4085,0.503064,186),(4087,0.503064,186),(4089,0.503064,186),(4223,0.503064,186),(4231,0.503064,186),(4241,0.503064,186),(4357,0.503064,186),(4358,0.503064,186),(4362,0.503064,186),(4522,0.503064,186),(4523,0.503064,186),(4524,0.503064,186),(4526,0.503064,186),(4712,0.503064,186),(4770,0.503064,186),(4772,0.503064,186),(4774,0.503064,186),(4777,0.503064,186),(4780,0.503064,186),(4782,0.503064,186),(6064,0.503064,186),(6229,0.503064,186),(6412,0.503064,186),(6414,0.503064,186),(6416,0.503064,186),(6418,0.503064,186),(6420,0.503064,186),(6422,0.503064,186),(6424,0.503064,186),(6426,0.503064,186),(6428,0.503064,186),(6430,0.503064,186),(6437,0.503064,186),(6481,0.503064,186),(6482,0.503064,186),(6484,0.503064,186),(6486,0.503064,186),(6488,0.503064,186),(6490,0.503064,186),(6492,0.503064,186),(6494,0.503064,186),(6496,0.503064,186),(6498,0.503064,186),(6509,0.503064,186),(6511,0.503064,186),(6513,0.503064,186),(6515,0.503064,186),(6536,0.503064,186),(6539,0.503064,186),(6541,0.503064,186),(6543,0.503064,186),(6671,0.503064,186),(6673,0.503064,186),(6676,0.503064,186),(6677,0.503064,186),(6679,0.503064,186),(6681,0.503064,186),(6685,0.503064,186),(6781,0.503064,186),(6796,0.503064,186),(6941,0.503064,186),(6998,0.503064,186),(7040,0.503064,186),(7121,0.503064,186),(7122,0.503064,186),(7821,0.503064,186),(7917,0.503064,186),(7918,0.503064,186),(8429,0.503064,186),(8651,0.503064,186),(9262,0.503064,186),(9350,0.503064,186),(9676,0.503064,186),(9677,0.503064,186),(9684,0.503064,186),(9685,0.503064,186),(9711,0.503064,186),(9712,0.503064,186),(9717,0.503064,186),(9718,0.503064,186),(9721,0.503064,186),(9722,0.503064,186),(9726,0.503064,186),(9727,0.503064,186),(9730,0.503064,186),(9731,0.503064,186),(9732,0.503064,186),(9767,0.503064,186),(9774,0.503064,186),(9941,0.503064,186),(9942,0.503064,186),(10142,0.503064,186),(10212,0.503064,186),(10249,0.503064,186),(10250,0.503064,186),(10436,0.503064,186),(10437,0.503064,186),(10439,0.503064,186),(10440,0.503064,186),(10446,0.503064,186),(10447,0.503064,186),(10659,0.503064,186),(10663,0.503064,186),(11057,0.503064,186),(11058,0.503064,186),(11076,0.503064,186),(11077,0.503064,186),(11082,0.503064,186),(11083,0.503064,186),(11102,0.503064,186),(11103,0.503064,186),(11111,0.503064,186),(11112,0.503064,186),(11115,0.503064,186),(11116,0.503064,186),(11160,0.503064,186),(11162,0.503064,186),(11169,0.503064,186),(11170,0.503064,186),(11184,0.503064,186),(11185,0.503064,186),(11191,0.503064,186),(11192,0.503064,186),(11195,0.503064,186),(11196,0.503064,186),(11199,0.503064,186),(11200,0.503064,186),(11203,0.503064,186),(11204,0.503064,186),(11219,0.503064,186),(11220,0.503064,186),(11223,0.503064,186),(11224,0.503064,186),(11227,0.503064,186),(11228,0.503064,186),(11231,0.503064,186),(11232,0.503064,186),(11235,0.503064,186),(11236,0.503064,186),(11239,0.503064,186),(11240,0.503064,186),(11247,0.503064,186),(11248,0.503064,186),(11294,0.503064,186),(11295,0.503064,186),(11442,0.503064,186),(11665,0.503064,186),(11734,0.503064,186),(11737,0.503064,186),(11748,0.503064,186),(11750,0.503064,186),(11760,0.503064,186),(11761,0.503064,186),(11764,0.503064,186),(11765,0.503064,186),(12037,0.503064,186),(12038,0.503064,186),(12042,0.503064,186),(12049,0.503064,186),(12677,0.503064,186),(12789,0.503064,186),(12830,0.503064,186),(12831,0.503064,186),(12936,0.503064,186),(12958,0.503064,186),(13529,0.503064,186),(13670,0.503064,186),(14015,0.503064,186),(14016,0.503064,186),(14019,0.503064,186),(14020,0.503064,186),(14023,0.503064,186),(14024,0.503064,186),(14028,0.503064,186),(14029,0.503064,186),(14032,0.503064,186),(14033,0.503064,186),(14036,0.503064,186),(14037,0.503064,186),(14054,0.503064,186),(14055,0.503064,186),(14058,0.503064,186),(14059,0.503064,186),(14060,0.503064,186),(14062,0.503064,186),(14588,0.503064,186),(14759,0.503064,186),(14762,0.503064,186),(14763,0.503064,186),(14767,0.503064,186),(14768,0.503064,186),(14771,0.503064,186),(14977,0.503064,186),(14978,0.503064,186),(14979,0.503064,186),(14980,0.503064,186),(14981,0.503064,186),(14982,0.503064,186),(14983,0.503064,186),(14984,0.503064,186),(14996,0.503064,186),(14999,0.503064,186),(15001,0.503064,186),(15212,0.503064,186),(15213,0.503064,186),(15218,0.503064,186),(15219,0.503064,186),(15220,0.503064,186),(15229,0.503064,186),(15466,0.503064,186),(15508,0.503064,186),(15570,0.503064,186),(15579,0.503064,186),(15666,0.503064,186),(15702,0.503064,186),(15749,0.503064,186),(15841,0.503064,186),(15894,0.503064,186),(16298,0.503064,186),(16299,0.503064,186),(16337,0.503064,186),(16445,0.503064,186),(16740,0.503064,186),(17419,0.503064,186),(17420,0.503064,186),(17421,0.503064,186),(17550,0.503064,186),(18097,0.503064,186),(18113,0.503064,186),(18125,0.503064,186),(18309,0.503064,186),(18808,0.503064,186),(18873,0.503064,186),(19185,0.503064,186),(19428,0.503064,186),(19665,0.503064,186),(21100,0.503064,186),(21255,0.503064,186),(21315,0.503064,186),(21458,0.503064,186),(21619,0.503064,186),(21678,0.503064,186),(21874,0.503064,186),(21876,0.503064,186),(22119,0.503064,186),(22129,0.503064,186),(22378,0.503064,186),(22563,0.503064,186),(22695,0.503064,186),(22717,0.503064,186),(23129,0.503064,186),(23448,0.503064,186),(23674,0.503064,186),(15879,3.65957,2231),(17028,3.65957,2231),(17032,3.65957,2231),(40,2.15954,40),(138,2.15954,40),(1125,2.15954,40),(1163,2.15954,40),(1610,2.15954,40),(5325,2.15954,40),(5326,2.15954,40),(5753,2.15954,40),(5754,2.15954,40),(22776,2.03333,2664),(22777,2.03333,2664),(22778,2.03333,2664),(22779,2.03333,2664),(16111,1.63649,2247),(21963,0.852541,2613),(22161,0.852541,2613),(22176,0.852541,2613),(22259,0.852541,2613),(22260,0.852541,2613),(22261,0.852541,2613),(22262,0.852541,2613),(22263,0.852541,2613),(22264,0.852541,2613),(22271,0.852541,2613),(22272,0.852541,2613),(22273,0.852541,2613),(22274,0.852541,2613),(22275,0.852541,2613),(22276,0.852541,2613),(22277,0.852541,2613),(22278,0.852541,2613),(22301,0.852541,2613),(22302,0.852541,2613),(22303,0.852541,2613),(22304,0.852541,2613),(22305,0.852541,2613),(22306,0.852541,2613),(22307,0.852541,2613),(22308,0.852541,2613),(22309,0.852541,2613),(22310,0.852541,2613),(22313,0.852541,2613),(22314,0.852541,2613),(22315,0.852541,2613),(22316,0.852541,2613),(22322,0.852541,2613),(22323,0.852541,2613),(22324,0.852541,2613),(22325,0.852541,2613),(22332,0.852541,2613),(22348,0.852541,2613),(22538,0.852541,2613),(22982,0.852541,2613),(17065,2.39942,2390),(17071,2.39942,2390),(17072,2.39942,2390),(17870,2.39942,2390),(17871,2.39942,2390),(17872,2.39942,2390),(17946,2.39942,2390),(18135,2.39942,2390),(18154,2.39942,2390),(18303,2.39942,2390),(20306,2.39942,2390),(22981,2.39942,2390),(42,1.09166,42),(167,1.09166,42),(194,1.09166,42),(195,1.09166,42),(605,1.09166,42),(636,1.09166,42),(661,1.09166,42),(742,1.09166,42),(743,1.09166,42),(1031,1.09166,42),(1032,1.09166,42),(1110,1.09166,42),(1114,1.09166,42),(1115,1.09166,42),(1142,1.09166,42),(1143,1.09166,42),(1144,1.09166,42),(1151,1.09166,42),(1152,1.09166,42),(1153,1.09166,42),(1154,1.09166,42),(1155,1.09166,42),(1156,1.09166,42),(10316,1.09166,42),(10319,1.09166,42),(11631,1.09166,42),(16425,1.09166,42),(16426,1.09166,42),(4449,0.777049,371),(7552,0.777049,371),(10811,0.777049,371),(10812,0.777049,371),(10815,0.777049,371),(10817,0.777049,371),(12190,0.777049,371),(14380,0.777049,371),(16480,0.777049,371),(17035,0.777049,371),(17610,0.777049,371),(18510,0.777049,371),(18651,0.777049,371),(19344,0.777049,371),(20570,0.777049,371),(21259,0.777049,371),(145,0.893252,8),(897,0.893252,8),(936,0.893252,8),(937,0.893252,8),(1010,0.893252,8),(1011,0.893252,8),(1012,0.893252,8),(1996,0.893252,8),(1997,0.893252,8),(1998,0.893252,8),(1999,0.893252,8),(2000,0.893252,8),(2001,0.893252,8),(2002,0.893252,8),(2003,0.893252,8),(2004,0.893252,8),(3024,0.893252,8),(3028,0.893252,8),(5773,0.893252,8),(5851,0.893252,8),(6211,0.893252,8),(6745,0.893252,8),(6746,0.893252,8),(6798,0.893252,8),(6799,0.893252,8),(6800,0.893252,8),(6801,0.893252,8),(6802,0.893252,8),(6803,0.893252,8),(6804,0.893252,8),(6818,0.893252,8),(6819,0.893252,8),(6820,0.893252,8),(6821,0.893252,8),(6822,0.893252,8),(6823,0.893252,8),(6824,0.893252,8),(6825,0.893252,8),(6826,0.893252,8),(6827,0.893252,8),(6828,0.893252,8),(6829,0.893252,8),(6830,0.893252,8),(8589,0.893252,8),(9491,0.893252,8),(11363,0.893252,8),(11661,0.893252,8),(15683,0.893252,8),(16861,0.893252,8),(16993,0.893252,8),(16995,0.893252,8),(16999,0.893252,8),(17109,0.893252,8),(22711,5.12813,2654),(4629,0.803199,391),(4761,0.803199,391),(4868,0.803199,391),(4869,0.803199,391),(4870,0.803199,391),(7857,0.803199,391),(10553,0.803199,391),(14702,0.803199,391),(14703,0.803199,391),(14704,0.803199,391),(15400,0.803199,391),(16162,0.803199,391),(16168,0.803199,391),(16170,0.803199,391),(16940,0.803199,391),(19329,0.803199,391),(20089,0.803199,391),(20090,0.803199,391),(17890,5.22473,2398),(706,1.54538,83),(707,1.54538,83),(719,1.54538,83),(762,1.54538,83),(806,1.54538,83),(820,1.54538,83),(822,1.54538,83),(865,1.54538,83),(902,1.54538,83),(913,1.54538,83),(982,1.54538,83),(1006,1.54538,83),(1007,1.54538,83),(1082,1.54538,83),(1083,1.54538,83),(1990,1.54538,83),(2378,1.54538,83),(3200,1.54538,83),(3201,1.54538,83),(5510,1.54538,83),(8837,1.54538,83),(8838,1.54538,83),(8840,1.54538,83),(8842,1.54538,83),(8843,1.54538,83),(9276,1.54538,83),(9277,1.54538,83),(9492,1.54538,83),(10618,1.54538,83),(11908,1.54538,83),(11909,1.54538,83),(14315,1.54538,83),(14316,1.54538,83),(20827,1.54538,83),(21635,1.54538,83),(21735,1.54538,83),(21736,1.54538,83),(21830,1.54538,83),(19607,1.706,2499),(11586,9.62757,1691),(20542,0.247881,2523),(14584,2.16384,1952),(14590,2.16384,1952),(19085,2.16384,1952),(1130,1.51218,162),(1131,1.51218,162),(1132,1.51218,162),(14428,1.51218,162),(16575,1.51218,162),(19315,0.239198,2486),(15374,1.58301,2199),(110,1.66401,110),(525,1.66401,110),(2069,1.66401,110),(4606,1.66401,110),(4907,1.66401,110),(5450,1.66401,110),(5489,1.66401,110),(5491,1.66401,110),(5492,1.66401,110),(5493,1.66401,110),(5497,1.66401,110),(5498,1.66401,110),(5561,1.66401,110),(5562,1.66401,110),(5563,1.66401,110),(5564,1.66401,110),(5987,1.66401,110),(7853,1.66401,110),(10849,1.66401,110),(11171,1.66401,110),(11172,1.66401,110),(13444,1.66401,110),(13731,1.66401,110),(13732,1.66401,110),(13749,1.66401,110),(14509,1.66401,110),(14514,1.66401,110),(17045,1.66401,110),(17535,1.66401,110),(20030,1.66401,110),(20076,1.66401,110),(20162,1.66401,110),(20609,1.66401,110),(21131,1.66401,110),(23504,1.66401,110),(16125,0.752004,2248),(16199,0.752004,2248),(16201,0.752004,2248),(16203,0.752004,2248),(16208,0.752004,2248),(16209,0.752004,2248),(16224,0.752004,2248),(16225,0.752004,2248),(16226,0.752004,2248),(16246,0.752004,2248),(16253,0.752004,2248),(16258,0.752004,2248),(16260,0.752004,2248),(16262,0.752004,2248),(16384,0.752004,2248),(16385,0.752004,2248),(16490,0.752004,2248),(16491,0.752004,2248),(16589,0.752004,2248),(16591,0.752004,2248),(16593,0.752004,2248),(16602,0.752004,2248),(16660,0.752004,2248),(16721,0.752004,2248),(16727,0.752004,2248),(16728,0.752004,2248),(16729,0.752004,2248),(16742,0.752004,2248),(16789,0.752004,2248),(16790,0.752004,2248),(16807,0.752004,2248),(16842,0.752004,2248),(16854,0.752004,2248),(16855,0.752004,2248),(16860,0.752004,2248),(16862,0.752004,2248),(16868,0.752004,2248),(16912,0.752004,2248),(16913,0.752004,2248),(16917,0.752004,2248),(16921,0.752004,2248),(16922,0.752004,2248),(16928,0.752004,2248),(16930,0.752004,2248),(16962,0.752004,2248),(16971,0.752004,2248),(17015,0.752004,2248),(17020,0.752004,2248),(17021,0.752004,2248),(17023,0.752004,2248),(17024,0.752004,2248),(17030,0.752004,2248),(17033,0.752004,2248),(17046,0.752004,2248),(17064,0.752004,2248),(17066,0.752004,2248),(17083,0.752004,2248),(17084,0.752004,2248),(17085,0.752004,2248),(17110,0.752004,2248),(17112,0.752004,2248),(17113,0.752004,2248),(17118,0.752004,2248),(17119,0.752004,2248),(17141,0.752004,2248),(17155,0.752004,2248),(17161,0.752004,2248),(17162,0.752004,2248),(17163,0.752004,2248),(17164,0.752004,2248),(17169,0.752004,2248),(17173,0.752004,2248),(17175,0.752004,2248),(17176,0.752004,2248),(17177,0.752004,2248),(17181,0.752004,2248),(17182,0.752004,2248),(17193,0.752004,2248),(17212,0.752004,2248),(17213,0.752004,2248),(17216,0.752004,2248),(17217,0.752004,2248),(17218,0.752004,2248),(17219,0.752004,2248),(17221,0.752004,2248),(17222,0.752004,2248),(17225,0.752004,2248),(17227,0.752004,2248),(17229,0.752004,2248),(17232,0.752004,2248),(17233,0.752004,2248),(17235,0.752004,2248),(17243,0.752004,2248),(17244,0.752004,2248),(17246,0.752004,2248),(17247,0.752004,2248),(17248,0.752004,2248),(17249,0.752004,2248),(17276,0.752004,2248),(17277,0.752004,2248),(17280,0.752004,2248),(17281,0.752004,2248),(17291,0.752004,2248),(17333,0.752004,2248),(17344,0.752004,2248),(17371,0.752004,2248),(17372,0.752004,2248),(17373,0.752004,2248),(17384,0.752004,2248),(17385,0.752004,2248),(17409,0.752004,2248),(17410,0.752004,2248),(17411,0.752004,2248),(17413,0.752004,2248),(17425,0.752004,2248),(17429,0.752004,2248),(17430,0.752004,2248),(17431,0.752004,2248),(17432,0.752004,2248),(17433,0.752004,2248),(17434,0.752004,2248),(17437,0.752004,2248),(17438,0.752004,2248),(17443,0.752004,2248),(17478,0.752004,2248),(17479,0.752004,2248),(17481,0.752004,2248),(17485,0.752004,2248),(17488,0.752004,2248),(17490,0.752004,2248),(17494,0.752004,2248),(17498,0.752004,2248),(17502,0.752004,2248),(17503,0.752004,2248),(17504,0.752004,2248),(17505,0.752004,2248),(17507,0.752004,2248),(17510,0.752004,2248),(17511,0.752004,2248),(17512,0.752004,2248),(17513,0.752004,2248),(17516,0.752004,2248),(17518,0.752004,2248),(17637,0.752004,2248),(17638,0.752004,2248),(17682,0.752004,2248),(17715,0.752004,2248),(17787,0.752004,2248),(17829,0.752004,2248),(17881,0.752004,2248),(17903,0.752004,2248),(17904,0.752004,2248),(17910,0.752004,2248),(17911,0.752004,2248),(17913,0.752004,2248),(17914,0.752004,2248),(17920,0.752004,2248),(17921,0.752004,2248),(17924,0.752004,2248),(17925,0.752004,2248),(17928,0.752004,2248),(17929,0.752004,2248),(17932,0.752004,2248),(17933,0.752004,2248),(17936,0.752004,2248),(17938,0.752004,2248),(17939,0.752004,2248),(17942,0.752004,2248),(17943,0.752004,2248),(17969,0.752004,2248),(18072,0.752004,2248),(18077,0.752004,2248),(18078,0.752004,2248),(18142,0.752004,2248),(18150,0.752004,2248),(18195,0.752004,2248),(18231,0.752004,2248),(18240,0.752004,2248),(18246,0.752004,2248),(18254,0.752004,2248),(18255,0.752004,2248),(18295,0.752004,2248),(18296,0.752004,2248),(18297,0.752004,2248),(18321,0.752004,2248),(18322,0.752004,2248),(18325,0.752004,2248),(18326,0.752004,2248),(18328,0.752004,2248),(18329,0.752004,2248),(18330,0.752004,2248),(18340,0.752004,2248),(18341,0.752004,2248),(18443,0.752004,2248),(18445,0.752004,2248),(18474,0.752004,2248),(18475,0.752004,2248),(18476,0.752004,2248),(18477,0.752004,2248),(18479,0.752004,2248),(18481,0.752004,2248),(18487,0.752004,2248),(18495,0.752004,2248),(18539,0.752004,2248),(18540,0.752004,2248),(18551,0.752004,2248),(18552,0.752004,2248),(18553,0.752004,2248),(18554,0.752004,2248),(18560,0.752004,2248),(18561,0.752004,2248),(18566,0.752004,2248),(18567,0.752004,2248),(18568,0.752004,2248),(18569,0.752004,2248),(18572,0.752004,2248),(18573,0.752004,2248),(18577,0.752004,2248),(18578,0.752004,2248),(18637,0.752004,2248),(18658,0.752004,2248),(18692,0.752004,2248),(18733,0.752004,2248),(18735,0.752004,2248),(18740,0.752004,2248),(18741,0.752004,2248),(18742,0.752004,2248),(18743,0.752004,2248),(18745,0.752004,2248),(18795,0.752004,2248),(18836,0.752004,2248),(18838,0.752004,2248),(18843,0.752004,2248),(18882,0.752004,2248),(18904,0.752004,2248),(18914,0.752004,2248),(18956,0.752004,2248),(18962,0.752004,2248),(18964,0.752004,2248),(18965,0.752004,2248),(18970,0.752004,2248),(19057,0.752004,2248),(19081,0.752004,2248),(19099,0.752004,2248),(19102,0.752004,2248),(19103,0.752004,2248),(19104,0.752004,2248),(19130,0.752004,2248),(19131,0.752004,2248),(19134,0.752004,2248),(19136,0.752004,2248),(19145,0.752004,2248),(19153,0.752004,2248),(19154,0.752004,2248),(19158,0.752004,2248),(19172,0.752004,2248),(19194,0.752004,2248),(19213,0.752004,2248),(19216,0.752004,2248),(19231,0.752004,2248),(19232,0.752004,2248),(19233,0.752004,2248),(19234,0.752004,2248),(19235,0.752004,2248),(19236,0.752004,2248),(19349,0.752004,2248),(19350,0.752004,2248),(19351,0.752004,2248),(19476,0.752004,2248),(19509,0.752004,2248),(19555,0.752004,2248),(19564,0.752004,2248),(19569,0.752004,2248),(19693,0.752004,2248),(19699,0.752004,2248),(19711,0.752004,2248),(19712,0.752004,2248),(19740,0.752004,2248),(19782,0.752004,2248),(19978,0.752004,2248),(20031,0.752004,2248),(20032,0.752004,2248),(20105,0.752004,2248),(20106,0.752004,2248),(20165,0.752004,2248),(20167,0.752004,2248),(20168,0.752004,2248),(20182,0.752004,2248),(20185,0.752004,2248),(20186,0.752004,2248),(20187,0.752004,2248),(20188,0.752004,2248),(20258,0.752004,2248),(20287,0.752004,2248),(20288,0.752004,2248),(20290,0.752004,2248),(20313,0.752004,2248),(20315,0.752004,2248),(20328,0.752004,2248),(20380,0.752004,2248),(20397,0.752004,2248),(20437,0.752004,2248),(20462,0.752004,2248),(20487,0.752004,2248),(20518,0.752004,2248),(20550,0.752004,2248),(20551,0.752004,2248),(20564,0.752004,2248),(20565,0.752004,2248),(20566,0.752004,2248),(20567,0.752004,2248),(20569,0.752004,2248),(20651,0.752004,2248),(20654,0.752004,2248),(20679,0.752004,2248),(20703,0.752004,2248),(20704,0.752004,2248),(20744,0.752004,2248),(20752,0.752004,2248),(20753,0.752004,2248),(20767,0.752004,2248),(20777,0.752004,2248),(20867,0.752004,2248),(20941,0.752004,2248),(20969,0.752004,2248),(20972,0.752004,2248),(21023,0.752004,2248),(21024,0.752004,2248),(21037,0.752004,2248),(21038,0.752004,2248),(21057,0.752004,2248),(21081,0.752004,2248),(21082,0.752004,2248),(21083,0.752004,2248),(21094,0.752004,2248),(21127,0.752004,2248),(21144,0.752004,2248),(21177,0.752004,2248),(21204,0.752004,2248),(21217,0.752004,2248),(21219,0.752004,2248),(21220,0.752004,2248),(21221,0.752004,2248),(21239,0.752004,2248),(21265,0.752004,2248),(21308,0.752004,2248),(21493,0.752004,2248),(21515,0.752004,2248),(21516,0.752004,2248),(21519,0.752004,2248),(21573,0.752004,2248),(21670,0.752004,2248),(21844,0.752004,2248),(21845,0.752004,2248),(22363,0.752004,2248),(22420,0.752004,2248),(22556,0.752004,2248),(22682,0.752004,2248),(22747,0.752004,2248),(22753,0.752004,2248),(22763,0.752004,2248),(22764,0.752004,2248),(22765,0.752004,2248),(22802,0.752004,2248),(22832,0.752004,2248),(22837,0.752004,2248),(22852,0.752004,2248),(22905,0.752004,2248),(22919,0.752004,2248),(22920,0.752004,2248),(22921,0.752004,2248),(22922,0.752004,2248),(22925,0.752004,2248),(22929,0.752004,2248),(22942,0.752004,2248),(22943,0.752004,2248),(22944,0.752004,2248),(22951,0.752004,2248),(22956,0.752004,2248),(22958,0.752004,2248),(22967,0.752004,2248),(22968,0.752004,2248),(22972,0.752004,2248),(22974,0.752004,2248),(23297,0.752004,2248),(23439,0.752004,2248),(23525,0.752004,2248),(23558,0.752004,2248),(23587,0.752004,2248),(23593,0.752004,2248),(23716,0.752004,2248),(23834,0.752004,2248),(19303,1.40818,2484),(19375,1.40818,2484),(19376,1.40818,2484),(19377,1.40818,2484),(19378,1.40818,2484),(415,1.14505,32),(416,1.14505,32),(448,1.14505,32),(536,1.14505,32),(597,1.14505,32),(610,1.14505,32),(655,1.14505,32),(1045,1.14505,32),(1051,1.14505,32),(1052,1.14505,32),(1054,1.14505,32),(1120,1.14505,32),(1122,1.14505,32),(3189,1.14505,32),(3192,1.14505,32),(3193,1.14505,32),(5782,1.14505,32),(6171,1.14505,32),(6552,1.14505,32),(6692,1.14505,32),(10704,1.14505,32),(10705,1.14505,32),(10706,1.14505,32),(10707,1.14505,32),(10708,1.14505,32),(10709,1.14505,32),(10710,1.14505,32),(10714,1.14505,32),(11533,1.14505,32),(11534,1.14505,32),(11536,1.14505,32),(11544,1.14505,32),(11545,1.14505,32),(11548,1.14505,32),(11549,1.14505,32),(11551,1.14505,32),(11552,1.14505,32),(11553,1.14505,32),(11554,1.14505,32),(11555,1.14505,32),(11557,1.14505,32),(11559,1.14505,32),(11567,1.14505,32),(11568,1.14505,32),(11569,1.14505,32),(11570,1.14505,32),(11577,1.14505,32),(11579,1.14505,32),(11581,1.14505,32),(11582,1.14505,32),(11584,1.14505,32),(12471,1.14505,32),(12473,1.14505,32),(13093,1.14505,32),(13130,1.14505,32),(14401,1.14505,32),(14402,1.14505,32),(14403,1.14505,32),(14406,1.14505,32),(17273,1.14505,32),(17456,1.14505,32),(17532,1.14505,32),(18355,1.14505,32),(19924,1.14505,32),(19936,1.14505,32),(19940,1.14505,32),(20291,1.14505,32),(21233,1.14505,32),(21245,1.14505,32),(21764,1.14505,32),(22628,1.14505,32),(49,0.622809,49),(907,0.622809,49),(1276,0.622809,49),(1288,0.622809,49),(1289,0.622809,49),(1290,0.622809,49),(1291,0.622809,49),(1292,0.622809,49),(1293,0.622809,49),(1294,0.622809,49),(1298,0.622809,49),(1299,0.622809,49),(1356,0.622809,49),(1357,0.622809,49),(1364,0.622809,49),(1403,0.622809,49),(1408,0.622809,49),(1423,0.622809,49),(1424,0.622809,49),(1425,0.622809,49),(1426,0.622809,49),(1427,0.622809,49),(1428,0.622809,49),(1429,0.622809,49),(1430,0.622809,49),(1431,0.622809,49),(1432,0.622809,49),(1433,0.622809,49),(1434,0.622809,49),(1435,0.622809,49),(1436,0.622809,49),(1437,0.622809,49),(1438,0.622809,49),(1466,0.622809,49),(1484,0.622809,49),(1485,0.622809,49),(1486,0.622809,49),(1487,0.622809,49),(1488,0.622809,49),(1489,0.622809,49),(1490,0.622809,49),(1491,0.622809,49),(1492,0.622809,49),(1493,0.622809,49),(1494,0.622809,49),(1499,0.622809,49),(1500,0.622809,49),(1501,0.622809,49),(1502,0.622809,49),(1503,0.622809,49),(1504,0.622809,49),(1505,0.622809,49),(1506,0.622809,49),(1507,0.622809,49),(1508,0.622809,49),(1509,0.622809,49),(1510,0.622809,49),(1511,0.622809,49),(1512,0.622809,49),(1513,0.622809,49),(1514,0.622809,49),(1515,0.622809,49),(1516,0.622809,49),(1517,0.622809,49),(1518,0.622809,49),(1524,0.622809,49),(1525,0.622809,49),(1541,0.622809,49),(1573,0.622809,49),(1595,0.622809,49),(1611,0.622809,49),(1613,0.622809,49),(1614,0.622809,49),(1616,0.622809,49),(1617,0.622809,49),(1618,0.622809,49),(1621,0.622809,49),(1641,0.622809,49),(1659,0.622809,49),(1662,0.622809,49),(1664,0.622809,49),(1688,0.622809,49),(1689,0.622809,49),(1690,0.622809,49),(1694,0.622809,49),(1695,0.622809,49),(1696,0.622809,49),(1699,0.622809,49),(1713,0.622809,49),(1715,0.622809,49),(1720,0.622809,49),(1724,0.622809,49),(1731,0.622809,49),(1734,0.622809,49),(1736,0.622809,49),(1737,0.622809,49),(1738,0.622809,49),(1739,0.622809,49),(1740,0.622809,49),(1741,0.622809,49),(1748,0.622809,49),(1753,0.622809,49),(1756,0.622809,49),(1758,0.622809,49),(1765,0.622809,49),(1767,0.622809,49),(1769,0.622809,49),(1823,0.622809,49),(1826,0.622809,49),(1827,0.622809,49),(1830,0.622809,49),(1833,0.622809,49),(1858,0.622809,49),(1859,0.622809,49),(1860,0.622809,49),(1861,0.622809,49),(1863,0.622809,49),(1864,0.622809,49),(1865,0.622809,49),(1901,0.622809,49),(1925,0.622809,49),(1926,0.622809,49),(1928,0.622809,49),(1929,0.622809,49),(1943,0.622809,49),(1944,0.622809,49),(1984,0.622809,49),(1985,0.622809,49),(2005,0.622809,49),(2027,0.622809,49),(2029,0.622809,49),(2032,0.622809,49),(2039,0.622809,49),(2040,0.622809,49),(2041,0.622809,49),(2042,0.622809,49),(2044,0.622809,49),(2045,0.622809,49),(2048,0.622809,49),(2051,0.622809,49),(2052,0.622809,49),(2070,0.622809,49),(2072,0.622809,49),(2073,0.622809,49),(2074,0.622809,49),(2080,0.622809,49),(2144,0.622809,49),(2145,0.622809,49),(2146,0.622809,49),(2147,0.622809,49),(2148,0.622809,49),(2149,0.622809,49),(2150,0.622809,49),(2151,0.622809,49),(2181,0.622809,49),(2287,0.622809,49),(2288,0.622809,49),(2311,0.622809,49),(2312,0.622809,49),(2314,0.622809,49),(2316,0.622809,49),(2318,0.622809,49),(2322,0.622809,49),(2323,0.622809,49),(2324,0.622809,49),(2329,0.622809,49),(2332,0.622809,49),(2335,0.622809,49),(2337,0.622809,49),(2338,0.622809,49),(2340,0.622809,49),(2342,0.622809,49),(2343,0.622809,49),(2345,0.622809,49),(2347,0.622809,49),(2350,0.622809,49),(2353,0.622809,49),(2354,0.622809,49),(2357,0.622809,49),(2360,0.622809,49),(2361,0.622809,49),(2364,0.622809,49),(2368,0.622809,49),(2369,0.622809,49),(2370,0.622809,49),(2371,0.622809,49),(2372,0.622809,49),(2373,0.622809,49),(2377,0.622809,49),(2380,0.622809,49),(2381,0.622809,49),(2382,0.622809,49),(2383,0.622809,49),(2384,0.622809,49),(2387,0.622809,49),(2388,0.622809,49),(2389,0.622809,49),(2390,0.622809,49),(2392,0.622809,49),(2393,0.622809,49),(2395,0.622809,49),(2397,0.622809,49),(2403,0.622809,49),(2434,0.622809,49),(2435,0.622809,49),(2436,0.622809,49),(2440,0.622809,49),(2447,0.622809,49),(2461,0.622809,49),(2462,0.622809,49),(2463,0.622809,49),(2464,0.622809,49),(2465,0.622809,49),(2466,0.622809,49),(2467,0.622809,49),(2468,0.622809,49),(2469,0.622809,49),(2470,0.622809,49),(2471,0.622809,49),(2472,0.622809,49),(2492,0.622809,49),(2493,0.622809,49),(2495,0.622809,49),(2498,0.622809,49),(2499,0.622809,49),(2502,0.622809,49),(2504,0.622809,49),(2506,0.622809,49),(2507,0.622809,49),(2510,0.622809,49),(2511,0.622809,49),(2513,0.622809,49),(2514,0.622809,49),(2517,0.622809,49),(2519,0.622809,49),(2520,0.622809,49),(2522,0.622809,49),(2524,0.622809,49),(2526,0.622809,49),(2531,0.622809,49),(2535,0.622809,49),(2557,0.622809,49),(2561,0.622809,49),(2563,0.622809,49),(2565,0.622809,49),(2582,0.622809,49),(2593,0.622809,49),(2594,0.622809,49),(2603,0.622809,49),(2604,0.622809,49),(2607,0.622809,49),(2679,0.622809,49),(2688,0.622809,49),(2733,0.622809,49),(2887,0.622809,49),(2899,0.622809,49),(2903,0.622809,49),(2910,0.622809,49),(2952,0.622809,49),(2953,0.622809,49),(2960,0.622809,49),(2961,0.622809,49),(2962,0.622809,49),(2963,0.622809,49),(2964,0.622809,49),(2965,0.622809,49),(2967,0.622809,49),(2968,0.622809,49),(2969,0.622809,49),(2974,0.622809,49),(2976,0.622809,49),(2977,0.622809,49),(2978,0.622809,49),(2981,0.622809,49),(2982,0.622809,49),(2985,0.622809,49),(2986,0.622809,49),(2987,0.622809,49),(2988,0.622809,49),(2989,0.622809,49),(2990,0.622809,49),(2991,0.622809,49),(2992,0.622809,49),(2994,0.622809,49),(3010,0.622809,49),(3011,0.622809,49),(3014,0.622809,49),(3015,0.622809,49),(3016,0.622809,49),(3017,0.622809,49),(3122,0.622809,49),(3134,0.622809,49),(3136,0.622809,49),(3137,0.622809,49),(3138,0.622809,49),(3139,0.622809,49),(3142,0.622809,49),(3144,0.622809,49),(3167,0.622809,49),(3222,0.622809,49),(3223,0.622809,49),(3224,0.622809,49),(3225,0.622809,49),(3226,0.622809,49),(3228,0.622809,49),(3229,0.622809,49),(3231,0.622809,49),(3236,0.622809,49),(3237,0.622809,49),(3246,0.622809,49),(3249,0.622809,49),(3251,0.622809,49),(3252,0.622809,49),(3253,0.622809,49),(3254,0.622809,49),(3256,0.622809,49),(3258,0.622809,49),(3259,0.622809,49),(3261,0.622809,49),(3262,0.622809,49),(3263,0.622809,49),(3264,0.622809,49),(3266,0.622809,49),(3267,0.622809,49),(3271,0.622809,49),(3272,0.622809,49),(3273,0.622809,49),(3274,0.622809,49),(3275,0.622809,49),(3276,0.622809,49),(3277,0.622809,49),(3278,0.622809,49),(3279,0.622809,49),(3280,0.622809,49),(3281,0.622809,49),(3282,0.622809,49),(3283,0.622809,49),(3284,0.622809,49),(3285,0.622809,49),(3286,0.622809,49),(3317,0.622809,49),(3322,0.622809,49),(3324,0.622809,49),(3325,0.622809,49),(3326,0.622809,49),(3327,0.622809,49),(3328,0.622809,49),(3331,0.622809,49),(3332,0.622809,49),(3333,0.622809,49),(3334,0.622809,49),(3336,0.622809,49),(3337,0.622809,49),(3338,0.622809,49),(3339,0.622809,49),(3340,0.622809,49),(3341,0.622809,49),(3342,0.622809,49),(3343,0.622809,49),(3346,0.622809,49),(3348,0.622809,49),(3349,0.622809,49),(3351,0.622809,49),(3352,0.622809,49),(3354,0.622809,49),(3357,0.622809,49),(3358,0.622809,49),(3359,0.622809,49),(3360,0.622809,49),(3361,0.622809,49),(3362,0.622809,49),(3370,0.622809,49),(3372,0.622809,49),(3373,0.622809,49),(3374,0.622809,49),(3376,0.622809,49),(3380,0.622809,49),(3381,0.622809,49),(3382,0.622809,49),(3383,0.622809,49),(3384,0.622809,49),(3387,0.622809,49),(3446,0.622809,49),(3447,0.622809,49),(3449,0.622809,49),(3453,0.622809,49),(3454,0.622809,49),(3459,0.622809,49),(3461,0.622809,49),(3462,0.622809,49),(3464,0.622809,49),(3465,0.622809,49),(3467,0.622809,49),(3468,0.622809,49),(3470,0.622809,49),(3472,0.622809,49),(3483,0.622809,49),(3484,0.622809,49),(3492,0.622809,49),(3493,0.622809,49),(3506,0.622809,49),(3509,0.622809,49),(3510,0.622809,49),(3531,0.622809,49),(3532,0.622809,49),(3534,0.622809,49),(3535,0.622809,49),(3538,0.622809,49),(3539,0.622809,49),(3551,0.622809,49),(3552,0.622809,49),(3553,0.622809,49),(3554,0.622809,49),(3555,0.622809,49),(3557,0.622809,49),(3559,0.622809,49),(3563,0.622809,49),(3565,0.622809,49),(3566,0.622809,49),(3570,0.622809,49),(3574,0.622809,49),(3575,0.622809,49),(3576,0.622809,49),(3577,0.622809,49),(3578,0.622809,49),(3581,0.622809,49),(3585,0.622809,49),(3589,0.622809,49),(3592,0.622809,49),(3601,0.622809,49),(3603,0.622809,49),(3610,0.622809,49),(3612,0.622809,49),(3613,0.622809,49),(3614,0.622809,49),(3616,0.622809,49),(3620,0.622809,49),(3621,0.622809,49),(3623,0.622809,49),(3625,0.622809,49),(3626,0.622809,49),(3627,0.622809,49),(3628,0.622809,49),(3629,0.622809,49),(3631,0.622809,49),(3632,0.622809,49),(3633,0.622809,49),(3635,0.622809,49),(3636,0.622809,49),(3637,0.622809,49),(3638,0.622809,49),(3642,0.622809,49),(3644,0.622809,49),(3645,0.622809,49),(3648,0.622809,49),(3649,0.622809,49),(3660,0.622809,49),(3664,0.622809,49),(3665,0.622809,49),(3666,0.622809,49),(3667,0.622809,49),(3683,0.622809,49),(3688,0.622809,49),(3690,0.622809,49),(3691,0.622809,49),(3692,0.622809,49),(3693,0.622809,49),(3695,0.622809,49),(3697,0.622809,49),(3698,0.622809,49),(3699,0.622809,49),(3701,0.622809,49),(3702,0.622809,49),(3703,0.622809,49),(3704,0.622809,49),(3705,0.622809,49),(3706,0.622809,49),(3709,0.622809,49),(3711,0.622809,49),(3712,0.622809,49),(3714,0.622809,49),(3716,0.622809,49),(3719,0.622809,49),(3720,0.622809,49),(3721,0.622809,49),(3723,0.622809,49),(3725,0.622809,49),(3727,0.622809,49),(3729,0.622809,49),(3732,0.622809,49),(3734,0.622809,49),(3767,0.622809,49),(3827,0.622809,49),(3829,0.622809,49),(3833,0.622809,49),(3835,0.622809,49),(3905,0.622809,49),(3910,0.622809,49),(3913,0.622809,49),(3919,0.622809,49),(3920,0.622809,49),(3922,0.622809,49),(3924,0.622809,49),(3926,0.622809,49),(3928,0.622809,49),(3929,0.622809,49),(3930,0.622809,49),(3937,0.622809,49),(3939,0.622809,49),(3941,0.622809,49),(3946,0.622809,49),(3947,0.622809,49),(3958,0.622809,49),(3959,0.622809,49),(3960,0.622809,49),(3965,0.622809,49),(3967,0.622809,49),(3971,0.622809,49),(3973,0.622809,49),(3974,0.622809,49),(3975,0.622809,49),(3976,0.622809,49),(3981,0.622809,49),(3982,0.622809,49),(3984,0.622809,49),(3985,0.622809,49),(3987,0.622809,49),(3989,0.622809,49),(4014,0.622809,49),(4016,0.622809,49),(4018,0.622809,49),(4021,0.622809,49),(4022,0.622809,49),(4024,0.622809,49),(4028,0.622809,49),(4029,0.622809,49),(4043,0.622809,49),(4044,0.622809,49),(4101,0.622809,49),(4125,0.622809,49),(4137,0.622809,49),(4139,0.622809,49),(4141,0.622809,49),(4143,0.622809,49),(4145,0.622809,49),(4220,0.622809,49),(4226,0.622809,49),(4272,0.622809,49),(4275,0.622809,49),(4276,0.622809,49),(4279,0.622809,49),(4281,0.622809,49),(4283,0.622809,49),(4309,0.622809,49),(4310,0.622809,49),(4319,0.622809,49),(4320,0.622809,49),(4321,0.622809,49),(4324,0.622809,49),(4325,0.622809,49),(4326,0.622809,49),(4327,0.622809,49),(4328,0.622809,49),(4329,0.622809,49),(4331,0.622809,49),(4332,0.622809,49),(4333,0.622809,49),(4335,0.622809,49),(4336,0.622809,49),(4338,0.622809,49),(4339,0.622809,49),(4347,0.622809,49),(4392,0.622809,49),(4395,0.622809,49),(4396,0.622809,49),(4397,0.622809,49),(4398,0.622809,49),(4416,0.622809,49),(4417,0.622809,49),(4418,0.622809,49),(4420,0.622809,49),(4422,0.622809,49),(4423,0.622809,49),(4430,0.622809,49),(4431,0.622809,49),(4436,0.622809,49),(4437,0.622809,49),(4438,0.622809,49),(4439,0.622809,49),(4443,0.622809,49),(4444,0.622809,49),(4446,0.622809,49),(4450,0.622809,49),(4451,0.622809,49),(4454,0.622809,49),(4455,0.622809,49),(4459,0.622809,49),(4460,0.622809,49),(4461,0.622809,49),(4469,0.622809,49),(4470,0.622809,49),(4478,0.622809,49),(4479,0.622809,49),(4482,0.622809,49),(4489,0.622809,49),(4491,0.622809,49),(4530,0.622809,49),(4531,0.622809,49),(4553,0.622809,49),(4557,0.622809,49),(4592,0.622809,49),(4593,0.622809,49),(4600,0.622809,49),(4617,0.622809,49),(4620,0.622809,49),(4641,0.622809,49),(4660,0.622809,49),(4664,0.622809,49),(4667,0.622809,49),(4668,0.622809,49),(4671,0.622809,49),(4672,0.622809,49),(4676,0.622809,49),(4679,0.622809,49),(4684,0.622809,49),(4686,0.622809,49),(4692,0.622809,49),(4693,0.622809,49),(4785,0.622809,49),(4825,0.622809,49),(4826,0.622809,49),(4827,0.622809,49),(4830,0.622809,49),(4831,0.622809,49),(4832,0.622809,49),(4833,0.622809,49),(4834,0.622809,49),(4835,0.622809,49),(4836,0.622809,49),(4839,0.622809,49),(4866,0.622809,49),(4867,0.622809,49),(4885,0.622809,49),(4889,0.622809,49),(4893,0.622809,49),(4908,0.622809,49),(4928,0.622809,49),(4931,0.622809,49),(4940,0.622809,49),(4942,0.622809,49),(4947,0.622809,49),(4955,0.622809,49),(4961,0.622809,49),(4962,0.622809,49),(4971,0.622809,49),(4996,0.622809,49),(5000,0.622809,49),(5001,0.622809,49),(5003,0.622809,49),(5004,0.622809,49),(5005,0.622809,49),(5006,0.622809,49),(5007,0.622809,49),(5008,0.622809,49),(5009,0.622809,49),(5012,0.622809,49),(5013,0.622809,49),(5014,0.622809,49),(5032,0.622809,49),(5034,0.622809,49),(5035,0.622809,49),(5038,0.622809,49),(5039,0.622809,49),(5065,0.622809,49),(5072,0.622809,49),(5073,0.622809,49),(5074,0.622809,49),(5075,0.622809,49),(5076,0.622809,49),(5080,0.622809,49),(5081,0.622809,49),(5082,0.622809,49),(5085,0.622809,49),(5087,0.622809,49),(5128,0.622809,49),(5146,0.622809,49),(5166,0.622809,49),(5167,0.622809,49),(5226,0.622809,49),(5266,0.622809,49),(5374,0.622809,49),(5405,0.622809,49),(5526,0.622809,49),(5528,0.622809,49),(5530,0.622809,49),(5532,0.622809,49),(5534,0.622809,49),(5547,0.622809,49),(5548,0.622809,49),(5549,0.622809,49),(5550,0.622809,49),(5551,0.622809,49),(5553,0.622809,49),(5566,0.622809,49),(5567,0.622809,49),(5568,0.622809,49),(5571,0.622809,49),(5573,0.622809,49),(5726,0.622809,49),(5728,0.622809,49),(5772,0.622809,49),(5784,0.622809,49),(5805,0.622809,49),(5806,0.622809,49),(5808,0.622809,49),(5810,0.622809,49),(5816,0.622809,49),(5820,0.622809,49),(5822,0.622809,49),(5824,0.622809,49),(5828,0.622809,49),(5830,0.622809,49),(5831,0.622809,49),(5907,0.622809,49),(5908,0.622809,49),(6074,0.622809,49),(6194,0.622809,49),(6433,0.622809,49),(6572,0.622809,49),(6573,0.622809,49),(6715,0.622809,49),(6719,0.622809,49),(6723,0.622809,49),(6727,0.622809,49),(6731,0.622809,49),(6738,0.622809,49),(6752,0.622809,49),(6769,0.622809,49),(6772,0.622809,49),(6776,0.622809,49),(6778,0.622809,49),(6791,0.622809,49),(6844,0.622809,49),(6853,0.622809,49),(6892,0.622809,49),(6917,0.622809,49),(6938,0.622809,49),(6944,0.622809,49),(6950,0.622809,49),(6955,0.622809,49),(6957,0.622809,49),(6959,0.622809,49),(6963,0.622809,49),(7008,0.622809,49),(7011,0.622809,49),(7027,0.622809,49),(7308,0.622809,49),(7310,0.622809,49),(7356,0.622809,49),(7368,0.622809,49),(7429,0.622809,49),(7535,0.622809,49),(7537,0.622809,49),(7591,0.622809,49),(7593,0.622809,49),(7594,0.622809,49),(7595,0.622809,49),(7606,0.622809,49),(7607,0.622809,49),(7609,0.622809,49),(7612,0.622809,49),(7614,0.622809,49),(7673,0.622809,49),(7810,0.622809,49),(7820,0.622809,49),(7826,0.622809,49),(7835,0.622809,49),(7842,0.622809,49),(7851,0.622809,49),(7910,0.622809,49),(7991,0.622809,49),(7992,0.622809,49),(8029,0.622809,49),(8186,0.622809,49),(8430,0.622809,49),(8474,0.622809,49),(8685,0.622809,49),(8706,0.622809,49),(8707,0.622809,49),(8717,0.622809,49),(8764,0.622809,49),(8772,0.622809,49),(8778,0.622809,49),(8790,0.622809,49),(9051,0.622809,49),(9052,0.622809,49),(9054,0.622809,49),(9069,0.622809,49),(9073,0.622809,49),(9169,0.622809,49),(9232,0.622809,49),(9252,0.622809,49),(9265,0.622809,49),(9266,0.622809,49),(9285,0.622809,49),(9333,0.622809,49),(9472,0.622809,49),(9477,0.622809,49),(9643,0.622809,49),(9757,0.622809,49),(9792,0.622809,49),(9815,0.622809,49),(9912,0.622809,49),(10131,0.622809,49),(10139,0.622809,49),(10151,0.622809,49),(10217,0.622809,49),(10229,0.622809,49),(10237,0.622809,49),(10242,0.622809,49),(10246,0.622809,49),(10247,0.622809,49),(10277,0.622809,49),(10279,0.622809,49),(10286,0.622809,49),(10287,0.622809,49),(10291,0.622809,49),(10292,0.622809,49),(10295,0.622809,49),(10296,0.622809,49),(10299,0.622809,49),(10300,0.622809,49),(10303,0.622809,49),(10304,0.622809,49),(10307,0.622809,49),(10308,0.622809,49),(10311,0.622809,49),(10312,0.622809,49),(10320,0.622809,49),(10321,0.622809,49),(10324,0.622809,49),(10325,0.622809,49),(10328,0.622809,49),(10329,0.622809,49),(10332,0.622809,49),(10333,0.622809,49),(10336,0.622809,49),(10338,0.622809,49),(10339,0.622809,49),(10340,0.622809,49),(10341,0.622809,49),(10342,0.622809,49),(10343,0.622809,49),(10344,0.622809,49),(10345,0.622809,49),(10348,0.622809,49),(10349,0.622809,49),(10350,0.622809,49),(10351,0.622809,49),(10354,0.622809,49),(10355,0.622809,49),(10356,0.622809,49),(10358,0.622809,49),(10359,0.622809,49),(10366,0.622809,49),(10367,0.622809,49),(10370,0.622809,49),(10371,0.622809,49),(10376,0.622809,49),(10377,0.622809,49),(10383,0.622809,49),(10384,0.622809,49),(10387,0.622809,49),(10388,0.622809,49),(10391,0.622809,49),(10392,0.622809,49),(10395,0.622809,49),(10398,0.622809,49),(10399,0.622809,49),(10403,0.622809,49),(10404,0.622809,49),(10408,0.622809,49),(10409,0.622809,49),(10413,0.622809,49),(10414,0.622809,49),(10417,0.622809,49),(10418,0.622809,49),(10421,0.622809,49),(10422,0.622809,49),(10425,0.622809,49),(10427,0.622809,49),(10428,0.622809,49),(10453,0.622809,49),(10457,0.622809,49),(10458,0.622809,49),(10460,0.622809,49),(10463,0.622809,49),(10464,0.622809,49),(10468,0.622809,49),(10469,0.622809,49),(10476,0.622809,49),(10478,0.622809,49),(10479,0.622809,49),(10482,0.622809,49),(10483,0.622809,49),(10484,0.622809,49),(10488,0.622809,49),(10489,0.622809,49),(10492,0.622809,49),(10493,0.622809,49),(10496,0.622809,49),(10497,0.622809,49),(10500,0.622809,49),(10501,0.622809,49),(10504,0.622809,49),(10505,0.622809,49),(10508,0.622809,49),(10509,0.622809,49),(10512,0.622809,49),(10513,0.622809,49),(10516,0.622809,49),(10517,0.622809,49),(10529,0.622809,49),(10530,0.622809,49),(10535,0.622809,49),(10536,0.622809,49),(10539,0.622809,49),(10540,0.622809,49),(10544,0.622809,49),(10545,0.622809,49),(10546,0.622809,49),(10547,0.622809,49),(10551,0.622809,49),(10554,0.622809,49),(10560,0.622809,49),(10561,0.622809,49),(10587,0.622809,49),(10625,0.622809,49),(10631,0.622809,49),(10632,0.622809,49),(10637,0.622809,49),(10638,0.622809,49),(10641,0.622809,49),(10668,0.622809,49),(10669,0.622809,49),(10674,0.622809,49),(10724,0.622809,49),(10820,0.622809,49),(10821,0.622809,49),(10896,0.622809,49),(10901,0.622809,49),(10907,0.622809,49),(10908,0.622809,49),(10930,0.622809,49),(10931,0.622809,49),(10939,0.622809,49),(10940,0.622809,49),(10949,0.622809,49),(10953,0.622809,49),(10954,0.622809,49),(11013,0.622809,49),(11014,0.622809,49),(11017,0.622809,49),(11018,0.622809,49),(11021,0.622809,49),(11022,0.622809,49),(11025,0.622809,49),(11028,0.622809,49),(11033,0.622809,49),(11035,0.622809,49),(11036,0.622809,49),(11037,0.622809,49),(11038,0.622809,49),(11070,0.622809,49),(11072,0.622809,49),(11117,0.622809,49),(11119,0.622809,49),(11123,0.622809,49),(11126,0.622809,49),(11129,0.622809,49),(11132,0.622809,49),(11135,0.622809,49),(11146,0.622809,49),(11149,0.622809,49),(11152,0.622809,49),(11155,0.622809,49),(11272,0.622809,49),(11275,0.622809,49),(11279,0.622809,49),(11287,0.622809,49),(11297,0.622809,49),(11302,0.622809,49),(11306,0.622809,49),(11310,0.622809,49),(11321,0.622809,49),(11349,0.622809,49),(11350,0.622809,49),(11351,0.622809,49),(11360,0.622809,49),(11361,0.622809,49),(11372,0.622809,49),(11390,0.622809,49),(11391,0.622809,49),(11406,0.622809,49),(11428,0.622809,49),(11459,0.622809,49),(11474,0.622809,49),(11475,0.622809,49),(11476,0.622809,49),(11509,0.622809,49),(11591,0.622809,49),(11656,0.622809,49),(11743,0.622809,49),(11793,0.622809,49),(11794,0.622809,49),(11804,0.622809,49),(11811,0.622809,49),(11816,0.622809,49),(11824,0.622809,49),(11825,0.622809,49),(11836,0.622809,49),(11893,0.622809,49),(11913,0.622809,49),(11930,0.622809,49),(11949,0.622809,49),(12075,0.622809,49),(12272,0.622809,49),(12431,0.622809,49),(12609,0.622809,49),(12610,0.622809,49),(12822,0.622809,49),(12910,0.622809,49),(12918,0.622809,49),(12919,0.622809,49),(12920,0.622809,49),(12930,0.622809,49),(12954,0.622809,49),(12957,0.622809,49),(13049,0.622809,49),(13090,0.622809,49),(13091,0.622809,49),(13099,0.622809,49),(13171,0.622809,49),(13336,0.622809,49),(13390,0.622809,49),(13440,0.622809,49),(13449,0.622809,49),(13450,0.622809,49),(13453,0.622809,49),(13454,0.622809,49),(13457,0.622809,49),(13459,0.622809,49),(13460,0.622809,49),(13470,0.622809,49),(13647,0.622809,49),(13652,0.622809,49),(13656,0.622809,49),(13660,0.622809,49),(13662,0.622809,49),(13889,0.622809,49),(13891,0.622809,49),(13893,0.622809,49),(13895,0.622809,49),(13950,0.622809,49),(13952,0.622809,49),(13954,0.622809,49),(14236,0.622809,49),(14326,0.622809,49),(14395,0.622809,49),(14431,0.622809,49),(14472,0.622809,49),(14492,0.622809,49),(14493,0.622809,49),(14526,0.622809,49),(14531,0.622809,49),(14533,0.622809,49),(14534,0.622809,49),(14537,0.622809,49),(14538,0.622809,49),(14565,0.622809,49),(14586,0.622809,49),(14694,0.622809,49),(14733,0.622809,49),(14753,0.622809,49),(14872,0.622809,49),(14883,0.622809,49),(14890,0.622809,49),(14953,0.622809,49),(15093,0.622809,49),(15114,0.622809,49),(15115,0.622809,49),(15142,0.622809,49),(15146,0.622809,49),(15149,0.622809,49),(15172,0.622809,49),(15174,0.622809,49),(15183,0.622809,49),(15185,0.622809,49),(15192,0.622809,49),(15194,0.622809,49),(15224,0.622809,49),(15251,0.622809,49),(15252,0.622809,49),(15277,0.622809,49),(15280,0.622809,49),(15281,0.622809,49),(15326,0.622809,49),(15331,0.622809,49),(15350,0.622809,49),(15408,0.622809,49),(15411,0.622809,49),(15415,0.622809,49),(15442,0.622809,49),(15451,0.622809,49),(15481,0.622809,49),(15540,0.622809,49),(15552,0.622809,49),(15559,0.622809,49),(15569,0.622809,49),(15688,0.622809,49),(15713,0.622809,49),(15718,0.622809,49),(15728,0.622809,49),(15732,0.622809,49),(15733,0.622809,49),(15744,0.622809,49),(15766,0.622809,49),(15767,0.622809,49),(15779,0.622809,49),(15813,0.622809,49),(15818,0.622809,49),(15831,0.622809,49),(15833,0.622809,49),(15843,0.622809,49),(15858,0.622809,49),(15860,0.622809,49),(15867,0.622809,49),(15953,0.622809,49),(15968,0.622809,49),(15982,0.622809,49),(16004,0.622809,49),(16005,0.622809,49),(16006,0.622809,49),(16012,0.622809,49),(16013,0.622809,49),(16015,0.622809,49),(16024,0.622809,49),(16025,0.622809,49),(16026,0.622809,49),(16027,0.622809,49),(16028,0.622809,49),(16042,0.622809,49),(16048,0.622809,49),(16060,0.622809,49),(16066,0.622809,49),(16076,0.622809,49),(16077,0.622809,49),(16081,0.622809,49),(16093,0.622809,49),(16102,0.622809,49),(16105,0.622809,49),(16129,0.622809,49),(16130,0.622809,49),(16131,0.622809,49),(16132,0.622809,49),(16147,0.622809,49),(16151,0.622809,49),(16157,0.622809,49),(16160,0.622809,49),(16163,0.622809,49),(16165,0.622809,49),(16166,0.622809,49),(16179,0.622809,49),(16180,0.622809,49),(16204,0.622809,49),(16212,0.622809,49),(16229,0.622809,49),(16233,0.622809,49),(16234,0.622809,49),(16252,0.622809,49),(16276,0.622809,49),(16278,0.622809,49),(16280,0.622809,49),(16282,0.622809,49),(16293,0.622809,49),(16335,0.622809,49),(16336,0.622809,49),(16362,0.622809,49),(16363,0.622809,49),(16364,0.622809,49),(16368,0.622809,49),(16369,0.622809,49),(16370,0.622809,49),(16373,0.622809,49),(16374,0.622809,49),(16377,0.622809,49),(16386,0.622809,49),(16387,0.622809,49),(16391,0.622809,49),(16397,0.622809,49),(16398,0.622809,49),(16405,0.622809,49),(16409,0.622809,49),(16417,0.622809,49),(16418,0.622809,49),(16419,0.622809,49),(16421,0.622809,49),(16422,0.622809,49),(16423,0.622809,49),(16427,0.622809,49),(16433,0.622809,49),(16437,0.622809,49),(16449,0.622809,49),(16451,0.622809,49),(16453,0.622809,49),(16454,0.622809,49),(16455,0.622809,49),(16458,0.622809,49),(16459,0.622809,49),(16464,0.622809,49),(16465,0.622809,49),(16485,0.622809,49),(16486,0.622809,49),(16494,0.622809,49),(16495,0.622809,49),(16498,0.622809,49),(16502,0.622809,49),(16503,0.622809,49),(16506,0.622809,49),(16508,0.622809,49),(16509,0.622809,49),(16510,0.622809,49),(16512,0.622809,49),(16513,0.622809,49),(16514,0.622809,49),(16515,0.622809,49),(16519,0.622809,49),(16522,0.622809,49),(16524,0.622809,49),(16525,0.622809,49),(16527,0.622809,49),(16528,0.622809,49),(16529,0.622809,49),(16530,0.622809,49),(16532,0.622809,49),(16535,0.622809,49),(16536,0.622809,49),(16539,0.622809,49),(16555,0.622809,49),(16556,0.622809,49),(16559,0.622809,49),(16560,0.622809,49),(16563,0.622809,49),(16567,0.622809,49),(16568,0.622809,49),(16582,0.622809,49),(16590,0.622809,49),(16594,0.622809,49),(16595,0.622809,49),(16598,0.622809,49),(16599,0.622809,49),(16603,0.622809,49),(16605,0.622809,49),(16607,0.622809,49),(16608,0.622809,49),(16609,0.622809,49),(16611,0.622809,49),(16612,0.622809,49),(16614,0.622809,49),(16615,0.622809,49),(16616,0.622809,49),(16617,0.622809,49),(16618,0.622809,49),(16620,0.622809,49),(16621,0.622809,49),(16623,0.622809,49),(16637,0.622809,49),(16638,0.622809,49),(16908,0.622809,49),(16920,0.622809,49),(16929,0.622809,49),(16931,0.622809,49),(16935,0.622809,49),(16947,0.622809,49),(16964,0.622809,49),(17008,0.622809,49),(17038,0.622809,49),(17041,0.622809,49),(17042,0.622809,49),(17067,0.622809,49),(17087,0.622809,49),(17123,0.622809,49),(17144,0.622809,49),(17146,0.622809,49),(17187,0.622809,49),(17250,0.622809,49),(17263,0.622809,49),(17314,0.622809,49),(17316,0.622809,49),(17317,0.622809,49),(17318,0.622809,49),(17322,0.622809,49),(17386,0.622809,49),(17387,0.622809,49),(17422,0.622809,49),(17519,0.622809,49),(17537,0.622809,49),(17572,0.622809,49),(17575,0.622809,49),(17597,0.622809,49),(17639,0.622809,49),(17644,0.622809,49),(17645,0.622809,49),(17736,0.622809,49),(17737,0.622809,49),(17854,0.622809,49),(17949,0.622809,49),(17950,0.622809,49),(17961,0.622809,49),(17962,0.622809,49),(17982,0.622809,49),(17983,0.622809,49),(18001,0.622809,49),(18002,0.622809,49),(18006,0.622809,49),(18007,0.622809,49),(18010,0.622809,49),(18011,0.622809,49),(18026,0.622809,49),(18039,0.622809,49),(18053,0.622809,49),(18054,0.622809,49),(18055,0.622809,49),(18064,0.622809,49),(18099,0.622809,49),(18111,0.622809,49),(18120,0.622809,49),(18160,0.622809,49),(18179,0.622809,49),(18190,0.622809,49),(18232,0.622809,49),(18235,0.622809,49),(18241,0.622809,49),(18249,0.622809,49),(18250,0.622809,49),(18263,0.622809,49),(18264,0.622809,49),(18267,0.622809,49),(18268,0.622809,49),(18320,0.622809,49),(18338,0.622809,49),(18339,0.622809,49),(18437,0.622809,49),(18439,0.622809,49),(18446,0.622809,49),(18450,0.622809,49),(18453,0.622809,49),(18492,0.622809,49),(18493,0.622809,49),(18546,0.622809,49),(18547,0.622809,49),(18616,0.622809,49),(18617,0.622809,49),(18623,0.622809,49),(18627,0.622809,49),(18639,0.622809,49),(18640,0.622809,49),(18648,0.622809,49),(18667,0.622809,49),(18668,0.622809,49),(18681,0.622809,49),(18689,0.622809,49),(18702,0.622809,49),(18703,0.622809,49),(18704,0.622809,49),(18715,0.622809,49),(18717,0.622809,49),(18731,0.622809,49),(18755,0.622809,49),(18801,0.622809,49),(18835,0.622809,49),(18860,0.622809,49),(18889,0.622809,49),(18890,0.622809,49),(18891,0.622809,49),(18892,0.622809,49),(18893,0.622809,49),(18899,0.622809,49),(18900,0.622809,49),(18927,0.622809,49),(18928,0.622809,49),(18971,0.622809,49),(19001,0.622809,49),(19078,0.622809,49),(19087,0.622809,49),(19089,0.622809,49),(19109,0.622809,49),(19127,0.622809,49),(19128,0.622809,49),(19129,0.622809,49),(19149,0.622809,49),(19156,0.622809,49),(19178,0.622809,49),(19222,0.622809,49),(19228,0.622809,49),(19248,0.622809,49),(19284,0.622809,49),(19308,0.622809,49),(19309,0.622809,49),(19312,0.622809,49),(19313,0.622809,49),(19328,0.622809,49),(19354,0.622809,49),(19382,0.622809,49),(19432,0.622809,49),(19433,0.622809,49),(19434,0.622809,49),(19522,0.622809,49),(19538,0.622809,49),(19541,0.622809,49),(19542,0.622809,49),(19543,0.622809,49),(19544,0.622809,49),(19546,0.622809,49),(19547,0.622809,49),(19548,0.622809,49),(19549,0.622809,49),(19550,0.622809,49),(19551,0.622809,49),(19552,0.622809,49),(19553,0.622809,49),(19556,0.622809,49),(19557,0.622809,49),(19558,0.622809,49),(19559,0.622809,49),(19560,0.622809,49),(19561,0.622809,49),(19562,0.622809,49),(19563,0.622809,49),(19565,0.622809,49),(19566,0.622809,49),(19568,0.622809,49),(19575,0.622809,49),(19601,0.622809,49),(19602,0.622809,49),(19612,0.622809,49),(19617,0.622809,49),(19641,0.622809,49),(19642,0.622809,49),(19723,0.622809,49),(19918,0.622809,49),(19983,0.622809,49),(20050,0.622809,49),(20251,0.622809,49),(20268,0.622809,49),(20296,0.622809,49),(20377,0.622809,49),(20480,0.622809,49),(20484,0.622809,49),(20663,0.622809,49),(20666,0.622809,49),(20741,0.622809,49),(20742,0.622809,49),(20783,0.622809,49),(20784,0.622809,49),(20785,0.622809,49),(20789,0.622809,49),(20807,0.622809,49),(20868,0.622809,49),(20876,0.622809,49),(20927,0.622809,49),(20938,0.622809,49),(21045,0.622809,49),(21053,0.622809,49),(21169,0.622809,49),(21196,0.622809,49),(21197,0.622809,49),(21199,0.622809,49),(21227,0.622809,49),(21256,0.622809,49),(21287,0.622809,49),(21389,0.622809,49),(21413,0.622809,49),(21478,0.622809,49),(21528,0.622809,49),(21584,0.622809,49),(21618,0.622809,49),(21622,0.622809,49),(21624,0.622809,49),(21637,0.622809,49),(21638,0.622809,49),(21639,0.622809,49),(21640,0.622809,49),(21643,0.622809,49),(21644,0.622809,49),(21648,0.622809,49),(21651,0.622809,49),(21652,0.622809,49),(21687,0.622809,49),(21689,0.622809,49),(21697,0.622809,49),(21702,0.622809,49),(21705,0.622809,49),(21706,0.622809,49),(21739,0.622809,49),(21805,0.622809,49),(21820,0.622809,49),(21859,0.622809,49),(21861,0.622809,49),(21891,0.622809,49),(22340,0.622809,49),(22347,0.622809,49),(22354,0.622809,49),(22371,0.622809,49),(22391,0.622809,49),(22406,0.622809,49),(22568,0.622809,49),(22617,0.622809,49),(22659,0.622809,49),(22661,0.622809,49),(22662,0.622809,49),(22663,0.622809,49),(22664,0.622809,49),(22667,0.622809,49),(22688,0.622809,49),(22716,0.622809,49),(22797,0.622809,49),(22803,0.622809,49),(22818,0.622809,49),(22819,0.622809,49),(22820,0.622809,49),(22893,0.622809,49),(22948,0.622809,49),(22949,0.622809,49),(23449,0.622809,49),(23548,0.622809,49),(23668,0.622809,49),(23726,0.622809,49),(23791,0.622809,49),(23792,0.622809,49),(22255,3.38522,2631),(22256,3.38522,2631),(22257,3.38522,2631),(20595,1.41083,2528),(20617,1.41083,2528),(20745,1.41083,2528),(20746,1.41083,2528),(23344,15.3146,2706),(23707,15.3146,2706),(18081,2.03292,2289),(18082,2.03292,2289),(18083,2.03292,2289),(18885,2.03292,2289),(18886,2.03292,2289),(18887,2.03292,2289),(19021,2.03292,2289),(19110,2.03292,2289),(19454,2.03292,2289),(19540,2.03292,2289),(19634,2.03292,2289),(19874,2.03292,2289),(20390,2.03292,2289),(21138,2.03292,2289),(21487,2.03292,2289),(21582,2.03292,2289),(16631,1.12521,2270),(16885,1.12521,2270),(16886,1.12521,2270),(16887,1.12521,2270),(17061,1.12521,2270),(17062,1.12521,2270),(17086,1.12521,2270),(17554,1.12521,2270),(18065,1.12521,2270),(18652,1.12521,2270),(18746,1.12521,2270),(19838,1.12521,2270),(19839,1.12521,2270),(19844,1.12521,2270),(19845,1.12521,2270),(19847,1.12521,2270),(19848,1.12521,2270),(19849,1.12521,2270),(20062,1.12521,2270),(20063,1.12521,2270),(20066,1.12521,2270),(20067,1.12521,2270),(20068,1.12521,2270),(20147,1.12521,2270),(20155,1.12521,2270),(20156,1.12521,2270),(20160,1.12521,2270),(20283,1.12521,2270),(20284,1.12521,2270),(20285,1.12521,2270),(20965,1.12521,2270),(20966,1.12521,2270),(22597,1.12521,2270),(22751,1.12521,2270),(23519,1.12521,2270),(924,0.767284,145),(1218,0.767284,145),(1252,0.767284,145),(1253,0.767284,145),(1254,0.767284,145),(1274,0.767284,145),(1341,0.767284,145),(1342,0.767284,145),(1343,0.767284,145),(1344,0.767284,145),(1345,0.767284,145),(1346,0.767284,145),(1420,0.767284,145),(1963,0.767284,145),(1964,0.767284,145),(1967,0.767284,145),(2449,0.767284,145),(4452,0.767284,145),(4453,0.767284,145),(4645,0.767284,145),(4646,0.767284,145),(4745,0.767284,145),(4749,0.767284,145),(4750,0.767284,145),(4751,0.767284,145),(4752,0.767284,145),(4753,0.767284,145),(4755,0.767284,145),(4756,0.767284,145),(6078,0.767284,145),(6094,0.767284,145),(6097,0.767284,145),(6105,0.767284,145),(6106,0.767284,145),(6114,0.767284,145),(6115,0.767284,145),(6116,0.767284,145),(6117,0.767284,145),(6118,0.767284,145),(6124,0.767284,145),(11382,0.767284,145),(11385,0.767284,145),(23404,2.39942,2703),(21322,4.59757,2570),(68,1.37574,68),(433,1.37574,68),(1912,1.37574,68),(2727,1.37574,68),(4426,1.37574,68),(4427,1.37574,68),(6532,1.37574,68),(16269,1.37574,68),(16982,1.37574,68),(18141,1.37574,68),(18311,1.37574,68),(19591,1.37574,68),(19945,1.37574,68),(20865,1.37574,68),(20915,1.37574,68),(20930,1.37574,68),(57,0.48727,57),(1027,0.48727,57),(1278,0.48727,57),(1562,0.48727,57),(1565,0.48727,57),(1574,0.48727,57),(1575,0.48727,57),(1576,0.48727,57),(1577,0.48727,57),(1578,0.48727,57),(1579,0.48727,57),(1580,0.48727,57),(1581,0.48727,57),(1582,0.48727,57),(1583,0.48727,57),(1584,0.48727,57),(1585,0.48727,57),(1586,0.48727,57),(1587,0.48727,57),(1588,0.48727,57),(1589,0.48727,57),(1590,0.48727,57),(1591,0.48727,57),(1599,0.48727,57),(1600,0.48727,57),(1602,0.48727,57),(1604,0.48727,57),(1605,0.48727,57),(1606,0.48727,57),(1631,0.48727,57),(1635,0.48727,57),(1638,0.48727,57),(1644,0.48727,57),(1646,0.48727,57),(1647,0.48727,57),(1648,0.48727,57),(1649,0.48727,57),(1660,0.48727,57),(1661,0.48727,57),(1666,0.48727,57),(1669,0.48727,57),(1680,0.48727,57),(1829,0.48727,57),(1831,0.48727,57),(1838,0.48727,57),(1948,0.48727,57),(1965,0.48727,57),(2006,0.48727,57),(2046,0.48727,57),(2134,0.48727,57),(2135,0.48727,57),(2136,0.48727,57),(2137,0.48727,57),(2138,0.48727,57),(2139,0.48727,57),(2586,0.48727,57),(2605,0.48727,57),(2610,0.48727,57),(2611,0.48727,57),(2612,0.48727,57),(2613,0.48727,57),(2614,0.48727,57),(2615,0.48727,57),(2616,0.48727,57),(2617,0.48727,57),(2618,0.48727,57),(2619,0.48727,57),(2620,0.48727,57),(2621,0.48727,57),(2622,0.48727,57),(2623,0.48727,57),(2624,0.48727,57),(2625,0.48727,57),(2626,0.48727,57),(2627,0.48727,57),(2628,0.48727,57),(2629,0.48727,57),(2630,0.48727,57),(2631,0.48727,57),(2632,0.48727,57),(2633,0.48727,57),(2634,0.48727,57),(2635,0.48727,57),(2636,0.48727,57),(2637,0.48727,57),(2638,0.48727,57),(2639,0.48727,57),(2640,0.48727,57),(2641,0.48727,57),(2642,0.48727,57),(2643,0.48727,57),(2644,0.48727,57),(2645,0.48727,57),(2646,0.48727,57),(2647,0.48727,57),(2648,0.48727,57),(2649,0.48727,57),(2650,0.48727,57),(2651,0.48727,57),(2652,0.48727,57),(2653,0.48727,57),(2654,0.48727,57),(2655,0.48727,57),(2684,0.48727,57),(2685,0.48727,57),(2689,0.48727,57),(2789,0.48727,57),(2810,0.48727,57),(2852,0.48727,57),(2853,0.48727,57),(2854,0.48727,57),(2855,0.48727,57),(2856,0.48727,57),(2857,0.48727,57),(2859,0.48727,57),(2860,0.48727,57),(2862,0.48727,57),(2873,0.48727,57),(2877,0.48727,57),(2998,0.48727,57),(3494,0.48727,57),(3505,0.48727,57),(3512,0.48727,57),(3514,0.48727,57),(3516,0.48727,57),(3518,0.48727,57),(3521,0.48727,57),(3522,0.48727,57),(3523,0.48727,57),(3530,0.48727,57),(3533,0.48727,57),(3536,0.48727,57),(3537,0.48727,57),(3541,0.48727,57),(3542,0.48727,57),(3545,0.48727,57),(3548,0.48727,57),(3652,0.48727,57),(3653,0.48727,57),(3655,0.48727,57),(3656,0.48727,57),(3661,0.48727,57),(3662,0.48727,57),(3671,0.48727,57),(3672,0.48727,57),(3674,0.48727,57),(3675,0.48727,57),(3676,0.48727,57),(3678,0.48727,57),(3679,0.48727,57),(3680,0.48727,57),(3681,0.48727,57),(3682,0.48727,57),(3832,0.48727,57),(3842,0.48727,57),(3853,0.48727,57),(3854,0.48727,57),(3859,0.48727,57),(3862,0.48727,57),(3863,0.48727,57),(3864,0.48727,57),(3876,0.48727,57),(3879,0.48727,57),(3880,0.48727,57),(3882,0.48727,57),(3899,0.48727,57),(3948,0.48727,57),(4005,0.48727,57),(4006,0.48727,57),(4007,0.48727,57),(4008,0.48727,57),(4011,0.48727,57),(4020,0.48727,57),(4037,0.48727,57),(4039,0.48727,57),(4040,0.48727,57),(4050,0.48727,57),(4055,0.48727,57),(4061,0.48727,57),(4062,0.48727,57),(4063,0.48727,57),(4064,0.48727,57),(4107,0.48727,57),(4110,0.48727,57),(4111,0.48727,57),(4120,0.48727,57),(4121,0.48727,57),(4127,0.48727,57),(4130,0.48727,57),(4132,0.48727,57),(4134,0.48727,57),(4136,0.48727,57),(4150,0.48727,57),(4152,0.48727,57),(4154,0.48727,57),(4155,0.48727,57),(4156,0.48727,57),(4157,0.48727,57),(4171,0.48727,57),(4178,0.48727,57),(4341,0.48727,57),(4342,0.48727,57),(4381,0.48727,57),(4649,0.48727,57),(4987,0.48727,57),(4993,0.48727,57),(5206,0.48727,57),(5230,0.48727,57),(5237,0.48727,57),(5345,0.48727,57),(5346,0.48727,57),(5447,0.48727,57),(5449,0.48727,57),(5508,0.48727,57),(5509,0.48727,57),(5576,0.48727,57),(5711,0.48727,57),(5751,0.48727,57),(5812,0.48727,57),(5813,0.48727,57),(5832,0.48727,57),(5845,0.48727,57),(6065,0.48727,57),(6228,0.48727,57),(6232,0.48727,57),(6233,0.48727,57),(6531,0.48727,57),(6770,0.48727,57),(6784,0.48727,57),(6789,0.48727,57),(6837,0.48727,57),(6849,0.48727,57),(6857,0.48727,57),(6871,0.48727,57),(6876,0.48727,57),(6878,0.48727,57),(7043,0.48727,57),(7117,0.48727,57),(7597,0.48727,57),(7632,0.48727,57),(7633,0.48727,57),(7689,0.48727,57),(8054,0.48727,57),(8791,0.48727,57),(9274,0.48727,57),(9279,0.48727,57),(9335,0.48727,57),(9353,0.48727,57),(9807,0.48727,57),(9809,0.48727,57),(9943,0.48727,57),(9999,0.48727,57),(10130,0.48727,57),(10143,0.48727,57),(10150,0.48727,57),(10187,0.48727,57),(10192,0.48727,57),(10194,0.48727,57),(10197,0.48727,57),(10248,0.48727,57),(10362,0.48727,57),(10363,0.48727,57),(10448,0.48727,57),(10449,0.48727,57),(10456,0.48727,57),(10470,0.48727,57),(10474,0.48727,57),(10475,0.48727,57),(10552,0.48727,57),(10572,0.48727,57),(10576,0.48727,57),(10580,0.48727,57),(10590,0.48727,57),(10619,0.48727,57),(10797,0.48727,57),(10813,0.48727,57),(10834,0.48727,57),(10935,0.48727,57),(10937,0.48727,57),(11060,0.48727,57),(11063,0.48727,57),(11277,0.48727,57),(11283,0.48727,57),(11284,0.48727,57),(11299,0.48727,57),(11303,0.48727,57),(11305,0.48727,57),(11309,0.48727,57),(11325,0.48727,57),(11464,0.48727,57),(11466,0.48727,57),(11467,0.48727,57),(11674,0.48727,57),(11693,0.48727,57),(11756,0.48727,57),(11805,0.48727,57),(11814,0.48727,57),(11826,0.48727,57),(11892,0.48727,57),(12290,0.48727,57),(12329,0.48727,57),(12331,0.48727,57),(12470,0.48727,57),(12475,0.48727,57),(12672,0.48727,57),(12909,0.48727,57),(12928,0.48727,57),(13432,0.48727,57),(13438,0.48727,57),(13465,0.48727,57),(13466,0.48727,57),(13540,0.48727,57),(13548,0.48727,57),(13556,0.48727,57),(13560,0.48727,57),(13771,0.48727,57),(13775,0.48727,57),(13779,0.48727,57),(13807,0.48727,57),(13811,0.48727,57),(13815,0.48727,57),(13827,0.48727,57),(13839,0.48727,57),(13854,0.48727,57),(14369,0.48727,57),(14452,0.48727,57),(14453,0.48727,57),(14756,0.48727,57),(14875,0.48727,57),(14913,0.48727,57),(15113,0.48727,57),(15141,0.48727,57),(15152,0.48727,57),(15153,0.48727,57),(15176,0.48727,57),(15178,0.48727,57),(15187,0.48727,57),(15189,0.48727,57),(15196,0.48727,57),(15198,0.48727,57),(15206,0.48727,57),(15207,0.48727,57),(15239,0.48727,57),(15240,0.48727,57),(15276,0.48727,57),(15284,0.48727,57),(15285,0.48727,57),(15409,0.48727,57),(15461,0.48727,57),(15536,0.48727,57),(15665,0.48727,57),(15722,0.48727,57),(15755,0.48727,57),(15780,0.48727,57),(15782,0.48727,57),(15784,0.48727,57),(15895,0.48727,57),(15896,0.48727,57),(15951,0.48727,57),(15971,0.48727,57),(16003,0.48727,57),(16007,0.48727,57),(16008,0.48727,57),(16071,0.48727,57),(16072,0.48727,57),(16091,0.48727,57),(16099,0.48727,57),(16100,0.48727,57),(16127,0.48727,57),(16195,0.48727,57),(16235,0.48727,57),(16236,0.48727,57),(16237,0.48727,57),(16242,0.48727,57),(16305,0.48727,57),(16320,0.48727,57),(16355,0.48727,57),(16444,0.48727,57),(16534,0.48727,57),(16540,0.48727,57),(16794,0.48727,57),(16906,0.48727,57),(16927,0.48727,57),(17404,0.48727,57),(17405,0.48727,57),(17662,0.48727,57),(17976,0.48727,57),(18109,0.48727,57),(18128,0.48727,57),(18454,0.48727,57),(18811,0.48727,57),(18876,0.48727,57),(19188,0.48727,57),(19246,0.48727,57),(19533,0.48727,57),(19791,0.48727,57),(20204,0.48727,57),(20852,0.48727,57),(21879,0.48727,57),(21881,0.48727,57),(21959,0.48727,57),(22381,0.48727,57),(22401,0.48727,57),(22573,0.48727,57),(22698,0.48727,57),(22894,0.48727,57),(22960,0.48727,57),(23133,0.48727,57),(23442,0.48727,57),(23468,0.48727,57),(23665,0.48727,57),(5965,2.14577,456),(15347,2.14577,456),(15351,2.14577,456),(15359,2.14577,456),(15499,2.14577,456),(15696,2.14577,456),(15700,2.14577,456),(15704,2.14577,456),(15706,2.14577,456),(15710,2.14577,456),(342,1.1636,132),(641,1.1636,132),(699,1.1636,132),(979,1.1636,132),(981,1.1636,132),(996,1.1636,132),(997,1.1636,132),(998,1.1636,132),(999,1.1636,132),(1000,1.1636,132),(1001,1.1636,132),(1307,1.1636,132),(1938,1.1636,132),(1939,1.1636,132),(2239,1.1636,132),(5557,1.1636,132),(5558,1.1636,132),(5559,1.1636,132),(5560,1.1636,132),(9565,1.1636,132),(9566,1.1636,132),(9570,1.1636,132),(9571,1.1636,132),(9573,1.1636,132),(15921,1.1636,132),(17625,1.1636,132),(18116,1.1636,132),(18117,1.1636,132),(19670,1.1636,132),(21244,3.4691,2560),(16711,3.9666,2282),(17237,3.9666,2282),(17238,3.9666,2282),(17239,3.9666,2282),(17240,3.9666,2282),(17528,3.9666,2282),(17596,3.9666,2282),(17653,3.9666,2282),(18314,3.9666,2282),(19678,3.9666,2282),(19776,3.9666,2282),(16874,2.27888,2283),(18036,2.27888,2283),(18139,2.27888,2283),(18140,2.27888,2283),(20282,2.27888,2283),(20810,2.27888,2283),(20858,2.27888,2283),(22810,2.27888,2283),(15590,3.38522,453),(16243,3.38522,453),(16415,3.38522,453),(16723,3.38522,453),(16731,3.38522,453),(20001,3.38522,453),(20013,3.38522,453),(20213,3.38522,453),(20223,3.38522,453),(20997,3.38522,453),(21832,3.38522,453),(21906,3.38522,453),(22167,3.38522,453),(58,0.399961,58),(1029,0.399961,58),(1415,0.399961,58),(1592,0.399961,58),(1593,0.399961,58),(1594,0.399961,58),(1601,0.399961,58),(1603,0.399961,58),(1607,0.399961,58),(1632,0.399961,58),(1633,0.399961,58),(1634,0.399961,58),(1636,0.399961,58),(1637,0.399961,58),(1639,0.399961,58),(1645,0.399961,58),(1679,0.399961,58),(1814,0.399961,58),(1828,0.399961,58),(2037,0.399961,58),(2050,0.399961,58),(2587,0.399961,58),(2656,0.399961,58),(2657,0.399961,58),(2658,0.399961,58),(2659,0.399961,58),(2660,0.399961,58),(2661,0.399961,58),(2662,0.399961,58),(2663,0.399961,58),(2664,0.399961,58),(2665,0.399961,58),(2666,0.399961,58),(2667,0.399961,58),(2668,0.399961,58),(2669,0.399961,58),(2670,0.399961,58),(2671,0.399961,58),(2672,0.399961,58),(2673,0.399961,58),(2674,0.399961,58),(2811,0.399961,58),(2858,0.399961,58),(2861,0.399961,58),(2863,0.399961,58),(2874,0.399961,58),(2876,0.399961,58),(3130,0.399961,58),(3371,0.399961,58),(3515,0.399961,58),(3517,0.399961,58),(3520,0.399961,58),(3528,0.399961,58),(3529,0.399961,58),(3540,0.399961,58),(3543,0.399961,58),(3544,0.399961,58),(3547,0.399961,58),(3549,0.399961,58),(3579,0.399961,58),(3580,0.399961,58),(3650,0.399961,58),(3651,0.399961,58),(3654,0.399961,58),(3657,0.399961,58),(3659,0.399961,58),(3663,0.399961,58),(3677,0.399961,58),(3860,0.399961,58),(3861,0.399961,58),(3883,0.399961,58),(3944,0.399961,58),(3945,0.399961,58),(4004,0.399961,58),(4009,0.399961,58),(4010,0.399961,58),(4012,0.399961,58),(4038,0.399961,58),(4041,0.399961,58),(4052,0.399961,58),(4053,0.399961,58),(4056,0.399961,58),(4057,0.399961,58),(4058,0.399961,58),(4059,0.399961,58),(4060,0.399961,58),(4069,0.399961,58),(4108,0.399961,58),(4109,0.399961,58),(4122,0.399961,58),(4123,0.399961,58),(4128,0.399961,58),(4129,0.399961,58),(4131,0.399961,58),(4133,0.399961,58),(4135,0.399961,58),(4149,0.399961,58),(4151,0.399961,58),(4153,0.399961,58),(4158,0.399961,58),(4175,0.399961,58),(4176,0.399961,58),(4177,0.399961,58),(4179,0.399961,58),(4378,0.399961,58),(4379,0.399961,58),(4528,0.399961,58),(4665,0.399961,58),(4943,0.399961,58),(5235,0.399961,58),(6058,0.399961,58),(6234,0.399961,58),(6771,0.399961,58),(6783,0.399961,58),(6790,0.399961,58),(7002,0.399961,58),(7118,0.399961,58),(7828,0.399961,58),(7994,0.399961,58),(7995,0.399961,58),(8190,0.399961,58),(8330,0.399961,58),(8332,0.399961,58),(8672,0.399961,58),(8768,0.399961,58),(8781,0.399961,58),(9251,0.399961,58),(9273,0.399961,58),(9334,0.399961,58),(9343,0.399961,58),(9808,0.399961,58),(9810,0.399961,58),(10144,0.399961,58),(10364,0.399961,58),(10365,0.399961,58),(10450,0.399961,58),(10451,0.399961,58),(10550,0.399961,58),(10563,0.399961,58),(10581,0.399961,58),(10725,0.399961,58),(10732,0.399961,58),(10936,0.399961,58),(10938,0.399961,58),(11059,0.399961,58),(11061,0.399961,58),(11062,0.399961,58),(11273,0.399961,58),(11282,0.399961,58),(11291,0.399961,58),(11296,0.399961,58),(11301,0.399961,58),(11307,0.399961,58),(11330,0.399961,58),(11463,0.399961,58),(11593,0.399961,58),(11823,0.399961,58),(11904,0.399961,58),(12330,0.399961,58),(12332,0.399961,58),(12469,0.399961,58),(12569,0.399961,58),(12674,0.399961,58),(12955,0.399961,58),(12973,0.399961,58),(13433,0.399961,58),(13474,0.399961,58),(13537,0.399961,58),(13550,0.399961,58),(13557,0.399961,58),(13561,0.399961,58),(13772,0.399961,58),(13776,0.399961,58),(13780,0.399961,58),(13812,0.399961,58),(13816,0.399961,58),(13829,0.399961,58),(13840,0.399961,58),(13855,0.399961,58),(13856,0.399961,58),(13909,0.399961,58),(14325,0.399961,58),(14370,0.399961,58),(14454,0.399961,58),(15112,0.399961,58),(15140,0.399961,58),(15154,0.399961,58),(15155,0.399961,58),(15177,0.399961,58),(15179,0.399961,58),(15188,0.399961,58),(15190,0.399961,58),(15197,0.399961,58),(15199,0.399961,58),(15208,0.399961,58),(15209,0.399961,58),(15232,0.399961,58),(15241,0.399961,58),(15242,0.399961,58),(15286,0.399961,58),(15287,0.399961,58),(15349,0.399961,58),(15391,0.399961,58),(15503,0.399961,58),(15539,0.399961,58),(15723,0.399961,58),(15725,0.399961,58),(15753,0.399961,58),(15781,0.399961,58),(15783,0.399961,58),(15897,0.399961,58),(15898,0.399961,58),(15952,0.399961,58),(15970,0.399961,58),(15980,0.399961,58),(16009,0.399961,58),(16018,0.399961,58),(16062,0.399961,58),(16073,0.399961,58),(16092,0.399961,58),(16113,0.399961,58),(16238,0.399961,58),(16239,0.399961,58),(16240,0.399961,58),(16443,0.399961,58),(16736,0.399961,58),(16744,0.399961,58),(16907,0.399961,58),(17567,0.399961,58),(17640,0.399961,58),(17652,0.399961,58),(18110,0.399961,58),(18129,0.399961,58),(18455,0.399961,58),(18730,0.399961,58),(18810,0.399961,58),(18875,0.399961,58),(19187,0.399961,58),(19242,0.399961,58),(19790,0.399961,58),(20206,0.399961,58),(20460,0.399961,58),(20875,0.399961,58),(20877,0.399961,58),(21681,0.399961,58),(21878,0.399961,58),(21880,0.399961,58),(22380,0.399961,58),(22407,0.399961,58),(22408,0.399961,58),(22476,0.399961,58),(22565,0.399961,58),(22697,0.399961,58),(23669,0.399961,58),(23738,0.399961,58),(23776,0.399961,58),(16189,1.8156,2259),(22470,4.44059,2639),(22471,4.44059,2639),(22472,4.44059,2639),(22473,4.44059,2639),(22474,4.44059,2639),(18013,1.25479,2401),(18031,1.25479,2401),(18047,1.25479,2401),(18058,1.25479,2401),(18070,1.25479,2401),(18358,1.25479,2401),(19923,1.25479,2401),(19928,1.25479,2401),(19931,1.25479,2401),(19935,1.25479,2401),(19941,1.25479,2401),(20195,1.25479,2401),(20762,1.25479,2401),(20976,1.25479,2401),(21195,1.25479,2401),(21327,1.25479,2401),(21358,1.25479,2401),(21366,1.25479,2401),(21374,1.25479,2401),(21404,1.25479,2401),(21405,1.25479,2401),(21406,1.25479,2401),(21407,1.25479,2401),(21409,1.25479,2401),(21410,1.25479,2401),(21411,1.25479,2401),(21428,1.25479,2401),(21432,1.25479,2401),(21433,1.25479,2401),(21491,1.25479,2401),(21507,1.25479,2401),(15438,0.803187,2207),(16241,0.803187,2207),(16251,0.803187,2207),(19527,0.803187,2207),(19528,0.803187,2207),(19529,0.803187,2207),(19530,0.803187,2207),(19672,0.803187,2207),(19673,0.803187,2207),(19674,0.803187,2207),(19701,0.803187,2207),(20894,0.803187,2207),(22589,0.803187,2207),(23428,1.53375,2692),(22980,0.522946,2678),(23162,0.522946,2678),(23476,0.522946,2678),(23523,0.371794,2709),(23732,0.371794,2709),(8149,2.48355,951),(8150,2.48355,951),(8151,2.48355,951),(8152,2.48355,951),(8172,2.48355,951),(8391,2.48355,951),(11633,2.48355,951),(11634,2.48355,951),(11635,2.48355,951),(11636,2.48355,951),(12347,2.48355,951),(12348,2.48355,951),(12389,2.48355,951),(12962,2.48355,951),(12963,2.48355,951),(13109,2.48355,951),(13110,2.48355,951),(13172,2.48355,951),(14112,2.48355,951),(14213,2.48355,951),(14214,2.48355,951),(14392,2.48355,951),(15296,2.48355,951),(16346,2.48355,951),(16352,2.48355,951),(16353,2.48355,951),(16463,2.48355,951),(16576,2.48355,951),(16870,2.48355,951),(16871,2.48355,951),(16915,2.48355,951),(17009,2.48355,951),(19009,2.48355,951),(19010,2.48355,951),(19011,2.48355,951),(19012,2.48355,951),(19020,2.48355,951),(19030,2.48355,951),(19031,2.48355,951),(19033,2.48355,951),(19034,2.48355,951),(20726,1.42557,2532),(20732,1.42557,2532),(20733,1.42557,2532),(20734,1.42557,2532),(20776,1.42557,2532),(20896,1.42557,2532),(20935,1.42557,2532),(6774,1.68673,771),(6889,1.68673,771),(7288,1.68673,771),(8369,1.68673,771),(8910,1.68673,771),(14379,1.68673,771),(15200,1.68673,771),(19013,1.68673,771),(21145,2.23993,2558),(1244,2.18219,173),(2307,2.18219,173),(2308,2.18219,173),(2902,2.18219,173),(4829,2.18219,173),(5026,2.18219,173),(5027,2.18219,173),(5030,2.18219,173),(5052,2.18219,173),(5126,2.18219,173),(5127,2.18219,173),(6126,2.18219,173),(6368,2.18219,173),(7046,2.18219,173),(7114,2.18219,173),(7836,2.18219,173),(7837,2.18219,173),(7839,2.18219,173),(7840,2.18219,173),(10947,2.18219,173),(14657,2.18219,173),(14658,2.18219,173),(14659,2.18219,173),(14660,2.18219,173),(14661,2.18219,173),(16145,2.18219,173),(17654,2.18219,173),(21240,2.18219,173),(21457,2.18219,173),(21723,1.07796,2601),(21724,1.07796,2601),(21725,1.07796,2601),(21726,1.07796,2601),(21727,1.07796,2601),(21728,1.07796,2601),(21729,1.07796,2601),(21769,1.07796,2601),(21770,1.07796,2601),(17207,2.53297,2274),(19255,2.53297,2274),(19486,2.53297,2274),(21179,2.53297,2274),(21191,2.53297,2274),(17063,2.5391,2313),(17142,2.5391,2313),(19869,2.5391,2313),(19870,2.5391,2313),(15672,1.71703,2219),(15673,1.71703,2219),(15674,1.71703,2219),(15675,1.71703,2219),(15676,1.71703,2219),(21666,1.00817,2600),(4036,1.04946,332),(4762,1.04946,332),(4763,1.04946,332),(4764,1.04946,332),(4765,1.04946,332),(4910,1.04946,332),(4921,1.04946,332),(4922,1.04946,332),(4923,1.04946,332),(5028,1.04946,332),(5775,1.04946,332),(6747,1.04946,332),(6748,1.04946,332),(6763,1.04946,332),(6764,1.04946,332),(6765,1.04946,332),(9134,1.04946,332),(9135,1.04946,332),(11253,1.04946,332),(11254,1.04946,332),(11255,1.04946,332),(11257,1.04946,332),(11258,1.04946,332),(11264,1.04946,332),(11265,1.04946,332),(11267,1.04946,332),(11269,1.04946,332),(11271,1.04946,332),(15985,1.04946,332),(19141,1.04946,332),(18812,6.07808,2444),(16880,3.38522,2286),(16881,3.38522,2286),(16882,3.38522,2286),(16883,3.38522,2286),(16884,3.38522,2286),(17089,3.38522,2286),(17455,3.38522,2286),(17646,3.38522,2286),(18089,3.38522,2286),(18094,3.38522,2286),(20300,3.38522,2286),(20347,3.38522,2286),(20348,3.38522,2286),(22642,0.571564,2677),(22979,0.571564,2677),(23227,0.571564,2677),(23479,0.571564,2677),(17403,1.37779,2354),(17582,1.37779,2354),(17952,1.37779,2354),(17953,1.37779,2354),(18386,1.37779,2354),(18391,1.37779,2354),(18392,1.37779,2354),(18395,1.37779,2354),(18396,1.37779,2354),(19365,1.37779,2354),(19366,1.37779,2354),(20099,1.37779,2354),(20212,1.37779,2354),(20232,1.37779,2354),(20641,1.37779,2354),(20642,1.37779,2354),(20672,1.37779,2354),(20768,1.37779,2354),(21162,1.37779,2354),(21163,1.37779,2354),(21164,1.37779,2354),(22590,1.37779,2354),(22869,1.37779,2354),(22870,1.37779,2354),(22871,1.37779,2354),(22872,1.37779,2354),(23472,1.37779,2354),(21343,3.54749,2572),(180,3.09883,34),(322,3.09883,34),(615,3.09883,34),(648,3.09883,34),(649,3.09883,34),(670,3.09883,34),(671,3.09883,34),(672,3.09883,34),(673,3.09883,34),(674,3.09883,34),(675,3.09883,34),(676,3.09883,34),(677,3.09883,34),(695,3.09883,34),(755,3.09883,34),(787,3.09883,34),(788,3.09883,34),(945,3.09883,34),(948,3.09883,34),(949,3.09883,34),(960,3.09883,34),(961,3.09883,34),(1259,3.09883,34),(1337,3.09883,34),(1338,3.09883,34),(1339,3.09883,34),(1340,3.09883,34),(1744,3.09883,34),(1746,3.09883,34),(1747,3.09883,34),(1959,3.09883,34),(1960,3.09883,34),(1962,3.09883,34),(2570,3.09883,34),(2571,3.09883,34),(2573,3.09883,34),(2574,3.09883,34),(4442,3.09883,34),(5242,3.09883,34),(5290,3.09883,34),(5291,3.09883,34),(5292,3.09883,34),(6468,3.09883,34),(8472,3.09883,34),(8473,3.09883,34),(9050,3.09883,34),(11315,3.09883,34),(11316,3.09883,34),(11317,3.09883,34),(11318,3.09883,34),(11319,3.09883,34),(19910,3.09883,34),(21825,3.09883,34),(23518,3.09883,34),(15375,1.58301,2200),(21443,1.69966,2580),(20512,1.29889,2521),(20513,1.29889,2521),(21360,1.42961,2573),(17698,4.81064,2376),(17703,4.81064,2376),(17717,4.81064,2376),(17718,4.81064,2376),(17759,4.81064,2376),(16632,4.85237,2279),(17287,4.85237,2279),(17880,4.85237,2279),(18526,4.85237,2279),(18622,4.85237,2279),(19715,4.85237,2279),(20751,4.85237,2279),(20907,4.85237,2279),(15511,1.32669,2211),(19708,1.32669,2211),(17544,0.775476,2430),(17626,0.775476,2430),(17627,0.775476,2430),(17628,0.775476,2430),(17695,0.775476,2430),(18312,0.775476,2430),(18323,0.775476,2430),(20667,0.775476,2430),(21098,0.775476,2430),(21099,0.775476,2430),(19272,5.59434,2479),(19980,5.59434,2479),(20516,5.59434,2479),(20517,5.59434,2479),(20519,5.59434,2479),(20539,5.59434,2479),(20540,5.59434,2479),(20541,5.59434,2479),(17577,0.704947,2368),(17328,4.81064,2365),(17889,17.0173,2397),(18273,17.0173,2397),(19114,17.0173,2397),(17781,1.97369,2385),(18035,1.97369,2385),(18194,1.97369,2385),(18615,1.97369,2385),(20770,1.97369,2385),(20870,1.97369,2385),(20917,1.97369,2385),(22416,1.97369,2385),(20628,0.626619,2529),(21349,0.626619,2529),(30,3.04203,30),(283,3.04203,30),(368,3.04203,30),(418,3.04203,30),(513,3.04203,30),(538,3.04203,30),(539,3.04203,30),(545,3.04203,30),(659,3.04203,30),(711,3.04203,30),(768,3.04203,30),(955,3.04203,30),(957,3.04203,30),(958,3.04203,30),(959,3.04203,30),(963,3.04203,30),(1087,3.04203,30),(1088,3.04203,30),(1089,3.04203,30),(1090,3.04203,30),(1157,3.04203,30),(1160,3.04203,30),(1873,3.04203,30),(2433,3.04203,30),(2536,3.04203,30),(2537,3.04203,30),(2538,3.04203,30),(2539,3.04203,30),(2540,3.04203,30),(2541,3.04203,30),(4456,3.04203,30),(8271,3.04203,30),(9755,3.04203,30),(9756,3.04203,30),(9829,3.04203,30),(9910,3.04203,30),(9929,3.04203,30),(9997,3.04203,30),(13111,3.04203,30),(14853,3.04203,30),(14950,3.04203,30),(14952,3.04203,30),(15072,3.04203,30),(15136,3.04203,30),(15937,3.04203,30),(15938,3.04203,30),(15939,3.04203,30),(16050,3.04203,30),(16051,3.04203,30),(20826,3.04203,30),(20923,3.04203,30),(20999,3.04203,30),(20782,1.94444,2536),(22906,0.46296,2675),(23466,0.46296,2675),(80,0.239198,80),(252,0.239198,80),(257,0.239198,80),(344,0.239198,80),(10445,0.239198,80),(10928,0.239198,80),(10929,0.239198,80),(11873,0.239198,80),(13169,0.239198,80),(16347,1.52858,2266),(16348,1.52858,2266),(16349,1.52858,2266),(16351,1.52858,2266),(16838,1.52858,2266),(16841,1.52858,2266),(16953,1.52858,2266),(16958,1.52858,2266),(17526,1.52858,2266),(17618,1.52858,2266),(17972,1.52858,2266),(18178,1.52858,2266),(18238,1.52858,2266),(18662,1.52858,2266),(18930,1.52858,2266),(19165,1.52858,2266),(19201,1.52858,2266),(19300,1.52858,2266),(19301,1.52858,2266),(19410,1.52858,2266),(19659,1.52858,2266),(20764,1.52858,2266),(21460,1.52858,2266),(22429,1.52858,2266),(23431,1.52858,2266),(23350,0.571724,2699),(23459,0.571724,2699),(54,0.44864,54),(1286,0.44864,54),(1401,0.44864,54),(1404,0.44864,54),(1407,0.44864,54),(1608,0.44864,54),(1620,0.44864,54),(1651,0.44864,54),(1670,0.44864,54),(1766,0.44864,54),(1786,0.44864,54),(1791,0.44864,54),(1793,0.44864,54),(1799,0.44864,54),(1811,0.44864,54),(1812,0.44864,54),(1839,0.44864,54),(1841,0.44864,54),(1843,0.44864,54),(1850,0.44864,54),(1852,0.44864,54),(1927,0.44864,54),(1969,0.44864,54),(1981,0.44864,54),(2036,0.44864,54),(2049,0.44864,54),(2286,0.44864,54),(2585,0.44864,54),(2678,0.44864,54),(2889,0.44864,54),(2893,0.44864,54),(2999,0.44864,54),(3039,0.44864,54),(3041,0.44864,54),(3048,0.44864,54),(3049,0.44864,54),(3050,0.44864,54),(3051,0.44864,54),(3056,0.44864,54),(3057,0.44864,54),(3058,0.44864,54),(3059,0.44864,54),(3060,0.44864,54),(3061,0.44864,54),(3062,0.44864,54),(3063,0.44864,54),(3064,0.44864,54),(3065,0.44864,54),(3066,0.44864,54),(3067,0.44864,54),(3068,0.44864,54),(3069,0.44864,54),(3070,0.44864,54),(3071,0.44864,54),(3311,0.44864,54),(3312,0.44864,54),(3313,0.44864,54),(3405,0.44864,54),(3489,0.44864,54),(3762,0.44864,54),(3764,0.44864,54),(3766,0.44864,54),(3786,0.44864,54),(3788,0.44864,54),(3838,0.44864,54),(3840,0.44864,54),(3871,0.44864,54),(4112,0.44864,54),(4113,0.44864,54),(4114,0.44864,54),(4115,0.44864,54),(4314,0.44864,54),(4892,0.44864,54),(4965,0.44864,54),(4967,0.44864,54),(5022,0.44864,54),(5040,0.44864,54),(5043,0.44864,54),(5091,0.44864,54),(5408,0.44864,54),(5819,0.44864,54),(5827,0.44864,54),(6128,0.44864,54),(6438,0.44864,54),(6588,0.44864,54),(6718,0.44864,54),(6722,0.44864,54),(6726,0.44864,54),(6730,0.44864,54),(6734,0.44864,54),(6742,0.44864,54),(6755,0.44864,54),(6880,0.44864,54),(7382,0.44864,54),(7754,0.44864,54),(7756,0.44864,54),(7808,0.44864,54),(7818,0.44864,54),(7833,0.44864,54),(7913,0.44864,54),(7989,0.44864,54),(8171,0.44864,54),(8659,0.44864,54),(8675,0.44864,54),(8676,0.44864,54),(8680,0.44864,54),(8683,0.44864,54),(8684,0.44864,54),(8690,0.44864,54),(8691,0.44864,54),(8705,0.44864,54),(8763,0.44864,54),(8795,0.44864,54),(8796,0.44864,54),(8800,0.44864,54),(8801,0.44864,54),(8831,0.44864,54),(8892,0.44864,54),(8949,0.44864,54),(9071,0.44864,54),(9253,0.44864,54),(9263,0.44864,54),(9264,0.44864,54),(9290,0.44864,54),(9295,0.44864,54),(9338,0.44864,54),(10134,0.44864,54),(10477,0.44864,54),(10559,0.44864,54),(11050,0.44864,54),(11329,0.44864,54),(11352,0.44864,54),(11457,0.44864,54),(11594,0.44864,54),(11735,0.44864,54),(11739,0.44864,54),(11741,0.44864,54),(11752,0.44864,54),(11813,0.44864,54),(11819,0.44864,54),(12054,0.44864,54),(12056,0.44864,54),(12066,0.44864,54),(12077,0.44864,54),(12549,0.44864,54),(12933,0.44864,54),(13250,0.44864,54),(13255,0.44864,54),(13259,0.44864,54),(13263,0.44864,54),(13267,0.44864,54),(13271,0.44864,54),(13275,0.44864,54),(13299,0.44864,54),(13313,0.44864,54),(13314,0.44864,54),(13317,0.44864,54),(13318,0.44864,54),(13328,0.44864,54),(13352,0.44864,54),(13372,0.44864,54),(13380,0.44864,54),(13387,0.44864,54),(13531,0.44864,54),(13536,0.44864,54),(13545,0.44864,54),(13551,0.44864,54),(13633,0.44864,54),(13637,0.44864,54),(13641,0.44864,54),(13646,0.44864,54),(13651,0.44864,54),(13655,0.44864,54),(13659,0.44864,54),(13669,0.44864,54),(13710,0.44864,54),(13712,0.44864,54),(13782,0.44864,54),(13784,0.44864,54),(13787,0.44864,54),(13788,0.44864,54),(13791,0.44864,54),(13792,0.44864,54),(13794,0.44864,54),(13796,0.44864,54),(13798,0.44864,54),(13800,0.44864,54),(13802,0.44864,54),(13804,0.44864,54),(13806,0.44864,54),(14324,0.44864,54),(14656,0.44864,54),(14663,0.44864,54),(14754,0.44864,54),(14795,0.44864,54),(14796,0.44864,54),(15262,0.44864,54),(15316,0.44864,54),(15388,0.44864,54),(15443,0.44864,54),(15446,0.44864,54),(15450,0.44864,54),(15564,0.44864,54),(15598,0.44864,54),(15599,0.44864,54),(15715,0.44864,54),(15747,0.44864,54),(15836,0.44864,54),(15839,0.44864,54),(15848,0.44864,54),(15850,0.44864,54),(15888,0.44864,54),(16107,0.44864,54),(16365,0.44864,54),(16367,0.44864,54),(16381,0.44864,54),(16390,0.44864,54),(16434,0.44864,54),(16501,0.44864,54),(16518,0.44864,54),(16541,0.44864,54),(16936,0.44864,54),(18123,0.44864,54),(18126,0.44864,54),(18458,0.44864,54),(18524,0.44864,54),(18777,0.44864,54),(18778,0.44864,54),(18781,0.44864,54),(18782,0.44864,54),(18791,0.44864,54),(18796,0.44864,54),(18844,0.44864,54),(19173,0.44864,54),(19535,0.44864,54),(20149,0.44864,54),(20445,0.44864,54),(20446,0.44864,54),(21064,0.44864,54),(21311,0.44864,54),(21495,0.44864,54),(21669,0.44864,54),(21828,0.44864,54),(21829,0.44864,54),(21836,0.44864,54),(21837,0.44864,54),(21848,0.44864,54),(21849,0.44864,54),(22364,0.44864,54),(22558,0.44864,54),(22683,0.44864,54),(22822,0.44864,54),(23469,0.44864,54),(23670,0.44864,54),(23728,0.44864,54),(23781,0.44864,54),(17906,2.69462,2400),(19374,2.69462,2400),(19871,2.69462,2400),(19872,2.69462,2400),(19873,2.69462,2400),(23928,2.69462,2400),(19092,0.300419,2463),(19144,0.300419,2463),(21110,0.300419,2463),(21939,1.26363,2612),(17469,4.92976,2410),(18085,4.92976,2410),(18527,4.92976,2410),(20127,4.92976,2410),(19059,2.637,2454),(19062,2.637,2454),(19064,2.637,2454),(21585,3.56611,2587),(20918,0.809538,2543),(901,0.255927,142),(1924,0.255927,142),(5379,0.255927,142),(6295,0.255927,142),(6296,0.255927,142),(6297,0.255927,142),(14932,0.255927,142),(14934,0.255927,142),(14936,0.255927,142),(14938,0.255927,142),(21950,0.255927,142),(22459,0.255927,142),(22468,0.255927,142),(22469,0.255927,142),(159,2.12298,37),(2737,2.12298,37),(2834,2.12298,37),(4162,2.12298,37),(9109,2.12298,37),(10070,2.12298,37),(10191,2.12298,37),(10923,2.12298,37),(10924,2.12298,37),(10925,2.12298,37),(10926,2.12298,37),(10927,2.12298,37),(11654,2.12298,37),(19199,2.12298,37),(19887,2.12298,37),(19947,2.12298,37),(19948,2.12298,37),(20214,2.12298,37),(20385,2.12298,37),(20387,2.12298,37),(20535,2.12298,37),(21456,2.12298,37),(22671,2.12298,37),(21306,1.00835,2569),(21583,1.00835,2569),(17699,5.85247,2377),(17700,5.85247,2377),(17701,5.85247,2377),(17693,4.81064,2375),(17694,4.81064,2375),(17696,4.81064,2375),(17697,4.81064,2375),(17704,1.57318,2379),(17746,1.57318,2379),(18990,1.57318,2379),(19196,1.57318,2379),(19884,1.57318,2379),(19951,1.57318,2379),(23372,1.57318,2379),(14616,0.247881,2031),(14173,3.73309,1851),(19293,3.73309,1851),(19368,3.73309,1851),(19976,3.73309,1851),(21066,3.73309,1851),(16323,0.843136,2299),(16325,0.843136,2299),(16332,0.843136,2299),(16333,0.843136,2299),(16577,0.843136,2299),(16578,0.843136,2299),(16579,0.843136,2299),(16581,0.843136,2299),(16584,0.843136,2299),(16981,0.843136,2299),(17013,0.843136,2299),(17018,0.843136,2299),(17044,0.843136,2299),(17049,0.843136,2299),(17050,0.843136,2299),(17051,0.843136,2299),(17052,0.843136,2299),(17145,0.843136,2299),(17148,0.843136,2299),(17150,0.843136,2299),(17153,0.843136,2299),(17183,0.843136,2299),(17184,0.843136,2299),(17185,0.843136,2299),(17189,0.843136,2299),(17407,0.843136,2299),(17725,0.843136,2299),(17726,0.843136,2299),(17727,0.843136,2299),(17732,0.843136,2299),(17733,0.843136,2299),(17741,0.843136,2299),(17749,0.843136,2299),(17851,0.843136,2299),(17852,0.843136,2299),(17853,0.843136,2299),(18188,0.843136,2299),(18213,0.843136,2299),(18215,0.843136,2299),(18216,0.843136,2299),(18407,0.843136,2299),(18653,0.843136,2299),(18679,0.843136,2299),(18686,0.843136,2299),(18687,0.843136,2299),(18688,0.843136,2299),(18690,0.843136,2299),(18725,0.843136,2299),(18849,0.843136,2299),(18851,0.843136,2299),(18853,0.843136,2299),(18854,0.843136,2299),(18855,0.843136,2299),(18856,0.843136,2299),(18857,0.843136,2299),(18859,0.843136,2299),(18862,0.843136,2299),(18863,0.843136,2299),(19148,0.843136,2299),(19345,0.843136,2299),(19447,0.843136,2299),(20381,0.843136,2299),(20493,0.843136,2299),(20494,0.843136,2299),(20499,0.843136,2299),(20500,0.843136,2299),(20501,0.843136,2299),(20502,0.843136,2299),(20507,0.843136,2299),(20508,0.843136,2299),(20699,0.843136,2299),(20743,0.843136,2299),(20761,0.843136,2299),(20793,0.843136,2299),(20794,0.843136,2299),(20795,0.843136,2299),(20798,0.843136,2299),(20799,0.843136,2299),(20800,0.843136,2299),(20802,0.843136,2299),(20803,0.843136,2299),(20890,0.843136,2299),(20891,0.843136,2299),(20892,0.843136,2299),(20893,0.843136,2299),(20958,0.843136,2299),(21025,0.843136,2299),(21026,0.843136,2299),(21154,0.843136,2299),(21212,0.843136,2299),(21267,0.843136,2299),(21274,0.843136,2299),(21275,0.843136,2299),(21278,0.843136,2299),(21279,0.843136,2299),(21280,0.843136,2299),(21281,0.843136,2299),(21283,0.843136,2299),(21284,0.843136,2299),(21285,0.843136,2299),(21286,0.843136,2299),(21291,0.843136,2299),(21299,0.843136,2299),(21316,0.843136,2299),(21354,0.843136,2299),(21361,0.843136,2299),(21363,0.843136,2299),(21364,0.843136,2299),(21367,0.843136,2299),(21368,0.843136,2299),(21369,0.843136,2299),(21370,0.843136,2299),(21375,0.843136,2299),(21376,0.843136,2299),(21378,0.843136,2299),(21383,0.843136,2299),(21384,0.843136,2299),(21385,0.843136,2299),(21424,0.843136,2299),(21426,0.843136,2299),(21438,0.843136,2299),(21441,0.843136,2299),(21448,0.843136,2299),(21535,0.843136,2299),(21536,0.843136,2299),(21537,0.843136,2299),(21538,0.843136,2299),(21539,0.843136,2299),(21547,0.843136,2299),(21549,0.843136,2299),(21550,0.843136,2299),(21552,0.843136,2299),(21553,0.843136,2299),(21554,0.843136,2299),(21555,0.843136,2299),(21556,0.843136,2299),(22410,0.843136,2299),(22411,0.843136,2299),(1206,1.28372,170),(1986,1.28372,170),(1987,1.28372,170),(2954,1.28372,170),(2955,1.28372,170),(2956,1.28372,170),(2957,1.28372,170),(2958,1.28372,170),(2995,1.28372,170),(3126,1.28372,170),(4167,1.28372,170),(4268,1.28372,170),(4343,1.28372,170),(4440,1.28372,170),(6303,1.28372,170),(7409,1.28372,170),(8173,1.28372,170),(8174,1.28372,170),(17000,1.28372,170),(21193,1.28372,170),(21210,1.28372,170),(1057,1.8009,210),(1934,1.8009,210),(1971,1.8009,210),(1972,1.8009,210),(1973,1.8009,210),(1977,1.8009,210),(4424,1.8009,210),(10055,1.8009,210),(10114,1.8009,210),(17077,1.8009,210),(16980,0.843136,2298),(22462,1.68075,2638),(22463,1.68075,2638),(22464,1.68075,2638),(22465,1.68075,2638),(22466,1.68075,2638),(22467,1.68075,2638),(18722,3.47672,2439),(18723,3.47672,2439),(18724,3.47672,2439),(19252,3.47672,2439),(19367,3.47672,2439),(19408,3.47672,2439),(20042,3.47672,2439),(20846,3.47672,2439),(20847,3.47672,2439),(22349,0.42186,2632),(7550,0.368919,912),(7555,0.368919,912),(7846,0.368919,912),(7869,0.368919,912),(8055,0.368919,912),(9783,0.368919,912),(9784,0.368919,912),(9785,0.368919,912),(9786,0.368919,912),(9787,0.368919,912),(9788,0.368919,912),(9789,0.368919,912),(9790,0.368919,912),(11078,0.368919,912),(11369,0.368919,912),(11398,0.368919,912),(11400,0.368919,912),(11401,0.368919,912),(11402,0.368919,912),(11403,0.368919,912),(11404,0.368919,912),(11405,0.368919,912),(14391,0.368919,912),(14699,0.368919,912),(16916,0.368919,912),(18138,0.368919,912),(18353,1.27018,2464),(19219,1.27018,2464),(19220,1.27018,2464),(19223,1.27018,2464),(19696,1.27018,2464),(19779,1.27018,2464),(20605,1.27018,2464),(16031,7.43455,2240),(19668,2.32025,2502),(17091,5.47482,2319),(17092,5.47482,2319),(17093,5.47482,2319),(17094,5.47482,2319),(19913,5.47482,2319),(20571,5.47482,2319),(20845,5.47482,2319),(20850,5.47482,2319),(16942,0.892923,2355),(17561,3.15748,2293),(19732,3.15748,2293),(19733,3.15748,2293),(19734,3.15748,2293),(19735,3.15748,2293),(19736,3.15748,2293),(19742,3.15748,2293),(19743,3.15748,2293),(19758,3.15748,2293),(19759,3.15748,2293),(19760,3.15748,2293),(19764,3.15748,2293),(19766,3.15748,2293),(19767,3.15748,2293),(19768,3.15748,2293),(19769,3.15748,2293),(19770,3.15748,2293),(19781,3.15748,2293),(19911,3.15748,2293),(19972,3.15748,2293),(19973,3.15748,2293),(20093,3.15748,2293),(73,1.77559,73),(246,1.77559,73),(720,1.77559,73),(741,1.77559,73),(1030,1.77559,73),(2352,1.77559,73),(9369,1.77559,73),(9370,1.77559,73),(9371,1.77559,73),(9372,1.77559,73),(9562,1.77559,73),(9563,1.77559,73),(9564,1.77559,73),(9567,1.77559,73),(9568,1.77559,73),(9569,1.77559,73),(9572,1.77559,73),(10209,1.77559,73),(10278,1.77559,73),(11411,1.77559,73),(11412,1.77559,73),(11413,1.77559,73),(11414,1.77559,73),(11415,1.77559,73),(11417,1.77559,73),(11418,1.77559,73),(11419,1.77559,73),(11420,1.77559,73),(11421,1.77559,73),(11422,1.77559,73),(15180,1.77559,73),(15204,1.77559,73),(17079,1.77559,73),(18063,1.77559,73),(18902,1.77559,73),(19042,1.77559,73),(19422,1.77559,73),(19727,1.77559,73),(19757,1.77559,73),(19784,1.77559,73),(20180,1.77559,73),(4566,3.38522,373),(4615,3.38522,373),(4877,3.38522,373),(6212,3.38522,373),(6298,3.38522,373),(6299,3.38522,373),(6300,3.38522,373),(10828,3.38522,373),(10829,3.38522,373),(10830,3.38522,373),(10831,3.38522,373),(10832,3.38522,373),(10833,3.38522,373),(15534,3.38522,373),(15905,3.38522,373),(16428,3.38522,373),(16724,3.38522,373),(16730,3.38522,373),(17019,3.38522,373),(18374,3.38522,373),(18375,3.38522,373),(18376,3.38522,373),(18377,3.38522,373),(18378,3.38522,373),(18380,3.38522,373),(18381,3.38522,373),(18382,3.38522,373),(18383,3.38522,373),(18430,3.38522,373),(18431,3.38522,373),(18933,3.38522,373),(18989,3.38522,373),(20293,3.38522,373),(20327,3.38522,373),(20588,3.38522,373),(20589,3.38522,373),(20725,3.38522,373),(20727,3.38522,373),(20728,3.38522,373),(20729,3.38522,373),(20730,3.38522,373),(20738,3.38522,373),(20959,3.38522,373),(20960,3.38522,373),(21003,3.38522,373),(21124,3.38522,373),(21125,3.38522,373),(21133,3.38522,373),(21326,3.38522,373),(21396,3.38522,373),(23517,3.38522,373),(23708,3.38522,373),(17543,1.66479,2361),(18419,1.66479,2361),(18699,1.66479,2361),(19525,1.66479,2361),(19586,1.66479,2361),(19587,1.66479,2361),(19588,1.66479,2361),(19589,1.66479,2361),(19717,1.66479,2361),(19888,1.66479,2361),(19912,1.66479,2361),(19975,1.66479,2361),(20855,1.66479,2361),(20861,1.66479,2361),(20920,1.66479,2361),(21104,1.66479,2361),(21455,1.66479,2361),(21502,1.66479,2361),(21503,1.66479,2361),(21527,1.66479,2361),(21540,1.66479,2361),(21541,1.66479,2361),(21542,1.66479,2361),(22422,1.66479,2361),(22596,1.66479,2361),(23225,0.522946,2691),(23226,0.522946,2691),(23473,0.522946,2691),(23474,0.522946,2691),(23475,0.522946,2691),(17542,1.65092,2360),(18420,1.65092,2360),(18448,1.65092,2360),(18525,1.65092,2360),(18531,1.65092,2360),(19597,1.65092,2360),(19599,1.65092,2360),(19722,1.65092,2360),(19914,1.65092,2360),(19915,1.65092,2360),(19977,1.65092,2360),(19982,1.65092,2360),(20040,1.65092,2360),(20041,1.65092,2360),(20044,1.65092,2360),(20045,1.65092,2360),(20046,1.65092,2360),(20047,1.65092,2360),(22811,1.65092,2360),(22812,1.65092,2360),(95,0.323952,95),(696,0.323952,95),(751,0.323952,95),(753,0.323952,95),(7919,1.24909,1051),(7971,1.24909,1051),(16197,1.24909,1051),(17252,1.24909,1051),(17444,1.24909,1051),(14792,0.686378,2091),(15214,0.686378,2091),(18261,0.686378,2091),(864,1.1162,141),(1923,1.1162,141),(1988,1.1162,141),(2033,1.1162,141),(2077,1.1162,141),(2078,1.1162,141),(2079,1.1162,141),(2168,1.1162,141),(2451,1.1162,141),(5848,1.1162,141),(5849,1.1162,141),(6350,1.1162,141),(6351,1.1162,141),(8824,1.1162,141),(9590,1.1162,141),(9591,1.1162,141),(9592,1.1162,141),(9593,1.1162,141),(10621,1.1162,141),(13098,1.1162,141),(13173,1.1162,141),(14354,1.1162,141),(15484,1.1162,141),(15485,1.1162,141),(15586,1.1162,141),(15587,1.1162,141),(15588,1.1162,141),(17057,1.1162,141),(18901,1.1162,141),(18922,1.1162,141),(20012,1.1162,141),(20604,1.1162,141),(22719,2.58355,2656),(19221,1.37874,2483),(21073,1.37874,2483),(21074,1.37874,2483),(21075,1.37874,2483),(21076,1.37874,2483),(21077,1.37874,2483),(17095,1.80073,2320),(17096,1.80073,2320),(17097,1.80073,2320),(17098,1.80073,2320),(17099,1.80073,2320),(17100,1.80073,2320),(18143,1.80073,2320),(18166,1.80073,2320),(18169,1.80073,2320),(18209,1.80073,2320),(18237,1.80073,2320),(18373,1.80073,2320),(18753,1.80073,2320),(18821,1.80073,2320),(19200,1.80073,2320),(19592,1.80073,2320),(19594,1.80073,2320),(19621,1.80073,2320),(19719,1.80073,2320),(20606,1.80073,2320),(20919,1.80073,2320),(20931,1.80073,2320),(20974,1.80073,2320),(21429,1.80073,2320),(21430,1.80073,2320),(22809,1.80073,2320),(31,0.512678,31),(188,0.512678,31),(346,0.512678,31),(369,0.512678,31),(385,0.512678,31),(386,0.512678,31),(391,0.512678,31),(441,0.512678,31),(478,0.512678,31),(486,0.512678,31),(504,0.512678,31),(506,0.512678,31),(527,0.512678,31),(529,0.512678,31),(531,0.512678,31),(540,0.512678,31),(617,0.512678,31),(627,0.512678,31),(652,0.512678,31),(664,0.512678,31),(679,0.512678,31),(680,0.512678,31),(757,0.512678,31),(852,0.512678,31),(853,0.512678,31),(983,0.512678,31),(1005,0.512678,31),(1079,0.512678,31),(1305,0.512678,31),(1755,0.512678,31),(1761,0.512678,31),(1762,0.512678,31),(1763,0.512678,31),(1773,0.512678,31),(1994,0.512678,31),(1995,0.512678,31),(2597,0.512678,31),(3615,0.512678,31),(3617,0.512678,31),(3619,0.512678,31),(3940,0.512678,31),(4088,0.512678,31),(4920,0.512678,31),(5025,0.512678,31),(5243,0.512678,31),(5286,0.512678,31),(5293,0.512678,31),(5306,0.512678,31),(6759,0.512678,31),(11293,0.512678,31),(15926,0.512678,31),(18736,4.81064,2443),(23200,15.7007,2687),(20748,1.37777,2535),(17545,3.90136,2363),(17546,3.90136,2363),(17547,3.90136,2363),(18920,3.90136,2363),(19298,3.90136,2363),(19299,3.90136,2363),(19663,3.90136,2363),(19669,3.90136,2363),(19685,3.90136,2363),(20026,3.90136,2363),(20027,3.90136,2363),(20029,3.90136,2363),(20037,3.90136,2363),(20263,3.90136,2363),(21831,3.90136,2363),(21901,3.90136,2363),(22841,3.90136,2363),(22860,3.90136,2363),(23458,3.90136,2363),(23515,3.90136,2363),(21174,1.18544,2555),(22731,2.2045,2660),(18719,5.66093,2438),(18721,5.66093,2438),(19369,5.66093,2438),(19370,5.66093,2438),(19893,5.66093,2438),(19979,5.66093,2438),(19995,5.66093,2438),(19996,5.66093,2438),(19997,5.66093,2438),(19998,5.66093,2438),(20025,5.66093,2438),(20142,5.66093,2438),(20747,5.66093,2438),(20901,5.66093,2438),(20910,5.66093,2438),(21297,5.66093,2438),(21356,5.66093,2438),(21371,5.66093,2438),(22790,5.66093,2438),(22791,5.66093,2438),(23521,5.66093,2438),(22669,2.50463,2651),(1686,14.7664,203),(1687,14.7664,203),(2717,14.7664,203),(2718,14.7664,203),(2719,14.7664,203),(2720,14.7664,203),(2930,14.7664,203),(7806,14.7664,203),(8574,14.7664,203),(9909,14.7664,203),(12869,14.7664,203),(13992,14.7664,203),(15366,14.7664,203),(15412,14.7664,203),(15413,14.7664,203),(15414,14.7664,203),(15474,14.7664,203),(15500,14.7664,203),(15946,14.7664,203),(17156,14.7664,203),(17256,14.7664,203),(19270,14.7664,203),(20477,14.7664,203),(20591,14.7664,203),(21063,14.7664,203),(21079,14.7664,203),(21319,14.7664,203),(21437,14.7664,203),(23345,14.7664,2698),(23487,14.7664,2698),(22004,1.73072,2619),(19162,2.66795,2467),(22351,1.59441,2633),(17723,1.32613,2381),(19058,2.637,2453),(19065,2.637,2453),(1236,1.88231,171),(2446,1.88231,171),(3123,1.88231,171),(17283,1.88231,171),(21114,1.88231,171),(22130,1.88231,171),(15513,0.370582,2212),(15925,0.370582,2212),(15927,0.370582,2212),(16869,0.370582,2212),(22627,0.370582,2212),(22770,0.370582,2212),(22843,0.370582,2212),(22844,0.370582,2212),(22845,0.370582,2212),(22976,0.370582,2212),(22977,0.370582,2212),(21253,0.958143,2566),(21490,0.958143,2566),(16634,1.57318,2318),(17081,1.57318,2318),(17298,1.57318,2318),(18366,1.57318,2318),(18953,1.57318,2318),(16633,0.639892,2280),(19437,0.639892,2280),(19325,3.65979,2488),(19332,3.65979,2488),(19383,3.65979,2488),(19414,3.65979,2488),(20049,3.65979,2488),(20101,3.65979,2488),(20224,3.65979,2488),(20261,3.65979,2488),(20547,3.65979,2488),(20611,3.65979,2488),(20701,3.65979,2488),(20971,3.65979,2488),(18839,16.8792,2446),(22421,16.8792,2446),(17075,3.56611,2317),(19276,0.789413,2281),(19277,0.789413,2281),(21153,0.789413,2281),(17822,0.710901,2387),(17826,0.710901,2387),(23749,0.710901,2387),(18062,14.8984,2405),(19212,0.862991,2271),(19275,0.862991,2271),(17675,5.85247,2374),(18275,3.56611,2482),(19302,3.56611,2482),(19324,3.56611,2482),(19458,3.56611,2482),(19688,3.56611,2482),(19689,3.56611,2482),(20021,3.56611,2482),(20048,3.56611,2482),(20750,3.56611,2482),(20903,3.56611,2482),(20908,3.56611,2482),(20909,3.56611,2482),(20973,3.56611,2482),(21330,3.56611,2482),(23693,3.56611,2482),(18718,0.879995,2437),(18720,0.879995,2437),(17423,3.24093,2357),(19241,3.55691,2474),(19438,3.55691,2474),(22428,3.55691,2474),(17074,3.56611,2316),(18631,3.56611,2316),(18700,3.56611,2316),(18713,3.56611,2316),(18837,3.56611,2316),(17724,0.91018,2505),(19799,0.91018,2505),(22412,0.91018,2505),(19060,5.59332,2455),(19066,5.59332,2455),(19135,5.59332,2455),(22423,5.59332,2455),(19581,5.17567,2491),(19582,5.17567,2491),(19583,5.17567,2491),(19584,5.17567,2491),(19585,5.17567,2491),(19797,5.17567,2491),(20822,5.17567,2491),(20823,5.17567,2491),(20824,5.17567,2491),(20825,5.17567,2491),(20924,5.17567,2491),(20023,0.645601,2468),(22574,0.645601,2468),(18236,0.91018,2465),(21353,0.91018,2465),(15989,0.683932,2237),(15990,0.683932,2237),(15992,0.683932,2237),(7533,3.18313,891),(7534,3.18313,891),(7616,3.18313,891),(7854,3.18313,891),(7855,3.18313,891),(7856,3.18313,891),(11071,3.18313,891),(14696,3.18313,891),(14709,3.18313,891),(14710,3.18313,891),(17311,3.18313,891),(7933,5.19694,1071),(8470,5.19694,1071),(9342,5.19694,1071),(1548,1.91614,198),(2193,1.91614,198),(4270,1.91614,198),(4473,1.91614,198),(2736,1.68588,1371),(2784,1.68588,1371),(2785,1.68588,1371),(2786,1.68588,1371),(2787,1.68588,1371),(22265,1.68588,1371),(22630,1.68588,1371),(157,1.97371,36),(2592,1.97371,36),(11091,1.97371,36),(11095,1.97371,36),(11096,1.97371,36),(11097,1.97371,36),(12153,1.97371,36),(12154,1.97371,36),(12158,1.97371,36),(12160,1.97371,36),(15333,1.97371,36),(15357,1.97371,36),(15362,1.97371,36),(15378,1.97371,36),(15434,1.97371,36),(15483,1.97371,36),(15487,1.97371,36),(15488,1.97371,36),(15489,1.97371,36),(15490,1.97371,36),(15494,1.97371,36),(18411,1.97371,36),(19071,0.778189,2457),(20691,0.778189,2457),(16033,14.8984,2241),(16919,14.8984,2241),(17255,14.8984,2241),(16259,2.18538,2265),(16359,2.18538,2265),(16360,2.18538,2265),(16361,2.18538,2265),(1141,0.628034,165),(1418,0.628034,165),(2176,0.628034,165),(4959,0.628034,165),(4960,0.628034,165),(16143,0.628034,165),(1062,1.42289,157),(15272,1.42289,157),(15354,1.42289,157),(15465,1.42289,157),(15546,1.42289,157),(15583,1.42289,157),(91,1.71703,91),(481,1.71703,91),(1561,1.71703,91),(3195,1.71703,91),(6633,1.71703,91),(11079,1.71703,91),(11084,1.71703,91),(11085,1.71703,91),(11087,1.71703,91),(11092,1.71703,91),(11099,1.71703,91),(11106,1.71703,91),(12150,1.71703,91),(12155,1.71703,91),(14521,1.71703,91),(15334,1.71703,91),(15337,1.71703,91),(15355,1.71703,91),(15417,1.71703,91),(15439,1.71703,91),(15491,1.71703,91),(15492,1.71703,91),(15493,1.71703,91),(15576,1.71703,91),(17270,1.71703,91),(96,0.319256,96),(225,0.319256,96),(228,0.319256,96),(427,0.319256,96),(560,0.319256,96),(1049,0.319256,96),(856,0.77529,140),(857,0.77529,140),(3886,0.77529,140),(16205,0.77529,140),(15406,1.57318,2203),(6980,2.65527,853),(18638,2.65527,853),(15556,30.9634,2213),(15932,30.9634,2213),(347,0.839042,124),(654,0.839042,124),(10091,0.839042,124),(15789,1.55813,2227),(15790,1.55813,2227),(15793,1.55813,2227),(15868,1.55813,2227),(15881,1.55813,2227),(20227,1.55813,2227),(19,0.571724,19),(191,0.571724,19),(4683,0.64516,393),(16153,1.72663,2255),(16327,1.72663,2255),(2030,0.583504,202),(15231,0.583504,202),(15292,0.583504,202),(21747,0.583504,202),(100,0.318319,100),(224,0.318319,100),(964,0.318319,100),(4806,3.20818,458),(6469,3.20818,458),(6470,3.20818,458),(6471,3.20818,458),(6472,3.20818,458),(6473,3.20818,458),(19218,0.553856,2466),(4591,2.20853,227),(1064,2.10776,159),(15274,2.10776,159),(15344,2.10776,159),(15345,2.10776,159),(15360,2.10776,159),(15740,2.10776,159),(19897,2.10776,159),(19898,2.10776,159),(19943,2.10776,159),(22432,2.10776,159),(113,0.717302,113),(244,0.717302,113),(516,0.717302,113),(565,0.717302,113),(8177,1.61912,1131),(8178,1.61912,1131),(8270,1.61912,1131),(9189,1.61912,1131),(13869,1.61912,1131),(1023,0.571724,151),(19061,2.43141,2456),(19063,2.43141,2456),(20102,2.43141,2456),(15102,0.857827,2151),(467,1.11396,78),(1013,1.11396,78),(1014,1.11396,78),(2007,1.11396,78),(2008,1.11396,78),(2009,1.11396,78),(2010,1.11396,78),(2011,1.11396,78),(2012,1.11396,78),(2013,1.11396,78),(2014,1.11396,78),(2015,1.11396,78),(2016,1.11396,78),(2017,1.11396,78),(2018,1.11396,78),(2019,1.11396,78),(2020,1.11396,78),(2021,1.11396,78),(2687,1.11396,78),(2875,1.11396,78),(2878,1.11396,78),(2879,1.11396,78),(2880,1.11396,78),(5665,1.11396,78),(5766,1.11396,78),(6741,1.11396,78),(6743,1.11396,78),(6744,1.11396,78),(7649,1.11396,78),(8575,1.11396,78),(9781,1.11396,78),(10032,1.11396,78),(10035,1.11396,78),(10189,1.11396,78),(11331,1.11396,78),(11332,1.11396,78),(11333,1.11396,78),(11334,1.11396,78),(11335,1.11396,78),(11336,1.11396,78),(11337,1.11396,78),(11338,1.11396,78),(11339,1.11396,78),(11340,1.11396,78),(11341,1.11396,78),(11342,1.11396,78),(11343,1.11396,78),(11344,1.11396,78),(11345,1.11396,78),(11346,1.11396,78),(11347,1.11396,78),(11513,1.11396,78),(12334,1.11396,78),(14387,1.11396,78),(14416,1.11396,78),(19890,1.11396,78),(20524,1.11396,78),(21120,1.11396,78),(21122,1.11396,78),(102,0.559589,102),(211,0.559589,102),(214,0.559589,102),(428,0.559589,102),(430,0.559589,102),(12073,0.728537,1771),(12074,0.728537,1771),(14706,0.728537,1771),(16156,0.728537,1771),(16972,0.728537,1771),(21305,0.728537,1771),(9832,24.0327,1311),(20064,24.0327,1311),(14546,1.64751,1991),(14547,1.64751,1991),(14548,1.64751,1991),(14549,1.64751,1991),(14550,1.64751,1991),(14551,1.64751,1991),(16075,1.64751,1991),(7763,1.31476,991),(8573,1.31476,991),(10029,1.31476,991),(12349,1.31476,991),(14350,1.31476,991),(15380,1.31476,991),(15436,1.31476,991),(16146,1.31476,991),(21070,1.31476,991),(4644,1.16119,372),(4652,1.16119,372),(4653,1.16119,372),(4658,1.16119,372),(4746,1.16119,372),(4747,1.16119,372),(4748,1.16119,372),(4757,1.16119,372),(4758,1.16119,372),(6103,1.16119,372),(6104,1.16119,372),(6108,1.16119,372),(6109,1.16119,372),(6119,1.16119,372),(6123,1.16119,372),(11383,1.16119,372),(11384,1.16119,372),(11386,1.16119,372),(18084,3.60427,2409),(3916,1.19934,5),(6195,1.19934,5),(6196,1.19934,5),(7890,1.19934,5),(7891,1.19934,5),(7892,1.19934,5),(7893,1.19934,5),(8180,1.19934,5),(8181,1.19934,5),(9019,1.19934,5),(9020,1.19934,5),(9021,1.19934,5),(9022,1.19934,5),(14312,1.19934,5),(15181,1.19934,5),(15964,1.19934,5),(15969,1.19934,5),(16049,1.19934,5),(16052,1.19934,5),(16054,1.19934,5),(20977,1.19934,5),(1557,2.87271,193),(12192,2.87271,193),(12193,2.87271,193),(12194,2.87271,193),(12199,2.87271,193),(12200,2.87271,193),(12201,2.87271,193),(12202,2.87271,193),(12203,2.87271,193),(12205,2.87271,193),(12207,2.87271,193),(12209,2.87271,193),(15595,2.87271,193),(109,0.3379,109),(258,0.3379,109),(278,0.3379,109),(754,0.3379,109),(4729,0.435348,313),(6547,0.435348,313),(6782,0.435348,313),(10381,0.435348,313),(6544,1.11832,751),(6569,1.11832,751),(9473,1.11832,751),(9474,1.11832,751),(9475,1.11832,751),(9476,1.11832,751),(10661,1.11832,751),(10662,1.11832,751),(10664,1.11832,751),(10666,1.11832,751),(10667,1.11832,751),(4588,0.64516,375),(16997,0.64516,375),(1060,1.4243,155),(19603,1.4243,155),(19610,1.4243,155),(14367,3.62807,1931),(387,1.32613,6),(397,1.32613,6),(399,1.32613,6),(400,1.32613,6),(457,1.32613,6),(497,1.32613,6),(505,1.32613,6),(621,1.32613,6),(622,1.32613,6),(694,1.32613,6),(715,1.32613,6),(956,1.32613,6),(4465,1.32613,6),(6288,1.32613,6),(6290,1.32613,6),(6291,1.32613,6),(6292,1.32613,6),(6293,1.32613,6),(7908,1.32613,6),(8712,1.32613,6),(8713,1.32613,6),(9582,1.32613,6),(9583,1.32613,6),(9994,1.32613,6),(10007,1.32613,6),(10095,1.32613,6),(10583,1.32613,6),(10584,1.32613,6),(10585,1.32613,6),(12489,1.32613,6),(14025,1.32613,6),(14720,1.32613,6),(17253,1.32613,6),(17254,1.32613,6),(16109,1.46821,2246),(16110,1.46821,2246),(16271,1.46821,2246),(16272,1.46821,2246),(16273,1.46821,2246),(16274,1.46821,2246),(17754,1.46821,2246),(20560,1.46821,2246),(20769,1.46821,2246),(20944,1.46821,2246),(352,0.45015,131),(836,0.45015,131),(1101,0.45015,131),(5926,1.45623,671),(6890,1.45623,671),(6891,1.45623,671),(6915,1.45623,671),(16970,1.45623,671),(21732,1.45623,671),(21733,1.45623,671),(21734,1.45623,671),(1269,2.42803,176),(1303,2.42803,176),(2280,2.42803,176),(11912,2.42803,176),(13310,2.42803,176),(7571,3.96619,932),(7572,3.96619,932),(7898,3.96619,932),(7899,3.96619,932),(7900,3.96619,932),(8183,3.96619,932),(9903,3.96619,932),(9904,3.96619,932),(9905,3.96619,932),(9906,3.96619,932),(10046,3.96619,932),(11828,3.96619,932),(12346,3.96619,932),(13509,3.96619,932),(13530,3.96619,932),(13609,3.96619,932),(15554,3.96619,932),(15963,3.96619,932),(15978,3.96619,932),(15983,3.96619,932),(22729,0.723037,2659),(204,0.854548,122),(413,0.854548,122),(491,0.854548,122),(492,0.854548,122),(502,0.854548,122),(1217,0.854548,122),(1888,0.854548,122),(3197,0.854548,122),(3198,0.854548,122),(10789,0.854548,122),(10794,0.854548,122),(10796,0.854548,122),(10853,0.854548,122),(10854,0.854548,122),(10855,0.854548,122),(207,1.77559,217),(247,1.77559,217),(1166,1.77559,217),(2320,1.77559,217),(2326,1.77559,217),(2327,1.77559,217),(2328,1.77559,217),(2833,1.77559,217),(17408,1.77559,217),(18509,1.77559,217),(19036,1.77559,217),(19040,1.77559,217),(21895,1.77559,217),(16876,4.50383,2285),(16877,4.50383,2285),(16878,4.50383,2285),(16879,4.50383,2285),(17812,4.50383,2285),(18042,4.50383,2285),(19163,4.50383,2285),(19695,4.50383,2285),(19875,4.50383,2285),(20530,4.50383,2285),(20844,4.50383,2285),(20848,4.50383,2285),(20849,4.50383,2285),(143,2.637,47),(177,2.637,47),(181,2.637,47),(182,2.637,47),(196,2.637,47),(332,2.637,47),(363,2.637,47),(623,2.637,47),(624,2.637,47),(625,2.637,47),(716,2.637,47),(2534,2.637,47),(2552,2.637,47),(2554,2.637,47),(6762,2.637,47),(8311,2.637,47),(8972,2.637,47),(10094,2.637,47),(12893,2.637,47),(17555,2.637,47),(22327,2.637,47),(3019,0.966156,270),(16074,0.966156,270),(16741,0.966156,270),(19073,0.620522,2458),(20690,0.620522,2458),(22552,0.620522,2458),(1196,0.375933,167),(1197,0.375933,167),(1198,0.375933,167),(2676,0.375933,167),(3668,0.375933,167),(4067,0.375933,167),(4631,0.375933,167),(5265,0.375933,167),(5431,0.375933,167),(10030,0.375933,167),(10971,0.375933,167),(10972,0.375933,167),(10976,0.375933,167),(10979,0.375933,167),(11471,0.375933,167),(14707,0.375933,167),(15791,3.74843,2228),(15792,3.74843,2228),(4871,1.13402,492),(4875,1.13402,492),(9412,1.13402,492),(9416,1.13402,492),(9423,1.13402,492),(9424,1.13402,492),(9429,1.13402,492),(9431,1.13402,492),(9438,1.13402,492),(9440,1.13402,492),(9443,1.13402,492),(9529,1.13402,492),(9530,1.13402,492),(9531,1.13402,492),(11637,1.13402,492),(1532,5.95069,191),(1533,5.95069,191),(1537,5.95069,191),(1538,5.95069,191),(1539,5.95069,191),(1540,5.95069,191),(1958,5.95069,191),(2179,5.95069,191),(2194,5.95069,191),(2195,5.95069,191),(2742,5.95069,191),(2764,5.95069,191),(3005,5.95069,191),(4203,5.95069,191),(5241,5.95069,191),(5287,5.95069,191),(5288,5.95069,191),(5289,5.95069,191),(6083,5.95069,191),(6085,5.95069,191),(8184,5.95069,191),(9033,5.95069,191),(10932,5.95069,191),(10933,5.95069,191),(10934,5.95069,191),(14933,5.95069,191),(14937,5.95069,191),(16574,5.95069,191),(18362,5.95069,191),(18363,5.95069,191),(18364,5.95069,191),(18372,5.95069,191),(18379,5.95069,191),(18403,5.95069,191),(18624,5.95069,191),(5448,0.907425,631),(5554,0.907425,631),(5555,0.907425,631),(5556,0.907425,631),(5585,0.907425,631),(5586,0.907425,631),(9209,0.907425,631),(9989,0.907425,631),(9990,0.907425,631),(11709,0.907425,631),(16622,0.907425,631),(18515,0.907425,631),(26,1.30377,26),(139,1.30377,26),(163,1.30377,26),(365,1.30377,26),(371,1.30377,26),(373,1.30377,26),(511,1.30377,26),(774,1.30377,26),(2152,1.30377,26),(2153,1.30377,26),(2299,1.30377,26),(10911,1.30377,26),(10912,1.30377,26),(10913,1.30377,26),(137,0.721132,45),(414,0.721132,45),(519,0.721132,45),(546,0.721132,45),(547,0.721132,45),(559,0.721132,45),(569,0.721132,45),(570,0.721132,45),(571,0.721132,45),(646,0.721132,45),(828,0.721132,45),(829,0.721132,45),(987,0.721132,45),(1065,0.721132,45),(3639,0.721132,45),(3669,0.721132,45),(3670,0.721132,45),(10487,0.721132,45),(10626,0.721132,45),(10627,0.721132,45),(10628,0.721132,45),(10630,0.721132,45),(11730,0.721132,45),(11731,0.721132,45),(14708,0.721132,45),(22496,0.721132,45),(22497,0.721132,45),(16257,0.82197,2264),(16356,0.82197,2264),(16357,0.82197,2264),(16358,0.82197,2264),(21304,0.82197,2264),(21328,0.82197,2264),(22938,0.82197,2264),(8410,5.85247,1171),(8411,5.85247,1171),(8412,5.85247,1171),(17059,5.85247,1171),(17060,5.85247,1171),(92,2.45812,92),(482,2.45812,92),(2303,2.45812,92),(3194,2.45812,92),(5297,2.45812,92),(7350,2.45812,92),(9229,2.45812,92),(11086,2.45812,92),(11088,2.45812,92),(11090,2.45812,92),(11142,2.45812,92),(12149,2.45812,92),(12152,2.45812,92),(13095,2.45812,92),(14522,2.45812,92),(14985,2.45812,92),(15335,2.45812,92),(15338,2.45812,92),(15356,2.45812,92),(15452,2.45812,92),(15495,2.45812,92),(15496,2.45812,92),(15497,2.45812,92),(15498,2.45812,92),(17655,2.45812,92),(18410,2.45812,92),(2420,0.64516,377),(4590,0.64516,377),(16998,0.64516,377),(20229,0.64516,377),(20230,0.64516,377),(20688,0.64516,377),(22523,0.64516,377),(14346,1.64817,1913),(14347,1.64817,1913),(14576,1.64817,1913),(14577,1.64817,1913),(14777,1.64817,1913),(22350,1.64817,1913),(22631,1.64817,1913),(16035,3.3904,2242),(16173,3.3904,2242),(179,5.19694,27),(1230,5.19694,27),(1231,5.19694,27),(1232,5.19694,27),(1241,5.19694,27),(1308,5.19694,27),(1309,5.19694,27),(1451,5.19694,27),(1452,5.19694,27),(1453,5.19694,27),(1454,5.19694,27),(2767,5.19694,27),(2768,5.19694,27),(6081,5.19694,27),(10283,5.19694,27),(10284,5.19694,27),(10914,5.19694,27),(10915,5.19694,27),(10916,5.19694,27),(10917,5.19694,27),(10918,5.19694,27),(10919,5.19694,27),(6268,5.19694,711),(6269,5.19694,711),(6270,5.19694,711),(927,1.7432,146),(929,1.7432,146),(931,1.7432,146),(933,1.7432,146),(934,1.7432,146),(950,1.7432,146),(1050,1.7432,146),(1076,1.7432,146),(1077,1.7432,146),(1078,1.7432,146),(3206,1.7432,146),(3207,1.7432,146),(3208,1.7432,146),(3209,1.7432,146),(3220,1.7432,146),(6767,1.7432,146),(7336,1.7432,146),(10269,1.7432,146),(10579,1.7432,146),(10943,1.7432,146),(10944,1.7432,146),(10945,1.7432,146),(10946,1.7432,146),(13644,1.7432,146),(13990,1.7432,146),(15684,1.7432,146),(11903,2.00354,1751),(12292,2.00354,1751),(65,1.58885,65),(229,1.58885,65),(235,1.58885,65),(236,1.58885,65),(237,1.58885,65),(238,1.58885,65),(239,1.58885,65),(1170,1.58885,65),(1531,1.58885,65),(1910,1.58885,65),(1911,1.58885,65),(1951,1.58885,65),(1952,1.58885,65),(2325,1.58885,65),(14585,1.58885,65),(16043,1.58885,65),(16044,1.58885,65),(20922,1.58885,65),(20932,1.58885,65),(850,2.94108,139),(1913,2.94108,139),(6172,2.94108,139),(6173,2.94108,139),(6688,2.94108,139),(7949,2.94108,139),(7972,2.94108,139),(10950,2.94108,139),(16313,2.94108,139),(17321,2.94108,139),(268,0.777049,11),(483,0.777049,11),(568,0.777049,11),(580,0.777049,11),(904,0.777049,11),(911,0.777049,11),(1015,0.777049,11),(1016,0.777049,11),(1017,0.777049,11),(1018,0.777049,11),(1176,0.777049,11),(1185,0.777049,11),(1213,0.777049,11),(2452,0.777049,11),(3023,0.777049,11),(6806,0.777049,11),(6809,0.777049,11),(6810,0.777049,11),(6811,0.777049,11),(7554,0.777049,11),(10814,0.777049,11),(10816,0.777049,11),(10818,0.777049,11),(10819,0.777049,11),(12345,0.777049,11),(16944,0.777049,11),(20364,0.777049,11),(15,0.291434,15),(591,1.07611,117),(593,1.07611,117),(691,1.07611,117),(693,1.07611,117),(1262,1.07611,117),(16128,1.07611,117),(16406,1.07611,117),(158,0.618543,70),(200,0.618543,70),(201,0.618543,70),(370,0.618543,70),(518,0.618543,70),(533,0.618543,70),(535,0.618543,70),(612,0.618543,70),(732,0.618543,70),(733,0.618543,70),(734,0.618543,70),(735,0.618543,70),(775,0.618543,70),(1019,0.618543,70),(3507,0.618543,70),(5231,0.618543,70),(7847,0.618543,70),(7848,0.618543,70),(11473,0.618543,70),(11489,0.618543,70),(21691,0.618543,70),(1245,0.619539,174),(2606,0.619539,174),(11396,0.619539,174),(11397,0.619539,174),(11399,0.619539,174),(16167,0.619539,174),(98,0.334588,98),(330,0.334588,98),(1048,0.334588,98),(17197,0.334588,98),(14552,1.69449,1951),(14553,1.69449,1951),(14554,1.69449,1951),(20904,1.69449,1951),(20921,1.69449,1951),(20933,1.69449,1951),(16154,1.72663,2256),(16328,1.72663,2256),(10193,3.78808,1451),(11997,3.78808,1451),(12168,3.78808,1451),(12171,3.78808,1451),(12189,3.78808,1451),(107,0.574185,107),(173,0.574185,107),(226,0.574185,107),(459,0.574185,107),(638,0.574185,107),(17196,0.574185,107),(146,1.58768,9),(3942,1.58768,9),(5430,1.58768,9),(8475,1.58768,9),(10700,1.58768,9),(10701,1.58768,9),(10703,1.58768,9),(10771,1.58768,9),(10772,1.58768,9),(11649,1.58768,9),(14365,1.58768,9),(14366,1.58768,9),(14368,1.58768,9),(14560,1.58768,9),(14592,1.58768,9),(14593,1.58768,9),(14594,1.58768,9),(14695,1.58768,9),(16169,1.58768,9),(16254,1.58768,9),(16255,1.58768,9),(16256,1.58768,9),(21257,1.58768,9),(21300,1.58768,9),(21303,1.58768,9),(21479,1.58768,9),(21481,1.58768,9),(21482,1.58768,9),(21587,1.58768,9),(22335,1.58768,9),(13610,0.681567,1831),(13649,0.681567,1831),(13730,0.681567,1831),(15671,0.681567,1831),(2419,0.476941,220),(5125,0.476941,220),(15221,0.476941,220),(15291,0.476941,220),(20687,0.476941,220),(20698,0.476941,220),(17073,3.56611,2315),(17832,3.56611,2315),(8570,16.4389,1551),(17251,16.4389,1551),(21401,16.4389,1551),(4642,0.79063,392),(4643,0.79063,392),(4647,0.79063,392),(6077,0.79063,392),(6088,0.79063,392),(6090,0.79063,392),(6091,0.79063,392),(6092,0.79063,392),(6093,0.79063,392),(6095,0.79063,392),(6096,0.79063,392),(6098,0.79063,392),(6099,0.79063,392),(6100,0.79063,392),(6101,0.79063,392),(6102,0.79063,392),(6110,0.79063,392),(6111,0.79063,392),(6112,0.79063,392),(6113,0.79063,392),(6120,0.79063,392),(11381,0.79063,392),(15974,0.79063,392),(164,0.571724,126),(4860,1.22753,471),(9418,1.22753,471),(9427,1.22753,471),(9433,1.22753,471),(9441,1.22753,471),(12370,1.22753,471),(12371,1.22753,471),(12372,1.22753,471),(12373,1.22753,471),(12374,1.22753,471),(14,0.291434,14),(245,1.29205,76),(705,1.29205,76),(1004,1.29205,76),(7449,1.29205,76),(14389,1.29205,76),(14528,1.29205,76),(15101,1.29205,76),(15234,1.29205,76),(17170,1.29205,76),(17533,1.29205,76),(18412,1.29205,76),(18413,1.29205,76),(15303,5.85247,2194),(18,0.716148,18),(390,0.716148,18),(69,2.14728,69),(171,2.14728,69),(453,2.14728,69),(549,2.14728,69),(1068,2.14728,69),(1108,2.14728,69),(1109,2.14728,69),(1127,2.14728,69),(1128,2.14728,69),(1129,2.14728,69),(1161,2.14728,69),(1162,2.14728,69),(2075,2.14728,69),(2169,2.14728,69),(2170,2.14728,69),(2302,2.14728,69),(2533,2.14728,69),(3235,2.14728,69),(3255,2.14728,69),(4759,2.14728,69),(4766,2.14728,69),(5781,2.14728,69),(8109,2.14728,69),(8550,2.14728,69),(9587,2.14728,69),(9588,2.14728,69),(9589,2.14728,69),(11710,2.14728,69),(11711,2.14728,69),(11712,2.14728,69),(12110,2.14728,69),(12163,2.14728,69),(12164,2.14728,69),(12239,2.14728,69),(12310,2.14728,69),(13174,2.14728,69),(14328,2.14728,69),(14385,2.14728,69),(14505,2.14728,69),(14506,2.14728,69),(14507,2.14728,69),(14511,2.14728,69),(14512,2.14728,69),(16021,2.14728,69),(16840,2.14728,69),(17461,2.14728,69),(17472,2.14728,69),(17558,2.14728,69),(17559,2.14728,69),(18359,2.14728,69),(19456,2.14728,69),(19662,2.14728,69),(20039,2.14728,69),(20433,2.14728,69),(20816,2.14728,69),(21246,2.14728,69),(15295,1.90658,2192),(93,0.301936,93),(162,0.301936,93),(327,0.301936,93),(752,0.301936,93),(1021,0.429918,150),(16155,1.72663,2257),(16329,1.72663,2257),(304,0.220247,111),(589,0.220247,111),(5369,0.220247,111),(6193,0.220247,111),(6909,0.220247,111),(7920,0.220247,111),(14940,0.220247,111),(14941,0.220247,111),(14942,0.220247,111),(16138,0.220247,111),(17034,0.220247,111),(5187,1.4405,591),(5234,1.4405,591),(5246,1.4405,591),(5327,1.4405,591),(5490,1.4405,591),(5494,1.4405,591),(8549,1.4405,591),(8714,1.4405,591),(8715,1.4405,591),(8716,1.4405,591),(10315,1.4405,591),(11373,1.4405,591),(11374,1.4405,591),(13490,1.4405,591),(13629,1.4405,591),(14502,1.4405,591),(14503,1.4405,591),(14504,1.4405,591),(14510,1.4405,591),(14515,1.4405,591),(14516,1.4405,591),(14525,1.4405,591),(15538,1.4405,591),(18245,1.4405,591),(18360,1.4405,591),(18361,1.4405,591),(18404,1.4405,591),(19916,1.4405,591),(19917,1.4405,591),(20432,1.4405,591),(21130,1.4405,591),(23684,1.4405,591),(104,0.58764,104),(282,0.58764,104),(637,0.58764,104),(790,0.58764,104),(816,0.58764,104),(12046,0.58764,104),(15649,1.68814,2215),(16040,1.68814,2215),(20465,1.68814,2215),(15902,1.90901,2233),(15904,1.90901,2233),(15787,12.3032,2225),(18040,0.893829,87),(105,0.587637,105),(166,0.587637,105),(212,0.587637,105),(286,0.587637,105),(534,0.587637,105),(578,0.587637,105),(1558,0.587637,105),(1559,0.587637,105),(4589,0.64516,376),(20231,0.64516,376),(20689,0.64516,376),(14992,27.401,2111),(2418,0.529781,219),(21796,0.529781,219),(23002,0.529781,219),(7709,1.40505,971),(7803,1.40505,971),(7873,1.40505,971),(8390,1.40505,971),(10275,1.40505,971),(10290,1.40505,971),(11632,1.40505,971),(12249,1.40505,971),(14832,1.40505,971),(14994,1.40505,971),(21323,1.40505,971),(22353,1.40505,971),(16888,0.749313,2290),(16889,0.749313,2290),(16890,0.749313,2290),(16891,0.749313,2290),(18038,0.749313,2290),(18878,0.749313,2290),(18879,0.749313,2290),(19611,0.749313,2290),(19616,0.749313,2290),(19618,0.749313,2290),(19718,0.749313,2290),(19892,0.749313,2290),(19944,0.749313,2290),(20104,0.749313,2290),(21040,0.749313,2290),(21048,0.749313,2290),(23268,0.749313,2290),(23269,0.749313,2290),(2240,0.39167,310),(3293,0.39167,310),(6631,0.39167,310),(7872,0.39167,310),(7923,0.39167,310),(9150,0.39167,310),(11069,0.39167,310),(11161,0.39167,310),(11163,0.39167,310),(11668,0.39167,310),(11672,0.39167,310),(14378,0.39167,310),(16124,0.39167,310),(17381,0.39167,310),(1918,3.56611,205),(3166,3.56611,205),(3216,3.56611,205),(5229,3.56611,205),(6028,3.56611,205),(6209,3.56611,205),(6910,3.56611,205),(6912,3.56611,205),(8269,3.56611,205),(9210,3.56611,205),(9490,3.56611,205),(10037,3.56611,205),(10040,3.56611,205),(10041,3.56611,205),(10042,3.56611,205),(10044,3.56611,205),(10317,3.56611,205),(11986,3.56611,205),(12162,3.56611,205),(12232,3.56611,205),(12233,3.56611,205),(12293,3.56611,205),(12309,3.56611,205),(12813,3.56611,205),(12814,3.56611,205),(12815,3.56611,205),(12816,3.56611,205),(14633,3.56611,205),(14674,3.56611,205),(14675,3.56611,205),(18643,3.56611,205),(20135,3.56611,205),(123,0.795346,123),(175,0.795346,123),(376,0.795346,123),(384,0.795346,123),(489,0.795346,123),(493,0.795346,123),(500,0.795346,123),(501,0.795346,123),(512,0.795346,123),(528,0.795346,123),(543,0.795346,123),(544,0.795346,123),(603,0.795346,123),(609,0.795346,123),(662,0.795346,123),(1216,0.795346,123),(1887,0.795346,123),(3196,0.795346,123),(3199,0.795346,123),(10793,0.795346,123),(10850,0.795346,123),(10851,0.795346,123),(10852,0.795346,123),(10856,0.795346,123),(16017,0.795346,123),(10990,1.8156,1532),(160,0.740026,41),(606,0.740026,41),(611,0.740026,41),(721,0.740026,41),(722,0.740026,41),(723,0.740026,41),(726,0.740026,41),(730,0.740026,41),(763,0.740026,41),(764,0.740026,41),(765,0.740026,41),(830,0.740026,41),(976,0.740026,41),(990,0.740026,41),(991,0.740026,41),(1193,0.740026,41),(1194,0.740026,41),(4905,0.740026,41),(5945,0.740026,41),(6528,0.740026,41),(6529,0.740026,41),(6530,0.740026,41),(6533,0.740026,41),(7367,0.740026,41),(10285,0.740026,41),(11165,0.740026,41),(11166,0.740026,41),(11609,0.740026,41),(11610,0.740026,41),(11611,0.740026,41),(15401,0.740026,41),(15364,14.7664,2197),(15365,14.7664,2197),(134,0.389077,134),(4466,0.389077,134),(4467,0.389077,134),(4468,0.389077,134),(7937,0.389077,134),(10090,0.389077,134),(14339,3.13061,1916),(14340,3.13061,1916),(14341,3.13061,1916),(14342,3.13061,1916),(14343,3.13061,1916),(14344,3.13061,1916),(14345,3.13061,1916),(14388,3.13061,1916),(15271,3.13061,1916),(15289,3.13061,1916),(10318,4.19449,1471),(4730,0.364365,312),(7922,0.364365,312),(9754,0.364365,312),(10199,0.364365,312),(10857,0.364365,312),(11157,0.364365,312),(11164,0.364365,312),(23,0.564404,23),(280,0.564404,23),(19075,0.789382,2460),(20686,0.789382,2460),(1529,0.895334,190),(15226,2.29313,2191),(1551,0.257085,199),(1555,0.257085,199),(1556,0.257085,199),(12434,0.257085,199),(21,0.564404,22),(22,0.564404,22),(74,0.564404,22),(86,0.564404,22),(87,0.564404,22),(88,0.564404,22),(101,0.564404,22),(106,0.564404,22),(126,0.564404,22),(218,0.564404,22),(561,0.564404,22),(358,1.6829,81),(360,1.6829,81),(470,1.6829,81),(681,1.6829,81),(682,1.6829,81),(767,1.6829,81),(1145,1.6829,81),(1146,1.6829,81),(1306,1.6829,81),(1749,1.6829,81),(1751,1.6829,81),(2028,1.6829,81),(2236,1.6829,81),(2568,1.6829,81),(2569,1.6829,81),(4266,1.6829,81),(4267,1.6829,81),(4535,1.6829,81),(4754,1.6829,81),(7489,1.6829,81),(8833,1.6829,81),(8834,1.6829,81),(9471,1.6829,81),(9594,1.6829,81),(9595,1.6829,81),(11137,1.6829,81),(11138,1.6829,81),(11139,1.6829,81),(11140,1.6829,81),(11141,1.6829,81),(12436,1.6829,81),(15463,1.6829,81),(15584,1.6829,81),(19796,1.6829,81),(103,0.586961,103),(227,0.586961,103),(429,0.586961,103),(17195,0.586961,103),(19620,0.586961,103),(1421,1.21072,181),(14252,1.57318,1871),(14253,1.57318,1871),(14254,1.57318,1871),(14272,1.57318,1871),(14273,1.57318,1871),(15547,1.57318,1871),(16216,1.57318,1871),(17288,1.57318,1871),(19003,1.57318,1871),(19113,1.57318,1871),(19702,1.57318,1871),(20724,1.57318,1871),(21247,1.57318,1871),(17192,0.641976,2328),(20658,0.641976,2328),(7469,2.50659,871),(7470,2.50659,871),(7511,2.50659,871),(7619,2.50659,871),(8971,2.50659,871),(9028,2.50659,871),(9029,2.50659,871),(9354,2.50659,871),(9469,2.50659,871),(10031,2.50659,871),(11089,2.50659,871),(11093,2.50659,871),(11094,2.50659,871),(11104,2.50659,871),(11105,2.50659,871),(11107,2.50659,871),(11108,2.50659,871),(11143,2.50659,871),(11144,2.50659,871),(12151,2.50659,871),(12156,2.50659,871),(12157,2.50659,871),(12159,2.50659,871),(13096,2.50659,871),(15339,2.50659,871),(15464,2.50659,871),(15467,2.50659,871),(15468,2.50659,871),(15682,2.50659,871),(15929,2.50659,871),(16135,0.491723,2251),(20900,0.491723,2251),(4680,0.488907,317),(6388,0.488907,317),(6546,0.488907,317),(9751,0.488907,317),(9752,0.488907,317),(11394,0.488907,317),(11669,0.488907,317),(14394,0.488907,317),(19800,0.488907,317),(299,0.677849,118),(337,0.677849,118),(17302,0.677849,118),(5233,7.43455,1492),(12824,7.43455,1492),(17548,7.43455,1492),(14334,1.78984,1911),(14335,1.78984,1911),(14336,1.78984,1911),(14573,1.78984,1911),(14574,1.78984,1911),(14575,1.78984,1911),(14776,1.78984,1911),(19014,1.78984,1911),(19039,1.78984,1911),(21241,1.78984,1911),(21896,1.78984,1911),(6760,2.637,1031),(7903,2.637,1031),(7976,2.637,1031),(8310,2.637,1031),(8313,2.637,1031),(8315,2.637,1031),(8711,2.637,1031),(9489,2.637,1031),(9581,2.637,1031),(9753,2.637,1031),(10116,2.637,1031),(12509,2.637,1031),(12529,2.637,1031),(12890,2.637,1031),(12891,2.637,1031),(19074,0.689637,2459),(129,0.568743,129),(794,0.568743,129),(796,0.568743,129),(17194,0.568743,129),(22806,0.568743,129),(148,0.488126,12),(883,0.488126,12),(967,0.488126,12),(968,0.488126,12),(969,0.488126,12),(970,0.488126,12),(971,0.488126,12),(972,0.488126,12),(974,0.488126,12),(1223,0.488126,12),(1225,0.488126,12),(1237,0.488126,12),(1255,0.488126,12),(1256,0.488126,12),(1350,0.488126,12),(1351,0.488126,12),(1352,0.488126,12),(2143,0.488126,12),(2162,0.488126,12),(2163,0.488126,12),(2164,0.488126,12),(2165,0.488126,12),(2166,0.488126,12),(2167,0.488126,12),(2294,0.488126,12),(2295,0.488126,12),(2296,0.488126,12),(3012,0.488126,12),(3013,0.488126,12),(3021,0.488126,12),(3022,0.488126,12),(3218,0.488126,12),(4578,0.488126,12),(6812,0.488126,12),(6813,0.488126,12),(6814,0.488126,12),(6815,0.488126,12),(10282,0.488126,12),(10869,0.488126,12),(10870,0.488126,12),(10871,0.488126,12),(10872,0.488126,12),(10873,0.488126,12),(10874,0.488126,12),(10875,0.488126,12),(10876,0.488126,12),(10877,0.488126,12),(8011,2.98932,1091),(314,1.07611,116),(317,1.07611,116),(590,1.07611,116),(692,1.07611,116),(16228,1.07611,116),(16275,1.07611,116),(17304,1.07611,116),(19273,3.00281,2480),(19326,3.00281,2480),(22425,3.00281,2480),(10993,2.09059,1533),(2185,1.88894,212),(2186,1.88894,212),(2187,1.88894,212),(2188,1.88894,212),(2189,1.88894,212),(2190,1.88894,212),(4434,1.88894,212),(4603,1.88894,212),(6084,1.88894,212),(6086,1.88894,212),(6087,1.88894,212),(168,1.3749,2),(480,1.3749,2),(631,1.3749,2),(697,1.3749,2),(713,1.3749,2),(862,1.3749,2),(863,1.3749,2),(1081,1.3749,2),(1084,1.3749,2),(1086,1.3749,2),(1549,1.3749,2),(2022,1.3749,2),(2023,1.3749,2),(2024,1.3749,2),(2567,1.3749,2),(2832,1.3749,2),(3018,1.3749,2),(3032,1.3749,2),(3033,1.3749,2),(3034,1.3749,2),(3386,1.3749,2),(4256,1.3749,2),(5712,1.3749,2),(6817,1.3749,2),(8389,1.3749,2),(9009,1.3749,2),(9010,1.3749,2),(9011,1.3749,2),(9012,1.3749,2),(9013,1.3749,2),(9014,1.3749,2),(14382,1.3749,2),(14497,1.3749,2),(18313,1.3749,2),(18315,1.3749,2),(18316,1.3749,2),(18317,1.3749,2),(22336,1.3749,2),(39,1.70267,39),(140,1.70267,39),(1165,1.70267,39),(6089,1.70267,39),(16196,1.70267,39),(16198,1.70267,39),(1545,1.58088,195),(10952,1.58088,195),(16277,1.58088,195),(17323,1.58088,195),(17389,1.58088,195),(18088,1.58088,195),(17856,0.661393,2388),(19258,0.661393,2388),(125,0.571724,125),(197,0.571724,125),(15369,0.673921,2198),(15984,0.673921,2198),(97,0.318619,97),(213,0.318619,97),(232,0.318619,97),(285,0.318619,97),(20,0.571724,20),(1917,1.95958,194),(1991,1.95958,194),(1992,1.95958,194),(2161,1.95958,194),(8013,1.95958,194),(10957,1.95958,194),(15667,1.95958,194),(16872,1.95958,194),(16873,1.95958,194),(15191,3.18313,2171),(14778,0.762378,2071),(14779,0.762378,2071),(1267,2.17383,175),(2158,2.17383,175),(6294,2.17383,175),(8471,2.17383,175),(9345,2.17383,175),(15404,2.17383,175),(15405,2.17383,175),(15991,2.17383,175),(19728,2.17383,175),(4874,1.16536,511),(9444,1.16536,511),(9447,1.16536,511),(9448,1.16536,511),(99,0.301936,99),(186,0.301936,99),(375,0.301936,99),(660,0.301936,99),(15655,5.69079,2217),(13,0.291434,13),(172,1.1476,3),(1226,1.1476,3),(1258,1.1476,3),(1348,1.1476,3),(1349,1.1476,3),(2290,1.1476,3),(2292,1.1476,3),(2293,1.1476,3),(4441,1.1476,3),(4583,1.1476,3),(9409,1.1476,3),(9410,1.1476,3),(9411,1.1476,3),(9413,1.1476,3),(9414,1.1476,3),(9415,1.1476,3),(9417,1.1476,3),(9419,1.1476,3),(9420,1.1476,3),(9421,1.1476,3),(9422,1.1476,3),(9425,1.1476,3),(9426,1.1476,3),(9428,1.1476,3),(9430,1.1476,3),(9432,1.1476,3),(9434,1.1476,3),(9435,1.1476,3),(9436,1.1476,3),(9437,1.1476,3),(9439,1.1476,3),(9442,1.1476,3),(9445,1.1476,3),(9446,1.1476,3),(9532,1.1476,3),(9533,1.1476,3),(11370,1.1476,3),(11638,1.1476,3),(11639,1.1476,3),(11640,1.1476,3),(15975,1.1476,3),(3020,1.41896,271),(16139,1.72663,2254),(16326,1.72663,2254),(15654,5.27596,2216),(15656,5.27596,2216),(15657,5.27596,2216),(15658,5.27596,2216),(15693,5.27596,2216),(15694,5.27596,2216),(15695,5.27596,2216),(71,1.47561,71),(367,1.47561,71),(378,1.47561,71),(379,1.47561,71),(514,1.47561,71),(548,1.47561,71),(1150,1.47561,71),(17076,1.47561,71),(22162,1.47561,71),(5207,3.38522,611),(5865,3.38522,611),(5866,3.38522,611),(6189,3.38522,611),(6190,3.38522,611),(6191,3.38522,611),(6192,3.38522,611),(8816,3.38522,611),(8818,3.38522,611),(8819,3.38522,611),(9555,3.38522,611),(9556,3.38522,611),(9557,3.38522,611),(22902,3.38522,611),(16629,0.781797,2471),(16839,0.781797,2471),(21347,0.781797,2471),(21359,0.781797,2471),(16641,0.781797,2472),(19211,0.781797,2472),(21348,0.781797,2472),(17,0.571724,17),(243,0.571724,17),(1455,3.55635,187),(1460,3.55635,187),(12051,3.55635,187),(17310,3.55635,187),(860,2.7682,67),(1921,2.7682,67),(2429,2.7682,67),(5850,2.7682,67),(6352,2.7682,67),(8810,2.7682,67),(8811,2.7682,67),(12750,2.7682,67),(12929,2.7682,67),(13489,2.7682,67),(17846,2.7682,67),(20249,2.7682,67),(20882,2.7682,67),(21213,2.7682,67),(1097,1.47452,72),(1159,1.47452,72),(5299,1.47452,72),(5386,1.47452,72),(108,0.619206,108),(190,0.619206,108),(198,0.619206,108),(263,0.619206,108),(277,0.619206,108),(658,0.619206,108),(795,0.619206,108),(17523,0.619206,108),(17556,0.619206,108),(18921,0.619206,108),(298,1.07507,119),(316,1.07507,119),(592,1.07507,119),(634,1.07507,119),(665,1.07507,119),(17303,1.07507,119),(10433,1.44297,1491),(14697,1.44297,1491),(15297,1.44297,1491),(16175,1.44297,1491),(22337,1.44297,1491),(846,4.83156,133),(867,4.83156,133),(992,4.83156,133),(993,4.83156,133),(994,4.83156,133),(995,4.83156,133),(1467,4.83156,133),(1752,4.83156,133),(1754,4.83156,133),(1816,4.83156,133),(2425,4.83156,133),(2601,4.83156,133),(2602,4.83156,133),(2836,4.83156,133),(6431,4.83156,133),(10244,4.83156,133),(14390,4.83156,133),(1025,0.606043,152),(17158,1.44225,2325),(4587,0.64516,374),(20685,0.64516,374),(21049,0.64516,374),(8329,0.966239,1151),(9944,0.966239,1151),(10036,0.966239,1151),(12002,0.966239,1151),(12029,0.966239,1151),(12030,0.966239,1151),(12161,0.966239,1151),(12391,0.966239,1151),(13029,0.966239,1151),(13030,0.966239,1151),(13031,0.966239,1151),(13032,0.966239,1151),(15329,0.966239,1151),(19894,0.966239,1151),(7570,1.44068,931),(14555,1.44068,931),(16164,1.44068,931),(20125,1.44068,931),(20479,1.44068,931),(20568,1.44068,931),(1547,1.11556,197),(2237,1.11556,197),(2238,1.11556,197),(14951,1.11556,197),(18351,1.11556,197),(18352,1.11556,197),(18406,1.11556,197),(18471,1.11556,197),(11914,2.13807,1753),(15343,2.13807,1753),(15346,2.13807,1753),(15392,2.13807,1753),(11380,15.7013,1591),(21400,15.7013,1591),(301,0.550426,74),(308,0.550426,74),(309,0.550426,74),(310,0.550426,74),(341,0.550426,74),(556,0.550426,74),(584,0.550426,74),(586,0.550426,74),(656,0.550426,74),(2438,0.550426,74),(2441,0.550426,74),(2444,0.550426,74),(2528,0.550426,74),(11354,0.550426,74),(12048,0.550426,74),(17330,0.550426,74),(19305,0.550426,74),(20488,0.550426,74),(15901,1.90901,2232),(15903,1.90901,2232),(170,3.09442,35),(791,3.09442,35),(1099,3.09442,35),(1133,3.09442,35),(1134,3.09442,35),(1135,3.09442,35),(1136,3.09442,35),(1137,3.09442,35),(3217,3.09442,35),(3219,3.09442,35),(4945,3.09442,35),(6751,3.09442,35),(10039,3.09442,35),(10043,3.09442,35),(12812,3.09442,35),(14634,3.09442,35),(14673,3.09442,35),(15960,3.09442,35),(20739,3.09442,35),(3127,3.8183,290),(3146,3.8183,290),(10753,3.8183,290),(8509,5.05426,1211),(8510,5.05426,1211),(8511,5.05426,1211),(8512,5.05426,1211),(13209,5.05426,1211),(13210,5.05426,1211),(20294,5.05426,1211),(14372,1.35267,1915),(14373,1.35267,1915),(14374,1.35267,1915),(14375,1.35267,1915),(14376,1.35267,1915),(14377,1.35267,1915),(14581,1.35267,1915),(1200,0.387555,168),(1201,0.387555,168),(1202,0.387555,168),(5432,0.387555,168),(9782,0.387555,168),(10255,0.387555,168),(10256,0.387555,168),(10970,0.387555,168),(10973,0.387555,168),(10974,0.387555,168),(10975,0.387555,168),(10977,0.387555,168),(10978,0.387555,168),(11472,0.387555,168),(11492,0.387555,168),(915,1.02296,144),(984,1.02296,144),(985,1.02296,144),(8782,1.02296,144),(8783,1.02296,144),(9534,1.02296,144),(10690,1.02296,144),(10698,1.02296,144),(10702,1.02296,144),(10723,1.02296,144),(10728,1.02296,144),(10731,1.02296,144),(10733,1.02296,144),(10750,1.02296,144),(10751,1.02296,144),(10752,1.02296,144),(10994,1.02296,144),(11423,1.02296,144),(16178,1.02296,144),(20365,1.02296,144),(174,0.795346,10),(269,0.795346,10),(275,0.795346,10),(355,0.795346,10),(374,0.795346,10),(383,0.795346,10),(487,0.795346,10),(488,0.795346,10),(494,0.795346,10),(550,0.795346,10),(551,0.795346,10),(558,0.795346,10),(667,0.795346,10),(668,0.795346,10),(714,0.795346,10),(847,0.795346,10),(848,0.795346,10),(858,0.795346,10),(859,0.795346,10),(965,0.795346,10),(986,0.795346,10),(8598,0.795346,10),(10642,0.795346,10),(10643,0.795346,10),(10790,0.795346,10),(10791,0.795346,10),(10792,0.795346,10),(10795,0.795346,10),(3004,2.4522,250),(6838,2.4522,250),(6841,2.4522,250),(6842,2.4522,250),(7845,2.4522,250),(9758,2.4522,250),(9793,2.4522,250),(11174,2.4522,250),(11178,2.4522,250),(14698,2.4522,250),(14705,2.4522,250),(15941,2.4522,250),(15942,2.4522,250),(16181,2.4522,250),(17308,2.4522,250),(17574,4.05259,2366),(17709,4.05259,2366),(17711,4.05259,2366),(17795,4.05259,2366),(17796,4.05259,2366),(17797,4.05259,2366),(17798,4.05259,2366),(17800,4.05259,2366),(17834,4.05259,2366),(19771,4.05259,2366),(19777,4.05259,2366),(19985,4.05259,2366),(19986,4.05259,2366),(19987,4.05259,2366),(19999,4.05259,2366),(20749,4.05259,2366),(20775,4.05259,2366),(16977,62.543,2297),(2421,0.269797,222),(10648,0.269797,222),(14430,0.269797,222),(20103,0.269797,222),(14544,3.00281,1973),(128,0.567331,128),(588,0.567331,128),(793,0.567331,128),(1138,0.567331,128),(1214,0.567331,128),(1552,0.567331,128),(1902,0.567331,128),(1903,0.567331,128),(2681,0.567331,128),(2682,0.567331,128),(2683,0.567331,128),(11357,0.567331,128),(479,4.44059,90),(3210,4.44059,90),(3211,4.44059,90),(3212,4.44059,90),(6756,4.44059,90),(6757,4.44059,90),(10889,4.44059,90),(10890,4.44059,90),(10891,4.44059,90),(10892,4.44059,90),(10893,4.44059,90),(10894,4.44059,90),(12589,4.44059,90),(94,0.291431,94),(215,0.291431,94),(423,0.291431,94),(424,0.291431,94),(425,0.291431,94),(900,0.291431,94),(141,4.56157,1),(601,4.56157,1),(798,4.56157,1),(1073,4.56157,1),(1074,4.56157,1),(1075,4.56157,1),(2076,4.56157,1),(2173,4.56157,1),(2174,4.56157,1),(2175,4.56157,1),(2309,4.56157,1),(2743,4.56157,1),(4486,4.56157,1),(4906,4.56157,1),(7344,4.56157,1),(7345,4.56157,1),(8392,4.56157,1),(8797,4.56157,1),(8802,4.56157,1),(11713,4.56157,1),(12338,4.56157,1),(12339,4.56157,1),(12340,4.56157,1),(12341,4.56157,1),(12342,4.56157,1),(12343,4.56157,1),(12344,4.56157,1),(7549,3.84789,911),(7671,3.84789,911),(7672,3.84789,911),(8182,3.84789,911),(9030,3.84789,911),(9031,3.84789,911),(9032,3.84789,911),(10996,3.84789,911),(11009,3.84789,911),(11010,3.84789,911),(12333,3.84789,911),(12335,3.84789,911),(12336,3.84789,911),(13009,3.84789,911),(13211,3.84789,911),(13212,3.84789,911),(14523,3.84789,911),(14524,3.84789,911),(15379,3.84789,911),(15386,3.84789,911),(15582,3.84789,911),(15659,3.84789,911),(20329,3.84789,911),(16064,3.16274,2245),(473,1.59357,84),(975,1.59357,84),(1102,1.59357,84),(2234,1.59357,84),(2690,1.59357,84),(2691,1.59357,84),(2692,1.59357,84),(2693,1.59357,84),(2694,1.59357,84),(2695,1.59357,84),(2696,1.59357,84),(2697,1.59357,84),(2698,1.59357,84),(3731,1.59357,84),(4445,1.59357,84),(5285,1.59357,84),(5746,1.59357,84),(5747,1.59357,84),(5780,1.59357,84),(5906,1.59357,84),(5989,1.59357,84),(6534,1.59357,84),(7617,1.59357,84),(8049,1.59357,84),(8179,1.59357,84),(8209,1.59357,84),(8289,1.59357,84),(8395,1.59357,84),(10798,1.59357,84),(10799,1.59357,84),(10800,1.59357,84),(10801,1.59357,84),(10802,1.59357,84),(10803,1.59357,84),(10804,1.59357,84),(10805,1.59357,84),(10806,1.59357,84),(13929,1.59357,84),(17078,1.59357,84),(17707,1.59357,84),(2851,2.96065,230),(7352,2.96065,230),(12195,2.96065,230),(12196,2.96065,230),(12197,2.96065,230),(12198,2.96065,230),(12204,2.96065,230),(12206,2.96065,230),(12208,2.96065,230),(12210,2.96065,230),(16011,0.311102,2239),(130,1.77501,130),(348,1.77501,130),(1468,1.77501,130),(6686,1.77501,130),(8609,1.77501,130),(8610,1.77501,130),(8611,1.77501,130),(8612,1.77501,130),(10543,1.77501,130),(10691,1.77501,130),(11658,1.77501,130),(12990,1.77501,130),(14556,1.77501,130),(17446,1.77501,130),(19989,1.77501,130),(19991,1.77501,130),(20607,1.77501,130),(21069,1.77501,130),(19321,0.541359,115),(1246,1.95724,172),(1247,1.95724,172),(1248,1.95724,172),(1817,1.95724,172),(1818,1.95724,172),(1819,1.95724,172),(1940,1.95724,172),(2426,1.95724,172),(2598,1.95724,172),(2599,1.95724,172),(2600,1.95724,172),(2835,1.95724,172),(2975,1.95724,172),(3213,1.95724,172),(3214,1.95724,172),(3215,1.95724,172),(3900,1.95724,172),(6758,1.95724,172),(10922,1.95724,172),(11371,1.95724,172),(14257,1.95724,172),(15361,1.95724,172),(18269,1.95724,172),(585,0.64376,88),(1067,0.64376,88),(2439,0.64376,88),(2442,0.64376,88),(2445,0.64376,88),(8469,1.99411,1191),(18223,1.99411,1191),(19296,1.99411,1191),(19783,1.99411,1191),(16136,0.772995,2252),(16177,0.772995,2252),(6353,1.69904,731),(6380,1.69904,731),(10729,1.69904,731),(14591,1.69904,731),(15381,0.441506,2201),(15382,0.441506,2201),(17563,0.441506,2201),(876,0.841434,77),(2721,0.841434,77),(2722,0.841434,77),(2723,0.841434,77),(7850,0.841434,77),(10034,0.841434,77),(11714,0.841434,77),(12043,0.841434,77),(12064,0.841434,77),(12337,0.841434,77),(13672,0.841434,77),(13673,0.841434,77),(14425,0.841434,77),(17340,0.841434,77),(15686,10.5868,2221),(2177,0.461522,178),(3233,0.461522,178),(5925,0.461522,178),(5990,0.461522,178),(12191,0.461522,178),(7690,3.06991,1111),(7752,3.06991,1111),(7755,3.06991,1111),(7757,3.06991,1111),(8053,3.06991,1111),(14852,3.06991,1111),(21296,3.06991,1111),(16063,0.409354,2244),(16176,0.409354,2244),(1061,2.16457,156),(1693,2.16457,156),(7858,2.16457,156),(7864,2.16457,156),(9760,2.16457,156),(10006,2.16457,156),(10612,2.16457,156),(10613,2.16457,156),(10699,2.16457,156),(12818,2.16457,156),(12819,2.16457,156),(14692,2.16457,156),(14693,2.16457,156),(14700,2.16457,156),(14701,2.16457,156),(15958,2.16457,156),(15961,2.16457,156),(15962,2.16457,156),(16159,2.16457,156),(16174,2.16457,156),(16188,2.16457,156),(16206,2.16457,156),(16214,2.16457,156),(16215,2.16457,156),(9723,5.59332,1291),(328,0.379264,114),(1560,0.379264,114),(4626,0.379264,114),(6302,0.379264,114),(7804,0.379264,114),(12271,0.379264,114),(15092,0.379264,114),(15918,0.379264,114),(16191,0.379264,114),(20781,0.379264,114),(21955,0.379264,114),(16,0.460892,16),(149,0.460892,16),(184,0.460892,16),(208,0.460892,16),(210,0.460892,16),(231,0.460892,16),(300,0.460892,16),(508,0.460892,16),(515,0.460892,16),(555,0.460892,16),(567,0.460892,16),(575,0.460892,16),(576,0.460892,16),(810,0.460892,16),(1107,0.460892,16),(5232,0.460892,16),(15786,22.8419,2224),(89,0.899647,89),(11355,0.899647,89),(19142,0.899647,89),(2490,3.16425,2195),(10992,0.939918,1531),(6888,2.69355,811),(14473,2.69355,811),(20417,2.69355,811),(15742,6.57234,2222),(15743,6.57234,2222),(336,4.13127,63),(366,4.13127,63),(382,4.13127,63),(498,4.13127,63),(520,4.13127,63),(566,4.13127,63),(651,4.13127,63),(709,4.13127,63),(759,4.13127,63),(760,4.13127,63),(821,4.13127,63),(827,4.13127,63),(909,4.13127,63),(910,4.13127,63),(1091,4.13127,63),(1103,4.13127,63),(1104,4.13127,63),(1989,4.13127,63),(2424,4.13127,63),(2542,4.13127,63),(2543,4.13127,63),(2544,4.13127,63),(2545,4.13127,63),(2546,4.13127,63),(4457,4.13127,63),(4458,4.13127,63),(6073,4.13127,63),(6213,4.13127,63),(6214,4.13127,63),(6808,4.13127,63),(7510,4.13127,63),(8014,4.13127,63),(9934,4.13127,63),(11348,4.13127,63),(16866,4.13127,63),(23520,4.13127,63),(6977,1.49552,851),(8189,1.49552,851),(8909,1.49552,851),(19139,1.49552,851),(21209,1.49552,851),(6271,0.441979,712),(15402,0.441979,712),(1072,0.247357,161),(2838,0.247357,161),(17101,2.02107,2321),(17105,2.02107,2321),(17106,2.02107,2321),(17107,2.02107,2321),(17108,2.02107,2321),(17656,2.02107,2321),(17729,2.02107,2321),(18279,2.02107,2321),(19658,2.02107,2321),(19726,2.02107,2321),(16943,2.87648,2356),(1643,0.37678,311),(4681,0.37678,311),(4682,0.37678,311),(4691,0.37678,311),(4731,0.37678,311),(6548,0.37678,311),(17306,0.37678,311),(242,0.571722,101),(267,0.571722,101),(11490,0.408235,1671),(11659,0.408235,1671),(16032,0.408235,1671),(16034,0.408235,1671),(10000,1.68588,229),(10001,1.68588,229),(10002,1.68588,229),(10003,1.68588,229),(12429,1.68588,229),(13340,1.68588,229),(14939,1.68588,229),(13989,1.07611,120),(1063,2.01874,158),(15273,2.01874,158),(15340,2.01874,158),(15376,2.01874,158),(15437,2.01874,158),(15545,2.01874,158),(15697,2.01874,158),(15699,2.01874,158),(15703,2.01874,158),(15705,2.01874,158),(15709,2.01874,158),(15738,2.01874,158),(15741,2.01874,158),(15785,2.01874,158),(15794,2.01874,158),(15013,2.50339,2131),(15215,2.50339,2131),(19269,2.17383,177),(17203,5.85247,2333),(150,1.39729,25),(2160,1.39729,25),(2432,1.39729,25),(2725,1.39729,25),(7618,1.39729,25),(11905,1.39729,25),(11906,1.39729,25),(12350,1.39729,25),(12369,1.39729,25),(13343,1.39729,25),(13713,1.39729,25),(13715,1.39729,25),(2346,1.78437,215),(2830,1.78437,215),(24516,0.840558,59),(24735,0.840558,59),(24520,0.436486,2250),(24524,0.3379,50),(24527,0.704947,60),(24745,1.94139,2764),(24508,0.499118,2208),(24754,0.499118,2208),(24517,0.719317,185),(24523,0.478041,832),(24514,0.608381,55),(22873,0.575728,2671),(24510,0.591506,53),(24725,5.80001,2516),(24419,0.404552,182),(24511,0.404552,182),(24522,0.311612,183),(24420,0.48285,831),(24512,0.48285,831),(24764,0.48285,831),(24519,0.360006,2209),(24756,0.360006,2209),(23725,0.882259,2722),(24515,0.843136,51),(24525,0.413352,56),(22993,5.17658,2679),(24526,0.533162,52),(24616,0.533162,52),(24528,0.503064,186),(24509,0.752004,2248),(24730,0.752004,2248),(24731,0.752004,2248),(24761,0.752004,2248),(24513,0.622809,49),(24755,0.622809,49),(24518,0.48727,57),(24529,0.399961,58),(22750,1.09776,2663),(24013,1.09776,2663),(24043,0.44864,54),(24058,0.44864,54),(24368,0.44864,54),(24371,0.44864,54),(24521,0.44864,54),(24615,0.44864,54),(24392,0.762378,2071),(24393,0.762378,2071),(24569,0.762378,2071),(24620,0.762378,2071),(24019,1.89257,2730),(935,4.81064,792),(1147,4.81064,792),(1148,4.81064,792),(1149,4.81064,792),(7268,4.81064,792),(7269,4.81064,792),(7270,4.81064,792),(1954,5.85247,411),(1955,5.85247,411),(3956,5.85247,411),(4185,5.85247,411),(4732,5.85247,411),(4733,5.85247,411),(4734,5.85247,411),(4735,5.85247,411),(7894,5.85247,411),(7896,5.85247,411),(7897,5.85247,411),(8808,5.85247,411),(9074,5.85247,411),(9535,5.85247,411),(9750,5.85247,411),(10033,5.85247,411),(11032,5.85247,411),(11829,5.85247,411),(14562,5.85247,411),(14780,5.85247,411),(15227,5.85247,411),(16053,5.85247,411),(17262,5.85247,411),(20843,5.85247,411),(23513,5.85247,411),(295,5.85247,791),(2154,5.85247,791),(2155,5.85247,791),(2156,5.85247,791),(2157,5.85247,791),(2297,5.85247,791),(2298,5.85247,791),(4585,5.85247,791),(11011,5.85247,791),(11012,5.85247,791),(20964,5.85247,791),(21434,0.574643,2579),(4807,1.26682,459),(6474,1.26682,459),(6475,1.26682,459),(6476,1.26682,459),(6477,1.26682,459),(6478,1.26682,459),(17447,3.38522,2373),(21119,3.38522,2373),(18494,3.38522,2426),(19260,14.7664,2478),(19371,14.7664,2478),(16985,0.583504,2301),(15555,2.87271,2229),(908,1.58885,143),(16989,0.476941,2305),(16987,0.529781,2303),(16986,0.895334,2302),(16984,1.21072,2300),(16988,0.528485,2304),(14567,3.55635,2051),(953,1.47452,149),(1936,4.44059,209),(20374,0.518207,2518),(18272,1.32613,2386),(19191,1.32613,2386),(19295,1.32613,2386),(20138,1.32613,2386),(21238,1.32613,2386),(17657,0.002128,2372),(20264,0.002128,2513),(19357,7.89011,2506),(19215,7.89011,2530),(20545,0.300434,2525),(20522,3.78808,2539),(21486,3.72564,2584),(20872,3.3847,2541),(2428,1.9762,224),(17002,1.9762,224),(18988,1.57318,2534),(18164,5.59332,2417),(17888,5.59434,2396),(19891,5.59434,2507),(19537,14.7664,2510),(20158,14.7664,2510),(21964,0.852541,2614),(12449,9.62757,1811),(17886,9.62757,1811),(20546,0.247881,2526),(17549,2.5391,2364),(17891,2.5391,2399),(18511,2.5391,2399),(15677,1.71703,2220),(15678,1.71703,2220),(15679,1.71703,2220),(15680,1.71703,2220),(15681,1.71703,2220),(21362,1.42961,2574),(20065,4.81064,2508),(20070,4.81064,2509),(19608,5.85247,2501),(18168,1.80073,2418),(20645,1.80073,2418),(19259,3.90136,2425),(22840,3.90136,2669),(19373,14.7664,2489),(21006,14.7664,2489),(21973,1.73072,2620),(18946,1.32613,2450),(17104,3.56611,2324),(17569,3.56611,2324),(18712,5.85247,2436),(17103,3.56611,2323),(21171,4.50383,2553),(4878,0.797224,512),(18644,3.78808,2442),(18880,3.78808,2442),(19680,3.78808,2442),(19981,3.78808,2442),(20071,3.78808,2442),(17102,3.56611,2322),(17525,3.56611,2322),(20862,3.56611,2322),(20934,3.56611,2322),(19257,0.661393,2477),(15393,0.673921,2202),(15394,0.673921,2202),(15395,0.673921,2202),(15396,0.673921,2202),(15397,0.673921,2202),(15398,0.673921,2202),(5505,3.38522,651),(8817,3.38522,651),(9554,3.38522,651),(20995,3.38522,651),(20996,3.38522,651),(20998,3.38522,651),(21126,3.38522,651),(20592,5.05426,2538),(16941,0.478807,2337),(15945,1.24909,2236);
/*!40000 ALTER TABLE `unit_display_sizes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_accessories`
--

DROP TABLE IF EXISTS `vehicle_accessories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicle_accessories` (
  `creature_entry` int(10) unsigned NOT NULL DEFAULT '0',
  `accessory_entry` int(10) unsigned NOT NULL DEFAULT '0',
  `seat` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`creature_entry`,`seat`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_accessories`
--

LOCK TABLES `vehicle_accessories` WRITE;
/*!40000 ALTER TABLE `vehicle_accessories` DISABLE KEYS */;
/*!40000 ALTER TABLE `vehicle_accessories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_restrictions`
--

DROP TABLE IF EXISTS `vendor_restrictions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendor_restrictions` (
  `entry` int(10) unsigned NOT NULL,
  `racemask` int(11) NOT NULL DEFAULT '-1',
  `classmask` int(11) NOT NULL DEFAULT '-1',
  `reqrepfaction` int(10) unsigned NOT NULL DEFAULT '0',
  `reqrepfactionvalue` int(10) unsigned NOT NULL DEFAULT '0',
  `canbuyattextid` int(10) unsigned NOT NULL DEFAULT '0',
  `cannotbuyattextid` int(10) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '0 - check for all values, 1 - classic mount vendor',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_restrictions`
--

LOCK TABLES `vendor_restrictions` WRITE;
/*!40000 ALTER TABLE `vendor_restrictions` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor_restrictions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `item` int(10) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `max_amount` int(11) NOT NULL DEFAULT '0',
  `inctime` bigint(20) NOT NULL DEFAULT '0',
  `extended_cost` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='NPC System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather`
--

DROP TABLE IF EXISTS `weather`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weather` (
  `zoneId` int(11) unsigned NOT NULL DEFAULT '0',
  `high_chance` int(11) unsigned NOT NULL DEFAULT '0',
  `high_type` int(11) unsigned NOT NULL DEFAULT '0',
  `med_chance` int(11) unsigned NOT NULL DEFAULT '0',
  `med_type` int(11) unsigned NOT NULL DEFAULT '0',
  `low_chance` int(11) unsigned NOT NULL DEFAULT '0',
  `low_type` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`zoneId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Weather System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather`
--

LOCK TABLES `weather` WRITE;
/*!40000 ALTER TABLE `weather` DISABLE KEYS */;
/*!40000 ALTER TABLE `weather` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wordfilter_character_names`
--

DROP TABLE IF EXISTS `wordfilter_character_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wordfilter_character_names` (
  `regex_match` varchar(500) NOT NULL,
  `regex_ignore_if_matched` varchar(500) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wordfilter_character_names`
--

LOCK TABLES `wordfilter_character_names` WRITE;
/*!40000 ALTER TABLE `wordfilter_character_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `wordfilter_character_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wordfilter_chat`
--

DROP TABLE IF EXISTS `wordfilter_chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wordfilter_chat` (
  `regex_match` varchar(500) NOT NULL,
  `regex_ignore_if_matched` varchar(500) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wordfilter_chat`
--

LOCK TABLES `wordfilter_chat` WRITE;
/*!40000 ALTER TABLE `wordfilter_chat` DISABLE KEYS */;
/*!40000 ALTER TABLE `wordfilter_chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_db_version`
--

DROP TABLE IF EXISTS `world_db_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `world_db_version` (
  `LastUpdate` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`LastUpdate`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_db_version`
--

LOCK TABLES `world_db_version` WRITE;
/*!40000 ALTER TABLE `world_db_version` DISABLE KEYS */;
INSERT INTO `world_db_version` VALUES ('20230611-1927_event_objective');
/*!40000 ALTER TABLE `world_db_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worldbroadcast`
--

DROP TABLE IF EXISTS `worldbroadcast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worldbroadcast` (
  `entry` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `percent` int(3) NOT NULL DEFAULT '100',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worldbroadcast`
--

LOCK TABLES `worldbroadcast` WRITE;
/*!40000 ALTER TABLE `worldbroadcast` DISABLE KEYS */;
/*!40000 ALTER TABLE `worldbroadcast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worldbroadcast_localized`
--

DROP TABLE IF EXISTS `worldbroadcast_localized`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worldbroadcast_localized` (
  `entry` int(11) NOT NULL,
  `language_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `text` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worldbroadcast_localized`
--

LOCK TABLES `worldbroadcast_localized` WRITE;
/*!40000 ALTER TABLE `worldbroadcast_localized` DISABLE KEYS */;
/*!40000 ALTER TABLE `worldbroadcast_localized` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worldmap_info`
--

DROP TABLE IF EXISTS `worldmap_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worldmap_info` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `screenid` int(10) unsigned DEFAULT '0',
  `type` int(10) unsigned DEFAULT '0',
  `maxplayers` int(10) unsigned DEFAULT '0',
  `minlevel` int(10) unsigned DEFAULT '1',
  `minlevel_heroic` int(10) unsigned NOT NULL DEFAULT '0',
  `repopx` float DEFAULT '0',
  `repopy` float DEFAULT '0',
  `repopz` float DEFAULT '0',
  `repopentry` int(10) unsigned DEFAULT '0',
  `area_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `cooldown` int(10) unsigned NOT NULL DEFAULT '0',
  `lvl_mod_a` int(10) unsigned NOT NULL DEFAULT '0',
  `required_quest_1` int(10) unsigned NOT NULL DEFAULT '0',
  `required_quest_2` int(10) unsigned NOT NULL DEFAULT '0',
  `required_item` int(10) unsigned NOT NULL DEFAULT '0',
  `heroic_keyid_1` int(30) NOT NULL DEFAULT '0',
  `heroic_keyid_2` int(30) NOT NULL DEFAULT '0',
  `viewingDistance` float NOT NULL DEFAULT '80',
  `required_checkpoint` int(30) NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='World System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worldmap_info`
--

LOCK TABLES `worldmap_info` WRITE;
/*!40000 ALTER TABLE `worldmap_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `worldmap_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worldmap_info_localized`
--

DROP TABLE IF EXISTS `worldmap_info_localized`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worldmap_info_localized` (
  `entry` int(11) NOT NULL,
  `language_code` varchar(5) NOT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worldmap_info_localized`
--

LOCK TABLES `worldmap_info_localized` WRITE;
/*!40000 ALTER TABLE `worldmap_info_localized` DISABLE KEYS */;
/*!40000 ALTER TABLE `worldmap_info_localized` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worldstate_templates`
--

DROP TABLE IF EXISTS `worldstate_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worldstate_templates` (
  `map` int(10) unsigned NOT NULL DEFAULT '0',
  `zone` int(10) unsigned NOT NULL DEFAULT '0',
  `field` int(10) unsigned NOT NULL DEFAULT '0',
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`map`,`zone`,`field`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worldstate_templates`
--

LOCK TABLES `worldstate_templates` WRITE;
/*!40000 ALTER TABLE `worldstate_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `worldstate_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worldstring_tables`
--

DROP TABLE IF EXISTS `worldstring_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worldstring_tables` (
  `entry` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worldstring_tables`
--

LOCK TABLES `worldstring_tables` WRITE;
/*!40000 ALTER TABLE `worldstring_tables` DISABLE KEYS */;
INSERT INTO `worldstring_tables` VALUES (1,'I would like to browse your goods.'),(2,'I seek '),(3,'mage'),(4,'shaman'),(5,'warrior'),(6,'paladin'),(7,'warlock'),(8,'hunter'),(9,'rogue'),(10,'druid'),(11,'priest'),(12,'training'),(13,'Train me in the ways of the beast.'),(14,'Give me a ride.'),(15,'I would like to make a bid.'),(16,'Make this inn your home.'),(17,'I would like to check my deposit box.'),(18,'Bring me back to life.'),(19,'How do I create a guild/arena team?'),(20,'I want to create a guild crest.'),(21,'I would like to go to the battleground.'),(22,'I would like to reset my talents.'),(23,'I wish to untrain my pet.'),(24,'I understand, continue.'),(25,'Yes, please do.'),(26,'This instance is unavailable.'),(27,'You must have The Burning Crusade Expansion to access this content.'),(28,'Heroic mode unavailable for this instance.'),(29,'You must be in a raid group to pass through here.'),(30,'You do not have the required attunement to pass through here.'),(31,'You must be at least level %u to pass through here.'),(32,'You must be in a party to pass through here.'),(33,'You must be level 70 to enter heroic mode.'),(34,'-'),(35,'You must have the item, `%s` to pass through here.'),(36,'You must have the item, UNKNOWN to pass through here.'),(37,'What can I teach you, $N?'),(38,'Alterac Valley'),(39,'Warsong Gulch'),(40,'Arathi Basin'),(41,'Arena 2v2'),(42,'Arena 3v3'),(43,'Arena 5v5'),(44,'Eye of the Storm'),(45,'Unknown Battleground'),(46,'One minute until the battle for %s begins!'),(47,'Thirty seconds until the battle for %s begins!'),(48,'Fifteen seconds until the battle for %s begins!'),(49,'The battle for %s has begun!'),(50,'Arena'),(51,'You have tried to join an invalid instance id.'),(52,'Your queue on battleground instance id %u is no longer valid. Reason: Instance Deleted.'),(53,'You cannot join this battleground as it has already ended.'),(54,'Your queue on battleground instance %u is no longer valid, the instance no longer exists.'),(55,'Sorry, raid groups joining battlegrounds are currently unsupported.'),(56,'You must be the party leader to add a group to an arena.'),(57,'You must be in a team to join rated arena.'),(58,'You have too many players in your party to join this type of arena.'),(59,'Sorry, some of your party members are not level 70.'),(60,'One or more of your party members are already queued or inside a battleground.'),(61,'One or more of your party members are not members of your team.'),(62,'Welcome to'),(63,'Horde'),(64,'Alliance'),(65,'[ |cff00ccffAttention|r ] Welcome! A new challenger (|cff00ff00{%d}|r - |cffff0000%s|r) has arrived and joined into |cffff0000%s|r,their force has already been increased.'),(66,'This instance is scheduled to reset on'),(67,'Auto loot passing is now %s'),(68,'On'),(69,'Off'),(70,'Hey there, $N. How can I help you?'),(71,'You are already in an arena team.'),(72,'That name is already in use.'),(73,'You already have an arena charter.'),(74,'A guild with that name already exists.'),(75,'You already have a guild charter.'),(76,'Item not found.'),(77,'Target is of the wrong faction.'),(78,'Target player cannot sign your charter for one or more reasons.'),(79,'You have already signed that charter.'),(80,'You don\'t have the required amount of signatures to turn in this petition.'),(82,'Deathknight');
/*!40000 ALTER TABLE `worldstring_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worldstring_tables_localized`
--

DROP TABLE IF EXISTS `worldstring_tables_localized`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `worldstring_tables_localized` (
  `entry` int(11) NOT NULL,
  `language_code` varchar(5) NOT NULL,
  `text` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worldstring_tables_localized`
--

LOCK TABLES `worldstring_tables_localized` WRITE;
/*!40000 ALTER TABLE `worldstring_tables_localized` DISABLE KEYS */;
/*!40000 ALTER TABLE `worldstring_tables_localized` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zoneguards`
--

DROP TABLE IF EXISTS `zoneguards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zoneguards` (
  `zone` int(10) unsigned NOT NULL,
  `horde_entry` int(10) unsigned NOT NULL DEFAULT '0',
  `alliance_entry` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`alliance_entry`,`horde_entry`,`zone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='World System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zoneguards`
--

LOCK TABLES `zoneguards` WRITE;
/*!40000 ALTER TABLE `zoneguards` DISABLE KEYS */;
/*!40000 ALTER TABLE `zoneguards` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-08 14:20:11
