-- MySQL dump 10.19  Distrib 10.3.29-MariaDB, for FreeBSD12.2 (amd64)
--
-- Host: localhost    Database: dfbch1_Idocu
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
-- Table structure for table `doccat`
--

DROP TABLE IF EXISTS `doccat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doccat` (
  `cat` varchar(50) NOT NULL DEFAULT '',
  `orgunit` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`cat`,`orgunit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='document categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doccrit`
--

DROP TABLE IF EXISTS `doccrit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doccrit` (
  `kind` varchar(100) DEFAULT NULL,
  `crit` varchar(30) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `comment` varchar(250) DEFAULT NULL,
  `field` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`crit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='nicht aktuell, wird in V1 eingesetzt - Felder field und kind für Transition';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `docdata_NA`
--

DROP TABLE IF EXISTS `docdata_NA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docdata_NA` (
  `filename` varchar(200) NOT NULL DEFAULT '',
  `orgunit` varchar(50) NOT NULL DEFAULT '',
  `lang` varchar(50) NOT NULL DEFAULT 'de',
  `seq` int(11) NOT NULL DEFAULT 0,
  `data` longblob DEFAULT NULL,
  PRIMARY KEY (`filename`,`orgunit`,`seq`,`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='(VERSION 1 ALT) die Spalte seq wir bei grossen Doks verwendet (splitting)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `docexif`
--

DROP TABLE IF EXISTS `docexif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docexif` (
  `docid` int(11) NOT NULL DEFAULT 0,
  `datarray` blob DEFAULT NULL,
  PRIMARY KEY (`docid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dochead`
--

DROP TABLE IF EXISTS `dochead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dochead` (
  `filename` varchar(200) NOT NULL,
  `version_date` date DEFAULT NULL,
  `orgunit` varchar(50) NOT NULL,
  `orgident` int(10) unsigned DEFAULT NULL,
  `lang` varchar(50) NOT NULL DEFAULT 'de',
  `hid_org` varchar(50) DEFAULT NULL,
  `master` varchar(50) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `authext` varchar(200) DEFAULT NULL,
  `authident` int(10) unsigned DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `descr` longtext DEFAULT NULL,
  `dcskey` varchar(100) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `criteria` text DEFAULT NULL,
  `cat` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `archiveto` date NOT NULL DEFAULT '9999-12-31',
  `pwprotect` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `modifier` int(10) unsigned DEFAULT NULL,
  `accessed` timestamp NOT NULL DEFAULT current_timestamp(),
  `num` int(10) unsigned DEFAULT NULL,
  `size` int(10) unsigned DEFAULT NULL,
  `permission` mediumtext DEFAULT NULL,
  `permpublic` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `permident` mediumtext DEFAULT NULL,
  `adminident` mediumtext DEFAULT NULL,
  `field` varchar(200) DEFAULT NULL,
  `kind` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`filename`,`orgunit`,`lang`),
  KEY `modified` (`modified`),
  KEY `validfrom` (`validfrom`,`validto`),
  KEY `title` (`title`),
  FULLTEXT KEY `dochead` (`filename`,`orgunit`,`author`,`title`,`descr`,`cat`,`status`,`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='(VERSION 1 ALT) files meta data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dockeywords`
--

DROP TABLE IF EXISTS `dockeywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dockeywords` (
  `keyword` varchar(100) NOT NULL DEFAULT '',
  `idid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='fieldnames for different kind of appls';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dockind`
--

DROP TABLE IF EXISTS `dockind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dockind` (
  `kind` varchar(30) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `comment` varchar(250) DEFAULT NULL,
  `seq` int(11) DEFAULT 0,
  PRIMARY KEY (`kind`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Art von Dokumenten - Stamm';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `docmain`
--

DROP TABLE IF EXISTS `docmain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docmain` (
  `docid` int(11) NOT NULL DEFAULT 0,
  `filename` varchar(200) NOT NULL DEFAULT '',
  `orgunit` varchar(50) NOT NULL DEFAULT '',
  `lang` varchar(50) NOT NULL DEFAULT 'de',
  `seq` int(11) NOT NULL DEFAULT 0,
  `data` longblob DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  PRIMARY KEY (`docid`,`seq`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Dukenteninhalt (Daten)\ndie Spalte seq wir bei grossen Doks verwendet (splitting)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `docmeta`
--

DROP TABLE IF EXISTS `docmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docmeta` (
  `docid` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(200) NOT NULL COMMENT 'Original-Dateiname ex Upload',
  `orgident` int(10) unsigned DEFAULT NULL COMMENT 'besitzende Gruppe gem tb_ident',
  `persident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'betroffene Person (Identifikator als HR-Dokument)',
  `plogid` int(10) unsigned DEFAULT NULL COMMENT 'idid in dfb_contacts.tb_perslog',
  `authident` int(10) unsigned DEFAULT NULL COMMENT 'Autor, gem tb_ident',
  `authext` varchar(200) DEFAULT NULL COMMENT 'externer Autor',
  `title` varchar(200) DEFAULT NULL COMMENT 'Dokumententitel',
  `descr` longtext DEFAULT NULL COMMENT 'Erläuterungen zum Dokument',
  `keywords` text DEFAULT NULL COMMENT 'Zusätzliche Suchbegriffe',
  `version_date` date DEFAULT NULL COMMENT 'Ausgabedatum des Dokuments',
  `validfrom` date NOT NULL DEFAULT '0000-00-00' COMMENT 'verwendbar ab',
  `validto` date NOT NULL DEFAULT '9999-12-31' COMMENT 'aktuell bis',
  `archiveto` date NOT NULL DEFAULT '9999-12-31' COMMENT 'im Archiv bis',
  `pwprotect` varchar(50) DEFAULT NULL COMMENT 'passwortgeschützt',
  `created` datetime DEFAULT NULL COMMENT 'Upload-Datum',
  `modified` datetime DEFAULT NULL COMMENT 'Änderungsdatum Metadaten',
  `modifier` int(10) unsigned DEFAULT NULL COMMENT 'zuletzt bearbeitet durch',
  `accessed` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'letzter Zugriffszeitpunkt',
  `num` int(10) unsigned DEFAULT 0 COMMENT 'Anzahl Zugriffe',
  `size` int(10) unsigned DEFAULT NULL COMMENT 'Dokumentengrösse',
  `permother` varchar(200) NOT NULL COMMENT 'erweiterte Freigabe, zB confidential, linkable',
  `permFE` mediumtext DEFAULT NULL COMMENT 'Leseberechtigungen; Ablösung für permident',
  `adminident` mediumtext DEFAULT NULL COMMENT 'Dok-Wartungs-FEs (nicht Ident!)',
  `docref` varchar(200) DEFAULT NULL COMMENT 'Dies ist ein Master-Dok, sobald es Referenzen enthält',
  `kind` varchar(200) DEFAULT NULL COMMENT 'Liste von Kategorien gem. docmetacat',
  `doclang` varchar(45) DEFAULT 'de' COMMENT 'Sprachkürzel (zusätzlich zu Zahl in kind)',
  `homepage` mediumtext DEFAULT NULL,
  `collectionName` varchar(200) NOT NULL COMMENT 'Dok Sammlung verwendet z.B. im blauen i',
  `chapterName` varchar(200) NOT NULL COMMENT 'zu Dok Sammlung',
  `chapterName2` varchar(45) DEFAULT NULL COMMENT 'zu Dok Sammlung',
  `collectionSort` varchar(45) DEFAULT NULL,
  `comment` text DEFAULT NULL COMMENT 'Kommentar',
  `dcskey` varchar(100) DEFAULT NULL COMMENT 'DFB-Dokumentenschlüssel (V1)',
  `hid_org` varchar(50) DEFAULT NULL COMMENT 'V1 nur 2013 genutzt',
  `orgunit` varchar(50) NOT NULL COMMENT 'V1, nicht mehr im Einsatz',
  `lang` varchar(50) NOT NULL DEFAULT 'de' COMMENT 'V1, old system',
  `master` varchar(50) NOT NULL COMMENT 'vermutlich V1',
  `author` varchar(200) DEFAULT NULL COMMENT 'V1, nicht mehr im Einsatz',
  `criteria` text DEFAULT NULL COMMENT 'V1, Kriterien-Schlüsselwörter',
  `cat` varchar(50) DEFAULT NULL COMMENT 'vermutlich V1: Dok-Kategorie',
  `status` varchar(50) DEFAULT NULL COMMENT 'Dok-Status V1, heute in kind',
  `permission` mediumtext NOT NULL COMMENT 'V1, wird nicht mehr gebraucht',
  `permident` mediumtext DEFAULT NULL COMMENT 'V1, Ablösung durch permFE, wird (bald) nicht mehr benötigt',
  `template` varchar(200) DEFAULT NULL COMMENT 'zugewiesene Dok-Vorlage',
  `sortkey` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`docid`),
  KEY `modified` (`modified`),
  KEY `validfrom` (`validfrom`,`validto`),
  KEY `title` (`title`),
  KEY `manualName` (`collectionName`),
  FULLTEXT KEY `dochead` (`filename`,`orgunit`,`author`,`title`,`descr`,`cat`,`status`,`keywords`)
) ENGINE=MyISAM AUTO_INCREMENT=3068 DEFAULT CHARSET=utf8 COMMENT='Metadaten der Dokumente';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `docmetaPivot`
--

DROP TABLE IF EXISTS `docmetaPivot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docmetaPivot` (
  `docidP` int(11) NOT NULL,
  `sterm` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifiedP` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`docidP`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `docmetacat`
--

DROP TABLE IF EXISTS `docmetacat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docmetacat` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catkind` varchar(50) NOT NULL DEFAULT '' COMMENT 'Wert Stufe 1',
  `feature` varchar(50) NOT NULL DEFAULT '' COMMENT 'Wert Stufe 0',
  `descr_de` varchar(50) NOT NULL DEFAULT '' COMMENT 'Beschreibung',
  `descr_en` varchar(50) NOT NULL DEFAULT '',
  `descr_fr` varchar(50) NOT NULL DEFAULT '',
  `remarks` varchar(250) NOT NULL DEFAULT '' COMMENT 'zusätzliche Kommentare',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 ausblenden',
  `seq` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Sortierung',
  `ex_doccat` varchar(50) NOT NULL DEFAULT '' COMMENT 'gem. Doku 1',
  `ex_doccrit` varchar(50) NOT NULL DEFAULT '' COMMENT 'gem. Doku 1',
  `in_status` varchar(100) NOT NULL DEFAULT '' COMMENT 'gem. Doku 1 - dochead',
  PRIMARY KEY (`idid`),
  UNIQUE KEY `lvl` (`catkind`,`feature`),
  KEY `description` (`descr_de`),
  KEY `catkind` (`catkind`),
  KEY `feature` (`feature`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='document categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `docmetalayout`
--

DROP TABLE IF EXISTS `docmetalayout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docmetalayout` (
  `catkind` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Kategoriegruppe',
  `descr_de` varchar(50) NOT NULL DEFAULT '' COMMENT 'Label deutsch',
  `selopt` varchar(50) NOT NULL DEFAULT '' COMMENT 'Auswahloptionen',
  `mandatory` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Datenzwang',
  `seq` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Reihenfolge',
  `remarks` text NOT NULL COMMENT 'zusätzliche Kommentare',
  `descr_en` varchar(50) NOT NULL DEFAULT '' COMMENT 'Label englisch',
  `descr_fr` varchar(50) NOT NULL DEFAULT '' COMMENT 'Label französisch',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 ausblenden',
  `inline` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Anzahl inline-block-Elemente pro Zeile',
  `unfolding` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT '1/0 ausklappbare Gruppe',
  `unfolded` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 initial entfaltet',
  PRIMARY KEY (`catkind`),
  KEY `descr_de` (`descr_de`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='document metadata layout controls';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `docparam`
--

DROP TABLE IF EXISTS `docparam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docparam` (
  `sector` varchar(20) NOT NULL,
  `parid` varchar(30) NOT NULL,
  `parent` varchar(30) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `lft` smallint(6) NOT NULL DEFAULT 0,
  `rgt` smallint(6) NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `sort` int(6) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`sector`,`parid`),
  KEY `parent` (`parent`),
  KEY `parid` (`parid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='parameter collection for various sectors';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `docparms`
--

DROP TABLE IF EXISTS `docparms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docparms` (
  `kind` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `fields` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `hide` tinyint(4) DEFAULT 0,
  `platform` varchar(45) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`kind`,`platform`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='fieldnames for different kind of appls';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `docstatus`
--

DROP TABLE IF EXISTS `docstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `docstatus` (
  `status` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='possible document status: draft, approved ...';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `doctemplate`
--

DROP TABLE IF EXISTS `doctemplate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctemplate` (
  `name` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'Name der Template',
  `docid` int(11) DEFAULT NULL,
  `ident` int(11) NOT NULL COMMENT 'hat Template erstellt',
  `userorgident` int(11) NOT NULL DEFAULT 0,
  `visib` varchar(100) CHARACTER SET utf8 DEFAULT 'personal' COMMENT 'Sichtbarkeit der Template',
  `authident` int(11) DEFAULT NULL,
  `author` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orgident` int(11) NOT NULL DEFAULT 0,
  `permFE` text CHARACTER SET utf8 DEFAULT NULL COMMENT 'Leseberechtigung für Doc',
  `adminident` text CHARACTER SET utf8 DEFAULT NULL COMMENT 'FE Gruppe, welche Wartungsberechtigt ist',
  `permother` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `homepage` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `keywords` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `validfrom` date DEFAULT NULL,
  `validto` date DEFAULT NULL,
  `archiveto` date DEFAULT NULL,
  `pwprotect` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'letzte Änderung',
  `modifier` int(11) DEFAULT NULL COMMENT 'geändert durch',
  `persident` int(11) DEFAULT NULL COMMENT 'Personaldossier für diese Ident',
  `collectionName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `chapterName` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `chapterName2` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `collectionSort` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `doclang` varchar(45) COLLATE utf8_unicode_ci DEFAULT 'de' COMMENT 'Sprachkürzel (zusätzlich zu Zahl in kind)',
  PRIMARY KEY (`name`,`ident`,`orgident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orgdata_cat`
--

DROP TABLE IF EXISTS `orgdata_cat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orgdata_cat` (
  `cat` varchar(50) NOT NULL DEFAULT '',
  `type` varchar(50) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cat`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='old: navigation menuitems for organisation data query';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orgunits`
--

DROP TABLE IF EXISTS `orgunits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orgunits` (
  `orgunit` varchar(50) NOT NULL DEFAULT '',
  `lang` varchar(50) NOT NULL DEFAULT '',
  `ident` int(11) DEFAULT NULL,
  `designation` text DEFAULT NULL,
  `fegrp` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`orgunit`,`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='orgunits used for authorizing';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orgunits__KEEP`
--

DROP TABLE IF EXISTS `orgunits__KEEP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orgunits__KEEP` (
  `orgunit` varchar(50) NOT NULL DEFAULT '',
  `lang` varchar(50) NOT NULL DEFAULT '',
  `designation` text DEFAULT NULL,
  `ident` int(11) DEFAULT NULL,
  PRIMARY KEY (`orgunit`,`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='orgunits used for authorizing';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-26 17:22:04
