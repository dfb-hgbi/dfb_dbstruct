-- MySQL dump 10.19  Distrib 10.3.29-MariaDB, for FreeBSD12.2 (amd64)
--
-- Host: localhost    Database: dfbch1_Itick
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
-- Table structure for table `_flexu_sys_dochead`
--

DROP TABLE IF EXISTS `_flexu_sys_dochead`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_flexu_sys_dochead` (
  `filename` varchar(200) NOT NULL,
  `orgunit` varchar(50) NOT NULL,
  `lang` varchar(50) NOT NULL DEFAULT 'de',
  `master` varchar(50) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `descr` longtext DEFAULT NULL,
  `cat` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `pwprotect` varchar(50) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `accessed` timestamp NOT NULL DEFAULT current_timestamp(),
  `num` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `permission` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`filename`,`orgunit`,`lang`),
  FULLTEXT KEY `dochead` (`filename`,`orgunit`,`author`,`title`,`descr`,`cat`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='file&amp;#039;s meta data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_schedule_`
--

DROP TABLE IF EXISTS `_schedule_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_schedule_` (
  `id_ref` int(11) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `start_unit` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `start_hide` tinyint(4) DEFAULT NULL,
  `stopp_time` datetime DEFAULT NULL,
  `stopp_unit` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `stopp_hide` tinyint(4) DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `topic` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pre_night` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `meals` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `remark` text CHARACTER SET utf8 DEFAULT NULL,
  `weblink` varchar(500) CHARACTER SET utf8 DEFAULT NULL,
  `id_mail` int(11) DEFAULT NULL,
  `visibility` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `validfrom` datetime DEFAULT NULL,
  `validto` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='TESTDATEI';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basket_kredifakt`
--

DROP TABLE IF EXISTS `basket_kredifakt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basket_kredifakt` (
  `trafo` int(10) unsigned NOT NULL,
  `vendor` int(10) unsigned DEFAULT NULL,
  `vendorname` varchar(100) DEFAULT NULL,
  `vendorsearch` int(10) unsigned DEFAULT NULL,
  `invnum` varchar(20) DEFAULT NULL,
  `invdate` date DEFAULT NULL,
  `idateloc` varchar(10) DEFAULT NULL,
  `invcur` varchar(3) NOT NULL DEFAULT 'CHF',
  `invsum` decimal(12,2) DEFAULT NULL,
  `buyersh4` varchar(4) DEFAULT NULL,
  `buyer` int(10) unsigned DEFAULT NULL,
  `buyername` varchar(100) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `conclusion` text DEFAULT NULL,
  `entered` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`trafo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Durchgangsdatei Rechnungserfassung';
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
  `ex_basket` text DEFAULT NULL,
  `formextra` varchar(100) DEFAULT NULL,
  `forms` varchar(50) DEFAULT NULL,
  `btnnames` varchar(300) DEFAULT NULL,
  `action` varchar(250) DEFAULT NULL,
  `parm1` text DEFAULT NULL,
  `parm2` text DEFAULT NULL,
  `wfm` varchar(250) DEFAULT NULL,
  `show` varchar(250) DEFAULT NULL,
  `hide` varchar(250) DEFAULT NULL,
  `nullify` text DEFAULT NULL,
  `enhance` text DEFAULT NULL,
  `aftpost` text DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`taskid`,`step`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='process definition sets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dialogues`
--

DROP TABLE IF EXISTS `dialogues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dialogues` (
  `taskid` varchar(20) NOT NULL,
  `step` smallint(6) NOT NULL,
  `stepname` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `db` varchar(50) DEFAULT NULL,
  `table` varchar(100) DEFAULT NULL,
  `ex_basket` text DEFAULT NULL,
  `formextra` varchar(100) DEFAULT NULL,
  `forms` varchar(50) DEFAULT NULL,
  `btnnames` varchar(300) DEFAULT NULL,
  `jobticket` varchar(50) DEFAULT NULL,
  `prereq` text DEFAULT NULL,
  `hide` varchar(100) DEFAULT NULL,
  `enhance` text DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`taskid`,`step`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='process definition sets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `helpdeskTicket`
--

DROP TABLE IF EXISTS `helpdeskTicket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `helpdeskTicket` (
  `ticket_nr` int(11) NOT NULL AUTO_INCREMENT,
  `entered` date DEFAULT NULL,
  `closed` date DEFAULT NULL,
  `status` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageId` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `anrufen` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `thema` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `descr` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `solution_descr` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Lösungsbeschreibung',
  `filename` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `file` longblob DEFAULT NULL,
  `prmOptions` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `assignedTo` int(11) DEFAULT 0,
  `originator` int(11) DEFAULT 0,
  `modifier` int(11) DEFAULT 0,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ticket_nr`)
) ENGINE=InnoDB AUTO_INCREMENT=434 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_reclist`
--

DROP TABLE IF EXISTS `t_reclist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_reclist` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `max_responsetime` varchar(10) DEFAULT NULL,
  `descr` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ident`,`descr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='ticket reveiver list';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_agenda`
--

DROP TABLE IF EXISTS `tb_agenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_agenda` (
  `id_date` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Auto Key',
  `id_ref` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Besitzender Kontakt',
  `topic` text DEFAULT NULL COMMENT 'Haupteintrag, Thema',
  `teaser` varchar(30) DEFAULT NULL COMMENT 'Nebeneintrag',
  `start_time` datetime DEFAULT NULL COMMENT 'Zeitpunkt Beginn',
  `start_unit` varchar(10) NOT NULL DEFAULT 'c3D' COMMENT 'Anzeigeinheit Beginn',
  `start_hide` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Beginnanzeige unterdrücken',
  `remark` text DEFAULT NULL COMMENT 'Erläuterung zum Thema',
  `stopp_time` datetime DEFAULT NULL COMMENT 'Zeitpunkt Ende',
  `stopp_unit` varchar(10) DEFAULT 'c3D' COMMENT 'Anzeigeeinheit Ende',
  `stopp_hide` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Ende-Anzeige unterdrücken',
  `status` varchar(20) NOT NULL COMMENT 'Status des Eintrages',
  `weblink` varchar(500) DEFAULT NULL COMMENT 'Webadresse',
  `id_mail` int(11) DEFAULT NULL COMMENT 'Ident DFB-Referenzperson (Mail)',
  `cat` text DEFAULT NULL COMMENT 'Webthema-Kategorie',
  `visibility` varchar(20) NOT NULL DEFAULT 'internal' COMMENT '(Web)-Vertraulichkeitsstufe',
  `homepage` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT 'Webanzeige in dfb.ch',
  `hp_released` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT 'Webfreigabe durch Moderator',
  `hprel_by` int(10) unsigned DEFAULT NULL COMMENT 'Webfreigabe durch Ident',
  `validfrom` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Anzeigebeginn',
  `validto` datetime NOT NULL DEFAULT '9999-12-31 00:00:00' COMMENT 'Anzeige-Endzeitpunkt',
  `shortvisib` tinyint(1) DEFAULT NULL COMMENT '??',
  `entered` datetime DEFAULT current_timestamp() COMMENT 'Erfassungsdatum',
  `originator` int(10) unsigned DEFAULT 1 COMMENT 'Erfasser',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Modifikationsdatum',
  `modifier` int(10) unsigned DEFAULT 1 COMMENT 'Modifikator',
  `archived` datetime DEFAULT NULL COMMENT 'Archivdatum',
  `archivist` int(10) unsigned DEFAULT NULL COMMENT 'Archivar',
  `pivot` text DEFAULT NULL COMMENT '??',
  `key_parent` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Ablauf: Start-ID',
  `sequ` int(10) unsigned DEFAULT NULL COMMENT 'Ablauf: Folge-Nr',
  `start_place` varchar(20) DEFAULT NULL COMMENT 'Ablauf: Ausgangsort',
  `mins` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Ablauf: Sequenz-Dauer',
  `stopp_place` varchar(20) DEFAULT NULL COMMENT 'Ablauf: Ort am Ende',
  `moderator` varchar(20) NOT NULL COMMENT 'Ablauf: Ref-Org oder -Mgr',
  `task` varchar(20) DEFAULT NULL COMMENT 'Ablauf: Sequenz-Aufgabe',
  `relevance` varchar(4) DEFAULT NULL COMMENT 'Ablauf: Sequenz-Relevanz',
  `highlight` varchar(45) DEFAULT NULL COMMENT 'spezielle Auszeichnung\n',
  PRIMARY KEY (`id_date`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `start_time` (`start_time`),
  KEY `stopp_time` (`stopp_time`),
  KEY `id_ref` (`id_ref`),
  FULLTEXT KEY `topic` (`topic`),
  FULLTEXT KEY `cat` (`cat`)
) ENGINE=MyISAM AUTO_INCREMENT=2766 DEFAULT CHARSET=utf8 COMMENT='Webagenda';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_agendaExt`
--

DROP TABLE IF EXISTS `tb_agendaExt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_agendaExt` (
  `id_date` int(11) NOT NULL DEFAULT 0,
  `topic` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `teaser` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weblink` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'de',
  `request_transl` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_date`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_agenda__arc`
--

DROP TABLE IF EXISTS `tb_agenda__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_agenda__arc` (
  `id_date` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_ref` int(10) unsigned NOT NULL DEFAULT 0,
  `topic` varchar(255) DEFAULT NULL,
  `teaser` varchar(30) DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `start_unit` varchar(10) NOT NULL DEFAULT 'c3D',
  `start_hide` tinyint(1) NOT NULL DEFAULT 0,
  `remark` text DEFAULT NULL,
  `stopp_time` datetime DEFAULT NULL,
  `stopp_unit` varchar(10) DEFAULT 'c3D',
  `stopp_hide` tinyint(1) NOT NULL DEFAULT 1,
  `status` varchar(20) NOT NULL,
  `weblink` varchar(500) DEFAULT NULL,
  `id_mail` int(11) DEFAULT NULL,
  `cat` text DEFAULT NULL,
  `visibility` varchar(20) NOT NULL DEFAULT 'internal',
  `homepage` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `hp_released` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `hprel_by` int(10) unsigned DEFAULT NULL,
  `validfrom` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `validto` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `shortvisib` tinyint(1) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(10) unsigned DEFAULT 1,
  `archived` datetime DEFAULT NULL,
  `archivist` int(10) unsigned DEFAULT NULL,
  `pivot` text DEFAULT NULL,
  `key_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `sequ` int(10) unsigned DEFAULT NULL,
  `start_place` varchar(20) DEFAULT NULL,
  `mins` int(10) unsigned NOT NULL DEFAULT 0,
  `stopp_place` varchar(20) DEFAULT NULL,
  `moderator` varchar(20) NOT NULL,
  `task` varchar(20) DEFAULT NULL,
  `relevance` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`id_date`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `start_time` (`start_time`),
  KEY `stopp_time` (`stopp_time`),
  KEY `id_ref` (`id_ref`),
  FULLTEXT KEY `topic` (`topic`),
  FULLTEXT KEY `cat` (`cat`)
) ENGINE=MyISAM AUTO_INCREMENT=2161 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Archiv der Webagenda';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_agenda__gletsch10`
--

DROP TABLE IF EXISTS `tb_agenda__gletsch10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_agenda__gletsch10` (
  `id_date` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Auto Key',
  `id_ref` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Besitzender Kontakt',
  `topic` text DEFAULT NULL COMMENT 'Haupteintrag, Thema',
  `teaser` varchar(30) DEFAULT NULL COMMENT 'Nebeneintrag',
  `start_time` datetime DEFAULT NULL COMMENT 'Zeitpunkt Beginn',
  `start_unit` varchar(10) NOT NULL DEFAULT 'c3D' COMMENT 'Anzeigeinheit Beginn',
  `start_hide` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'Beginnanzeige unterdrücken',
  `remark` text DEFAULT NULL COMMENT 'Erläuterung zum Thema',
  `stopp_time` datetime DEFAULT NULL COMMENT 'Zeitpunkt Ende',
  `stopp_unit` varchar(10) DEFAULT 'c3D' COMMENT 'Anzeigeeinheit Ende',
  `stopp_hide` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'Ende-Anzeige unterdrücken',
  `status` varchar(20) NOT NULL COMMENT 'Status des Eintrages',
  `weblink` varchar(500) DEFAULT NULL COMMENT 'Webadresse',
  `id_mail` int(11) DEFAULT NULL COMMENT 'Ident DFB-Referenzperson (Mail)',
  `cat` text DEFAULT NULL COMMENT 'Webthema-Kategorie',
  `visibility` varchar(20) NOT NULL DEFAULT 'internal' COMMENT '(Web)-Vertraulichkeitsstufe',
  `homepage` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT 'Webanzeige in dfb.ch',
  `hp_released` tinyint(1) unsigned NOT NULL DEFAULT 0 COMMENT 'Webfreigabe durch Moderator',
  `hprel_by` int(10) unsigned DEFAULT NULL COMMENT 'Webfreigabe durch Ident',
  `validfrom` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Anzeigebeginn',
  `validto` datetime NOT NULL DEFAULT '9999-12-31 00:00:00' COMMENT 'Anzeige-Endzeitpunkt',
  `shortvisib` tinyint(1) DEFAULT NULL COMMENT '??',
  `entered` datetime DEFAULT NULL COMMENT 'Erfassungsdatum',
  `originator` int(10) unsigned DEFAULT 1 COMMENT 'Erfasser',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Modifikationsdatum',
  `modifier` int(10) unsigned DEFAULT 1 COMMENT 'Modifikator',
  `archived` datetime DEFAULT NULL COMMENT 'Archivdatum',
  `archivist` int(10) unsigned DEFAULT NULL COMMENT 'Archivar',
  `pivot` text DEFAULT NULL COMMENT '??',
  `key_parent` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Ablauf: Start-ID',
  `sequ` int(10) unsigned DEFAULT NULL COMMENT 'Ablauf: Folge-Nr',
  `start_place` varchar(20) DEFAULT NULL COMMENT 'Ablauf: Ausgangsort',
  `mins` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Ablauf: Sequenz-Dauer',
  `stopp_place` varchar(20) DEFAULT NULL COMMENT 'Ablauf: Ort am Ende',
  `moderator` varchar(20) NOT NULL COMMENT 'Ablauf: Ref-Org oder -Mgr',
  `task` varchar(20) DEFAULT NULL COMMENT 'Ablauf: Sequenz-Aufgabe',
  `relevance` varchar(4) DEFAULT NULL COMMENT 'Ablauf: Sequenz-Relevanz',
  PRIMARY KEY (`id_date`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `start_time` (`start_time`),
  KEY `stopp_time` (`stopp_time`),
  KEY `id_ref` (`id_ref`),
  FULLTEXT KEY `topic` (`topic`),
  FULLTEXT KEY `cat` (`cat`)
) ENGINE=MyISAM AUTO_INCREMENT=2321 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Webagenda';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_agenda__keep26`
--

DROP TABLE IF EXISTS `tb_agenda__keep26`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_agenda__keep26` (
  `id_date` int(11) NOT NULL AUTO_INCREMENT,
  `key_parent` int(10) unsigned NOT NULL DEFAULT 0,
  `sequ` int(10) unsigned DEFAULT NULL,
  `id_ref` int(11) NOT NULL DEFAULT 0,
  `moderator` varchar(20) NOT NULL,
  `task` varchar(20) DEFAULT NULL,
  `relevance` varchar(4) DEFAULT NULL,
  `start_place` varchar(20) DEFAULT NULL,
  `start` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_unit` varchar(10) NOT NULL DEFAULT 'c3D',
  `mins` int(10) unsigned NOT NULL DEFAULT 0,
  `stopp_place` varchar(20) DEFAULT NULL,
  `stopp` datetime DEFAULT NULL,
  `stopp_unit` varchar(10) DEFAULT 'hidden',
  `status` varchar(20) NOT NULL,
  `topic` varchar(255) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `weblink` varchar(255) DEFAULT NULL,
  `id_mail` int(11) DEFAULT NULL,
  `validfrom` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `validto` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`id_date`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  FULLTEXT KEY `topic` (`topic`)
) ENGINE=MyISAM AUTO_INCREMENT=522 DEFAULT CHARSET=utf8 COMMENT='Webagenda';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_agenda_holder`
--

DROP TABLE IF EXISTS `tb_agenda_holder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_agenda_holder` (
  `id_ref` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'gem dfb_contacts.tb_ident',
  `supra` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Hauptorganisation',
  `holder` varchar(200) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT 'Halterorganisation der Agenda',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'ausblenden',
  `closed` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'nicht mehr benötigt',
  `deleted` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'gelöscht'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_duty_route__2010`
--

DROP TABLE IF EXISTS `tb_duty_route__2010`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_duty_route__2010` (
  `qprofile` varchar(20) DEFAULT 'fd_',
  `tourname` varchar(10) NOT NULL,
  `sortname` varchar(10) DEFAULT NULL,
  `start` varchar(5) DEFAULT '08:00',
  `route` varchar(50) DEFAULT '',
  `stopp` varchar(5) DEFAULT '17:00',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `comment` text DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`tourname`,`validto`),
  FULLTEXT KEY `route` (`route`,`comment`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Fahr-Dienste';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_event10`
--

DROP TABLE IF EXISTS `tb_event10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_event10` (
  `id_dat` int(11) NOT NULL AUTO_INCREMENT,
  `id_ref` int(11) NOT NULL DEFAULT 0,
  `start_place` varchar(20) DEFAULT NULL,
  `start` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_unit` varchar(10) NOT NULL DEFAULT '',
  `topic` varchar(255) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `coretask` tinyint(4) NOT NULL DEFAULT 0,
  `stopp_place` varchar(20) DEFAULT NULL,
  `stopp` datetime DEFAULT NULL,
  `stopp_unit` varchar(10) DEFAULT NULL,
  `key_parent` int(11) unsigned NOT NULL DEFAULT 0,
  `sequ` int(11) unsigned DEFAULT NULL,
  `mins` int(11) unsigned NOT NULL DEFAULT 0,
  `status` varchar(20) NOT NULL DEFAULT '',
  `validfrom` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `validto` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `task` varchar(20) DEFAULT NULL,
  `moderator` varchar(20) NOT NULL DEFAULT '',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_dat`)
) ENGINE=MyISAM AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_listing`
--

DROP TABLE IF EXISTS `tb_listing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_listing` (
  `id_list` varchar(50) NOT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned DEFAULT NULL,
  `collabel` varchar(50) DEFAULT NULL,
  `isfield` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `field_content` varchar(256) DEFAULT NULL,
  `repeat` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `css_tag` varchar(50) DEFAULT NULL,
  `incase` text DEFAULT NULL,
  `altn_css` varchar(50) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`id_list`,`lft`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Listendefinitionen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_req_staff__2010`
--

DROP TABLE IF EXISTS `tb_req_staff__2010`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_req_staff__2010` (
  `idtask` int(11) NOT NULL AUTO_INCREMENT,
  `pday` date NOT NULL,
  `qualip` varchar(15) NOT NULL DEFAULT '',
  `tour` varchar(15) NOT NULL DEFAULT '',
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `tholder` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`idtask`),
  KEY `pday` (`pday`),
  KEY `qualip` (`qualip`),
  KEY `tour` (`tour`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COMMENT='Personalanforderung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_todo`
--

DROP TABLE IF EXISTS `tb_todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_todo` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` int(10) unsigned DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `rev_date` date DEFAULT NULL,
  `entered` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `completed` date DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COMMENT='Offene Aufgaben';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tb_todo_test`
--

DROP TABLE IF EXISTS `tb_todo_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_todo_test` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `owner` int(10) unsigned DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `rev_date` date DEFAULT NULL,
  `entered` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `completed` date DEFAULT NULL,
  PRIMARY KEY (`idid`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COMMENT='Offene Aufgaben';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `te_duty_route`
--

DROP TABLE IF EXISTS `te_duty_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `te_duty_route` (
  `sorttour` varchar(20) NOT NULL,
  `tour` varchar(10) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `qprofile` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `start` varchar(5) DEFAULT NULL,
  `route` varchar(50) DEFAULT NULL,
  `stopp` varchar(5) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`sorttour`,`validto`),
  FULLTEXT KEY `description` (`description`,`route`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Fahr-Dienste';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `te_schedule`
--

DROP TABLE IF EXISTS `te_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `te_schedule` (
  `pday` date NOT NULL,
  `sorttour` varchar(20) NOT NULL,
  `tholder` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`pday`,`sorttour`),
  KEY `tholder` (`tholder`),
  KEY `sorttour` (`sorttour`)
) ENGINE=MyISAM AUTO_INCREMENT=276 DEFAULT CHARSET=utf8 COMMENT='Personalanforderung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ticketlist`
--

DROP TABLE IF EXISTS `ticketlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ticketlist` (
  `ticid` int(11) NOT NULL AUTO_INCREMENT,
  `receiver` varchar(100) DEFAULT NULL,
  `ticcat` varchar(20) NOT NULL,
  `ticconcern` varchar(20) DEFAULT NULL,
  `ticprio` varchar(20) NOT NULL,
  `ticstatus` varchar(20) NOT NULL,
  `ticshowup` varchar(20) NOT NULL,
  `assigned` varchar(100) DEFAULT NULL,
  `timefrom` int(11) DEFAULT NULL,
  `timeto` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `answer` text NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `entered` datetime NOT NULL,
  `originator` int(11) NOT NULL,
  PRIMARY KEY (`ticid`),
  KEY `receiver` (`receiver`),
  KEY `timefrom` (`timefrom`),
  KEY `timeto` (`timeto`),
  KEY `ticcat` (`ticcat`),
  KEY `ticprio` (`ticprio`),
  KEY `ticconcern` (`ticconcern`),
  KEY `ticstatus` (`ticstatus`),
  KEY `ticshowup` (`ticshowup`),
  FULLTEXT KEY `tickelist` (`receiver`,`title`,`description`)
) ENGINE=MyISAM AUTO_INCREMENT=1546 DEFAULT CHARSET=utf8 COMMENT='List of Ticket-Messages, which can be allocated to receivers';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tickets` (
  `ident` int(11) NOT NULL,
  `ticid` int(11) NOT NULL,
  `lastseen` int(11) DEFAULT NULL,
  `ticshowup` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ident`,`ticid`),
  KEY `lastseen` (`lastseen`),
  KEY `showup` (`ticshowup`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Every ident can have several tickets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tt_job_log`
--

DROP TABLE IF EXISTS `tt_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_job_log` (
  `idlog` int(11) NOT NULL,
  `job` varchar(30) NOT NULL,
  `by` int(10) unsigned NOT NULL DEFAULT 0,
  `keys` varchar(100) NOT NULL DEFAULT '',
  `param` varchar(255) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'setup',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`idlog`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Open Job Tickets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tt_openjob`
--

DROP TABLE IF EXISTS `tt_openjob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_openjob` (
  `job` varchar(30) NOT NULL,
  `by` int(10) unsigned NOT NULL DEFAULT 0,
  `keys` varchar(100) NOT NULL DEFAULT '',
  `val1` varchar(100) DEFAULT NULL,
  `val2` varchar(100) DEFAULT NULL,
  `val3` varchar(100) DEFAULT NULL,
  `val4` varchar(100) DEFAULT NULL,
  `val5` varchar(100) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'setup',
  `opened` timestamp NOT NULL DEFAULT current_timestamp(),
  `closed` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `updated` datetime DEFAULT NULL,
  `done_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`job`,`by`,`keys`),
  FULLTEXT KEY `keys` (`keys`,`val1`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Log of events completed';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tt_param`
--

DROP TABLE IF EXISTS `tt_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_param` (
  `sector` varchar(20) NOT NULL,
  `parid` varchar(30) NOT NULL,
  `lft` int(11) DEFAULT 0,
  `rgt` int(11) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `hide` tinyint(4) NOT NULL DEFAULT 0,
  `value` varchar(256) DEFAULT NULL,
  `parent` varchar(30) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`sector`,`parid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Parameter Tickets';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wfm_open`
--

DROP TABLE IF EXISTS `wfm_open`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wfm_open` (
  `wflow` varchar(50) NOT NULL,
  `wfid` varchar(50) NOT NULL DEFAULT '0',
  `node` varchar(100) NOT NULL,
  `val1` varchar(100) DEFAULT NULL,
  `val2` varchar(100) DEFAULT NULL,
  `val3` varchar(100) DEFAULT NULL,
  `val4` varchar(100) DEFAULT NULL,
  `val5` varchar(100) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'setup',
  `opened` timestamp NOT NULL DEFAULT current_timestamp(),
  `closed` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `updated` datetime DEFAULT NULL,
  `done_by` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`wflow`,`wfid`,`node`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='work flow management data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wfm_task`
--

DROP TABLE IF EXISTS `wfm_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wfm_task` (
  `wfid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifkator eines Workflows',
  `description` varchar(250) NOT NULL COMMENT 'Beschreibung',
  `notice` varchar(100) NOT NULL COMMENT 'Textmodul für einen vorausgehenden Hinweis',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`wfid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='work flow management: task definition';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workflow`
--

DROP TABLE IF EXISTS `workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `wProcess` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
