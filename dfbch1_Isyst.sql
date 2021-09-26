-- MySQL dump 10.19  Distrib 10.3.29-MariaDB, for FreeBSD12.2 (amd64)
--
-- Host: localhost    Database: dfbch1_Isyst
-- ------------------------------------------------------
-- Server version	10.3.29-MariaDB-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `DNSdomainList`
--

DROP TABLE IF EXISTS `DNSdomainList`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DNSdomainList` (
  `domain` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `site-id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ISP` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purpose` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifier` int(11) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`domain`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `DNSinventar`
--

DROP TABLE IF EXISTS `DNSinventar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DNSinventar` (
  `domain` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ipaddr` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ISP` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purpose` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`domain`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aggregates`
--

DROP TABLE IF EXISTS `aggregates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aggregates` (
  `selname` varchar(50) NOT NULL DEFAULT '',
  `comment` varchar(256) DEFAULT NULL,
  `preprocess` varchar(100) DEFAULT NULL,
  `onedb` varchar(50) DEFAULT NULL COMMENT '(Temporärfeld) DIE angesprochene DB in select',
  `select` text DEFAULT NULL,
  `columns` text DEFAULT NULL,
  `createTemp` text DEFAULT NULL,
  `selectTemp` text DEFAULT NULL,
  `colnamesTemp` varchar(250) DEFAULT NULL,
  `dbnameTemp` varchar(50) DEFAULT NULL,
  `functbutton` text DEFAULT NULL,
  `addbutton` varchar(200) DEFAULT NULL,
  `addr_export_kind` varchar(15) DEFAULT NULL,
  `addr_export_field` varchar(50) DEFAULT NULL,
  `addr_export_templ` varchar(100) DEFAULT NULL,
  `export_button_name` varchar(100) DEFAULT NULL,
  `pdf_colsizes` text DEFAULT NULL,
  `pdf_title` varchar(100) DEFAULT NULL,
  `pdf_introtext` varchar(100) DEFAULT NULL,
  `pdf_fontsize` varchar(50) DEFAULT NULL,
  `pdf_paper` varchar(50) DEFAULT 'a4',
  `pdf_orientation` varchar(50) DEFAULT NULL,
  `datefields` text DEFAULT NULL,
  `functcol` varchar(250) DEFAULT NULL,
  `matchcodefields` text DEFAULT NULL,
  `fieldsearch` text DEFAULT NULL,
  `special` varchar(100) DEFAULT NULL,
  `fielddef` varchar(50) DEFAULT NULL,
  `introtext` text DEFAULT NULL,
  `introtextdet` text DEFAULT NULL,
  `nopermtext` text DEFAULT NULL,
  `options` varchar(200) DEFAULT NULL,
  `translcol` varchar(250) DEFAULT NULL,
  `classcol` varchar(250) DEFAULT NULL,
  `classline` varchar(250) DEFAULT NULL,
  `ownOnly` varchar(50) DEFAULT NULL,
  `select1what` text DEFAULT NULL,
  `select2what` text DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`selname`),
  KEY `comment` (`comment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Selects für Aggregate';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aggregates_2011-09-05`
--

