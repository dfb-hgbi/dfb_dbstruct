-- MySQL dump 10.19  Distrib 10.3.29-MariaDB, for FreeBSD12.2 (amd64)
--
-- Host: localhost    Database: dfbch1_Icont
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
-- Table structure for table `PersAusweisSpezial`
--

DROP TABLE IF EXISTS `PersAusweisSpezial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PersAusweisSpezial` (
  `ident` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Ident-List für ''händisch'' zu überbringende Ausweise';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_dg_data_`
--

DROP TABLE IF EXISTS `_dg_data_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_dg_data_` (
  `iddg` int(11) DEFAULT NULL,
  `person` text DEFAULT NULL,
  `glink` text DEFAULT NULL,
  `vlink` text DEFAULT NULL,
  `appell` text DEFAULT NULL,
  `origin` text DEFAULT NULL,
  `tstamp` time DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_eprel_`
--

DROP TABLE IF EXISTS `_eprel_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_eprel_` (
  `contract` bigint(11) NOT NULL DEFAULT 0,
  `ep_org` int(10) unsigned DEFAULT NULL,
  `ability` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `id_org` int(11) NOT NULL,
  `context` varchar(50) CHARACTER SET utf8 NOT NULL,
  `funct` varchar(50) CHARACTER SET utf8 NOT NULL,
  `ident` int(11) NOT NULL,
  `matchcode` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `gotemail` varchar(1) CHARACTER SET utf8 DEFAULT '',
  `testing` varchar(900) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_ident_as_key`
--

DROP TABLE IF EXISTS `_ident_as_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_ident_as_key` (
  `ident` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ident`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_myrels_`
--

DROP TABLE IF EXISTS `_myrels_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_myrels_` (
  `cat` bigint(20) NOT NULL DEFAULT 0,
  `eOrg` varchar(11) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `eFct` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `eFrom` varchar(10) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `eTo` varchar(10) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `eVis` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `eValid` bigint(20) NOT NULL DEFAULT 0,
  `rValid` bigint(20) NOT NULL DEFAULT 0,
  `cValid` bigint(20) NOT NULL DEFAULT 0,
  `cOrg` int(11) unsigned NOT NULL DEFAULT 0,
  `rOrg` int(11) NOT NULL DEFAULT 0,
  `rCtx` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `rFct` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `rFrom` date NOT NULL DEFAULT '0000-00-00',
  `rTo` date NOT NULL DEFAULT '0000-00-00',
  `rVis` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `contact` int(11) NOT NULL DEFAULT 0,
  `multi` bigint(20) NOT NULL DEFAULT 0,
  `rKey` varchar(237) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ctxkey` varchar(102) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `sortFct` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `cReg` bigint(20) NOT NULL DEFAULT 0,
  `cGrp` int(11) NOT NULL DEFAULT 0,
  `GrFu` varchar(62) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `sids` varchar(1) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `ukind` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `released` varchar(2) CHARACTER SET latin1 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_perslog_keys`
--

DROP TABLE IF EXISTS `_perslog_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_perslog_keys` (
  `ident` int(10) unsigned NOT NULL DEFAULT 0,
  `idid` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ident`,`idid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='simuliert zwei Keys für die individuellen Personaldossiers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_roll_`
--

DROP TABLE IF EXISTS `_roll_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_roll_` (
  `ident` int(11) NOT NULL AUTO_INCREMENT,
  `kind` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idsupra` int(11) NOT NULL DEFAULT 13902,
  `validfrom` date NOT NULL DEFAULT '2018-10-01',
  `hide` tinyint(4) NOT NULL DEFAULT 1,
  `patron` int(11) NOT NULL DEFAULT 910,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_tc_spender_`
--

DROP TABLE IF EXISTS `_tc_spender_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tc_spender_` (
  `ident` int(11) NOT NULL,
  `matchcode` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `showboard` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `visib` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT 'internal',
  `originator` int(11) DEFAULT 1,
  `updated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_tmp_rela_med`
--

DROP TABLE IF EXISTS `_tmp_rela_med`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_tmp_rela_med` (
  `id_org` int(11) NOT NULL,
  `context` varchar(50) CHARACTER SET utf8 NOT NULL,
  `funct` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'langer Kommentar',
  `id_user` int(11) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `visib` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT 'internal',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_transl_context_`
--

DROP TABLE IF EXISTS `_transl_context_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_transl_context_` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `val` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_ns_test`
--

DROP TABLE IF EXISTS `a_ns_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_ns_test` (
  `sector` int(10) unsigned NOT NULL,
  `parid` int(10) unsigned NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `lft` smallint(6) NOT NULL DEFAULT 0,
  `rgt` smallint(6) NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `_parent` int(10) unsigned DEFAULT NULL,
  `_sort` int(6) unsigned DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sector`,`parid`),
  KEY `id_org` (`parid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='dfb Organisationsbaum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `applDoc`
--

DROP TABLE IF EXISTS `applDoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `applDoc` (
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
-- Table structure for table `cat_addr_book`
--

DROP TABLE IF EXISTS `cat_addr_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_addr_book` (
  `topic` varchar(50) NOT NULL COMMENT 'Zweck',
  `funct` varchar(50) NOT NULL,
  `seq` int(10) unsigned NOT NULL COMMENT 'seq',
  `description` varchar(200) NOT NULL,
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `nsl` smallint(5) unsigned DEFAULT NULL,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'verstecken, nicht verwenden',
  `header` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Titelzeile'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Aufbau des DFB-Adress- und Telefonbuches';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_appl_tasks`
--

DROP TABLE IF EXISTS `cat_appl_tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_appl_tasks` (
  `task` varchar(50) NOT NULL,
  `short` varchar(3) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`task`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Liste der Anwendungsaufgaben aus Rollen/Rechte';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_bav_proof`
--

DROP TABLE IF EXISTS `cat_bav_proof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_bav_proof` (
  `sector` varchar(20) CHARACTER SET utf8 NOT NULL,
  `parid` varchar(30) CHARACTER SET utf8 NOT NULL,
  `parent` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  `entitling` varchar(80) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Kommaliste von pers_skill_proof.idcond',
  `origin` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Unterkapitel des titelerwähnten Dokuments',
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Hierarchiestufe',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Zulassungregelwerk BAV';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_cadre`
--

DROP TABLE IF EXISTS `cat_cadre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_cadre` (
  `sector` varchar(20) NOT NULL DEFAULT 'dfb' COMMENT 'Kaderstufen für mehrere Organisation möglich',
  `cadre` varchar(20) NOT NULL COMMENT 'Kaderstufenkurzbezeichnung',
  `level` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Kaderstufenwert',
  `designation` varchar(100) DEFAULT NULL COMMENT 'Anzeige in Listen',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'versteckbar',
  `remarks` text DEFAULT NULL COMMENT 'weitere Kommentare',
  `lft` mediumint(8) unsigned NOT NULL DEFAULT 9999 COMMENT 'NS links',
  `rgt` mediumint(8) unsigned NOT NULL DEFAULT 9999 COMMENT 'NS rechts',
  `parent` varchar(20) NOT NULL COMMENT 'für Familienbildung',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Modifikationsdatum',
  `modifier` int(10) unsigned DEFAULT 1 COMMENT 'durch',
  PRIMARY KEY (`sector`,`cadre`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Kategorien für Kaderstufen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_country`
--

DROP TABLE IF EXISTS `cat_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_country` (
  `ctry` varchar(50) NOT NULL,
  `country` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ctry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='e.g. to categorize language skills';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_languages`
--

DROP TABLE IF EXISTS `cat_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_languages` (
  `lang` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='e.g. to categorize language skills';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_medi`
--

DROP TABLE IF EXISTS `cat_medi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_medi` (
  `medi` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `txt` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`medi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='medi categories for dfb profile';
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
-- Table structure for table `cat_options`
--

DROP TABLE IF EXISTS `cat_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_options` (
  `cat` varchar(100) NOT NULL,
  `cat_txt` varchar(100) DEFAULT NULL,
  `val1` text DEFAULT NULL,
  `val2` text DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `default` varchar(50) DEFAULT NULL,
  `transl` varchar(5) DEFAULT NULL,
  `perm` varchar(50) DEFAULT NULL,
  `tooltip` varchar(50) DEFAULT NULL,
  `orgunit` varchar(50) NOT NULL DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`cat`,`orgunit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='für tb_options / Feld size wird als initopt für SELECT genom';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_pers_skill`
--

DROP TABLE IF EXISTS `cat_pers_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_pers_skill` (
  `idps` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifikator',
  `sector` varchar(50) NOT NULL,
  `kind` varchar(50) NOT NULL COMMENT 'Art des Nachweises',
  `altn_kind` varchar(100) NOT NULL COMMENT 'alternativer kind-Wert',
  `verify` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1: kind muss (auch) erfüllt sein',
  `description` varchar(200) DEFAULT NULL,
  `logIds` varchar(50) DEFAULT NULL COMMENT 'die relevanten Logthemen: cat_perslog.idid',
  `logTopic` varchar(50) DEFAULT NULL COMMENT 'kind_name in perslog',
  `results` varchar(50) DEFAULT NULL COMMENT 'Resultatwertungs-Norm',
  `lft` int(10) unsigned NOT NULL,
  `rgt` int(10) unsigned NOT NULL,
  `not4azubi` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1: nichtpflichtig für Azubis',
  `eventdate` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `fromdate` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `todate` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `watchmonths` tinyint(3) unsigned NOT NULL DEFAULT 3 COMMENT 'Vorwarnzeit in Monaten',
  `hide` int(1) NOT NULL DEFAULT 0,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `res_values` varchar(100) DEFAULT NULL COMMENT 'zulässige Resultate',
  PRIMARY KEY (`idps`),
  UNIQUE KEY `sector_param` (`sector`,`kind`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Parameter zur Behandlung von Nachweispflichten (eine Basis für skill_proof_criteria)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_pers_task`
--

DROP TABLE IF EXISTS `cat_pers_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_pers_task` (
  `hrtask` int(10) unsigned NOT NULL COMMENT 'entsprechend hrtask von tb_context',
  `description` text NOT NULL,
  `parent` varchar(50) NOT NULL,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'nicht (mehr) nutzbarer Eintrag',
  `header` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'reiner Titeleintrag',
  `sector` int(10) unsigned NOT NULL,
  `tree_set` text NOT NULL COMMENT 'Zugängliches tb_orgtree-Set; leer: unlimitiert',
  `cat` varchar(50) NOT NULL,
  `ref_skill` tinyint(3) unsigned DEFAULT 0 COMMENT 'Fachdienstrelevanz: 0:nein 1:optional 2:zwingend ALT'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Kategorienliste der in Kontexten definierten Stufen personaldienstlichen Einflussnahme';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_perslog`
--

DROP TABLE IF EXISTS `cat_perslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_perslog` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `parent` varchar(50) NOT NULL,
  `ref_fd` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Fachdienstrelevanz: 0:nein 1:optional 2:zwingend',
  `by_skill` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Skillauswahl 0:ohne, 1:exakt, 2:inkl Liste, 3:aus org/subset',
  `enddate` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Ablaufdatum:  0:nein 1:optional 2:zwingend',
  `course` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Kursangaben: 0:nein 1:optional 2:zwingend',
  `specify` varchar(200) NOT NULL COMMENT 'Werteauswahl oder $SELECT (f.Sachangaben)',
  `result` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Einstufung: 0:nein 1:optional 2:zwingend',
  `result_group` varchar(50) NOT NULL,
  `remark` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Fachdstl. Beschreibung: 0:nein, 1:optional, 2:zwingend',
  `docid` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Dokumentenanhang: 0:nein, 1:optional, 2:zwingend',
  `proof` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'nachweispflichtig',
  `proof_elem` varchar(50) NOT NULL COMMENT 'relevantes (Nachweis)-Feld in pers_skill_proof',
  `autolock` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Automatisch erstellte, nicht zu löschende Einträge',
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'optional nicht genutzt',
  `header` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'reine Titelzeile, nie genutzt',
  `nsl` smallint(5) unsigned NOT NULL DEFAULT 0,
  `auto` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `purpose` text NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `ref_skill` tinyint(3) unsigned DEFAULT 0 COMMENT 'Fachdienstrelevanz: 0:nein 1:optional 2:zwingend ALT',
  `skill_list` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Skillrelevanz: 0:nein, 1:ja, ev.Liste, 2:exakt, 3:? ALT',
  PRIMARY KEY (`idid`),
  UNIQUE KEY `cat` (`cat`),
  KEY `lft` (`lft`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Kategorienliste des DFB-Personaldossiers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_portrait`
--

DROP TABLE IF EXISTS `cat_portrait`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_portrait` (
  `score` varchar(30) NOT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `css` varchar(50) NOT NULL,
  `w` int(10) unsigned NOT NULL,
  `h` int(10) unsigned NOT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Parameter';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_properties`
--

DROP TABLE IF EXISTS `cat_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_properties` (
  `cat` varchar(100) NOT NULL,
  `cat_txt` varchar(100) DEFAULT NULL,
  `val1` text DEFAULT NULL,
  `val2` text DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
  `default` varchar(50) DEFAULT NULL,
  `transl` varchar(5) DEFAULT NULL,
  `perm` varchar(50) DEFAULT NULL,
  `tooltip` varchar(50) DEFAULT NULL,
  `selfdetail` varchar(20) DEFAULT 'irrelevant',
  `orgunit` varchar(50) NOT NULL DEFAULT '0',
  `addcode` varchar(50) DEFAULT NULL,
  `displ` varchar(50) DEFAULT NULL,
  `scope` varchar(100) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`cat`,`orgunit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Kategorien für Eigenschaften';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_purpose`
--

DROP TABLE IF EXISTS `cat_purpose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_purpose` (
  `purpose` varchar(20) NOT NULL COMMENT 'Zweck',
  `description` varchar(255) DEFAULT NULL COMMENT 'Beschreibung',
  `usergroups` varchar(255) NOT NULL COMMENT 'zulässige FE-Usergroups',
  `addr_g` tinyint(3) unsigned DEFAULT 0 COMMENT 'nutzbar für geografische Adressen',
  `addr_v` tinyint(3) unsigned DEFAULT 0 COMMENT 'nutzbar für virtuelle Adressen',
  `lft` smallint(5) unsigned NOT NULL COMMENT 'Nested Set Sortierung',
  `rgt` smallint(5) unsigned NOT NULL COMMENT 'Nested Set rechts',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'verstecken, nicht verwenden',
  `prio` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Einordnungs-Reihenfolge',
  PRIMARY KEY (`purpose`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Liste der Adresszwecke';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_road`
--

DROP TABLE IF EXISTS `cat_road`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_road` (
  `lic` varchar(50) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `hide` int(1) NOT NULL DEFAULT 0,
  `lang` varchar(2) NOT NULL DEFAULT '',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `inx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`inx`),
  KEY `lic` (`lic`),
  KEY `lang` (`lang`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='Liste der Fahrausweiskategorien (zZt auch in lang_de)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_skill_validity`
--

DROP TABLE IF EXISTS `cat_skill_validity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_skill_validity` (
  `skill_sid` varchar(50) NOT NULL COMMENT 'Zulassung/Kompetenz gem Contract-Subset',
  `idps` int(10) unsigned NOT NULL COMMENT 'Kontrollthema gem cat_pers_skill',
  `description` varchar(200) DEFAULT NULL,
  `results` varchar(50) DEFAULT NULL COMMENT 'Resultatwertungs-Norm',
  `eventdate` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `fromdate` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `todate` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `lft` int(10) unsigned NOT NULL,
  `rgt` int(10) unsigned NOT NULL,
  `hide` int(1) NOT NULL DEFAULT 0,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Gültigkeitsdauern verschiedener Nachweisthemen für spezifische Zulassungen/Kompetenzen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `contact_log`
--

DROP TABLE IF EXISTS `contact_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_log` (
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) DEFAULT NULL,
  `ident` int(11) DEFAULT NULL,
  `pageId` varchar(50) DEFAULT NULL,
  `who` int(11) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `supplement` text DEFAULT NULL,
  `class` varchar(50) DEFAULT NULL,
  `dbname` varchar(50) DEFAULT NULL,
  `server` varchar(50) DEFAULT NULL,
  `caller` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`seq`),
  KEY `timestamp` (`timestamp`),
  KEY `ident` (`ident`),
  KEY `uid` (`pageId`)
) ENGINE=MyISAM AUTO_INCREMENT=161368 DEFAULT CHARSET=utf8 COMMENT='Contact Log';
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
-- Table structure for table `dashboard_data`
--

DROP TABLE IF EXISTS `dashboard_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_data` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `ident` int(11) DEFAULT 1,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `css` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `left` int(11) DEFAULT 0,
  `top` int(11) DEFAULT 0,
  `inactive` tinyint(4) DEFAULT 0,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=6750 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dashboard_widget`
--

DROP TABLE IF EXISTS `dashboard_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widget` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `kind` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `multiple` tinyint(1) DEFAULT 0,
  `title_edit` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_delete` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allowed` varchar(100) COLLATE utf8_unicode_ci DEFAULT '0',
  `fe_grp` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `style` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `seq` int(11) DEFAULT 0,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `newUntil` date DEFAULT NULL,
  `show_initial` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `pivot` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dev_ep_sector`
--

DROP TABLE IF EXISTS `dev_ep_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dev_ep_sector` (
  `idsct` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `sector` varchar(2) DEFAULT NULL COMMENT 'Sektorennummer',
  `namecode` varchar(20) DEFAULT NULL COMMENT 'übersetzbarer Sektorname',
  `layer` tinyint(4) DEFAULT NULL COMMENT 'Anzeigeebene',
  `description` varchar(100) DEFAULT NULL COMMENT 'Beschreibung',
  `hide` tinyint(1) DEFAULT 0 COMMENT 'ausblenden, nicht benutzen',
  `descr` varchar(20) DEFAULT NULL COMMENT 'Kurzbeschreibung',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'ident des Org-Kontaktes',
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'NS-lft',
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'NS-rgt',
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'NS-Hierarchiestufe',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) DEFAULT 1,
  PRIMARY KEY (`idsct`),
  KEY `sectorname` (`sector`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Strukturierung der Einsatzplanung in Hauptsektoren';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dev_ep_skills`
--

DROP TABLE IF EXISTS `dev_ep_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dev_ep_skills` (
  `qid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shortname` varchar(20) DEFAULT NULL,
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Org-Ident',
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `descr` varchar(20) DEFAULT NULL,
  `contract` varchar(20) DEFAULT NULL,
  `noarea` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ep_org` int(10) unsigned DEFAULT NULL,
  `isgrp` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `q_or` varchar(200) DEFAULT NULL,
  `admin` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '(eigentlich) Bereichs-Ident',
  `ep_area` int(10) unsigned DEFAULT 0,
  `qprof_tbd` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `object_link` varchar(50) DEFAULT NULL,
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Hierarchiestufe',
  `commit` varchar(10) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `layer` varchar(2) DEFAULT NULL,
  `prio` smallint(5) unsigned DEFAULT NULL,
  `parent` varchar(20) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `value` varchar(20) DEFAULT NULL,
  `selectname` varchar(50) DEFAULT NULL,
  `area` varchar(1) DEFAULT NULL,
  `sort` int(6) DEFAULT NULL,
  PRIMARY KEY (`qid`),
  UNIQUE KEY `shortname` (`shortname`),
  KEY `lft` (`lft`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplan: Zulassungen, Befähigungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dfbag_frondienst_transfer__arc`
--

DROP TABLE IF EXISTS `dg_dfbag_frondienst_transfer__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dfbag_frondienst_transfer__arc` (
  `_auto_` text DEFAULT NULL,
  `_sessionID_` text DEFAULT NULL,
  `_timestamp_` text DEFAULT NULL,
  `_lastUserIP_` text DEFAULT NULL,
  `train_drive` text DEFAULT NULL,
  `train_maintain` text DEFAULT NULL,
  `trainops` text DEFAULT NULL,
  `stationops` text DEFAULT NULL,
  `public_relations` text DEFAULT NULL,
  `constr_serv` text DEFAULT NULL,
  `RwD_serv` text DEFAULT NULL,
  `IT_serv` text DEFAULT NULL,
  `club_activity` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `plscontactme` text DEFAULT NULL,
  `appell` text DEFAULT NULL,
  `firstname` text DEFAULT NULL,
  `lastname` text DEFAULT NULL,
  `street` text DEFAULT NULL,
  `zip` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `fonmobile` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `lang_corr` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `userip` text DEFAULT NULL,
  `birthday` text DEFAULT NULL,
  `nationality` text DEFAULT NULL,
  `education` text DEFAULT NULL,
  `actual_job` text DEFAULT NULL,
  `skills_rail` text DEFAULT NULL,
  `skills_lang` text DEFAULT NULL,
  `work_motive` text DEFAULT NULL,
  `poss_wdays` text DEFAULT NULL,
  `poss_dayblocs` text DEFAULT NULL,
  `voluwork_yearly` text DEFAULT NULL,
  `pob` text DEFAULT NULL,
  `val` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `driver_license_cat` text DEFAULT NULL,
  `accid_insur` text DEFAULT NULL,
  `IPclient` text DEFAULT NULL,
  `mgmt` text DEFAULT NULL,
  `recruited_by` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dummy`
--

DROP TABLE IF EXISTS `dummy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dummy` (
  `d` int(11) NOT NULL DEFAULT 0,
  `mass_letter_auto` smallint(6) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`d`,`mass_letter_auto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Log idents of massletters sent';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ext_anmeld_activs`
--

DROP TABLE IF EXISTS `ext_anmeld_activs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ext_anmeld_activs` (
  `activ_ident` int(11) NOT NULL AUTO_INCREMENT,
  `de` varchar(100) NOT NULL,
  `fr` varchar(100) DEFAULT NULL,
  `en` varchar(100) DEFAULT NULL,
  `bereich` varchar(50) NOT NULL,
  `de_req` text DEFAULT NULL,
  `fr_req` text DEFAULT NULL,
  `en_req` text DEFAULT NULL,
  `seq` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`activ_ident`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='possible activities for a potential employee online entry';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ext_anmeld_adr`
--

DROP TABLE IF EXISTS `ext_anmeld_adr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ext_anmeld_adr` (
  `temp_ident` int(11) NOT NULL AUTO_INCREMENT,
  `name1` varchar(100) NOT NULL,
  `name2` varchar(100) NOT NULL,
  `birthdate` date NOT NULL,
  `actual_job` varchar(100) NOT NULL,
  `addr1` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `country` varchar(50) NOT NULL,
  `fonfix_home` varchar(20) NOT NULL,
  `fonmobile_priv` varchar(20) DEFAULT NULL,
  `fonfix_busi` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `accid_insur` smallint(6) DEFAULT NULL,
  `skills_prof` text DEFAULT NULL,
  `skills_rail` text DEFAULT NULL,
  `entered` datetime NOT NULL,
  PRIMARY KEY (`temp_ident`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='address of potential employee online entry';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ext_anmeld_data`
--

DROP TABLE IF EXISTS `ext_anmeld_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ext_anmeld_data` (
  `temp_ident` int(11) NOT NULL,
  `activ_ident` int(11) NOT NULL,
  `entered` datetime NOT NULL,
  PRIMARY KEY (`activ_ident`,`temp_ident`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='selected activities of a potential employee (online entry)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fe_collection`
--

DROP TABLE IF EXISTS `fe_collection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_collection` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `collName` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `permFE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fe_homes`
--

DROP TABLE IF EXISTS `fe_homes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_homes` (
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Ident Bereichskontakt',
  `tid` int(10) unsigned DEFAULT NULL COMMENT 'TYPO-Seite Hauptbereich ',
  `comment` varchar(100) DEFAULT NULL COMMENT 'Anzeige in der Blackbox',
  `pageid_bookm` int(11) DEFAULT NULL,
  `lft` int(10) unsigned NOT NULL COMMENT 'Hierarchie',
  `rgt` int(10) unsigned NOT NULL,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ident`),
  KEY `tid` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Hilfstabelle Hauptbereichs-Homepages\n2020-01-22: Eintrag ''14300'', ''1828'', ''Publ. Relations'', ''2978'', ''18'', ''19'', ''0'' gelöscht.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fe_orgunits`
--

DROP TABLE IF EXISTS `fe_orgunits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_orgunits` (
  `groupid` int(11) NOT NULL DEFAULT 0,
  `orgunit` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`groupid`),
  KEY `orgunit` (`orgunit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Uebergang dfbx.ch nach dfb.ch';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fe_pages`
--

DROP TABLE IF EXISTS `fe_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fe_pages` (
  `groupid` int(11) NOT NULL DEFAULT 0,
  `kind` varchar(50) NOT NULL DEFAULT '',
  `pageid` int(11) DEFAULT NULL,
  PRIMARY KEY (`groupid`,`kind`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Seiten für FE-Gruppen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `h_tb_address_g`
--

DROP TABLE IF EXISTS `h_tb_address_g`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h_tb_address_g` (
  `ident` int(11) NOT NULL,
  `kind` varchar(15) NOT NULL DEFAULT 'addr_post',
  `purpose` varchar(15) NOT NULL DEFAULT 'home',
  `prim` decimal(10,1) NOT NULL DEFAULT 1.0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date DEFAULT '9999-12-31',
  `addr1` varchar(50) DEFAULT NULL,
  `addr2` varchar(50) DEFAULT NULL,
  `pob` varchar(50) DEFAULT NULL,
  `addr3` varchar(50) DEFAULT NULL,
  `zip` varchar(10) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(6) DEFAULT NULL,
  `visibility` varchar(15) NOT NULL DEFAULT 'internal',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `h_auto` mediumint(9) NOT NULL AUTO_INCREMENT,
  `h_entered` datetime DEFAULT NULL,
  `h_originator` int(11) DEFAULT 1,
  `_auto_` int(11) DEFAULT NULL,
  PRIMARY KEY (`h_auto`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `visibility` (`visibility`),
  KEY `zip` (`zip`),
  KEY `city` (`city`),
  KEY `purpose` (`purpose`),
  KEY `ident` (`ident`),
  KEY `kind` (`kind`),
  KEY `prim` (`prim`),
  KEY `addr1` (`addr1`),
  KEY `addr2` (`addr2`),
  KEY `country` (`country`)
) ENGINE=MyISAM AUTO_INCREMENT=1655 DEFAULT CHARSET=utf8 COMMENT='Adresse (Geo)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `h_tb_address_v`
--

DROP TABLE IF EXISTS `h_tb_address_v`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h_tb_address_v` (
  `ident` int(11) NOT NULL,
  `kind` varchar(15) NOT NULL,
  `purpose` varchar(150) NOT NULL,
  `value` varchar(100) NOT NULL,
  `visibility` varchar(15) NOT NULL DEFAULT 'internal',
  `prim` decimal(10,1) NOT NULL DEFAULT 1.0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `h_auto` mediumint(9) NOT NULL AUTO_INCREMENT,
  `h_entered` datetime DEFAULT NULL,
  `h_originator` int(11) DEFAULT 1,
  `_auto_` int(11) DEFAULT NULL,
  PRIMARY KEY (`h_auto`),
  KEY `purpose` (`purpose`),
  KEY `value` (`value`),
  KEY `visibility` (`visibility`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `ident` (`ident`),
  KEY `kind` (`kind`)
) ENGINE=MyISAM AUTO_INCREMENT=998 DEFAULT CHARSET=utf8 COMMENT='Adresse (virtuell)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `h_tb_ident`
--

DROP TABLE IF EXISTS `h_tb_ident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h_tb_ident` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `kind` varchar(15) NOT NULL DEFAULT 'contact',
  `idsupra` int(11) DEFAULT NULL,
  `idinfra` int(11) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `confirm` varchar(50) DEFAULT NULL,
  `contractdate` int(11) DEFAULT NULL,
  `h_auto` mediumint(9) NOT NULL AUTO_INCREMENT,
  `h_entered` datetime DEFAULT NULL,
  `h_originator` int(11) DEFAULT 1,
  PRIMARY KEY (`h_auto`),
  KEY `idsupra` (`idsupra`),
  KEY `idinfra` (`idinfra`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `kind` (`kind`),
  FULLTEXT KEY `tb_ident` (`kind`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='Root';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `h_tb_name`
--

DROP TABLE IF EXISTS `h_tb_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h_tb_name` (
  `ident` int(11) NOT NULL,
  `attrib` varchar(15) NOT NULL,
  `value` varchar(15) NOT NULL,
  `purpose` varchar(50) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `name2` varchar(50) DEFAULT NULL,
  `name3` varchar(50) DEFAULT NULL,
  `name4` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `shortname` varchar(50) DEFAULT NULL,
  `matchcode` varchar(255) DEFAULT NULL,
  `notation` varchar(20) DEFAULT NULL,
  `prim` decimal(10,1) NOT NULL DEFAULT 1.0,
  `lang` varchar(6) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `h_auto` mediumint(9) NOT NULL AUTO_INCREMENT,
  `h_entered` datetime DEFAULT NULL,
  `h_originator` int(11) DEFAULT 1,
  PRIMARY KEY (`h_auto`),
  KEY `notation` (`notation`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `matchcode` (`matchcode`),
  KEY `name1` (`name1`),
  KEY `name2` (`name2`),
  KEY `shortname` (`shortname`),
  KEY `title` (`title`),
  KEY `purpose` (`purpose`),
  FULLTEXT KEY `tb_name` (`matchcode`,`shortname`)
) ENGINE=MyISAM AUTO_INCREMENT=783 DEFAULT CHARSET=utf8 COMMENT='Namen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `h_tb_options`
--

DROP TABLE IF EXISTS `h_tb_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h_tb_options` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `attrib1` varchar(50) NOT NULL DEFAULT '',
  `attrib2` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(11) DEFAULT NULL,
  `h_auto` mediumint(9) NOT NULL AUTO_INCREMENT,
  `h_entered` datetime DEFAULT NULL,
  `h_originator` int(11) DEFAULT 1,
  PRIMARY KEY (`h_auto`),
  FULLTEXT KEY `attrib1` (`attrib1`,`attrib2`)
) ENGINE=MyISAM AUTO_INCREMENT=384 DEFAULT CHARSET=utf8 COMMENT='Kategorien siehe: cat_options';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `h_tb_properties`
--

DROP TABLE IF EXISTS `h_tb_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `h_tb_properties` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `attrib1` varchar(50) NOT NULL DEFAULT '',
  `attrib2` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(255) DEFAULT NULL,
  `timevalue` datetime DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(11) DEFAULT NULL,
  `h_auto` mediumint(9) NOT NULL AUTO_INCREMENT,
  `h_entered` datetime DEFAULT NULL,
  `h_originator` int(11) DEFAULT 1,
  PRIMARY KEY (`h_auto`),
  KEY `ident` (`ident`),
  KEY `attrib1` (`attrib1`),
  KEY `attrib2` (`attrib2`)
) ENGINE=MyISAM AUTO_INCREMENT=4322 DEFAULT CHARSET=utf8 COMMENT='Eigenschaften';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hh_members`
--

DROP TABLE IF EXISTS `hh_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hh_members` (
  `ident` int(11) NOT NULL,
  `hhold` int(11) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hr450`
--

DROP TABLE IF EXISTS `hr450`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hr450` (
  `id_org` int(11) NOT NULL,
  `context` varchar(50) CHARACTER SET utf8 NOT NULL,
  `funct` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'langer Kommentar',
  `id_user` int(11) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL COMMENT '2019-01-24 hpsi: um unlogische Fehler mit Dupl. Key zu vermeiden, validto auch mit PK versehen ',
  `visib` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT 'internal',
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
-- Table structure for table `list_maillists`
--

DROP TABLE IF EXISTS `list_maillists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_maillists` (
  `mails_from` varchar(10) NOT NULL,
  `description` varchar(100) NOT NULL COMMENT 'Beschreibung',
  `fe_admin` int(10) unsigned NOT NULL DEFAULT 8 COMMENT 'FE der berechtigten Administration (def: AdminSU)',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'zur Deaktivierung',
  PRIMARY KEY (`mails_from`),
  KEY `validfrom` (`hide`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Verzeichnis von Maillisten, die ihre Mitglieder über die Properties beziehen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mail2cloudUser`
--

DROP TABLE IF EXISTS `mail2cloudUser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail2cloudUser` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `email` text CHARACTER SET utf8 DEFAULT NULL COMMENT 'Komma getrennte Usernames, z.B. hanspeter.sigrist,max.annen,.....',
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `massLetterLog`
--

DROP TABLE IF EXISTS `massLetterLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `massLetterLog` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `mass_letter_auto` smallint(6) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ident`,`mass_letter_auto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Log idents of massletters sent';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `massLetterLog_2013`
--

DROP TABLE IF EXISTS `massLetterLog_2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `massLetterLog_2013` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `mass_letter_auto` smallint(6) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ident`,`mass_letter_auto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Log idents of massletters sent';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `massLetterLog_2014`
--

DROP TABLE IF EXISTS `massLetterLog_2014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `massLetterLog_2014` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `mass_letter_auto` smallint(6) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ident`,`mass_letter_auto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Log idents of massletters sent';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `massLetterLog_2015`
--

DROP TABLE IF EXISTS `massLetterLog_2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `massLetterLog_2015` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `mass_letter_auto` smallint(6) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ident`,`mass_letter_auto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Log idents of massletters sent';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `massLetterLog_2016`
--

DROP TABLE IF EXISTS `massLetterLog_2016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `massLetterLog_2016` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `mass_letter_auto` smallint(6) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ident`,`mass_letter_auto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Log idents of massletters sent';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `massLetterLog_2017`
--

DROP TABLE IF EXISTS `massLetterLog_2017`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `massLetterLog_2017` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `mass_letter_auto` smallint(6) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ident`,`mass_letter_auto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Log idents of massletters sent';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `massLetterLog_2018`
--

DROP TABLE IF EXISTS `massLetterLog_2018`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `massLetterLog_2018` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `mass_letter_auto` smallint(6) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ident`,`mass_letter_auto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Log idents of massletters sent';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `massLetterLog_2019`
--

DROP TABLE IF EXISTS `massLetterLog_2019`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `massLetterLog_2019` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `mass_letter_auto` smallint(6) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ident`,`mass_letter_auto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Log idents of massletters sent';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `massmail_log`
--

DROP TABLE IF EXISTS `massmail_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `massmail_log` (
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(50) DEFAULT NULL,
  `ident` int(11) DEFAULT NULL,
  `subject` text DEFAULT NULL,
  `sender` varchar(100) DEFAULT NULL,
  `toText` varchar(250) DEFAULT NULL,
  `recipients` text DEFAULT NULL,
  `msg` text DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=MyISAM AUTO_INCREMENT=303 DEFAULT CHARSET=utf8 COMMENT='Massmail Log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mirror_fegroups`
--

DROP TABLE IF EXISTS `mirror_fegroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mirror_fegroups` (
  `uid` int(10) unsigned NOT NULL DEFAULT 0,
  `title` varchar(100) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  KEY `uid` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='gespiegelte FE Gruppen aus TYPO Intranet DB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `p_bookmarks`
--

DROP TABLE IF EXISTS `p_bookmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `p_bookmarks` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `uid` int(11) NOT NULL DEFAULT 0,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ident`,`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='individual bookmarks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pers_skill_proof`
--

DROP TABLE IF EXISTS `pers_skill_proof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pers_skill_proof` (
  `idcond` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(100) DEFAULT NULL,
  `remit` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Sammelorganisation',
  `legal_resp` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Gesetzliche Verpflichtung',
  `age_limit` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Gesetzliche Altersgrenze',
  `medical` varchar(20) DEFAULT NULL COMMENT 'Medizinische Voraussetzung',
  `med_val` varchar(20) DEFAULT NULL COMMENT 'Med. Kontroll-Kontrolllimite',
  `med_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Medattest-Skillrelevanz',
  `licence_ext` varchar(20) DEFAULT NULL COMMENT 'Externe Zulassung',
  `lext_val` varchar(20) DEFAULT NULL COMMENT 'Fremdlizenz-Limite',
  `lext_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Fremdlizenz-Skillrelevanz',
  `educ_int` varchar(20) DEFAULT NULL COMMENT 'Interne Ausbildung',
  `edint_val` varchar(20) DEFAULT NULL COMMENT 'Int.Ausbildungs-Limite',
  `edint_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Interne Ausbildung Skillrelevanz',
  `exam_int` varchar(20) DEFAULT NULL COMMENT 'Interne Prüfung',
  `exint_val` varchar(20) DEFAULT NULL COMMENT 'DFB-Prüfungs-Limite',
  `exint_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'DFB-Prüfung-Skillrelevanz',
  `exam_gov` varchar(20) DEFAULT NULL COMMENT 'Amtliche Prüfung',
  `exgov_val` varchar(20) DEFAULT NULL COMMENT 'BAV-Prüfungs-Limite',
  `exgov_sk` tinyint(3) NOT NULL DEFAULT 0 COMMENT 'Amtsprüfung-Skillrelevanz',
  `type_rating` varchar(20) DEFAULT NULL COMMENT 'Typenzulassung',
  `tyra_val` varchar(20) DEFAULT NULL COMMENT 'Typerating-Limite',
  `tyra_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Typerating-Skillrelevanz',
  `educ_cont` varchar(20) DEFAULT NULL COMMENT 'Weiterbildungsrhythmus',
  `edcont_val` varchar(20) DEFAULT NULL COMMENT 'Weiterbildungs-Kontrolllimte',
  `edcont_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Weiterbildungs-Skillrelevanz',
  `descr` varchar(20) DEFAULT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`idcond`),
  KEY `lft` (`lft`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zu überwachende Voraussetzungen ausgewählter Kompetenzen (eine Basis für skill_proof_criteria)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pers_skill_proof__20180827`
--

DROP TABLE IF EXISTS `pers_skill_proof__20180827`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pers_skill_proof__20180827` (
  `idcond` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(100) DEFAULT NULL,
  `remit` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Sammelorganisation',
  `legal_resp` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Gesetzliche Verpflichtung',
  `age_limit` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Gesetzliche Altersgrenze',
  `medical` varchar(20) DEFAULT NULL COMMENT 'Medizinische Voraussetzung',
  `med_val` varchar(20) DEFAULT NULL COMMENT 'Med. Kontroll-Kontrolllimite',
  `med_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Medattest-Skillrelevanz',
  `licence_ext` varchar(20) DEFAULT NULL COMMENT 'Externe Zulassung',
  `lext_val` varchar(20) DEFAULT NULL COMMENT 'Fremdlizenz-Limite',
  `lext_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Fremdlizenz-Skillrelevanz',
  `educ_int` varchar(20) DEFAULT NULL COMMENT 'Interne Ausbildung',
  `edint_val` varchar(20) DEFAULT NULL COMMENT 'Int.Ausbildungs-Limite',
  `edint_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Interne Ausbildung Skillrelevanz',
  `exam_int` varchar(20) DEFAULT NULL COMMENT 'Interne Prüfung',
  `exint_val` varchar(20) DEFAULT NULL COMMENT 'DFB-Prüfungs-Limite',
  `exint_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'DFB-Prüfung-Skillrelevanz',
  `exam_gov` varchar(20) DEFAULT NULL COMMENT 'Amtliche Prüfung',
  `exgov_val` varchar(20) DEFAULT NULL COMMENT 'BAV-Prüfungs-Limite',
  `exgov_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Amtsprüfung-Skillrelevanz',
  `type_rating` varchar(20) DEFAULT NULL COMMENT 'Typenzulassung',
  `tyra_val` varchar(20) DEFAULT NULL COMMENT 'Typerating-Limite',
  `tyra_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Typerating-Skillrelevanz',
  `educ_cont` varchar(20) DEFAULT NULL COMMENT 'Weiterbildungsrhythmus',
  `edcont_val` varchar(20) DEFAULT NULL COMMENT 'Weiterbildungs-Kontrolllimte',
  `edcont_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Weiterbildungs-Skillrelevanz',
  `descr` varchar(20) DEFAULT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`idcond`),
  KEY `lft` (`lft`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zu überwachende Voraussetzungen ausgewählter Kompetenzen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pers_skill_proof__evNeu`
--

DROP TABLE IF EXISTS `pers_skill_proof__evNeu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pers_skill_proof__evNeu` (
  `idcond` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(100) DEFAULT NULL,
  `remit` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Sammelorganisation',
  `legal_resp` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Gesetzliche Verpflichtung',
  `age_limit` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Gesetzliche Altersgrenze',
  `medical` varchar(20) DEFAULT NULL COMMENT 'Medizinische Voraussetzung',
  `med_val` varchar(20) DEFAULT NULL COMMENT 'Med. Kontroll-Kontrolllimite',
  `med_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Medattest-Skillrelevanz',
  `licence_ext` varchar(20) DEFAULT NULL COMMENT 'Externe Zulassung',
  `lext_val` varchar(20) DEFAULT NULL COMMENT 'Fremdlizenz-Limite',
  `lext_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Fremdlizenz-Skillrelevanz',
  `educ_int` varchar(20) DEFAULT NULL COMMENT 'Interne Ausbildung',
  `edint_val` varchar(20) DEFAULT NULL COMMENT 'Int.Ausbildungs-Limite',
  `edint_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Interne Ausbildung Skillrelevanz',
  `exam_int` varchar(20) DEFAULT NULL COMMENT 'Interne Prüfung',
  `exint_val` varchar(20) DEFAULT NULL COMMENT 'DFB-Prüfungs-Limite',
  `exint_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'DFB-Prüfung-Skillrelevanz',
  `exam_gov` varchar(20) DEFAULT NULL COMMENT 'Amtliche Prüfung',
  `exgov_val` varchar(20) DEFAULT NULL COMMENT 'BAV-Prüfungs-Limite',
  `exgov_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Amtsprüfung-Skillrelevanz',
  `type_rating` varchar(20) DEFAULT NULL COMMENT 'Typenzulassung',
  `tyra_val` varchar(20) DEFAULT NULL COMMENT 'Typerating-Limite',
  `tyra_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Typerating-Skillrelevanz',
  `educ_cont` varchar(20) DEFAULT NULL COMMENT 'Weiterbildungsrhythmus',
  `edcont_val` varchar(20) DEFAULT NULL COMMENT 'Weiterbildungs-Kontrolllimte',
  `edcont_sk` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Weiterbildungs-Skillrelevanz',
  `descr` varchar(20) DEFAULT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`idcond`),
  KEY `lft` (`lft`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zu überwachende Voraussetzungen ausgewählter Kompetenzen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `persdoc_log`
--

DROP TABLE IF EXISTS `persdoc_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `persdoc_log` (
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Zeitpunkt der Aktivität',
  `fe_user` int(10) unsigned DEFAULT NULL COMMENT 'Ident Frontend User',
  `ip` varchar(50) DEFAULT NULL COMMENT 'IP-Adresse, Server(remote_addr)',
  `pageid` varchar(50) DEFAULT NULL COMMENT 'Aktive Intranetseite',
  `admin` int(10) unsigned DEFAULT NULL COMMENT 'Ident der ausführenden Person (ev simuliert)',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'Ident der Dossiereigentümerschaft',
  `plogid` int(10) unsigned DEFAULT NULL COMMENT 'tb_perslog:idid',
  `docid` int(10) unsigned DEFAULT NULL COMMENT 'docmeta:docid',
  `pwp` tinyint(3) unsigned DEFAULT 0 COMMENT '0/1 Password protected',
  `what` varchar(50) DEFAULT NULL COMMENT 'UP,DN',
  `success` varchar(50) DEFAULT NULL COMMENT 'Erfolg',
  `msg` text DEFAULT NULL COMMENT 'Kommentar',
  PRIMARY KEY (`seq`)
) ENGINE=MyISAM AUTO_INCREMENT=299 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Log der Aktivitäten um die Dokumente des Personaldossiers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `personalPageNote`
--

DROP TABLE IF EXISTS `personalPageNote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personalPageNote` (
  `ident` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `pageid` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ident`,`pageid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `photoContest`
--

DROP TABLE IF EXISTS `photoContest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photoContest` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `entered` date DEFAULT NULL,
  `pageId` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `likes` int(11) DEFAULT 0,
  `foto` longblob DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pivot_pers_skill_proof`
--

DROP TABLE IF EXISTS `pivot_pers_skill_proof`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pivot_pers_skill_proof` (
  `idcond` int(10) unsigned NOT NULL COMMENT 'Skill-Kategorie',
  `description` varchar(100) DEFAULT NULL,
  `descr` varchar(20) DEFAULT NULL,
  `tnum` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Nr der Detailaufgabe',
  `sector` varchar(20) DEFAULT NULL COMMENT 'Aufgabensektor',
  `kind` varchar(20) DEFAULT NULL COMMENT 'Aufgabe',
  `kind_sho` varchar(30) DEFAULT NULL COMMENT 'Aufgabencode zwecks Übersetzung',
  `kind_val` varchar(30) DEFAULT NULL COMMENT 'Aufgabenwert(e)',
  `results` varchar(20) DEFAULT NULL COMMENT 'Erwartetes Ergebnis',
  `res_values` varchar(200) DEFAULT NULL COMMENT 'Ergebniswerte',
  `eventdate` tinyint(3) unsigned DEFAULT NULL COMMENT 'Ereignisdatum',
  `fromdate` tinyint(3) unsigned DEFAULT NULL COMMENT 'gültig ab',
  `todate` tinyint(3) unsigned DEFAULT NULL COMMENT 'gültig bis',
  `lft` tinyint(3) unsigned DEFAULT NULL COMMENT 'Reihenfolge',
  PRIMARY KEY (`idcond`,`tnum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zu überwachende Voraussetzungen ausgewählter Kompetenzen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `quick_fields`
--

DROP TABLE IF EXISTS `quick_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quick_fields` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `kind` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `table` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `values` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dbnameValues` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `option` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `style` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mysqlCmd` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `grouping` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seq` smallint(6) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `hide` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Fields used in quick contacts';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `reltafel_2011`
--

DROP TABLE IF EXISTS `reltafel_2011`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reltafel_2011` (
  `id_org` int(4) NOT NULL DEFAULT 0,
  `context` varchar(9) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `funct` varchar(5) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `id_user` int(10) unsigned DEFAULT NULL,
  `validfrom` varbinary(10) DEFAULT NULL,
  `validto` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `visib` varchar(8) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `entered` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `originator` int(4) NOT NULL DEFAULT 0,
  `modified` varchar(10) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `modifier` int(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `skill_param`
--

DROP TABLE IF EXISTS `skill_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_param` (
  `sector` varchar(50) NOT NULL DEFAULT 'results',
  `parid` varchar(50) NOT NULL,
  `parent` varchar(20) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `eventdate` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `fromdate` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `todate` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `lft` int(10) unsigned NOT NULL,
  `rgt` int(10) unsigned NOT NULL,
  `hide` int(1) NOT NULL DEFAULT 0,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Parameter zur Behandlung von Nachweispflichten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `skill_param2`
--

DROP TABLE IF EXISTS `skill_param2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_param2` (
  `parid` varchar(50) NOT NULL,
  `parent` varchar(20) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `value` varchar(100) NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rgt` int(10) unsigned NOT NULL,
  `hide` int(1) NOT NULL DEFAULT 0,
  `nsl` int(10) unsigned NOT NULL DEFAULT 0,
  `sort` int(10) unsigned NOT NULL,
  `entered` datetime NOT NULL DEFAULT '2017-02-13 19:00:00',
  `originator` int(11) DEFAULT 5,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Parameter zur Behandlung von Nachweispflichten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `skill_param_area`
--

DROP TABLE IF EXISTS `skill_param_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_param_area` (
  `sector` varchar(20) NOT NULL,
  `parid` varchar(50) NOT NULL,
  `parent` varchar(20) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `value` varchar(100) NOT NULL DEFAULT '0',
  `lft` int(10) unsigned NOT NULL,
  `rgt` int(10) unsigned NOT NULL,
  `hide` int(1) NOT NULL DEFAULT 0,
  `nsl` int(10) NOT NULL DEFAULT 0,
  `sort` int(10) NOT NULL DEFAULT 0,
  `entered` datetime NOT NULL DEFAULT '2017-02-14 00:00:00',
  `originator` int(11) DEFAULT 5,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`sector`,`parid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Parameter zur Behandlung von Nachweispflichten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `skill_proof_criteria`
--

DROP TABLE IF EXISTS `skill_proof_criteria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_proof_criteria` (
  `idcond` int(10) unsigned NOT NULL COMMENT 'Skill-Kategorie',
  `description` varchar(100) DEFAULT NULL,
  `descr` varchar(20) DEFAULT NULL,
  `tnum` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Nr der Detailaufgabe',
  `task` varchar(100) DEFAULT NULL COMMENT 'Bezeichnung der Nachweisaufgaber',
  `sector` varchar(20) DEFAULT NULL COMMENT 'Aufgabensektor',
  `log_cats` varchar(50) DEFAULT NULL COMMENT 'gemäss cat_perslog.idid',
  `onskill` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Skillbezug: 0:keinen / 1:Liste / 2:exakt',
  `forskills` varchar(250) NOT NULL DEFAULT '' COMMENT 'Liste der relevanten Skills',
  `kind` varchar(20) DEFAULT NULL COMMENT 'Aufgabe',
  `kinds` varchar(100) DEFAULT NULL COMMENT 'Aufgabe und Alternativen',
  `not4azubi` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1: für Azubi nicht relevant',
  `verify` tinyint(3) unsigned DEFAULT NULL COMMENT '0/1: Aufgabe ist explizit zu verifizieren (in kinds)',
  `remit` int(10) unsigned DEFAULT NULL COMMENT 'Ident höhere Sammel-(Fach)organisation',
  `kind_sho` varchar(30) DEFAULT NULL COMMENT 'Aufgabencode zwecks Übersetzung',
  `kind_val` varchar(30) DEFAULT NULL COMMENT 'Aufgabenwert(e)',
  `results` varchar(20) DEFAULT NULL COMMENT 'Erwartetes Ergebnis',
  `res_values` varchar(200) DEFAULT NULL COMMENT 'Ergebniswerte',
  `eventdate` tinyint(3) unsigned DEFAULT NULL COMMENT 'Ereignisdatum',
  `fromdate` tinyint(3) unsigned DEFAULT NULL COMMENT 'gültig ab',
  `todate` tinyint(3) unsigned DEFAULT NULL COMMENT 'gültig bis',
  `watchmonths` tinyint(3) unsigned DEFAULT NULL COMMENT 'Ablaufwarnzeit in Monaten',
  `lft` tinyint(3) unsigned DEFAULT NULL COMMENT 'Reihenfolge',
  PRIMARY KEY (`idcond`,`tnum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zu überwachende Voraussetzungen ausgewählter Kompetenzen: Pivot aus cat_pers_skill und pers_skill_proof';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `skill_proof_criteria__20190531`
--

DROP TABLE IF EXISTS `skill_proof_criteria__20190531`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_proof_criteria__20190531` (
  `idcond` int(10) unsigned NOT NULL COMMENT 'Skill-Kategorie',
  `description` varchar(100) DEFAULT NULL,
  `descr` varchar(20) DEFAULT NULL,
  `tnum` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Nr der Detailaufgabe',
  `task` varchar(100) DEFAULT NULL COMMENT 'Bezeichnung der Nachweisaufgaber',
  `sector` varchar(20) DEFAULT NULL COMMENT 'Aufgabensektor',
  `log_cats` varchar(50) DEFAULT NULL COMMENT 'gemäss cat_perslog.idid',
  `onskill` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Skillbezug: 0:keinen / 1:Liste / 2:exakt',
  `kind` varchar(20) DEFAULT NULL COMMENT 'Aufgabe',
  `kinds` varchar(100) DEFAULT NULL COMMENT 'Aufgabe und Alternativen',
  `not4azubi` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1: für Azubi nicht relevant',
  `verify` tinyint(3) unsigned DEFAULT NULL COMMENT '0/1: Aufgabe ist explizit zu verifizieren (in kinds)',
  `remit` int(10) unsigned DEFAULT NULL COMMENT 'Ident höhere Sammel-(Fach)organisation',
  `kind_sho` varchar(30) DEFAULT NULL COMMENT 'Aufgabencode zwecks Übersetzung',
  `kind_val` varchar(30) DEFAULT NULL COMMENT 'Aufgabenwert(e)',
  `results` varchar(20) DEFAULT NULL COMMENT 'Erwartetes Ergebnis',
  `res_values` varchar(200) DEFAULT NULL COMMENT 'Ergebniswerte',
  `eventdate` tinyint(3) unsigned DEFAULT NULL COMMENT 'Ereignisdatum',
  `fromdate` tinyint(3) unsigned DEFAULT NULL COMMENT 'gültig ab',
  `todate` tinyint(3) unsigned DEFAULT NULL COMMENT 'gültig bis',
  `watchmonths` tinyint(3) unsigned DEFAULT NULL COMMENT 'Ablaufwarnzeit in Monaten',
  `lft` tinyint(3) unsigned DEFAULT NULL COMMENT 'Reihenfolge',
  PRIMARY KEY (`idcond`,`tnum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zu überwachende Voraussetzungen ausgewählter Kompetenzen: Pivot aus cat_pers_skill und pers_skill_proof';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `skill_proof_criteria__evNeu`
--

DROP TABLE IF EXISTS `skill_proof_criteria__evNeu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_proof_criteria__evNeu` (
  `idcond` int(10) unsigned NOT NULL COMMENT 'Skill-Kategorie',
  `description` varchar(100) DEFAULT NULL,
  `descr` varchar(20) DEFAULT NULL,
  `tnum` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Nr der Detailaufgabe',
  `task` varchar(100) DEFAULT NULL COMMENT 'Bezeichnung der Nachweisaufgaber',
  `sector` varchar(20) DEFAULT NULL COMMENT 'Aufgabensektor',
  `log_cats` varchar(50) DEFAULT NULL COMMENT 'gemäss cat_perslog.idid',
  `onskill` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Skillbezug: 0:keinen / 1:Liste / 2:exakt',
  `kind` varchar(20) DEFAULT NULL COMMENT 'Aufgabe',
  `kinds` varchar(100) DEFAULT NULL COMMENT 'Aufgabe und Alternativen',
  `not4azubi` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1: für Azubi nicht relevant',
  `verify` tinyint(3) unsigned DEFAULT NULL COMMENT '0/1: Aufgabe ist explizit zu verifizieren (in kinds)',
  `remit` int(10) unsigned DEFAULT NULL COMMENT 'Ident höhere Sammel-(Fach)organisation',
  `kind_sho` varchar(30) DEFAULT NULL COMMENT 'Aufgabencode zwecks Übersetzung',
  `kind_val` varchar(30) DEFAULT NULL COMMENT 'Aufgabenwert(e)',
  `results` varchar(20) DEFAULT NULL COMMENT 'Erwartetes Ergebnis',
  `res_values` varchar(200) DEFAULT NULL COMMENT 'Ergebniswerte',
  `eventdate` tinyint(3) unsigned DEFAULT NULL COMMENT 'Ereignisdatum',
  `fromdate` tinyint(3) unsigned DEFAULT NULL COMMENT 'gültig ab',
  `todate` tinyint(3) unsigned DEFAULT NULL COMMENT 'gültig bis',
  `watchmonths` tinyint(3) unsigned DEFAULT NULL COMMENT 'Ablaufwarnzeit in Monaten',
  `lft` tinyint(3) unsigned DEFAULT NULL COMMENT 'Reihenfolge',
  PRIMARY KEY (`idcond`,`tnum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zu überwachende Voraussetzungen ausgewählter Kompetenzen: Pivot aus pers_skill_proof und cat_pers_skill\r\nPivot aus pers_skill_proof und cat_pers_skill';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tafel2011`
--

DROP TABLE IF EXISTS `tafel2011`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tafel2011` (
  `donator` varchar(255) DEFAULT NULL,
  `donations` bigint(21) NOT NULL DEFAULT 0,
  `contribution` decimal(34,2) DEFAULT NULL,
  `maxpaymt` decimal(12,2) DEFAULT NULL,
  `SponsorsPlaque` varchar(50) DEFAULT '',
  `asfrom` date DEFAULT '0000-00-00',
  `done_by` int(11) DEFAULT 1,
  `ident` int(10) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `task_def`
--

DROP TABLE IF EXISTS `task_def`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_def` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `form` varchar(50) NOT NULL DEFAULT '' COMMENT 'Schlüssel zum Formular im Intranet Seite 3803',
  `funct` varchar(50) NOT NULL DEFAULT '',
  `expire` varchar(10) DEFAULT NULL,
  `introtext` varchar(255) DEFAULT NULL COMMENT 'Schlüssel zu Textbausteine im Intranet Seite 3507',
  `success` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `applic` text DEFAULT NULL,
  `orgunit` varchar(50) DEFAULT '0',
  `maintable` varchar(50) DEFAULT NULL,
  `active` tinyint(3) unsigned DEFAULT 0,
  `seq` tinyint(4) DEFAULT 10,
  PRIMARY KEY (`auto`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='zone table of possible forms (defines tasks to be worked off in entry zone, appl_werkzeug::zone)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_aboOpt`
--

DROP TABLE IF EXISTS `tb_aboOpt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_aboOpt` (
  `ident` int(11) NOT NULL,
  `kind` varchar(15) NOT NULL,
  `purpose` varchar(15) NOT NULL DEFAULT '' COMMENT 'Typ der Anwendung, z.B. newsletter',
  `prim` decimal(10,1) NOT NULL DEFAULT 1.0 COMMENT 'braucht es das ???',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date DEFAULT '9999-12-31' COMMENT 'z.B. für Opt-out',
  `visibility` varchar(15) NOT NULL DEFAULT 'internal',
  `value` varchar(100) NOT NULL COMMENT 'E-Mail Adrfesse',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `_auto_` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`_auto_`),
  UNIQUE KEY `uniq` (`ident`,`kind`,`purpose`,`validfrom`),
  KEY `purpose` (`purpose`),
  KEY `value` (`value`),
  KEY `visibility` (`visibility`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `ident` (`ident`),
  KEY `kind` (`kind`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='erlaubte E-Mail Adressen für Newsletter: Opt-in / Opt-out';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_address_fav`
--

DROP TABLE IF EXISTS `tb_address_fav`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_address_fav` (
  `ident` int(11) NOT NULL,
  `id_org` int(11) NOT NULL,
  `cause` varchar(15) NOT NULL,
  `typ` varchar(2) NOT NULL,
  `kind` varchar(15) NOT NULL,
  `purpose` varchar(15) NOT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`ident`,`id_org`,`cause`,`purpose`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='bevorzugte Adressen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_address_g`
--

DROP TABLE IF EXISTS `tb_address_g`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_address_g` (
  `ident` int(11) NOT NULL,
  `kind` varchar(15) NOT NULL DEFAULT 'addr_post',
  `purpose` varchar(150) NOT NULL DEFAULT 'home',
  `prim` decimal(10,1) NOT NULL DEFAULT 1.0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `visibility` varchar(15) NOT NULL DEFAULT 'internal',
  `addr1` varchar(50) NOT NULL DEFAULT '',
  `addr2` varchar(50) NOT NULL DEFAULT '',
  `addr3` varchar(50) NOT NULL DEFAULT '',
  `pob` varchar(50) NOT NULL DEFAULT '',
  `zip` varchar(20) NOT NULL DEFAULT '',
  `city` varchar(50) NOT NULL DEFAULT '',
  `country` varchar(6) NOT NULL DEFAULT '',
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `_auto_` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'eindeutige Satzidentifikation',
  PRIMARY KEY (`_auto_`),
  UNIQUE KEY `uniq` (`ident`,`kind`,`purpose`,`validfrom`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `visibility` (`visibility`),
  KEY `zip` (`zip`),
  KEY `city` (`city`),
  KEY `purpose` (`purpose`),
  KEY `ident` (`ident`),
  KEY `kind` (`kind`),
  KEY `prim` (`prim`),
  KEY `addr1` (`addr1`),
  KEY `addr2` (`addr2`),
  KEY `country` (`country`)
) ENGINE=MyISAM AUTO_INCREMENT=25885 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Adresse (Geo) mit _auto_';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_address_g_MIO`
--

DROP TABLE IF EXISTS `tb_address_g_MIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_address_g_MIO` (
  `ident` int(11) NOT NULL,
  `kind` varchar(15) NOT NULL DEFAULT 'addr_post',
  `purpose` varchar(15) NOT NULL DEFAULT 'home',
  `prim` decimal(10,1) NOT NULL DEFAULT 1.0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date DEFAULT '9999-12-31',
  `addr1` varchar(50) DEFAULT NULL,
  `addr2` varchar(50) DEFAULT NULL,
  `pob` varchar(50) DEFAULT NULL,
  `addr3` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(6) DEFAULT NULL,
  `visibility` varchar(15) NOT NULL DEFAULT 'internal',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`ident`,`kind`,`purpose`,`validfrom`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `visibility` (`visibility`),
  KEY `zip` (`zip`),
  KEY `city` (`city`),
  KEY `purpose` (`purpose`),
  KEY `ident` (`ident`),
  KEY `kind` (`kind`),
  KEY `prim` (`prim`),
  KEY `addr1` (`addr1`),
  KEY `addr2` (`addr2`),
  KEY `country` (`country`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Adresse (Geo) mit IDENT-Fehlern';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_address_g__20210524`
--

DROP TABLE IF EXISTS `tb_address_g__20210524`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_address_g__20210524` (
  `ident` int(11) NOT NULL,
  `kind` varchar(15) NOT NULL DEFAULT 'addr_post',
  `purpose` varchar(150) NOT NULL DEFAULT 'home',
  `prim` decimal(10,1) NOT NULL DEFAULT 1.0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date DEFAULT '9999-12-31',
  `visibility` varchar(15) NOT NULL DEFAULT 'internal',
  `addr1` varchar(50) DEFAULT NULL,
  `addr2` varchar(50) DEFAULT NULL,
  `addr3` varchar(50) DEFAULT NULL,
  `pob` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(6) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `_auto_` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'eindeutige Satzidentifikation',
  PRIMARY KEY (`_auto_`),
  UNIQUE KEY `uniq` (`ident`,`kind`,`purpose`,`validfrom`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `visibility` (`visibility`),
  KEY `zip` (`zip`),
  KEY `city` (`city`),
  KEY `purpose` (`purpose`),
  KEY `ident` (`ident`),
  KEY `kind` (`kind`),
  KEY `prim` (`prim`),
  KEY `addr1` (`addr1`),
  KEY `addr2` (`addr2`),
  KEY `country` (`country`)
) ENGINE=MyISAM AUTO_INCREMENT=21041 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Adresse (Geo) mit _auto_';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_address_g__ORIG`
--

DROP TABLE IF EXISTS `tb_address_g__ORIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_address_g__ORIG` (
  `ident` int(11) NOT NULL,
  `kind` varchar(15) NOT NULL DEFAULT 'addr_post',
  `purpose` varchar(15) NOT NULL DEFAULT 'home',
  `prim` decimal(10,1) NOT NULL DEFAULT 1.0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date DEFAULT '9999-12-31',
  `addr1` varchar(50) DEFAULT NULL,
  `addr2` varchar(50) DEFAULT NULL,
  `pob` varchar(50) DEFAULT NULL,
  `addr3` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(6) DEFAULT NULL,
  `visibility` varchar(15) NOT NULL DEFAULT 'internal',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`ident`,`kind`,`purpose`,`validfrom`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `visibility` (`visibility`),
  KEY `zip` (`zip`),
  KEY `city` (`city`),
  KEY `purpose` (`purpose`),
  KEY `ident` (`ident`),
  KEY `kind` (`kind`),
  KEY `prim` (`prim`),
  KEY `addr1` (`addr1`),
  KEY `addr2` (`addr2`),
  KEY `country` (`country`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Adresse (Geo)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_address_v`
--

DROP TABLE IF EXISTS `tb_address_v`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_address_v` (
  `ident` int(11) NOT NULL,
  `kind` varchar(15) NOT NULL,
  `purpose` varchar(150) NOT NULL,
  `prim` decimal(10,1) NOT NULL DEFAULT 1.0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date DEFAULT '9999-12-31',
  `visibility` varchar(15) NOT NULL DEFAULT 'internal',
  `value` varchar(100) NOT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `_auto_` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`_auto_`),
  UNIQUE KEY `uniq` (`ident`,`kind`,`purpose`,`validfrom`),
  KEY `purpose` (`purpose`),
  KEY `value` (`value`),
  KEY `visibility` (`visibility`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `ident` (`ident`),
  KEY `kind` (`kind`)
) ENGINE=MyISAM AUTO_INCREMENT=10872 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Adresse (virtuell) mit _auto_';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_address_v_MIO`
--

DROP TABLE IF EXISTS `tb_address_v_MIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_address_v_MIO` (
  `ident` int(11) NOT NULL,
  `kind` varchar(15) NOT NULL,
  `purpose` varchar(15) NOT NULL,
  `value` varchar(100) NOT NULL,
  `visibility` varchar(15) NOT NULL DEFAULT 'internal',
  `prim` decimal(10,1) NOT NULL DEFAULT 1.0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`ident`,`kind`,`purpose`,`validfrom`),
  KEY `purpose` (`purpose`),
  KEY `value` (`value`),
  KEY `visibility` (`visibility`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `ident` (`ident`),
  KEY `kind` (`kind`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Adresse (virtuell) mit IDENT-Fehlern';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_address_v__ORIG`
--

DROP TABLE IF EXISTS `tb_address_v__ORIG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_address_v__ORIG` (
  `ident` int(11) NOT NULL,
  `kind` varchar(15) NOT NULL,
  `purpose` varchar(15) NOT NULL,
  `value` varchar(100) NOT NULL,
  `visibility` varchar(15) NOT NULL DEFAULT 'internal',
  `prim` decimal(10,1) NOT NULL DEFAULT 1.0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`ident`,`kind`,`purpose`,`validfrom`),
  KEY `purpose` (`purpose`),
  KEY `value` (`value`),
  KEY `visibility` (`visibility`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `ident` (`ident`),
  KEY `kind` (`kind`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Adresse (virtuell)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_contariff`
--

DROP TABLE IF EXISTS `tb_contariff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_contariff` (
  `context` varchar(50) NOT NULL,
  `funct` varchar(50) NOT NULL,
  `currency` varchar(3) NOT NULL COMMENT 'Bezahlwährung',
  `tariff` decimal(10,2) DEFAULT NULL COMMENT 'Betrag gemäss Währung',
  `validfrom` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Beginn Gültigkeitsspanne',
  `validto` date NOT NULL DEFAULT '9999-12-31' COMMENT 'Ende Gültigkeitsspanne',
  `entered` datetime NOT NULL DEFAULT current_timestamp(),
  `originator` int(11) unsigned DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) unsigned DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Kontextbezogene Tariflisten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_contariff0`
--

DROP TABLE IF EXISTS `tb_contariff0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_contariff0` (
  `context` varchar(50) NOT NULL,
  `funct` varchar(50) NOT NULL,
  `userrole` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `parent` varchar(50) DEFAULT NULL,
  `later` varchar(50) DEFAULT NULL COMMENT 'übliche Folgefunktion',
  `hrtask` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Verweis auf DFB-eigene, dossier-relevante HR-Rollen',
  `skill` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Zulassungsrolle für Personen',
  `age_limit` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Altersgrenze',
  `ep_role` int(10) unsigned NOT NULL DEFAULT 0,
  `idproof` int(10) NOT NULL DEFAULT 0 COMMENT 'Verweis auf Nachweispflichten',
  `proofedby` varchar(50) NOT NULL COMMENT 'Nachweis entsprechend Ersatz-funct',
  `licence` varchar(50) DEFAULT NULL COMMENT 'Lizenz nach ...',
  `by_funct` varchar(50) NOT NULL COMMENT 'Funct-spezifische Nachweise: Subregel-Nr:0/1, funct ist (0=nicht) zulassungsberechtigt',
  `lft` int(10) unsigned NOT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'markiert Ausblenden',
  `nsl` tinyint(3) unsigned DEFAULT NULL COMMENT 'Nested Set Level',
  `header` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'markiert Überschrift',
  `former` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'alte Funktion, ersetzt durch eine neue',
  `descr` varchar(30) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `validity` varchar(50) DEFAULT NULL COMMENT 'Standardgültigkeitsdauern (param validity)',
  `supra` varchar(50) DEFAULT NULL COMMENT 'Kurztext für Bereichszuordnung: Betr, Bau, Zf, Zw, ..',
  `entered` datetime NOT NULL DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `seq` int(11) DEFAULT NULL,
  `limfct` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`context`,`funct`),
  KEY `context` (`context`),
  KEY `funct` (`funct`),
  KEY `userrole` (`userrole`),
  KEY `parent` (`parent`),
  KEY `later` (`later`),
  KEY `lft` (`lft`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Kontextabhängige Rollenlisten mit Steuer-Parametern';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_context`
--

DROP TABLE IF EXISTS `tb_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_context` (
  `context` varchar(50) NOT NULL,
  `funct` varchar(50) NOT NULL,
  `userrole` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `parent` varchar(50) DEFAULT NULL,
  `later` varchar(50) DEFAULT NULL COMMENT 'übliche Folgefunktion',
  `hrtask` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Verweis auf DFB-eigene, dossier-relevante HR-Rollen',
  `skill` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Zulassungsrolle für Personen',
  `age_limit` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Altersgrenze',
  `ep_role` int(10) unsigned NOT NULL DEFAULT 0,
  `idproof` int(10) NOT NULL DEFAULT 0 COMMENT 'Verweis auf Nachweispflichten',
  `proofedby` varchar(50) NOT NULL COMMENT 'Nachweis entsprechend Ersatz-funct',
  `licence` varchar(50) DEFAULT NULL COMMENT 'Lizenz nach ...',
  `by_funct` varchar(50) NOT NULL COMMENT 'Funct-spezifische Nachweise: Subregel-Nr:0/1, funct ist (0=nicht) zulassungsberechtigt',
  `lft` int(10) unsigned NOT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'markiert Ausblenden',
  `nsl` tinyint(3) unsigned DEFAULT NULL COMMENT 'Nested Set Level',
  `header` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'markiert Überschrift',
  `former` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'alte Funktion, ersetzt durch eine neue',
  `descr` varchar(30) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `validity` varchar(50) DEFAULT NULL COMMENT 'Standardgültigkeitsdauern (param validity)',
  `supra` varchar(50) DEFAULT NULL COMMENT 'Kurztext für Bereichszuordnung: Betr, Bau, Zf, Zw, ..',
  `entered` datetime NOT NULL DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `seq` int(11) DEFAULT NULL,
  `limfct` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`context`,`funct`),
  KEY `context` (`context`),
  KEY `funct` (`funct`),
  KEY `userrole` (`userrole`),
  KEY `parent` (`parent`),
  KEY `later` (`later`),
  KEY `lft` (`lft`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Kontextabhängige Rollenlisten mit Steuer-Parametern';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_context0`
--

DROP TABLE IF EXISTS `tb_context0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_context0` (
  `context` varchar(50) NOT NULL,
  `funct` varchar(50) NOT NULL,
  `currency` varchar(3) NOT NULL COMMENT 'Bezahlwährung',
  `tariff` decimal(10,2) DEFAULT NULL COMMENT 'Betrag gemäss Währung',
  `validfrom` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Beginn Gültigkeitsspanne',
  `validto` date NOT NULL DEFAULT '9999-12-31' COMMENT 'Ende Gültigkeitsspanne',
  `entered` datetime NOT NULL DEFAULT current_timestamp(),
  `originator` int(11) unsigned DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) unsigned DEFAULT 1,
  PRIMARY KEY (`context`,`funct`),
  KEY `context` (`context`),
  KEY `funct` (`funct`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Kontextbezogene Tariflisten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_context__180726`
--

DROP TABLE IF EXISTS `tb_context__180726`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_context__180726` (
  `context` varchar(50) NOT NULL,
  `funct` varchar(50) NOT NULL,
  `userrole` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `later` varchar(50) DEFAULT NULL COMMENT 'übliche Folgefunktion',
  `hrtask` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Verweis auf dossier-relevante HR-Rollen',
  `skill` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Zulassungsrolle',
  `age_limit` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Altersgrenze',
  `idproof` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Verweis auf Nachweispflichten',
  `by_funct` varchar(50) DEFAULT NULL COMMENT 'Funct-spezifische Nachweise: Subregel-Nr:0/1, funct ist (0=nicht) zulassungsberechtigt',
  `ep_role` int(10) unsigned NOT NULL DEFAULT 0,
  `lft` int(10) DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `hide` tinyint(4) DEFAULT NULL COMMENT 'markiert Ausblenden',
  `header` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'markiert Überschrift',
  `descr` varchar(25) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `validity` varchar(50) DEFAULT NULL COMMENT 'Standardgültigkeitsdauern (param validity)',
  `parent` varchar(50) DEFAULT NULL,
  `limfct` int(10) unsigned DEFAULT 0,
  `seq` int(11) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`context`,`funct`),
  KEY `context` (`context`),
  KEY `funct` (`funct`),
  KEY `userrole` (`userrole`),
  KEY `parent` (`parent`),
  KEY `later` (`later`),
  KEY `lft` (`lft`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Kontextabhängige Rollenlisten mit Steuer-Parametern';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_context__20140821`
--

DROP TABLE IF EXISTS `tb_context__20140821`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_context__20140821` (
  `context` varchar(50) NOT NULL,
  `funct` varchar(50) NOT NULL,
  `userrole` varchar(50) DEFAULT NULL,
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `parent` varchar(50) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `hide` tinyint(4) DEFAULT NULL,
  `ep_role` tinyint(4) DEFAULT 0,
  `limfct` int(10) unsigned DEFAULT 0,
  `description` varchar(100) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`context`,`funct`),
  KEY `context` (`context`),
  KEY `funct` (`funct`),
  KEY `userrole` (`userrole`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_context__20161009`
--

DROP TABLE IF EXISTS `tb_context__20161009`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_context__20161009` (
  `context` varchar(50) NOT NULL,
  `funct` varchar(50) NOT NULL,
  `userrole` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `later` varchar(50) DEFAULT NULL COMMENT 'übliche Folgefunktion',
  `ep_role` int(10) unsigned DEFAULT 0,
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `hide` tinyint(4) DEFAULT NULL,
  `descr` varchar(20) DEFAULT NULL,
  `parent` varchar(50) DEFAULT NULL,
  `limfct` int(10) unsigned DEFAULT 0,
  `seq` int(11) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`context`,`funct`),
  KEY `context` (`context`),
  KEY `funct` (`funct`),
  KEY `userrole` (`userrole`),
  KEY `parent` (`parent`),
  KEY `later` (`later`),
  KEY `lft` (`lft`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_context__build0`
--

DROP TABLE IF EXISTS `tb_context__build0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_context__build0` (
  `context` varchar(50) NOT NULL,
  `funct` varchar(50) NOT NULL,
  `userrole` varchar(50) DEFAULT NULL,
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `parent` varchar(50) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `hide` tinyint(4) DEFAULT NULL,
  `ep_role` tinyint(4) DEFAULT 0,
  `limfct` int(10) unsigned DEFAULT 0,
  `description` varchar(100) DEFAULT NULL,
  `value` varchar(50) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`context`,`funct`),
  KEY `context` (`context`),
  KEY `funct` (`funct`),
  KEY `userrole` (`userrole`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_context_propt`
--

DROP TABLE IF EXISTS `tb_context_propt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_context_propt` (
  `context` varchar(20) NOT NULL,
  `avbl` varchar(10) NOT NULL,
  `comment` text DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` smallint(6) DEFAULT 1,
  PRIMARY KEY (`context`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_contracts_ifc`
--

DROP TABLE IF EXISTS `tb_contracts_ifc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_contracts_ifc` (
  `bid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL DEFAULT 0,
  `uid` int(10) unsigned DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `supra` int(10) unsigned DEFAULT 0,
  `supratitle` varchar(100) DEFAULT NULL,
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`bid`,`sid`),
  KEY `uid_int` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Interface FleXuVerträge vs FE Groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_contracts_ifc__20151009`
--

DROP TABLE IF EXISTS `tb_contracts_ifc__20151009`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_contracts_ifc__20151009` (
  `bid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL DEFAULT 0,
  `uid` int(10) unsigned DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `supra` int(10) unsigned DEFAULT 0,
  `supratitle` varchar(100) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`bid`,`sid`),
  KEY `uid_int` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Interface FleXuVerträge vs FE Groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_contracts_ifc_copy`
--

DROP TABLE IF EXISTS `tb_contracts_ifc_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_contracts_ifc_copy` (
  `bid` int(10) unsigned NOT NULL,
  `sid` int(10) unsigned NOT NULL DEFAULT 0,
  `uid` int(10) unsigned DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`bid`,`sid`),
  KEY `uid_int` (`uid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Interface FleXuVerträge vs FE Groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_contracts_org`
--

DROP TABLE IF EXISTS `tb_contracts_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_contracts_org` (
  `id_grp` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifikator',
  `part_of` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'übergeordneter Vertrag (Supra-Org)',
  `contract` varchar(50) NOT NULL COMMENT 'Vertragstitelwort',
  `org` int(10) unsigned NOT NULL COMMENT 'Entstehende, resp. Ziel-Organisation',
  `agshort` varchar(8) DEFAULT NULL COMMENT 'Knappkürzel für Agendanutzung',
  `shortname` varchar(50) NOT NULL COMMENT 'Möglichst knappe Bezeichnung',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'gelöscht (hat keine Relationen (mehr))',
  `hide` tinyint(3) unsigned DEFAULT 0 COMMENT 'versteckter Eintrag (nicht mehr zu verwenden)',
  `fe_no` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'fe_grp nicht erlaubt',
  `id_org` int(11) NOT NULL COMMENT 'Organisierender Vertragsnehmer',
  `orglevel` int(11) unsigned NOT NULL DEFAULT 9999 COMMENT 'Hierarchiestufe',
  `context` varchar(50) NOT NULL COMMENT 'Organisationsstruktur',
  `skills` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'erlaubt Kompetenzen/Zulassungen',
  `with_cond` tinyint(3) NOT NULL DEFAULT 0 COMMENT 'bedingt anwendbar (zB Nachweispflichten)',
  `visib` varchar(20) NOT NULL COMMENT 'leer oder minimale Sichtbarkeit, zB confidential',
  `method` varchar(50) NOT NULL COMMENT 'Aufbau oder Ablauf',
  `no_end` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'definitiv, ohne Ablaufdatum',
  `org_assign` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'zweistufige Beziehung; als User sind nur OEs zulässig',
  `org_admin` varchar(100) DEFAULT NULL COMMENT 'Idents verantwortlicher Organisationsstellen',
  `released` bit(1) NOT NULL DEFAULT b'0' COMMENT 'freigegeben für Zuordnungsmodul',
  `id_admin` varchar(200) DEFAULT '' COMMENT 'Volle Vertragsadministrator(en)',
  `id_close` varchar(200) DEFAULT '' COMMENT 'Zusätzliche Administrator(en) nur für Schliessungen',
  `comment` varchar(250) DEFAULT NULL COMMENT 'Beschreibung des Vertragszwecks',
  `access` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'erlaubt Intranetzugang',
  `fe_homes` varchar(250) DEFAULT NULL COMMENT 'öffnet Intranetbereiche',
  `ep_able` tinyint(3) unsigned DEFAULT 0 COMMENT 'enthält planbare Job-Zulassungen OBSOLET',
  `mail_dfb` tinyint(3) unsigned DEFAULT 0 COMMENT 'Mailanspruch 1:Link, 2:Mailbox',
  `workflow` varchar(250) DEFAULT NULL COMMENT 'evtl Workflow-ID',
  `keephistory` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Mutierte Einträge sind zu archivieren',
  `show_excld` varchar(100) DEFAULT NULL COMMENT 'evtl Liste auszublendender Einträge',
  `applcode` varchar(250) DEFAULT NULL COMMENT 'evtl Prüfmethode bei Eingaben',
  `user_kind` varchar(250) DEFAULT NULL COMMENT 'evtl id_user Regel',
  `org_where` varchar(250) DEFAULT NULL COMMENT 'evtl id_org-WHERE-Bedingung',
  `user_where` varchar(250) DEFAULT NULL COMMENT 'evtl id_user-WHERE-Bedingung',
  `entered` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Erstellungsdatum',
  `originator` int(11) NOT NULL DEFAULT 1 COMMENT 'erstellt durch',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'letztes Änderungsdatum',
  `modifier` int(11) NOT NULL DEFAULT 1 COMMENT 'geändert durch',
  `funct_nbrlimit` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'ERSETZT durch method OBSOLET',
  `admin_org` varchar(100) DEFAULT NULL COMMENT 'OBSOLET , Vorgänger des heutigen id_admin',
  `uid_int` int(11) unsigned DEFAULT NULL COMMENT 'OBSOLET',
  `uid_publ` int(11) unsigned DEFAULT NULL COMMENT 'OBSOLET',
  `userid` varchar(250) DEFAULT NULL COMMENT 'vermutlich OBSOLET',
  `subseq` smallint(6) NOT NULL DEFAULT 0 COMMENT 'vermutlich OBSOLET',
  `exploiter` varchar(250) NOT NULL COMMENT 'OBSOLET',
  `fe_grp` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'zugehörige TYPO3-fe_group-ID, OBSOLET??',
  `fe_name` varchar(50) NOT NULL COMMENT 'FE-Name (OBSOLET)',
  `org_filt` varchar(250) DEFAULT NULL COMMENT 'evtl id_org Regel (OBSOLET)',
  `mail_admin` varchar(200) DEFAULT NULL COMMENT 'Gruppenmailadministratoren OBSOLET',
  PRIMARY KEY (`id_grp`),
  UNIQUE KEY `id_org` (`id_org`,`context`),
  UNIQUE KEY `contract` (`contract`),
  KEY `context` (`context`),
  KEY `fe_grp` (`fe_grp`),
  KEY `comment` (`comment`)
) ENGINE=MyISAM AUTO_INCREMENT=456 DEFAULT CHARSET=utf8 COMMENT='Verträge OrgEinheiten-Steuerung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_contracts_org__160207`
--

DROP TABLE IF EXISTS `tb_contracts_org__160207`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_contracts_org__160207` (
  `id_grp` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Identifikator',
  `org` int(10) unsigned NOT NULL COMMENT 'Beschreibende Org-Einheit',
  `part_of` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'übergeordneter Vertrag (Supra-Org)',
  `contract` varchar(50) NOT NULL COMMENT 'Vertragstitelwort',
  `hide` tinyint(3) unsigned DEFAULT 0 COMMENT 'versteckter Eintrag (nicht mehr zu verwenden)',
  `id_org` int(11) NOT NULL COMMENT 'Organisierender Vertragsnehmer',
  `orglevel` int(11) unsigned NOT NULL DEFAULT 9999 COMMENT 'Hierarchiestufe',
  `context` varchar(50) NOT NULL COMMENT 'Organisationsstruktur',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'gelöscht (hat keine Relationen (mehr))',
  `method` varchar(50) NOT NULL COMMENT 'Aufbau oder Ablauf',
  `fe_no` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'fe_grp nicht erlaubt',
  `no_end` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'definitiv, ohne Ablaufdatum',
  `org_admin` varchar(100) DEFAULT NULL COMMENT 'Idents verantwortlicher Organisationsstellen',
  `org_assign` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'als User sind nur OEs zulässig',
  `comment` text DEFAULT NULL COMMENT 'Beschreibung des Vertragszwecks',
  `released` bit(1) NOT NULL DEFAULT b'0' COMMENT 'freigegeben für Zuordnungsmodul',
  `id_admin` varchar(200) DEFAULT NULL COMMENT 'Vertragsadministrator(en)',
  `admin_org` varchar(100) DEFAULT NULL COMMENT '(Version 2 des heutigen id_admin)',
  `access` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'erlaubt Intranetzugang',
  `fe_homes` varchar(250) DEFAULT NULL COMMENT 'öffnet Intranetbereiche',
  `ep_able` tinyint(3) unsigned DEFAULT 0 COMMENT 'enthält planbare Job-Zulassungen',
  `mail_dfb` tinyint(3) unsigned DEFAULT 0 COMMENT 'Mailanspruch 1:Link, 2:Mailbox',
  `workflow` varchar(250) DEFAULT NULL COMMENT 'evtl Workflow-ID',
  `keephistory` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Mutierte Einträge sind zu archivieren',
  `show_excld` varchar(100) DEFAULT NULL COMMENT 'evtl Liste auszublendender Einträge',
  `applcode` varchar(250) DEFAULT NULL COMMENT 'evtl Prüfmethode bei Eingaben',
  `org_filt` varchar(250) DEFAULT NULL COMMENT 'evtl id_org Regel',
  `user_kind` varchar(250) DEFAULT NULL COMMENT 'evtl id_user Regel',
  `org_where` varchar(250) DEFAULT NULL COMMENT 'evtl id_org-WHERE-Bedingung',
  `user_where` varchar(250) DEFAULT NULL COMMENT 'evtl id_user-WHERE-Bedingung',
  `entered` datetime DEFAULT NULL COMMENT 'Erstellungsdatum',
  `originator` int(11) NOT NULL DEFAULT 1 COMMENT 'erstellt durch',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'letztes Änderungsdatum',
  `modifier` int(11) NOT NULL DEFAULT 1 COMMENT 'geändert durch',
  `funct_nbrlimit` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'ERSETZT durch method',
  `uid_int` int(11) unsigned DEFAULT NULL COMMENT 'OBSOLET',
  `uid_publ` int(11) unsigned DEFAULT NULL COMMENT 'OBSOLET',
  `userid` varchar(250) DEFAULT NULL COMMENT 'vermutlich OBSOLET',
  `subseq` smallint(6) NOT NULL DEFAULT 0 COMMENT 'vermutlich OBSOLET',
  `shortname` varchar(50) NOT NULL COMMENT 'OBSOLET',
  `exploiter` varchar(250) NOT NULL COMMENT 'OBSOLET',
  `fe_grp` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'zugehörige TYPO3-fe_group-ID, OBSOLET??',
  `fe_name` varchar(50) NOT NULL COMMENT 'FE-Name (OBSOLET)',
  PRIMARY KEY (`id_grp`),
  UNIQUE KEY `id_org` (`id_org`,`context`),
  UNIQUE KEY `contract` (`contract`),
  KEY `context` (`context`),
  KEY `fe_grp` (`fe_grp`)
) ENGINE=MyISAM AUTO_INCREMENT=397 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Verträge OrgEinheiten-Steuerung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_contracts_suborg__OBSOLETE`
--

DROP TABLE IF EXISTS `tb_contracts_suborg__OBSOLETE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_contracts_suborg__OBSOLETE` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subcontract` varchar(50) NOT NULL,
  `shortname` varchar(30) DEFAULT NULL,
  `id_grp` int(10) unsigned NOT NULL DEFAULT 0,
  `functs` varchar(200) NOT NULL,
  `id_org` int(10) unsigned DEFAULT NULL,
  `uid_int` int(10) unsigned DEFAULT NULL,
  `fe_grp` int(10) unsigned DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`sid`),
  UNIQUE KEY `subcontract` (`id_grp`,`functs`),
  KEY `id_org` (`id_org`),
  KEY `contract` (`subcontract`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='Unterverträge zu Organisationsverträgen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_contracts_subset`
--

DROP TABLE IF EXISTS `tb_contracts_subset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_contracts_subset` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `subcontract` varchar(50) NOT NULL,
  `shortname` varchar(50) DEFAULT NULL,
  `qid` int(10) unsigned DEFAULT 0 COMMENT 'Key aus dfb_contacts.ep_qprofile',
  `id_grp` int(10) unsigned NOT NULL DEFAULT 0,
  `functs` text NOT NULL,
  `id_org` int(10) unsigned DEFAULT NULL,
  `permit` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'stellt eine Einzel-Zulassung dar',
  `agshort` varchar(8) DEFAULT NULL COMMENT 'Kurzkürzel zur Nutzung in Agenda-Anzeige',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Nutzung: gilt als gelöscht',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Nutzung: darf nicht angeboten werden',
  `fe_no` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Nutzung: darf keine FEgroup bewirken',
  `lead_by` int(10) unsigned DEFAULT NULL COMMENT 'alternative Org, welche anstelle id_org die Leitung ausübt',
  `ep_able` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'In EPl für Zuweisungen nutzbar',
  `orglevel` int(10) unsigned DEFAULT 9999 COMMENT 'Hierarchiestufe',
  `perm_sect` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `sect_sort` int(10) unsigned NOT NULL DEFAULT 0,
  `mail_admin` varchar(200) DEFAULT NULL COMMENT 'Gruppenmailberechtigte Organisationen',
  `released` bit(1) NOT NULL DEFAULT b'0',
  `id_admin` varchar(200) DEFAULT NULL,
  `access` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `exploiter` varchar(255) DEFAULT NULL,
  `uid_int` int(10) unsigned DEFAULT NULL,
  `fe_grp` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`sid`),
  KEY `id_org` (`id_org`),
  KEY `contract` (`subcontract`)
) ENGINE=MyISAM AUTO_INCREMENT=363 DEFAULT CHARSET=utf8 COMMENT='Teilmengen vorhandener Organisationsverträge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_contracts_type`
--

DROP TABLE IF EXISTS `tb_contracts_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_contracts_type` (
  `id_grp` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(30) NOT NULL,
  `context` varchar(20) NOT NULL,
  `type_where` varchar(256) NOT NULL,
  `cand_grp` int(11) NOT NULL DEFAULT 0,
  `cand_where` varchar(256) NOT NULL DEFAULT '1',
  `funct_nbrlimit` tinyint(4) NOT NULL DEFAULT 0,
  `comment` text DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`id_grp`)
) ENGINE=MyISAM AUTO_INCREMENT=10004 DEFAULT CHARSET=utf8 COMMENT='OrgTypen-Steuerung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_course`
--

DROP TABLE IF EXISTS `tb_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_course` (
  `idc` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Kurszähler',
  `topic` int(10) unsigned DEFAULT NULL COMMENT 'Thema gem cat_perslog.idid',
  `opsyear` year(4) NOT NULL COMMENT 'Relevantes Betriebsjahr',
  `descr` varchar(50) NOT NULL COMMENT 'Kurzbeschreibung',
  `kind` varchar(50) NOT NULL COMMENT 'Art des Kurses (theory/practice)',
  `skills` varchar(100) NOT NULL COMMENT 'Liste der teilnehmenden Kompetenzen (tb_skills)',
  `description` varchar(150) NOT NULL COMMENT 'Beschreibung ausführlich',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'verstecken, da irrelevant',
  `entered` datetime DEFAULT current_timestamp() COMMENT 'Erstellungszeitpunkt',
  `originator` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'erstellt durch',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Modifikationszeitpunkt',
  `modifier` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'modifiziert durch',
  PRIMARY KEY (`idc`),
  KEY `validto` (`hide`)
) ENGINE=MyISAM AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Eckdaten von Aus- und Weiterbildungskursen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_dfbag_staff`
--

DROP TABLE IF EXISTS `tb_dfbag_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_dfbag_staff` (
  `ident` int(11) NOT NULL,
  `oldkey` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ident`),
  KEY `oldkey` (`oldkey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='DFB AG Personalstamm';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_dfbtree`
--

DROP TABLE IF EXISTS `tb_dfbtree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_dfbtree` (
  `ident` int(11) NOT NULL,
  `namecode` varchar(50) NOT NULL,
  `lft` int(11) NOT NULL,
  `rgt` int(11) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='dfb-Hierarchiebaum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_dubl_cand`
--

DROP TABLE IF EXISTS `tb_dubl_cand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_dubl_cand` (
  `idcand` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ref` varchar(150) DEFAULT NULL,
  `id1` int(10) unsigned DEFAULT NULL,
  `id2` int(10) unsigned DEFAULT NULL,
  `id3` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idcand`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='Kontaktdubletten-Kandidaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_duplicates`
--

DROP TABLE IF EXISTS `tb_duplicates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_duplicates` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `dupl` int(11) NOT NULL DEFAULT 0,
  `parm` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ident`,`dupl`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Duplicate';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_einsatz`
--

DROP TABLE IF EXISTS `tb_einsatz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_einsatz` (
  `key` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `einsatz` varchar(100) DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `ep_area` int(10) unsigned DEFAULT NULL,
  `inactive` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`key`),
  KEY `ep_area` (`ep_area`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='Abteilungen zur Umlage von Kosten, verfeinert auf die Einsatzbereiche.\r\nDie Einträge haben ihr Pendant in den Kontakten (name1=Einsatzbereich)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_events`
--

DROP TABLE IF EXISTS `tb_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_events` (
  `id_user` int(11) NOT NULL DEFAULT 0,
  `topic` varchar(50) NOT NULL DEFAULT '',
  `eventdate` int(11) DEFAULT NULL,
  `ref_date` int(11) DEFAULT NULL,
  `originator` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_user`,`topic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='individual events';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_fav_address`
--

DROP TABLE IF EXISTS `tb_fav_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_fav_address` (
  `ident` int(11) NOT NULL,
  `id_org` int(11) NOT NULL,
  `cause` varchar(30) NOT NULL,
  `typ` varchar(2) NOT NULL,
  `kind` varchar(15) NOT NULL,
  `purpose` varchar(15) NOT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`ident`,`id_org`,`cause`,`purpose`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='bevorzugte Adressen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_fe_org`
--

DROP TABLE IF EXISTS `tb_fe_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_fe_org` (
  `id_grp` int(11) NOT NULL AUTO_INCREMENT,
  `id_org` int(11) NOT NULL,
  `context` varchar(50) DEFAULT NULL,
  `org` int(11) NOT NULL DEFAULT 0,
  `fe_grp` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'zugehörige TYPO3-fe_group-ID',
  `fe_name` varchar(50) NOT NULL,
  `fe_homes` varchar(250) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `modifier` int(10) unsigned DEFAULT NULL,
  `modified` datetime NOT NULL,
  KEY `context` (`context`),
  KEY `fe_grp` (`fe_grp`),
  KEY `contract` (`id_org`,`context`),
  KEY `id_grp` (`id_grp`)
) ENGINE=MyISAM AUTO_INCREMENT=447 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pivottabelle aus TB_CONTRACTS_ORG, tb_contracts_ifc und typo.fe_groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_fe_subset`
--

DROP TABLE IF EXISTS `tb_fe_subset`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_fe_subset` (
  `sid` int(11) NOT NULL,
  `id_grp` int(11) NOT NULL,
  `id_org` int(11) NOT NULL,
  `context` varchar(50) DEFAULT NULL,
  `functs` text NOT NULL,
  `org` int(11) NOT NULL DEFAULT 0,
  `fe_grp` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'zugehörige TYPO3-fe_group-ID',
  `fe_name` varchar(50) NOT NULL,
  `fe_homes` varchar(250) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `modifier` int(10) unsigned DEFAULT NULL,
  `modified` datetime NOT NULL,
  PRIMARY KEY (`sid`),
  KEY `context` (`context`),
  KEY `fe_grp` (`fe_grp`),
  KEY `contract` (`id_org`,`context`),
  KEY `id_grp` (`id_grp`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pivottabelle aus TB_CONTRACTS_SUBSET, tb_contracts_ifc und typo.fe_groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_foto`
--

DROP TABLE IF EXISTS `tb_foto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_foto` (
  `ident` int(11) NOT NULL,
  `mime` varchar(50) DEFAULT NULL,
  `foto` longblob DEFAULT NULL,
  `wide` mediumint(8) DEFAULT NULL COMMENT 'Breite in Pixels',
  `high` mediumint(8) DEFAULT NULL COMMENT 'Höhe in Pixels',
  `w2h` decimal(10,4) DEFAULT NULL COMMENT 'Breite zu Höhenverhältnis',
  `entered` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`ident`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Passfoto für Kontakte';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_foto1`
--

DROP TABLE IF EXISTS `tb_foto1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_foto1` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `mime` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `foto` blob DEFAULT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_foto_leer`
--

DROP TABLE IF EXISTS `tb_foto_leer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_foto_leer` (
  `ident` int(11) NOT NULL,
  `mime` varchar(50) DEFAULT NULL,
  `foto` longblob DEFAULT NULL,
  `wide` mediumint(8) DEFAULT NULL,
  `high` mediumint(8) DEFAULT NULL,
  `w2h` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Passfoto für Kontakte';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_function`
--

DROP TABLE IF EXISTS `tb_function`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_function` (
  `sector` varchar(20) NOT NULL,
  `parid` varchar(30) NOT NULL,
  `parent` varchar(30) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `kind` varchar(15) DEFAULT NULL,
  `necess` varchar(15) DEFAULT NULL,
  `sort` int(6) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  KEY `sector` (`sector`),
  KEY `parid` (`parid`),
  KEY `parent` (`parent`),
  KEY `kind` (`kind`),
  KEY `necess` (`necess`),
  FULLTEXT KEY `tb_param` (`sector`,`parid`,`parent`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Parameter (Oldie)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_groups`
--

DROP TABLE IF EXISTS `tb_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_groups` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `grpName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `ident` int(11) DEFAULT NULL COMMENT 'temporär Ident,  nicht in tb_ident vorhanden',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`auto`),
  UNIQUE KEY `grp_UNIQUE` (`grpName`,`group_id`,`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Gruppenbildung ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_ident`
--

DROP TABLE IF EXISTS `tb_ident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ident` (
  `ident` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Key zu allen Kontaktinformationen',
  `kind` varchar(15) NOT NULL DEFAULT 'contact' COMMENT 'Anrede, resp. Organisationskategorie',
  `idsupra` int(10) unsigned DEFAULT NULL COMMENT 'übergeordnete Organisationseinheit',
  `idinfra` int(10) unsigned DEFAULT NULL COMMENT 'Untergeordnung (NICHT genutzt)',
  `validfrom` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Gültigkeitsanfang',
  `validto` date NOT NULL DEFAULT '9999-12-31' COMMENT 'Gültigkeitsende',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'aktiv, aber auszublenden',
  `extorg` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'nur für Org: 1=ja, 2=VFB, 3=SFB,4=1000er',
  `disused` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Datum der Stilllegung (properties)',
  `confirm` varchar(50) DEFAULT NULL COMMENT 'Vertraulichkeitserklärung: Datum.Ablauf',
  `contractdate` int(10) unsigned DEFAULT NULL COMMENT '?',
  `patron` int(10) unsigned DEFAULT NULL COMMENT 'Ursächliche OrgEinheit',
  `entered` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Eintragungsdatum',
  `originator` int(10) unsigned DEFAULT 1 COMMENT 'Eintragender Administrator',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Änderungsdatum',
  `modifier` int(10) unsigned DEFAULT 1 COMMENT 'Modifizierender Administrator',
  PRIMARY KEY (`ident`),
  KEY `idsupra` (`idsupra`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `kind` (`kind`),
  KEY `idinfra` (`idinfra`)
) ENGINE=MyISAM AUTO_INCREMENT=30117 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Root';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_ident_MIO`
--

DROP TABLE IF EXISTS `tb_ident_MIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ident_MIO` (
  `ident` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kind` varchar(15) NOT NULL DEFAULT 'contact',
  `idsupra` int(10) unsigned DEFAULT NULL,
  `idinfra` int(10) unsigned DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `confirm` varchar(50) DEFAULT NULL,
  `contractdate` int(10) unsigned DEFAULT NULL,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`ident`),
  KEY `idsupra` (`idsupra`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `kind` (`kind`),
  KEY `idinfra` (`idinfra`),
  FULLTEXT KEY `tb_ident` (`kind`)
) ENGINE=MyISAM AUTO_INCREMENT=1153867 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Root mit IDENT-Fehlern (unbekannter Sprung um 1''136''545)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_ident__20160503`
--

DROP TABLE IF EXISTS `tb_ident__20160503`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ident__20160503` (
  `ident` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Key zu allen Kontaktinformationen',
  `kind` varchar(15) NOT NULL DEFAULT 'contact' COMMENT 'Anrede, resp. Organisationskategorie',
  `idsupra` int(10) unsigned DEFAULT NULL COMMENT 'übergeordnete Organisationseinheit',
  `idinfra` int(10) unsigned DEFAULT NULL COMMENT 'Untergeordnung (NICHT genutzt)',
  `validfrom` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Gültigkeitsanfang',
  `validto` date NOT NULL DEFAULT '9999-12-31' COMMENT 'Gültigkeitsende',
  `confirm` varchar(50) DEFAULT NULL COMMENT 'Vertraulichkeitserklärung: Datum.Ablauf',
  `contractdate` int(10) unsigned DEFAULT NULL COMMENT '?',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'aktiv, aber auszublenden',
  `patron` int(10) unsigned DEFAULT NULL COMMENT 'Ursächliche OrgEinheit',
  `doublet` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Datum der Dublettenregistrierung',
  `admin_d` int(10) unsigned DEFAULT NULL COMMENT 'Dublettenerfasser',
  `entered` datetime DEFAULT NULL COMMENT 'Eintragungsdatum',
  `originator` int(10) unsigned DEFAULT 1 COMMENT 'Eintragender Administrator',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Änderungsdatum',
  `modifier` int(10) unsigned DEFAULT 1 COMMENT 'Modifizierender Administrator',
  PRIMARY KEY (`ident`),
  KEY `idsupra` (`idsupra`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `kind` (`kind`),
  KEY `idinfra` (`idinfra`),
  FULLTEXT KEY `tb_ident` (`kind`)
) ENGINE=MyISAM AUTO_INCREMENT=19405 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Root';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_ident__OLDtype`
--

DROP TABLE IF EXISTS `tb_ident__OLDtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ident__OLDtype` (
  `ident` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kind` varchar(15) NOT NULL DEFAULT 'contact',
  `idsupra` int(10) unsigned DEFAULT NULL,
  `idinfra` int(10) unsigned DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `confirm` varchar(50) DEFAULT NULL,
  `contractdate` int(10) unsigned DEFAULT NULL,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`ident`),
  KEY `idsupra` (`idsupra`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `kind` (`kind`),
  KEY `idinfra` (`idinfra`),
  FULLTEXT KEY `tb_ident` (`kind`)
) ENGINE=MyISAM AUTO_INCREMENT=17042 DEFAULT CHARSET=utf8 COMMENT='Root';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_ident_copyquick`
--

DROP TABLE IF EXISTS `tb_ident_copyquick`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_ident_copyquick` (
  `ident` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kind` varchar(15) NOT NULL DEFAULT 'contact',
  `idsupra` int(10) unsigned DEFAULT NULL,
  `idinfra` int(10) unsigned DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `confirm` varchar(50) DEFAULT NULL,
  `contractdate` int(10) unsigned DEFAULT NULL,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`ident`),
  KEY `idsupra` (`idsupra`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `kind` (`kind`),
  KEY `idinfra` (`idinfra`),
  FULLTEXT KEY `tb_ident` (`kind`)
) ENGINE=MyISAM AUTO_INCREMENT=17383 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Root';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_idtypes`
--

DROP TABLE IF EXISTS `tb_idtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_idtypes` (
  `idtypepar` varchar(15) NOT NULL,
  `parent` varchar(15) DEFAULT NULL,
  `lft` smallint(5) unsigned NOT NULL,
  `rgt` smallint(5) unsigned NOT NULL,
  `nsl` smallint(5) unsigned NOT NULL,
  `step1` varchar(15) DEFAULT NULL,
  `step2` varchar(15) DEFAULT NULL,
  `step3` varchar(15) DEFAULT NULL,
  `step4` varchar(15) DEFAULT NULL,
  `step5` varchar(15) DEFAULT NULL,
  `step6` varchar(15) DEFAULT NULL,
  `hide` smallint(6) NOT NULL,
  `description` varchar(80) DEFAULT NULL,
  `atype` varchar(15) DEFAULT NULL,
  `name1` varchar(15) DEFAULT NULL,
  `name2` varchar(15) DEFAULT NULL,
  `name3` varchar(15) DEFAULT NULL,
  `name4` varchar(15) DEFAULT NULL,
  `shortname` varchar(15) DEFAULT NULL,
  `title` varchar(15) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `sexup` varchar(10) DEFAULT NULL,
  `sexlo` varchar(19) DEFAULT NULL,
  `feperm` tinyint(3) unsigned DEFAULT 0,
  `hr` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Org-Typ kommuniziert mit HR',
  `sort` int(10) DEFAULT NULL,
  `nsort` int(10) DEFAULT NULL,
  `criteria` varchar(50) DEFAULT NULL,
  `defnotn` varchar(15) DEFAULT 'S',
  PRIMARY KEY (`idtypepar`),
  KEY `parent` (`parent`),
  KEY `step1` (`step1`,`step2`,`step3`,`step4`,`step5`,`atype`,`criteria`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Eigenschaften der Identitätstypen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_idtypes__20141209`
--

DROP TABLE IF EXISTS `tb_idtypes__20141209`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_idtypes__20141209` (
  `idtypepar` varchar(15) NOT NULL,
  `parent` varchar(15) DEFAULT NULL,
  `lft` smallint(6) NOT NULL,
  `rgt` smallint(6) NOT NULL,
  `step1` varchar(15) DEFAULT NULL,
  `step2` varchar(15) DEFAULT NULL,
  `step3` varchar(15) DEFAULT NULL,
  `step4` varchar(15) DEFAULT NULL,
  `step5` varchar(15) DEFAULT NULL,
  `step6` varchar(15) DEFAULT NULL,
  `hide` smallint(6) NOT NULL,
  `description` varchar(80) DEFAULT NULL,
  `atype` varchar(15) DEFAULT NULL,
  `name1` varchar(15) DEFAULT NULL,
  `name2` varchar(15) DEFAULT NULL,
  `name3` varchar(15) DEFAULT NULL,
  `name4` varchar(15) DEFAULT NULL,
  `shortname` varchar(15) DEFAULT NULL,
  `title` varchar(15) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `sexup` varchar(10) DEFAULT NULL,
  `sexlo` varchar(19) DEFAULT NULL,
  `feperm` tinyint(3) unsigned DEFAULT 0,
  `sort` int(10) DEFAULT NULL,
  `nsort` int(10) DEFAULT NULL,
  `criteria` varchar(50) DEFAULT NULL,
  `defnotn` varchar(15) DEFAULT 'S',
  PRIMARY KEY (`idtypepar`),
  KEY `parent` (`parent`),
  KEY `step1` (`step1`,`step2`,`step3`,`step4`,`step5`,`atype`,`criteria`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Eigenschaften der Identitätstypen BACKUP';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_idtypes__20170212`
--

DROP TABLE IF EXISTS `tb_idtypes__20170212`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_idtypes__20170212` (
  `idtypepar` varchar(15) NOT NULL,
  `parent` varchar(15) DEFAULT NULL,
  `lft` smallint(6) NOT NULL,
  `rgt` smallint(6) NOT NULL,
  `step1` varchar(15) DEFAULT NULL,
  `step2` varchar(15) DEFAULT NULL,
  `step3` varchar(15) DEFAULT NULL,
  `step4` varchar(15) DEFAULT NULL,
  `step5` varchar(15) DEFAULT NULL,
  `step6` varchar(15) DEFAULT NULL,
  `hide` smallint(6) NOT NULL,
  `description` varchar(80) DEFAULT NULL,
  `atype` varchar(15) DEFAULT NULL,
  `name1` varchar(15) DEFAULT NULL,
  `name2` varchar(15) DEFAULT NULL,
  `name3` varchar(15) DEFAULT NULL,
  `name4` varchar(15) DEFAULT NULL,
  `shortname` varchar(15) DEFAULT NULL,
  `title` varchar(15) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `sexup` varchar(10) DEFAULT NULL,
  `sexlo` varchar(19) DEFAULT NULL,
  `feperm` tinyint(3) unsigned DEFAULT 0,
  `sort` int(10) DEFAULT NULL,
  `nsort` int(10) DEFAULT NULL,
  `criteria` varchar(50) DEFAULT NULL,
  `defnotn` varchar(15) DEFAULT 'S',
  PRIMARY KEY (`idtypepar`),
  KEY `parent` (`parent`),
  KEY `step1` (`step1`,`step2`,`step3`,`step4`,`step5`,`atype`,`criteria`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Eigenschaften der Identitätstypen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_idtypes__OLDtype`
--

DROP TABLE IF EXISTS `tb_idtypes__OLDtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_idtypes__OLDtype` (
  `idtypepar` varchar(15) NOT NULL,
  `parent` varchar(15) DEFAULT NULL,
  `step1` varchar(15) DEFAULT NULL,
  `step2` varchar(15) DEFAULT NULL,
  `step3` varchar(15) DEFAULT NULL,
  `step4` varchar(15) DEFAULT NULL,
  `step5` varchar(15) DEFAULT NULL,
  `step6` varchar(15) DEFAULT NULL,
  `lft` smallint(6) NOT NULL,
  `rgt` smallint(6) NOT NULL,
  `hide` smallint(6) NOT NULL,
  `description` varchar(80) DEFAULT NULL,
  `atype` varchar(15) DEFAULT NULL,
  `name1` varchar(15) DEFAULT NULL,
  `name2` varchar(15) DEFAULT NULL,
  `name3` varchar(15) DEFAULT NULL,
  `name4` varchar(15) DEFAULT NULL,
  `shortname` varchar(15) DEFAULT NULL,
  `title` varchar(15) DEFAULT NULL,
  `gender` varchar(10) NOT NULL,
  `sexup` varchar(10) DEFAULT NULL,
  `sexlo` varchar(19) DEFAULT NULL,
  `feperm` tinyint(3) unsigned DEFAULT 0,
  `sort` int(10) DEFAULT NULL,
  `nsort` int(10) DEFAULT NULL,
  `criteria` varchar(50) DEFAULT NULL,
  `defnotn` varchar(15) DEFAULT 'S',
  PRIMARY KEY (`idtypepar`),
  KEY `parent` (`parent`),
  KEY `step1` (`step1`,`step2`,`step3`,`step4`,`step5`,`atype`,`criteria`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Eigenschaften der Identitätstypen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_jobs_open`
--

DROP TABLE IF EXISTS `tb_jobs_open`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_jobs_open` (
  `idj` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dept` mediumint(8) unsigned NOT NULL,
  `sector` varchar(100) NOT NULL,
  `kader` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `position` varchar(100) NOT NULL,
  `task` text NOT NULL,
  `profile` text NOT NULL,
  `time_req` text NOT NULL,
  `contactID` mediumint(8) unsigned NOT NULL,
  `phone` varchar(50) NOT NULL,
  `mailID` mediumint(8) unsigned NOT NULL,
  `num_pos` varchar(50) NOT NULL,
  `urgency` varchar(20) NOT NULL DEFAULT 'normal',
  `visibility` varchar(20) NOT NULL DEFAULT 'public',
  `validfrom` date DEFAULT NULL,
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idj`),
  KEY `dept` (`dept`),
  KEY `sector` (`sector`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COMMENT='Stellenanzeiger Personaldienst';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_mass_letter`
--

DROP TABLE IF EXISTS `tb_mass_letter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_mass_letter` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `inactive` tinyint(4) DEFAULT 0,
  `orgunit` varchar(50) DEFAULT '0',
  `logo` varchar(250) DEFAULT NULL,
  `logo_loc` varchar(100) DEFAULT NULL,
  `logo_width` smallint(6) DEFAULT 100,
  `title` varchar(250) DEFAULT NULL,
  `title_loc` varchar(100) DEFAULT NULL,
  `title_fontsize` smallint(6) DEFAULT 12,
  `sendaddr` text DEFAULT NULL,
  `sendaddr_loc` varchar(100) DEFAULT NULL,
  `addr_loc` varchar(100) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `text_loc` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `city_loc` varchar(100) DEFAULT NULL,
  `signatur` int(11) DEFAULT NULL,
  `signatur_loc` varchar(100) DEFAULT NULL,
  `ausweis_title_l` varchar(100) DEFAULT NULL,
  `ausweis_title_r` varchar(100) DEFAULT NULL,
  `lang` varchar(6) DEFAULT NULL,
  `fontsize` smallint(6) DEFAULT NULL,
  `displace` varchar(100) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `ausweis_links` text DEFAULT NULL,
  `ausweis_links_loc` varchar(100) DEFAULT NULL,
  `ausweis_rechts` text DEFAULT NULL,
  `ausweis_rechts_loc` varchar(100) DEFAULT NULL,
  `ausweis_title_l_loc` varchar(100) DEFAULT NULL,
  `ausweis_title_r_loc` varchar(100) DEFAULT NULL,
  `balken` varchar(100) DEFAULT NULL,
  `balken_loc` varchar(100) DEFAULT NULL,
  `foto_loc` varchar(100) DEFAULT NULL,
  `foto_height` smallint(6) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='Circular letters, e.g. for sending badges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_mass_letter_orgs`
--

DROP TABLE IF EXISTS `tb_mass_letter_orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_mass_letter_orgs` (
  `orgunit` varchar(50) NOT NULL,
  `txt` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`orgunit`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Circular letters, authorized orgunits';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_match_location`
--

DROP TABLE IF EXISTS `tb_match_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_match_location` (
  `typeclass` varchar(15) NOT NULL,
  `purpose` varchar(15) NOT NULL,
  `kind` varchar(15) NOT NULL,
  `sort` int(11) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`typeclass`,`purpose`,`kind`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Matchcode-Ortsreferenz';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_match_name`
--

DROP TABLE IF EXISTS `tb_match_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_match_name` (
  `typeclass` varchar(15) NOT NULL DEFAULT '',
  `nameform` varchar(15) NOT NULL DEFAULT '',
  `dependency` varchar(10) NOT NULL,
  `hasshort` varchar(10) NOT NULL DEFAULT '',
  `value` varchar(255) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`typeclass`,`nameform`,`dependency`,`hasshort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Namen-Matching';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_match_remark`
--

DROP TABLE IF EXISTS `tb_match_remark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_match_remark` (
  `property` varchar(15) NOT NULL,
  `value` varchar(15) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`property`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Matchcode-Zusätze';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_name`
--

DROP TABLE IF EXISTS `tb_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_name` (
  `ident` int(11) NOT NULL,
  `attrib` varchar(15) NOT NULL DEFAULT '',
  `value` varchar(100) NOT NULL DEFAULT '',
  `purpose` varchar(50) NOT NULL DEFAULT '',
  `name1` varchar(50) NOT NULL DEFAULT '',
  `name2` varchar(50) NOT NULL DEFAULT '',
  `name3` varchar(50) NOT NULL DEFAULT '',
  `name4` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(50) NOT NULL DEFAULT '',
  `shortname` varchar(50) NOT NULL DEFAULT '',
  `matchcode` varchar(255) NOT NULL DEFAULT '',
  `notation` varchar(20) NOT NULL DEFAULT '',
  `prim` decimal(10,1) NOT NULL DEFAULT 1.0,
  `lang` varchar(6) NOT NULL DEFAULT '',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime NOT NULL DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`ident`,`prim`),
  KEY `notation` (`notation`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `matchcode` (`matchcode`),
  KEY `name1` (`name1`),
  KEY `name2` (`name2`),
  KEY `shortname` (`shortname`),
  KEY `title` (`title`),
  KEY `purpose` (`purpose`),
  FULLTEXT KEY `tb_name` (`matchcode`,`shortname`)
) ENGINE=MyISAM AUTO_INCREMENT=19495 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Namen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_name_MIO`
--

DROP TABLE IF EXISTS `tb_name_MIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_name_MIO` (
  `ident` int(11) NOT NULL,
  `attrib` varchar(15) NOT NULL,
  `value` varchar(15) NOT NULL,
  `purpose` varchar(50) NOT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `name2` varchar(50) DEFAULT NULL,
  `name3` varchar(50) DEFAULT NULL,
  `name4` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `shortname` varchar(50) DEFAULT NULL,
  `matchcode` varchar(255) DEFAULT NULL,
  `notation` varchar(20) DEFAULT NULL,
  `prim` decimal(10,1) NOT NULL DEFAULT 1.0,
  `lang` varchar(6) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`ident`,`prim`),
  KEY `notation` (`notation`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `matchcode` (`matchcode`),
  KEY `name1` (`name1`),
  KEY `name2` (`name2`),
  KEY `shortname` (`shortname`),
  KEY `title` (`title`),
  KEY `purpose` (`purpose`),
  FULLTEXT KEY `tb_name` (`matchcode`,`shortname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Namen mit IDENT-Fehlern';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_name__20210524`
--

DROP TABLE IF EXISTS `tb_name__20210524`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_name__20210524` (
  `ident` int(11) NOT NULL,
  `attrib` varchar(15) NOT NULL DEFAULT '',
  `value` varchar(100) NOT NULL DEFAULT '',
  `purpose` varchar(50) NOT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `name2` varchar(50) DEFAULT NULL,
  `name3` varchar(50) DEFAULT NULL,
  `name4` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `shortname` varchar(50) DEFAULT NULL,
  `matchcode` varchar(255) DEFAULT NULL,
  `notation` varchar(20) DEFAULT NULL,
  `prim` decimal(10,1) NOT NULL DEFAULT 1.0,
  `lang` varchar(6) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime NOT NULL DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`ident`,`prim`),
  KEY `notation` (`notation`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `matchcode` (`matchcode`),
  KEY `name1` (`name1`),
  KEY `name2` (`name2`),
  KEY `shortname` (`shortname`),
  KEY `title` (`title`),
  KEY `purpose` (`purpose`),
  FULLTEXT KEY `tb_name` (`matchcode`,`shortname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Namen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_name__old`
--

DROP TABLE IF EXISTS `tb_name__old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_name__old` (
  `ident` int(11) NOT NULL,
  `attrib` varchar(15) NOT NULL,
  `value` varchar(15) NOT NULL,
  `purpose` varchar(50) DEFAULT NULL,
  `name1` varchar(50) DEFAULT NULL,
  `name2` varchar(50) DEFAULT NULL,
  `name3` varchar(50) DEFAULT NULL,
  `name4` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `shortname` varchar(50) DEFAULT NULL,
  `matchcode` varchar(255) DEFAULT NULL,
  `notation` varchar(20) DEFAULT NULL,
  `prim` decimal(10,1) NOT NULL DEFAULT 1.0,
  `lang` varchar(6) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`ident`,`prim`),
  KEY `notation` (`notation`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `matchcode` (`matchcode`),
  KEY `name1` (`name1`),
  KEY `name2` (`name2`),
  KEY `shortname` (`shortname`),
  KEY `title` (`title`),
  KEY `purpose` (`purpose`),
  FULLTEXT KEY `tb_name` (`matchcode`,`shortname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Namen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_notation`
--

DROP TABLE IF EXISTS `tb_notation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_notation` (
  `parid` varchar(15) NOT NULL,
  `description` varchar(80) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `formal` varchar(250) DEFAULT NULL,
  `personal` varchar(250) DEFAULT NULL,
  `criteria` varchar(255) DEFAULT NULL,
  `descr` varchar(255) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `4match` varchar(255) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`parid`),
  KEY `criteria` (`criteria`),
  KEY `4match` (`4match`),
  FULLTEXT KEY `tb_param` (`parid`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Notation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_optadmin`
--

DROP TABLE IF EXISTS `tb_optadmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_optadmin` (
  `ident` int(10) unsigned NOT NULL,
  `r_short` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `dispo` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'perm',
  `dispo_data` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '_trg',
  `dispo_period` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dispo_from` date DEFAULT NULL,
  `dispo_main` varchar(50) DEFAULT NULL,
  `dispo_area` int(10) unsigned DEFAULT NULL,
  `dispo_skill` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dispo_sele` datetime DEFAULT NULL,
  `dispo_dev` tinyint(3) unsigned DEFAULT NULL,
  `o_dev` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `o_stats` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `o_actives` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `jobs` varchar(200) DEFAULT NULL,
  `dispolist` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ident`),
  KEY `r_short` (`r_short`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Einsatzplanung: Administrationsrechte  und Einstellungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_options`
--

DROP TABLE IF EXISTS `tb_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_options` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `attrib1` varchar(50) NOT NULL DEFAULT '',
  `attrib2` varchar(255) NOT NULL DEFAULT '',
  `value` text DEFAULT NULL,
  `hide` tinyint(4) DEFAULT 0 COMMENT 'Optionen, welche nicht im Pers. Fomular bearbeitet werden',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`ident`,`attrib1`,`attrib2`),
  FULLTEXT KEY `attrib1` (`attrib1`,`attrib2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Kategorien siehe: cat_options. Feld ''hide'' für Einträge ausserhalb des Formulars';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_orgs`
--

DROP TABLE IF EXISTS `tb_orgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_orgs` (
  `id_grp` int(11) NOT NULL,
  `identifier` varchar(20) NOT NULL,
  `id_org` int(11) NOT NULL,
  `context` varchar(50) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`id_grp`),
  UNIQUE KEY `id_org` (`id_org`,`context`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Relationen (Oldie)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_orgtree`
--

DROP TABLE IF EXISTS `tb_orgtree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_orgtree` (
  `sector` int(10) unsigned NOT NULL,
  `parid` int(10) unsigned NOT NULL,
  `descr` varchar(50) DEFAULT NULL COMMENT 'entspricht tb_name.shortname',
  `type` varchar(20) DEFAULT NULL,
  `specgroup` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 gilt als Fachdienst',
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'NS-(Schachtelungs)Level',
  `hide` tinyint(1) DEFAULT 0,
  `_parent` int(10) unsigned DEFAULT NULL,
  `_sort` int(6) unsigned DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL COMMENT 'entspricht tb_name.matchcode',
  `notable` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Namhafte Organisation',
  `remarks` text NOT NULL,
  PRIMARY KEY (`sector`,`parid`),
  KEY `id_org` (`parid`),
  KEY `type` (`type`),
  KEY `lft` (`lft`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='dfb Organisationsbaum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_orgtree__20151112`
--

DROP TABLE IF EXISTS `tb_orgtree__20151112`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_orgtree__20151112` (
  `sector` int(10) unsigned NOT NULL,
  `parid` int(10) unsigned NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `lft` smallint(6) NOT NULL DEFAULT 0,
  `rgt` smallint(6) NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `_parent` int(10) unsigned DEFAULT NULL,
  `_sort` int(6) unsigned DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `notable` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Namhafte Organisation',
  PRIMARY KEY (`sector`,`parid`),
  KEY `id_org` (`parid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='dfb Organisationsbaum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_orgtree__2019`
--

DROP TABLE IF EXISTS `tb_orgtree__2019`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_orgtree__2019` (
  `sector` int(10) unsigned NOT NULL,
  `parid` int(10) unsigned NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `specgroup` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 gilt als Fachdienst',
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'NS-(Schachtelungs)Level',
  `hide` tinyint(1) DEFAULT 0,
  `_parent` int(10) unsigned DEFAULT NULL,
  `_sort` int(6) unsigned DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `notable` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Namhafte Organisation',
  PRIMARY KEY (`sector`,`parid`),
  KEY `id_org` (`parid`),
  KEY `type` (`type`),
  KEY `lft` (`lft`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='dfb Organisationsbaum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_orgtree_kaputt`
--

DROP TABLE IF EXISTS `tb_orgtree_kaputt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_orgtree_kaputt` (
  `sector` int(10) unsigned NOT NULL,
  `parid` int(10) unsigned NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `lft` smallint(6) NOT NULL DEFAULT 0,
  `rgt` smallint(6) NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `_parent` int(10) unsigned DEFAULT NULL,
  `_sort` int(6) unsigned DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `notable` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Namhafte Organisation',
  PRIMARY KEY (`sector`,`parid`),
  KEY `id_org` (`parid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='dfb Organisationsbaum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_orgtree_keep`
--

DROP TABLE IF EXISTS `tb_orgtree_keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_orgtree_keep` (
  `sector` int(10) unsigned NOT NULL,
  `parid` int(10) unsigned NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `lft` smallint(6) NOT NULL DEFAULT 0,
  `rgt` smallint(6) NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `_parent` int(10) unsigned DEFAULT NULL,
  `_sort` int(6) unsigned DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sector`,`parid`),
  KEY `id_org` (`parid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='dfb Organisationsbaum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_orgtree_ok`
--

DROP TABLE IF EXISTS `tb_orgtree_ok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_orgtree_ok` (
  `sector` int(10) unsigned NOT NULL,
  `parid` int(10) unsigned NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `lft` smallint(6) NOT NULL DEFAULT 0,
  `rgt` smallint(6) NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `_parent` int(10) unsigned DEFAULT NULL,
  `_sort` int(6) unsigned DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `notable` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Namhafte Organisation',
  PRIMARY KEY (`sector`,`parid`),
  KEY `id_org` (`parid`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='dfb Organisationsbaum';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_par_fahrdi`
--

DROP TABLE IF EXISTS `tb_par_fahrdi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_par_fahrdi` (
  `sector` varchar(20) CHARACTER SET utf8 NOT NULL,
  `parid` varchar(30) CHARACTER SET utf8 NOT NULL,
  `parent` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `lft` smallint(6) NOT NULL DEFAULT 0,
  `rgt` smallint(6) NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `sort` int(6) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_param`
--

DROP TABLE IF EXISTS `tb_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_param` (
  `sector` varchar(20) NOT NULL,
  `parid` varchar(30) NOT NULL,
  `parent` varchar(30) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0 COMMENT 'optional von Nutzung ausschliessen',
  `header` tinyint(1) DEFAULT 0 COMMENT 'Titel, nie zu nutzen',
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Hierarchiestufe',
  `sort` int(6) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`sector`,`parid`),
  KEY `parent` (`parent`),
  KEY `parid` (`parid`),
  FULLTEXT KEY `tb_param` (`sector`,`parid`,`parent`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Parameter';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_param_DEV`
--

DROP TABLE IF EXISTS `tb_param_DEV`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_param_DEV` (
  `sector` varchar(20) NOT NULL,
  `parid` varchar(30) NOT NULL,
  `parent` varchar(30) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Hierarchiestufe',
  `sort` int(6) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`sector`,`parid`),
  KEY `parent` (`parent`),
  KEY `parid` (`parid`),
  FULLTEXT KEY `tb_param` (`sector`,`parid`,`parent`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Parameter (Testdatei)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_perslog`
--

DROP TABLE IF EXISTS `tb_perslog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perslog` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tabellenschlüssel',
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'gem. tb_ident',
  `orgunit` varchar(100) NOT NULL DEFAULT '9369' COMMENT 'Eintragende Organisation (default: HR-Dienste)',
  `date_on` date DEFAULT NULL COMMENT 'Ereignisdatum',
  `date_off` date DEFAULT NULL COMMENT 'Ablaufdatum',
  `kind` varchar(50) DEFAULT NULL COMMENT 'Eintragskategorie (topic.parent)',
  `idkt` int(10) unsigned DEFAULT NULL COMMENT 'entspricht cat_perslog.idid von topic',
  `topic` varchar(50) DEFAULT NULL COMMENT 'Eintragsthema gem cat_perslog',
  `idsk` int(10) unsigned DEFAULT NULL COMMENT 'idsk aus tb_skills (kind, topic)',
  `skill` varchar(100) DEFAULT NULL COMMENT 'betroffene Zulassung',
  `idc` int(10) unsigned DEFAULT NULL COMMENT 'idc Kursnummer gem tb_course',
  `skills` varchar(100) DEFAULT NULL COMMENT 'relevante Zulassungen gem Kurs oder proof_crit',
  `sid` int(10) unsigned DEFAULT NULL COMMENT 'Key des relevanten Vertragssubsets',
  `result` varchar(50) DEFAULT NULL COMMENT 'Bewertung',
  `value` text DEFAULT NULL COMMENT 'Bewertungsergebnis, Präzisierung',
  `remark` text DEFAULT NULL COMMENT 'Freie Anmerkungen Fachdienst',
  `remarkHR` text DEFAULT NULL COMMENT 'Freier Kommentar Personaldienst',
  `docid` int(10) unsigned DEFAULT NULL COMMENT 'Dokumentenreferenz',
  `norm` varchar(50) DEFAULT NULL COMMENT 'angewandte Norm zum Ablaufdatum',
  `sysmsg` varchar(100) DEFAULT NULL COMMENT 'autom. generierte Bemerkung',
  `inactive` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'inaktiv ?',
  `appl` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'eintragende Anwendung',
  `method` varchar(20) DEFAULT '' COMMENT 'externe Herkunft',
  `locked` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'gesperrrter Eintrag',
  `hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'versteckter Eintrag',
  `entered` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Datum des Eintrages',
  `oadmin` int(10) unsigned DEFAULT NULL COMMENT 'Ersteintrager',
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'letztes Modifizierungsdatum',
  `admin` int(10) unsigned DEFAULT NULL COMMENT 'Modifizierende Person, gem tb_ident',
  PRIMARY KEY (`idid`),
  KEY `eventdate` (`date_on`),
  KEY `ident` (`ident`),
  KEY `method` (`method`),
  KEY `orgunit` (`orgunit`),
  KEY `idsk` (`idsk`),
  KEY `idkt` (`idkt`),
  FULLTEXT KEY `texts` (`value`,`remark`),
  FULLTEXT KEY `remarkHR` (`remarkHR`)
) ENGINE=MyISAM AUTO_INCREMENT=10660 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Personalfile DFB AG (Version 2018)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_perslog__20120524`
--

DROP TABLE IF EXISTS `tb_perslog__20120524`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perslog__20120524` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'gem. tb_ident',
  `orgunit` varchar(100) NOT NULL DEFAULT '9069' COMMENT 'Eintragende Organisation',
  `date_on` date DEFAULT NULL COMMENT 'Ereignisdatum',
  `date_off` date DEFAULT NULL COMMENT 'Ablaufdatum',
  `kind` varchar(50) DEFAULT NULL COMMENT 'Eintragskategorie (topic.parent)',
  `topic` varchar(50) DEFAULT NULL COMMENT 'Eintragsthema gem cat_perslog',
  `idkt` int(10) unsigned DEFAULT NULL COMMENT 'entspricht cat_perslog.idid von topic',
  `skill` varchar(100) DEFAULT NULL COMMENT 'betroffene Zulassung',
  `idc` int(10) unsigned DEFAULT NULL COMMENT 'idc Kursnummer gem tb_training',
  `skills` varchar(100) DEFAULT NULL COMMENT 'die betroffenen Zulassungen gem tb_skills',
  `idsk` int(10) unsigned DEFAULT NULL COMMENT 'idsk aus tb_skills (kind, topic)',
  `sid` int(10) unsigned DEFAULT NULL COMMENT 'Key des relevanten Vertragssubsets',
  `result` varchar(50) DEFAULT NULL COMMENT 'Bewertung',
  `value` text DEFAULT NULL COMMENT 'Bewertungsergebnis',
  `remark` text DEFAULT NULL COMMENT 'Freie Anmerkungen Fachdienst',
  `remarkHR` text DEFAULT NULL COMMENT 'Freier Kommentar Personaldienst',
  `docid` int(10) unsigned DEFAULT NULL COMMENT 'Dokumentenreferenz',
  `norm` varchar(50) DEFAULT NULL COMMENT 'angewandte Norm zum Ablaufdatum',
  `sysmsg` varchar(100) DEFAULT NULL COMMENT 'autom. generierte Bemerkung',
  `inactive` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'inaktiv ?',
  `appl` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'eintragende Anwendung',
  `method` varchar(20) DEFAULT 'manual' COMMENT 'Eintragungsmethode',
  `locked` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'gesperrrter Eintrag',
  `hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'versteckter Eintrag',
  `updated` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'letztes Modifizierungsdatum',
  `admin` int(10) unsigned DEFAULT NULL COMMENT 'Modifizierende Person, gem tb_ident',
  PRIMARY KEY (`idid`),
  KEY `eventdate` (`date_on`),
  KEY `ident` (`ident`),
  KEY `method` (`method`),
  KEY `orgunit` (`orgunit`),
  KEY `idsk` (`idsk`),
  KEY `idkt` (`idkt`),
  FULLTEXT KEY `texts` (`value`,`remark`),
  FULLTEXT KEY `remarkHR` (`remarkHR`)
) ENGINE=MyISAM AUTO_INCREMENT=8677 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Personalfile DFB AG (Version 2015)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_perslog__20170125`
--

DROP TABLE IF EXISTS `tb_perslog__20170125`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perslog__20170125` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL DEFAULT 0,
  `orgunit` varchar(100) NOT NULL DEFAULT '9069',
  `date_on` date DEFAULT NULL,
  `kind` varchar(50) DEFAULT NULL,
  `topic` varchar(50) DEFAULT NULL,
  `skill` varchar(50) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `docref` varchar(250) DEFAULT NULL,
  `date_off` date DEFAULT NULL,
  `sysmsg` varchar(100) DEFAULT NULL,
  `norm` varchar(50) DEFAULT NULL,
  `inactive` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `appl` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `method` varchar(20) DEFAULT 'manual',
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  `admin` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idid`),
  KEY `eventdate` (`date_on`),
  KEY `ident` (`ident`),
  KEY `method` (`method`),
  KEY `orgunit` (`orgunit`),
  FULLTEXT KEY `texts` (`kind`,`topic`,`skill`,`result`,`value`,`remark`)
) ENGINE=MyISAM AUTO_INCREMENT=7069 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Personalfile DFB AG (Version 2015)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_perslog__20170208`
--

DROP TABLE IF EXISTS `tb_perslog__20170208`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perslog__20170208` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'gem. tb_ident',
  `orgunit` varchar(100) NOT NULL DEFAULT '9069' COMMENT 'Eintragende Organisation',
  `date_on` date DEFAULT NULL COMMENT 'Ereignisdatum',
  `kind` varchar(50) DEFAULT NULL COMMENT 'Eintragskategorie',
  `topic` varchar(50) DEFAULT NULL COMMENT 'Eintragsthema',
  `skill` varchar(50) DEFAULT NULL COMMENT 'betroffene Zulassung',
  `result` varchar(50) DEFAULT NULL COMMENT 'Bewertung',
  `value` text DEFAULT NULL COMMENT 'Bewertungsergebnis',
  `remark` text DEFAULT NULL COMMENT 'Freie Anmerkungen',
  `docref` varchar(250) DEFAULT NULL COMMENT 'Dokumentenreferenzen',
  `date_off` date DEFAULT NULL COMMENT 'Ablaufdatum',
  `norm` varchar(50) DEFAULT NULL COMMENT 'angewandte Norm zum Ablaufdatum',
  `sysmsg` varchar(100) DEFAULT NULL COMMENT 'autom. generierte Bemerkung',
  `inactive` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'inaktiv ?',
  `appl` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'eintragende Anwendung',
  `method` varchar(20) DEFAULT 'manual' COMMENT 'Eintragungsmethode',
  `locked` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'gesperrrter Eintrag',
  `hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'versteckter Eintrag',
  `updated` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'letztes Modifizierungsdatum',
  `admin` int(10) unsigned DEFAULT NULL COMMENT 'Modifizierende Person, gem tb_ident',
  PRIMARY KEY (`idid`),
  KEY `eventdate` (`date_on`),
  KEY `ident` (`ident`),
  KEY `method` (`method`),
  KEY `orgunit` (`orgunit`),
  FULLTEXT KEY `texts` (`kind`,`topic`,`skill`,`result`,`value`,`remark`)
) ENGINE=MyISAM AUTO_INCREMENT=7069 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Personalfile DFB AG (Version 2015)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_perslog__20170312`
--

DROP TABLE IF EXISTS `tb_perslog__20170312`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perslog__20170312` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'gem. tb_ident',
  `orgunit` varchar(100) NOT NULL DEFAULT '9069' COMMENT 'Eintragende Organisation',
  `date_on` date DEFAULT NULL COMMENT 'Ereignisdatum',
  `date_off` date DEFAULT NULL COMMENT 'Ablaufdatum',
  `kind` varchar(50) DEFAULT NULL COMMENT 'Eintragskategorie',
  `topic` varchar(50) DEFAULT NULL COMMENT 'Eintragsthema',
  `skill` varchar(50) DEFAULT NULL COMMENT 'betroffene Zulassung',
  `result` varchar(50) DEFAULT NULL COMMENT 'Bewertung',
  `value` text DEFAULT NULL COMMENT 'Bewertungsergebnis',
  `remark` text DEFAULT NULL COMMENT 'Freie Anmerkungen',
  `docref` varchar(250) DEFAULT NULL COMMENT 'Dokumentenreferenzen',
  `norm` varchar(50) DEFAULT NULL COMMENT 'angewandte Norm zum Ablaufdatum',
  `sysmsg` varchar(100) DEFAULT NULL COMMENT 'autom. generierte Bemerkung',
  `inactive` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'inaktiv ?',
  `appl` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'eintragende Anwendung',
  `method` varchar(20) DEFAULT 'manual' COMMENT 'Eintragungsmethode',
  `locked` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'gesperrrter Eintrag',
  `hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'versteckter Eintrag',
  `updated` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'letztes Modifizierungsdatum',
  `admin` int(10) unsigned DEFAULT NULL COMMENT 'Modifizierende Person, gem tb_ident',
  PRIMARY KEY (`idid`),
  KEY `eventdate` (`date_on`),
  KEY `ident` (`ident`),
  KEY `method` (`method`),
  KEY `orgunit` (`orgunit`),
  FULLTEXT KEY `texts` (`kind`,`topic`,`skill`,`result`,`value`,`remark`)
) ENGINE=MyISAM AUTO_INCREMENT=7134 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Personalfile DFB AG (Version 2015)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_perslog__20170629`
--

DROP TABLE IF EXISTS `tb_perslog__20170629`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perslog__20170629` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'gem. tb_ident',
  `orgunit` varchar(100) NOT NULL DEFAULT '9069' COMMENT 'Eintragende Organisation',
  `date_on` date DEFAULT NULL COMMENT 'Ereignisdatum',
  `date_off` date DEFAULT NULL COMMENT 'Ablaufdatum',
  `kind` varchar(50) DEFAULT NULL COMMENT 'Eintragskategorie',
  `topic` varchar(50) DEFAULT NULL COMMENT 'Eintragsthema',
  `idkt` int(10) unsigned DEFAULT NULL COMMENT 'idid gem cat_pers_skill für kind+topic',
  `skill` varchar(100) DEFAULT NULL COMMENT 'betroffene Zulassung',
  `idsk` int(10) unsigned DEFAULT NULL COMMENT 'idsk aus tb_skills (kind, topic)',
  `sid` int(10) unsigned DEFAULT NULL COMMENT 'Key des relevanten Vertragssubsets',
  `result` varchar(50) DEFAULT NULL COMMENT 'Bewertung',
  `value` text DEFAULT NULL COMMENT 'Bewertungsergebnis',
  `remark` text DEFAULT NULL COMMENT 'Freie Anmerkungen Fachdienst',
  `remarkHR` text DEFAULT NULL COMMENT 'Freier Kommentar Personaldienst',
  `docid` int(10) unsigned DEFAULT NULL COMMENT 'Dokumentenreferenz',
  `norm` varchar(50) DEFAULT NULL COMMENT 'angewandte Norm zum Ablaufdatum',
  `sysmsg` varchar(100) DEFAULT NULL COMMENT 'autom. generierte Bemerkung',
  `inactive` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'inaktiv ?',
  `appl` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'eintragende Anwendung',
  `method` varchar(20) DEFAULT 'manual' COMMENT 'Eintragungsmethode',
  `locked` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'gesperrrter Eintrag',
  `hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'versteckter Eintrag',
  `updated` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'letztes Modifizierungsdatum',
  `admin` int(10) unsigned DEFAULT NULL COMMENT 'Modifizierende Person, gem tb_ident',
  PRIMARY KEY (`idid`),
  KEY `eventdate` (`date_on`),
  KEY `ident` (`ident`),
  KEY `method` (`method`),
  KEY `orgunit` (`orgunit`),
  KEY `idsk` (`idsk`),
  KEY `idkt` (`idkt`),
  FULLTEXT KEY `texts` (`value`,`remark`),
  FULLTEXT KEY `remarkHR` (`remarkHR`)
) ENGINE=MyISAM AUTO_INCREMENT=7984 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Personalfile DFB AG (Version 2015)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_perslog__20180806`
--

DROP TABLE IF EXISTS `tb_perslog__20180806`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perslog__20180806` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'gem. tb_ident',
  `orgunit` varchar(100) NOT NULL DEFAULT '9069' COMMENT 'Eintragende Organisation',
  `date_on` date DEFAULT NULL COMMENT 'Ereignisdatum',
  `date_off` date DEFAULT NULL COMMENT 'Ablaufdatum',
  `kind` varchar(50) DEFAULT NULL COMMENT 'Eintragskategorie (topic.parent)',
  `topic` varchar(50) DEFAULT NULL COMMENT 'Eintragsthema gem cat_perslog',
  `idkt` int(10) unsigned DEFAULT NULL COMMENT 'entspricht cat_perslog.idid von topic',
  `skill` varchar(100) DEFAULT NULL COMMENT 'betroffene Zulassung',
  `idc` int(10) unsigned DEFAULT NULL COMMENT 'idc Kursnummer gem tb_training',
  `skills` varchar(100) DEFAULT NULL COMMENT 'die betroffenen Zulassungen gem tb_skills',
  `idsk` int(10) unsigned DEFAULT NULL COMMENT 'idsk aus tb_skills (kind, topic)',
  `sid` int(10) unsigned DEFAULT NULL COMMENT 'Key des relevanten Vertragssubsets',
  `result` varchar(50) DEFAULT NULL COMMENT 'Bewertung',
  `value` text DEFAULT NULL COMMENT 'Bewertungsergebnis',
  `remark` text DEFAULT NULL COMMENT 'Freie Anmerkungen Fachdienst',
  `remarkHR` text DEFAULT NULL COMMENT 'Freier Kommentar Personaldienst',
  `docid` int(10) unsigned DEFAULT NULL COMMENT 'Dokumentenreferenz',
  `norm` varchar(50) DEFAULT NULL COMMENT 'angewandte Norm zum Ablaufdatum',
  `sysmsg` varchar(100) DEFAULT NULL COMMENT 'autom. generierte Bemerkung',
  `inactive` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'inaktiv ?',
  `appl` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'eintragende Anwendung',
  `method` varchar(20) DEFAULT 'manual' COMMENT 'Eintragungsmethode',
  `locked` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'gesperrrter Eintrag',
  `hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'versteckter Eintrag',
  `updated` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'letztes Modifizierungsdatum',
  `admin` int(10) unsigned DEFAULT NULL COMMENT 'Modifizierende Person, gem tb_ident',
  PRIMARY KEY (`idid`),
  KEY `eventdate` (`date_on`),
  KEY `ident` (`ident`),
  KEY `method` (`method`),
  KEY `orgunit` (`orgunit`),
  KEY `idsk` (`idsk`),
  KEY `idkt` (`idkt`),
  FULLTEXT KEY `texts` (`value`,`remark`),
  FULLTEXT KEY `remarkHR` (`remarkHR`)
) ENGINE=MyISAM AUTO_INCREMENT=9107 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Personalfile DFB AG (Version 2015)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_perslog__20180827`
--

DROP TABLE IF EXISTS `tb_perslog__20180827`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perslog__20180827` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'gem. tb_ident',
  `orgunit` varchar(100) NOT NULL DEFAULT '9069' COMMENT 'Eintragende Organisation',
  `date_on` date DEFAULT NULL COMMENT 'Ereignisdatum',
  `date_off` date DEFAULT NULL COMMENT 'Ablaufdatum',
  `kind` varchar(50) DEFAULT NULL COMMENT 'Eintragskategorie (topic.parent)',
  `idkt` int(10) unsigned DEFAULT NULL COMMENT 'entspricht cat_perslog.idid von topic',
  `topic` varchar(50) DEFAULT NULL COMMENT 'Eintragsthema gem cat_perslog',
  `idsk` int(10) unsigned DEFAULT NULL COMMENT 'idsk aus tb_skills (kind, topic)',
  `skill` varchar(100) DEFAULT NULL COMMENT 'betroffene Zulassung',
  `idc` int(10) unsigned DEFAULT NULL COMMENT 'idc Kursnummer gem tb_course',
  `skills` varchar(100) DEFAULT NULL COMMENT 'die betroffenen Zulassungen gem tb_skills, neu via idc',
  `sid` int(10) unsigned DEFAULT NULL COMMENT 'Key des relevanten Vertragssubsets',
  `result` varchar(50) DEFAULT NULL COMMENT 'Bewertung',
  `value` text DEFAULT NULL COMMENT 'Bewertungsergebnis',
  `remark` text DEFAULT NULL COMMENT 'Freie Anmerkungen Fachdienst',
  `remarkHR` text DEFAULT NULL COMMENT 'Freier Kommentar Personaldienst',
  `docid` int(10) unsigned DEFAULT NULL COMMENT 'Dokumentenreferenz',
  `norm` varchar(50) DEFAULT NULL COMMENT 'angewandte Norm zum Ablaufdatum',
  `sysmsg` varchar(100) DEFAULT NULL COMMENT 'autom. generierte Bemerkung',
  `inactive` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'inaktiv ?',
  `appl` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'eintragende Anwendung',
  `method` varchar(20) DEFAULT 'manual' COMMENT 'Eintragungsmethode',
  `locked` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'gesperrrter Eintrag',
  `hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'versteckter Eintrag',
  `updated` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'letztes Modifizierungsdatum',
  `admin` int(10) unsigned DEFAULT NULL COMMENT 'Modifizierende Person, gem tb_ident',
  PRIMARY KEY (`idid`),
  KEY `eventdate` (`date_on`),
  KEY `ident` (`ident`),
  KEY `method` (`method`),
  KEY `orgunit` (`orgunit`),
  KEY `idsk` (`idsk`),
  KEY `idkt` (`idkt`),
  FULLTEXT KEY `texts` (`value`,`remark`),
  FULLTEXT KEY `remarkHR` (`remarkHR`)
) ENGINE=MyISAM AUTO_INCREMENT=9343 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Personalfile DFB AG (Version 2015)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_perslog__20200711`
--

DROP TABLE IF EXISTS `tb_perslog__20200711`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perslog__20200711` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tabellenschlüssel',
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'gem. tb_ident',
  `orgunit` varchar(100) NOT NULL DEFAULT '9069' COMMENT 'Eintragende Organisation',
  `date_on` date DEFAULT NULL COMMENT 'Ereignisdatum',
  `date_off` date DEFAULT NULL COMMENT 'Ablaufdatum',
  `kind` varchar(50) DEFAULT NULL COMMENT 'Eintragskategorie (topic.parent)',
  `idkt` int(10) unsigned DEFAULT NULL COMMENT 'entspricht cat_perslog.idid von topic',
  `topic` varchar(50) DEFAULT NULL COMMENT 'Eintragsthema gem cat_perslog',
  `idsk` int(10) unsigned DEFAULT NULL COMMENT 'idsk aus tb_skills (kind, topic)',
  `skill` varchar(100) DEFAULT NULL COMMENT 'betroffene Zulassung',
  `idc` int(10) unsigned DEFAULT NULL COMMENT 'idc Kursnummer gem tb_course',
  `skills` varchar(100) DEFAULT NULL COMMENT 'relevante Zulassungen gem Kurs oder proof_crit',
  `sid` int(10) unsigned DEFAULT NULL COMMENT 'Key des relevanten Vertragssubsets',
  `result` varchar(50) DEFAULT NULL COMMENT 'Bewertung',
  `value` text DEFAULT NULL COMMENT 'Bewertungsergebnis',
  `remark` text DEFAULT NULL COMMENT 'Freie Anmerkungen Fachdienst',
  `remarkHR` text DEFAULT NULL COMMENT 'Freier Kommentar Personaldienst',
  `docid` int(10) unsigned DEFAULT NULL COMMENT 'Dokumentenreferenz',
  `norm` varchar(50) DEFAULT NULL COMMENT 'angewandte Norm zum Ablaufdatum',
  `sysmsg` varchar(100) DEFAULT NULL COMMENT 'autom. generierte Bemerkung',
  `inactive` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'inaktiv ?',
  `appl` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'eintragende Anwendung',
  `method` varchar(20) DEFAULT 'manual' COMMENT 'Eintragungsmethode',
  `locked` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'gesperrrter Eintrag',
  `hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'versteckter Eintrag',
  `entered` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Datum des Eintrages',
  `oadmin` int(10) unsigned DEFAULT NULL COMMENT 'Ersteintrager',
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'letztes Modifizierungsdatum',
  `admin` int(10) unsigned DEFAULT NULL COMMENT 'Modifizierende Person, gem tb_ident',
  PRIMARY KEY (`idid`),
  KEY `eventdate` (`date_on`),
  KEY `ident` (`ident`),
  KEY `method` (`method`),
  KEY `orgunit` (`orgunit`),
  KEY `idsk` (`idsk`),
  KEY `idkt` (`idkt`),
  FULLTEXT KEY `texts` (`value`,`remark`),
  FULLTEXT KEY `remarkHR` (`remarkHR`)
) ENGINE=MyISAM AUTO_INCREMENT=10097 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Personalfile DFB AG (Version 2018)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_perslog__V2015`
--

DROP TABLE IF EXISTS `tb_perslog__V2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perslog__V2015` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'gem. tb_ident',
  `orgunit` varchar(100) NOT NULL DEFAULT '9069' COMMENT 'Eintragende Organisation',
  `date_on` date DEFAULT NULL COMMENT 'Ereignisdatum',
  `date_off` date DEFAULT NULL COMMENT 'Ablaufdatum',
  `kind` varchar(50) DEFAULT NULL COMMENT 'Eintragskategorie (topic.parent)',
  `idkt` int(10) unsigned DEFAULT NULL COMMENT 'entspricht cat_perslog.idid von topic',
  `topic` varchar(50) DEFAULT NULL COMMENT 'Eintragsthema gem cat_perslog',
  `idsk` int(10) unsigned DEFAULT NULL COMMENT 'idsk aus tb_skills (kind, topic)',
  `skill` varchar(100) DEFAULT NULL COMMENT 'betroffene Zulassung',
  `idc` int(10) unsigned DEFAULT NULL COMMENT 'idc Kursnummer gem tb_course',
  `skills` varchar(100) DEFAULT NULL COMMENT 'die betroffenen Zulassungen gem tb_skills, neu via idc',
  `sid` int(10) unsigned DEFAULT NULL COMMENT 'Key des relevanten Vertragssubsets',
  `result` varchar(50) DEFAULT NULL COMMENT 'Bewertung',
  `value` text DEFAULT NULL COMMENT 'Bewertungsergebnis',
  `remark` text DEFAULT NULL COMMENT 'Freie Anmerkungen Fachdienst',
  `remarkHR` text DEFAULT NULL COMMENT 'Freier Kommentar Personaldienst',
  `docid` int(10) unsigned DEFAULT NULL COMMENT 'Dokumentenreferenz',
  `norm` varchar(50) DEFAULT NULL COMMENT 'angewandte Norm zum Ablaufdatum',
  `sysmsg` varchar(100) DEFAULT NULL COMMENT 'autom. generierte Bemerkung',
  `inactive` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'inaktiv ?',
  `appl` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'eintragende Anwendung',
  `method` varchar(20) DEFAULT 'manual' COMMENT 'Eintragungsmethode',
  `locked` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'gesperrrter Eintrag',
  `hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'versteckter Eintrag',
  `updated` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'letztes Modifizierungsdatum',
  `admin` int(10) unsigned DEFAULT NULL COMMENT 'Modifizierende Person, gem tb_ident',
  PRIMARY KEY (`idid`),
  KEY `eventdate` (`date_on`),
  KEY `ident` (`ident`),
  KEY `method` (`method`),
  KEY `orgunit` (`orgunit`),
  KEY `idsk` (`idsk`),
  KEY `idkt` (`idkt`),
  FULLTEXT KEY `texts` (`value`,`remark`),
  FULLTEXT KEY `remarkHR` (`remarkHR`)
) ENGINE=MyISAM AUTO_INCREMENT=9375 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Personalfile DFB AG (Version 2015)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_perslog__arc`
--

DROP TABLE IF EXISTS `tb_perslog__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perslog__arc` (
  `idid` text DEFAULT NULL,
  `ident` text DEFAULT NULL,
  `orgunit` text DEFAULT NULL,
  `date_on` text DEFAULT NULL,
  `date_off` text DEFAULT NULL,
  `kind` text DEFAULT NULL,
  `idkt` text DEFAULT NULL,
  `topic` text DEFAULT NULL,
  `idsk` text DEFAULT NULL,
  `skill` text DEFAULT NULL,
  `idc` text DEFAULT NULL,
  `skills` text DEFAULT NULL,
  `sid` text DEFAULT NULL,
  `result` text DEFAULT NULL,
  `value` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `remarkHR` text DEFAULT NULL,
  `docid` text DEFAULT NULL,
  `norm` text DEFAULT NULL,
  `sysmsg` text DEFAULT NULL,
  `inactive` text DEFAULT NULL,
  `appl` text DEFAULT NULL,
  `method` text DEFAULT NULL,
  `locked` text DEFAULT NULL,
  `hidden` text DEFAULT NULL,
  `entered` text DEFAULT NULL,
  `oadmin` text DEFAULT NULL,
  `updated` text DEFAULT NULL,
  `admin` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_perslog__cc`
--

DROP TABLE IF EXISTS `tb_perslog__cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perslog__cc` (
  `idid` int(10) unsigned NOT NULL,
  `ident` int(10) unsigned NOT NULL DEFAULT 0,
  `orgunit` varchar(100) NOT NULL DEFAULT '9069',
  `date_on` date DEFAULT NULL,
  `date_off` date DEFAULT NULL,
  `kind` varchar(50) DEFAULT NULL,
  `topic` varchar(50) DEFAULT NULL,
  `idkt` int(10) unsigned DEFAULT NULL,
  `skill` varchar(100) DEFAULT NULL,
  `idsk` int(10) unsigned DEFAULT NULL,
  `sid` int(10) unsigned DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `value` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `remarkHR` text DEFAULT NULL,
  `docid` int(10) unsigned DEFAULT NULL,
  `norm` varchar(50) DEFAULT NULL,
  `sysmsg` varchar(100) DEFAULT NULL,
  `inactive` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `appl` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `method` varchar(20) DEFAULT 'manual',
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `hidden` tinyint(1) NOT NULL DEFAULT 0,
  `updated` datetime NOT NULL,
  `admin` int(10) unsigned DEFAULT NULL,
  `_cc_job` varchar(30) DEFAULT NULL,
  `_cc_what` varchar(20) DEFAULT NULL,
  `_cc_admin` int(10) unsigned DEFAULT NULL,
  `_cc_modify` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='CACHE tb_perslog';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_perslog_event`
--

DROP TABLE IF EXISTS `tb_perslog_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perslog_event` (
  `orgunit` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '9069',
  `event` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `result` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `msg` text CHARACTER SET utf8 DEFAULT NULL,
  `lft` int(10) unsigned DEFAULT NULL,
  `rgt` int(10) unsigned DEFAULT NULL,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'optional nicht nutzen',
  `header` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Titeleintrag, nie nutzbar',
  `sort` int(10) unsigned DEFAULT NULL,
  `parent` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `description` text CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_perslog_key_old`
--

DROP TABLE IF EXISTS `tb_perslog_key_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perslog_key_old` (
  `logkey` varchar(30) NOT NULL,
  `parent` varchar(30) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `ident` int(10) unsigned NOT NULL DEFAULT 0,
  `date_event` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `norm_valid` varchar(50) DEFAULT NULL,
  `hr` int(10) unsigned DEFAULT NULL,
  `ops` mediumtext DEFAULT NULL,
  `lft` smallint(6) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(6) unsigned NOT NULL DEFAULT 0,
  `hide` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `appl` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `sort` int(6) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`logkey`),
  KEY `parent` (`parent`),
  KEY `logkey` (`logkey`),
  FULLTEXT KEY `param` (`logkey`,`parent`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Parameter (Alte Dossierthemenliste)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_perslog_new`
--

DROP TABLE IF EXISTS `tb_perslog_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perslog_new` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tabellenschlüssel',
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'gem. tb_ident',
  `orgunit` varchar(100) NOT NULL DEFAULT '9369' COMMENT 'Eintragende Organisation (default: HR-Dienste)',
  `date_on` date DEFAULT NULL COMMENT 'Ereignisdatum',
  `date_off` date DEFAULT NULL COMMENT 'Ablaufdatum',
  `kind` varchar(50) DEFAULT NULL COMMENT 'Eintragskategorie (topic.parent)',
  `idkt` int(10) unsigned DEFAULT NULL COMMENT 'entspricht cat_perslog.idid von topic',
  `topic` varchar(50) DEFAULT NULL COMMENT 'Eintragsthema gem cat_perslog',
  `idsk` int(10) unsigned DEFAULT NULL COMMENT 'idsk aus tb_skills (kind, topic)',
  `skill` varchar(100) DEFAULT NULL COMMENT 'betroffene Zulassung',
  `idc` int(10) unsigned DEFAULT NULL COMMENT 'idc Kursnummer gem tb_course',
  `skills` varchar(100) DEFAULT NULL COMMENT 'relevante Zulassungen gem Kurs oder proof_crit',
  `sid` int(10) unsigned DEFAULT NULL COMMENT 'Key des relevanten Vertragssubsets',
  `result` varchar(50) DEFAULT NULL COMMENT 'Bewertung',
  `value` text DEFAULT NULL COMMENT 'Bewertungsergebnis, Präzisierung',
  `remark` text DEFAULT NULL COMMENT 'Freie Anmerkungen Fachdienst',
  `remarkHR` text DEFAULT NULL COMMENT 'Freier Kommentar Personaldienst',
  `docid` int(10) unsigned DEFAULT NULL COMMENT 'Dokumentenreferenz',
  `norm` varchar(50) DEFAULT NULL COMMENT 'angewandte Norm zum Ablaufdatum',
  `sysmsg` varchar(100) DEFAULT NULL COMMENT 'autom. generierte Bemerkung',
  `inactive` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'inaktiv ?',
  `appl` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'eintragende Anwendung',
  `method` varchar(20) DEFAULT '' COMMENT 'externe Herkunft',
  `locked` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'gesperrrter Eintrag',
  `hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'versteckter Eintrag',
  `entered` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Datum des Eintrages',
  `oadmin` int(10) unsigned DEFAULT NULL COMMENT 'Ersteintrager',
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'letztes Modifizierungsdatum',
  `admin` int(10) unsigned DEFAULT NULL COMMENT 'Modifizierende Person, gem tb_ident',
  PRIMARY KEY (`idid`),
  KEY `eventdate` (`date_on`),
  KEY `ident` (`ident`),
  KEY `method` (`method`),
  KEY `orgunit` (`orgunit`),
  KEY `idsk` (`idsk`),
  KEY `idkt` (`idkt`),
  FULLTEXT KEY `texts` (`value`,`remark`),
  FULLTEXT KEY `remarkHR` (`remarkHR`)
) ENGINE=MyISAM AUTO_INCREMENT=10414 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Personalfile DFB AG (Version 2021)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_perslog_old`
--

DROP TABLE IF EXISTS `tb_perslog_old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perslog_old` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `admin` int(10) unsigned DEFAULT NULL,
  `orgunit` varchar(100) NOT NULL DEFAULT '9069',
  `ident` int(11) NOT NULL DEFAULT 0,
  `eventdate` date DEFAULT NULL,
  `event` varchar(50) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT 0,
  `method` varchar(20) DEFAULT 'manual',
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`idid`),
  KEY `eventdate` (`eventdate`),
  KEY `ident` (`ident`),
  KEY `orgunits` (`orgunit`),
  KEY `method` (`method`),
  FULLTEXT KEY `event` (`event`,`result`,`msg`,`comment`)
) ENGINE=MyISAM AUTO_INCREMENT=2114 DEFAULT CHARSET=utf8 COMMENT='Personalfile DFB AG (alter Layout bis 2014)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_perslog_old__cc`
--

DROP TABLE IF EXISTS `tb_perslog_old__cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_perslog_old__cc` (
  `idid` int(10) unsigned NOT NULL,
  `updated` datetime NOT NULL,
  `admin` int(10) unsigned DEFAULT NULL,
  `orgunit` varchar(100) NOT NULL DEFAULT '9069',
  `ident` int(11) NOT NULL DEFAULT 0,
  `eventdate` date DEFAULT NULL,
  `event` varchar(50) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `inactive` tinyint(4) NOT NULL DEFAULT 0,
  `method` varchar(20) DEFAULT 'manual',
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `_cc_job` varchar(30) DEFAULT NULL,
  `_cc_what` varchar(20) DEFAULT NULL,
  `_cc_admin` int(10) unsigned DEFAULT NULL,
  `_cc_modify` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='CACHE tb_perslog_old';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_picklist`
--

DROP TABLE IF EXISTS `tb_picklist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_picklist` (
  `idpi` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Auto-Index',
  `grpId` int(11) DEFAULT NULL,
  `description` varchar(100) NOT NULL COMMENT 'Bezeichnung der Picklist',
  `validfrom` date NOT NULL DEFAULT '0000-00-00' COMMENT 'gültig von',
  `validto` date NOT NULL DEFAULT '9999-12-31' COMMENT 'gültig bis',
  `idents` text DEFAULT NULL COMMENT 'Kommaliste von Kontakt-Idents',
  `entered` datetime DEFAULT NULL COMMENT 'Erstellungszeitpunkt',
  `originator` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'erstellt durch',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Modifikationszeitpunkt',
  `modifier` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'modifiziert durch',
  PRIMARY KEY (`idpi`),
  UNIQUE KEY `id_org_UNIQUE` (`grpId`),
  KEY `description` (`description`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Handgewählte Kontaktlisten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_pool`
--

DROP TABLE IF EXISTS `tb_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_pool` (
  `idp` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Auto-Index',
  `affiliation` varchar(100) NOT NULL COMMENT 'Name des Pools',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'Kontakt-Ident des Pools',
  `validfrom` date NOT NULL DEFAULT '0000-00-00' COMMENT 'gültig von',
  `validto` date NOT NULL DEFAULT '9999-12-31' COMMENT 'gültig bis',
  `optOrgs` varchar(250) DEFAULT NULL COMMENT 'Liste möglicher Basis-Contracts',
  `optSubsets` varchar(250) DEFAULT NULL COMMENT 'Liste möglicher Contract-Subsets',
  `optPicklists` varchar(250) DEFAULT NULL COMMENT 'Liste möglicher Picklisten',
  `optQualifs` varchar(250) DEFAULT NULL COMMENT 'Liste möglicher Jobqualifikationen',
  `select_into` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Contract-id_org, falls reale Relation nötig',
  `entered` datetime DEFAULT NULL COMMENT 'Erstellungszeitpunkt',
  `originator` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'erstellt durch',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Modifikationszeitpunkt',
  `modifier` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'modifiziert durch',
  PRIMARY KEY (`idp`),
  KEY `description` (`affiliation`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Die Gültigkeitsspannen und die ODER-Regeln für die Zugehörigkeit zu Planungspools';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_proof_monitor`
--

DROP TABLE IF EXISTS `tb_proof_monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_proof_monitor` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'gem tb_ident',
  `idsk` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'überwachte Kompetenz',
  `idcond` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Überwachungsprogramm gem pers_skill_proof',
  `validfrom` date DEFAULT NULL COMMENT 'Beginn der Betrachtungsperiode',
  `date_watch` date DEFAULT NULL COMMENT 'Beginn der Überwachungsphase',
  `validto` date DEFAULT NULL COMMENT 'Ablaufdatum der Betrachtungsperiode',
  `full` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1: die Teilbereiche sind vollständig vorhanden',
  `az_date_watch` date DEFAULT NULL COMMENT 'Beginn Überwachung bei Azubi',
  `az_validto` date DEFAULT NULL COMMENT 'Ablaufdatum im Azubifall',
  `az_full` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Vollständigkeit im Azubi-Fall',
  `watchlic` date DEFAULT NULL COMMENT 'falls Vorlizenz zu überwachen ist',
  `limlic` date DEFAULT NULL COMMENT '- Fälligkeitsdatum Vorlizenz',
  `watchmed` date DEFAULT NULL COMMENT 'falls med.Untersuchung zu überwachen ist',
  `limmed` date DEFAULT NULL COMMENT '- Fälligkeitsdatum Medical',
  `watchedu` date DEFAULT NULL COMMENT 'falls int. Ausbildung zu überwachen ist',
  `limedu` date DEFAULT NULL COMMENT '- Fälligkeitsdatum int. Ausbildung',
  `watchexint` date DEFAULT NULL COMMENT 'falls interne Prüfung nötig',
  `limexint` date DEFAULT NULL COMMENT '- Fälligkeitsdatum interne Prüfung',
  `watchexext` date DEFAULT NULL COMMENT 'falls externe Prüfung nötig',
  `limexext` date DEFAULT NULL COMMENT '- Fälligkeitsdatum externe Prüfung',
  `watchtype` date DEFAULT NULL COMMENT 'falls Typerating nötig',
  `limtype` date DEFAULT NULL COMMENT '- Fälligkeitsdatum Typerating',
  `watchwb` date DEFAULT NULL COMMENT 'falls Weiterbildung zu überwachen ist',
  `limwb` date DEFAULT NULL COMMENT '- Fälligkeitsdatum Weiterbildung',
  `entered` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Erstellungsdatum',
  `admin` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idid`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `startwatch` (`date_watch`),
  KEY `ident_idsk` (`ident`,`idsk`)
) ENGINE=MyISAM AUTO_INCREMENT=49794 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Stand und Wertung aller Pflichten eines Kompetenzbereiches nachweispflichtiger Mitarbeiter';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_proof_monitor__20180325`
--

DROP TABLE IF EXISTS `tb_proof_monitor__20180325`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_proof_monitor__20180325` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'gem tb_ident',
  `idsk` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'überwachte Kompetenz',
  `idcond` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Überwachungsprogramm gem pers_skill_proof',
  `validfrom` date DEFAULT NULL COMMENT 'Beginn der Betrachtungsperiode',
  `startwatch` date DEFAULT NULL COMMENT 'Beginn der Überwachungsphase',
  `validto` date DEFAULT NULL COMMENT 'Ablaufdatum der Betrachtungsperiode',
  `full` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1: die Teilbereiche sind vollständig vorhanden',
  `watchlic` date DEFAULT NULL COMMENT 'falls Vorlizenz zu überwachen ist',
  `watchmed` date DEFAULT NULL COMMENT 'falls med.Untersuchung zu überwachen ist',
  `watchedu` date DEFAULT NULL COMMENT 'falls int. Ausbildung zu überwachen ist',
  `watchexint` date DEFAULT NULL COMMENT 'falls interne Prüfung nötig',
  `watchexext` date DEFAULT NULL COMMENT 'falls externe Prüfung nötig',
  `watchtype` date DEFAULT NULL COMMENT 'falls Typerating nötig',
  `watchwb` date DEFAULT NULL COMMENT 'falls Weiterbildung zu überwachen ist',
  `entered` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Erstellungsdatum',
  `admin` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idid`),
  KEY `ident` (`ident`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `startwatch` (`startwatch`)
) ENGINE=MyISAM AUTO_INCREMENT=213 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Stand und Wertung aller Pflichten eines Kompetenzbereiches nachweispflichtiger Mitarbeiter';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_proof_monitor__20190829`
--

DROP TABLE IF EXISTS `tb_proof_monitor__20190829`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_proof_monitor__20190829` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'gem tb_ident',
  `idsk` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'überwachte Kompetenz',
  `idcond` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Überwachungsprogramm gem pers_skill_proof',
  `validfrom` date DEFAULT NULL COMMENT 'Beginn der Betrachtungsperiode',
  `date_watch` date DEFAULT NULL COMMENT 'Beginn der Überwachungsphase',
  `validto` date DEFAULT NULL COMMENT 'Ablaufdatum der Betrachtungsperiode',
  `full` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1: die Teilbereiche sind vollständig vorhanden',
  `az_date_watch` date DEFAULT NULL COMMENT 'Beginn Überwachung bei Azubi',
  `az_validto` date DEFAULT NULL COMMENT 'Ablaufdatum im Azubifall',
  `az_full` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Vollständigkeit im Azubi-Fall',
  `watchlic` date DEFAULT NULL COMMENT 'falls Vorlizenz zu überwachen ist',
  `limlic` date DEFAULT NULL COMMENT '- Fälligkeitsdatum Vorlizenz',
  `watchmed` date DEFAULT NULL COMMENT 'falls med.Untersuchung zu überwachen ist',
  `limmed` date DEFAULT NULL COMMENT '- Fälligkeitsdatum Medical',
  `watchedu` date DEFAULT NULL COMMENT 'falls int. Ausbildung zu überwachen ist',
  `limedu` date DEFAULT NULL COMMENT '- Fälligkeitsdatum int. Ausbildung',
  `watchexint` date DEFAULT NULL COMMENT 'falls interne Prüfung nötig',
  `limexint` date DEFAULT NULL COMMENT '- Fälligkeitsdatum interne Prüfung',
  `watchexext` date DEFAULT NULL COMMENT 'falls externe Prüfung nötig',
  `limexext` date DEFAULT NULL COMMENT '- Fälligkeitsdatum externe Prüfung',
  `watchtype` date DEFAULT NULL COMMENT 'falls Typerating nötig',
  `limtype` date DEFAULT NULL COMMENT '- Fälligkeitsdatum Typerating',
  `watchwb` date DEFAULT NULL COMMENT 'falls Weiterbildung zu überwachen ist',
  `limwb` date DEFAULT NULL COMMENT '- Fälligkeitsdatum Weiterbildung',
  `entered` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Erstellungsdatum',
  `admin` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idid`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `startwatch` (`date_watch`),
  KEY `ident_idsk` (`ident`,`idsk`)
) ENGINE=MyISAM AUTO_INCREMENT=38284 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Stand und Wertung aller Pflichten eines Kompetenzbereiches nachweispflichtiger Mitarbeiter';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_proof_monitor__arc`
--

DROP TABLE IF EXISTS `tb_proof_monitor__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_proof_monitor__arc` (
  `idid` text DEFAULT NULL,
  `ident` text DEFAULT NULL,
  `idsk` text DEFAULT NULL,
  `idcond` text DEFAULT NULL,
  `validfrom` text DEFAULT NULL,
  `startwatch` text DEFAULT NULL,
  `validto` text DEFAULT NULL,
  `full` text DEFAULT NULL,
  `azubi_watch` text DEFAULT NULL,
  `azubi_to` text DEFAULT NULL,
  `azubi_full` text DEFAULT NULL,
  `watchlic` text DEFAULT NULL,
  `limlic` text DEFAULT NULL,
  `watchmed` text DEFAULT NULL,
  `limmed` text DEFAULT NULL,
  `watchedu` text DEFAULT NULL,
  `limedu` text DEFAULT NULL,
  `watchexint` text DEFAULT NULL,
  `limexint` text DEFAULT NULL,
  `watchexext` text DEFAULT NULL,
  `limexext` text DEFAULT NULL,
  `watchtype` text DEFAULT NULL,
  `limtype` text DEFAULT NULL,
  `watchwb` text DEFAULT NULL,
  `limwb` text DEFAULT NULL,
  `entered` text DEFAULT NULL,
  `admin` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_properties`
--

DROP TABLE IF EXISTS `tb_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_properties` (
  `ident` int(10) unsigned NOT NULL DEFAULT 0,
  `attrib1` varchar(30) NOT NULL DEFAULT '',
  `attrib2` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(900) DEFAULT NULL,
  `timevalue` datetime DEFAULT NULL,
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`ident`,`attrib1`,`attrib2`),
  KEY `ident` (`ident`),
  KEY `attrib1` (`attrib1`),
  KEY `attrib2` (`attrib2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Eigenschaften';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_properties_20131223`
--

DROP TABLE IF EXISTS `tb_properties_20131223`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_properties_20131223` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `attrib1` varchar(50) NOT NULL DEFAULT '',
  `attrib2` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(900) DEFAULT NULL,
  `timevalue` datetime DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`ident`,`attrib1`,`attrib2`),
  KEY `ident` (`ident`),
  KEY `attrib1` (`attrib1`),
  KEY `attrib2` (`attrib2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Eigenschaften';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_properties_MIO`
--

DROP TABLE IF EXISTS `tb_properties_MIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_properties_MIO` (
  `ident` int(10) unsigned NOT NULL DEFAULT 0,
  `attrib1` varchar(30) NOT NULL DEFAULT '',
  `attrib2` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(900) DEFAULT NULL,
  `timevalue` datetime DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`ident`,`attrib1`,`attrib2`),
  KEY `ident` (`ident`),
  KEY `attrib1` (`attrib1`),
  KEY `attrib2` (`attrib2`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Eigenschaften mit IDENT-Fehlern';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_properties__arc`
--

DROP TABLE IF EXISTS `tb_properties__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_properties__arc` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `attrib1` varchar(50) NOT NULL DEFAULT '',
  `attrib2` varchar(255) NOT NULL DEFAULT '',
  `value` varchar(900) DEFAULT NULL,
  `timevalue` datetime DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifier` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Eigenschaften-Archiv';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_relation`
--

DROP TABLE IF EXISTS `tb_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_relation` (
  `id_org` int(11) NOT NULL,
  `context` varchar(50) NOT NULL,
  `funct` varchar(50) NOT NULL COMMENT 'langer Kommentar',
  `id_user` int(11) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL COMMENT '2019-01-24 hpsi: um unlogische Fehler mit Dupl. Key zu vermeiden, validto auch mit PK versehen ',
  `visib` varchar(15) NOT NULL DEFAULT 'internal',
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`id_org`,`context`,`funct`,`id_user`,`validfrom`),
  KEY `funct` (`funct`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `visib` (`visib`),
  KEY `context` (`context`,`funct`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Relationen: Sämtliche DFB-Beziehungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_relation_MIO`
--

DROP TABLE IF EXISTS `tb_relation_MIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_relation_MIO` (
  `id_org` int(11) NOT NULL,
  `context` varchar(50) NOT NULL,
  `funct` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `visib` varchar(15) NOT NULL DEFAULT 'internal',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`id_org`,`context`,`funct`,`id_user`,`validfrom`),
  KEY `funct` (`funct`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `visib` (`visib`),
  KEY `context` (`context`,`funct`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Relationen mit IDENT-Fehlern';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_relation__2014-05-22`
--

DROP TABLE IF EXISTS `tb_relation__2014-05-22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_relation__2014-05-22` (
  `id_org` int(11) NOT NULL,
  `context` varchar(50) NOT NULL,
  `funct` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `visib` varchar(15) NOT NULL DEFAULT 'internal',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`id_org`,`context`,`funct`,`id_user`,`validfrom`),
  KEY `funct` (`funct`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `visib` (`visib`),
  KEY `context` (`context`,`funct`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Relationen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_relation__20140515`
--

DROP TABLE IF EXISTS `tb_relation__20140515`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_relation__20140515` (
  `id_org` int(11) NOT NULL,
  `context` varchar(50) NOT NULL,
  `funct` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `visib` varchar(15) NOT NULL DEFAULT 'internal',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`id_org`,`context`,`funct`,`id_user`,`validfrom`),
  KEY `funct` (`funct`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `visib` (`visib`),
  KEY `context` (`context`,`funct`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Relationen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_relation__20210413`
--

DROP TABLE IF EXISTS `tb_relation__20210413`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_relation__20210413` (
  `id_org` int(11) NOT NULL,
  `context` varchar(50) NOT NULL,
  `funct` varchar(50) NOT NULL COMMENT 'langer Kommentar',
  `id_user` int(11) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL COMMENT '2019-01-24 hpsi: um unlogische Fehler mit Dupl. Key zu vermeiden, validto auch mit PK versehen ',
  `visib` varchar(15) NOT NULL DEFAULT 'internal',
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`id_org`,`context`,`funct`,`id_user`,`validfrom`),
  KEY `funct` (`funct`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `visib` (`visib`),
  KEY `context` (`context`,`funct`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Relationen: Sämtliche DFB-Beziehungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_relation__arc`
--

DROP TABLE IF EXISTS `tb_relation__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_relation__arc` (
  `id_org` text DEFAULT NULL,
  `context` text DEFAULT NULL,
  `funct` text DEFAULT NULL,
  `id_user` text DEFAULT NULL,
  `validfrom` text DEFAULT NULL,
  `validto` text DEFAULT NULL,
  `visib` text DEFAULT NULL,
  `entered` text DEFAULT NULL,
  `originator` text DEFAULT NULL,
  `modified` text DEFAULT NULL,
  `modifier` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_relation__b4_migr`
--

DROP TABLE IF EXISTS `tb_relation__b4_migr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_relation__b4_migr` (
  `id_org` int(11) NOT NULL,
  `context` varchar(50) NOT NULL,
  `funct` varchar(50) NOT NULL COMMENT 'langer Kommentar',
  `id_user` int(11) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL COMMENT '2019-01-24 hpsi: um unlogische Fehler mit Dupl. Key zu vermeiden, validto auch mit PK versehen ',
  `visib` varchar(15) NOT NULL DEFAULT 'internal',
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`id_org`,`context`,`funct`,`id_user`,`validfrom`),
  KEY `funct` (`funct`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `visib` (`visib`),
  KEY `context` (`context`,`funct`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Relationen: Sämtliche DFB-Beziehungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_relation_error_201906`
--

DROP TABLE IF EXISTS `tb_relation_error_201906`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_relation_error_201906` (
  `id_org` int(11) NOT NULL,
  `context` varchar(50) CHARACTER SET utf8 NOT NULL,
  `funct` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'langer Kommentar',
  `id_user` int(11) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL COMMENT '2019-01-24 hpsi: um unlogische Fehler mit Dupl. Key zu vermeiden, validto auch mit PK versehen ',
  `visib` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT 'internal',
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_relation_test`
--

DROP TABLE IF EXISTS `tb_relation_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_relation_test` (
  `id_org` int(11) NOT NULL,
  `context` varchar(50) NOT NULL,
  `funct` varchar(50) NOT NULL,
  `id_user` int(11) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `visib` varchar(15) NOT NULL DEFAULT 'internal',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`id_org`,`context`,`funct`,`id_user`,`validfrom`),
  KEY `funct` (`funct`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `visib` (`visib`),
  KEY `context` (`context`,`funct`),
  KEY `id_user` (`id_user`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Relationen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_signatures`
--

DROP TABLE IF EXISTS `tb_signatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_signatures` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `ident` int(11) DEFAULT NULL,
  `image` blob DEFAULT NULL,
  PRIMARY KEY (`auto`),
  KEY `ident` (`ident`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Unterschriften von Kontakten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_skill`
--

DROP TABLE IF EXISTS `tb_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_skill` (
  `idsk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_grp` int(10) unsigned DEFAULT NULL COMMENT 'Vertragsnummer',
  `contract` varchar(50) DEFAULT NULL,
  `org_txt` varchar(200) NOT NULL,
  `lft` int(10) unsigned NOT NULL DEFAULT 0,
  `org` int(10) unsigned NOT NULL DEFAULT 0,
  `id_org` int(10) unsigned DEFAULT NULL COMMENT 'Organisation gem tb_contracts_org',
  `context` varchar(50) DEFAULT NULL COMMENT 'Organisationskontext gem tb_contracts_org',
  `funct` varchar(50) DEFAULT NULL COMMENT 'Kompetenz gem tb_context',
  `hdr_txt` varchar(200) DEFAULT NULL COMMENT 'Langtext gem tb_context als TITEL',
  `header` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `fct_txt` varchar(200) DEFAULT NULL COMMENT 'Langtext gem tb_context als FUNKTION',
  `with_cond` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `chk` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `skill` int(10) unsigned NOT NULL DEFAULT 0,
  `idproof` int(10) unsigned NOT NULL DEFAULT 0,
  `ep_role` int(10) unsigned NOT NULL DEFAULT 0,
  `licence` varchar(50) NOT NULL COMMENT 'Lizenz nach ...',
  `fct` varchar(50) DEFAULT NULL COMMENT 'Kurztext gem tb_context',
  `obsolete` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'fehlende interne Prüfung',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() COMMENT 'Modifikationsdatum',
  `modifier` int(10) unsigned DEFAULT 1 COMMENT 'Modifikator',
  PRIMARY KEY (`idsk`),
  UNIQUE KEY `id_org_context_funct` (`id_org`,`context`,`funct`),
  KEY `context` (`context`),
  KEY `funct` (`funct`),
  KEY `org` (`org`),
  KEY `org_txt_lft` (`org_txt`,`lft`)
) ENGINE=MyISAM AUTO_INCREMENT=244 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pivottabelle aller aktuellen und obsoleten Zulassungen / Kompetenzen (und den Titeln aus tb_context)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_skill2`
--

DROP TABLE IF EXISTS `tb_skill2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_skill2` (
  `idsk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_grp` int(10) unsigned DEFAULT NULL COMMENT 'Vertragsnummer',
  `contract` varchar(50) DEFAULT NULL,
  `lft` int(10) unsigned NOT NULL DEFAULT 0,
  `org` int(10) unsigned NOT NULL DEFAULT 0,
  `id_org` int(10) unsigned DEFAULT NULL COMMENT 'Organisation gem tb_contracts_org',
  `context` varchar(50) DEFAULT NULL COMMENT 'Organisationskontext gem tb_contracts_org',
  `functs` varchar(100) DEFAULT NULL COMMENT 'Kompetenz(en) gem tb_context',
  `fct_txt` varchar(200) DEFAULT NULL COMMENT 'Langtext gem tb_context als FUNKTION',
  `validinit` varchar(100) DEFAULT NULL COMMENT 'Standardgültigkeit gem tb_context',
  `with_cond` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `chk` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `skill` int(10) unsigned NOT NULL DEFAULT 0,
  `idproof` int(10) unsigned NOT NULL DEFAULT 0,
  `ep_role` int(10) unsigned NOT NULL DEFAULT 0,
  `fct` varchar(50) DEFAULT NULL COMMENT 'Kurztext gem tb_context',
  `obsolete` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'fehlende interne Prüfung',
  `org_txt` varchar(200) NOT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() COMMENT 'Modifikationsdatum',
  `modifier` int(10) unsigned DEFAULT 1 COMMENT 'Modifikator',
  PRIMARY KEY (`idsk`),
  KEY `context` (`context`),
  KEY `org` (`org`),
  KEY `org_txt_lft` (`org_txt`,`lft`),
  KEY `functs` (`functs`)
) ENGINE=MyISAM AUTO_INCREMENT=241 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pivottabelle aller aktuellen und obsoleten Zulassungen / Kompetenzen (sowie Ergänzungen aus tb_context)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_skill_list`
--

DROP TABLE IF EXISTS `tb_skill_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_skill_list` (
  `idsl` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_grp` int(10) unsigned DEFAULT NULL COMMENT 'Vertragsnummer',
  `sid` int(10) unsigned DEFAULT NULL COMMENT 'Sub-Vertragsnummer',
  `sid_txt` varchar(100) DEFAULT NULL COMMENT 'Rollenkurzname gem Untervertrag',
  `contract` varchar(50) DEFAULT NULL,
  `org_txt` varchar(200) NOT NULL,
  `lft` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'NS-Sortierung aus tb_context',
  `org` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Ident Hauptvertrags-Org',
  `sOrg` int(10) unsigned DEFAULT NULL COMMENT 'Ident Sub-Organisation',
  `obsolete` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'fehlende interne Prüfung',
  `id_org` int(10) unsigned NOT NULL COMMENT 'Organisation gem tb_contracts_org',
  `context` varchar(50) NOT NULL COMMENT 'Organisationskontext gem tb_contracts_org',
  `funct` varchar(50) NOT NULL COMMENT 'Kompetenz gem tb_context',
  `educ` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Ausbildungs-/Vorbereitungsrolle',
  `hdr_txt` varchar(200) DEFAULT NULL COMMENT 'Langtext gem tb_context als TITEL',
  `header` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `fct_txt` varchar(200) DEFAULT NULL COMMENT 'Langtext gem tb_context als FUNKTION',
  `age_limit` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Betriebliche Altersgrenze in Jahren',
  `with_cond` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `chk` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `skill` int(10) unsigned NOT NULL DEFAULT 0,
  `idproof` int(10) unsigned NOT NULL DEFAULT 0,
  `ep_role` int(10) unsigned DEFAULT 0,
  `licence` varchar(50) NOT NULL COMMENT 'Lizenz nach ...',
  `by_funct` varchar(50) NOT NULL COMMENT 'Funct-spezifische Nachweise: Subregel-Nr:0/1, funct ist (0=nicht) zulassungsberechtigt',
  `validity` varchar(50) DEFAULT NULL COMMENT 'Vorgaben Gültigkeitsvermerke',
  `fct` varchar(50) DEFAULT NULL COMMENT 'Kurztext gem tb_context',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() COMMENT 'Modifikationsdatum',
  `modifier` int(10) unsigned DEFAULT 1 COMMENT 'Modifikator',
  PRIMARY KEY (`idsl`),
  UNIQUE KEY `id_org_context_funct` (`id_org`,`context`,`funct`),
  KEY `org_txt` (`org_txt`),
  KEY `lft` (`lft`),
  KEY `context` (`context`),
  KEY `funct` (`funct`)
) ENGINE=MyISAM AUTO_INCREMENT=385 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pivottabelle aller aktuellen und obsoleten Zulassungen / Kompetenzen, als Liste nutzbar (mit den Titeln aus tb_context)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_skill_mgmt`
--

DROP TABLE IF EXISTS `tb_skill_mgmt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_skill_mgmt` (
  `idid` int(10) unsigned NOT NULL COMMENT 'Autoindex',
  `id_grp` int(10) unsigned NOT NULL COMMENT 'Vertrag gem tb_contracts_org',
  `funct` varchar(50) DEFAULT NULL COMMENT 'Rolle gem tb_context',
  `idcond` int(10) unsigned NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `medical` varchar(20) DEFAULT NULL COMMENT 'Medizinische Voraussetzung',
  `licence_ext` varchar(20) DEFAULT NULL COMMENT 'Externe Zulassung',
  `educ_int` varchar(20) DEFAULT NULL COMMENT 'Interne Ausbildung',
  `exam_int` smallint(5) unsigned DEFAULT 0 COMMENT 'Interne Prüfung',
  `exam_gov` varchar(20) DEFAULT NULL COMMENT 'Amtliche Prüfung',
  `type_rating` varchar(20) DEFAULT NULL COMMENT 'Typenzulassung',
  `educ_cont` varchar(20) DEFAULT NULL COMMENT 'Weiterbildungsrhythmus',
  `descr` varchar(20) DEFAULT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Nachzuweisende Eigenschaften ausgewählter Zulassungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_skill_monitor`
--

DROP TABLE IF EXISTS `tb_skill_monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_skill_monitor` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'gem tb_ident',
  `idsk` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Skill, Kompetenz gem tb_skills',
  `idcond` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Nachweisbereich gem pers_skill_proof',
  `validfrom` date DEFAULT NULL COMMENT 'Beginn der Betrachtungsperiode',
  `startwatch` date DEFAULT NULL COMMENT 'Beginn der Überwachungsphase',
  `validto` date DEFAULT NULL COMMENT 'Ablaufdatum der Betrachtungsperiode',
  `full` tinyint(3) unsigned DEFAULT NULL COMMENT '0/1: alle Teilbereiche wurden gefunden',
  `watchlic` date DEFAULT NULL COMMENT 'falls Vorlizenz zu überwachen ist',
  `limlic` date DEFAULT NULL COMMENT 'Fälligkeitsdatum Vorlizenz',
  `watchmed` date DEFAULT NULL COMMENT 'falls med.Untersuchung zu überwachen ist',
  `limmed` date DEFAULT NULL COMMENT 'Fälligkeitsdatum Medical',
  `watchedu` date DEFAULT NULL COMMENT 'falls int. Ausbildung zu überwachen ist',
  `limedu` date DEFAULT NULL COMMENT 'Fälligkeitsdatum int. Ausbildung',
  `watchexint` date DEFAULT NULL COMMENT 'fehlende interne Prüfung',
  `limexint` date DEFAULT NULL COMMENT 'Fälligkeitsdatum interne Prüfung',
  `watchexext` date DEFAULT NULL COMMENT 'fehlende externe Prüfung',
  `limexext` date DEFAULT NULL COMMENT 'Fälligkeitsdatum externe Prüfung',
  `watchtype` date DEFAULT NULL COMMENT 'fehlende Typerating',
  `limtype` date DEFAULT NULL COMMENT 'Fälligkeitsdatum Typerating',
  `watchwb` date DEFAULT NULL COMMENT 'falls Weiterbildung zu überwachen ist',
  `limwb` date DEFAULT NULL COMMENT 'Fälligkeitsdatum Weiterbildung',
  `entered` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Erstellungsdatum',
  `admin` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idid`),
  KEY `ident` (`ident`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `startwatch` (`startwatch`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Stand und Wertung aller Pflichten eines Kompetenzbereiches nachweispflichtiger Mitarbeiter';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_skill_monitor__20190531`
--

DROP TABLE IF EXISTS `tb_skill_monitor__20190531`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_skill_monitor__20190531` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'gem tb_ident',
  `idsk` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Skill, Kompetenz gem tb_skills',
  `idcond` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Nachweisbereich gem pers_skill_proof',
  `validfrom` date DEFAULT NULL COMMENT 'Beginn der Betrachtungsperiode',
  `startwatch` date DEFAULT NULL COMMENT 'Beginn der Überwachungsphase',
  `validto` date DEFAULT NULL COMMENT 'Ablaufdatum der Betrachtungsperiode',
  `full` tinyint(3) unsigned DEFAULT NULL COMMENT '0/1: alle Teilbereiche wurden gefunden',
  `watchlic` date DEFAULT NULL COMMENT 'falls Vorlizenz zu überwachen ist',
  `limlic` date DEFAULT NULL COMMENT 'Fälligkeitsdatum Vorlizenz',
  `watchmed` date DEFAULT NULL COMMENT 'falls med.Untersuchung zu überwachen ist',
  `limmed` date DEFAULT NULL COMMENT 'Fälligkeitsdatum Medical',
  `watchedu` date DEFAULT NULL COMMENT 'falls int. Ausbildung zu überwachen ist',
  `limedu` date DEFAULT NULL COMMENT 'Fälligkeitsdatum int. Ausbildung',
  `watchexint` date DEFAULT NULL COMMENT 'fehlende interne Prüfung',
  `limexint` date DEFAULT NULL COMMENT 'Fälligkeitsdatum interne Prüfung',
  `watchexext` date DEFAULT NULL COMMENT 'fehlende externe Prüfung',
  `limexext` date DEFAULT NULL COMMENT 'Fälligkeitsdatum externe Prüfung',
  `watchtype` date DEFAULT NULL COMMENT 'fehlende Typerating',
  `limtype` date DEFAULT NULL COMMENT 'Fälligkeitsdatum Typerating',
  `watchwb` date DEFAULT NULL COMMENT 'falls Weiterbildung zu überwachen ist',
  `limwb` date DEFAULT NULL COMMENT 'Fälligkeitsdatum Weiterbildung',
  `entered` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Erstellungsdatum',
  `admin` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idid`),
  KEY `ident` (`ident`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `startwatch` (`startwatch`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Stand und Wertung aller Pflichten eines Kompetenzbereiches nachweispflichtiger Mitarbeiter';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_skill_valid`
--

DROP TABLE IF EXISTS `tb_skill_valid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_skill_valid` (
  `idsk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fct_txt` varchar(200) DEFAULT NULL COMMENT 'Langtext gem tb_context als FUNKTION',
  `dfb` varchar(20) DEFAULT NULL COMMENT 'dfb-interne Zulassungsbegrenzung, falls keine Limite gegeben ist',
  `medical` varchar(20) DEFAULT NULL COMMENT 'beim Fehlen einer medizinischen Gültigkeitsangabe',
  `licence_ext` varchar(20) DEFAULT NULL COMMENT '... einer Fremdlizenz-Gültigkeitsangabe',
  `educ_int` varchar(20) DEFAULT NULL COMMENT '... einer Ausbildungs-Gültigkeitsangabe',
  `exam_int` varchar(20) DEFAULT NULL COMMENT '... einer DFB-Prüfungs-Gültigkeitsangabe',
  `exam_gov` varchar(20) DEFAULT NULL COMMENT '... einer BAV-Prüfungs-Gültigkeitsangabe',
  `type_rating` varchar(20) DEFAULT NULL COMMENT '... einer Typerating-Gültigkeitsangabe',
  `educ_cont` varchar(20) DEFAULT NULL COMMENT '... einer Weiterbildungs-Gültigkeitsangabe',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() COMMENT 'Modifikationsdatum',
  `modifier` int(10) unsigned DEFAULT 1 COMMENT 'Modifikator',
  PRIMARY KEY (`idsk`)
) ENGINE=MyISAM AUTO_INCREMENT=241 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Manuelle Zusatzangaben bzgl Ablaufgrenzen zur Pivottabelle aller aktuellen und obsoleten Zulassungen / Kompetenzen (sowie Ergänzungen aus tb_context)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_skills`
--

DROP TABLE IF EXISTS `tb_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_skills` (
  `idsk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_grp` int(10) unsigned DEFAULT NULL COMMENT 'Vertragsnummer',
  `sid` int(10) unsigned DEFAULT NULL COMMENT 'sid aus tb_contracts_subset',
  `contract` varchar(50) DEFAULT NULL,
  `funct` varchar(50) DEFAULT NULL COMMENT 'Kompetenz-Hauptname (aus functs)',
  `educ` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Ausbildungsrolle',
  `lft` int(10) unsigned NOT NULL DEFAULT 0,
  `org` int(10) unsigned NOT NULL DEFAULT 0,
  `obsolete` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'fehlende interne Prüfung',
  `id_org` int(10) unsigned DEFAULT NULL COMMENT 'Organisation gem tb_contracts_org',
  `context` varchar(50) DEFAULT NULL COMMENT 'Organisationskontext gem tb_contracts_org',
  `functs` varchar(100) DEFAULT NULL COMMENT 'Kompetenz(en) gem tb_context',
  `fct_txt` varchar(200) DEFAULT NULL COMMENT 'Langtext gem tb_context als FUNKTION',
  `with_cond` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `chk` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `skill` int(10) unsigned NOT NULL DEFAULT 0,
  `age_limit` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Altersgrenze',
  `idproof` int(10) unsigned NOT NULL DEFAULT 0,
  `proof_as_skill` int(10) unsigned DEFAULT NULL COMMENT 'Nachweispflichtig gemäss anderem Skill',
  `validity` varchar(50) DEFAULT NULL COMMENT 'Standardgültigkeit gem tb_context',
  `licence` varchar(50) NOT NULL COMMENT 'Lizenz nach ...',
  `by_funct` varchar(50) NOT NULL COMMENT 'Nachweissubregeln, die spezifisch für diese funct gelten',
  `ep_role` int(10) unsigned NOT NULL DEFAULT 0,
  `qid` int(10) unsigned DEFAULT NULL COMMENT 'qid aus dfb_ag.ep_qprofile',
  `qshort` varchar(50) DEFAULT NULL COMMENT 'Funktionscode aus dfb_ag.ep_qprofile',
  `qactive` int(10) unsigned DEFAULT NULL COMMENT 'ist das qprofil aktiv?',
  `supidsks` varchar(250) NOT NULL COMMENT 'Liste übergeordneter Skills (idsks)',
  `superior2` varchar(250) NOT NULL COMMENT 'deckt auch diese Kompetenzen ab',
  `fct` varchar(50) DEFAULT NULL COMMENT 'Kurztext gem tb_context',
  `org_txt` varchar(200) NOT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() COMMENT 'Modifikationsdatum',
  `modifier` int(10) unsigned DEFAULT 1 COMMENT 'Modifikator',
  PRIMARY KEY (`idsk`),
  KEY `context` (`context`),
  KEY `org` (`org`),
  KEY `org_txt_lft` (`org_txt`,`lft`),
  KEY `functs` (`functs`),
  KEY `funct` (`funct`),
  KEY `ep_role` (`ep_role`)
) ENGINE=MyISAM AUTO_INCREMENT=385 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pivottabelle aller aktuellen und obsoleten Zulassungen / Kompetenzen (sowie Ergänzungen aus tb_context)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_skills__20190507`
--

DROP TABLE IF EXISTS `tb_skills__20190507`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_skills__20190507` (
  `idsk` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_grp` int(10) unsigned DEFAULT NULL COMMENT 'Vertragsnummer',
  `sid` int(10) unsigned DEFAULT NULL COMMENT 'sid aus tb_contracts_subset',
  `contract` varchar(50) DEFAULT NULL,
  `funct` varchar(50) DEFAULT NULL COMMENT 'Kompetenz-Hauptname (aus functs)',
  `educ` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Ausbildungsrolle',
  `lft` int(10) unsigned NOT NULL DEFAULT 0,
  `org` int(10) unsigned NOT NULL DEFAULT 0,
  `obsolete` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'fehlende interne Prüfung',
  `id_org` int(10) unsigned DEFAULT NULL COMMENT 'Organisation gem tb_contracts_org',
  `context` varchar(50) DEFAULT NULL COMMENT 'Organisationskontext gem tb_contracts_org',
  `functs` varchar(100) DEFAULT NULL COMMENT 'Kompetenz(en) gem tb_context',
  `fct_txt` varchar(200) DEFAULT NULL COMMENT 'Langtext gem tb_context als FUNKTION',
  `with_cond` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `chk` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `skill` int(10) unsigned NOT NULL DEFAULT 0,
  `age_limit` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Altersgrenze',
  `idproof` int(10) unsigned NOT NULL DEFAULT 0,
  `proof_as_skill` int(10) unsigned DEFAULT NULL COMMENT 'Nachweispflichtig gemäss anderem Skill',
  `validity` varchar(50) DEFAULT NULL COMMENT 'Standardgültigkeit gem tb_context',
  `licence` varchar(50) NOT NULL COMMENT 'Lizenz nach ...',
  `by_funct` varchar(50) NOT NULL COMMENT 'Nachweissubregeln, die spezifisch für diese funct gelten',
  `ep_role` int(10) unsigned NOT NULL DEFAULT 0,
  `qid` int(10) unsigned DEFAULT NULL COMMENT 'qid aus dfb_ag.ep_qprofile',
  `qshort` varchar(50) DEFAULT NULL COMMENT 'Funktionscode aus dfb_ag.ep_qprofile',
  `qactive` int(10) unsigned DEFAULT NULL COMMENT 'ist das qprofil aktiv?',
  `supidsks` varchar(250) NOT NULL COMMENT 'Liste übergeordneter Skills (idsks)',
  `superior2` varchar(250) NOT NULL COMMENT 'deckt auch diese Kompetenzen ab',
  `fct` varchar(50) DEFAULT NULL COMMENT 'Kurztext gem tb_context',
  `org_txt` varchar(200) NOT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() COMMENT 'Modifikationsdatum',
  `modifier` int(10) unsigned DEFAULT 1 COMMENT 'Modifikator',
  PRIMARY KEY (`idsk`),
  KEY `context` (`context`),
  KEY `org` (`org`),
  KEY `org_txt_lft` (`org_txt`,`lft`),
  KEY `functs` (`functs`),
  KEY `funct` (`funct`),
  KEY `ep_role` (`ep_role`)
) ENGINE=MyISAM AUTO_INCREMENT=294 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pivottabelle aller aktuellen und obsoleten Zulassungen / Kompetenzen (sowie Ergänzungen aus tb_context)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_task`
--

DROP TABLE IF EXISTS `tb_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_task` (
  `id_user` int(11) NOT NULL DEFAULT 0,
  `task` varchar(50) NOT NULL DEFAULT '' COMMENT 'tesk gemäss tb_task',
  `funct` varchar(50) NOT NULL DEFAULT '',
  `eventdate` int(11) DEFAULT NULL COMMENT 'Unix timestamp der letzten Überprüfung',
  `ref_date` date DEFAULT NULL,
  `modifier` int(11) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `parm` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_user`,`task`,`funct`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='individual tasks upon login';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_vfblog`
--

DROP TABLE IF EXISTS `tb_vfblog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_vfblog` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Tabellenschlüssel',
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'gem. tb_ident',
  `orgunit` varchar(100) NOT NULL DEFAULT '9369' COMMENT 'Eintragende Organisation (default: HR-Dienste)',
  `date_on` date DEFAULT NULL COMMENT 'Ereignisdatum',
  `date_off` date DEFAULT NULL COMMENT 'Ablaufdatum',
  `kind` varchar(50) DEFAULT NULL COMMENT 'Eintragskategorie (topic.parent)',
  `idkt` int(10) unsigned DEFAULT NULL COMMENT 'entspricht cat_perslog.idid von topic',
  `topic` varchar(50) DEFAULT NULL COMMENT 'Eintragsthema gem cat_perslog',
  `idsk` int(10) unsigned DEFAULT NULL COMMENT 'idsk aus tb_skills (kind, topic)',
  `skill` varchar(100) DEFAULT NULL COMMENT 'betroffene Zulassung',
  `idc` int(10) unsigned DEFAULT NULL COMMENT 'idc Kursnummer gem tb_course',
  `skills` varchar(100) DEFAULT NULL COMMENT 'relevante Zulassungen gem Kurs oder proof_crit',
  `sid` int(10) unsigned DEFAULT NULL COMMENT 'Key des relevanten Vertragssubsets',
  `result` varchar(50) DEFAULT NULL COMMENT 'Bewertung',
  `value` text DEFAULT NULL COMMENT 'Bewertungsergebnis, Präzisierung',
  `remark` text DEFAULT NULL COMMENT 'Freie Anmerkungen Fachdienst',
  `remarkHR` text DEFAULT NULL COMMENT 'Freier Kommentar Personaldienst',
  `docid` int(10) unsigned DEFAULT NULL COMMENT 'Dokumentenreferenz',
  `norm` varchar(50) DEFAULT NULL COMMENT 'angewandte Norm zum Ablaufdatum',
  `sysmsg` varchar(100) DEFAULT NULL COMMENT 'autom. generierte Bemerkung',
  `inactive` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'inaktiv ?',
  `appl` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'eintragende Anwendung',
  `method` varchar(20) DEFAULT '' COMMENT 'externe Herkunft',
  `locked` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'gesperrrter Eintrag',
  `hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'versteckter Eintrag',
  `entered` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Datum des Eintrages',
  `oadmin` int(10) unsigned DEFAULT NULL COMMENT 'Ersteintrager',
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'letztes Modifizierungsdatum',
  `admin` int(10) unsigned DEFAULT NULL COMMENT 'Modifizierende Person, gem tb_ident',
  PRIMARY KEY (`idid`),
  KEY `eventdate` (`date_on`),
  KEY `ident` (`ident`),
  KEY `method` (`method`),
  KEY `orgunit` (`orgunit`),
  KEY `idsk` (`idsk`),
  KEY `idkt` (`idkt`),
  FULLTEXT KEY `texts` (`value`,`remark`),
  FULLTEXT KEY `remarkHR` (`remarkHR`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Personalfile VFB (analog Perslog)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `td_maint_rep`
--

DROP TABLE IF EXISTS `td_maint_rep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_maint_rep` (
  `idrpt` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sector` varchar(50) DEFAULT NULL,
  `object` varchar(50) DEFAULT NULL,
  `submitter` int(50) unsigned DEFAULT NULL,
  `reporter` int(10) unsigned DEFAULT NULL,
  `submitted` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `event` text DEFAULT NULL,
  `part` varchar(50) NOT NULL,
  `partspec` varchar(255) NOT NULL,
  `location` varchar(50) NOT NULL,
  `locspec` varchar(255) NOT NULL,
  `fault` text DEFAULT NULL,
  `faultspec` text DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `preadvice` varchar(100) DEFAULT NULL,
  `measure` text DEFAULT NULL,
  `allocated` int(10) unsigned DEFAULT NULL,
  `arranger` int(10) unsigned DEFAULT NULL,
  `tasktime` datetime DEFAULT NULL,
  `settling` text DEFAULT NULL,
  `hil` tinyint(4) NOT NULL DEFAULT 0,
  `settler` int(10) unsigned DEFAULT NULL,
  `closetime` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idrpt`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='Maintenance reports';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `td_par_employ`
--

DROP TABLE IF EXISTS `td_par_employ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_par_employ` (
  `contract` varchar(20) NOT NULL,
  `description` varchar(50) DEFAULT NULL,
  `lft` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `rgt` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `nsl` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `parent` varchar(20) DEFAULT NULL,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `header` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `active` varchar(3) DEFAULT NULL,
  `period` varchar(20) DEFAULT NULL,
  `short4` varchar(20) DEFAULT NULL,
  `core` varchar(20) DEFAULT NULL,
  `datprof` smallint(1) unsigned NOT NULL DEFAULT 0,
  `ever_active` varchar(3) DEFAULT NULL,
  `ticketed` varchar(3) DEFAULT NULL,
  `dfbcard` varchar(20) DEFAULT NULL,
  `bonuscard` varchar(20) DEFAULT 'no',
  `costs` varchar(20) DEFAULT NULL,
  `psel` varchar(3) DEFAULT NULL,
  `employment` varchar(20) DEFAULT NULL,
  `visibility` varchar(20) DEFAULT 'internal',
  `comment` text DEFAULT NULL,
  `cod_de` varchar(10) NOT NULL,
  PRIMARY KEY (`contract`),
  KEY `employment` (`employment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Zusatzdaten zu tb_context (dfb_roll)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `td_staff`
--

DROP TABLE IF EXISTS `td_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_staff` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `contract` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 5,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 5,
  PRIMARY KEY (`ident`,`validfrom`),
  KEY `validto` (`validto`),
  KEY `contract` (`contract`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='Personaldatei DFB AG';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `template_table`
--

DROP TABLE IF EXISTS `template_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_table` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL COMMENT 'Beschreibung',
  `validfrom` date NOT NULL DEFAULT '0000-00-00' COMMENT 'gültig von',
  `validto` date NOT NULL DEFAULT '9999-12-31' COMMENT 'gültig bis',
  `entered` datetime DEFAULT NULL COMMENT 'Erstellungszeitpunkt',
  `originator` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'erstellt durch',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Modifikationszeitpunkt',
  `modifier` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'modifiziert durch',
  PRIMARY KEY (`idx`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Grundgerüst einer typischen Tabelle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_nachweis`
--

DROP TABLE IF EXISTS `test_nachweis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_nachweis` (
  `id_org` int(11) NOT NULL,
  `context` varchar(50) CHARACTER SET utf8 NOT NULL,
  `funct` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'langer Kommentar',
  `ident` int(11) NOT NULL,
  `lft` int(10) unsigned NOT NULL DEFAULT 0,
  `educ` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Ausbildungsrolle',
  `idproof` int(10) unsigned NOT NULL DEFAULT 0,
  `idsk` int(10) unsigned NOT NULL DEFAULT 0,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tnum` tinyint(3) unsigned DEFAULT 0 COMMENT 'Nr der Detailaufgabe',
  `task` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Bezeichnung der Nachweisaufgaber',
  `log_cats` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'gemäss cat_perslog.idid',
  `idid` int(10) unsigned DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_param_bigen`
--

DROP TABLE IF EXISTS `test_param_bigen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_param_bigen` (
  `sector` varchar(20) NOT NULL,
  `parid` varchar(30) NOT NULL,
  `_parent` varchar(30) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `lft` smallint(6) NOT NULL DEFAULT 0,
  `rgt` smallint(6) NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `_sort` int(6) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`sector`,`parid`),
  KEY `parent` (`_parent`),
  KEY `parid` (`parid`),
  FULLTEXT KEY `tb_param` (`sector`,`parid`,`_parent`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Parameter (Oldie)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ti_import_axl`
--

DROP TABLE IF EXISTS `ti_import_axl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ti_import_axl` (
  `MITGLIEDERNR` int(10) unsigned NOT NULL,
  `ANREDE` varchar(50) DEFAULT NULL,
  `TITEL` varchar(50) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `VORNAME` varchar(100) DEFAULT NULL,
  `NAMEZUSATZ` varchar(100) DEFAULT NULL,
  `ADRESSE1` varchar(100) DEFAULT NULL,
  `ADRESSE2` varchar(100) DEFAULT NULL,
  `ADRESSE3` varchar(100) DEFAULT NULL,
  `ADRESSE4` varchar(100) DEFAULT NULL,
  `LAND` varchar(20) DEFAULT NULL,
  `PLZ` varchar(20) DEFAULT NULL,
  `ORT` varchar(80) DEFAULT NULL,
  `BRIEFANREDE` varchar(50) DEFAULT NULL,
  `EINTRITT` varchar(20) DEFAULT NULL,
  `AUSTRITT` varchar(20) DEFAULT NULL,
  `MITGLIEDERART` varchar(20) DEFAULT NULL,
  `SPRACHE` varchar(20) DEFAULT NULL,
  `GESCHLECHT` varchar(20) DEFAULT NULL,
  `TELEFON_P` varchar(50) DEFAULT NULL,
  `TELEFON_G` varchar(50) DEFAULT NULL,
  `MOBILE` varchar(50) DEFAULT NULL,
  `FAX` varchar(50) DEFAULT NULL,
  `EMAIL` varchar(100) DEFAULT NULL,
  `HOMEPAGE` varchar(100) DEFAULT NULL,
  `GEBURTSDATUM` varchar(20) DEFAULT NULL,
  `YN_OPTION1` varchar(20) DEFAULT NULL,
  `YN_OPTION2` varchar(20) DEFAULT NULL,
  `YN_OPTION3` varchar(20) DEFAULT NULL,
  `YN_OPTION4` varchar(20) DEFAULT NULL,
  `YN_OPTION5` varchar(20) DEFAULT NULL,
  `YN_OPTION6` varchar(20) DEFAULT NULL,
  `YN_OPTION7` varchar(20) DEFAULT NULL,
  `YN_OPTION8` varchar(20) DEFAULT NULL,
  `YN_OPTION9` varchar(20) DEFAULT NULL,
  `YN_OPTION10` varchar(20) DEFAULT NULL,
  `TEXT_OPTION1` varchar(100) DEFAULT NULL,
  `TEXT_OPTION2` varchar(100) DEFAULT NULL,
  `TEXT_OPTION3` varchar(100) DEFAULT NULL,
  `TEXT_OPTION4` varchar(100) DEFAULT NULL,
  `TEXT_OPTION5` varchar(100) DEFAULT NULL,
  `TEXT_OPTION6` varchar(100) DEFAULT NULL,
  `TEXT_OPTION7` varchar(100) DEFAULT NULL,
  `TEXT_OPTION8` varchar(100) DEFAULT NULL,
  `TEXT_OPTION9` varchar(100) DEFAULT NULL,
  `TEXT_OPTION10` varchar(100) DEFAULT NULL,
  `FUNKTION1` varchar(100) DEFAULT NULL,
  `FUNKTION2` varchar(50) DEFAULT NULL,
  `FUNKTION3` varchar(50) DEFAULT NULL,
  `FUNKTION4` varchar(50) DEFAULT NULL,
  `FUNKTION5` varchar(50) DEFAULT NULL,
  `FUNKTION6` varchar(50) DEFAULT NULL,
  `GEBUEHR1` varchar(50) DEFAULT NULL,
  `GEBUEHR2` varchar(50) DEFAULT NULL,
  `GEBUEHR3` varchar(50) DEFAULT NULL,
  `GEBUEHR4` varchar(50) DEFAULT NULL,
  `GEBUEHR5` varchar(50) DEFAULT NULL,
  `GEBUEHR6` varchar(50) DEFAULT NULL,
  `NOTIZEN` text DEFAULT NULL,
  `MUTATIONSBENUTZER` varchar(50) DEFAULT NULL,
  `MUTATIONSDATUM` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MITGLIEDERNR`),
  KEY `NAME` (`NAME`),
  KEY `VORNAME` (`VORNAME`),
  KEY `PLZ` (`PLZ`),
  KEY `ORT` (`ORT`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='VFB-AXL Kontaktdatenimportdatei';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ti_migration`
--

DROP TABLE IF EXISTS `ti_migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ti_migration` (
  `_auto_` int(11) NOT NULL AUTO_INCREMENT,
  `task` varchar(100) NOT NULL DEFAULT 'hr' COMMENT 'task identifier',
  `fldX` varchar(100) NOT NULL COMMENT 'name of external field',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'disregard',
  `type_val` varchar(30) NOT NULL COMMENT 'type of value',
  `enhance` text NOT NULL COMMENT 'functions to be performed on input data',
  `idkt` int(10) unsigned DEFAULT NULL COMMENT 'gem cat.perslog.idid (übersteuert kind,topic)',
  `kind` varchar(30) DEFAULT NULL,
  `topic` varchar(30) DEFAULT NULL,
  `selfreport` text NOT NULL,
  `tableP` varchar(30) NOT NULL,
  `def_val` text NOT NULL COMMENT 'default value',
  `fldP` varchar(100) NOT NULL COMMENT 'name of field in contacts db',
  `attrib1` varchar(30) DEFAULT NULL,
  `attrib2` varchar(30) DEFAULT NULL,
  `tables` varchar(30) NOT NULL COMMENT 'name of target table',
  PRIMARY KEY (`_auto_`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='Regeln für den Import von Daten aus andern Tabellen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tlog_interfacing`
--

DROP TABLE IF EXISTS `tlog_interfacing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tlog_interfacing` (
  `fe_need` varchar(50) DEFAULT NULL,
  `id_ref` int(10) unsigned NOT NULL DEFAULT 0,
  `assn_org` int(10) unsigned DEFAULT NULL,
  `id_org` int(10) unsigned DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `functs` text DEFAULT NULL,
  `id_grp` int(10) unsigned DEFAULT NULL,
  `sid` int(10) unsigned DEFAULT NULL,
  `fe_id` int(10) unsigned DEFAULT NULL,
  `display` varchar(50) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idid`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='SFB Logdatei';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tm_migration`
--

DROP TABLE IF EXISTS `tm_migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tm_migration` (
  `cid` int(11) DEFAULT NULL,
  `matchname` varchar(50) DEFAULT NULL,
  `meta_data` varchar(255) DEFAULT NULL,
  `adj_text` text DEFAULT NULL,
  `hint` varchar(255) DEFAULT NULL,
  `categ` varchar(20) NOT NULL,
  `seq` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`seq`),
  KEY `cid` (`cid`),
  FULLTEXT KEY `matchname` (`matchname`,`meta_data`)
) ENGINE=MyISAM AUTO_INCREMENT=205 DEFAULT CHARSET=utf8 COMMENT='Migrations-Metadaten (aus altem DFB-Webauftritt)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmp_docs_betrieb`
--

DROP TABLE IF EXISTS `tmp_docs_betrieb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_docs_betrieb` (
  `iddoc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `author` varchar(100) DEFAULT NULL,
  `id_ref` int(10) unsigned DEFAULT NULL,
  `org_respo` int(10) unsigned DEFAULT NULL,
  `category` varchar(250) DEFAULT NULL,
  `edition` varchar(50) DEFAULT NULL,
  `protection` varchar(20) DEFAULT 'internal',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 7978,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`iddoc`),
  KEY `title` (`title`),
  KEY `id_ref` (`id_ref`),
  KEY `org_respo` (`org_respo`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8 COMMENT='Metadatenstudie Dokumente Abt. Betrieb';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmp_household`
--

DROP TABLE IF EXISTS `tmp_household`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_household` (
  `household` int(10) unsigned NOT NULL COMMENT 'ID Haushalt',
  `member` int(10) unsigned NOT NULL COMMENT 'ID Mitglied',
  `validfrom` date NOT NULL DEFAULT '0000-00-00' COMMENT 'gültig von',
  `validto` date NOT NULL DEFAULT '9999-12-31' COMMENT 'gültig bis',
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `household` (`household`),
  KEY `member` (`member`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Grundgerüst einer typischen Tabelle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmp_perslog_extract`
--

DROP TABLE IF EXISTS `tmp_perslog_extract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_perslog_extract` (
  `idid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Tabellenschlüssel',
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'gem. tb_ident',
  `orgunit` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '9069' COMMENT 'Eintragende Organisation',
  `date_on` date DEFAULT NULL COMMENT 'Ereignisdatum',
  `date_off` date DEFAULT NULL COMMENT 'Ablaufdatum',
  `kind` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Eintragskategorie (topic.parent)',
  `idkt` int(10) unsigned DEFAULT NULL COMMENT 'entspricht cat_perslog.idid von topic',
  `topic` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Eintragsthema gem cat_perslog',
  `idsk` int(10) unsigned DEFAULT NULL COMMENT 'idsk aus tb_skills (kind, topic)',
  `skill` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'betroffene Zulassung',
  `idc` int(10) unsigned DEFAULT NULL COMMENT 'idc Kursnummer gem tb_course',
  `skills` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'relevante Zulassungen gem Kurs oder proof_crit',
  `sid` int(10) unsigned DEFAULT NULL COMMENT 'Key des relevanten Vertragssubsets',
  `result` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Bewertung',
  `value` text CHARACTER SET utf8 DEFAULT NULL COMMENT 'Bewertungsergebnis',
  `remark` text CHARACTER SET utf8 DEFAULT NULL COMMENT 'Freie Anmerkungen Fachdienst',
  `remarkHR` text CHARACTER SET utf8 DEFAULT NULL COMMENT 'Freier Kommentar Personaldienst',
  `docid` int(10) unsigned DEFAULT NULL COMMENT 'Dokumentenreferenz',
  `norm` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'angewandte Norm zum Ablaufdatum',
  `sysmsg` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'autom. generierte Bemerkung',
  `inactive` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'inaktiv ?',
  `appl` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'eintragende Anwendung',
  `method` varchar(20) CHARACTER SET utf8 DEFAULT 'manual' COMMENT 'Eintragungsmethode',
  `locked` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'gesperrrter Eintrag',
  `hidden` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'versteckter Eintrag',
  `entered` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Datum des Eintrages',
  `oadmin` int(10) unsigned DEFAULT NULL COMMENT 'Ersteintrager',
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'letztes Modifizierungsdatum',
  `admin` int(10) unsigned DEFAULT NULL COMMENT 'Modifizierende Person, gem tb_ident'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmp_siwa`
--

DROP TABLE IF EXISTS `tmp_siwa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_siwa` (
  `matchcode` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `ident` int(11) NOT NULL DEFAULT 0,
  `value` varchar(900) CHARACTER SET utf8 DEFAULT NULL,
  `attrib1` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `attrib2` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Sicherheitswärterausbildung (temp, Oldie)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tp_short4`
--

DROP TABLE IF EXISTS `tp_short4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_short4` (
  `ident` int(11) NOT NULL,
  `shortcode` varchar(4) NOT NULL,
  PRIMARY KEY (`ident`),
  UNIQUE KEY `shortcode` (`shortcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='dfb-Kürzel';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trsflok`
--

DROP TABLE IF EXISTS `trsflok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trsflok` (
  `sector` varchar(20) NOT NULL,
  `parid` varchar(30) NOT NULL,
  `parent` varchar(30) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `lft` smallint(6) NOT NULL DEFAULT 0,
  `rgt` smallint(6) NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `sort` int(6) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(11) DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Rollmaterialliste (Oldie ?)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_donation`
--

DROP TABLE IF EXISTS `ts_donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_donation` (
  `idpaymt` int(10) unsigned NOT NULL,
  `idcorr` smallint(6) unsigned NOT NULL DEFAULT 0,
  `accountid` varchar(10) DEFAULT NULL,
  `valuta` date DEFAULT NULL,
  `paycur` varchar(3) DEFAULT NULL,
  `paysum` decimal(12,2) DEFAULT NULL,
  `sentby` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` varchar(1) DEFAULT NULL,
  `onbehalf` int(10) unsigned DEFAULT NULL,
  `onbehalf_purp` varchar(50) DEFAULT 'home',
  `campaignid` int(10) unsigned DEFAULT NULL,
  `paymessage` text DEFAULT NULL,
  `regi_method` varchar(10) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `purpose` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `exline` varchar(6) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `completed` datetime DEFAULT NULL,
  `bookkeeper` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpaymt`,`idcorr`),
  KEY `onbehalf` (`onbehalf`),
  KEY `purpose` (`purpose`),
  KEY `campaignid` (`campaignid`),
  KEY `valuta` (`valuta`),
  KEY `idpaymt` (`idpaymt`),
  KEY `idcorr` (`idcorr`),
  KEY `sentby` (`sentby`),
  KEY `paysum` (`paysum`),
  KEY `regi_method` (`regi_method`)
) ENGINE=MyISAM AUTO_INCREMENT=6226 DEFAULT CHARSET=utf8 COMMENT='SFB Spenden-Snapshot Feb 2011 (OLDIE)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_donation_snap`
--

DROP TABLE IF EXISTS `ts_donation_snap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_donation_snap` (
  `idpaymt` int(10) unsigned NOT NULL,
  `idcorr` smallint(6) unsigned NOT NULL DEFAULT 0,
  `accountid` varchar(10) DEFAULT NULL,
  `valuta` date DEFAULT NULL,
  `paycur` varchar(3) DEFAULT NULL,
  `paysum` decimal(12,2) DEFAULT NULL,
  `localcur` varchar(3) DEFAULT NULL,
  `localsum` decimal(12,2) NOT NULL DEFAULT 0.00,
  `sentby` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` varchar(1) DEFAULT NULL,
  `onbehalf` int(10) unsigned DEFAULT NULL,
  `onbehalf_purp` varchar(50) DEFAULT 'home',
  `campaignid` int(10) unsigned DEFAULT NULL,
  `paymessage` text DEFAULT NULL,
  `regi_method` varchar(10) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `paypurpose` varchar(10) DEFAULT NULL,
  `purpose` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `exline` varchar(6) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `completed` datetime DEFAULT NULL,
  `bookkeeper` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpaymt`,`idcorr`),
  KEY `onbehalf` (`onbehalf`),
  KEY `purpose` (`purpose`),
  KEY `campaignid` (`campaignid`),
  KEY `valuta` (`valuta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SFB Spenden (OLDIE)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_donators`
--

DROP TABLE IF EXISTS `ts_donators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_donators` (
  `id_org` int(11) DEFAULT NULL,
  `context` varchar(20) DEFAULT NULL,
  `funct` varchar(20) DEFAULT NULL,
  `id_user` int(10) unsigned DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `visib` varchar(20) NOT NULL DEFAULT 'internal',
  `entered` datetime NOT NULL DEFAULT '2010-11-15 00:00:00',
  `originator` int(11) NOT NULL DEFAULT 5,
  `modified` datetime NOT NULL DEFAULT '2010-11-15 00:00:00',
  `modifier` int(11) NOT NULL DEFAULT 5
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SFB Spenderliste dublettenbereinigt (OLDIE)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_hh_conflicts`
--

DROP TABLE IF EXISTS `ts_hh_conflicts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_hh_conflicts` (
  `hhold` int(11) NOT NULL,
  `hname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `hkind` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT 'contact' COMMENT 'Anrede, resp. Organisationskategorie',
  `partn` int(11) NOT NULL,
  `pname` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `kind` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT 'contact' COMMENT 'Anrede, resp. Organisationskategorie',
  `hto` date NOT NULL DEFAULT '9999-12-31',
  `rip` text CHARACTER SET utf8 NOT NULL,
  `treg` varchar(10) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `ttag` varchar(10) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `hfrom` date NOT NULL DEFAULT '0000-00-00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_log`
--

DROP TABLE IF EXISTS `ts_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_log` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `ident` int(10) unsigned NOT NULL DEFAULT 0,
  `valuta` date DEFAULT NULL,
  `event` varchar(50) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `idadm` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idid`),
  KEY `ident` (`ident`),
  KEY `valuta` (`valuta`),
  KEY `event` (`event`),
  KEY `result` (`result`),
  KEY `ref` (`ref`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COMMENT='SFB Logdatei';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_param`
--

DROP TABLE IF EXISTS `ts_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_param` (
  `set` varchar(20) NOT NULL DEFAULT '',
  `parid` varchar(30) NOT NULL DEFAULT '',
  `value` varchar(256) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `lft` int(11) unsigned DEFAULT NULL,
  `rgt` int(11) unsigned DEFAULT NULL,
  `parent` varchar(30) DEFAULT NULL,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`set`,`parid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SFB Parametertabelle (OLDIE)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_urkunden1`
--

DROP TABLE IF EXISTS `ts_urkunden1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_urkunden1` (
  `ident` int(10) unsigned NOT NULL,
  `validid` int(10) unsigned DEFAULT NULL,
  `namehint1` varchar(50) DEFAULT NULL,
  `namehint2` varchar(50) DEFAULT NULL,
  `sujet` varchar(20) NOT NULL,
  `result` varchar(250) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `adr1` varchar(200) DEFAULT NULL,
  `adr2` varchar(200) DEFAULT NULL,
  `adr3` varchar(200) DEFAULT NULL,
  `adr4` varchar(200) NOT NULL,
  `tel` varchar(100) DEFAULT NULL,
  `entered` date DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='SFB Urkundenempfänger 1-11';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tt_baumember`
--

DROP TABLE IF EXISTS `tt_baumember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_baumember` (
  `ident` int(11) NOT NULL,
  `context` varchar(20) DEFAULT NULL,
  `member` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='temp. Baumembership';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tt_seq`
--

DROP TABLE IF EXISTS `tt_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_seq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=367 DEFAULT CHARSET=utf8 COMMENT='Hilfstabelle mit 366 sequentiellen Zahlen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `userroleperm`
--

DROP TABLE IF EXISTS `userroleperm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userroleperm` (
  `accounting` smallint(6) DEFAULT 0,
  `role` varchar(50) NOT NULL,
  `admin` smallint(6) DEFAULT 0,
  `agenda` smallint(6) DEFAULT 0,
  `contact` smallint(6) DEFAULT 0,
  `contactall` smallint(6) DEFAULT 0,
  `contactexport` smallint(6) DEFAULT 0,
  `contactlog` smallint(6) DEFAULT 0,
  `contactshort` smallint(6) DEFAULT 0,
  `documents` smallint(6) DEFAULT 0,
  `dossier` smallint(6) DEFAULT 0,
  `financialdata` smallint(6) DEFAULT 0,
  `inventory` smallint(6) DEFAULT 0,
  `massmail` smallint(6) DEFAULT 0,
  `media` smallint(6) DEFAULT 0,
  `mydesktop` smallint(6) DEFAULT 0,
  `operations` smallint(6) DEFAULT 0,
  `organize` smallint(6) DEFAULT 0,
  `public` smallint(6) DEFAULT 0,
  `reporting` smallint(6) DEFAULT 0,
  `schedule` smallint(6) DEFAULT 0,
  `system` smallint(6) DEFAULT 0,
  `tickets` smallint(6) DEFAULT 0,
  `useraccess` smallint(6) DEFAULT 0,
  `NIXisNIX` smallint(6) DEFAULT 0,
  `comment` text DEFAULT NULL,
  PRIMARY KEY (`role`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Standardberechtigungen für verschiedene Rollen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wf_email`
--

DROP TABLE IF EXISTS `wf_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wf_email` (
  `taskid` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) DEFAULT NULL,
  `fieldname` varchar(100) DEFAULT NULL,
  `tablename` varchar(100) DEFAULT NULL,
  `pageid` int(11) DEFAULT NULL,
  `oldvalue` text DEFAULT NULL,
  `newvalue` text DEFAULT NULL,
  `eventdate` datetime DEFAULT NULL,
  `completed` datetime DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`taskid`)
) ENGINE=MyISAM AUTO_INCREMENT=5067 DEFAULT CHARSET=utf8 COMMENT='Workflow: E-Mail log';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_tb_ident`
--

DROP TABLE IF EXISTS `x_tb_ident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_tb_ident` (
  `ident` int(11) NOT NULL AUTO_INCREMENT,
  `kind` varchar(15) NOT NULL DEFAULT 'contact',
  `idsupra` int(11) DEFAULT NULL,
  `idinfra` int(11) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`ident`),
  FULLTEXT KEY `tb_ident` (`kind`)
) ENGINE=MyISAM AUTO_INCREMENT=7001 DEFAULT CHARSET=utf8 COMMENT='Root';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `z_forms`
--

DROP TABLE IF EXISTS `z_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `z_forms` (
  `form` varchar(50) NOT NULL DEFAULT '',
  `criteria` text DEFAULT NULL,
  `success` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `orgunit` varchar(50) DEFAULT '0',
  `maintable` varchar(50) DEFAULT NULL,
  `active` tinyint(3) unsigned DEFAULT 0,
  `seq` tinyint(4) DEFAULT 10,
  PRIMARY KEY (`form`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='zone table of posible forms';
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