DROP TABLE IF EXISTS `aggregates_2011-09-05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aggregates_2011-09-05` (
  `selname` varchar(50) NOT NULL DEFAULT '',
  `comment` varchar(256) DEFAULT NULL,
  `select` text DEFAULT NULL,
  `columns` text DEFAULT NULL,
  `pdf_colsizes` text DEFAULT NULL,
  `pdf_fontsize` varchar(50) DEFAULT NULL,
  `pdf_paper` varchar(50) DEFAULT 'a4',
  `pdf_orientation` varchar(50) DEFAULT NULL,
  `datefields` text DEFAULT NULL,
  `functcol` varchar(100) DEFAULT NULL,
  `matchcodefields` text DEFAULT NULL,
  `fieldsearch` text DEFAULT NULL,
  `fielddef` varchar(50) DEFAULT NULL,
  `options` varchar(200) DEFAULT NULL,
  `translcol` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`selname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Selects für Aggregate';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aggregates_2018-03-16`
--

DROP TABLE IF EXISTS `aggregates_2018-03-16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aggregates_2018-03-16` (
  `selname` varchar(50) NOT NULL DEFAULT '',
  `comment` varchar(256) DEFAULT NULL,
  `preprocess` varchar(100) DEFAULT NULL,
  `select` text DEFAULT NULL,
  `columns` text DEFAULT NULL,
  `createTemp` text DEFAULT NULL,
  `selectTemp` text DEFAULT NULL,
  `colnamesTemp` varchar(250) DEFAULT NULL,
  `dbnameTemp` varchar(50) DEFAULT NULL,
  `functbutton` text DEFAULT NULL,
  `addbutton` varchar(200) DEFAULT NULL,
  `addr_export_kind` varchar(15) DEFAULT NULL,
  `addr_export_field` varchar(50) DEFAULT NULL,
  `addr_export_templ` varchar(100) DEFAULT NULL,
  `export_button_name` varchar(100) DEFAULT NULL,
  `pdf_colsizes` text DEFAULT NULL,
  `pdf_title` varchar(100) DEFAULT NULL,
  `pdf_introtext` varchar(100) DEFAULT NULL,
  `pdf_fontsize` varchar(50) DEFAULT NULL,
  `pdf_paper` varchar(50) DEFAULT 'a4',
  `pdf_orientation` varchar(50) DEFAULT NULL,
  `datefields` text DEFAULT NULL,
  `functcol` varchar(250) DEFAULT NULL,
  `matchcodefields` text DEFAULT NULL,
  `fieldsearch` text DEFAULT NULL,
  `special` varchar(100) DEFAULT NULL,
  `fielddef` varchar(50) DEFAULT NULL,
  `introtext` text DEFAULT NULL,
  `introtextdet` text DEFAULT NULL,
  `nopermtext` text DEFAULT NULL,
  `options` varchar(200) DEFAULT NULL,
  `translcol` varchar(250) DEFAULT NULL,
  `classcol` varchar(250) DEFAULT NULL,
  `classline` varchar(250) DEFAULT NULL,
  `ownOnly` varchar(50) DEFAULT NULL,
  `select1what` text DEFAULT NULL,
  `select2what` text DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`selname`),
  KEY `comment` (`comment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Selects für Aggregate';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aggregates__20170220`
--

DROP TABLE IF EXISTS `aggregates__20170220`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aggregates__20170220` (
  `selname` varchar(50) NOT NULL DEFAULT '',
  `comment` varchar(256) DEFAULT NULL,
  `preprocess` varchar(100) DEFAULT NULL,
  `select` text DEFAULT NULL,
  `columns` text DEFAULT NULL,
  `createTemp` text DEFAULT NULL,
  `selectTemp` text DEFAULT NULL,
  `colnamesTemp` varchar(250) DEFAULT NULL,
  `dbnameTemp` varchar(50) DEFAULT NULL,
  `functbutton` text DEFAULT NULL,
  `addbutton` varchar(200) DEFAULT NULL,
  `addr_export_kind` varchar(15) DEFAULT NULL,
  `addr_export_field` varchar(50) DEFAULT NULL,
  `addr_export_templ` varchar(100) DEFAULT NULL,
  `export_button_name` varchar(100) DEFAULT NULL,
  `pdf_colsizes` text DEFAULT NULL,
  `pdf_title` varchar(100) DEFAULT NULL,
  `pdf_introtext` varchar(100) DEFAULT NULL,
  `pdf_fontsize` varchar(50) DEFAULT NULL,
  `pdf_paper` varchar(50) DEFAULT 'a4',
  `pdf_orientation` varchar(50) DEFAULT NULL,
  `datefields` text DEFAULT NULL,
  `functcol` varchar(250) DEFAULT NULL,
  `matchcodefields` text DEFAULT NULL,
  `fieldsearch` text DEFAULT NULL,
  `special` varchar(100) DEFAULT NULL,
  `fielddef` varchar(50) DEFAULT NULL,
  `introtext` text DEFAULT NULL,
  `introtextdet` text DEFAULT NULL,
  `nopermtext` text DEFAULT NULL,
  `options` varchar(200) DEFAULT NULL,
  `translcol` varchar(250) DEFAULT NULL,
  `classcol` varchar(250) DEFAULT NULL,
  `classline` varchar(250) DEFAULT NULL,
  `ownOnly` varchar(50) DEFAULT NULL,
  `select1what` text DEFAULT NULL,
  `select2what` text DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`selname`),
  KEY `comment` (`comment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Selects für Aggregate';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `applDoc`
--

DROP TABLE IF EXISTS `applDoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applDoc` (
  `pageid` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Typo Seitennummer',
  `pref` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'intra',
  `originator` int(11) DEFAULT NULL COMMENT 'ident des Erstellers',
  `initialVersion` datetime DEFAULT NULL COMMENT 'erstellt am',
  `modifier` int(11) DEFAULT NULL COMMENT 'ident des Modifier',
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nav_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descr` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Beschreibung',
  `keywords` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'zus. Suchbegriffe',
  `author` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `layout` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabelle` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tabellenname',
  `functional` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Funktionalität',
  `history` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'History',
  `support` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Support',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`pageid`,`pref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `applDoc_tmpsave`
--

DROP TABLE IF EXISTS `applDoc_tmpsave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applDoc_tmpsave` (
  `pageid` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Typo Seitennummer',
  `pref` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT 'intra' COMMENT 'Prefix aus Domain: also www oder intra',
  `originator` int(11) DEFAULT NULL COMMENT 'ident des Erstellers',
  `initialVersion` datetime DEFAULT NULL COMMENT 'erstellt am',
  `modifier` int(11) DEFAULT NULL COMMENT 'ident des Modifier',
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nav_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descr` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Beschreibung',
  `keywords` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'zus. Suchbegriffe',
  `author` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `plugin` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `functional` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Funktionalität',
  `history` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'History',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`pageid`,`pref`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `applHandbuch`
--

DROP TABLE IF EXISTS `applHandbuch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applHandbuch` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `applic` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `heading` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `hide` tinyint(4) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `originator` int(11) DEFAULT 0,
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `applic`
--

DROP TABLE IF EXISTS `applic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applic` (
  `applic` varchar(100) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`applic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `assignlog`
--

DROP TABLE IF EXISTS `assignlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `assignlog` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `kind` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_org` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `supra_org` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_user` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=25903 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `austritt_log`
--

DROP TABLE IF EXISTS `austritt_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `austritt_log` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simul` int(11) DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `backuplog`
--

DROP TABLE IF EXISTS `backuplog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `backuplog` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simul` int(11) DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `useragent` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bulkletterLog`
--

DROP TABLE IF EXISTS `bulkletterLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bulkletterLog` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simul` int(11) DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=3705 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_extens`
--

DROP TABLE IF EXISTS `cat_extens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_extens` (
  `cat` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`cat`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Extension Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_how_to`
--

DROP TABLE IF EXISTS `cat_how_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_how_to` (
  `cat` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`cat`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='How To Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_how_to_sub`
--

DROP TABLE IF EXISTS `cat_how_to_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_how_to_sub` (
  `cat` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`cat`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='How To Subcategories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_meta`
--

DROP TABLE IF EXISTS `cat_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_meta` (
  `metatag` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `applicability` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`metatag`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_sysparms`
--

DROP TABLE IF EXISTS `cat_sysparms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_sysparms` (
  `cat` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`cat`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='System Parameter Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_typo_tip`
--

DROP TABLE IF EXISTS `cat_typo_tip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_typo_tip` (
  `cat` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`cat`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Typo Tips Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `changelib`
--

DROP TABLE IF EXISTS `changelib`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changelib` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simul` int(11) DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `changelog`
--

DROP TABLE IF EXISTS `changelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changelog` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simul` int(11) DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=135260 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `changelogDoc`
--

DROP TABLE IF EXISTS `changelogDoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changelogDoc` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=20998 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `changelogDoc__multdelBackup`
--

DROP TABLE IF EXISTS `changelogDoc__multdelBackup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changelogDoc__multdelBackup` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=19411 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `changelogFrmGrp`
--

DROP TABLE IF EXISTS `changelogFrmGrp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `changelogFrmGrp` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `alpha2` varchar(2) NOT NULL,
  `region` varchar(2) DEFAULT NULL,
  `alpha3` varchar(3) DEFAULT NULL,
  `num3` varchar(3) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `dfbregion` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`alpha2`),
  KEY `geo` (`region`),
  KEY `alpha3` (`alpha3`),
  KEY `num3` (`num3`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Länder, mehrsprachig';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ctry_ch`
--

DROP TABLE IF EXISTS `ctry_ch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctry_ch` (
  `code` varchar(10) NOT NULL DEFAULT '',
  `value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Ländertabelle: alles englisch ausser CH, DE, AT';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ctry_de`
--

DROP TABLE IF EXISTS `ctry_de`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctry_de` (
  `alpha2` varchar(2) NOT NULL,
  `value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`alpha2`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Countries GERMAN';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ctry_en`
--

DROP TABLE IF EXISTS `ctry_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctry_en` (
  `alpha2` varchar(2) NOT NULL,
  `value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`alpha2`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Countries ENGLISH';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ctry_fr`
--

DROP TABLE IF EXISTS `ctry_fr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctry_fr` (
  `alpha2` varchar(2) NOT NULL,
  `value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`alpha2`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Countries FRENCH';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ctry_nl`
--

DROP TABLE IF EXISTS `ctry_nl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctry_nl` (
  `alpha2` varchar(2) NOT NULL,
  `value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`alpha2`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Countries DUTCH';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ctry_temp`
--

DROP TABLE IF EXISTS `ctry_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctry_temp` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `val` text DEFAULT NULL,
  `orgunit` varchar(50) NOT NULL DEFAULT '0',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifier` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dblog`
--

DROP TABLE IF EXISTS `dblog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dblog` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `entry` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `ident` int(11) DEFAULT NULL,
  `pageId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=951 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `debug_sele_temp`
--

DROP TABLE IF EXISTS `debug_sele_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debug_sele_temp` (
  `pageId` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `anz` bigint(21) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Auswertung der leeren GET_SELECT-Aufrufe';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `debuglog`
--

DROP TABLE IF EXISTS `debuglog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debuglog` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `entry` text DEFAULT NULL,
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `ident` int(11) DEFAULT NULL,
  `pageId` varchar(200) DEFAULT NULL,
  `extra` varchar(200) DEFAULT NULL,
  `mem` varchar(100) DEFAULT NULL,
  `mem_alloc` int(11) DEFAULT NULL,
  `caller` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `debuglog_sel`
--

DROP TABLE IF EXISTS `debuglog_sel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debuglog_sel` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `entry` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `ident` int(11) DEFAULT NULL,
  `pageId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` int(11) DEFAULT NULL,
  `mem_alloc` int(11) DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=328707 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dfbag_frondienst_transfer__arc`
--

DROP TABLE IF EXISTS `dg_dfbag_frondienst_transfer__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dfbag_frondienst_transfer__arc` (
  `_auto_` text DEFAULT NULL,
  `_timestamp_` text DEFAULT NULL,
  `appell` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `firstname` text DEFAULT NULL,
  `lastname` text DEFAULT NULL,
  `street` text DEFAULT NULL,
  `pob` text DEFAULT NULL,
  `zip` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `fonmobile` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `lang_corr` text DEFAULT NULL,
  `recruited_by` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `train_drive` text DEFAULT NULL,
  `train_maintain` text DEFAULT NULL,
  `trainops` text DEFAULT NULL,
  `stationops` text DEFAULT NULL,
  `public_relations` text DEFAULT NULL,
  `constr_serv` text DEFAULT NULL,
  `RwD_serv` text DEFAULT NULL,
  `IT_serv` text DEFAULT NULL,
  `mgmt` text DEFAULT NULL,
  `club_activity` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `plscontactme` text DEFAULT NULL,
  `birthday` text DEFAULT NULL,
  `nationality` text DEFAULT NULL,
  `education` text DEFAULT NULL,
  `actual_job` text DEFAULT NULL,
  `driver_license_cat` text DEFAULT NULL,
  `skills_rail` text DEFAULT NULL,
  `skills_lang` text DEFAULT NULL,
  `accid_insur` text DEFAULT NULL,
  `work_motive` text DEFAULT NULL,
  `voluwork_yearly` text DEFAULT NULL,
  `poss_wdays` text DEFAULT NULL,
  `poss_dayblocs` text DEFAULT NULL,
  `val` text DEFAULT NULL,
  `userip` text DEFAULT NULL,
  `_lastUserIP_` text DEFAULT NULL,
  `IPclient` text DEFAULT NULL,
  `_sessionID_` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dialogs`
--

DROP TABLE IF EXISTS `dialogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dialogs` (
  `taskid` varchar(20) NOT NULL,
  `step` smallint(6) NOT NULL,
  `stepname` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `db` varchar(50) DEFAULT NULL,
  `table` varchar(100) DEFAULT NULL,
  `jointable` varchar(250) DEFAULT NULL,
  `ex_basket` text NOT NULL,
  `formextra` varchar(100) DEFAULT NULL,
  `forms` varchar(50) DEFAULT NULL,
  `btnnames` varchar(300) DEFAULT NULL,
  `action` varchar(250) DEFAULT NULL,
  `parm1` text NOT NULL,
  `parm2` text NOT NULL,
  `wfm` varchar(250) DEFAULT NULL,
  `show` varchar(250) DEFAULT NULL,
  `hide` varchar(250) DEFAULT NULL,
  `nullify` text NOT NULL,
  `enhance` text NOT NULL,
  `aftpost` text NOT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`taskid`,`step`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='process definition sets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dialogue_parm`
--

DROP TABLE IF EXISTS `dialogue_parm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dialogue_parm` (
  `taskid` varchar(20) NOT NULL DEFAULT '',
  `descr` varchar(100) DEFAULT NULL,
  `orgunit` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`taskid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Dialog Berechtigungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doku_db`
--

DROP TABLE IF EXISTS `doku_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doku_db` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`idid`),
  FULLTEXT KEY `doku_db` (`cat`,`title`,`description`,`keywords`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Typo3 DB-Hinweise und Instruktionen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doku_flexu`
--

DROP TABLE IF EXISTS `doku_flexu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doku_flexu` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`idid`),
  FULLTEXT KEY `doku_flexu` (`cat`,`title`,`description`,`keywords`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='FleXu Programmier-Hinweise und Instruktionen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `errorcodes`
--

DROP TABLE IF EXISTS `errorcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `errorcodes` (
  `errid` varchar(50) NOT NULL,
  `errmsg` varchar(255) DEFAULT NULL,
  `tasks` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`errid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Error Codes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `errorlog`
--

DROP TABLE IF EXISTS `errorlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `errorlog` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simul` int(11) DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=3686 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `errorlogMail`
--

DROP TABLE IF EXISTS `errorlogMail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `errorlogMail` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simul` int(11) DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `essenlog__NA`
--

DROP TABLE IF EXISTS `essenlog__NA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `essenlog__NA` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` int(11) DEFAULT NULL,
  `simul` int(11) DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=103561 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event2log`
--

DROP TABLE IF EXISTS `event2log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event2log` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` int(11) DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `simul` int(11) DEFAULT NULL,
  `mem` int(11) DEFAULT NULL,
  `caller` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `exports`
--

DROP TABLE IF EXISTS `exports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exports` (
  `expname` varchar(50) NOT NULL DEFAULT '',
  `comment` text DEFAULT NULL,
  `placeholder` text DEFAULT NULL,
  `elements` text DEFAULT NULL,
  `dbname` varchar(50) DEFAULT NULL,
  `colnames` text DEFAULT NULL,
  `functcol` text DEFAULT NULL,
  `pdf_colsizes` text DEFAULT NULL,
  `pdf_fontsize` varchar(50) DEFAULT NULL,
  `pdf_paper` varchar(50) DEFAULT 'a4',
  `pdf_orientation` varchar(50) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  PRIMARY KEY (`expname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Export Profile';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fe_users_1`
--

DROP TABLE IF EXISTS `fe_users_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_users_1` (
  `uid` int(11) unsigned DEFAULT NULL,
  `pid` int(11) unsigned DEFAULT NULL,
  `tstamp` int(11) unsigned DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usergroup` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `disable` tinyint(4) unsigned DEFAULT NULL,
  `starttime` int(11) unsigned DEFAULT NULL,
  `endtime` int(11) unsigned DEFAULT NULL,
  `name` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `telephone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crdate` int(11) unsigned DEFAULT NULL,
  `cruser_id` int(11) unsigned DEFAULT NULL,
  `lockToDomain` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(3) unsigned DEFAULT NULL,
  `uc` blob DEFAULT NULL,
  `title` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `www` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `TSconfig` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fe_cruser_id` int(10) unsigned DEFAULT NULL,
  `lastlogin` int(10) unsigned DEFAULT NULL,
  `is_online` int(10) unsigned DEFAULT NULL,
  `felogin_redirectPid` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `felogin_forgotHash` varchar(80) COLLATE utf8_unicode_ci DEFAULT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `middle_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tx_extbase_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fielddef`
--

DROP TABLE IF EXISTS `fielddef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fielddef` (
  `set` varchar(50) NOT NULL DEFAULT '',
  `designation` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(50) NOT NULL DEFAULT '',
  `spec_row` text DEFAULT NULL,
  `tablename` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `disablecond` varchar(100) DEFAULT NULL,
  `activecond` varchar(100) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `special` varchar(20) DEFAULT NULL,
  `special_view` varchar(100) DEFAULT NULL,
  `options` varchar(100) DEFAULT NULL,
  `condition1` varchar(50) DEFAULT NULL,
  `condition2` varchar(50) DEFAULT NULL,
  `values` text DEFAULT NULL,
  `dbname` varchar(50) DEFAULT NULL,
  `functval` varchar(100) DEFAULT NULL,
  `default` varchar(50) DEFAULT NULL,
  `preprocess` text DEFAULT NULL,
  `postprocess` text DEFAULT NULL,
  `workflow` varchar(100) DEFAULT NULL,
  `tooltip` varchar(100) DEFAULT NULL,
  `orgunit` varchar(100) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `pagecomment` text DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
  `groupclass` varchar(50) DEFAULT NULL,
  `groupmandat` varchar(50) DEFAULT NULL,
  `extended` varchar(50) DEFAULT NULL,
  `specclass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`set`,`designation`,`fieldname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Felddefinitionen zum Editieren';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fielddef_alt`
--

DROP TABLE IF EXISTS `fielddef_alt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fielddef_alt` (
  `set` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(50) NOT NULL DEFAULT '',
  `tablename` varchar(50) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `special` varchar(20) DEFAULT NULL,
  `mandatory` varchar(50) DEFAULT NULL,
  `options` varchar(100) DEFAULT NULL,
  `condition1` varchar(50) DEFAULT NULL,
  `condition2` varchar(50) DEFAULT NULL,
  `values` text DEFAULT NULL,
  `dbname` varchar(50) DEFAULT NULL,
  `default` varchar(50) DEFAULT NULL,
  `tooltip` text DEFAULT NULL,
  `orgunit` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`set`,`fieldname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Felddefinitionen zum Editieren';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fielddefx`
--

DROP TABLE IF EXISTS `fielddefx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fielddefx` (
  `set` varchar(50) NOT NULL DEFAULT '',
  `designation` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(50) NOT NULL DEFAULT '',
  `spec_row` text DEFAULT NULL,
  `tablename` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `disablecond` text DEFAULT NULL,
  `activecond` varchar(100) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `special` varchar(20) DEFAULT NULL,
  `special_view` varchar(100) DEFAULT NULL,
  `options` varchar(100) DEFAULT NULL,
  `condition1` varchar(50) DEFAULT NULL,
  `condition2` varchar(50) DEFAULT NULL,
  `values` text DEFAULT NULL,
  `dbname` varchar(50) DEFAULT NULL,
  `default` varchar(50) DEFAULT NULL,
  `tooltip` text DEFAULT NULL,
  `orgunit` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
  `groupclass` varchar(50) DEFAULT NULL,
  `extended` varchar(50) DEFAULT NULL,
  `specclass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`set`,`designation`,`fieldname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Felddefinitionen zum Editieren';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fieldfuncts`
--

DROP TABLE IF EXISTS `fieldfuncts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fieldfuncts` (
  `functname` varchar(50) NOT NULL,
  `library` varchar(50) DEFAULT NULL,
  `class` varchar(100) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `param` text DEFAULT NULL,
  `what` varchar(50) DEFAULT 'list',
  `comment` text DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`functname`),
  KEY `method` (`method`),
  KEY `library` (`library`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Feld-Funktionen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `filter`
--

DROP TABLE IF EXISTS `filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filter` (
  `name` varchar(50) NOT NULL,
  `where` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='WHERE Filter für z.B. tb_contracts_org';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flexuNGparmsI`
--

DROP TABLE IF EXISTS `flexuNGparmsI`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flexuNGparmsI` (
  `uid` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pid` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `header` mediumtext DEFAULT NULL,
  `list_type` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `pi_flexform` text DEFAULT NULL,
  `jsonstr` text DEFAULT '',
  `pagehidden` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `pagedeleted` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '0',
  `author` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '',
  `modified` date DEFAULT NULL,
  `extraParm` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`uid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flexuNGparmsI__multdelBackup`
--

DROP TABLE IF EXISTS `flexuNGparmsI__multdelBackup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flexuNGparmsI__multdelBackup` (
  `uid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `header` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `list_type` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `pi_flexform` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `jsonstr` text COLLATE utf8_unicode_ci DEFAULT '',
  `pagehidden` varchar(100) COLLATE utf8_unicode_ci DEFAULT '0',
  `pagedeleted` varchar(100) COLLATE utf8_unicode_ci DEFAULT '0',
  `author` varchar(250) COLLATE utf8_unicode_ci DEFAULT '',
  `modified` date DEFAULT NULL,
  `extraParm` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flexuNGparmsW`
--

DROP TABLE IF EXISTS `flexuNGparmsW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flexuNGparmsW` (
  `uid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pid` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `header` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `list_type` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pi_flexform` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `jsonstr` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagehidden` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pagedeleted` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` date DEFAULT NULL,
  `extraParm` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`uid`,`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `flexuNGplugins`
--

DROP TABLE IF EXISTS `flexuNGplugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `flexuNGplugins` (
  `list_type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `appl_lib` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `classname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `methname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `methparm` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fieldnames` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `fieldspecial` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `conditional` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`list_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms` (
  `set` varchar(50) NOT NULL DEFAULT '',
  `seq` int(11) DEFAULT NULL,
  `designation` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(50) NOT NULL DEFAULT '',
  `group` varchar(250) DEFAULT NULL,
  `spec_row` text DEFAULT NULL,
  `tablename` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `values` text DEFAULT NULL,
  `dbname` varchar(50) DEFAULT NULL,
  `functval` varchar(100) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `special` varchar(20) DEFAULT NULL,
  `options` varchar(100) DEFAULT NULL,
  `disablecond` text DEFAULT NULL,
  `activecond` varchar(100) DEFAULT NULL,
  `special_view` varchar(100) DEFAULT NULL,
  `condition1` varchar(50) DEFAULT NULL,
  `condition2` varchar(50) DEFAULT NULL,
  `default` text DEFAULT NULL,
  `preprocess` text DEFAULT NULL,
  `postprocess` text DEFAULT NULL,
  `workflow` varchar(100) DEFAULT NULL,
  `tooltip` text DEFAULT NULL,
  `orgunit` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `pagecomment` text DEFAULT NULL,
  `groupclass` varchar(50) DEFAULT NULL,
  `groupmandat` varchar(100) DEFAULT NULL,
  `extended` varchar(50) DEFAULT NULL,
  `specclass` varchar(50) DEFAULT NULL,
  `entered` timestamp NULL DEFAULT NULL,
  `originator` int(11) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`set`,`designation`,`fieldname`),
  KEY `type` (`type`),
  KEY `options` (`options`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Eingabe Formular für die Tabellenbearbeitung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formsA`
--

DROP TABLE IF EXISTS `formsA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formsA` (
  `set` varchar(50) NOT NULL DEFAULT '',
  `setkey` varchar(50) NOT NULL DEFAULT '',
  `tab` varchar(50) NOT NULL DEFAULT '',
  `tabpermission` varchar(100) DEFAULT NULL,
  `tabnotpermission` varchar(100) DEFAULT NULL,
  `cat` varchar(50) DEFAULT '',
  `applic` varchar(100) DEFAULT NULL,
  `seq` smallint(6) DEFAULT 0,
  `typoPage` varchar(45) DEFAULT NULL,
  `designation` varchar(50) DEFAULT '',
  `fieldname` varchar(50) DEFAULT '',
  `spec_row` text DEFAULT NULL,
  `dbname` varchar(50) DEFAULT NULL,
  `sqlSelect` text DEFAULT NULL,
  `tablegen` varchar(45) DEFAULT NULL,
  `explanation` text DEFAULT NULL,
  `funclibs` varchar(200) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `selectInitopt` varchar(200) DEFAULT NULL,
  `placeholder` varchar(200) DEFAULT NULL,
  `values` text DEFAULT NULL,
  `addlText` text DEFAULT NULL,
  `dbnameValues` varchar(50) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `headColumn` varchar(250) DEFAULT NULL,
  `options` varchar(250) DEFAULT NULL,
  `special` varchar(250) DEFAULT NULL,
  `fieldlist` mediumtext DEFAULT NULL,
  `placeholdval` varchar(250) DEFAULT NULL COMMENT 'Weiss nicht mehr wozu',
  `default` text DEFAULT NULL,
  `workflow` varchar(100) DEFAULT NULL,
  `tooltip` text DEFAULT NULL,
  `fieldCondition` varchar(200) DEFAULT NULL,
  `identfield` varchar(100) DEFAULT '',
  `orgunit` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `commentOther` text DEFAULT NULL,
  `table` varchar(50) DEFAULT NULL,
  `pagecomment` text DEFAULT NULL,
  `group` varchar(250) DEFAULT NULL,
  `preprocess` text DEFAULT NULL,
  `postprocess` text DEFAULT NULL,
  `postprocessAfter` text DEFAULT NULL,
  `groupclass` varchar(50) DEFAULT NULL,
  `groupmandat` varchar(100) DEFAULT NULL,
  `extended` varchar(50) DEFAULT NULL,
  `specclass` varchar(50) DEFAULT NULL,
  `listfields` mediumtext DEFAULT NULL,
  `listfieldfuncts` text DEFAULT NULL,
  `listfieldgrp` varchar(100) DEFAULT NULL,
  `listlimit` int(11) DEFAULT NULL,
  `listbuttons` text DEFAULT NULL,
  `css_library` varchar(200) DEFAULT NULL,
  `js_library` varchar(100) DEFAULT NULL,
  `js_library_option` varchar(45) DEFAULT NULL,
  `js_parm` varchar(200) DEFAULT NULL,
  `js_translEle` text DEFAULT NULL,
  `linebuttons` text DEFAULT NULL,
  `linebloc` varchar(100) DEFAULT NULL,
  `detailstyle` varchar(200) DEFAULT NULL,
  `linebuttonsSpecial` varchar(200) DEFAULT NULL,
  `formfields` text DEFAULT NULL,
  `exportfields` text DEFAULT NULL,
  `formfieldsNoEdit` text DEFAULT NULL,
  `filter` mediumtext DEFAULT NULL,
  `pivot` text DEFAULT NULL,
  `footer` mediumtext DEFAULT NULL,
  `headerlineAdd` mediumtext DEFAULT NULL,
  `listprocess` varchar(100) DEFAULT '',
  `lineprocess` varchar(200) DEFAULT NULL,
  `viewclass` varchar(50) DEFAULT NULL,
  `ajaxclass` varchar(100) DEFAULT '',
  `detailbuttons` varchar(250) DEFAULT NULL,
  `submitButton` mediumtext DEFAULT NULL,
  `detailoptions` mediumtext DEFAULT NULL,
  `detailJSlib` varchar(200) DEFAULT NULL,
  `detailCSSlib` varchar(200) DEFAULT NULL,
  `help` varchar(50) DEFAULT NULL,
  `introtext` text DEFAULT NULL,
  `introdetail` text DEFAULT NULL,
  `introdetail4view` text DEFAULT NULL,
  `introtext2` text DEFAULT NULL,
  `hide` tinyint(4) DEFAULT 0,
  `standaloneForm` varchar(250) DEFAULT NULL,
  `dateformat` varchar(45) DEFAULT NULL,
  `listclass` varchar(50) DEFAULT NULL,
  `listclassIFempty` varchar(100) DEFAULT NULL,
  `textIFempty` varchar(100) DEFAULT NULL,
  `mainclass` varchar(45) DEFAULT NULL,
  `editclass` varchar(45) DEFAULT NULL,
  `editTitle` varchar(200) DEFAULT NULL,
  `listoptions` varchar(200) DEFAULT NULL,
  `colorValue` varchar(200) DEFAULT NULL,
  `modifier` int(11) DEFAULT NULL,
  `originator` int(11) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mypivot` text DEFAULT NULL,
  `mySave` varchar(200) DEFAULT NULL,
  `tablink` varchar(200) DEFAULT NULL,
  `tabclass` varchar(100) DEFAULT NULL,
  `atStart` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`set`,`setkey`,`tab`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Eingabe Formular für die Tabellenbearbeitung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formsA__x`
--

DROP TABLE IF EXISTS `formsA__x`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formsA__x` (
  `set` varchar(50) NOT NULL DEFAULT '',
  `setkey` varchar(50) NOT NULL DEFAULT '',
  `cat` varchar(50) NOT NULL DEFAULT '',
  `designation` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(50) NOT NULL DEFAULT '',
  `spec_row` text DEFAULT NULL,
  `dbname` varchar(50) DEFAULT NULL,
  `table` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `values` text DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `options` varchar(250) DEFAULT NULL,
  `fieldlist` varchar(250) DEFAULT NULL,
  `functval` varchar(100) DEFAULT NULL,
  `default` text DEFAULT NULL,
  `workflow` varchar(100) DEFAULT NULL,
  `tooltip` text DEFAULT NULL,
  `orgunit` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `pagecomment` text DEFAULT NULL,
  `seq` smallint(6) DEFAULT 0,
  `group` varchar(250) DEFAULT NULL,
  `groupclass` varchar(50) DEFAULT NULL,
  `groupmandat` varchar(100) DEFAULT NULL,
  `extended` varchar(50) DEFAULT NULL,
  `specclass` varchar(50) DEFAULT NULL,
  `listfields` varchar(250) DEFAULT NULL,
  `formfields` varchar(250) DEFAULT NULL,
  `filter` varchar(250) DEFAULT NULL,
  `sortfields` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`set`,`setkey`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Eingabe Formular für die Tabellenbearbeitung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formsA__xx`
--

DROP TABLE IF EXISTS `formsA__xx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formsA__xx` (
  `set` varchar(50) NOT NULL DEFAULT '',
  `setkey` varchar(50) NOT NULL DEFAULT '',
  `cat` varchar(50) NOT NULL DEFAULT '',
  `designation` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(50) NOT NULL DEFAULT '',
  `spec_row` text DEFAULT NULL,
  `dbname` varchar(50) DEFAULT NULL,
  `table` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `values` text DEFAULT NULL,
  `dbnameValues` varchar(50) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `options` varchar(250) DEFAULT NULL,
  `fieldlist` varchar(250) DEFAULT NULL,
  `functval` varchar(100) DEFAULT NULL,
  `default` text DEFAULT NULL,
  `workflow` varchar(100) DEFAULT NULL,
  `tooltip` text DEFAULT NULL,
  `orgunit` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `pagecomment` text DEFAULT NULL,
  `seq` smallint(6) DEFAULT 0,
  `group` varchar(250) DEFAULT NULL,
  `preprocess` text DEFAULT NULL,
  `postprocess` text DEFAULT NULL,
  `groupclass` varchar(50) DEFAULT NULL,
  `groupmandat` varchar(100) DEFAULT NULL,
  `extended` varchar(50) DEFAULT NULL,
  `specclass` varchar(50) DEFAULT NULL,
  `listfields` varchar(250) DEFAULT NULL,
  `listbuttons` varchar(250) DEFAULT NULL,
  `formfields` varchar(250) DEFAULT NULL,
  `filter` varchar(250) DEFAULT NULL,
  `sortfields` varchar(250) DEFAULT NULL,
  `help` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`set`,`setkey`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Eingabe Formular für die Tabellenbearbeitung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formsA__xxx`
--

DROP TABLE IF EXISTS `formsA__xxx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formsA__xxx` (
  `set` varchar(50) NOT NULL DEFAULT '',
  `setkey` varchar(50) NOT NULL DEFAULT '',
  `cat` varchar(50) NOT NULL DEFAULT '',
  `designation` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(50) NOT NULL DEFAULT '',
  `spec_row` text DEFAULT NULL,
  `dbname` varchar(50) DEFAULT NULL,
  `table` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `values` text DEFAULT NULL,
  `dbnameValues` varchar(50) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `options` varchar(250) DEFAULT NULL,
  `fieldlist` varchar(250) DEFAULT NULL,
  `functval` varchar(100) DEFAULT NULL,
  `default` text DEFAULT NULL,
  `workflow` varchar(100) DEFAULT NULL,
  `tooltip` text DEFAULT NULL,
  `orgunit` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `pagecomment` text DEFAULT NULL,
  `seq` smallint(6) DEFAULT 0,
  `group` varchar(250) DEFAULT NULL,
  `preprocess` text DEFAULT NULL,
  `postprocess` text DEFAULT NULL,
  `groupclass` varchar(50) DEFAULT NULL,
  `groupmandat` varchar(100) DEFAULT NULL,
  `extended` varchar(50) DEFAULT NULL,
  `specclass` varchar(50) DEFAULT NULL,
  `listfields` varchar(250) DEFAULT NULL,
  `listbuttons` text DEFAULT NULL,
  `formfields` varchar(250) DEFAULT NULL,
  `filter` varchar(250) DEFAULT NULL,
  `sortfields` varchar(250) DEFAULT NULL,
  `help` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`set`,`setkey`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Eingabe Formular für die Tabellenbearbeitung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formsAparms`
--

DROP TABLE IF EXISTS `formsAparms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formsAparms` (
  `set` varchar(50) NOT NULL DEFAULT '',
  `dbname` varchar(50) DEFAULT NULL,
  `table` varchar(50) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `fieldlist` varchar(250) DEFAULT NULL,
  `workflow` varchar(100) DEFAULT NULL,
  `tooltip` text DEFAULT NULL,
  `orgunit` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `pagecomment` text DEFAULT NULL,
  `group` varchar(250) DEFAULT NULL,
  `preprocess` text DEFAULT NULL,
  `postprocess` text DEFAULT NULL,
  `groupclass` varchar(50) DEFAULT NULL,
  `groupmandat` varchar(100) DEFAULT NULL,
  `specclass` varchar(50) DEFAULT NULL,
  `listfields` varchar(250) DEFAULT NULL,
  `listbuttons` text DEFAULT NULL,
  `formfields` varchar(250) DEFAULT NULL,
  `filter` varchar(250) DEFAULT NULL,
  `sortfields` varchar(250) DEFAULT NULL,
  `help` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`set`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Eingabe Formular für die Tabellenbearbeitung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formsAtmp`
--

DROP TABLE IF EXISTS `formsAtmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formsAtmp` (
  `set` varchar(50) NOT NULL DEFAULT '',
  `setkey` varchar(50) NOT NULL DEFAULT '',
  `tab` varchar(50) NOT NULL DEFAULT '',
  `tabpermission` varchar(100) DEFAULT NULL,
  `tabnotpermission` varchar(100) DEFAULT NULL,
  `cat` varchar(50) DEFAULT '',
  `applic` varchar(100) DEFAULT NULL,
  `seq` smallint(6) DEFAULT 0,
  `typoPage` varchar(45) DEFAULT NULL,
  `designation` varchar(50) DEFAULT '',
  `fieldname` varchar(50) DEFAULT '',
  `spec_row` text DEFAULT NULL,
  `dbname` varchar(50) DEFAULT NULL,
  `sqlSelect` text DEFAULT NULL,
  `tablegen` varchar(45) DEFAULT NULL,
  `explanation` text DEFAULT NULL,
  `funclibs` varchar(200) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `selectInitopt` varchar(200) DEFAULT NULL,
  `placeholder` varchar(200) DEFAULT NULL,
  `values` text DEFAULT NULL,
  `addlText` text DEFAULT NULL,
  `dbnameValues` varchar(50) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `headColumn` varchar(250) DEFAULT NULL,
  `options` varchar(250) DEFAULT NULL,
  `special` varchar(250) DEFAULT NULL,
  `fieldlist` mediumtext DEFAULT NULL,
  `placeholdval` varchar(250) DEFAULT NULL COMMENT 'Weiss nicht mehr wozu',
  `default` text DEFAULT NULL,
  `workflow` varchar(100) DEFAULT NULL,
  `tooltip` text DEFAULT NULL,
  `fieldCondition` varchar(200) DEFAULT NULL,
  `identfield` varchar(100) DEFAULT '',
  `orgunit` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `commentOther` text DEFAULT NULL,
  `table` varchar(50) DEFAULT NULL,
  `pagecomment` text DEFAULT NULL,
  `group` varchar(250) DEFAULT NULL,
  `preprocess` text DEFAULT NULL,
  `postprocess` text DEFAULT NULL,
  `postprocessAfter` text DEFAULT NULL,
  `groupclass` varchar(50) DEFAULT NULL,
  `groupmandat` varchar(100) DEFAULT NULL,
  `extended` varchar(50) DEFAULT NULL,
  `specclass` varchar(50) DEFAULT NULL,
  `listfields` mediumtext DEFAULT NULL,
  `listfieldfuncts` text DEFAULT NULL,
  `listfieldgrp` varchar(100) DEFAULT NULL,
  `listlimit` int(11) DEFAULT NULL,
  `listbuttons` text DEFAULT NULL,
  `css_library` varchar(200) DEFAULT NULL,
  `js_library` varchar(100) DEFAULT NULL,
  `js_library_option` varchar(45) DEFAULT NULL,
  `js_parm` varchar(200) DEFAULT NULL,
  `js_translEle` text DEFAULT NULL,
  `linebuttons` text DEFAULT NULL,
  `linebloc` varchar(100) DEFAULT NULL,
  `detailstyle` varchar(200) DEFAULT NULL,
  `linebuttonsSpecial` varchar(200) DEFAULT NULL,
  `formfields` text DEFAULT NULL,
  `exportfields` text DEFAULT NULL,
  `formfieldsNoEdit` text DEFAULT NULL,
  `filter` mediumtext DEFAULT NULL,
  `pivot` text DEFAULT NULL,
  `footer` mediumtext DEFAULT NULL,
  `headerlineAdd` mediumtext DEFAULT NULL,
  `listprocess` varchar(100) DEFAULT '',
  `lineprocess` varchar(200) DEFAULT NULL,
  `viewclass` varchar(50) DEFAULT NULL,
  `ajaxclass` varchar(100) DEFAULT '',
  `detailbuttons` varchar(250) DEFAULT NULL,
  `submitButton` mediumtext DEFAULT NULL,
  `detailoptions` mediumtext DEFAULT NULL,
  `detailJSlib` varchar(200) DEFAULT NULL,
  `detailCSSlib` varchar(200) DEFAULT NULL,
  `help` varchar(50) DEFAULT NULL,
  `introtext` text DEFAULT NULL,
  `introdetail` text DEFAULT NULL,
  `introdetail4view` text DEFAULT NULL,
  `introtext2` text DEFAULT NULL,
  `hide` tinyint(4) DEFAULT 0,
  `standaloneForm` varchar(250) DEFAULT NULL,
  `dateformat` varchar(45) DEFAULT NULL,
  `listclass` varchar(50) DEFAULT NULL,
  `listclassIFempty` varchar(100) DEFAULT NULL,
  `textIFempty` varchar(100) DEFAULT NULL,
  `mainclass` varchar(45) DEFAULT NULL,
  `editclass` varchar(45) DEFAULT NULL,
  `editTitle` varchar(200) DEFAULT NULL,
  `listoptions` varchar(200) DEFAULT NULL,
  `colorValue` varchar(200) DEFAULT NULL,
  `modifier` int(11) DEFAULT NULL,
  `originator` int(11) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `mypivot` text DEFAULT NULL,
  `mySave` varchar(200) DEFAULT NULL,
  `tablink` varchar(200) DEFAULT NULL,
  `tabclass` varchar(100) DEFAULT NULL,
  `atStart` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`set`,`setkey`,`tab`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Eingabe Formular für die Tabellenbearbeitung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formsB`
--

DROP TABLE IF EXISTS `formsB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formsB` (
  `auto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `frm` varchar(50) NOT NULL DEFAULT '' COMMENT 'Name der Statusbox (FormName)',
  `lft` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Nested Set Left',
  `rgt` int(10) unsigned DEFAULT NULL COMMENT 'Nested Set Right',
  `nsl` int(10) unsigned DEFAULT 0 COMMENT 'Nested Set Einrückstufe',
  `tabletag` varchar(20) DEFAULT NULL COMMENT 'T:table, R:row, H/D: TH/TD',
  `cspan` varchar(50) DEFAULT NULL COMMENT 'colspan (TH, TD); 2.Wert bedingt',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Element nicht benutzen',
  `on_cond` varchar(100) DEFAULT NULL COMMENT 'Switches in eval_cond(), die Zeile evtl unterdrücken',
  `hr_fd` varchar(10) DEFAULT NULL COMMENT 'für HR Komma FD: E: editierbar, D: disabled, H: hide',
  `ttdisp` varchar(50) DEFAULT NULL COMMENT 'Element (inline) oder anders (zB:none) anzeigen',
  `ttid` varchar(50) DEFAULT NULL COMMENT 'id des table-Elements',
  `ttcss` varchar(100) DEFAULT NULL COMMENT 'css class des table-Elements (container)',
  `ttstyle` varchar(200) DEFAULT NULL COMMENT 'css-Style des table-Elements (container)',
  `_compul` varchar(50) DEFAULT NULL COMMENT '[mc] mark name as compulsary',
  `_star` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Spaltendifferenz für die Compul-Markierung',
  `subfrm` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Nummer Unterformular 1, 2, ...',
  `compcond` varchar(50) DEFAULT NULL COMMENT 'condition for marking input as compulsary',
  `formtag` varchar(20) DEFAULT NULL COMMENT 'HTML-FormTag',
  `_type` varchar(50) DEFAULT NULL COMMENT '[y] Input type definition',
  `_xtra` varchar(50) DEFAULT NULL COMMENT '[x] Sonder-Typ, zB dpc',
  `description` varchar(200) DEFAULT NULL COMMENT 'Umschreibung',
  `_id` varchar(50) DEFAULT NULL COMMENT '[i] id',
  `_name` varchar(50) DEFAULT NULL COMMENT '[n] name',
  `_value` varchar(200) DEFAULT NULL COMMENT '[p] value oder #p für Parameter-Hinweis',
  `_def_val` varchar(200) DEFAULT NULL COMMENT 'Vorgabe-/Ausgangswert',
  `_b4` varchar(50) DEFAULT NULL COMMENT '[b4] Flag für History-Input des Ausgangswertes',
  `_shoval` tinyint(3) unsigned DEFAULT NULL COMMENT '[sv] Anzeigefeld erwünscht, zB Datepicker',
  `_alt` varchar(200) DEFAULT NULL COMMENT '[a] Alternative Input',
  `_title` varchar(200) DEFAULT NULL COMMENT '[t] title=Tooltipp',
  `_css_err` varchar(50) DEFAULT NULL COMMENT '[er] css Zusatz-Class im Fehlerfall',
  `_opt_inx` varchar(200) DEFAULT NULL COMMENT '[o] #ParmsBereich od SELECTname  für Optionenliste',
  `_opt0_void` varchar(50) DEFAULT NULL COMMENT '[o0] unterdrückt Bitte-auswählen Option',
  `_opt_list` text DEFAULT NULL COMMENT 'Blankgetrennte Optionenauflistung',
  `_val_inx` varchar(50) DEFAULT NULL COMMENT '[p] ParmsIndex, auf aktuellen value zeigend',
  `_css` varchar(100) DEFAULT NULL COMMENT '[c] class des input tags',
  `_csslabel` varchar(50) DEFAULT NULL COMMENT '[lc] css Label',
  `_maxlength` int(10) unsigned DEFAULT NULL COMMENT '[m] maxlength',
  `_anyevent` varchar(200) DEFAULT NULL COMMENT '[eh] beliebiger Eventhandler',
  `_onclick` varchar(200) DEFAULT NULL COMMENT '[ocl] onclick-Code',
  `_onkeypress` varchar(200) DEFAULT NULL COMMENT '[okp] onkeypress-Code',
  `_onkeyup` varchar(200) DEFAULT NULL COMMENT '[oup] onkeyup-Code',
  `_onchange` varchar(200) DEFAULT NULL COMMENT '[och] onchange-Code',
  `_size` int(10) unsigned DEFAULT NULL COMMENT '[s] size',
  `_rows` int(10) unsigned DEFAULT NULL COMMENT '[sr] rows',
  `_cols` int(10) unsigned DEFAULT NULL COMMENT '[sc] cols',
  `_anystyles` text DEFAULT NULL COMMENT '[sy] beliebiger style-Code',
  `_width` varchar(50) DEFAULT NULL COMMENT '[w] style=width:-Code',
  `_multip` tinyint(3) unsigned DEFAULT 0 COMMENT '[m] multiple-Flag',
  `_disab` tinyint(3) unsigned DEFAULT 0 COMMENT '[d] disable-Flag',
  `_disp` varchar(50) DEFAULT NULL COMMENT '[dy] display-Attribute (def:inline)',
  `_plhd` varchar(50) DEFAULT NULL COMMENT '[ph] Hintergrund-Platzhalter',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`auto`),
  KEY `sort` (`frm`,`lft`)
) ENGINE=MyISAM AUTO_INCREMENT=261 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Elemente eines StatusBox-Formulars (routine.lib)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formsBtmp`
--

DROP TABLE IF EXISTS `formsBtmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formsBtmp` (
  `auto` int(10) unsigned DEFAULT NULL,
  `frm` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'Name der Statusbox (FormName)',
  `lft` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Nested Set Left',
  `rgt` int(10) unsigned DEFAULT NULL COMMENT 'Nested Set Right',
  `nsl` int(10) unsigned DEFAULT 0 COMMENT 'Nested Set Einrückstufe',
  `tabletag` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'T:table, R:row, H/D: TH/TD',
  `cspan` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'colspan (TH, TD); 2.Wert bedingt',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Element nicht benutzen',
  `on_cond` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Switches in eval_cond(), die Zeile evtl unterdrücken',
  `hr_fd` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT 'für HR Komma FD: E: editierbar, D: disabled, H: hide',
  `ttdisp` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Element (inline) oder anders (zB:none) anzeigen',
  `ttid` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'id des table-Elements',
  `ttcss` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'css class des table-Elements',
  `ttstyle` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT 'css-Style des table-Elements',
  `_compul` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '[mc] mark name as compulsary',
  `_star` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Spaltendifferenz für die Compul-Markierung',
  `subfrm` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Nummer Unterformular 1, 2, ...',
  `compcond` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'condition for marking input as compulsary',
  `formtag` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'HTML-FormTag',
  `_type` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '[y] Input type definition',
  `_xtra` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '[x] Sonder-Typ, zB dpc',
  `description` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Umschreibung',
  `_id` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '[i] id',
  `_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '[n] name',
  `_value` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '[p] value oder #p für Parameter-Hinweis',
  `_def_val` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Vorgabe-/Ausgangswert',
  `_b4` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '[b4] Flag für History-Input des Ausgangswertes',
  `_shoval` tinyint(3) unsigned DEFAULT NULL COMMENT '[sv] Anzeigefeld erwünscht, zB Datepicker',
  `_alt` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '[a] Alternative Input',
  `_title` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '[t] title=Tooltipp',
  `_css_err` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '[er] css Zusatz-Class im Fehlerfall',
  `_opt_inx` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '[o] #ParmsBereich od SELECTname  für Optionenliste',
  `_opt_list` text CHARACTER SET utf8 DEFAULT NULL COMMENT 'Blankgetrennte Optionenauflistung',
  `_val_inx` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '[p] ParmsIndex, auf aktuellen value zeigend',
  `_css` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '[c] class',
  `_csslabel` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '[lc] css Label',
  `_maxlength` int(10) unsigned DEFAULT NULL COMMENT '[m] maxlength',
  `_anyevent` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '[eh] beliebiger Eventhandler',
  `_onclick` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '[ocl] onclick-Code',
  `_onkeypress` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '[okp] onkeypress-Code',
  `_onkeyup` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '[oup] onkeyup-Code',
  `_onchange` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT '[och] onchange-Code',
  `_size` int(10) unsigned DEFAULT NULL COMMENT '[s] size',
  `_rows` int(10) unsigned DEFAULT NULL COMMENT '[sr] rows',
  `_cols` int(10) unsigned DEFAULT NULL COMMENT '[sc] cols',
  `_anystyles` text CHARACTER SET utf8 DEFAULT NULL COMMENT '[sy] beliebiger style-Code',
  `_width` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '[w] style=width:-Code',
  `_multip` tinyint(3) unsigned DEFAULT 0 COMMENT '[m] multiple-Flag',
  `_disab` tinyint(3) unsigned DEFAULT 0 COMMENT '[d] disable-Flag',
  `_disp` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '[dy] display-Attribute (def:inline)',
  `_plhd` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '[ph] Hintergrund-Platzhalter',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`lft`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formsR`
--

DROP TABLE IF EXISTS `formsR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formsR` (
  `auto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `frm` varchar(50) NOT NULL DEFAULT '' COMMENT 'Formularname',
  `designation` varchar(50) NOT NULL DEFAULT '' COMMENT 'optionaler Anzeigename',
  `fieldname` varchar(50) NOT NULL DEFAULT '' COMMENT 'Feldname',
  `grp` smallint(5) unsigned NOT NULL DEFAULT 1 COMMENT 'Gruppenbildung: 0: Form-Parms, 1-x: Unterformulare',
  `seq` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Feldreihenfolge / Unterform',
  `withId` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'ist mit grp/seq-id zu versehen',
  `type` varchar(20) DEFAULT NULL COMMENT 'Input-Type',
  `spec_val` text DEFAULT NULL,
  `default` text DEFAULT NULL,
  `values` text DEFAULT NULL,
  `dbname` varchar(50) DEFAULT NULL,
  `tablename` varchar(50) DEFAULT NULL,
  `options` varchar(100) DEFAULT NULL,
  `onevents` text DEFAULT NULL COMMENT 'für scripts',
  `orgunit` varchar(50) DEFAULT NULL,
  `hide` tinyint(3) unsigned DEFAULT 0 COMMENT 'Eintrag nicht verwenden',
  `disablecond` text DEFAULT NULL,
  `activecond` varchar(100) DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL COMMENT 'css class(es) changing',
  `size` varchar(20) DEFAULT NULL,
  `special` varchar(20) DEFAULT NULL,
  `special_view` varchar(100) DEFAULT NULL,
  `condition1` varchar(50) DEFAULT NULL,
  `condition2` varchar(50) DEFAULT NULL,
  `functval` varchar(100) DEFAULT NULL,
  `preprocess` text DEFAULT NULL,
  `postprocess` text DEFAULT NULL,
  `workflow` varchar(100) DEFAULT NULL,
  `tooltip` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `pagecomment` text DEFAULT NULL,
  `group` varchar(250) DEFAULT NULL,
  `groupclass` varchar(50) DEFAULT NULL,
  `groupmandat` varchar(100) DEFAULT NULL,
  `extended` varchar(50) DEFAULT NULL,
  `specclass` varchar(50) DEFAULT NULL,
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`auto`),
  KEY `frm_designation_fieldname` (`frm`,`designation`,`fieldname`),
  KEY `type` (`type`)
) ENGINE=MyISAM AUTO_INCREMENT=234 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='für Formulare mit Steuerdaten (grp=0)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formsRx`
--

DROP TABLE IF EXISTS `formsRx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formsRx` (
  `frm` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'Formularname',
  `designation` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'optionaler Anzeigename',
  `fieldname` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'Feldname',
  `grp` smallint(5) unsigned NOT NULL DEFAULT 1 COMMENT 'Gruppenbildung: 0: Form-Parms, 1-x: Unterformulare',
  `seq` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Feldreihenfolge / Unterform',
  `type` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Input-Type',
  `options` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `default` text CHARACTER SET utf8 DEFAULT NULL,
  `values` text CHARACTER SET utf8 DEFAULT NULL,
  `dbname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `tablename` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `orgunit` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `spec_row` text CHARACTER SET utf8 DEFAULT NULL,
  `disablecond` text CHARACTER SET utf8 DEFAULT NULL,
  `activecond` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `size` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `special` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `special_view` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `condition1` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `condition2` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `functval` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `preprocess` text CHARACTER SET utf8 DEFAULT NULL,
  `postprocess` text CHARACTER SET utf8 DEFAULT NULL,
  `workflow` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tooltip` text CHARACTER SET utf8 DEFAULT NULL,
  `comment` text CHARACTER SET utf8 DEFAULT NULL,
  `pagecomment` text CHARACTER SET utf8 DEFAULT NULL,
  `group` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `groupclass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `groupmandat` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `extended` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `specclass` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `entered` timestamp NULL DEFAULT NULL,
  `originator` int(11) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifier` int(11) NOT NULL DEFAULT 1,
  KEY `frm_designation_fieldname` (`frm`,`designation`,`fieldname`),
  KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formslog`
--

DROP TABLE IF EXISTS `formslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formslog` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` int(11) DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=58041 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formsx`
--

DROP TABLE IF EXISTS `formsx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formsx` (
  `set` varchar(50) NOT NULL DEFAULT '',
  `designation` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(50) NOT NULL DEFAULT '',
  `spec_row` text DEFAULT NULL,
  `tablename` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `disablecond` text DEFAULT NULL,
  `activecond` varchar(100) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `special` varchar(20) DEFAULT NULL,
  `special_view` varchar(100) DEFAULT NULL,
  `options` varchar(100) DEFAULT NULL,
  `condition1` varchar(50) DEFAULT NULL,
  `condition2` varchar(50) DEFAULT NULL,
  `values` text DEFAULT NULL,
  `dbname` varchar(50) DEFAULT NULL,
  `functval` varchar(100) DEFAULT NULL,
  `default` text DEFAULT NULL,
  `preprocess` text DEFAULT NULL,
  `postprocess` text DEFAULT NULL,
  `workflow` varchar(100) DEFAULT NULL,
  `tooltip` text DEFAULT NULL,
  `orgunit` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `pagecomment` text DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `group` varchar(250) DEFAULT NULL,
  `groupclass` varchar(50) DEFAULT NULL,
  `groupmandat` varchar(100) DEFAULT NULL,
  `extended` varchar(50) DEFAULT NULL,
  `specclass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`set`,`designation`,`fieldname`),
  KEY `type` (`type`),
  KEY `options` (`options`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Eingabe Formular für die Tabellenbearbeitung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `formsx__bak`
--

DROP TABLE IF EXISTS `formsx__bak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formsx__bak` (
  `set` varchar(50) NOT NULL DEFAULT '',
  `designation` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(50) NOT NULL DEFAULT '',
  `spec_row` text DEFAULT NULL,
  `tablename` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `disablecond` text DEFAULT NULL,
  `activecond` varchar(100) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `special` varchar(20) DEFAULT NULL,
  `special_view` varchar(100) DEFAULT NULL,
  `options` varchar(100) DEFAULT NULL,
  `condition1` varchar(50) DEFAULT NULL,
  `condition2` varchar(50) DEFAULT NULL,
  `values` text DEFAULT NULL,
  `dbname` varchar(50) DEFAULT NULL,
  `functval` varchar(100) DEFAULT NULL,
  `default` text DEFAULT NULL,
  `preprocess` text DEFAULT NULL,
  `postprocess` text DEFAULT NULL,
  `tooltip` text DEFAULT NULL,
  `orgunit` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `group` varchar(250) DEFAULT NULL,
  `groupclass` varchar(50) DEFAULT NULL,
  `extended` varchar(50) DEFAULT NULL,
  `specclass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`set`,`designation`,`fieldname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Eingabe Formular für die Tabellenbearbeitung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `geo_regions`
--

DROP TABLE IF EXISTS `geo_regions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `geo_regions` (
  `region` varchar(2) NOT NULL,
  `continent` varchar(50) NOT NULL,
  PRIMARY KEY (`region`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Kontinentencodes';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `get_selectX`
--

DROP TABLE IF EXISTS `get_selectX`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `get_selectX` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `entry` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `ident` int(11) DEFAULT NULL,
  `pageId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` int(11) DEFAULT NULL,
  `mem_alloc` int(11) DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `glossary`
--

DROP TABLE IF EXISTS `glossary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `glossary` (
  `key_lang` varchar(50) NOT NULL,
  `key_text` varchar(50) DEFAULT NULL,
  `searchterms` varchar(255) DEFAULT NULL,
  `def_by` int(10) unsigned NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`key_lang`),
  FULLTEXT KEY `searchterms` (`searchterms`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Glossar --- Begriffsverwendung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `h_lang_de`
--

DROP TABLE IF EXISTS `h_lang_de`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h_lang_de` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `val` text DEFAULT NULL,
  `orgunit` varchar(50) NOT NULL DEFAULT '0',
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `h_auto` mediumint(9) NOT NULL AUTO_INCREMENT,
  `h_entered` datetime DEFAULT NULL,
  `h_originator` int(11) DEFAULT 1,
  PRIMARY KEY (`h_auto`),
  FULLTEXT KEY `lang_de` (`key`,`val`,`orgunit`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `h_lang_en`
--

DROP TABLE IF EXISTS `h_lang_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h_lang_en` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `val` text DEFAULT NULL,
  `orgunit` varchar(50) NOT NULL DEFAULT '0',
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `h_auto` mediumint(9) NOT NULL AUTO_INCREMENT,
  `h_entered` datetime DEFAULT NULL,
  `h_originator` int(11) DEFAULT 1,
  PRIMARY KEY (`h_auto`),
  FULLTEXT KEY `lang_en` (`key`,`val`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `h_lang_parent`
--

DROP TABLE IF EXISTS `h_lang_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h_lang_parent` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `parent` varchar(250) DEFAULT NULL,
  `seq` smallint(6) DEFAULT 10,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 0,
  `h_auto` mediumint(9) NOT NULL AUTO_INCREMENT,
  `h_entered` datetime DEFAULT NULL,
  `h_originator` int(11) DEFAULT 1,
  PRIMARY KEY (`h_auto`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Parents zu lang_xy';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hacks`
--

DROP TABLE IF EXISTS `hacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hacks` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `library` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `class` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linenumber` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `details` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `originator` int(11) DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `modifier` int(11) DEFAULT 0,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='an externen Komponenten getätigte Hacks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `helpdesklog`
--

DROP TABLE IF EXISTS `helpdesklog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdesklog` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` int(11) DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `simul` int(11) DEFAULT NULL,
  `mem` int(11) DEFAULT NULL,
  `caller` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `history`
--

DROP TABLE IF EXISTS `history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `history` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbuser` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tabname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(6) COLLATE utf8_unicode_ci DEFAULT 'de',
  `operation` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=533 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `how_to`
--

DROP TABLE IF EXISTS `how_to`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `how_to` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(50) DEFAULT NULL,
  `subcat` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`idid`),
  FULLTEXT KEY `how_to` (`cat`,`subcat`,`title`,`description`,`keywords`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='Typo3 Tipps, Dokumentation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `infoBoardLog`
--

DROP TABLE IF EXISTS `infoBoardLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infoBoardLog` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `browser` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `platform` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=5544037 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='2020-06-26: inaktiviert';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inputform-OLD`
--

DROP TABLE IF EXISTS `inputform-OLD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inputform-OLD` (
  `set` varchar(50) NOT NULL DEFAULT '',
  `designation` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(50) NOT NULL DEFAULT '',
  `spec_row` text DEFAULT NULL,
  `tablename` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `noedit` varchar(255) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `special` varchar(20) DEFAULT NULL,
  `options` varchar(100) DEFAULT NULL,
  `condition1` varchar(50) DEFAULT NULL,
  `condition2` varchar(50) DEFAULT NULL,
  `values` text DEFAULT NULL,
  `dbname` varchar(50) DEFAULT NULL,
  `default` varchar(50) DEFAULT NULL,
  `tooltip` text DEFAULT NULL,
  `orgunit` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
  `extended` varchar(50) DEFAULT NULL,
  `specclass` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`set`,`designation`,`fieldname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Eingabe Formular für die Tabellenbearbeitung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `intrasearchlog`
--

DROP TABLE IF EXISTS `intrasearchlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intrasearchlog` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simul` int(11) DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=5137 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `it_inventar`
--

DROP TABLE IF EXISTS `it_inventar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `it_inventar` (
  `key` int(11) NOT NULL AUTO_INCREMENT,
  `parkey` int(11) DEFAULT NULL,
  `group` varchar(250) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `kind` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `parms` text DEFAULT NULL,
  `noofcpus` int(11) DEFAULT NULL,
  `memory` varchar(10) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `room` varchar(100) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `responsible` varchar(200) DEFAULT NULL,
  `autoIdent` int(11) DEFAULT NULL,
  `orgunit` varchar(50) DEFAULT '0',
  `teamviewer` varchar(50) DEFAULT NULL,
  `ipaddr` varchar(100) DEFAULT NULL,
  `ftp` varchar(255) DEFAULT NULL,
  `directory` varchar(100) DEFAULT NULL,
  `macaddr` varchar(50) DEFAULT NULL,
  `purpose` varchar(50) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `rdslogin` varchar(50) DEFAULT NULL,
  `rdspw` varchar(50) DEFAULT NULL,
  `provider` varchar(150) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  `mode` varchar(100) DEFAULT 'aktiv',
  `sw` varchar(250) DEFAULT NULL,
  `docLink` varchar(45) DEFAULT NULL COMMENT 'Dokumenten-Nummer eines zugehörigen Doks',
  `pivot` text DEFAULT NULL,
  `pw1` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`key`),
  KEY `name` (`name`),
  KEY `location` (`location`)
) ENGINE=MyISAM AUTO_INCREMENT=261 DEFAULT CHARSET=utf8 COMMENT='IT Inventar';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `it_inventar_1`
--

DROP TABLE IF EXISTS `it_inventar_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `it_inventar_1` (
  `key` int(11) NOT NULL AUTO_INCREMENT,
  `parkey` int(11) DEFAULT NULL,
  `group` varchar(250) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `kind` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `parms` text DEFAULT NULL,
  `noofcpus` int(11) DEFAULT NULL,
  `memory` varchar(10) DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `room` varchar(100) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `responsible` varchar(200) DEFAULT NULL,
  `autoIdent` int(11) DEFAULT NULL,
  `orgunit` varchar(50) DEFAULT '0',
  `teamviewer` varchar(50) DEFAULT NULL,
  `ipaddr` varchar(100) DEFAULT NULL,
  `ftp` varchar(255) DEFAULT NULL,
  `directory` varchar(100) DEFAULT NULL,
  `macaddr` varchar(50) DEFAULT NULL,
  `purpose` varchar(50) DEFAULT NULL,
  `login` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `rdslogin` varchar(50) DEFAULT NULL,
  `rdspw` varchar(50) DEFAULT NULL,
  `provider` varchar(150) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  `mode` varchar(100) DEFAULT 'aktiv',
  `sw` varchar(250) DEFAULT NULL,
  `docLink` varchar(45) DEFAULT NULL COMMENT 'Dokumenten-Nummer eines zugehörigen Doks',
  `pivot` text DEFAULT NULL,
  `pw1` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`key`),
  KEY `location` (`location`) USING BTREE,
  KEY `name` (`name`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=282 DEFAULT CHARSET=utf8 COMMENT='IT Inventar';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `it_inventar_PC`
--

DROP TABLE IF EXISTS `it_inventar_PC`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `it_inventar_PC` (
  `key` int(11) NOT NULL DEFAULT 0,
  `memory` varchar(50) DEFAULT NULL,
  `windowsupd` varchar(100) DEFAULT NULL,
  `clockspeed` varchar(50) DEFAULT NULL,
  `noofcpus` varchar(50) DEFAULT NULL,
  `browser` varchar(50) DEFAULT NULL,
  `antivirus` varchar(20) DEFAULT NULL,
  `office` varchar(50) DEFAULT NULL,
  `pdfreader` varchar(100) DEFAULT NULL,
  `remotesupport` varchar(100) DEFAULT NULL,
  `otherapplic` varchar(100) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 0,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IT Inventar PC Erweiterung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `it_inventar_kind`
--

DROP TABLE IF EXISTS `it_inventar_kind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `it_inventar_kind` (
  `kind` varchar(50) NOT NULL,
  `seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`kind`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IT Inventar Hilfstabelle - Alt: sollte nicht mehr verwendet werden';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `it_inventar_loca`
--

DROP TABLE IF EXISTS `it_inventar_loca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `it_inventar_loca` (
  `location` varchar(50) NOT NULL,
  `seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`location`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IT Inventar Hilfstabelle - Alt: sollte nicht mehr verwendet werden';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `it_projects`
--

DROP TABLE IF EXISTS `it_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `it_projects` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `descr` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sysarea` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_org` int(11) DEFAULT NULL,
  `client` int(11) DEFAULT NULL,
  `user_repr` int(11) DEFAULT NULL,
  `orderdoc` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `incharge` int(11) DEFAULT NULL,
  `planned` date DEFAULT NULL,
  `prio` smallint(6) DEFAULT NULL,
  `effort` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aim` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `projphase` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `milestone` date DEFAULT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completion` int(11) DEFAULT 0,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 0,
  `proj_kind` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`),
  KEY `planned` (`planned`),
  KEY `prio` (`prio`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='IT Projektliste';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `it_requests`
--

DROP TABLE IF EXISTS `it_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `it_requests` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `name` text DEFAULT NULL,
  `client` int(11) DEFAULT NULL,
  `user_repr` int(11) DEFAULT NULL,
  `user_org` int(11) DEFAULT NULL,
  `incharge` int(11) DEFAULT NULL,
  `targetdate` date DEFAULT NULL,
  `planned` date DEFAULT NULL,
  `initsit` text DEFAULT NULL,
  `soldescr` text DEFAULT NULL,
  `goal` text DEFAULT NULL,
  `restrictions` text DEFAULT NULL,
  `todeliver` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `offerdoc` varchar(100) DEFAULT NULL,
  `projdoc` varchar(100) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 0,
  PRIMARY KEY (`auto`),
  KEY `user_org` (`user_org`),
  KEY `client` (`client`),
  KEY `user_repr` (`user_repr`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='IT Aufträge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `it_supp_areas`
--

DROP TABLE IF EXISTS `it_supp_areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `it_supp_areas` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `applsys` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `appl_supp` int(11) DEFAULT NULL,
  `2ndlevel_supp` int(11) DEFAULT NULL,
  `status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 0,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `it_supp_hotline`
--

DROP TABLE IF EXISTS `it_supp_hotline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `it_supp_hotline` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `phone` varchar(100) DEFAULT NULL,
  `seq` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ident`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IT Hotline in charge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `it_supp_todo`
--

DROP TABLE IF EXISTS `it_supp_todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `it_supp_todo` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` int(10) unsigned DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `rev_date` date DEFAULT NULL,
  `entered` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `completed` date DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modifier` int(11) DEFAULT NULL,
  `originator` int(11) DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='Offene Aufgaben';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lang_de`
--

DROP TABLE IF EXISTS `lang_de`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lang_de` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `val` text DEFAULT NULL,
  `orgunit` varchar(50) NOT NULL DEFAULT '0',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `flag` varchar(100) DEFAULT NULL,
  `request_transl` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`key`,`orgunit`),
  KEY `modified` (`modified`),
  FULLTEXT KEY `lang_de` (`key`,`val`,`orgunit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lang_en`
--

DROP TABLE IF EXISTS `lang_en`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lang_en` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `val` text DEFAULT NULL,
  `orgunit` varchar(50) NOT NULL DEFAULT '0',
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `flag` varchar(100) DEFAULT NULL,
  `request_transl` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`key`,`orgunit`),
  FULLTEXT KEY `lang_en` (`key`,`val`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lang_fr`
--

DROP TABLE IF EXISTS `lang_fr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lang_fr` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `val` text DEFAULT NULL,
  `orgunit` varchar(50) NOT NULL DEFAULT '0',
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `flag` varchar(100) DEFAULT NULL,
  `request_transl` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`key`,`orgunit`),
  FULLTEXT KEY `lang_fr` (`key`,`val`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lang_parent`
--

DROP TABLE IF EXISTS `lang_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lang_parent` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `parent` varchar(250) DEFAULT NULL,
  `seq` smallint(6) DEFAULT 10,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 0,
  `orgunit` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Parents zu lang_xy';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `lang_temp`
--

DROP TABLE IF EXISTS `lang_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lang_temp` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `val` text DEFAULT NULL,
  `orgunit` varchar(50) NOT NULL DEFAULT '0',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifier` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `login_errorlog`
--

DROP TABLE IF EXISTS `login_errorlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_errorlog` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simul` int(11) DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=187435 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `login_log`
--

DROP TABLE IF EXISTS `login_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login_log` (
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) DEFAULT NULL,
  `ident` int(11) DEFAULT NULL,
  `simul_user` int(11) DEFAULT NULL,
  `browser` varchar(100) DEFAULT NULL,
  `version` varchar(100) DEFAULT NULL,
  `platform` varchar(100) DEFAULT NULL,
  `acclang` text DEFAULT NULL,
  `useragent` text DEFAULT NULL,
  `caller` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`seq`),
  KEY `ident` (`ident`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM AUTO_INCREMENT=145857 DEFAULT CHARSET=utf8 COMMENT='Login Log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mail_log`
--

DROP TABLE IF EXISTS `mail_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_log` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1 COMMENT 'Autor der Meldung',
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simul` int(11) DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(45) CHARACTER SET utf8 DEFAULT NULL COMMENT 'deferred (cronjob)',
  `ms_auto` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbch1_Igen.massmail_storage Identifikation (auto)',
  `date_sent` datetime DEFAULT '0000-00-00 00:00:00',
  `email` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `workflow` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=54833 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='ajax_mail.lib';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `massmail_log`
--

DROP TABLE IF EXISTS `massmail_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `massmail_log` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `run` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` varchar(200) COLLATE utf8_unicode_ci DEFAULT '1',
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `server` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recipient` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attach` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=7768 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='massmail.lib';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `massmail_log_addr`
--

DROP TABLE IF EXISTS `massmail_log_addr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `massmail_log_addr` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=809 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mimetypes`
--

DROP TABLE IF EXISTS `mimetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mimetypes` (
  `ext` varchar(50) NOT NULL,
  `type` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`ext`),
  UNIQUE KEY `ext` (`ext`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mobilelog`
--

DROP TABLE IF EXISTS `mobilelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mobilelog` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simul` int(11) DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `useragent` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=7531 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modification_log`
--

DROP TABLE IF EXISTS `modification_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modification_log` (
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  `entered` timestamp NOT NULL DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `scope` varchar(100) DEFAULT NULL,
  `kind` varchar(100) DEFAULT NULL,
  `method` varchar(100) DEFAULT NULL,
  `caller` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='Programmaenderungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mysqlilog`
--

DROP TABLE IF EXISTS `mysqlilog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mysqlilog` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simul` int(11) DEFAULT NULL,
  `caller` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=152209 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nsbasket`
--

DROP TABLE IF EXISTS `nsbasket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nsbasket` (
  `lft` int(10) unsigned DEFAULT NULL COMMENT 'aktueller lft-Wert',
  `rgt` int(10) unsigned DEFAULT NULL COMMENT 'aktueller rgt-Wert',
  `nsl` int(10) unsigned DEFAULT NULL COMMENT 'aktueller NS-Level',
  `hide` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'optional versteckter Eintrag',
  `hdr` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Titel, fix versteckter Eintrag',
  `key` varchar(100) DEFAULT NULL COMMENT 'Schlüsselwert',
  `descr` varchar(250) DEFAULT NULL COMMENT 'Beschreibung',
  `parent` varchar(100) DEFAULT NULL COMMENT 'Key des nächsten übergeordneten Eintrages',
  `enhance` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'weist auf unvollständig erfassten Eintrag',
  `inuse` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT '1: in use | 0: zur Löschung vorbereitet',
  `collapse` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Ast und Unteräste ausblenden',
  `setname` varchar(50) NOT NULL COMMENT 'gem. dfb_system.parmtable',
  `lft0` int(10) unsigned NOT NULL COMMENT 'Initial-lft',
  `rgt0` int(10) unsigned DEFAULT NULL COMMENT 'Initial-rgt',
  `nsl0` int(10) unsigned DEFAULT NULL COMMENT 'Initial-nsl',
  `hide0` int(10) unsigned DEFAULT NULL COMMENT 'Initial-hide',
  `hdr0` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Initial-Headermarkierung',
  `key0` varchar(100) DEFAULT NULL COMMENT 'Initial-Schlüsselwert',
  `descr0` varchar(250) DEFAULT NULL COMMENT 'Initial-Beschreibung',
  `erasable` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'grundsätzlich löschbarer Eintrag',
  `created` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Beginn Modifikation',
  `admin` int(10) unsigned DEFAULT NULL COMMENT 'ausführender Administrator',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Letzte Änderung',
  `modifier` int(10) unsigned DEFAULT NULL COMMENT 'Letzter Administrator',
  PRIMARY KEY (`setname`,`lft0`),
  KEY `admin` (`admin`),
  KEY `lft` (`lft`),
  KEY `rgt` (`rgt`),
  KEY `lft0` (`lft0`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Verwaltungen von Nested Sets geschehen über diesen Basket, welcher die dazu nötigen Keydaten bereithält. \r\nErst nach Abschluss und bestätigtem Erfolg wird die Originaltabelle nachgeführt und der Basket geleert.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nslog`
--

DROP TABLE IF EXISTS `nslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nslog` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parmset` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'benutztes NS-ParmSet',
  `task` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ausgeführte Aufgabe',
  `key` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Schlüsselwert',
  `lft` int(10) unsigned DEFAULT NULL COMMENT 'benutzter lft-Wert',
  `where` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tabelle und Suchfilter',
  `afrow` int(10) unsigned DEFAULT NULL COMMENT 'betroffene Einträge',
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Beschreibung',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin` int(11) DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=COMPACT COMMENT='Erfolgte Veränderungen von Nested Sets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `oldbrowser_log_NA`
--

DROP TABLE IF EXISTS `oldbrowser_log_NA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oldbrowser_log_NA` (
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) DEFAULT NULL,
  `ident` int(11) DEFAULT NULL,
  `browser` varchar(100) DEFAULT NULL,
  `version` varchar(100) DEFAULT NULL,
  `platform` varchar(100) DEFAULT NULL,
  `acclang` text DEFAULT NULL,
  `useragent` text DEFAULT NULL,
  `caller` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`seq`),
  KEY `timestamp` (`timestamp`),
  KEY `ident` (`ident`)
) ENGINE=MyISAM AUTO_INCREMENT=7308 DEFAULT CHARSET=utf8 COMMENT='Login Log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `otherpw`
--

DROP TABLE IF EXISTS `otherpw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otherpw` (
  `resource` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `purpose` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`resource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Passwörter für andere (externe) Anwendungen)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `parmsets`
--

DROP TABLE IF EXISTS `parmsets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parmsets` (
  `setname` varchar(50) NOT NULL COMMENT 'Set-Schlüssel',
  `title` varchar(200) DEFAULT NULL COMMENT 'Set-Beschreibung',
  `db_table` varchar(50) DEFAULT NULL COMMENT 'Suchschlüssel für parmtable',
  `dbase` varchar(50) DEFAULT 'dfb_contacts' COMMENT 'Datenbankname (Flexu)',
  `dtable` varchar(100) DEFAULT NULL COMMENT 'Tabellenname',
  `sectorVal` varchar(50) DEFAULT NULL COMMENT 'Inhalt des Sektorfeldes',
  `selectCand` varchar(100) DEFAULT NULL,
  `showID` tinyint(3) unsigned DEFAULT 0 COMMENT 'Steuerung ID-Anzeige',
  `showValue` tinyint(3) unsigned DEFAULT 0 COMMENT 'Steuerung Wert-Anzeige',
  `hideSet` tinyint(3) unsigned DEFAULT 0 COMMENT '0/1 Set-Eintrag ausblenden',
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`setname`),
  KEY `db_table` (`db_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Parameter-Sets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `parmtable`
--

DROP TABLE IF EXISTS `parmtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parmtable` (
  `db_table` varchar(50) NOT NULL COMMENT 'KEY Mix aus dBase+Tabellenname',
  `dbase` varchar(50) DEFAULT 'dfb_contacts' COMMENT 'Datenbankname (Flexu)',
  `dtable` varchar(100) NOT NULL DEFAULT '' COMMENT 'Tabellenname',
  `sector` varchar(50) DEFAULT 'sector' COMMENT 'Name des Sektorisierungsfeldes, optional',
  `parid` varchar(50) DEFAULT 'parid' COMMENT 'Name des Schlüsselfeldes',
  `description` varchar(50) DEFAULT 'description' COMMENT 'Name eines Beschreibungsfeldes',
  `hide` varchar(50) DEFAULT 'hide' COMMENT 'Name des Hide-Feldes, optional',
  `header` varchar(50) DEFAULT NULL COMMENT 'Name der Titelmarkierung, optional',
  `nslevel` varchar(50) DEFAULT NULL COMMENT 'Name des Schachtelungsstufenfeldes, optional',
  `parent` varchar(50) DEFAULT 'parent' COMMENT 'Name des Parentfeldes, optional',
  `sort` varchar(50) DEFAULT 'sort' COMMENT 'Name eines Sortierfeldes, eigentlich redundant',
  `value` varchar(50) DEFAULT NULL COMMENT 'Name eines Wert-Feldes, optional',
  `automodi` varchar(50) DEFAULT NULL COMMENT 'Zeitfeldname mit Auto-Update, falls ein solches existiert',
  `entered` varchar(50) DEFAULT 'entered' COMMENT 'Name eines Feldes für den Erstellzeitpunktes',
  `originator` varchar(50) DEFAULT 'originator' COMMENT 'Name des Feldes für den Ersteller',
  `modified` varchar(50) DEFAULT 'modified' COMMENT 'Name eines Feldes für den Änderungszeitpunktes',
  `modifier` varchar(50) DEFAULT 'modifier' COMMENT 'Name des Feldes für den Modifikator',
  `hideTable` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, um den Eintrag auszublenden',
  `erasable` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, um Einträge generell löschbar zu machen',
  `erasecond` text NOT NULL DEFAULT '' COMMENT 'Spezifische Löschbedingung (vollständiger Select)',
  `erasekeys` varchar(100) NOT NULL DEFAULT '' COMMENT 'Felder zur Verifizierung der Löschbarkeit',
  PRIMARY KEY (`db_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tabellen mit Nested-Set-Aufbau; liefert die relevanten Namen der für NS nötigen Tabellenfelder';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `parmtable0`
--

DROP TABLE IF EXISTS `parmtable0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parmtable0` (
  `db_table` varchar(50) NOT NULL COMMENT 'KEY Mix aus dBase+Tabellenname',
  `dbase` varchar(50) DEFAULT 'dfb_contacts' COMMENT 'Datenbankname (Flexu)',
  `dtable` varchar(100) NOT NULL DEFAULT '' COMMENT 'Tabellenname',
  `sector` varchar(50) DEFAULT 'sector' COMMENT 'Name des Sektorisierungsfeldes, optional',
  `parid` varchar(50) DEFAULT 'parid' COMMENT 'Name des Schlüsselfeldes',
  `description` varchar(50) DEFAULT 'description' COMMENT 'Name eines Beschreibungsfeldes',
  `hide` varchar(50) DEFAULT 'hide' COMMENT 'Name des Hide-Feldes, optional',
  `nslevel` varchar(50) DEFAULT NULL COMMENT 'Name des Schachtelungsstufenfeldes, optional',
  `parent` varchar(50) DEFAULT 'parent' COMMENT 'Name des Parentfeldes, optional',
  `sort` varchar(50) DEFAULT 'sort' COMMENT 'Name eines Sortierfeldes, eigentlich redundant',
  `value` varchar(50) DEFAULT NULL COMMENT 'Name eines Wert-Feldes, optional',
  `automodi` varchar(50) DEFAULT NULL COMMENT 'Zeitfeldname mit Auto-Update, falls ein solches existiert',
  `hideTable` tinyint(4) NOT NULL DEFAULT 0 COMMENT '1, um den Eintrag auszublenden',
  PRIMARY KEY (`db_table`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Tabellen mit Nested-Set-Aufbau; liefert die relevanten Namen der für NS nötigen Tabellenfelder (Version 0)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `permfiles`
--

DROP TABLE IF EXISTS `permfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permfiles` (
  `filename` varchar(50) NOT NULL,
  `allowed_ids` varchar(100) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`filename`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Idents allowed to upload library elements';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `photocontestLog`
--

DROP TABLE IF EXISTS `photocontestLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photocontestLog` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageId` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Typo Seitennummer',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `foto` longblob DEFAULT NULL,
  `caller` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'üblicherweise __METHOD__',
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `photocontestLog_tmpsave`
--

DROP TABLE IF EXISTS `photocontestLog_tmpsave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photocontestLog_tmpsave` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageId` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Typo Seitennummer',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `foto` longblob DEFAULT NULL,
  `caller` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'üblicherweise __METHOD__',
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pleskMail`
--

DROP TABLE IF EXISTS `pleskMail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pleskMail` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `mailbox` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `quota` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `usage` varchar(45) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `forwarding` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `alias` text CHARACTER SET utf8 DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `pivot` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=1313 DEFAULT CHARSET=ucs2;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profile_selects_old`
--

DROP TABLE IF EXISTS `profile_selects_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile_selects_old` (
  `selname` varchar(50) NOT NULL DEFAULT '',
  `comment` varchar(256) DEFAULT NULL,
  `select` text DEFAULT NULL,
  `columns` text DEFAULT NULL,
  PRIMARY KEY (`selname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Selects für Profile';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `profname` varchar(50) NOT NULL DEFAULT '',
  `idents` varchar(255) DEFAULT NULL,
  `listele` text DEFAULT NULL,
  `viewele` text DEFAULT NULL,
  `select` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`profname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Profile für Listen oder Exports';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `proj_board`
--

DROP TABLE IF EXISTS `proj_board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proj_board` (
  `Identifikation` int(11) NOT NULL AUTO_INCREMENT,
  `Thema` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Beschreibung` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `resp` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status_Bemerkung` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prio` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Team` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `AnzAuf` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Auftraggeber` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `Fachverantwortung` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `Termin` date DEFAULT '0000-00-00',
  `Erinnerung` date DEFAULT '0000-00-00',
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT 0,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 0,
  `deleted` tinyint(4) DEFAULT 0,
  `pivot` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mypivot` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Identifikation`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `proj_board_tasks`
--

DROP TABLE IF EXISTS `proj_board_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proj_board_tasks` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `Thema` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parentID` int(11) DEFAULT NULL,
  `Name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Beschreibung` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `resp` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Status_Bemerkung` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prio` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Team` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Termin` date DEFAULT '0000-00-00',
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT 0,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 0,
  `notallowed` tinyint(4) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT 0,
  `pivot` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `queries`
--

DROP TABLE IF EXISTS `queries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queries` (
  `key` varchar(100) NOT NULL DEFAULT '',
  `descr` varchar(100) DEFAULT NULL,
  `sqls` text DEFAULT NULL,
  `dbname` varchar(100) DEFAULT NULL,
  `id_ref` int(11) NOT NULL DEFAULT 0,
  `page_id` int(11) DEFAULT NULL,
  `parm` varchar(100) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`key`,`id_ref`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='MySQL QUERY-Serien für verschiedene Anwendungen (ohne Datenrückgabe)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `response_log`
--

DROP TABLE IF EXISTS `response_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `response_log` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) DEFAULT NULL,
  `appl` varchar(100) DEFAULT NULL,
  `rtime` decimal(20,16) DEFAULT NULL,
  `pageId` varchar(200) DEFAULT NULL,
  `server` varchar(50) DEFAULT NULL,
  `ident` int(11) DEFAULT NULL,
  `plugin` varchar(50) DEFAULT NULL,
  `caller` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`auto`),
  KEY `rtime` (`rtime`),
  KEY `plugin` (`plugin`),
  KEY `ident` (`ident`),
  KEY `appl` (`appl`),
  KEY `pageId` (`pageId`)
) ENGINE=MyISAM AUTO_INCREMENT=416607 DEFAULT CHARSET=utf8 COMMENT='Antwortzeiten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `selects`
--

DROP TABLE IF EXISTS `selects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `selects` (
  `key` varchar(100) NOT NULL DEFAULT '',
  `descr` varchar(100) DEFAULT NULL,
  `select` text DEFAULT NULL,
  `dbname` varchar(100) DEFAULT NULL,
  `id_ref` int(11) NOT NULL DEFAULT 0,
  `page_id` int(11) DEFAULT NULL,
  `parm` varchar(100) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`key`,`id_ref`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='MySQL SELECTS für verschiedene Anwendungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `selects__old`
--

DROP TABLE IF EXISTS `selects__old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `selects__old` (
  `key` varchar(100) NOT NULL DEFAULT '',
  `descr` varchar(100) DEFAULT NULL,
  `select` text DEFAULT NULL,
  `dbname` varchar(100) DEFAULT NULL,
  `id_ref` int(11) NOT NULL DEFAULT 0,
  `page_id` int(11) DEFAULT NULL,
  `parm` varchar(100) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`key`,`id_ref`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='MySQL SELECTS für verschiedene Anwendungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shortage_log`
--

DROP TABLE IF EXISTS `shortage_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shortage_log` (
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `appl` varchar(100) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `entered` timestamp NOT NULL DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT NULL,
  `caller` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COMMENT='Nachholbedarf';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `statistics_intra`
--

DROP TABLE IF EXISTS `statistics_intra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statistics_intra` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `pageid` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `ref` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(45) COLLATE utf8_unicode_ci DEFAULT '0',
  `ip` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `browser` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `device` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `continent` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `country_code` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `country` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subdivision` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `useragent` text CHARACTER SET utf8 DEFAULT NULL,
  `first_visit` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `what` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`),
  KEY `ip` (`ip`),
  KEY `pageid` (`pageid`)
) ENGINE=InnoDB AUTO_INCREMENT=1012695 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `statistics_www`
--

DROP TABLE IF EXISTS `statistics_www`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statistics_www` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `pageid` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `ref` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(45) COLLATE utf8_unicode_ci DEFAULT '0',
  `ip` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `browser` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `version` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `device` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `continent` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country_code` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `country` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `subdivision` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `useragent` text CHARACTER SET utf8 DEFAULT NULL,
  `first_visit` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`),
  KEY `ref` (`ref`),
  KEY `ip` (`ip`),
  KEY `first_visit` (`first_visit`),
  KEY `pageid` (`pageid`),
  KEY `country_code` (`country_code`),
  KEY `lang` (`lang`)
) ENGINE=InnoDB AUTO_INCREMENT=1842983 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stepwise`
--

DROP TABLE IF EXISTS `stepwise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stepwise` (
  `taskid` varchar(20) NOT NULL,
  `step` smallint(6) NOT NULL,
  `stepname` varchar(50) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `db` varchar(50) DEFAULT NULL,
  `selec` varchar(100) DEFAULT NULL,
  `qry` char(1) DEFAULT 'S',
  `is_aggr` tinyint(4) NOT NULL DEFAULT 0,
  `joinon` varchar(250) DEFAULT NULL,
  `ex_basket` text NOT NULL,
  `formextra` varchar(100) DEFAULT NULL,
  `forms` varchar(50) DEFAULT NULL,
  `btnnames` text NOT NULL,
  `functbtn` text NOT NULL,
  `action` varchar(250) DEFAULT NULL,
  `parm1` text NOT NULL,
  `parm2` text NOT NULL,
  `wfm` varchar(250) DEFAULT NULL,
  `show` varchar(250) DEFAULT NULL,
  `hide` varchar(250) DEFAULT NULL,
  `nullify` text NOT NULL,
  `enhance` text NOT NULL,
  `aftpost` text NOT NULL,
  `columns` text NOT NULL,
  `functcol` text NOT NULL,
  `translcols` text NOT NULL,
  `orderby` text NOT NULL COMMENT 'Sortierfelder (-: DESC)',
  `evenodd` text NOT NULL COMMENT 'Name des Feldes, dessen Veränderung den Hintergrund steuert',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`taskid`,`step`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='process definition sets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stepwise__20140730`
--

DROP TABLE IF EXISTS `stepwise__20140730`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stepwise__20140730` (
  `taskid` varchar(20) NOT NULL,
  `step` smallint(6) NOT NULL,
  `stepname` varchar(50) DEFAULT NULL,
  `description` varchar(250) DEFAULT NULL,
  `db` varchar(50) DEFAULT NULL,
  `selec` varchar(100) DEFAULT NULL,
  `is_aggr` tinyint(4) NOT NULL DEFAULT 0,
  `joinon` varchar(250) DEFAULT NULL,
  `ex_basket` text NOT NULL,
  `formextra` varchar(100) DEFAULT NULL,
  `forms` varchar(50) DEFAULT NULL,
  `btnnames` text NOT NULL,
  `functbtn` text NOT NULL,
  `action` varchar(250) DEFAULT NULL,
  `parm1` text NOT NULL,
  `parm2` text NOT NULL,
  `wfm` varchar(250) DEFAULT NULL,
  `show` varchar(250) DEFAULT NULL,
  `hide` varchar(250) DEFAULT NULL,
  `nullify` text NOT NULL,
  `enhance` text NOT NULL,
  `aftpost` text NOT NULL,
  `columns` text NOT NULL,
  `functcol` text NOT NULL,
  `translcols` text NOT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`taskid`,`step`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='process definition sets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `supportHandbuch`
--

DROP TABLE IF EXISTS `supportHandbuch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supportHandbuch` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `applic` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `originator` int(11) DEFAULT 0,
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `supportlogOLD`
--

DROP TABLE IF EXISTS `supportlogOLD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `supportlogOLD` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `entry` datetime DEFAULT NULL,
  `location` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `symptom` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `solution` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='IT Support Log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysHandbuch`
--

DROP TABLE IF EXISTS `sysHandbuch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysHandbuch` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `applic` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `hide` tinyint(4) DEFAULT 1,
  `entered` datetime DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `originator` int(11) DEFAULT 0,
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysHandbuchCat`
--

DROP TABLE IF EXISTS `sysHandbuchCat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysHandbuchCat` (
  `cat` varchar(100) NOT NULL,
  PRIMARY KEY (`cat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysLibraryRef`
--

DROP TABLE IF EXISTS `sysLibraryRef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysLibraryRef` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `task` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` varchar(200) COLLATE utf8_unicode_ci DEFAULT '0',
  `class` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Referenz zu den Bilbliotheken';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysMsg`
--

DROP TABLE IF EXISTS `sysMsg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysMsg` (
  `idmsg` int(10) unsigned NOT NULL,
  `txtkey` varchar(50) NOT NULL,
  `errval` smallint(5) unsigned NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `orgunit` varchar(500) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idmsg`),
  KEY `txtcode` (`txtkey`),
  FULLTEXT KEY `orgunits` (`orgunit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Sammlung von Systemmeldungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysparms`
--

DROP TABLE IF EXISTS `sysparms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysparms` (
  `cat` varchar(50) NOT NULL DEFAULT '',
  `key` varchar(50) NOT NULL DEFAULT '',
  `val` text DEFAULT NULL,
  `option` varchar(100) DEFAULT NULL,
  `allow` varchar(100) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `orgunit` varchar(100) NOT NULL DEFAULT '0',
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  PRIMARY KEY (`cat`,`key`,`orgunit`),
  FULLTEXT KEY `sysparms` (`cat`,`key`,`val`,`comment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sysparms_demo`
--

DROP TABLE IF EXISTS `sysparms_demo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sysparms_demo` (
  `cat` varchar(50) NOT NULL DEFAULT '',
  `key` varchar(50) NOT NULL DEFAULT '',
  `val` text DEFAULT NULL,
  `option` varchar(100) DEFAULT NULL,
  `allow` varchar(100) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `orgunit` varchar(100) NOT NULL DEFAULT '0',
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  PRIMARY KEY (`cat`,`key`,`orgunit`),
  FULLTEXT KEY `sysparms` (`cat`,`key`,`val`,`comment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `syspw`
--

DROP TABLE IF EXISTS `syspw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `syspw` (
  `kind` varchar(50) DEFAULT NULL,
  `key` varchar(100) NOT NULL DEFAULT '',
  `dbname` varchar(100) DEFAULT NULL,
  `coname` varchar(100) DEFAULT NULL,
  `host` varchar(100) NOT NULL DEFAULT '',
  `parm` varchar(100) NOT NULL DEFAULT '',
  `purpose` varchar(100) NOT NULL DEFAULT '',
  `login` varchar(100) DEFAULT NULL,
  `pw` varchar(100) DEFAULT NULL,
  `pw1` varchar(100) DEFAULT NULL,
  `allow` varchar(100) DEFAULT NULL,
  `allowID` varchar(100) DEFAULT NULL,
  `server` varchar(100) NOT NULL DEFAULT '',
  `dbserver` varchar(100) DEFAULT NULL,
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`auto`),
  KEY `dbname` (`dbname`),
  KEY `server` (`server`),
  KEY `key` (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COMMENT='system passwords encrypted';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `templog`
--

DROP TABLE IF EXISTS `templog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `templog` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `entry` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `ident` int(11) DEFAULT NULL,
  `pageId` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `extra` float DEFAULT NULL,
  `mem` int(11) DEFAULT NULL,
  `mem_alloc` int(11) DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `applic` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idid`),
  KEY `extra` (`extra`),
  KEY `pageID` (`pageId`)
) ENGINE=InnoDB AUTO_INCREMENT=1162862 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `textmodule`
--

DROP TABLE IF EXISTS `textmodule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `textmodule` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(200) DEFAULT '',
  `val` text DEFAULT '',
  `lang` varchar(50) NOT NULL,
  `orgunit` varchar(50) NOT NULL DEFAULT '0',
  `request_transl` varchar(100) DEFAULT NULL,
  `validto` date DEFAULT '9999-12-31',
  `option` varchar(100) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `flag` varchar(100) DEFAULT NULL,
  `r04` text DEFAULT NULL,
  PRIMARY KEY (`key`,`lang`,`orgunit`),
  KEY `modified` (`modified`),
  FULLTEXT KEY `lang_de` (`key`,`val`,`orgunit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `time_units`
--

DROP TABLE IF EXISTS `time_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_units` (
  `tcode` varchar(10) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`tcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Units of time calibration';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `typo_ext`
--

DROP TABLE IF EXISTS `typo_ext`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typo_ext` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`key`),
  FULLTEXT KEY `typo_ext` (`key`,`title`,`status`,`description`,`remarks`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Liste der Typo3 Erweiterungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `typo_tip`
--

DROP TABLE IF EXISTS `typo_tip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `typo_tip` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(50) DEFAULT NULL,
  `subcat` varchar(50) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keywords` varchar(250) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`idid`),
  FULLTEXT KEY `typo_tip` (`cat`,`subcat`,`title`,`description`,`keywords`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='Typo3 Tipps, Dokumentation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `unicodeSymbols`
--

DROP TABLE IF EXISTS `unicodeSymbols`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unicodeSymbols` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `unicode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CSSclass` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CSSdefinition` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Inhalt wird im Formular ''unicodeSymbole'' aus der Datei privlib/int/css/icon.css geladen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `updatePrimLog`
--

DROP TABLE IF EXISTS `updatePrimLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `updatePrimLog` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simul` int(11) DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=1031 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user_feedback`
--

DROP TABLE IF EXISTS `user_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_feedback` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `ident` int(11) DEFAULT NULL,
  `orgunit` varchar(50) DEFAULT '0',
  `what` varchar(50) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `reaction` text DEFAULT NULL,
  `reactid` int(11) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`auto`)
) ENGINE=MyISAM AUTO_INCREMENT=2122 DEFAULT CHARSET=utf8 COMMENT='user feedback to forms, applications ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `view_comments`
--

DROP TABLE IF EXISTS `view_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `view_comments` (
  `dbname` varchar(50) NOT NULL DEFAULT '',
  `viewname` varchar(50) NOT NULL DEFAULT '',
  `comment` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`dbname`,`viewname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Kommentartabelle für Views';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `websearchlog`
--

DROP TABLE IF EXISTS `websearchlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `websearchlog` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ident` int(11) DEFAULT 1,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `simul` int(11) DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=13364 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workInProgress`
--

DROP TABLE IF EXISTS `workInProgress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workInProgress` (
  `who` int(11) NOT NULL DEFAULT 0,
  `ident` int(11) NOT NULL DEFAULT 0,
  `scope` varchar(50) DEFAULT NULL,
  `modus` tinyint(3) unsigned DEFAULT 0,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `latest` datetime DEFAULT NULL,
  PRIMARY KEY (`who`,`ident`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Ident in Arbeit';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workflowlog`
--

DROP TABLE IF EXISTS `workflowlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflowlog` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'betroffen',
  `ident` int(11) DEFAULT 1 COMMENT 'Author',
  `pageId` int(11) DEFAULT NULL,
  `wProcess` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mem` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `caller` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=InnoDB AUTO_INCREMENT=3777 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-26 17:22:03
