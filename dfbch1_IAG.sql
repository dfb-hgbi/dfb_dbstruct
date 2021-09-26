-- MySQL dump 10.19  Distrib 10.3.29-MariaDB, for FreeBSD12.2 (amd64)
--
-- Host: localhost    Database: dfbch1_IAG
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
-- Table structure for table `RWD_Essen`
--

DROP TABLE IF EXISTS `RWD_Essen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Essen` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `ident` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `group` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `einsatz` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `meal` varchar(100) DEFAULT NULL,
  `numPers` int(11) DEFAULT NULL,
  `numGuest` int(11) DEFAULT NULL,
  `arranged` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Flag für arrangiertes Essen',
  `dutid` int(10) unsigned DEFAULT NULL COMMENT 'ep_duty.did',
  `tour` varchar(50) DEFAULT NULL COMMENT 'Diensttour  dtcode_xtra#000instruc',
  `productid` int(10) unsigned DEFAULT NULL COMMENT 'Produktionscode / Kostencode',
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `dept` varchar(100) DEFAULT '-ohne-',
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`auto`),
  KEY `date` (`date`),
  KEY `meal` (`meal`),
  KEY `ident` (`ident`)
) ENGINE=MyISAM AUTO_INCREMENT=240006 DEFAULT CHARSET=utf8 COMMENT='Mahlzeiten für Essen-Anmeldung / OBSOLET, 2017 abgelöst durch pl_essen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Essen_EpL`
--

DROP TABLE IF EXISTS `RWD_Essen_EpL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Essen_EpL` (
  `auto` int(10) unsigned NOT NULL COMMENT 'Key von RWD_Essen',
  `did` int(10) unsigned DEFAULT NULL COMMENT 'Key von ep_duty',
  `dtid` int(10) unsigned DEFAULT NULL COMMENT 'Key von ep_dtour',
  `tour` varchar(10) DEFAULT NULL COMMENT 'ep_dtour.dtcode',
  `prodcat` varchar(20) DEFAULT NULL COMMENT 'ep_dtour.prodcat',
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'Key von ep_service_plan',
  `xtra` varchar(10) DEFAULT NULL COMMENT 'ep_service_plan.xtra',
  `instruc` varchar(10) DEFAULT NULL COMMENT 'ep_service_plan.instruc',
  `auto_pre` int(10) unsigned DEFAULT NULL COMMENT 'Key der abgelösten Bestellung',
  `entered` timestamp NULL DEFAULT current_timestamp() COMMENT 'Zeitpunkt der Erstellung',
  `originator` int(10) unsigned DEFAULT NULL COMMENT 'Ident des Administrators',
  PRIMARY KEY (`auto`)
) ENGINE=MyISAM AUTO_INCREMENT=184119 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zusatzdaten zu Essensanmeldung mittels Einsatzplan-Logistik';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Essen_Gruppen___NA`
--

DROP TABLE IF EXISTS `RWD_Essen_Gruppen___NA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Essen_Gruppen___NA` (
  `gruppe` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `seq` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`gruppe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Gruppen für die Anmeldungzum Essen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Essen_HIST`
--

DROP TABLE IF EXISTS `RWD_Essen_HIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Essen_HIST` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `ident` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `group` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `einsatz` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `meal` varchar(100) DEFAULT NULL,
  `numPers` int(11) DEFAULT NULL,
  `numGuest` int(11) DEFAULT NULL,
  `arranged` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Flag für arrangiertes Essen',
  `dutid` int(10) unsigned DEFAULT NULL COMMENT 'ep_duty.did',
  `tour` varchar(50) DEFAULT NULL COMMENT 'Diensttour  dtcode_xtra#000instruc',
  `productid` int(10) unsigned DEFAULT NULL COMMENT 'Produktionscode / Kostencode',
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `dept` varchar(100) DEFAULT '-ohne-',
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`auto`),
  KEY `date` (`date`),
  KEY `meal` (`meal`),
  KEY `ident` (`ident`)
) ENGINE=MyISAM AUTO_INCREMENT=224643 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Essensbestellungen (mindestens) der letzten zwei Jahre';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Essen_NEW`
--

DROP TABLE IF EXISTS `RWD_Essen_NEW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Essen_NEW` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `ident` int(11) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dept` varchar(100) DEFAULT '-ohne-',
  `group` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `einsatz` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `meal` varchar(100) DEFAULT NULL,
  `numPers` int(11) DEFAULT NULL,
  `numGuest` int(11) DEFAULT NULL,
  `did` int(10) unsigned DEFAULT NULL COMMENT 'Key von ep_duty',
  `dtid` int(10) unsigned DEFAULT NULL COMMENT 'Key von ep_dtour',
  `tour` varchar(50) DEFAULT NULL COMMENT 'Code Diensttour: dtname#xtra#instruc',
  `prodcat` varchar(20) DEFAULT NULL COMMENT 'ep_dtour.prodcat',
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'Key von ep_service_plan',
  `productid` int(10) unsigned DEFAULT NULL COMMENT 'ep_service_plan.productid',
  `auto_pre` int(10) unsigned DEFAULT NULL COMMENT 'Key der abgelösten Bestellung',
  `entered` datetime DEFAULT NULL COMMENT 'Zeitpunkt der Erstellung',
  `originator` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'Ident des Administrators',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Zeitpunkt Modifikaton',
  `modifier` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'Ident Modifikator',
  PRIMARY KEY (`auto`),
  KEY `date` (`date`),
  KEY `meal` (`meal`),
  KEY `ident` (`ident`)
) ENGINE=MyISAM AUTO_INCREMENT=194886 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Mahlzeiten für Essen-Anmeldung, mit Einsatzplanungsdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Essen___dupl`
--

DROP TABLE IF EXISTS `RWD_Essen___dupl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Essen___dupl` (
  `auto` int(11) NOT NULL DEFAULT 0,
  `ident` int(11) DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `group` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `location` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `einsatz` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` date DEFAULT NULL,
  `meal` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `numPers` int(11) DEFAULT NULL,
  `numGuest` int(11) DEFAULT NULL,
  `arranged` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Flag für arrangiertes Essen',
  `dutid` int(10) unsigned DEFAULT NULL COMMENT 'ep_duty.did',
  `tour` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Diensttour  dtcode_xtra#000instruc',
  `productid` int(10) unsigned DEFAULT NULL COMMENT 'Produktionscode / Kostencode',
  `firstname` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `lastname` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `dept` varchar(100) CHARACTER SET utf8 DEFAULT '-ohne-',
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(11) DEFAULT NULL,
  `ess` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Essen___x`
--

DROP TABLE IF EXISTS `RWD_Essen___x`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Essen___x` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `ident` int(11) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `group` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `einsatz` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `meal` varchar(100) DEFAULT NULL,
  `numPers` int(11) DEFAULT NULL,
  `numGuest` int(11) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`auto`),
  KEY `date` (`date`),
  KEY `meal` (`meal`)
) ENGINE=MyISAM AUTO_INCREMENT=71628 DEFAULT CHARSET=utf8 COMMENT='Mahlzeiten für Essen-Anmeldung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Essen__arc`
--

DROP TABLE IF EXISTS `RWD_Essen__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Essen__arc` (
  `auto` text DEFAULT NULL,
  `ident` text DEFAULT NULL,
  `firstname` text DEFAULT NULL,
  `lastname` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `dept` text DEFAULT NULL,
  `group` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `einsatz` text DEFAULT NULL,
  `date` text DEFAULT NULL,
  `meal` text DEFAULT NULL,
  `numPers` text DEFAULT NULL,
  `numGuest` text DEFAULT NULL,
  `arranged` text DEFAULT NULL,
  `dutid` text DEFAULT NULL,
  `tour` text DEFAULT NULL,
  `productid` text DEFAULT NULL,
  `modified` text DEFAULT NULL,
  `modifier` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Essen_basic`
--

DROP TABLE IF EXISTS `RWD_Essen_basic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Essen_basic` (
  `auto` int(11) NOT NULL,
  `ident` int(11) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `group` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `einsatz` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `meal` varchar(100) DEFAULT NULL,
  `numPers` int(11) DEFAULT NULL,
  `numGuest` int(11) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `dept` varchar(100) DEFAULT '-ohne-',
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Dateistruktur der Original-RWD_Essen vor der Zusammenführung mit der Einsatzplanung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Essen_default`
--

DROP TABLE IF EXISTS `RWD_Essen_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Essen_default` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(20) NOT NULL COMMENT 'Aufenthaltsort',
  `meal` tinyint(3) unsigned NOT NULL COMMENT '1:bfst, 2:lnch oder 3:dinr',
  `offer` varchar(20) NOT NULL COMMENT 'Angebotenes Lokal resp. Art der Mahlzeit',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `period` varchar(20) NOT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idx`),
  KEY `location` (`location`),
  KEY `meal` (`meal`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Vorgaben für arrangierte Essen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Parm_NA`
--

DROP TABLE IF EXISTS `RWD_Parm_NA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Parm_NA` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `applic` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `withinSeason` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outOfSeason` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT 0 COMMENT 'Wenn 1: inaktiv / wenn 0: aktiv',
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='2016-01-10: umgestellt auf ep_dtour - all_opsdays';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Unterkunft`
--

DROP TABLE IF EXISTS `RWD_Unterkunft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Unterkunft` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `ident` int(11) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `lodging` varchar(100) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=MyISAM AUTO_INCREMENT=858 DEFAULT CHARSET=utf8 COMMENT='Anmeldung Unterkunft';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Unterkunft_color`
--

DROP TABLE IF EXISTS `RWD_Unterkunft_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Unterkunft_color` (
  `ident` int(11) NOT NULL DEFAULT 0,
  `colorcode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Unterkunft_data`
--

DROP TABLE IF EXISTS `RWD_Unterkunft_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Unterkunft_data` (
  `auto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned DEFAULT 0,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `einsatz` varchar(100) DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `night` date NOT NULL,
  `location` varchar(100) NOT NULL,
  `room` varchar(100) NOT NULL,
  `bed` varchar(100) DEFAULT NULL,
  `singleroom` varchar(20) DEFAULT NULL,
  `ongoing` tinyint(3) unsigned DEFAULT 0 COMMENT 'Durchgehende Reservation: Objekt z Vfg',
  `nothing` int(10) unsigned DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
  `locextended` tinyint(4) NOT NULL DEFAULT 0,
  `comment` mediumtext DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`auto`),
  UNIQUE KEY `night_location_room` (`night`,`location`,`room`,`bed`,`nothing`),
  KEY `firstname` (`firstname`),
  KEY `lastname` (`lastname`),
  KEY `email` (`email`),
  KEY `ident` (`ident`),
  KEY `einsatz` (`einsatz`),
  KEY `dept` (`dept`)
) ENGINE=MyISAM AUTO_INCREMENT=48396 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Unterkunftsliste Daten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Unterkunft_data_HIST`
--

DROP TABLE IF EXISTS `RWD_Unterkunft_data_HIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Unterkunft_data_HIST` (
  `auto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned DEFAULT 0,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `einsatz` varchar(100) DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `night` date NOT NULL,
  `location` varchar(100) NOT NULL,
  `room` varchar(100) NOT NULL,
  `bed` varchar(100) DEFAULT NULL,
  `singleroom` varchar(20) DEFAULT NULL,
  `ongoing` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `nothing` int(10) unsigned DEFAULT NULL,
  `group` varchar(50) DEFAULT NULL,
  `locextended` tinyint(4) NOT NULL DEFAULT 0,
  `comment` mediumtext DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`auto`),
  UNIQUE KEY `night_location_room` (`night`,`location`,`room`,`bed`,`nothing`),
  KEY `firstname` (`firstname`),
  KEY `lastname` (`lastname`),
  KEY `email` (`email`),
  KEY `ident` (`ident`),
  KEY `einsatz` (`einsatz`),
  KEY `dept` (`dept`)
) ENGINE=MyISAM AUTO_INCREMENT=13805 DEFAULT CHARSET=utf8 COMMENT='Vorjährige Unterkunftsdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Unterkunft_data__arc`
--

DROP TABLE IF EXISTS `RWD_Unterkunft_data__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Unterkunft_data__arc` (
  `auto` int(11) NOT NULL,
  `ident` text DEFAULT NULL,
  `firstname` text DEFAULT NULL,
  `lastname` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `einsatz` text DEFAULT NULL,
  `dept` text DEFAULT NULL,
  `night` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `room` text DEFAULT NULL,
  `bed` text DEFAULT NULL,
  `singleroom` text DEFAULT NULL,
  `ongoing` text DEFAULT NULL,
  `nothing` text DEFAULT NULL,
  `group` text DEFAULT NULL,
  `locextended` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `modified` text DEFAULT NULL,
  `modifier` text DEFAULT NULL,
  `archived` timestamp NULL DEFAULT current_timestamp(),
  `agent` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=MyISAM AUTO_INCREMENT=6770 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Unterkunftsliste Daten ARCHIV';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Unterkunft_data_x`
--

DROP TABLE IF EXISTS `RWD_Unterkunft_data_x`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Unterkunft_data_x` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `ident` int(11) DEFAULT 0,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `einsatz` varchar(100) DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `night` date NOT NULL,
  `location` varchar(100) NOT NULL,
  `room` varchar(100) NOT NULL,
  `bed` varchar(100) DEFAULT NULL,
  `singleroom` varchar(20) DEFAULT NULL,
  `ongoing` tinyint(3) unsigned DEFAULT 0,
  `group` varchar(50) DEFAULT NULL,
  `comment` mediumtext DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`auto`),
  UNIQUE KEY `night_location_room` (`night`,`location`,`room`,`bed`),
  KEY `firstname` (`firstname`),
  KEY `lastname` (`lastname`),
  KEY `email` (`email`),
  KEY `ident` (`ident`),
  KEY `einsatz` (`einsatz`),
  KEY `dept` (`dept`)
) ENGINE=MyISAM AUTO_INCREMENT=4249 DEFAULT CHARSET=utf8 COMMENT='Unterkunftsliste Daten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Unterkunft_location`
--

DROP TABLE IF EXISTS `RWD_Unterkunft_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Unterkunft_location` (
  `key` int(11) NOT NULL,
  `location` varchar(100) DEFAULT NULL COMMENT 'Formelle Bezeichnung',
  `zone` varchar(10) DEFAULT NULL,
  `inactive` tinyint(4) DEFAULT NULL,
  `fake` tinyint(4) NOT NULL DEFAULT 0,
  `loc_sh` varchar(20) NOT NULL DEFAULT '??' COMMENT 'Kurzbezeichnung',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`key`),
  KEY `location` (`location`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='Unterkunftsorte, nur in RWD_Unterkunft-Anwendung genutzt, ist redundant und eine Slave von pl_location[`RWD`] (`key` = `lid`)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Unterkunft_need`
--

DROP TABLE IF EXISTS `RWD_Unterkunft_need`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Unterkunft_need` (
  `auto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned DEFAULT NULL,
  `night` date NOT NULL DEFAULT '0000-00-00',
  `need` mediumtext DEFAULT NULL,
  `adopted` datetime DEFAULT NULL,
  `admin` int(10) unsigned DEFAULT NULL,
  `ignored` datetime DEFAULT NULL COMMENT 'Bedürfnisanfrage ausschliessen',
  `admin2` int(10) unsigned DEFAULT NULL COMMENT 'Markierer',
  `modified` datetime DEFAULT NULL,
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`auto`),
  KEY `ident` (`ident`),
  KEY `night` (`night`)
) ENGINE=MyISAM AUTO_INCREMENT=7421 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Mitarbeiterbedürfnisse';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Unterkunft_need__arc`
--

DROP TABLE IF EXISTS `RWD_Unterkunft_need__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Unterkunft_need__arc` (
  `auto` text DEFAULT NULL,
  `ident` text DEFAULT NULL,
  `night` text DEFAULT NULL,
  `need` text DEFAULT NULL,
  `adopted` text DEFAULT NULL,
  `admin` text DEFAULT NULL,
  `ignored` text DEFAULT NULL,
  `admin2` text DEFAULT NULL,
  `modified` text DEFAULT NULL,
  `modifier` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(10) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Abgeänderte Mitarbeiterbedürfnisse (ARCHIV)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Unterkunft_offer`
--

DROP TABLE IF EXISTS `RWD_Unterkunft_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Unterkunft_offer` (
  `key` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(50) DEFAULT '',
  `zone` varchar(10) DEFAULT '',
  `accommodation` varchar(50) DEFAULT '',
  `category` varchar(50) DEFAULT '',
  `charge` decimal(10,2) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='Unterkunftsangebot aus Tabelle td_param.accommodation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Unterkunft_stamm`
--

DROP TABLE IF EXISTS `RWD_Unterkunft_stamm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Unterkunft_stamm` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(100) DEFAULT NULL,
  `room` varchar(100) DEFAULT NULL,
  `nmbrOfBeds` int(11) DEFAULT 1,
  `reserved` varchar(100) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  `hide` varchar(100) DEFAULT '0',
  PRIMARY KEY (`auto`),
  UNIQUE KEY `location_room` (`location`,`room`)
) ENGINE=MyISAM AUTO_INCREMENT=128 DEFAULT CHARSET=utf8 COMMENT='Unterkunftsliste vorübergehend (OBSOLET seit 2014)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_gruppen_migr`
--

DROP TABLE IF EXISTS `RWD_gruppen_migr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_gruppen_migr` (
  `gruppe` varchar(50) NOT NULL,
  `inactive` tinyint(4) DEFAULT NULL,
  `seq` smallint(6) DEFAULT NULL,
  `idg` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`gruppe`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Gruppen für die Anmeldung zum Essen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_gruppen_stamm`
--

DROP TABLE IF EXISTS `RWD_gruppen_stamm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_gruppen_stamm` (
  `gruppe` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `inactive` tinyint(4) DEFAULT NULL,
  `seq` smallint(6) DEFAULT NULL,
  `idg` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`gruppe`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Gruppen für die Anmeldungzum Essen / 2020 OBSOLET, ersetzt durch pl_gruppen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_location`
--

DROP TABLE IF EXISTS `RWD_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_location` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned NOT NULL DEFAULT 0,
  `location` varchar(100) DEFAULT NULL COMMENT 'Formelle Bezeichnung',
  `loc` varchar(20) NOT NULL DEFAULT '??' COMMENT 'Kurzbezeichnung',
  `zone` varchar(10) DEFAULT NULL,
  `hide` tinyint(3) unsigned DEFAULT 0,
  `fake` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Pseudo-Ort',
  `adm_ukft` int(10) unsigned DEFAULT 0 COMMENT 'Verantwortliche Lokaladministration Unterkunft',
  `adm_essen` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Verantwortliche Lokaladministration Verpflegung',
  `lft` smallint(5) unsigned DEFAULT 0,
  `rgt` smallint(5) unsigned DEFAULT 0,
  `nsl` smallint(5) unsigned DEFAULT 0 COMMENT 'Hierarchiestufe',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`lid`),
  KEY `location` (`location`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Orte und Zuständigkeit der Personallogistik / OBSOLET, abgelöst durch pl_location';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `__db_content`
--

DROP TABLE IF EXISTS `__db_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__db_content` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tablename` varchar(100) NOT NULL,
  `is_table` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `lft` smallint(5) unsigned NOT NULL,
  `rgt` smallint(5) unsigned NOT NULL,
  `description` text NOT NULL,
  `significance` text NOT NULL,
  `content` text NOT NULL,
  `running` text NOT NULL,
  `byAuto` text NOT NULL,
  `bySysadmin` text NOT NULL,
  `byAdmin` text NOT NULL,
  `byOps` text NOT NULL,
  `backuped` text NOT NULL,
  `archived` varchar(50) NOT NULL,
  `dependence` text NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idx`),
  UNIQUE KEY `tablename` (`tablename`),
  KEY `lft` (`lft`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Beschreibung der Haupttabellen dieser Datenbank';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_dispojob_`
--

DROP TABLE IF EXISTS `_dispojob_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_dispojob_` (
  `rid` int(10) unsigned NOT NULL COMMENT 'Job-ID',
  `opsday` date NOT NULL COMMENT 'Betriebstag',
  `ident` int(10) unsigned NOT NULL COMMENT 'Mitarbeiter',
  `short4` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Kürzel',
  `matchcode` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Namen mit Ort',
  `noduty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Dienstfrei-Marker',
  `seq` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzeigereihenfolge',
  `ridini` int(10) unsigned NOT NULL COMMENT 'Initial-rid',
  `grp` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT 'zugeteilte Gruppe',
  `grpH` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT 'Name der geleiteten Gruppe',
  `grpini` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT 'Initial-Gruppe',
  `grphead` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Gruppenleitermarkierung',
  `grpheadini` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Initial-Gruppenleitung',
  `spidini` int(10) unsigned DEFAULT NULL COMMENT 'Plan-spid bei Prozessbeginn',
  `spdtid` int(10) unsigned DEFAULT NULL COMMENT 'Kopie der dtid aus Betriebsplan',
  `tourini` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'TourNr bei Prozessbeginn',
  `unavbl` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Nicht-Verfügbar-Marker',
  `dtidact` int(10) unsigned DEFAULT NULL COMMENT 'dtid der momentanen Zuweisung',
  `touract` int(10) unsigned DEFAULT NULL COMMENT 'TourNr aktuell',
  `offerElse` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Dienstangebote in andern Bereichen',
  `jremark` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Jobbezogene Anmerkung',
  `remkini` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Initial-Anmerkung',
  `maname` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Namen ohne Ort',
  `eo1` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Essens-Ort = Bestellung Frühstück',
  `eo2` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Essens-Ort = Bestellung Mittagessen',
  `eo3` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Essens-Ort = Bestellung Abendessen',
  `ukftvor` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Unterkunft vor dem Arbeitstag',
  `ukftnach` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Unterkunft nach dem Arbeitstag',
  `ea1` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Essensort FR aktuell',
  `ea2` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Essensort MI aktuell',
  `ea3` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Essensort AB aktuell',
  `ukav` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Ukft vorabends aktuell',
  `ukan` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Ukft nachfolgend aktuell',
  `dept` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Auftraggebende Abteilung der Diensttour',
  `prodarea` int(10) unsigned DEFAULT NULL COMMENT 'Produktions-ID der Diensttour gemäss fi_prodarea',
  `eg123` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Summe aller Gruppenbestellungen',
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'Serviceplan-ID wie angeordnet',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'Assign-ID wie angeordnet',
  `spname` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Diensttourbezeichnung wie angeordnet',
  `did` int(10) unsigned DEFAULT NULL COMMENT 'duty-ID wie angeordnet',
  `step` int(10) unsigned DEFAULT 0,
  `archived` datetime DEFAULT current_timestamp(),
  `admin` int(10) unsigned DEFAULT 10648
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_eprels_`
--

DROP TABLE IF EXISTS `_eprels_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_eprels_` (
  `contract` bigint(11) NOT NULL DEFAULT 0,
  `ep_org` int(10) unsigned DEFAULT NULL,
  `ability` varchar(50) DEFAULT NULL,
  `id_org` int(11) NOT NULL,
  `context` varchar(50) NOT NULL,
  `funct` varchar(50) NOT NULL,
  `ident` int(11) NOT NULL,
  `matchcode` varchar(255) DEFAULT NULL,
  `gotemail` varchar(1) DEFAULT '',
  `testing` varchar(900) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
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
-- Table structure for table `_myroles_`
--

DROP TABLE IF EXISTS `_myroles_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_myroles_` (
  `contract` int(11) NOT NULL DEFAULT 0,
  `shortname` varchar(100) DEFAULT NULL,
  `id_org` int(11) DEFAULT NULL,
  `context` varchar(100) DEFAULT NULL,
  `funct` varchar(100) NOT NULL DEFAULT '',
  `lft` int(11) DEFAULT NULL,
  `validfrom` date DEFAULT NULL,
  `validto` date DEFAULT NULL,
  PRIMARY KEY (`contract`,`funct`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='done by script schedule.lib:my_ep_relations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_service_demand_19352`
--

DROP TABLE IF EXISTS `_service_demand_19352`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_service_demand_19352` (
  `opsday` date NOT NULL,
  `calweek` varchar(250) DEFAULT NULL,
  `dtid` int(10) unsigned NOT NULL,
  `Tour` varchar(250) DEFAULT NULL,
  `VPall` varchar(250) DEFAULT NULL,
  `ZPs` varchar(250) DEFAULT NULL,
  `day` varchar(250) DEFAULT NULL,
  `byScope` varchar(250) DEFAULT NULL,
  `periods` varchar(250) DEFAULT NULL,
  `it_is` varchar(250) DEFAULT NULL,
  `start_time` varchar(250) DEFAULT NULL,
  `start_place` varchar(250) DEFAULT NULL,
  `end_time` varchar(250) DEFAULT NULL,
  `end_place` varchar(250) DEFAULT NULL,
  `num` varchar(250) DEFAULT NULL,
  `ZP` varchar(250) DEFAULT NULL,
  `ptd` varchar(250) DEFAULT NULL,
  `meth` varchar(250) DEFAULT NULL,
  `via` varchar(250) DEFAULT NULL,
  `mult` varchar(250) DEFAULT NULL,
  `xtra` varchar(20) NOT NULL,
  `rules` varchar(250) DEFAULT NULL,
  `orig` varchar(250) DEFAULT NULL,
  `trigger` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`opsday`,`dtid`,`xtra`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='done by script flexuRoutine::create_ttt';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_service_demand_23961`
--

DROP TABLE IF EXISTS `_service_demand_23961`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_service_demand_23961` (
  `opsday` date NOT NULL,
  `calweek` varchar(250) DEFAULT NULL,
  `dtid` int(10) unsigned NOT NULL,
  `Tour` varchar(250) DEFAULT NULL,
  `VPall` varchar(250) DEFAULT NULL,
  `ZPs` varchar(250) DEFAULT NULL,
  `day` varchar(250) DEFAULT NULL,
  `byScope` varchar(250) DEFAULT NULL,
  `periods` varchar(250) DEFAULT NULL,
  `it_is` varchar(250) DEFAULT NULL,
  `start_time` varchar(250) DEFAULT NULL,
  `start_place` varchar(250) DEFAULT NULL,
  `end_time` varchar(250) DEFAULT NULL,
  `end_place` varchar(250) DEFAULT NULL,
  `num` varchar(250) DEFAULT NULL,
  `ZP` varchar(250) DEFAULT NULL,
  `ptd` varchar(250) DEFAULT NULL,
  `meth` varchar(250) DEFAULT NULL,
  `via` varchar(250) DEFAULT NULL,
  `mult` varchar(250) DEFAULT NULL,
  `xtra` varchar(20) NOT NULL,
  `rules` varchar(250) DEFAULT NULL,
  `orig` varchar(250) DEFAULT NULL,
  `trigger` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`opsday`,`dtid`,`xtra`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='done by script flexuRoutine::create_ttt';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_service_demand_3`
--

DROP TABLE IF EXISTS `_service_demand_3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_service_demand_3` (
  `opsday` date NOT NULL,
  `calweek` varchar(250) DEFAULT NULL,
  `dtid` int(10) unsigned NOT NULL,
  `Tour` varchar(250) DEFAULT NULL,
  `VPall` varchar(250) DEFAULT NULL,
  `ZPs` varchar(250) DEFAULT NULL,
  `day` varchar(250) DEFAULT NULL,
  `byScope` varchar(250) DEFAULT NULL,
  `periods` varchar(250) DEFAULT NULL,
  `it_is` varchar(250) DEFAULT NULL,
  `start_time` varchar(250) DEFAULT NULL,
  `start_place` varchar(250) DEFAULT NULL,
  `end_time` varchar(250) DEFAULT NULL,
  `end_place` varchar(250) DEFAULT NULL,
  `num` varchar(250) DEFAULT NULL,
  `ZP` varchar(250) DEFAULT NULL,
  `ptd` varchar(250) DEFAULT NULL,
  `meth` varchar(250) DEFAULT NULL,
  `via` varchar(250) DEFAULT NULL,
  `mult` varchar(250) DEFAULT NULL,
  `xtra` varchar(20) NOT NULL,
  `rules` varchar(250) DEFAULT NULL,
  `orig` varchar(250) DEFAULT NULL,
  `trigger` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`opsday`,`dtid`,`xtra`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='done by script flexuRoutine::create_ttt';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_seso_`
--

DROP TABLE IF EXISTS `_seso_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_seso_` (
  `ident` int(11) DEFAULT NULL,
  `seAll` tinyint(4) DEFAULT NULL,
  `selfadm` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `a_ns_part`
--

DROP TABLE IF EXISTS `a_ns_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `a_ns_part` (
  `qid` int(10) unsigned NOT NULL DEFAULT 0,
  `sector` varchar(20) CHARACTER SET utf8 NOT NULL,
  `shortname` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `parent` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `area` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `layer` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `prio` smallint(5) unsigned DEFAULT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Hierarchiestufe',
  `inactive` tinyint(3) unsigned DEFAULT 0 COMMENT 'Nicht in Verwendung',
  `admin` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '(eigentlich) Bereichs-Ident / Bearbeitende Organisation',
  `adm_rep` tinyint(3) unsigned DEFAULT 0 COMMENT 'dieser admin ist oben bereits vorhanden (ausblenden!)',
  `ep_area` int(10) unsigned DEFAULT 0,
  `noarea` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `object_link` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `contract` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `isgrp` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `q_or` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `selectname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `skillplus` varchar(250) CHARACTER SET utf8 NOT NULL COMMENT 'Liste höher gestufter, alternativer Kompetenzen',
  `qprof_tbd` tinyint(3) unsigned DEFAULT 0,
  `commit` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `descr` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `r_id_org` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'aus Subset',
  `skillma` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Skill Management Area',
  `ep_org` int(10) unsigned DEFAULT NULL,
  `hide` tinyint(1) DEFAULT 0,
  `sort` int(6) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `value` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'obsolet',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `aa_need___2013`
--

DROP TABLE IF EXISTS `aa_need___2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aa_need___2013` (
  `opsday` date NOT NULL,
  `kw` smallint(6) NOT NULL,
  `rem_day` varchar(100) NOT NULL,
  `myoffer` varchar(250) NOT NULL,
  `myduty` varchar(10) DEFAULT NULL,
  `rem0` varchar(100) NOT NULL,
  `val0` varchar(100) NOT NULL,
  `org0` varchar(10) NOT NULL,
  `list0` varchar(100) NOT NULL,
  `rem1` varchar(100) NOT NULL,
  `val1` varchar(100) NOT NULL,
  `org1` varchar(10) NOT NULL,
  `list1` varchar(100) NOT NULL,
  `rem2` varchar(100) NOT NULL,
  `val2` varchar(100) NOT NULL,
  `org2` varchar(10) NOT NULL,
  `list2` varchar(100) NOT NULL,
  `mycomment` varchar(100) NOT NULL,
  PRIMARY KEY (`opsday`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='testdaten offermodul';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `all_attend`
--

DROP TABLE IF EXISTS `all_attend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_attend` (
  `atid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'KEY',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'IDENT contacts.tb_ident',
  `short` varchar(10) DEFAULT NULL COMMENT 'DFB-Kürzel',
  `opsday` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Betriebstag',
  `cause` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Anlass: 1.work, 2.eve,3.inter,4.depart',
  `orderby` varchar(20) DEFAULT NULL COMMENT 'Auftraggebende Abteilung',
  `self` tinyint(3) unsigned DEFAULT NULL COMMENT 'selbstregistrierter Serviceplan',
  `worktime` int(10) unsigned DEFAULT NULL COMMENT 'Arbeitsdauer',
  `attendance` int(10) unsigned DEFAULT NULL COMMENT 'Schichtdauer',
  `regio` varchar(10) DEFAULT NULL COMMENT 'Einsatz-Grossraum',
  `start_loc` varchar(20) DEFAULT NULL COMMENT 'Anfangsort Tour',
  `start_time` time DEFAULT NULL COMMENT 'Anfangsuhrzeit Tour',
  `end_loc` varchar(20) DEFAULT NULL COMMENT 'Endort Tour',
  `end_time` time DEFAULT NULL COMMENT 'Enduhrzeit Tour',
  `remark` varchar(150) DEFAULT NULL COMMENT 'Kurzkommentar Thema Präsenz',
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_service_plan',
  `prodcat` varchar(20) DEFAULT NULL COMMENT 'ID Produktionsbereich',
  `dtid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_dtour',
  `tour` varchar(50) NOT NULL COMMENT 'Diensttour codiert (ohne dtid = gelöschte Tour)',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_assign',
  `did` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_duty',
  `rid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Eintrag durch Umdisposition',
  `accepted` datetime DEFAULT NULL COMMENT 'Zeitpunkt Dienstübernahme',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`atid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `cause` (`cause`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=57962 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Umfassende Anwesenheitstabelle aller DFB-Mitarbeit und Logistik-Nutzung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `all_attend___20160611`
--

DROP TABLE IF EXISTS `all_attend___20160611`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_attend___20160611` (
  `atid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'KEY',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'IDENT contacts.tb_ident',
  `short` varchar(10) DEFAULT NULL COMMENT 'DFB-Kürzel',
  `opsday` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Betriebstag',
  `cause` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Anlass: 1.work, 2.eve,3.inter,4.depart',
  `orderby` varchar(20) DEFAULT NULL COMMENT 'Auftraggebende Abteilung',
  `self` tinyint(3) unsigned DEFAULT NULL COMMENT 'selbstregistrierter Serviceplan',
  `worktime` int(10) unsigned DEFAULT NULL COMMENT 'Arbeitsdauer',
  `attendance` int(10) unsigned DEFAULT NULL COMMENT 'Schichtdauer',
  `regio` varchar(10) DEFAULT NULL COMMENT 'Einsatz-Grossraum',
  `start_loc` varchar(20) DEFAULT NULL COMMENT 'Anfangsort Tour',
  `start_time` time DEFAULT NULL COMMENT 'Anfangsuhrzeit Tour',
  `end_loc` varchar(20) DEFAULT NULL COMMENT 'Endort Tour',
  `end_time` time DEFAULT NULL COMMENT 'Enduhrzeit Tour',
  `remark` varchar(150) DEFAULT NULL COMMENT 'Kurzkommentar Thema Präsenz',
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_service_plan',
  `prodcat` varchar(20) DEFAULT NULL COMMENT 'ID Produktionsbereich',
  `dtid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_dtour',
  `tour` varchar(50) NOT NULL COMMENT 'Diensttour codiert (ohne dtid = gelöschte Tour)',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_assign',
  `did` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_duty',
  `accepted` datetime DEFAULT NULL COMMENT 'Zeitpunkt Dienstübernahme',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`atid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `cause` (`cause`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=5234 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Umfassende Anwesenheitstabelle aller DFB-Mitarbeit und Logistik-Nutzung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `all_attend___20180909`
--

DROP TABLE IF EXISTS `all_attend___20180909`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_attend___20180909` (
  `atid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'KEY',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'IDENT contacts.tb_ident',
  `short` varchar(10) DEFAULT NULL COMMENT 'DFB-Kürzel',
  `opsday` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Betriebstag',
  `cause` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Anlass: 1.work, 2.eve,3.inter,4.depart',
  `orderby` varchar(20) DEFAULT NULL COMMENT 'Auftraggebende Abteilung',
  `self` tinyint(3) unsigned DEFAULT NULL COMMENT 'selbstregistrierter Serviceplan',
  `worktime` int(10) unsigned DEFAULT NULL COMMENT 'Arbeitsdauer',
  `attendance` int(10) unsigned DEFAULT NULL COMMENT 'Schichtdauer',
  `regio` varchar(10) DEFAULT NULL COMMENT 'Einsatz-Grossraum',
  `start_loc` varchar(20) DEFAULT NULL COMMENT 'Anfangsort Tour',
  `start_time` time DEFAULT NULL COMMENT 'Anfangsuhrzeit Tour',
  `end_loc` varchar(20) DEFAULT NULL COMMENT 'Endort Tour',
  `end_time` time DEFAULT NULL COMMENT 'Enduhrzeit Tour',
  `remark` varchar(150) DEFAULT NULL COMMENT 'Kurzkommentar Thema Präsenz',
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_service_plan',
  `prodcat` varchar(20) DEFAULT NULL COMMENT 'ID Produktionsbereich',
  `dtid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_dtour',
  `tour` varchar(50) NOT NULL COMMENT 'Diensttour codiert (ohne dtid = gelöschte Tour)',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_assign',
  `did` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_duty',
  `accepted` datetime DEFAULT NULL COMMENT 'Zeitpunkt Dienstübernahme',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`atid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `cause` (`cause`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=22300 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Umfassende Anwesenheitstabelle aller DFB-Mitarbeit und Logistik-Nutzung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `all_attend__arc`
--

DROP TABLE IF EXISTS `all_attend__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_attend__arc` (
  `atid` text DEFAULT NULL,
  `ident` text DEFAULT NULL,
  `short` text DEFAULT NULL,
  `opsday` text DEFAULT NULL,
  `cause` text DEFAULT NULL,
  `orderby` text DEFAULT NULL,
  `worktime` text DEFAULT NULL,
  `attendance` text DEFAULT NULL,
  `regio` text DEFAULT NULL,
  `start_loc` text DEFAULT NULL,
  `start_time` text DEFAULT NULL,
  `end_loc` text DEFAULT NULL,
  `end_time` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `spid` text DEFAULT NULL,
  `prodcat` text DEFAULT NULL,
  `dtid` text DEFAULT NULL,
  `tour` text DEFAULT NULL,
  `aid` text DEFAULT NULL,
  `self` text DEFAULT NULL,
  `did` text DEFAULT NULL,
  `rid` text DEFAULT NULL,
  `accepted` text DEFAULT NULL,
  `entered` text DEFAULT NULL,
  `originator` text DEFAULT NULL,
  `modified` text DEFAULT NULL,
  `modifier` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `all_location`
--

DROP TABLE IF EXISTS `all_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_location` (
  `idloc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loc` varchar(30) NOT NULL COMMENT 'DFB-Ortskürzel (KEY)',
  `meter` varchar(5) NOT NULL COMMENT 'Streckenmeter ab Brig',
  `km` decimal(3,1) unsigned zerofill DEFAULT NULL COMMENT 'km-Tafel, max 99.9',
  `description` varchar(255) DEFAULT NULL COMMENT 'Vollständiger Ortsname',
  `bhf` varchar(5) NOT NULL COMMENT 'Kürzel des eff. Bahnhofs',
  `parent` varchar(30) DEFAULT NULL COMMENT 'Parent des Ortskürzels',
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'NS-links',
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'NS-rechts',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'versteckter Eintrag',
  `ops_long` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'zugänglich in Normalops: 1=Station, 10=Streckenort',
  `descr` varchar(20) DEFAULT NULL COMMENT 'Ortsname kurz',
  `dfb_long` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'ist ein Ort innerhalb DFB-Bergstrecke',
  `mgb_long` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'ist ein Ort der 100cm-BFD-Strecke',
  `gleis` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Gleisnummer in Stationen',
  `region` varchar(20) DEFAULT NULL COMMENT 'DFB-Grossraum, zb FURKA',
  `int1` int(11) DEFAULT NULL,
  `int2` int(11) DEFAULT NULL,
  `int3` int(11) DEFAULT NULL,
  `remark` text DEFAULT NULL COMMENT 'Bemerkungen',
  `sort` smallint(5) unsigned DEFAULT NULL COMMENT 'NS-Sortierung',
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'NS-Hierarchiestufe',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idloc`),
  UNIQUE KEY `loc` (`loc`),
  KEY `metertext` (`meter`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Alle Ortsdefinitionen der dfb';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `all_location___20170705`
--

DROP TABLE IF EXISTS `all_location___20170705`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_location___20170705` (
  `idloc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loc` varchar(30) NOT NULL COMMENT 'DFB-Ortskürzel (KEY)',
  `meter` varchar(5) NOT NULL COMMENT 'Streckenmeter ab Brig',
  `km` decimal(3,1) unsigned zerofill DEFAULT NULL COMMENT 'km-Tafel, max 99.9',
  `description` varchar(255) DEFAULT NULL COMMENT 'Vollständiger Ortsname',
  `bhf` varchar(5) NOT NULL COMMENT 'Kürzel des eff. Bahnhofs',
  `parent` varchar(30) DEFAULT NULL COMMENT 'Parent des Ortskürzels',
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'NS-links',
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'NS-rechts',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'versteckter Eintrag',
  `region` varchar(20) DEFAULT NULL COMMENT 'DFB-Grossraum, zb FURKA',
  `descr` varchar(20) DEFAULT NULL COMMENT 'Ortsname kurz',
  `dfb_long` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'ist ein Ort innerhalb DFB-Bergstrecke',
  `ops_long` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'zugänglich in Normalops: 1=Station, 10=Streckenort',
  `gleis` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Gleisnummer in Stationen',
  `mgb_long` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'ist ein Ort der 100cm-BFD-Strecke',
  `int1` int(11) DEFAULT NULL,
  `int2` int(11) DEFAULT NULL,
  `int3` int(11) DEFAULT NULL,
  `remark` text DEFAULT NULL COMMENT 'Bemerkungen',
  `sort` smallint(5) unsigned DEFAULT NULL COMMENT 'NS-Sortierung',
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'NS-Hierarchiestufe',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idloc`),
  UNIQUE KEY `loc` (`loc`),
  KEY `metertext` (`meter`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Alle Ortsdefinitionen der dfb';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `all_opsdays`
--

DROP TABLE IF EXISTS `all_opsdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_opsdays` (
  `opsday` date NOT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `vps` varchar(50) NOT NULL,
  `xps` varchar(50) NOT NULL,
  `zps` text NOT NULL,
  `circular` varchar(250) NOT NULL,
  `byScope` varchar(50) NOT NULL,
  PRIMARY KEY (`opsday`),
  KEY `byScope` (`byScope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='DFB Fahrbetriebstage (Verwendungsnachweis VP+Zirkulare)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `all_opsdays___20150105`
--

DROP TABLE IF EXISTS `all_opsdays___20150105`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_opsdays___20150105` (
  `opsday` date NOT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `vps` varchar(50) NOT NULL,
  `circular` varchar(250) NOT NULL,
  `zps` text NOT NULL,
  `byScope` varchar(50) NOT NULL,
  PRIMARY KEY (`opsday`),
  KEY `byScope` (`byScope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='DFB Fahrbetriebstage (Verwendungsnachweis VP+Zirkulare)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `all_opsdays___20160220`
--

DROP TABLE IF EXISTS `all_opsdays___20160220`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_opsdays___20160220` (
  `opsday` date NOT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `vps` varchar(50) NOT NULL,
  `circular` varchar(250) NOT NULL,
  `zps` text NOT NULL,
  `byScope` varchar(50) NOT NULL,
  PRIMARY KEY (`opsday`),
  KEY `byScope` (`byScope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='DFB Fahrbetriebstage (Verwendungsnachweis VP+Zirkulare)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `all_opsdays___20210510`
--

DROP TABLE IF EXISTS `all_opsdays___20210510`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_opsdays___20210510` (
  `opsday` date NOT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `vps` varchar(50) NOT NULL,
  `xps` varchar(50) NOT NULL,
  `zps` text NOT NULL,
  `circular` varchar(250) NOT NULL,
  `byScope` varchar(50) NOT NULL,
  PRIMARY KEY (`opsday`),
  KEY `byScope` (`byScope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='DFB Fahrbetriebstage (Verwendungsnachweis VP+Zirkulare)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `all_period`
--

DROP TABLE IF EXISTS `all_period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_period` (
  `idvp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vpcode` varchar(10) NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `description` varchar(255) DEFAULT NULL,
  `weekdays` varchar(20) DEFAULT NULL,
  `legend` varchar(10) DEFAULT NULL COMMENT 'Nr des Fahrplanhinweises',
  `train_id` varchar(5) NOT NULL COMMENT 'Folgesequenz der Zugpaare',
  `kind` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Art der Regel gemäss td_param(periodkind)',
  `is_vp` tinyint(3) NOT NULL DEFAULT 0 COMMENT 'Eintrag entspricht einer Verkehrsperiode',
  `param` varchar(255) DEFAULT NULL COMMENT 'blank-getrennte, situative Parameter',
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  `daily` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'nicht mehr nutzen',
  PRIMARY KEY (`idvp`),
  UNIQUE KEY `vpcode` (`vpcode`,`validfrom`)
) ENGINE=MyISAM AUTO_INCREMENT=441 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplan: Verkehrs- und weitere Zeitperioden';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `all_period___20140319`
--

DROP TABLE IF EXISTS `all_period___20140319`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_period___20140319` (
  `idvp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vpcode` varchar(10) NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `daily` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `weekdays` varchar(20) DEFAULT NULL,
  `legend` varchar(10) DEFAULT NULL,
  `is_vp` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idvp`),
  UNIQUE KEY `vpcode` (`vpcode`,`validfrom`)
) ENGINE=MyISAM AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplan: Verkehrs- und weitere Zeitperioden';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `all_period___20150104`
--

DROP TABLE IF EXISTS `all_period___20150104`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `all_period___20150104` (
  `idvp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vpcode` varchar(10) NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `daily` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `weekdays` varchar(20) DEFAULT NULL,
  `legend` varchar(10) DEFAULT NULL,
  `train_id` varchar(5) NOT NULL,
  `is_vp` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idvp`),
  UNIQUE KEY `vpcode` (`vpcode`,`validfrom`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplan: Verkehrs- und weitere Zeitperioden';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basket_kredifakt`
--

DROP TABLE IF EXISTS `basket_kredifakt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basket_kredifakt` (
  `loginID` int(10) unsigned NOT NULL,
  `dproc` varchar(50) NOT NULL,
  `rgid` int(10) unsigned DEFAULT NULL,
  `version` smallint(5) unsigned NOT NULL DEFAULT 0,
  `done_by` int(10) unsigned NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `vendor` int(10) unsigned DEFAULT NULL,
  `vendorname` varchar(100) DEFAULT NULL,
  `vendorsearch` int(10) unsigned DEFAULT NULL,
  `vendorselected` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `invnum` varchar(20) DEFAULT NULL,
  `invdate` date DEFAULT NULL,
  `idateloc` varchar(10) DEFAULT NULL,
  `paydateloc` varchar(10) DEFAULT NULL,
  `paylimdays` int(3) unsigned DEFAULT NULL,
  `payuntil` date DEFAULT NULL,
  `invcur` varchar(3) NOT NULL DEFAULT 'CHF',
  `invsum` decimal(12,2) DEFAULT NULL,
  `inv4free` tinyint(1) NOT NULL DEFAULT 0,
  `cur_sum` varchar(50) DEFAULT NULL,
  `invtype` varchar(50) DEFAULT NULL,
  `buyer` int(10) unsigned DEFAULT NULL,
  `buyersh4` varchar(4) DEFAULT NULL,
  `buyername` varchar(100) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `conclusion` text DEFAULT NULL,
  `invdocUrl` varchar(250) DEFAULT NULL,
  `invdoc` varchar(30) DEFAULT NULL,
  `idocHref` varchar(250) DEFAULT NULL,
  `idocPage` varchar(400) DEFAULT NULL,
  `uploadID` int(10) unsigned DEFAULT NULL,
  `uploadername` varchar(100) DEFAULT NULL,
  `localdoclink` varchar(250) DEFAULT NULL,
  `localdocname` varchar(100) DEFAULT NULL,
  `localrejectmsg` text DEFAULT NULL,
  `buyermailshort` varchar(10) DEFAULT NULL,
  `bmshortID` int(10) unsigned DEFAULT NULL,
  `buyermailname` varchar(100) DEFAULT NULL,
  `buyermailID` int(10) unsigned DEFAULT NULL,
  `ressortmailname` varchar(100) DEFAULT NULL,
  `ressortID` int(10) unsigned DEFAULT NULL,
  `ressortheadID` int(10) unsigned DEFAULT NULL,
  `fwd2ID` int(10) unsigned DEFAULT NULL,
  `sentto` varchar(200) DEFAULT NULL,
  `sentcc` varchar(200) DEFAULT NULL,
  `sentbcc` varchar(250) DEFAULT NULL,
  `senttopic` varchar(200) DEFAULT NULL,
  `sentbillinfo` text DEFAULT NULL,
  `sentremark` text DEFAULT NULL,
  `senttime` datetime DEFAULT NULL,
  `sentbyID` int(10) unsigned DEFAULT NULL,
  `mailfrom` varchar(200) DEFAULT NULL,
  `sendername` varchar(50) DEFAULT NULL,
  `bill_import_done` varchar(100) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`loginID`,`dproc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Durchgangsdatei Rechnungserfassung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `basket_kredipay`
--

DROP TABLE IF EXISTS `basket_kredipay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basket_kredipay` (
  `loginID` int(10) unsigned NOT NULL,
  `dproc` varchar(50) NOT NULL,
  `rgid` int(10) unsigned DEFAULT NULL,
  `version` smallint(5) unsigned NOT NULL DEFAULT 0,
  `taskdate` datetime DEFAULT NULL,
  `taskedID` int(10) unsigned DEFAULT NULL,
  `wip` varchar(20) DEFAULT NULL,
  `phase` varchar(20) DEFAULT NULL,
  `offReason` varchar(20) DEFAULT NULL,
  `bill_summary` text DEFAULT NULL,
  `ressortID` int(10) unsigned DEFAULT NULL,
  `suplist` varchar(250) DEFAULT NULL,
  `permlist` varchar(250) DEFAULT NULL,
  `numRights` smallint(5) unsigned DEFAULT NULL,
  `msgRights` varchar(20) DEFAULT NULL,
  `ok2allocate` tinyint(3) unsigned DEFAULT NULL,
  `deptID` int(10) unsigned DEFAULT NULL,
  `deptLead` varchar(100) DEFAULT NULL,
  `proposeID` int(10) unsigned DEFAULT NULL,
  `proposeTime` datetime DEFAULT NULL,
  `supID` int(10) unsigned DEFAULT NULL,
  `clearID` int(10) unsigned DEFAULT NULL,
  `clearTime` datetime DEFAULT NULL,
  `orgID` int(10) unsigned DEFAULT NULL,
  `critVendor` smallint(5) unsigned DEFAULT NULL,
  `dfborgsOkay` varchar(20) DEFAULT NULL,
  `show_eval` tinyint(3) unsigned DEFAULT NULL,
  `budgareaOk` varchar(20) DEFAULT NULL,
  `quantityOk` varchar(20) DEFAULT NULL,
  `unitprizeOk` varchar(20) DEFAULT NULL,
  `surchargesOk` varchar(20) DEFAULT NULL,
  `deductOk` varchar(20) DEFAULT NULL,
  `calcOk` varchar(20) DEFAULT NULL,
  `invcur` varchar(3) DEFAULT NULL,
  `invsum` decimal(12,2) DEFAULT NULL,
  `discounted` varchar(20) DEFAULT NULL,
  `show_disc` tinyint(3) unsigned DEFAULT NULL,
  `discountperc` decimal(5,1) DEFAULT NULL,
  `discountdateloc` varchar(29) DEFAULT NULL,
  `discountlimdays` smallint(5) unsigned DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `_istatus` varchar(50) DEFAULT NULL,
  `_ivendor` int(10) unsigned DEFAULT NULL,
  `_ivendorname` varchar(100) DEFAULT NULL,
  `_iinvnum` varchar(20) DEFAULT NULL,
  `_iinvdate` date DEFAULT NULL,
  `_ipayuntil` date DEFAULT NULL,
  `_iinvcur` varchar(3) NOT NULL DEFAULT 'CHF',
  `_iinvsum` decimal(12,2) DEFAULT NULL,
  `_iinvdocUrl` text DEFAULT NULL,
  `_ibuyer` int(10) unsigned DEFAULT NULL,
  `_iremark` text DEFAULT NULL,
  `_iuploadID` int(10) unsigned DEFAULT NULL,
  `_ifwd2ID` int(10) unsigned DEFAULT NULL,
  `_isenttime` datetime DEFAULT NULL,
  `_isentbyID` int(10) unsigned DEFAULT NULL,
  `_isentto` varchar(200) DEFAULT NULL,
  `_isentremark` text DEFAULT NULL,
  `_ientered` datetime DEFAULT NULL,
  `_ioriginator` int(10) unsigned DEFAULT NULL,
  `_imodified` datetime DEFAULT NULL,
  `_imodifier` int(10) unsigned DEFAULT NULL,
  `idateloc` varchar(20) DEFAULT NULL,
  `paydateloc` varchar(20) DEFAULT NULL,
  `inv4free` tinyint(1) NOT NULL DEFAULT 0,
  `cur_sum` varchar(50) DEFAULT NULL,
  `invtype` varchar(50) DEFAULT NULL,
  `buyersh4` varchar(4) DEFAULT NULL,
  `buyername` varchar(100) DEFAULT NULL,
  `invdoc` varchar(30) DEFAULT NULL,
  `idocHref` varchar(250) DEFAULT NULL,
  `idocPage` varchar(400) DEFAULT NULL,
  `localdoclink` varchar(250) DEFAULT NULL,
  `localdocname` varchar(100) DEFAULT NULL,
  `sentcc` varchar(200) DEFAULT NULL,
  `sentbcc` varchar(250) DEFAULT NULL,
  `senttopic` varchar(200) DEFAULT NULL,
  `sentbillinfo` text DEFAULT NULL,
  `mailfrom` varchar(200) DEFAULT NULL,
  `sendername` varchar(50) DEFAULT NULL,
  `bill_import_done` varchar(100) DEFAULT NULL,
  `temp` varchar(500) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`loginID`,`dproc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Durchgangsdatei Rechnungserfassung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bau_werkzeuge`
--

DROP TABLE IF EXISTS `bau_werkzeuge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bau_werkzeuge` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Bezeichnung` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Zusatz` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Foto` longblob DEFAULT NULL,
  `Farbe1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Farbe2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Standort` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Benutzer` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'UserID Neuanlage / Änderung',
  `originator` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `modifier` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'UserID Neuanlage / Änderung',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Neu- / Änderungsdatum',
  `pivot` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=424 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bau_werkzeuge_1`
--

DROP TABLE IF EXISTS `bau_werkzeuge_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bau_werkzeuge_1` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Bezeichnung` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Zusatz` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Foto` longblob DEFAULT NULL,
  `Farbe1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Farbe2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Standort` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Benutzer` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'UserID Neuanlage / Änderung',
  `originator` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `modifier` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'UserID Neuanlage / Änderung',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Neu- / Änderungsdatum',
  `pivot` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bau_werkzeuge_farben`
--

DROP TABLE IF EXISTS `bau_werkzeuge_farben`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bau_werkzeuge_farben` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rgb` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `comment` tinytext COLLATE utf8_unicode_ci DEFAULT NULL,
  `originator` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `modifier` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UserID Neuanlage / Änderung',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Neu- / Änderungsdatum',
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bau_werkzeuge_hpsi`
--

DROP TABLE IF EXISTS `bau_werkzeuge_hpsi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bau_werkzeuge_hpsi` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Bezeichnung` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `Zusatz` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `Foto` longblob NOT NULL,
  `Farbe1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Farbe2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Standort` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `Benutzer` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UserID Neuanlage / Änderung',
  `originator` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `modifier` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'UserID Neuanlage / Änderung',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Neu- / Änderungsdatum',
  `pivot` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='zum Testen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dfb_job_desired`
--

DROP TABLE IF EXISTS `dfb_job_desired`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dfb_job_desired` (
  `gruppe` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `job` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `seq` smallint(6) DEFAULT 0,
  `hide` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`gruppe`,`job`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='für Frondienst-Anmeldeformular';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dfbag_gv_anmeld_basket`
--

DROP TABLE IF EXISTS `dg_dfbag_gv_anmeld_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dfbag_gv_anmeld_basket` (
  `_sessionID_` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp(),
  `_lastUserIP_` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auto` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `Idnr` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `firstname` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `lastname` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `street` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `zip` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `city` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `phone` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `email` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `remarks` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `userip` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `report` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `participate` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `lastname_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `firstname_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `street_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `zip_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `city_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `phone_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `submit` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_report` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_finstat` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_busres` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_discharge` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_selboard` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_selchair` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_selvice` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_additional` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_particip` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `gv_inhaber` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `gv_splitt` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_statuten` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `gv_500` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `gv_handelsreg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `gv_kapitalred` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='basket table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dfbag_gv_anmeld_complStep`
--

DROP TABLE IF EXISTS `dg_dfbag_gv_anmeld_complStep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dfbag_gv_anmeld_complStep` (
  `_sessionID_` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `_stepCompleted_` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='basket table of completed steps';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dfbag_gv_anmeld_keep`
--

DROP TABLE IF EXISTS `dg_dfbag_gv_anmeld_keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dfbag_gv_anmeld_keep` (
  `_sessionID_` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp(),
  `_lastUserIP_` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auto` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `Idnr` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `firstname` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `lastname` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `street` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `zip` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `city` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `phone` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `email` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `remarks` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `userip` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `report` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `participate` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `lastname_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `firstname_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `street_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `zip_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `city_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `phone_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `submit` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_report` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_finstat` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_busres` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_discharge` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_selboard` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_selchair` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_selvice` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_additional` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_particip` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_inhaber` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `gv_splitt` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_statuten` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_kapitalred` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_500` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_handelsreg` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='basket table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dfbag_gv_anmeld_transfer`
--

DROP TABLE IF EXISTS `dg_dfbag_gv_anmeld_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dfbag_gv_anmeld_transfer` (
  `_auto_` int(11) NOT NULL AUTO_INCREMENT,
  `_sessionID_` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp(),
  `_lastUserIP_` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auto` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `Idnr` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `firstname` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `lastname` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `street` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `zip` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `city` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `phone` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `email` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `remarks` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `userip` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `report` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `participate` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `lastname_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `firstname_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `street_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `zip_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `city_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `phone_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `submit` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_report` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_finstat` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_busres` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_discharge` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_selboard` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_selchair` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_selvice` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_additional` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_particip` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_inhaber` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_splitt` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_statuten` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_kapitalred` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_500` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `gv_handelsreg` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  PRIMARY KEY (`_auto_`)
) ENGINE=MyISAM AUTO_INCREMENT=1206 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='transfer table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_admin`
--

DROP TABLE IF EXISTS `ep_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_admin` (
  `ident` int(10) unsigned NOT NULL COMMENT 'gem tb_ident',
  `r_short` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'DFB-Kurzzeichen',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'ausblenden ja/nein',
  `dispo` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'perm',
  `dispo_data` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '_trg' COMMENT 'Endung allfälliger Alternativ-Dateien',
  `dispo_from` date DEFAULT NULL COMMENT 'zuletzt gewähltes Anfangsdatum',
  `dispo_period` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'zuletzt gewählte Zeitdauer',
  `dispo_demand` varchar(250) DEFAULT NULL COMMENT 'zuletzt gewählte Dispo-Anforderungen',
  `o_actives` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `o_stats` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `o_dev` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `dispo_sele` datetime DEFAULT NULL COMMENT 'Zeitpunkt der letzten Auswahl',
  `dispo_main` varchar(50) DEFAULT NULL,
  `dispo_area` int(10) unsigned DEFAULT NULL,
  `dispo_skill` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `dispo_sim` int(10) unsigned NOT NULL DEFAULT 0,
  `dispo_dev` tinyint(3) unsigned DEFAULT NULL,
  `jobs` varchar(200) DEFAULT NULL,
  `dispolist` varchar(100) DEFAULT NULL,
  `is_admin` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'ist EP-Administrator',
  `entered` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Eingabezeitpunkt automatisch',
  `originator` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'initialer Erfasser',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Änderungszeitpunkt automatisch',
  `modifier` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'letzter Modifikator',
  PRIMARY KEY (`ident`),
  KEY `r_short` (`r_short`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Einsatzplanung: Administrationsrechte  und letzte Nutzungseinstellungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_area`
--

DROP TABLE IF EXISTS `ep_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_area` (
  `aid` smallint(5) NOT NULL,
  `area` varchar(2) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `partner` varchar(2) NOT NULL DEFAULT '' COMMENT 'Partnerbereich, nicht als Nachbar geltend',
  `offer` tinyint(1) DEFAULT 1,
  `dispo` tinyint(1) DEFAULT 1,
  `notify` tinyint(1) DEFAULT 1,
  `agenda` tinyint(1) DEFAULT 1,
  `stats` tinyint(1) DEFAULT 1,
  `lft` tinyint(3) unsigned DEFAULT NULL,
  `rgt` tinyint(3) unsigned DEFAULT NULL,
  `hide` tinyint(1) DEFAULT 0,
  `entered` datetime NOT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `seq` smallint(5) unsigned NOT NULL DEFAULT 99 COMMENT 'Reihenfolge',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Die Planungs-, resp Haupteinsatzbereiche (seit April 2020)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_area___0`
--

DROP TABLE IF EXISTS `ep_area___0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_area___0` (
  `aid` smallint(5) unsigned NOT NULL,
  `seq` smallint(5) unsigned NOT NULL DEFAULT 99 COMMENT 'Reihenfolge',
  `area` varchar(2) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `offer` tinyint(1) DEFAULT 1,
  `dispo` tinyint(1) DEFAULT 1,
  `notify` tinyint(1) DEFAULT 1,
  `agenda` tinyint(1) DEFAULT 1,
  `stats` tinyint(1) DEFAULT 1,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Die Planungs-, resp Haupteinsatzbereiche (bis Feb 2019 genutzt)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_area___1`
--

DROP TABLE IF EXISTS `ep_area___1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_area___1` (
  `aid` smallint(5) NOT NULL,
  `area` varchar(2) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `partner` varchar(2) NOT NULL DEFAULT '' COMMENT 'Partnerbereich, nicht als Nachbar geltend',
  `offer` tinyint(1) DEFAULT 1,
  `dispo` tinyint(1) DEFAULT 1,
  `notify` tinyint(1) DEFAULT 1,
  `agenda` tinyint(1) DEFAULT 1,
  `stats` tinyint(1) DEFAULT 1,
  `lft` tinyint(3) unsigned DEFAULT NULL,
  `rgt` tinyint(3) unsigned DEFAULT NULL,
  `hide` tinyint(1) DEFAULT 0,
  `entered` datetime NOT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `seq` smallint(5) unsigned NOT NULL DEFAULT 99 COMMENT 'Reihenfolge',
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Die Planungs-, resp Haupteinsatzbereiche (Feb 2019 - März 2020), dann Spalten hinzugefügt';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_assign`
--

DROP TABLE IF EXISTS `ep_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_assign` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `r_short` varchar(4) DEFAULT NULL COMMENT 'Kürzel des Mitarbeiters',
  `assigner` int(10) unsigned DEFAULT NULL COMMENT 'EP-Planer',
  `assigned` timestamp NOT NULL DEFAULT current_timestamp(),
  `r_a_short` varchar(4) DEFAULT NULL COMMENT 'Kürzel des Assigners',
  `opsday` date NOT NULL,
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'ID des zugehörigen ep_service_plan',
  `rid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID des Reallocationauftrages',
  `grp` varchar(50) NOT NULL DEFAULT '' COMMENT 'Arbeitsgruppenbezeichnung',
  `grphead` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Leiter einer Arbeitsgruppe',
  `r_spname` varchar(50) DEFAULT NULL COMMENT 'Tourbezeichnung, codiert als dtcode#instr_v0x',
  `remark` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'open' COMMENT 'planning / VERSAND / closed / CONFIRMED / added',
  `action` varchar(20) NOT NULL DEFAULT 'add' COMMENT 'add / remove',
  `partn` varchar(250) DEFAULT NULL,
  `close_time` datetime NOT NULL DEFAULT '9999-12-31 00:00:00' COMMENT 'Zeitpunkt des Versands nach Planung oder Streichung',
  `cancelled` date NOT NULL DEFAULT '9999-12-31' COMMENT 'Streichdatum',
  `notb4` date NOT NULL DEFAULT '0000-00-00',
  `accepted` datetime DEFAULT NULL COMMENT 'Bestätigung, auch Zeitpunkt des Übertrags in ep_duty',
  `dtid` int(10) unsigned zerofill DEFAULT NULL COMMENT '(nicht benutzt)',
  PRIMARY KEY (`aid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `spid` (`spid`),
  KEY `r_short` (`r_short`),
  KEY `assigner` (`assigner`),
  KEY `status` (`status`),
  KEY `close_time` (`close_time`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=38844 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zuweisungsplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_assign2remove`
--

DROP TABLE IF EXISTS `ep_assign2remove`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_assign2remove` (
  `did` int(10) unsigned DEFAULT 0 COMMENT 'KEY',
  `aid` int(10) unsigned NOT NULL DEFAULT 0,
  `ident` int(10) unsigned NOT NULL,
  `r_short` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Kürzel des Mitarbeiters',
  `assigner` int(10) unsigned DEFAULT NULL COMMENT 'EP-Planer',
  `assigned` timestamp NOT NULL DEFAULT current_timestamp(),
  `r_a_short` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Kürzel des Assigners',
  `opsday` date NOT NULL,
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'ID des zugehörigen ep_service_plan',
  `rid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID des Reallocationauftrages',
  `grp` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '' COMMENT 'Arbeitsgruppenbezeichnung',
  `grphead` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Leiter einer Arbeitsgruppe',
  `r_spname` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Tourbezeichnung, codiert als dtcode#instr_v0x',
  `remark` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'open' COMMENT 'planning / VERSAND / closed / CONFIRMED / added',
  `action` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'add' COMMENT 'add / remove',
  `partn` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `close_time` datetime NOT NULL DEFAULT '9999-12-31 00:00:00' COMMENT 'Zeitpunkt des Planungsendes = Versand',
  `cancelled` date NOT NULL DEFAULT '9999-12-31' COMMENT 'Streichdatum',
  `notb4` date NOT NULL DEFAULT '0000-00-00',
  `accepted` datetime DEFAULT NULL COMMENT 'Bestätigung, auch Zeitpunkt des Übertrags in ep_duty',
  `dtid` int(10) unsigned zerofill DEFAULT NULL COMMENT '(nicht benutzt)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_assign___2013`
--

DROP TABLE IF EXISTS `ep_assign___2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_assign___2013` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `r_short` varchar(4) DEFAULT NULL,
  `assigner` int(10) unsigned DEFAULT NULL,
  `assigned` timestamp NOT NULL DEFAULT current_timestamp(),
  `r_a_short` varchar(4) DEFAULT NULL,
  `opsday` date NOT NULL,
  `spid` int(10) unsigned DEFAULT NULL,
  `r_spname` varchar(50) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'open',
  `action` varchar(20) NOT NULL DEFAULT 'add',
  `partn` varchar(250) DEFAULT NULL,
  `close_time` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `cancelled` date NOT NULL DEFAULT '9999-12-31',
  `notb4` date NOT NULL DEFAULT '0000-00-00',
  `accepted` datetime DEFAULT NULL,
  `dtid` int(10) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`aid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `spid` (`spid`),
  KEY `r_short` (`r_short`),
  KEY `assigner` (`assigner`),
  KEY `status` (`status`),
  KEY `close_time` (`close_time`)
) ENGINE=MyISAM AUTO_INCREMENT=1927 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zuweisungsplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_assign___20160918`
--

DROP TABLE IF EXISTS `ep_assign___20160918`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_assign___20160918` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `r_short` varchar(4) DEFAULT NULL,
  `assigner` int(10) unsigned DEFAULT NULL,
  `assigned` timestamp NOT NULL DEFAULT current_timestamp(),
  `r_a_short` varchar(4) DEFAULT NULL,
  `opsday` date NOT NULL,
  `spid` int(10) unsigned DEFAULT NULL,
  `r_spname` varchar(50) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'open',
  `action` varchar(20) NOT NULL DEFAULT 'add',
  `partn` varchar(250) DEFAULT NULL,
  `close_time` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `cancelled` date NOT NULL DEFAULT '9999-12-31',
  `notb4` date NOT NULL DEFAULT '0000-00-00',
  `accepted` datetime DEFAULT NULL,
  `dtid` int(10) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`aid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `spid` (`spid`),
  KEY `r_short` (`r_short`),
  KEY `assigner` (`assigner`),
  KEY `status` (`status`),
  KEY `close_time` (`close_time`)
) ENGINE=MyISAM AUTO_INCREMENT=13335 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zuweisungsplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_assign___20190306`
--

DROP TABLE IF EXISTS `ep_assign___20190306`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_assign___20190306` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `r_short` varchar(4) DEFAULT NULL,
  `assigner` int(10) unsigned DEFAULT NULL,
  `assigned` timestamp NOT NULL DEFAULT current_timestamp(),
  `r_a_short` varchar(4) DEFAULT NULL,
  `opsday` date NOT NULL,
  `spid` int(10) unsigned DEFAULT NULL,
  `r_spname` varchar(50) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'open',
  `action` varchar(20) NOT NULL DEFAULT 'add',
  `partn` varchar(250) DEFAULT NULL,
  `close_time` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `cancelled` date NOT NULL DEFAULT '9999-12-31',
  `notb4` date NOT NULL DEFAULT '0000-00-00',
  `accepted` datetime DEFAULT NULL,
  `dtid` int(10) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`aid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `spid` (`spid`),
  KEY `r_short` (`r_short`),
  KEY `assigner` (`assigner`),
  KEY `status` (`status`),
  KEY `close_time` (`close_time`)
) ENGINE=MyISAM AUTO_INCREMENT=22329 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zuweisungsplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_assign___20191218`
--

DROP TABLE IF EXISTS `ep_assign___20191218`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_assign___20191218` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `r_short` varchar(4) DEFAULT NULL COMMENT 'Kürzel des Mitarbeiters',
  `assigner` int(10) unsigned DEFAULT NULL COMMENT 'EP-Planer',
  `assigned` timestamp NOT NULL DEFAULT current_timestamp(),
  `r_a_short` varchar(4) DEFAULT NULL COMMENT 'Kürzel des Assigners',
  `opsday` date NOT NULL,
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'ID des zugehörigen ep_service_plan',
  `r_spname` varchar(50) DEFAULT NULL COMMENT 'Tourbezeichnung, codiert als dtcode#instr_v0x',
  `remark` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'open' COMMENT 'planning / VERSAND / closed / CONFIRMED / added',
  `action` varchar(20) NOT NULL DEFAULT 'add' COMMENT 'add / remove',
  `partn` varchar(250) DEFAULT NULL,
  `close_time` datetime NOT NULL DEFAULT '9999-12-31 00:00:00' COMMENT 'Zeitpunkt des Planungsendes = Versand',
  `cancelled` date NOT NULL DEFAULT '9999-12-31' COMMENT 'Streichdatum',
  `notb4` date NOT NULL DEFAULT '0000-00-00',
  `accepted` datetime DEFAULT NULL COMMENT 'Bestätigung, auch Zeitpunkt des Übertrags in ep_duty',
  `dtid` int(10) unsigned zerofill DEFAULT NULL COMMENT '(nicht benutzt)',
  PRIMARY KEY (`aid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `spid` (`spid`),
  KEY `r_short` (`r_short`),
  KEY `assigner` (`assigner`),
  KEY `status` (`status`),
  KEY `close_time` (`close_time`)
) ENGINE=MyISAM AUTO_INCREMENT=26492 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zuweisungsplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_assign___20200318`
--

DROP TABLE IF EXISTS `ep_assign___20200318`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_assign___20200318` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `r_short` varchar(4) DEFAULT NULL COMMENT 'Kürzel des Mitarbeiters',
  `assigner` int(10) unsigned DEFAULT NULL COMMENT 'EP-Planer',
  `assigned` timestamp NOT NULL DEFAULT current_timestamp(),
  `r_a_short` varchar(4) DEFAULT NULL COMMENT 'Kürzel des Assigners',
  `opsday` date NOT NULL,
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'ID des zugehörigen ep_service_plan',
  `rid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID des Reallocationauftrages',
  `grp` varchar(50) NOT NULL DEFAULT '' COMMENT 'Arbeitsgruppenbezeichnung',
  `grphead` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Leiter einer Arbeitsgruppe',
  `r_spname` varchar(50) DEFAULT NULL COMMENT 'Tourbezeichnung, codiert als dtcode#instr_v0x',
  `remark` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'open' COMMENT 'planning / VERSAND / closed / CONFIRMED / added',
  `action` varchar(20) NOT NULL DEFAULT 'add' COMMENT 'add / remove',
  `partn` varchar(250) DEFAULT NULL,
  `close_time` datetime NOT NULL DEFAULT '9999-12-31 00:00:00' COMMENT 'Zeitpunkt des Planungsendes = Versand',
  `cancelled` date NOT NULL DEFAULT '9999-12-31' COMMENT 'Streichdatum',
  `notb4` date NOT NULL DEFAULT '0000-00-00',
  `accepted` datetime DEFAULT NULL COMMENT 'Bestätigung, auch Zeitpunkt des Übertrags in ep_duty',
  `dtid` int(10) unsigned zerofill DEFAULT NULL COMMENT '(nicht benutzt)',
  PRIMARY KEY (`aid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `spid` (`spid`),
  KEY `r_short` (`r_short`),
  KEY `assigner` (`assigner`),
  KEY `status` (`status`),
  KEY `close_time` (`close_time`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=28308 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zuweisungsplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_assign_dev`
--

DROP TABLE IF EXISTS `ep_assign_dev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_assign_dev` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `r_short` varchar(4) DEFAULT NULL,
  `assigner` int(10) unsigned DEFAULT NULL,
  `r_a_short` varchar(4) DEFAULT NULL,
  `opsday` date NOT NULL,
  `spid` int(10) unsigned DEFAULT NULL,
  `r_spname` varchar(50) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'open',
  `assigned` timestamp NOT NULL DEFAULT current_timestamp(),
  `close_time` datetime DEFAULT '9999-12-31 00:00:00',
  `cancelled` date DEFAULT '9999-12-31',
  `dtid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`aid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `spid` (`spid`),
  KEY `assigner` (`assigner`),
  KEY `r_short` (`r_short`),
  KEY `status` (`status`),
  KEY `close_time` (`close_time`)
) ENGINE=MyISAM AUTO_INCREMENT=899 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zuweisungsplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_assign_dev__2013`
--

DROP TABLE IF EXISTS `ep_assign_dev__2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_assign_dev__2013` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `r_short` varchar(4) DEFAULT NULL,
  `assigner` int(10) unsigned DEFAULT NULL,
  `r_a_short` varchar(4) DEFAULT NULL,
  `opsday` date NOT NULL,
  `spid` int(10) unsigned DEFAULT NULL,
  `r_spname` varchar(50) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'open',
  `assigned` timestamp NOT NULL DEFAULT current_timestamp(),
  `close_time` datetime DEFAULT '9999-12-31 00:00:00',
  `cancelled` date DEFAULT '9999-12-31',
  `dtid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`aid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `spid` (`spid`),
  KEY `assigner` (`assigner`),
  KEY `r_short` (`r_short`),
  KEY `status` (`status`),
  KEY `close_time` (`close_time`)
) ENGINE=MyISAM AUTO_INCREMENT=899 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zuweisungsplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_assign_dev_leer`
--

DROP TABLE IF EXISTS `ep_assign_dev_leer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_assign_dev_leer` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `r_short` varchar(4) DEFAULT NULL,
  `assigner` int(10) unsigned DEFAULT NULL,
  `r_a_short` varchar(4) DEFAULT NULL,
  `opsday` date NOT NULL,
  `spid` int(10) unsigned DEFAULT NULL,
  `r_spname` varchar(50) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'open',
  `assigned` timestamp NOT NULL DEFAULT current_timestamp(),
  `close_time` datetime DEFAULT '9999-12-31 00:00:00',
  `cancelled` date DEFAULT '9999-12-31',
  `dtid` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`aid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `spid` (`spid`)
) ENGINE=MyISAM AUTO_INCREMENT=899 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zuweisungsplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_assign_trg`
--

DROP TABLE IF EXISTS `ep_assign_trg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_assign_trg` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `r_short` varchar(4) DEFAULT NULL,
  `assigner` int(10) unsigned DEFAULT NULL,
  `r_a_short` varchar(4) DEFAULT NULL,
  `opsday` date NOT NULL,
  `spid` int(10) unsigned DEFAULT NULL,
  `r_spname` varchar(50) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'open',
  `action` varchar(20) NOT NULL DEFAULT 'add',
  `partn` varchar(250) DEFAULT NULL,
  `assigned` timestamp NOT NULL DEFAULT current_timestamp(),
  `close_time` datetime NOT NULL DEFAULT '9999-12-31 00:00:00',
  `cancelled` date NOT NULL DEFAULT '9999-12-31',
  `notb4` date NOT NULL DEFAULT '0000-00-00',
  `accepted` datetime DEFAULT NULL,
  `dtid` int(10) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`aid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `spid` (`spid`)
) ENGINE=MyISAM AUTO_INCREMENT=905 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zuweisungsplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour`
--

DROP TABLE IF EXISTS `ep_dtour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour` (
  `dtid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area` int(11) DEFAULT 0 COMMENT 'ident (Einsatzplanungs-Bereich)',
  `layer` varchar(2) DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dtcode` varchar(10) DEFAULT NULL,
  `yearfrom` varchar(4) DEFAULT NULL COMMENT 'wird seit V2.0 als ''opsyear'' genutzt',
  `job` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 für Dienst-, resp. Arbeitstour',
  `selfduty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'löst bei commit=yes eine Dienstregistrierung aus',
  `eligibility` varchar(20) NOT NULL DEFAULT 'bySkill' COMMENT 'Auswahlkriterium: Skill oder Gruppenzugehörigkeit',
  `azubis` varchar(20) NOT NULL DEFAULT 'mit' COMMENT 'Auswahl mit/nur/ohne Azubis',
  `shortname` varchar(24) DEFAULT NULL COMMENT 'Art der Tätigkeit',
  `route` varchar(255) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL COMMENT 'Nutzniesser der Tätigkeit',
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) DEFAULT NULL,
  `r_via` varchar(255) DEFAULT NULL,
  `regio` varchar(10) DEFAULT NULL COMMENT 'geografischer Einsatzraum',
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) NOT NULL,
  `multip` varchar(100) NOT NULL,
  `orderby` varchar(20) DEFAULT NULL COMMENT 'auftraggebende DFB-Abteilung',
  `prodarea` int(10) unsigned DEFAULT NULL COMMENT 'Produktionsbereich gem fi_prodarea',
  `prodcat` varchar(20) DEFAULT NULL,
  `r_prereqs` varchar(100) NOT NULL,
  `quali_choice` varchar(20) DEFAULT NULL COMMENT 'Gruppenzugehörigkeit gemäss td_param(quali_choice)',
  `r_grp` varchar(20) DEFAULT NULL COMMENT 'qprofil, sekundär benutzt zur thematischen Gruppenbildung',
  `dtlead` int(10) unsigned DEFAULT NULL,
  `pre_night` varchar(20) DEFAULT NULL,
  `breakfast` varchar(20) DEFAULT NULL,
  `lunch` varchar(20) DEFAULT NULL,
  `dinner` varchar(20) DEFAULT NULL,
  `any1` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort morgens beliebig wählbar',
  `any2` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort mittags beliebig wählbar',
  `any3` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort abends beliebig wählbar',
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `inuse` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Pivot: Anzahl der Nutzungen in ep_service_plan',
  `day1` date DEFAULT NULL COMMENT 'Pivot: Tag der ersten Nutzung gem ep_service_plan',
  `byskill` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'nach Skillmethode, gemäss eligibility',
  `bygroup` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'nach Gruppenmethode, gemäss eligibility',
  `bytask` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'nach Arbeitsplanmethode, gemäss eligibility',
  `qprio` tinyint(3) unsigned DEFAULT NULL COMMENT 'prio aus qprofile (zwecks Vergleich mit prio)',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `yearto` varchar(4) NOT NULL DEFAULT '9999' COMMENT 'V2: ab hier entnutzen oder bereits obsolet',
  `dutytype` varchar(20) NOT NULL DEFAULT 'duty' COMMENT 'grp/grp_avbl: Gruppentouren, pro/pro_avbl:Profi-Tour',
  `commit` varchar(10) DEFAULT NULL,
  `byScope` varchar(100) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `dtcode_old` varchar(5) DEFAULT NULL COMMENT 'obsolet, aber in Formular benutzt',
  PRIMARY KEY (`dtid`),
  UNIQUE KEY `id_from` (`dtcode`,`yearfrom`),
  KEY `area` (`area`),
  KEY `yearfrom` (`yearfrom`),
  KEY `layer` (`layer`),
  KEY `commit` (`commit`),
  KEY `eligibility` (`eligibility`)
) ENGINE=MyISAM AUTO_INCREMENT=2288 DEFAULT CHARSET=utf8 COMMENT='Diensttouren-Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour0`
--

DROP TABLE IF EXISTS `ep_dtour0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour0` (
  `dtid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area` int(11) DEFAULT 0,
  `layer` varchar(2) DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dtcode` varchar(10) DEFAULT NULL,
  `yearfrom` varchar(4) DEFAULT NULL COMMENT 'wird seit V2.0 als ''opsyear'' genutzt',
  `yearto` varchar(4) NOT NULL DEFAULT '9999' COMMENT 'V2: obsolet',
  `dutytype` varchar(20) NOT NULL DEFAULT 'duty' COMMENT 'grp/grp_avbl: Gruppentouren, pro/pro_avbl:Profi-Tour',
  `shortname` varchar(20) DEFAULT NULL COMMENT 'Art der Tätigkeit',
  `route` varchar(255) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL COMMENT 'Nutzniesser der Tätigkeit',
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) DEFAULT NULL,
  `r_via` varchar(255) DEFAULT NULL,
  `regio` varchar(10) DEFAULT NULL COMMENT 'geografischer Einsatzraum',
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) NOT NULL,
  `byScope` varchar(100) NOT NULL,
  `multip` varchar(100) NOT NULL,
  `orderby` varchar(20) DEFAULT NULL COMMENT 'auftraggebende DFB-Abteilung',
  `prodarea` int(10) unsigned DEFAULT NULL COMMENT 'Produktionsbereich gem fi_prodarea',
  `prodcat` varchar(20) DEFAULT NULL,
  `r_prereqs` varchar(100) NOT NULL,
  `commit` varchar(10) DEFAULT NULL,
  `selfduty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'löst bei commit=yes eine Dienstregistrierung aus',
  `quali_choice` varchar(20) DEFAULT NULL,
  `r_grp` varchar(20) NOT NULL,
  `dtlead` int(10) unsigned DEFAULT NULL,
  `pre_night` varchar(20) DEFAULT NULL,
  `breakfast` varchar(20) DEFAULT NULL,
  `lunch` varchar(20) DEFAULT NULL,
  `dinner` varchar(20) DEFAULT NULL,
  `any1` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort morgens beliebig wählbar',
  `any2` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort mittags beliebig wählbar',
  `any3` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort abends beliebig wählbar',
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `inuse` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Pivot: Anzahl der Nutzungen in ep_service_plan',
  `day1` date DEFAULT NULL COMMENT 'Pivot: Tag der ersten Nutzung gem ep_service_plan',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `dtcode_old` varchar(5) DEFAULT NULL COMMENT 'obsolet, aber in Formular benutzt',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`dtid`),
  UNIQUE KEY `id_from` (`dtcode`,`yearfrom`),
  KEY `area` (`area`),
  KEY `yearto` (`yearto`),
  KEY `yearfrom` (`yearfrom`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `layer` (`layer`),
  KEY `commit` (`commit`)
) ENGINE=MyISAM AUTO_INCREMENT=1513 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Diensttouren-Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour2__arc`
--

DROP TABLE IF EXISTS `ep_dtour2__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour2__arc` (
  `dtid` text DEFAULT NULL,
  `area` text DEFAULT NULL,
  `layer` text DEFAULT NULL,
  `prio` text DEFAULT NULL,
  `dtcode` text DEFAULT NULL,
  `yearfrom` text DEFAULT NULL,
  `yearto` text DEFAULT NULL,
  `dutytype` text DEFAULT NULL,
  `shortname` text DEFAULT NULL,
  `route` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `start_time` text DEFAULT NULL,
  `start_place` text DEFAULT NULL,
  `r_end_time` text DEFAULT NULL,
  `r_end_place` text DEFAULT NULL,
  `r_via` text DEFAULT NULL,
  `regio` text DEFAULT NULL,
  `r_worktime` text DEFAULT NULL,
  `r_attendance` text DEFAULT NULL,
  `byPeriod` text DEFAULT NULL,
  `byScope` text DEFAULT NULL,
  `multip` text DEFAULT NULL,
  `orderby` text DEFAULT NULL,
  `prodarea` text DEFAULT NULL,
  `prodcat` text DEFAULT NULL,
  `r_prereqs` text DEFAULT NULL,
  `commit` text DEFAULT NULL,
  `selfduty` text DEFAULT NULL,
  `quali_choice` text DEFAULT NULL,
  `r_grp` text DEFAULT NULL,
  `dtlead` text DEFAULT NULL,
  `pre_night` text DEFAULT NULL,
  `breakfast` text DEFAULT NULL,
  `lunch` text DEFAULT NULL,
  `dinner` text DEFAULT NULL,
  `any1` text DEFAULT NULL,
  `any2` text DEFAULT NULL,
  `any3` text DEFAULT NULL,
  `seq_count` text DEFAULT NULL,
  `inuse` text DEFAULT NULL,
  `day1` text DEFAULT NULL,
  `validfrom` text DEFAULT NULL,
  `validto` text DEFAULT NULL,
  `dtcode_old` text DEFAULT NULL,
  `entered` text DEFAULT NULL,
  `originator` text DEFAULT NULL,
  `modified` text DEFAULT NULL,
  `modifier` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour2_basket`
--

DROP TABLE IF EXISTS `ep_dtour2_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour2_basket` (
  `dtid` int(11) NOT NULL AUTO_INCREMENT,
  `area` int(11) DEFAULT 0,
  `layer` varchar(2) DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dtcode` varchar(10) DEFAULT NULL,
  `yearfrom` varchar(4) DEFAULT NULL,
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `dutytype` varchar(20) DEFAULT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) DEFAULT NULL,
  `r_via` varchar(255) DEFAULT NULL,
  `regio` varchar(10) DEFAULT NULL,
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) NOT NULL,
  `byScope` varchar(100) NOT NULL,
  `multip` varchar(100) NOT NULL,
  `orderby` varchar(20) DEFAULT NULL,
  `prodarea` int(10) unsigned DEFAULT NULL,
  `prodcat` varchar(20) DEFAULT NULL,
  `r_prereqs` varchar(100) NOT NULL,
  `commit` varchar(10) NOT NULL,
  `selfduty` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `r_grp` varchar(20) NOT NULL,
  `quali_choice` varchar(20) DEFAULT NULL,
  `dtlead` int(10) unsigned DEFAULT NULL,
  `pre_night` varchar(20) DEFAULT NULL,
  `breakfast` varchar(20) DEFAULT NULL,
  `lunch` varchar(20) DEFAULT NULL,
  `dinner` varchar(20) DEFAULT NULL,
  `any1` tinyint(3) unsigned DEFAULT NULL,
  `any2` tinyint(3) unsigned DEFAULT NULL,
  `any3` tinyint(3) unsigned DEFAULT NULL,
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `inuse` int(10) unsigned NOT NULL DEFAULT 0,
  `day1` date DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `dtcode_old` smallint(5) unsigned DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`dtid`),
  UNIQUE KEY `id_from` (`dtcode`,`yearfrom`),
  KEY `area` (`area`),
  KEY `yearto` (`yearto`),
  KEY `yearfrom` (`yearfrom`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=1512 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Arbeitsdatei Diensttouren-Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour2_new`
--

DROP TABLE IF EXISTS `ep_dtour2_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour2_new` (
  `dtid` int(11) NOT NULL,
  `area` int(11) DEFAULT 0,
  `layer` varchar(2) DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dtcode` varchar(10) DEFAULT NULL,
  `yearfrom` varchar(4) DEFAULT NULL,
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `dutytype` varchar(20) DEFAULT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) DEFAULT NULL,
  `r_via` varchar(255) DEFAULT NULL,
  `regio` varchar(10) DEFAULT NULL,
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) NOT NULL,
  `byScope` varchar(100) NOT NULL,
  `multip` varchar(100) NOT NULL,
  `orderby` varchar(20) DEFAULT NULL,
  `prodarea` int(10) unsigned DEFAULT NULL,
  `prodcat` varchar(20) DEFAULT NULL,
  `r_prereqs` varchar(100) NOT NULL,
  `commit` varchar(10) NOT NULL,
  `selfduty` tinyint(3) unsigned zerofill NOT NULL DEFAULT 000,
  `quali_choice` varchar(20) DEFAULT NULL,
  `r_grp` varchar(20) NOT NULL,
  `dtlead` int(10) unsigned DEFAULT NULL,
  `pre_night` varchar(20) DEFAULT NULL,
  `breakfast` varchar(20) DEFAULT NULL,
  `lunch` varchar(20) DEFAULT NULL,
  `dinner` varchar(20) DEFAULT NULL,
  `any1` tinyint(3) unsigned DEFAULT NULL,
  `any2` tinyint(3) unsigned DEFAULT NULL,
  `any3` tinyint(3) unsigned DEFAULT NULL,
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `inuse` int(10) unsigned NOT NULL DEFAULT 0,
  `day1` date DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `dtcode_old` smallint(5) unsigned DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `admin` int(10) unsigned NOT NULL,
  `ok` tinyint(3) unsigned DEFAULT 0,
  `edited` tinyint(3) unsigned DEFAULT 0,
  `opsid_new` varchar(10) DEFAULT NULL,
  `yearfrom_new` varchar(4) DEFAULT NULL,
  `yearto_new` varchar(4) NOT NULL DEFAULT '9999',
  `area_new` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`admin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Basket NEU Diensttouren-Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour2_stage`
--

DROP TABLE IF EXISTS `ep_dtour2_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour2_stage` (
  `dtid` int(10) unsigned NOT NULL,
  `opt` varchar(20) NOT NULL,
  `seq` smallint(6) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `description` varchar(80) DEFAULT NULL,
  `activity` varchar(20) NOT NULL,
  `prereq` varchar(100) NOT NULL,
  `seq_start` time DEFAULT NULL,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `seq_end` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `mid_place1` varchar(20) NOT NULL,
  `mid_place2` varchar(20) NOT NULL,
  `mid_place3` varchar(20) NOT NULL,
  `end_place` varchar(10) NOT NULL,
  `dist` int(10) unsigned DEFAULT 0,
  `direc` varchar(10) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`dtid`,`seq`),
  KEY `activity` (`activity`),
  KEY `modified` (`modified`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Diensttouren-Etappen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour2_stage__arc`
--

DROP TABLE IF EXISTS `ep_dtour2_stage__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour2_stage__arc` (
  `dtid` text DEFAULT NULL,
  `opt` text DEFAULT NULL,
  `seq` text DEFAULT NULL,
  `sort` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `activity` text DEFAULT NULL,
  `prereq` text DEFAULT NULL,
  `seq_start` text DEFAULT NULL,
  `duration` text DEFAULT NULL,
  `seq_end` text DEFAULT NULL,
  `start_place` text DEFAULT NULL,
  `mid_place1` text DEFAULT NULL,
  `mid_place2` text DEFAULT NULL,
  `mid_place3` text DEFAULT NULL,
  `end_place` text DEFAULT NULL,
  `dist` text DEFAULT NULL,
  `direc` text DEFAULT NULL,
  `entered` text DEFAULT NULL,
  `originator` text DEFAULT NULL,
  `modified` text DEFAULT NULL,
  `modifier` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour2_stage_basket`
--

DROP TABLE IF EXISTS `ep_dtour2_stage_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour2_stage_basket` (
  `dtid` int(11) NOT NULL,
  `opt` varchar(20) NOT NULL,
  `seq` smallint(6) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `description` varchar(80) DEFAULT NULL,
  `activity` varchar(20) NOT NULL,
  `prereq` varchar(100) NOT NULL,
  `seq_start` time DEFAULT NULL,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `seq_end` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `mid_place1` varchar(20) NOT NULL,
  `mid_place2` varchar(20) NOT NULL,
  `mid_place3` varchar(20) NOT NULL,
  `end_place` varchar(10) NOT NULL,
  `dist` int(10) unsigned DEFAULT 0,
  `direc` varchar(10) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`dtid`,`seq`),
  KEY `activity` (`activity`),
  KEY `modified` (`modified`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Arbeitsdatei Diensttouren-Etappen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtourN`
--

DROP TABLE IF EXISTS `ep_dtourN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtourN` (
  `dtid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area` int(11) DEFAULT 0,
  `layer` tinyint(3) unsigned DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dtcode` varchar(10) DEFAULT NULL,
  `opsyear` varchar(4) DEFAULT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) DEFAULT NULL,
  `r_via` varchar(255) DEFAULT NULL,
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `regio` varchar(10) DEFAULT NULL COMMENT 'geografischer Einsatzraum',
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) NOT NULL,
  `byScope` varchar(100) NOT NULL,
  `multip` varchar(100) NOT NULL,
  `orderby` varchar(20) DEFAULT NULL COMMENT 'auftraggebende DFB-Abteilung',
  `prodarea` int(10) unsigned DEFAULT NULL COMMENT 'Produktionsbereich gem Vorgabetabelle',
  `prodcat` varchar(20) DEFAULT NULL,
  `r_prereqs` varchar(100) NOT NULL,
  `commit` varchar(10) DEFAULT NULL,
  `disposition` varchar(20) NOT NULL DEFAULT 'dispo' COMMENT 'Art der Tourenzuteilung',
  `selfduty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'löst bei commit=yes eine Dienstregistrierung aus',
  `quali_choice` varchar(20) DEFAULT NULL,
  `r_grp` varchar(20) NOT NULL,
  `dtlead` int(10) unsigned DEFAULT NULL,
  `pre_night` varchar(20) DEFAULT NULL,
  `breakfast` varchar(20) DEFAULT NULL,
  `lunch` varchar(20) DEFAULT NULL,
  `dinner` varchar(20) DEFAULT NULL,
  `any1` tinyint(3) unsigned DEFAULT NULL COMMENT 'Essensort morgens beliebig wählbar',
  `any2` tinyint(3) unsigned DEFAULT NULL COMMENT 'Essensort mittags beliebig wählbar',
  `any3` tinyint(3) unsigned DEFAULT NULL COMMENT 'Essensort abends beliebig wählbar',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `dtcode_old` varchar(5) DEFAULT NULL COMMENT 'obsolet, aber in Formular benutzt',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`dtid`),
  UNIQUE KEY `id_from` (`dtcode`,`opsyear`),
  KEY `area` (`area`),
  KEY `yearfrom` (`opsyear`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `layer` (`layer`),
  KEY `commit` (`commit`)
) ENGINE=MyISAM AUTO_INCREMENT=1136 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Diensttouren-Kopfdaten Version 2';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtourN__arc`
--

DROP TABLE IF EXISTS `ep_dtourN__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtourN__arc` (
  `dtid` text DEFAULT NULL,
  `area` text DEFAULT NULL,
  `layer` text DEFAULT NULL,
  `prio` text DEFAULT NULL,
  `dtcode` text DEFAULT NULL,
  `opsyear` text DEFAULT NULL,
  `shortname` text DEFAULT NULL,
  `route` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `start_time` text DEFAULT NULL,
  `start_place` text DEFAULT NULL,
  `r_end_time` text DEFAULT NULL,
  `r_end_place` text DEFAULT NULL,
  `r_via` text DEFAULT NULL,
  `seq_count` text DEFAULT NULL,
  `regio` text DEFAULT NULL,
  `r_worktime` text DEFAULT NULL,
  `r_attendance` text DEFAULT NULL,
  `byPeriod` text DEFAULT NULL,
  `byScope` text DEFAULT NULL,
  `multip` text DEFAULT NULL,
  `orderby` text DEFAULT NULL,
  `prodarea` text DEFAULT NULL,
  `prodcat` text DEFAULT NULL,
  `r_prereqs` text DEFAULT NULL,
  `commit` text DEFAULT NULL,
  `disposition` text DEFAULT NULL,
  `selfduty` text DEFAULT NULL,
  `quali_choice` text DEFAULT NULL,
  `r_grp` text DEFAULT NULL,
  `dtlead` text DEFAULT NULL,
  `pre_night` text DEFAULT NULL,
  `breakfast` text DEFAULT NULL,
  `lunch` text DEFAULT NULL,
  `dinner` text DEFAULT NULL,
  `any1` text DEFAULT NULL,
  `any2` text DEFAULT NULL,
  `any3` text DEFAULT NULL,
  `validfrom` text DEFAULT NULL,
  `validto` text DEFAULT NULL,
  `dtcode_old` text DEFAULT NULL,
  `entered` text DEFAULT NULL,
  `originator` text DEFAULT NULL,
  `modified` text DEFAULT NULL,
  `modifier` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtourN_basket`
--

DROP TABLE IF EXISTS `ep_dtourN_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtourN_basket` (
  `dtid` int(11) NOT NULL AUTO_INCREMENT,
  `area` int(11) DEFAULT 0,
  `layer` tinyint(3) unsigned DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dtcode` varchar(10) DEFAULT NULL,
  `opsyear` varchar(4) DEFAULT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) DEFAULT NULL,
  `r_via` varchar(255) DEFAULT NULL,
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `regio` varchar(10) DEFAULT NULL,
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) NOT NULL,
  `byScope` varchar(100) NOT NULL,
  `multip` varchar(100) NOT NULL,
  `orderby` varchar(20) DEFAULT NULL,
  `prodarea` int(10) unsigned DEFAULT NULL,
  `prodcat` varchar(20) DEFAULT NULL,
  `r_prereqs` varchar(100) NOT NULL,
  `commit` varchar(10) NOT NULL,
  `disposition` varchar(20) NOT NULL DEFAULT 'dispo',
  `selfduty` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `r_grp` varchar(20) NOT NULL,
  `quali_choice` varchar(20) DEFAULT NULL,
  `dtlead` int(10) unsigned DEFAULT NULL,
  `pre_night` varchar(20) DEFAULT NULL,
  `breakfast` varchar(20) DEFAULT NULL,
  `lunch` varchar(20) DEFAULT NULL,
  `dinner` varchar(20) DEFAULT NULL,
  `any1` tinyint(3) unsigned DEFAULT NULL,
  `any2` tinyint(3) unsigned DEFAULT NULL,
  `any3` tinyint(3) unsigned DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `dtcode_old` smallint(5) unsigned DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`dtid`),
  UNIQUE KEY `id_from` (`dtcode`,`opsyear`),
  KEY `area` (`area`),
  KEY `yearfrom` (`opsyear`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=1136 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Arbeitsdatei Diensttouren-Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtourN_new`
--

DROP TABLE IF EXISTS `ep_dtourN_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtourN_new` (
  `dtid` int(11) NOT NULL,
  `area` int(11) DEFAULT 0,
  `layer` tinyint(3) unsigned DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dtcode` varchar(10) DEFAULT NULL,
  `opsyear` varchar(4) DEFAULT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) DEFAULT NULL,
  `r_via` varchar(255) DEFAULT NULL,
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `regio` varchar(10) DEFAULT NULL,
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) NOT NULL,
  `byScope` varchar(100) NOT NULL,
  `multip` varchar(100) NOT NULL,
  `orderby` varchar(20) DEFAULT NULL,
  `prodarea` int(10) unsigned DEFAULT NULL,
  `prodcat` varchar(20) DEFAULT NULL,
  `r_prereqs` varchar(100) NOT NULL,
  `commit` varchar(10) NOT NULL,
  `disposition` varchar(20) NOT NULL DEFAULT 'dispo',
  `selfduty` tinyint(3) unsigned zerofill NOT NULL DEFAULT 000,
  `quali_choice` varchar(20) DEFAULT NULL,
  `r_grp` varchar(20) NOT NULL,
  `dtlead` int(10) unsigned DEFAULT NULL,
  `pre_night` varchar(20) DEFAULT NULL,
  `breakfast` varchar(20) DEFAULT NULL,
  `lunch` varchar(20) DEFAULT NULL,
  `dinner` varchar(20) DEFAULT NULL,
  `any1` tinyint(3) unsigned DEFAULT NULL,
  `any2` tinyint(3) unsigned DEFAULT NULL,
  `any3` tinyint(3) unsigned DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `dtcode_old` smallint(5) unsigned DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `admin` int(10) unsigned NOT NULL,
  `ok` tinyint(3) unsigned DEFAULT 0,
  `edited` tinyint(3) unsigned DEFAULT 0,
  `opsid_new` varchar(10) DEFAULT NULL,
  `yearfrom_new` varchar(4) DEFAULT NULL,
  `yearto_new` varchar(4) NOT NULL DEFAULT '9999',
  `area_new` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`admin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Basket NEU Diensttouren-Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtourN_stage`
--

DROP TABLE IF EXISTS `ep_dtourN_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtourN_stage` (
  `dtid` int(10) unsigned NOT NULL,
  `opt` varchar(20) NOT NULL,
  `seq` smallint(6) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `description` varchar(80) DEFAULT NULL,
  `activity` varchar(20) NOT NULL,
  `prereq` varchar(100) NOT NULL,
  `seq_start` time DEFAULT NULL,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `seq_end` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `mid_place1` varchar(20) NOT NULL,
  `mid_place2` varchar(20) NOT NULL,
  `mid_place3` varchar(20) NOT NULL,
  `end_place` varchar(10) NOT NULL,
  `dist` int(10) unsigned DEFAULT 0,
  `direc` varchar(10) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`dtid`,`seq`),
  KEY `activity` (`activity`),
  KEY `modified` (`modified`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Diensttouren-Etappen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtourN_stage_basket`
--

DROP TABLE IF EXISTS `ep_dtourN_stage_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtourN_stage_basket` (
  `dtid` int(11) NOT NULL,
  `opt` varchar(20) NOT NULL,
  `seq` smallint(6) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `description` varchar(80) DEFAULT NULL,
  `activity` varchar(20) NOT NULL,
  `prereq` varchar(100) NOT NULL,
  `seq_start` time DEFAULT NULL,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `seq_end` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `mid_place1` varchar(20) NOT NULL,
  `mid_place2` varchar(20) NOT NULL,
  `mid_place3` varchar(20) NOT NULL,
  `end_place` varchar(10) NOT NULL,
  `dist` int(10) unsigned DEFAULT 0,
  `direc` varchar(10) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`dtid`,`seq`),
  KEY `activity` (`activity`),
  KEY `modified` (`modified`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Arbeitsdatei Diensttouren-Etappen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour___2013`
--

DROP TABLE IF EXISTS `ep_dtour___2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour___2013` (
  `dtid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area` int(11) DEFAULT 0,
  `layer` tinyint(3) unsigned DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dtcode` varchar(10) DEFAULT NULL,
  `yearfrom` varchar(4) DEFAULT NULL,
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `dutytype` varchar(20) DEFAULT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) DEFAULT NULL,
  `r_via` varchar(255) DEFAULT NULL,
  `regio` varchar(10) DEFAULT NULL,
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) NOT NULL,
  `byScope` varchar(100) NOT NULL,
  `multip` varchar(100) NOT NULL,
  `prodcat` varchar(20) DEFAULT NULL,
  `r_prereqs` varchar(100) NOT NULL,
  `pre_night` varchar(20) DEFAULT NULL,
  `breakfast` varchar(20) DEFAULT NULL,
  `lunch` varchar(20) DEFAULT NULL,
  `dinner` varchar(20) DEFAULT NULL,
  `any1` tinyint(3) unsigned DEFAULT NULL,
  `any2` tinyint(3) unsigned DEFAULT NULL,
  `any3` tinyint(3) unsigned DEFAULT NULL,
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `dtcode_old` smallint(5) unsigned DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`dtid`),
  UNIQUE KEY `id_from` (`dtcode`,`yearfrom`),
  KEY `area` (`area`),
  KEY `yearto` (`yearto`),
  KEY `yearfrom` (`yearfrom`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Diensttouren-Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour___2015`
--

DROP TABLE IF EXISTS `ep_dtour___2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour___2015` (
  `dtid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area` int(11) DEFAULT 0,
  `layer` varchar(2) DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dtcode` varchar(10) DEFAULT NULL,
  `yearfrom` varchar(4) DEFAULT NULL,
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `dutytype` varchar(20) DEFAULT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) DEFAULT NULL,
  `r_via` varchar(255) DEFAULT NULL,
  `regio` varchar(10) DEFAULT NULL,
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) NOT NULL,
  `byScope` varchar(100) NOT NULL,
  `multip` varchar(100) NOT NULL,
  `dept` varchar(20) DEFAULT NULL COMMENT 'verantwortliche DFB-Abteilung',
  `prodarea` int(10) unsigned DEFAULT NULL COMMENT 'Produktionsbereich gem Vorgabetabelle',
  `prodcat` varchar(20) DEFAULT NULL,
  `r_prereqs` varchar(100) NOT NULL,
  `commit` varchar(10) DEFAULT NULL,
  `quali_choice` varchar(20) DEFAULT NULL,
  `r_grp` varchar(20) NOT NULL,
  `dtlead` int(10) unsigned DEFAULT NULL,
  `pre_night` varchar(20) DEFAULT NULL,
  `breakfast` varchar(20) DEFAULT NULL,
  `lunch` varchar(20) DEFAULT NULL,
  `dinner` varchar(20) DEFAULT NULL,
  `any1` tinyint(3) unsigned DEFAULT NULL,
  `any2` tinyint(3) unsigned DEFAULT NULL,
  `any3` tinyint(3) unsigned DEFAULT NULL,
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `dtcode_old` varchar(5) DEFAULT NULL COMMENT 'obsolet, aber in Formular benutzt',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`dtid`),
  UNIQUE KEY `id_from` (`dtcode`,`yearfrom`),
  KEY `area` (`area`),
  KEY `yearto` (`yearto`),
  KEY `yearfrom` (`yearfrom`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=660 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Diensttouren-Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour___20160329`
--

DROP TABLE IF EXISTS `ep_dtour___20160329`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour___20160329` (
  `dtid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area` int(11) DEFAULT 0,
  `layer` varchar(2) DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dtcode` varchar(10) DEFAULT NULL,
  `yearfrom` varchar(4) DEFAULT NULL,
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `dutytype` varchar(20) DEFAULT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) DEFAULT NULL,
  `r_via` varchar(255) DEFAULT NULL,
  `regio` varchar(10) DEFAULT NULL COMMENT 'geografischer Einsatzraum',
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) NOT NULL,
  `byScope` varchar(100) NOT NULL,
  `multip` varchar(100) NOT NULL,
  `orderby` varchar(20) DEFAULT NULL COMMENT 'auftraggebende DFB-Abteilung',
  `prodarea` int(10) unsigned DEFAULT NULL COMMENT 'Produktionsbereich gem Vorgabetabelle',
  `prodcat` varchar(20) DEFAULT NULL,
  `r_prereqs` varchar(100) NOT NULL,
  `commit` varchar(10) DEFAULT NULL,
  `selfduty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'löst bei commit=yes eine Dienstregistrierung aus',
  `quali_choice` varchar(20) DEFAULT NULL,
  `r_grp` varchar(20) NOT NULL,
  `dtlead` int(10) unsigned DEFAULT NULL,
  `pre_night` varchar(20) DEFAULT NULL,
  `breakfast` varchar(20) DEFAULT NULL,
  `lunch` varchar(20) DEFAULT NULL,
  `dinner` varchar(20) DEFAULT NULL,
  `any1` tinyint(3) unsigned DEFAULT NULL COMMENT 'Essensort morgens beliebig wählbar',
  `any2` tinyint(3) unsigned DEFAULT NULL COMMENT 'Essensort mittags beliebig wählbar',
  `any3` tinyint(3) unsigned DEFAULT NULL COMMENT 'Essensort abends beliebig wählbar',
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `dtcode_old` varchar(5) DEFAULT NULL COMMENT 'obsolet, aber in Formular benutzt',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`dtid`),
  UNIQUE KEY `id_from` (`dtcode`,`yearfrom`),
  KEY `area` (`area`),
  KEY `yearto` (`yearto`),
  KEY `yearfrom` (`yearfrom`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=867 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Diensttouren-Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour___20160918`
--

DROP TABLE IF EXISTS `ep_dtour___20160918`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour___20160918` (
  `dtid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area` int(11) DEFAULT 0,
  `layer` varchar(2) DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dtcode` varchar(10) DEFAULT NULL,
  `yearfrom` varchar(4) DEFAULT NULL,
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `dutytype` varchar(20) DEFAULT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) DEFAULT NULL,
  `r_via` varchar(255) DEFAULT NULL,
  `regio` varchar(10) DEFAULT NULL COMMENT 'geografischer Einsatzraum',
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) NOT NULL,
  `byScope` varchar(100) NOT NULL,
  `multip` varchar(100) NOT NULL,
  `orderby` varchar(20) DEFAULT NULL COMMENT 'auftraggebende DFB-Abteilung',
  `prodarea` int(10) unsigned DEFAULT NULL COMMENT 'Produktionsbereich gem Vorgabetabelle',
  `prodcat` varchar(20) DEFAULT NULL,
  `r_prereqs` varchar(100) NOT NULL,
  `commit` varchar(10) DEFAULT NULL,
  `selfduty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'löst bei commit=yes eine Dienstregistrierung aus',
  `quali_choice` varchar(20) DEFAULT NULL,
  `r_grp` varchar(20) NOT NULL,
  `dtlead` int(10) unsigned DEFAULT NULL,
  `pre_night` varchar(20) DEFAULT NULL,
  `breakfast` varchar(20) DEFAULT NULL,
  `lunch` varchar(20) DEFAULT NULL,
  `dinner` varchar(20) DEFAULT NULL,
  `any1` tinyint(3) unsigned DEFAULT NULL COMMENT 'Essensort morgens beliebig wählbar',
  `any2` tinyint(3) unsigned DEFAULT NULL COMMENT 'Essensort mittags beliebig wählbar',
  `any3` tinyint(3) unsigned DEFAULT NULL COMMENT 'Essensort abends beliebig wählbar',
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `dtcode_old` varchar(5) DEFAULT NULL COMMENT 'obsolet, aber in Formular benutzt',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`dtid`),
  UNIQUE KEY `id_from` (`dtcode`,`yearfrom`),
  KEY `area` (`area`),
  KEY `yearto` (`yearto`),
  KEY `yearfrom` (`yearfrom`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=944 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Diensttouren-Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour___20170425`
--

DROP TABLE IF EXISTS `ep_dtour___20170425`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour___20170425` (
  `dtid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area` int(11) DEFAULT 0,
  `layer` varchar(2) DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dtcode` varchar(10) DEFAULT NULL,
  `yearfrom` varchar(4) DEFAULT NULL,
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `dutytype` varchar(20) DEFAULT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) DEFAULT NULL,
  `r_via` varchar(255) DEFAULT NULL,
  `regio` varchar(10) DEFAULT NULL COMMENT 'geografischer Einsatzraum',
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) NOT NULL,
  `byScope` varchar(100) NOT NULL,
  `multip` varchar(100) NOT NULL,
  `orderby` varchar(20) DEFAULT NULL COMMENT 'auftraggebende DFB-Abteilung',
  `prodarea` int(10) unsigned DEFAULT NULL COMMENT 'Produktionsbereich gem Vorgabetabelle',
  `prodcat` varchar(20) DEFAULT NULL,
  `r_prereqs` varchar(100) NOT NULL,
  `commit` varchar(10) DEFAULT NULL,
  `selfduty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'löst bei commit=yes eine Dienstregistrierung aus',
  `quali_choice` varchar(20) DEFAULT NULL,
  `r_grp` varchar(20) NOT NULL,
  `dtlead` int(10) unsigned DEFAULT NULL,
  `pre_night` varchar(20) DEFAULT NULL,
  `breakfast` varchar(20) DEFAULT NULL,
  `lunch` varchar(20) DEFAULT NULL,
  `dinner` varchar(20) DEFAULT NULL,
  `any1` tinyint(3) unsigned DEFAULT NULL COMMENT 'Essensort morgens beliebig wählbar',
  `any2` tinyint(3) unsigned DEFAULT NULL COMMENT 'Essensort mittags beliebig wählbar',
  `any3` tinyint(3) unsigned DEFAULT NULL COMMENT 'Essensort abends beliebig wählbar',
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `dtcode_old` varchar(5) DEFAULT NULL COMMENT 'obsolet, aber in Formular benutzt',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`dtid`),
  UNIQUE KEY `id_from` (`dtcode`,`yearfrom`),
  KEY `area` (`area`),
  KEY `yearto` (`yearto`),
  KEY `yearfrom` (`yearfrom`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `layer` (`layer`),
  KEY `commit` (`commit`)
) ENGINE=MyISAM AUTO_INCREMENT=1103 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Diensttouren-Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour___20190222`
--

DROP TABLE IF EXISTS `ep_dtour___20190222`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour___20190222` (
  `dtid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area` int(11) DEFAULT 0,
  `layer` varchar(2) DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dtcode` varchar(10) DEFAULT NULL,
  `yearfrom` varchar(4) DEFAULT NULL COMMENT 'wird seit V2.0 als ''opsyear'' genutzt',
  `yearto` varchar(4) NOT NULL DEFAULT '9999' COMMENT 'V2: obsolet',
  `dutytype` varchar(20) DEFAULT NULL,
  `shortname` varchar(20) DEFAULT NULL COMMENT 'Art der Tätigkeit',
  `route` varchar(255) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL COMMENT 'Nutzniesser der Tätigkeit',
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) DEFAULT NULL,
  `r_via` varchar(255) DEFAULT NULL,
  `regio` varchar(10) DEFAULT NULL COMMENT 'geografischer Einsatzraum',
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) NOT NULL,
  `byScope` varchar(100) NOT NULL,
  `multip` varchar(100) NOT NULL,
  `orderby` varchar(20) DEFAULT NULL COMMENT 'auftraggebende DFB-Abteilung',
  `prodarea` int(10) unsigned DEFAULT NULL COMMENT 'Produktionsbereich gem fi_prodarea',
  `prodcat` varchar(20) DEFAULT NULL,
  `r_prereqs` varchar(100) NOT NULL,
  `commit` varchar(10) DEFAULT NULL,
  `selfduty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'löst bei commit=yes eine Dienstregistrierung aus',
  `quali_choice` varchar(20) DEFAULT NULL,
  `r_grp` varchar(20) NOT NULL,
  `dtlead` int(10) unsigned DEFAULT NULL,
  `pre_night` varchar(20) DEFAULT NULL,
  `breakfast` varchar(20) DEFAULT NULL,
  `lunch` varchar(20) DEFAULT NULL,
  `dinner` varchar(20) DEFAULT NULL,
  `any1` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort morgens beliebig wählbar',
  `any2` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort mittags beliebig wählbar',
  `any3` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort abends beliebig wählbar',
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `inuse` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Pivot: Anzahl der Nutzungen in ep_service_plan',
  `day1` date DEFAULT NULL COMMENT 'Pivot: Tag der ersten Nutzung gem ep_service_plan',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `dtcode_old` varchar(5) DEFAULT NULL COMMENT 'obsolet, aber in Formular benutzt',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`dtid`),
  UNIQUE KEY `id_from` (`dtcode`,`yearfrom`),
  KEY `area` (`area`),
  KEY `yearto` (`yearto`),
  KEY `yearfrom` (`yearfrom`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `layer` (`layer`),
  KEY `commit` (`commit`)
) ENGINE=MyISAM AUTO_INCREMENT=1500 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Diensttouren-Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour___20200123`
--

DROP TABLE IF EXISTS `ep_dtour___20200123`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour___20200123` (
  `dtid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area` int(11) DEFAULT 0,
  `layer` varchar(2) DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dtcode` varchar(10) DEFAULT NULL,
  `yearfrom` varchar(4) DEFAULT NULL COMMENT 'wird seit V2.0 als ''opsyear'' genutzt',
  `yearto` varchar(4) NOT NULL DEFAULT '9999' COMMENT 'V2: obsolet',
  `dutytype` varchar(20) NOT NULL DEFAULT 'duty' COMMENT 'grp/grp_avbl: Gruppentouren, pro/pro_avbl:Profi-Tour',
  `job` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 für Dienst-, resp. Arbeitstour',
  `selfduty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'löst bei commit=yes eine Dienstregistrierung aus',
  `eligibility` varchar(20) DEFAULT NULL COMMENT 'Auswahlkriterium: Skill oder Gruppenzugehörigkeit',
  `azubis` varchar(20) NOT NULL DEFAULT 'mit' COMMENT 'Auswahl mit/nur/ohne Azubis',
  `shortname` varchar(24) DEFAULT NULL COMMENT 'Art der Tätigkeit',
  `route` varchar(255) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL COMMENT 'Nutzniesser der Tätigkeit',
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) DEFAULT NULL,
  `r_via` varchar(255) DEFAULT NULL,
  `regio` varchar(10) DEFAULT NULL COMMENT 'geografischer Einsatzraum',
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) NOT NULL,
  `byScope` varchar(100) NOT NULL,
  `multip` varchar(100) NOT NULL,
  `orderby` varchar(20) DEFAULT NULL COMMENT 'auftraggebende DFB-Abteilung',
  `prodarea` int(10) unsigned DEFAULT NULL COMMENT 'Produktionsbereich gem fi_prodarea',
  `prodcat` varchar(20) DEFAULT NULL,
  `r_prereqs` varchar(100) NOT NULL,
  `commit` varchar(10) DEFAULT NULL,
  `quali_choice` varchar(20) DEFAULT NULL COMMENT 'Gruppenzugehörigkeit gemäss td_param(quali_choice)',
  `r_grp` varchar(20) NOT NULL COMMENT 'qprofil, sekundär benutzt zur thematischen Gruppenbildung',
  `dtlead` int(10) unsigned DEFAULT NULL,
  `pre_night` varchar(20) DEFAULT NULL,
  `breakfast` varchar(20) DEFAULT NULL,
  `lunch` varchar(20) DEFAULT NULL,
  `dinner` varchar(20) DEFAULT NULL,
  `any1` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort morgens beliebig wählbar',
  `any2` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort mittags beliebig wählbar',
  `any3` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort abends beliebig wählbar',
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `inuse` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Pivot: Anzahl der Nutzungen in ep_service_plan',
  `day1` date DEFAULT NULL COMMENT 'Pivot: Tag der ersten Nutzung gem ep_service_plan',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `byskill` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'nach Skillmethode, gemäss eligibility',
  `bygroup` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'nach Gruppenmethode, gemäss eligibility',
  `bytask` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'nach Arbeitsplanmethode, gemäss eligibility',
  `dtcode_old` varchar(5) DEFAULT NULL COMMENT 'obsolet, aber in Formular benutzt',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`dtid`),
  UNIQUE KEY `id_from` (`dtcode`,`yearfrom`),
  KEY `area` (`area`),
  KEY `yearto` (`yearto`),
  KEY `yearfrom` (`yearfrom`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `layer` (`layer`),
  KEY `commit` (`commit`)
) ENGINE=MyISAM AUTO_INCREMENT=1770 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Diensttouren-Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour___job200312`
--

DROP TABLE IF EXISTS `ep_dtour___job200312`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour___job200312` (
  `dtid` int(10) unsigned NOT NULL DEFAULT 0,
  `area` int(11) DEFAULT 0 COMMENT 'ident (Einsatzplanungs-Bereich)',
  `layer` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dtcode` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `yearfrom` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT 'wird seit V2.0 als ''opsyear'' genutzt',
  `job` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 für Dienst-, resp. Arbeitstour',
  `selfduty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'löst bei commit=yes eine Dienstregistrierung aus',
  `eligibility` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'bySkill' COMMENT 'Auswahlkriterium: Skill oder Gruppenzugehörigkeit',
  `azubis` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'mit' COMMENT 'Auswahl mit/nur/ohne Azubis',
  `shortname` varchar(24) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Art der Tätigkeit',
  `route` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(80) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Nutzniesser der Tätigkeit',
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `r_via` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `regio` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT 'geografischer Einsatzraum',
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) CHARACTER SET utf8 NOT NULL,
  `multip` varchar(100) CHARACTER SET utf8 NOT NULL,
  `orderby` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'auftraggebende DFB-Abteilung',
  `prodarea` int(10) unsigned DEFAULT NULL COMMENT 'Produktionsbereich gem fi_prodarea',
  `prodcat` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `r_prereqs` varchar(100) CHARACTER SET utf8 NOT NULL,
  `quali_choice` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Gruppenzugehörigkeit gemäss td_param(quali_choice)',
  `r_grp` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT 'qprofil, sekundär benutzt zur thematischen Gruppenbildung',
  `dtlead` int(10) unsigned DEFAULT NULL,
  `pre_night` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `breakfast` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `lunch` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `dinner` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `any1` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort morgens beliebig wählbar',
  `any2` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort mittags beliebig wählbar',
  `any3` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort abends beliebig wählbar',
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `inuse` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Pivot: Anzahl der Nutzungen in ep_service_plan',
  `day1` date DEFAULT NULL COMMENT 'Pivot: Tag der ersten Nutzung gem ep_service_plan',
  `byskill` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'nach Skillmethode, gemäss eligibility',
  `bygroup` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'nach Gruppenmethode, gemäss eligibility',
  `bytask` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'nach Arbeitsplanmethode, gemäss eligibility',
  `qprio` tinyint(3) unsigned DEFAULT NULL COMMENT 'prio aus qprofile (zwecks Vergleich mit prio)',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `yearto` varchar(4) CHARACTER SET utf8 NOT NULL DEFAULT '9999' COMMENT 'V2: ab hier entnutzen oder bereits obsolet',
  `dutytype` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'duty' COMMENT 'grp/grp_avbl: Gruppentouren, pro/pro_avbl:Profi-Tour',
  `commit` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `byScope` varchar(100) CHARACTER SET utf8 NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `dtcode_old` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT 'obsolet, aber in Formular benutzt'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour__arc`
--

DROP TABLE IF EXISTS `ep_dtour__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour__arc` (
  `dtid` text DEFAULT NULL,
  `area` text DEFAULT NULL,
  `layer` text DEFAULT NULL,
  `prio` text DEFAULT NULL,
  `dtcode` text DEFAULT NULL,
  `yearfrom` text DEFAULT NULL,
  `job` text DEFAULT NULL,
  `selfduty` text DEFAULT NULL,
  `eligibility` text DEFAULT NULL,
  `azubis` text DEFAULT NULL,
  `shortname` text DEFAULT NULL,
  `route` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `start_time` text DEFAULT NULL,
  `start_place` text DEFAULT NULL,
  `r_end_time` text DEFAULT NULL,
  `r_end_place` text DEFAULT NULL,
  `r_via` text DEFAULT NULL,
  `regio` text DEFAULT NULL,
  `r_worktime` text DEFAULT NULL,
  `r_attendance` text DEFAULT NULL,
  `byPeriod` text DEFAULT NULL,
  `multip` text DEFAULT NULL,
  `orderby` text DEFAULT NULL,
  `prodarea` text DEFAULT NULL,
  `prodcat` text DEFAULT NULL,
  `r_prereqs` text DEFAULT NULL,
  `quali_choice` text DEFAULT NULL,
  `r_grp` text DEFAULT NULL,
  `dtlead` text DEFAULT NULL,
  `pre_night` text DEFAULT NULL,
  `breakfast` text DEFAULT NULL,
  `lunch` text DEFAULT NULL,
  `dinner` text DEFAULT NULL,
  `any1` text DEFAULT NULL,
  `any2` text DEFAULT NULL,
  `any3` text DEFAULT NULL,
  `seq_count` text DEFAULT NULL,
  `inuse` text DEFAULT NULL,
  `day1` text DEFAULT NULL,
  `byskill` text DEFAULT NULL,
  `bygroup` text DEFAULT NULL,
  `bytask` text DEFAULT NULL,
  `qprio` text DEFAULT NULL,
  `entered` text DEFAULT NULL,
  `originator` text DEFAULT NULL,
  `modified` text DEFAULT NULL,
  `modifier` text DEFAULT NULL,
  `yearto` text DEFAULT NULL,
  `dutytype` text DEFAULT NULL,
  `commit` text DEFAULT NULL,
  `byScope` text DEFAULT NULL,
  `validfrom` text DEFAULT NULL,
  `validto` text DEFAULT NULL,
  `dtcode_old` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour_basket`
--

DROP TABLE IF EXISTS `ep_dtour_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour_basket` (
  `dtid` int(11) NOT NULL AUTO_INCREMENT,
  `area` int(11) DEFAULT 0,
  `layer` varchar(2) DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dtcode` varchar(10) DEFAULT NULL,
  `yearfrom` varchar(4) DEFAULT NULL,
  `job` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `selfduty` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `eligibility` varchar(20) DEFAULT NULL,
  `azubis` varchar(20) NOT NULL DEFAULT 'mit',
  `shortname` varchar(20) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) DEFAULT NULL,
  `r_via` varchar(255) DEFAULT NULL,
  `regio` varchar(10) DEFAULT NULL,
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) NOT NULL,
  `multip` varchar(100) NOT NULL,
  `orderby` varchar(20) DEFAULT NULL,
  `prodarea` int(10) unsigned DEFAULT NULL,
  `prodcat` varchar(20) DEFAULT NULL,
  `r_prereqs` varchar(100) NOT NULL,
  `quali_choice` varchar(20) DEFAULT NULL,
  `r_grp` varchar(20) DEFAULT NULL,
  `dtlead` int(10) unsigned DEFAULT NULL,
  `pre_night` varchar(20) DEFAULT NULL,
  `breakfast` varchar(20) DEFAULT NULL,
  `lunch` varchar(20) DEFAULT NULL,
  `dinner` varchar(20) DEFAULT NULL,
  `any1` tinyint(3) unsigned DEFAULT NULL,
  `any2` tinyint(3) unsigned DEFAULT NULL,
  `any3` tinyint(3) unsigned DEFAULT NULL,
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `inuse` int(10) unsigned NOT NULL DEFAULT 0,
  `day1` date DEFAULT NULL,
  `byskill` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `bygroup` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `bytask` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `qprio` tinyint(3) unsigned DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `dutytype` varchar(20) DEFAULT NULL,
  `commit` varchar(10) NOT NULL,
  `byScope` varchar(100) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `dtcode_old` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`dtid`),
  UNIQUE KEY `id_from` (`dtcode`,`yearfrom`),
  KEY `area` (`area`),
  KEY `yearto` (`yearto`),
  KEY `yearfrom` (`yearfrom`)
) ENGINE=MyISAM AUTO_INCREMENT=2288 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Arbeitsdatei Diensttouren-Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour_new`
--

DROP TABLE IF EXISTS `ep_dtour_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour_new` (
  `dtid` int(11) NOT NULL,
  `area` int(11) DEFAULT 0,
  `layer` varchar(2) DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dtcode` varchar(10) DEFAULT NULL,
  `yearfrom` varchar(4) DEFAULT NULL,
  `job` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `selfduty` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `eligibility` varchar(20) NOT NULL DEFAULT 'bySkill',
  `azubis` varchar(20) NOT NULL DEFAULT 'mit',
  `shortname` varchar(20) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) DEFAULT NULL,
  `r_via` varchar(255) DEFAULT NULL,
  `regio` varchar(10) DEFAULT NULL,
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) NOT NULL,
  `multip` varchar(100) NOT NULL,
  `orderby` varchar(20) DEFAULT NULL,
  `prodarea` int(10) unsigned DEFAULT NULL,
  `prodcat` varchar(20) DEFAULT NULL,
  `r_prereqs` varchar(100) NOT NULL,
  `quali_choice` varchar(20) DEFAULT NULL,
  `r_grp` varchar(20) NOT NULL,
  `dtlead` int(10) unsigned DEFAULT NULL,
  `pre_night` varchar(20) DEFAULT NULL,
  `breakfast` varchar(20) DEFAULT NULL,
  `lunch` varchar(20) DEFAULT NULL,
  `dinner` varchar(20) DEFAULT NULL,
  `any1` tinyint(3) unsigned DEFAULT NULL,
  `any2` tinyint(3) unsigned DEFAULT NULL,
  `any3` tinyint(3) unsigned DEFAULT NULL,
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `inuse` int(10) unsigned NOT NULL DEFAULT 0,
  `day1` date DEFAULT NULL,
  `byskill` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `bygroup` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `bytask` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `qprio` tinyint(3) unsigned DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `dutytype` varchar(20) DEFAULT NULL,
  `commit` varchar(10) NOT NULL,
  `byScope` varchar(100) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `dtcode_old` smallint(5) unsigned DEFAULT NULL,
  `admin` int(10) unsigned NOT NULL,
  `ok` tinyint(3) unsigned DEFAULT 0,
  `edited` tinyint(3) unsigned DEFAULT 0,
  `opsid_new` varchar(10) DEFAULT NULL,
  `yearfrom_new` varchar(4) DEFAULT NULL COMMENT 'entspricht einem opsyear_new, (yearto_new ist ab 2020 obsolet)',
  `selfduty_new` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `area_new` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`admin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Basket NEU Diensttouren-Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour_stage`
--

DROP TABLE IF EXISTS `ep_dtour_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour_stage` (
  `dtid` int(10) unsigned NOT NULL,
  `opt` varchar(20) NOT NULL,
  `seq` smallint(6) unsigned NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `description` varchar(80) DEFAULT NULL,
  `activity` varchar(20) NOT NULL DEFAULT '',
  `prereq` varchar(20) NOT NULL DEFAULT '',
  `seq_start` time DEFAULT NULL,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `seq_end` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `mid_place1` varchar(20) NOT NULL,
  `mid_place2` varchar(20) NOT NULL,
  `mid_place3` varchar(20) NOT NULL,
  `end_place` varchar(10) NOT NULL,
  `dist` int(10) unsigned DEFAULT 0,
  `direc` varchar(10) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`dtid`,`seq`),
  KEY `activity` (`activity`),
  KEY `modified` (`modified`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Diensttouren-Etappen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour_stage__2013`
--

DROP TABLE IF EXISTS `ep_dtour_stage__2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour_stage__2013` (
  `dtid` int(10) unsigned NOT NULL,
  `opt` varchar(20) NOT NULL,
  `seq` smallint(6) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `description` varchar(80) DEFAULT NULL,
  `activity` varchar(20) NOT NULL,
  `prereq` varchar(100) NOT NULL,
  `seq_start` time DEFAULT NULL,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `seq_end` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `mid_place1` varchar(20) NOT NULL,
  `mid_place2` varchar(20) NOT NULL,
  `mid_place3` varchar(20) NOT NULL,
  `end_place` varchar(10) NOT NULL,
  `dist` int(10) unsigned DEFAULT 0,
  `direc` varchar(10) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`dtid`,`seq`),
  KEY `activity` (`activity`),
  KEY `modified` (`modified`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Diensttouren-Etappen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour_stage___20160216`
--

DROP TABLE IF EXISTS `ep_dtour_stage___20160216`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour_stage___20160216` (
  `dtid` int(10) unsigned NOT NULL,
  `opt` varchar(20) NOT NULL,
  `seq` smallint(6) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `description` varchar(80) DEFAULT NULL,
  `activity` varchar(20) NOT NULL,
  `prereq` varchar(100) NOT NULL,
  `seq_start` time DEFAULT NULL,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `seq_end` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `mid_place1` varchar(20) NOT NULL,
  `mid_place2` varchar(20) NOT NULL,
  `mid_place3` varchar(20) NOT NULL,
  `end_place` varchar(10) NOT NULL,
  `dist` int(10) unsigned DEFAULT 0,
  `direc` varchar(10) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`dtid`,`seq`),
  KEY `activity` (`activity`),
  KEY `modified` (`modified`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Diensttouren-Etappen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour_stage___20160227`
--

DROP TABLE IF EXISTS `ep_dtour_stage___20160227`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour_stage___20160227` (
  `dtid` int(10) unsigned NOT NULL,
  `opt` varchar(20) NOT NULL,
  `seq` smallint(6) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `description` varchar(80) DEFAULT NULL,
  `activity` varchar(20) NOT NULL,
  `prereq` varchar(100) NOT NULL,
  `seq_start` time DEFAULT NULL,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `seq_end` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `mid_place1` varchar(20) NOT NULL,
  `mid_place2` varchar(20) NOT NULL,
  `mid_place3` varchar(20) NOT NULL,
  `end_place` varchar(10) NOT NULL,
  `dist` int(10) unsigned DEFAULT 0,
  `direc` varchar(10) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`dtid`,`seq`),
  KEY `activity` (`activity`),
  KEY `modified` (`modified`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Diensttouren-Etappen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour_stage___20190222`
--

DROP TABLE IF EXISTS `ep_dtour_stage___20190222`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour_stage___20190222` (
  `dtid` int(10) unsigned NOT NULL,
  `opt` varchar(20) NOT NULL,
  `seq` smallint(6) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `description` varchar(80) DEFAULT NULL,
  `activity` varchar(20) NOT NULL,
  `prereq` varchar(100) NOT NULL,
  `seq_start` time DEFAULT NULL,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `seq_end` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `mid_place1` varchar(20) NOT NULL,
  `mid_place2` varchar(20) NOT NULL,
  `mid_place3` varchar(20) NOT NULL,
  `end_place` varchar(10) NOT NULL,
  `dist` int(10) unsigned DEFAULT 0,
  `direc` varchar(10) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`dtid`,`seq`),
  KEY `activity` (`activity`),
  KEY `modified` (`modified`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Diensttouren-Etappen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour_stage__arc`
--

DROP TABLE IF EXISTS `ep_dtour_stage__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour_stage__arc` (
  `dtid` text DEFAULT NULL,
  `opt` text DEFAULT NULL,
  `seq` text DEFAULT NULL,
  `sort` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `activity` text DEFAULT NULL,
  `prereq` text DEFAULT NULL,
  `seq_start` text DEFAULT NULL,
  `duration` text DEFAULT NULL,
  `seq_end` text DEFAULT NULL,
  `start_place` text DEFAULT NULL,
  `mid_place1` text DEFAULT NULL,
  `mid_place2` text DEFAULT NULL,
  `mid_place3` text DEFAULT NULL,
  `end_place` text DEFAULT NULL,
  `dist` text DEFAULT NULL,
  `direc` text DEFAULT NULL,
  `entered` text DEFAULT NULL,
  `originator` text DEFAULT NULL,
  `modified` text DEFAULT NULL,
  `modifier` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_dtour_stage_basket`
--

DROP TABLE IF EXISTS `ep_dtour_stage_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_dtour_stage_basket` (
  `dtid` int(11) NOT NULL,
  `opt` varchar(20) NOT NULL,
  `seq` smallint(6) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `description` varchar(80) DEFAULT NULL,
  `activity` varchar(20) NOT NULL DEFAULT '',
  `prereq` varchar(20) NOT NULL DEFAULT '',
  `seq_start` time DEFAULT NULL,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `seq_end` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `mid_place1` varchar(20) NOT NULL,
  `mid_place2` varchar(20) NOT NULL,
  `mid_place3` varchar(20) NOT NULL,
  `end_place` varchar(10) NOT NULL,
  `dist` int(10) unsigned DEFAULT 0,
  `direc` varchar(10) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`dtid`,`seq`),
  KEY `activity` (`activity`),
  KEY `modified` (`modified`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Arbeitsdatei Diensttouren-Etappen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_duty`
--

DROP TABLE IF EXISTS `ep_duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_duty` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'KEY',
  `ident` int(10) unsigned NOT NULL COMMENT 'ID Kontakt.tb_ident',
  `r_short` varchar(4) DEFAULT NULL COMMENT 'zInfo Kurzzeichen',
  `opsday` date NOT NULL COMMENT 'Betriebstag',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_assign',
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_service_plan',
  `r_spname` varchar(50) DEFAULT NULL COMMENT 'ID Dienstbezeichnungscode',
  `remark` varchar(100) DEFAULT NULL COMMENT 'Kommentar',
  `status` varchar(20) NOT NULL DEFAULT 'open' COMMENT 'Status',
  `partn` varchar(250) DEFAULT NULL,
  `accepted` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Übernahmezeitpunkt',
  `cancelled` date DEFAULT '9999-12-31' COMMENT 'Löschdatum',
  PRIMARY KEY (`did`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `spid` (`spid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=33740 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplan (Die BESTÄTIGTEN Dienste)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_duty__2013`
--

DROP TABLE IF EXISTS `ep_duty__2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_duty__2013` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `r_short` varchar(4) DEFAULT NULL,
  `opsday` date NOT NULL,
  `aid` int(10) unsigned DEFAULT NULL,
  `spid` int(10) unsigned DEFAULT NULL,
  `r_spname` varchar(50) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'open',
  `partn` varchar(250) DEFAULT NULL,
  `accepted` timestamp NOT NULL DEFAULT current_timestamp(),
  `cancelled` date DEFAULT '9999-12-31',
  PRIMARY KEY (`did`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `spid` (`spid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=1531 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_duty___20190306`
--

DROP TABLE IF EXISTS `ep_duty___20190306`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_duty___20190306` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'KEY',
  `ident` int(10) unsigned NOT NULL COMMENT 'ID Kontakt.tb_ident',
  `r_short` varchar(4) DEFAULT NULL COMMENT 'zInfo Kurzzeichen',
  `opsday` date NOT NULL COMMENT 'Betriebstag',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_assign',
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_service_plan',
  `r_spname` varchar(50) DEFAULT NULL COMMENT 'ID Dienstbezeichnungscode',
  `remark` varchar(100) DEFAULT NULL COMMENT 'Kommentar',
  `status` varchar(20) NOT NULL DEFAULT 'open' COMMENT 'Status',
  `partn` varchar(250) DEFAULT NULL,
  `accepted` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Übernahmezeitpunkt',
  `cancelled` date DEFAULT '9999-12-31' COMMENT 'Löschdatum',
  PRIMARY KEY (`did`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `spid` (`spid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=18598 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_duty__arc`
--

DROP TABLE IF EXISTS `ep_duty__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_duty__arc` (
  `did` text DEFAULT NULL,
  `ident` text DEFAULT NULL,
  `r_short` text DEFAULT NULL,
  `opsday` text DEFAULT NULL,
  `aid` text DEFAULT NULL,
  `spid` text DEFAULT NULL,
  `r_spname` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `partn` text DEFAULT NULL,
  `accepted` text DEFAULT NULL,
  `cancelled` text DEFAULT NULL,
  `archived` timestamp NULL DEFAULT current_timestamp(),
  `agent` int(10) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplan Archiv';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_duty_dev`
--

DROP TABLE IF EXISTS `ep_duty_dev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_duty_dev` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `r_short` varchar(4) DEFAULT NULL,
  `opsday` date NOT NULL,
  `aid` int(10) unsigned DEFAULT NULL,
  `spid` int(10) unsigned DEFAULT NULL,
  `r_spname` varchar(50) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'open',
  `partn` varchar(250) DEFAULT NULL,
  `accepted` timestamp NOT NULL DEFAULT current_timestamp(),
  `cancelled` date DEFAULT '9999-12-31',
  PRIMARY KEY (`did`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `spid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=648 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_duty_dev___copy`
--

DROP TABLE IF EXISTS `ep_duty_dev___copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_duty_dev___copy` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `r_short` varchar(4) DEFAULT NULL,
  `opsday` date NOT NULL,
  `aid` int(10) unsigned DEFAULT NULL,
  `spid` int(10) unsigned DEFAULT NULL,
  `r_spname` varchar(50) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'open',
  `partn` varchar(250) DEFAULT NULL,
  `accepted` timestamp NOT NULL DEFAULT current_timestamp(),
  `cancelled` date DEFAULT '9999-12-31',
  PRIMARY KEY (`did`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `spid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_etour`
--

DROP TABLE IF EXISTS `ep_etour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_etour` (
  `dtid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtcode` varchar(10) DEFAULT NULL COMMENT 'Tourenbezeichnung',
  `opsyear` varchar(4) DEFAULT NULL COMMENT 'Gültigkeitsjahr',
  `shortname` varchar(20) DEFAULT NULL COMMENT 'Kurzbezeichnung',
  `description` varchar(80) DEFAULT NULL COMMENT 'Kurzumschreibung der Produktiven Aufgabe',
  `route` varchar(255) DEFAULT NULL COMMENT 'Grobroute in möglichster Kürze',
  `orderby` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'auftraggebende Organisation',
  `prodarea` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Produktionsbereich gem Vorgabetabelle',
  `eparea` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Planungsbereich (ep-Organisation)',
  `visbase` varchar(10) NOT NULL DEFAULT 'skill' COMMENT 'Grundprinzip der Tourensichtbarkeit: skill oder pool',
  `skill_fix` varchar(20) DEFAULT NULL COMMENT 'vorbestimmter Skill, gültig für alle Phasen',
  `r_prereqs` varchar(100) NOT NULL COMMENT 'phasengenutzte Skills',
  `orgtype` varchar(20) DEFAULT NULL COMMENT 'Art des Auswahlpools',
  `orgid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ident des entsprechenden Auswahlpools',
  `commit` varchar(10) DEFAULT NULL,
  `selfduty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'löst bei commit=yes einen Diensteinsatz aus',
  `quali_choice` varchar(20) DEFAULT NULL,
  `r_grp` varchar(20) NOT NULL,
  `layer` varchar(2) DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dutytype` varchar(20) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) DEFAULT NULL,
  `r_via` varchar(255) DEFAULT NULL,
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) NOT NULL,
  `byScope` varchar(100) NOT NULL,
  `multip` varchar(100) NOT NULL,
  `prodcat` varchar(20) DEFAULT NULL,
  `dtlead` int(10) unsigned DEFAULT NULL,
  `pre_night` varchar(20) DEFAULT NULL,
  `breakfast` varchar(20) DEFAULT NULL,
  `lunch` varchar(20) DEFAULT NULL,
  `dinner` varchar(20) DEFAULT NULL,
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `dtidorig` int(10) unsigned DEFAULT NULL COMMENT '(TEMPORAER)',
  `dtcode_old` varchar(5) DEFAULT NULL COMMENT 'obsolet, aber in Formular benutzt',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `orderedby` varchar(20) DEFAULT NULL COMMENT 'ALT: auftraggebende Organisation',
  `yearfrom` varchar(4) DEFAULT NULL COMMENT 'gültig ab Jahr',
  `yearto` varchar(4) NOT NULL DEFAULT '9999' COMMENT 'gültig bis inkl Jahr',
  PRIMARY KEY (`dtid`),
  UNIQUE KEY `id_from` (`dtcode`,`opsyear`),
  KEY `area` (`eparea`),
  KEY `opsyear` (`opsyear`)
) ENGINE=MyISAM AUTO_INCREMENT=855 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatztouren-Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_etour_multi`
--

DROP TABLE IF EXISTS `ep_etour_multi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_etour_multi` (
  `dtid` int(10) unsigned NOT NULL DEFAULT 0,
  `dtcode` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Tourenbezeichnung',
  `id13` int(10) unsigned NOT NULL DEFAULT 0,
  `id14` int(10) unsigned NOT NULL DEFAULT 0,
  `id15` int(10) unsigned NOT NULL DEFAULT 0,
  `id16` int(10) unsigned NOT NULL DEFAULT 0,
  `description` varchar(80) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Kurzumschreibung der Produktiven Aufgabe',
  `route` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Grobroute in möglichster Kürze',
  `first` year(4) DEFAULT 2000,
  `y13` year(4) DEFAULT NULL,
  `y14` year(4) DEFAULT NULL,
  `y15` year(4) DEFAULT NULL,
  `y16` year(4) DEFAULT NULL,
  `years` text CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_job`
--

DROP TABLE IF EXISTS `ep_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_job` (
  `jid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `opsday` date NOT NULL,
  `absent` int(10) unsigned DEFAULT 0 COMMENT 'Bitwert für Absenzen',
  `active` int(10) unsigned DEFAULT 0 COMMENT 'Bitwert für Präsenzen',
  `dtcode` varchar(20) DEFAULT NULL COMMENT 'Tourbezeichnung im Falle einer Job-Tour',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'Job-Tour ist geplant (allfällige ep_assign-Id)',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT 'Bemerkung zHd Einsatzplaner',
  `entered` timestamp NOT NULL DEFAULT current_timestamp(),
  `originator` int(10) unsigned DEFAULT 0,
  `restored` datetime DEFAULT NULL COMMENT 'Zeitpunkt der automatischen Wiederherstellung einer Jobtour',
  `restorer` int(10) unsigned DEFAULT 0 COMMENT 'Administrator der Wiederherstellung',
  PRIMARY KEY (`jid`),
  UNIQUE KEY `ident_opsday` (`ident`,`opsday`),
  KEY `dtid` (`dtcode`),
  KEY `opsday` (`opsday`)
) ENGINE=MyISAM AUTO_INCREMENT=2959 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplanung: Arbeitsplan von Festangestellten\r\nactive: 1=Arbeitstag / 2=vorläufiger Diensteinsatz / 4=endgültiger Diensteinsatz\r\nabsent: 1=nicht verfügbar / 2=Wochenpause / 4=AZG-frei / 8=Urlaub / 16=Ferien';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_job___200320`
--

DROP TABLE IF EXISTS `ep_job___200320`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_job___200320` (
  `jid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `opsday` date NOT NULL,
  `absent` int(10) unsigned DEFAULT 0 COMMENT 'Bitwert für Absenzen',
  `active` int(10) unsigned DEFAULT 0 COMMENT 'Bitwert für Präsenzen',
  `dtcode` varchar(20) DEFAULT NULL COMMENT 'Tourbezeichnung im Falle einer Job-Tour',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'allfällige ep_assign-Id: ist geplant',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT 'Bemerkung zHd Einsatzplaner',
  `entered` timestamp NOT NULL DEFAULT current_timestamp(),
  `originator` int(10) unsigned DEFAULT 0,
  PRIMARY KEY (`jid`),
  UNIQUE KEY `ident_opsday` (`ident`,`opsday`),
  KEY `dtid` (`dtcode`),
  KEY `opsday` (`opsday`)
) ENGINE=MyISAM AUTO_INCREMENT=1198 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplanung: Arbeitsplan von Festangestellten\r\nactive: 1=Arbeitstag / 2=vorläufiger Diensteinsatz / 4=endgültiger Diensteinsatz\r\nabsent: 1=nicht verfügbar / 2=Wochenpause / 4=AZG-frei / 8=Urlaub / 16=Ferien';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_job___200331`
--

DROP TABLE IF EXISTS `ep_job___200331`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_job___200331` (
  `jid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `opsday` date NOT NULL,
  `absent` int(10) unsigned DEFAULT 0 COMMENT 'Bitwert für Absenzen',
  `active` int(10) unsigned DEFAULT 0 COMMENT 'Bitwert für Präsenzen',
  `dtcode` varchar(20) DEFAULT NULL COMMENT 'Tourbezeichnung im Falle einer Job-Tour',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'Job-Tour ist geplant (allfällige ep_assign-Id)',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT 'Bemerkung zHd Einsatzplaner',
  `entered` timestamp NOT NULL DEFAULT current_timestamp(),
  `originator` int(10) unsigned DEFAULT 0,
  `restored` datetime DEFAULT NULL COMMENT 'Zeitpunkt der automatischen Wiederherstellung einer Jobtour',
  `restorer` int(10) unsigned DEFAULT 0 COMMENT 'Administrator der Wiederherstellung',
  PRIMARY KEY (`jid`),
  UNIQUE KEY `ident_opsday` (`ident`,`opsday`),
  KEY `dtid` (`dtcode`),
  KEY `opsday` (`opsday`)
) ENGINE=MyISAM AUTO_INCREMENT=1267 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplanung: Arbeitsplan von Festangestellten\r\nactive: 1=Arbeitstag / 2=vorläufiger Diensteinsatz / 4=endgültiger Diensteinsatz\r\nabsent: 1=nicht verfügbar / 2=Wochenpause / 4=AZG-frei / 8=Urlaub / 16=Ferien';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_job___copy`
--

DROP TABLE IF EXISTS `ep_job___copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_job___copy` (
  `jid` int(10) unsigned NOT NULL,
  `ident` int(10) unsigned NOT NULL,
  `opsday` date NOT NULL,
  `absent` int(10) unsigned DEFAULT 0 COMMENT 'Bitwert für Absenzen',
  `active` int(10) unsigned DEFAULT 0 COMMENT 'Bitwert für Präsenzen',
  `dtcode` varchar(20) DEFAULT NULL COMMENT 'Tourbezeichnung im Falle einer Job-Tour',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'allfällige ep_assign-Id: ist geplant',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT 'Bemerkung zHd Einsatzplaner',
  `entered` timestamp NOT NULL DEFAULT current_timestamp(),
  `originator` int(10) unsigned DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplanung: Arbeitsplan von Festangestellten\r\nactive: 1=Arbeitstag / 2=vorläufiger Diensteinsatz / 4=endgültiger Diensteinsatz\r\nabsent: 1=nicht verfügbar / 2=Wochenpause / 4=AZG-frei / 8=Urlaub / 16=Ferien';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_job__arc`
--

DROP TABLE IF EXISTS `ep_job__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_job__arc` (
  `jid` text DEFAULT NULL,
  `ident` text DEFAULT NULL,
  `opsday` text DEFAULT NULL,
  `absent` text DEFAULT NULL,
  `active` text DEFAULT NULL,
  `dtcode` text DEFAULT NULL,
  `aid` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `entered` text DEFAULT NULL,
  `originator` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_job_tour`
--

DROP TABLE IF EXISTS `ep_job_tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_job_tour` (
  `idjt` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Zähler',
  `ident` int(10) unsigned NOT NULL COMMENT 'Festangestellte(r) MA',
  `short` varchar(10) NOT NULL COMMENT 'Kürzel',
  `regio` varchar(10) NOT NULL DEFAULT 'FURKA' COMMENT 'Primäres Arbeitsgebiet, zB FURKA, UZWIL, AARAU',
  `dept` varchar(20) NOT NULL COMMENT 'Auftraggebende Abteilung',
  `idp` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Produktebereich gem. fi_prodarea.idp',
  `modlvl` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Gewährte Arbeitsplanmethode',
  `t1` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT '(1) Genereller Arbeitstag (entweder t1 ODER t2 und t4)',
  `t2` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT '(2) Bereitschaftstour (schliesst 1 aus)',
  `t4` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT '(4) Feste Tour (schliesst 1 aus)',
  `remark` text NOT NULL,
  `full` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Lohnangestellte füllen alle Tage des Kalenders aus',
  `azg` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Arbeitspräsenz ist AZG-relevant',
  `tzv` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'hat Teilzeitvertrag',
  `validfrom` date NOT NULL DEFAULT '0000-00-00' COMMENT 'gültig ab',
  `validto` date NOT NULL DEFAULT '9999-12-31' COMMENT 'gültig bis',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 nicht verwenden',
  `public` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT '1/0 garantierte Anzeige in Arbeitskalender',
  `entered` datetime NOT NULL DEFAULT current_timestamp(),
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`idjt`),
  UNIQUE KEY `ident_validfrom` (`ident`,`validfrom`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zuteilung der Standardtouren an MA für den Arbeitsplan von Festangestellten\r\nBevorzugte Tourennummern: Werte < #100';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_log`
--

DROP TABLE IF EXISTS `ep_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_log` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned DEFAULT NULL,
  `topic` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` int(10) unsigned DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`lid`),
  KEY `topic` (`topic`),
  KEY `ident` (`ident`)
) ENGINE=MyISAM AUTO_INCREMENT=135573 DEFAULT CHARSET=utf8 COMMENT='Log für Einsatzplanungsaktivitäten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_log__2013`
--

DROP TABLE IF EXISTS `ep_log__2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_log__2013` (
  `lid` int(10) unsigned NOT NULL DEFAULT 0,
  `ident` int(10) unsigned DEFAULT NULL,
  `topic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` int(10) unsigned DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_log__2014`
--

DROP TABLE IF EXISTS `ep_log__2014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_log__2014` (
  `lid` int(10) unsigned NOT NULL DEFAULT 0,
  `ident` int(10) unsigned DEFAULT NULL,
  `topic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` int(10) unsigned DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_log__2015`
--

DROP TABLE IF EXISTS `ep_log__2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_log__2015` (
  `lid` int(10) unsigned NOT NULL DEFAULT 0,
  `ident` int(10) unsigned DEFAULT NULL,
  `topic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` int(10) unsigned DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_log__2016`
--

DROP TABLE IF EXISTS `ep_log__2016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_log__2016` (
  `lid` int(10) unsigned NOT NULL DEFAULT 0,
  `ident` int(10) unsigned DEFAULT NULL,
  `topic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` int(10) unsigned DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_log__2017`
--

DROP TABLE IF EXISTS `ep_log__2017`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_log__2017` (
  `lid` int(10) unsigned NOT NULL DEFAULT 0,
  `ident` int(10) unsigned DEFAULT NULL,
  `topic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` int(10) unsigned DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_log__2018`
--

DROP TABLE IF EXISTS `ep_log__2018`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_log__2018` (
  `lid` int(10) unsigned NOT NULL DEFAULT 0,
  `ident` int(10) unsigned DEFAULT NULL,
  `topic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` int(10) unsigned DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_log__2019`
--

DROP TABLE IF EXISTS `ep_log__2019`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_log__2019` (
  `lid` int(10) unsigned NOT NULL DEFAULT 0,
  `ident` int(10) unsigned DEFAULT NULL,
  `topic` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` int(10) unsigned DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_means_ifc`
--

DROP TABLE IF EXISTS `ep_means_ifc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_means_ifc` (
  `idifc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dtid` int(10) unsigned DEFAULT NULL COMMENT 'Begünstigte Diensttour',
  `meanskind` varchar(50) DEFAULT NULL COMMENT 'Art/Tabelle der Mittel',
  `idmeans` int(10) unsigned DEFAULT NULL COMMENT 'Mittel-Identifikator',
  `b4day` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Vortage bei Umläufen',
  `remark` varchar(100) NOT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idifc`),
  KEY `dtid` (`dtid`)
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Interface zwischen Diensttour und zugehörigen Arbeitsmitteln';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_message`
--

DROP TABLE IF EXISTS `ep_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_message` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orgunit` int(10) unsigned DEFAULT NULL,
  `opsday` date DEFAULT NULL,
  `layer` tinyint(3) unsigned DEFAULT NULL,
  `txt0` varchar(100) DEFAULT NULL,
  `txt1` varchar(100) DEFAULT NULL,
  `txt2` varchar(100) DEFAULT NULL,
  `css0` varchar(20) DEFAULT NULL,
  `css1` varchar(20) DEFAULT NULL,
  `css2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_message___2013`
--

DROP TABLE IF EXISTS `ep_message___2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_message___2013` (
  `mid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `orgunit` int(10) unsigned DEFAULT NULL,
  `opsday` date DEFAULT NULL,
  `txt0` varchar(100) DEFAULT NULL,
  `txt1` varchar(100) DEFAULT NULL,
  `txt2` varchar(100) DEFAULT NULL,
  `css0` varchar(20) DEFAULT NULL,
  `css1` varchar(20) DEFAULT NULL,
  `css2` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`mid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_opsdays`
--

DROP TABLE IF EXISTS `ep_opsdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_opsdays` (
  `opsday` date NOT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `vps` varchar(50) NOT NULL,
  `circular` varchar(250) NOT NULL,
  `zps` text NOT NULL,
  `byScope` varchar(50) NOT NULL,
  PRIMARY KEY (`opsday`),
  KEY `byScope` (`byScope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='DFB Fahrbetriebstage (Verwendungsnachweis VP+Zirkulare)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_orderby`
--

DROP TABLE IF EXISTS `ep_orderby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_orderby` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Grundgerüst einer typischen Tabelle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_period___NO`
--

DROP TABLE IF EXISTS `ep_period___NO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_period___NO` (
  `idvp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vpcode` varchar(10) NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `daily` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `weekdays` varchar(20) DEFAULT NULL,
  `legend` varchar(10) DEFAULT NULL,
  `is_vp` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idvp`),
  UNIQUE KEY `vpcode` (`vpcode`,`validfrom`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='Einsatzplan: Verkehrs- und weitere Zeitperioden';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_pooled`
--

DROP TABLE IF EXISTS `ep_pooled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_pooled` (
  `idg` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Auto-Index',
  `description` varchar(100) NOT NULL COMMENT 'Name des Pools',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'Kontakt-Ident des Pools',
  `activefrom` date NOT NULL DEFAULT '0000-00-00' COMMENT 'gültig von',
  `activeto` date NOT NULL DEFAULT '9999-12-31' COMMENT 'gültig bis',
  `byContracts` varchar(250) DEFAULT NULL COMMENT 'Liste der Basis-Contracts',
  `bySubsets` varchar(250) DEFAULT NULL COMMENT 'Liste der Basis-Contract-Subsets',
  `select_into` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Contract-id_org, falls reelle Relation nötig',
  `entered` datetime DEFAULT NULL COMMENT 'Erstellungszeitpunkt',
  `originator` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'erstellt durch',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Modifikationszeitpunkt',
  `modifier` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'modifiziert durch',
  PRIMARY KEY (`idg`),
  KEY `validfrom` (`activefrom`),
  KEY `validto` (`activeto`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Die Gültigkeitsspannen und die Regeln zur Erstellung von Planungspools';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_qprofile`
--

DROP TABLE IF EXISTS `ep_qprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_qprofile` (
  `qid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sector` varchar(20) NOT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `parent` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `area` varchar(1) DEFAULT NULL,
  `layer` varchar(2) DEFAULT NULL,
  `prio` smallint(5) unsigned DEFAULT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Hierarchiestufe',
  `inactive` tinyint(3) unsigned DEFAULT 0 COMMENT 'Nicht in Verwendung',
  `hide` tinyint(1) DEFAULT 0,
  `admin` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '(eigentlich) Bereichs-Ident / Bearbeitende Organisation',
  `adm_rep` tinyint(3) unsigned DEFAULT 0 COMMENT 'dieser admin ist oben bereits vorhanden (ausblenden!)',
  `ep_area` int(10) unsigned DEFAULT 0,
  `noarea` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `object_link` varchar(50) DEFAULT NULL,
  `contract` varchar(20) DEFAULT NULL,
  `isgrp` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `grpid` varchar(50) NOT NULL DEFAULT '' COMMENT 'td_param:(quali_choice).parid',
  `q_or` varchar(200) DEFAULT NULL,
  `selectname` varchar(50) DEFAULT NULL,
  `skillplus` varchar(250) NOT NULL COMMENT 'Liste höher gestufter, alternativer Kompetenzen',
  `qprof_tbd` tinyint(3) unsigned DEFAULT 0,
  `commit` varchar(10) DEFAULT NULL,
  `descr` varchar(20) DEFAULT NULL,
  `r_id_org` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'aus Subset',
  `skillma` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Skill Management Area',
  `ep_org` int(10) unsigned DEFAULT NULL,
  `sort` int(6) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `value` varchar(20) DEFAULT NULL COMMENT 'genutzt für Alternativbezeichnung',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`qid`),
  UNIQUE KEY `shortname` (`sector`,`shortname`),
  KEY `lft` (`lft`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=199 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplan: Qualifikationsliste (Fachkompetenzen)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_qprofile___0`
--

DROP TABLE IF EXISTS `ep_qprofile___0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_qprofile___0` (
  `qid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sector` varchar(20) NOT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `parent` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `layer` varchar(2) DEFAULT NULL,
  `prio` smallint(5) unsigned DEFAULT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Hierarchiestufe',
  `inactive` tinyint(3) unsigned DEFAULT 0 COMMENT 'Nicht in Verwendung',
  `admin` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '(eigentlich) Bereichs-Ident / Bearbeitende Organisation',
  `adm_rep` tinyint(3) unsigned DEFAULT 0 COMMENT 'dieser admin ist oben bereits vorhanden (ausblenden!)',
  `area` varchar(1) DEFAULT NULL,
  `ep_area` int(10) unsigned DEFAULT 0,
  `noarea` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `object_link` varchar(50) DEFAULT NULL,
  `contract` varchar(20) DEFAULT NULL,
  `isgrp` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `q_or` varchar(200) DEFAULT NULL,
  `selectname` varchar(50) DEFAULT NULL,
  `qprof_tbd` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `commit` varchar(10) DEFAULT NULL,
  `descr` varchar(20) DEFAULT NULL,
  `r_id_org` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'aus Subset',
  `skillma` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Skill Management Area',
  `ep_org` int(10) unsigned DEFAULT NULL,
  `value` varchar(20) DEFAULT NULL,
  `hide` tinyint(1) DEFAULT 0,
  `sort` int(6) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`qid`),
  UNIQUE KEY `shortname` (`sector`,`shortname`),
  KEY `lft` (`lft`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplan: Qualifikationsliste';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_qprofile___2013`
--

DROP TABLE IF EXISTS `ep_qprofile___2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_qprofile___2013` (
  `qid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sector` varchar(20) NOT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `parent` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `descr` varchar(20) DEFAULT NULL,
  `admin` int(10) unsigned NOT NULL DEFAULT 0,
  `contract` varchar(20) DEFAULT NULL,
  `r_id_org` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'aus Subset',
  `value` varchar(20) DEFAULT NULL,
  `layer` smallint(5) unsigned DEFAULT NULL,
  `lvl` smallint(5) unsigned DEFAULT NULL,
  `ep_org` int(10) unsigned DEFAULT NULL,
  `lft` smallint(6) NOT NULL DEFAULT 0,
  `rgt` smallint(6) NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `sort` int(6) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`qid`),
  UNIQUE KEY `shortname` (`sector`,`shortname`),
  KEY `lft` (`lft`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplan: Qualifikationsliste';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_qprofile___20140318`
--

DROP TABLE IF EXISTS `ep_qprofile___20140318`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_qprofile___20140318` (
  `qid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sector` varchar(20) NOT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `parent` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `descr` varchar(20) DEFAULT NULL,
  `admin` int(10) unsigned NOT NULL DEFAULT 0,
  `noarea` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `contract` varchar(20) DEFAULT NULL,
  `isgrp` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `q_or` varchar(100) DEFAULT NULL,
  `selectname` varchar(50) DEFAULT NULL,
  `qprof_tbd` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `commit` varchar(10) DEFAULT NULL,
  `r_id_org` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'aus Subset',
  `area` varchar(1) DEFAULT NULL,
  `layer` varchar(2) DEFAULT NULL,
  `prio` smallint(5) unsigned DEFAULT NULL,
  `ep_org` int(10) unsigned DEFAULT NULL,
  `value` varchar(20) DEFAULT NULL,
  `lft` smallint(6) NOT NULL DEFAULT 0,
  `rgt` smallint(6) NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `sort` int(6) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`qid`),
  UNIQUE KEY `shortname` (`sector`,`shortname`),
  KEY `lft` (`lft`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplan: Qualifikationsliste';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_qprofile___20150103`
--

DROP TABLE IF EXISTS `ep_qprofile___20150103`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_qprofile___20150103` (
  `qid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sector` varchar(20) NOT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `parent` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `admin` int(10) unsigned NOT NULL DEFAULT 0,
  `object_link` varchar(50) DEFAULT NULL,
  `noarea` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `contract` varchar(20) DEFAULT NULL,
  `isgrp` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `q_or` varchar(200) DEFAULT NULL,
  `selectname` varchar(50) DEFAULT NULL,
  `qprof_tbd` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `commit` varchar(10) DEFAULT NULL,
  `descr` varchar(20) DEFAULT NULL,
  `r_id_org` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'aus Subset',
  `area` varchar(1) DEFAULT NULL,
  `layer` varchar(2) DEFAULT NULL,
  `prio` smallint(5) unsigned DEFAULT NULL,
  `ep_org` int(10) unsigned DEFAULT NULL,
  `value` varchar(20) DEFAULT NULL,
  `lft` smallint(6) NOT NULL DEFAULT 0,
  `rgt` smallint(6) NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `sort` int(6) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`qid`),
  UNIQUE KEY `shortname` (`sector`,`shortname`),
  KEY `lft` (`lft`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplan: Qualifikationsliste';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_qprofile___20150127`
--

DROP TABLE IF EXISTS `ep_qprofile___20150127`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_qprofile___20150127` (
  `qid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sector` varchar(20) NOT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `parent` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `admin` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '(eigentlich) Bereichs-Ident',
  `object_link` varchar(50) DEFAULT NULL,
  `noarea` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `contract` varchar(20) DEFAULT NULL,
  `isgrp` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `q_or` varchar(200) DEFAULT NULL,
  `selectname` varchar(50) DEFAULT NULL,
  `qprof_tbd` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `commit` varchar(10) DEFAULT NULL,
  `ep_area` int(10) unsigned DEFAULT 0,
  `descr` varchar(20) DEFAULT NULL,
  `r_id_org` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'aus Subset',
  `area` varchar(1) DEFAULT NULL,
  `layer` varchar(2) DEFAULT NULL,
  `prio` smallint(5) unsigned DEFAULT NULL,
  `ep_org` int(10) unsigned DEFAULT NULL,
  `value` varchar(20) DEFAULT NULL,
  `lft` smallint(6) NOT NULL DEFAULT 0,
  `rgt` smallint(6) NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `sort` int(6) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`qid`),
  UNIQUE KEY `shortname` (`sector`,`shortname`),
  KEY `lft` (`lft`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplan: Qualifikationsliste';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_qprofile___20180813`
--

DROP TABLE IF EXISTS `ep_qprofile___20180813`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_qprofile___20180813` (
  `qid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sector` varchar(20) NOT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `parent` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `layer` varchar(2) DEFAULT NULL,
  `prio` smallint(5) unsigned DEFAULT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Hierarchiestufe',
  `inactive` tinyint(3) unsigned DEFAULT 0 COMMENT 'Nicht in Verwendung',
  `admin` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '(eigentlich) Bereichs-Ident / Bearbeitende Organisation',
  `adm_rep` tinyint(3) unsigned DEFAULT 0 COMMENT 'dieser admin ist oben bereits vorhanden (ausblenden!)',
  `area` varchar(1) DEFAULT NULL,
  `ep_area` int(10) unsigned DEFAULT 0,
  `noarea` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `object_link` varchar(50) DEFAULT NULL,
  `contract` varchar(20) DEFAULT NULL,
  `isgrp` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `q_or` varchar(200) DEFAULT NULL,
  `selectname` varchar(50) DEFAULT NULL,
  `qprof_tbd` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `commit` varchar(10) DEFAULT NULL,
  `descr` varchar(20) DEFAULT NULL,
  `r_id_org` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'aus Subset',
  `skillma` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Skill Management Area',
  `ep_org` int(10) unsigned DEFAULT NULL,
  `value` varchar(20) DEFAULT NULL,
  `hide` tinyint(1) DEFAULT 0,
  `sort` int(6) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`qid`),
  UNIQUE KEY `shortname` (`sector`,`shortname`),
  KEY `lft` (`lft`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=154 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplan: Qualifikationsliste';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_qprofile___20190612`
--

DROP TABLE IF EXISTS `ep_qprofile___20190612`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_qprofile___20190612` (
  `qid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sector` varchar(20) NOT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `parent` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `area` varchar(1) DEFAULT NULL,
  `layer` varchar(2) DEFAULT NULL,
  `prio` smallint(5) unsigned DEFAULT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Hierarchiestufe',
  `inactive` tinyint(3) unsigned DEFAULT 0 COMMENT 'Nicht in Verwendung',
  `admin` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '(eigentlich) Bereichs-Ident / Bearbeitende Organisation',
  `adm_rep` tinyint(3) unsigned DEFAULT 0 COMMENT 'dieser admin ist oben bereits vorhanden (ausblenden!)',
  `ep_area` int(10) unsigned DEFAULT 0,
  `noarea` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `object_link` varchar(50) DEFAULT NULL,
  `contract` varchar(20) DEFAULT NULL,
  `isgrp` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `q_or` varchar(200) DEFAULT NULL,
  `selectname` varchar(50) DEFAULT NULL,
  `qprof_tbd` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `commit` varchar(10) DEFAULT NULL,
  `descr` varchar(20) DEFAULT NULL,
  `r_id_org` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'aus Subset',
  `skillma` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Skill Management Area',
  `ep_org` int(10) unsigned DEFAULT NULL,
  `hide` tinyint(1) DEFAULT 0,
  `sort` int(6) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `value` varchar(20) DEFAULT NULL COMMENT 'obsolet',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`qid`),
  UNIQUE KEY `shortname` (`sector`,`shortname`),
  KEY `lft` (`lft`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=190 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplan: Qualifikationsliste';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_qprofile___20191210`
--

DROP TABLE IF EXISTS `ep_qprofile___20191210`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_qprofile___20191210` (
  `qid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sector` varchar(20) NOT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `parent` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `area` varchar(1) DEFAULT NULL,
  `layer` varchar(2) DEFAULT NULL,
  `prio` smallint(5) unsigned DEFAULT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Hierarchiestufe',
  `inactive` tinyint(3) unsigned DEFAULT 0 COMMENT 'Nicht in Verwendung',
  `admin` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '(eigentlich) Bereichs-Ident / Bearbeitende Organisation',
  `adm_rep` tinyint(3) unsigned DEFAULT 0 COMMENT 'dieser admin ist oben bereits vorhanden (ausblenden!)',
  `ep_area` int(10) unsigned DEFAULT 0,
  `noarea` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `object_link` varchar(50) DEFAULT NULL,
  `contract` varchar(20) DEFAULT NULL,
  `isgrp` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `q_or` varchar(200) DEFAULT NULL,
  `selectname` varchar(50) DEFAULT NULL,
  `skillplus` varchar(250) NOT NULL COMMENT 'Liste höher gestufter, alternativer Kompetenzen',
  `qprof_tbd` tinyint(3) unsigned DEFAULT 0,
  `commit` varchar(10) DEFAULT NULL,
  `descr` varchar(20) DEFAULT NULL,
  `r_id_org` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'aus Subset',
  `skillma` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Skill Management Area',
  `ep_org` int(10) unsigned DEFAULT NULL,
  `hide` tinyint(1) DEFAULT 0,
  `sort` int(6) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `value` varchar(20) DEFAULT NULL COMMENT 'obsolet',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`qid`),
  UNIQUE KEY `shortname` (`sector`,`shortname`),
  KEY `lft` (`lft`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=192 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplan: Qualifikationsliste';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_qsave`
--

DROP TABLE IF EXISTS `ep_qsave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_qsave` (
  `sector` varchar(20) NOT NULL,
  `qid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` varchar(20) DEFAULT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `admin` int(10) unsigned DEFAULT NULL,
  `contract` varchar(20) DEFAULT NULL,
  `value` varchar(20) DEFAULT NULL,
  `lft` smallint(6) NOT NULL DEFAULT 0,
  `rgt` smallint(6) NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `sort` int(6) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`sector`,`qid`),
  UNIQUE KEY `shortname` (`shortname`),
  KEY `lft` (`lft`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Einsatzplan: Qualifikationsliste';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_realloc_ctrl`
--

DROP TABLE IF EXISTS `ep_realloc_ctrl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_realloc_ctrl` (
  `rid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adm_org` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'entspricht ep_qprofile.admin',
  `description` varchar(100) NOT NULL,
  `opsyear` year(4) DEFAULT NULL COMMENT 'Betriebsjahr',
  `grp_dtid` int(10) unsigned DEFAULT NULL COMMENT 'GRUPPENPLANUNG: die zu ersetzende Platzhalter-Tour (dtid)',
  `grp_dtcode` int(10) unsigned DEFAULT NULL COMMENT 'Obiger Tourname der Referenztour',
  `dtid_incl` text NOT NULL COMMENT 'Liste der verwalteten Diensttouren-IDs (dtid)',
  `dtid_stby` int(10) unsigned DEFAULT NULL COMMENT 'Reserve-Vor-Ort Dienstour',
  `dtid_head` varchar(100) NOT NULL COMMENT 'Liste der potentiellen Gruppenleitertouren (dtid)',
  `dtid_ep` text DEFAULT NULL COMMENT 'Live verwendete, aber zu meidende Touren (during DEV only)',
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Steuerdaten für Umdispositionen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_realloc_focus`
--

DROP TABLE IF EXISTS `ep_realloc_focus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_realloc_focus` (
  `ident` int(10) unsigned NOT NULL COMMENT 'Mitarbeiter',
  `focussed` date NOT NULL DEFAULT '9999-12-31' COMMENT 'Umschaltdatum von Planung zu Umdisposition',
  `rid` int(10) unsigned NOT NULL COMMENT 'Job-ID',
  `released` date NOT NULL DEFAULT '9999-12-31' COMMENT 'aus Umdisposition entlassen',
  `originator` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Initiiert durch',
  `reladmin` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Freigabe durch',
  `remark` varchar(255) NOT NULL COMMENT 'Anmerkung',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Letzte Bearbeitung',
  `modifier` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'geändert durch',
  PRIMARY KEY (`ident`,`focussed`,`rid`),
  KEY `focussed` (`focussed`),
  KEY `released` (`released`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Die Mitarbeiter-Einsatztage, die von der Planung in die Umdisposition verschoben wurden';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_realloc_job`
--

DROP TABLE IF EXISTS `ep_realloc_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_realloc_job` (
  `rid` int(10) unsigned NOT NULL COMMENT 'Job-ID',
  `opsday` date NOT NULL COMMENT 'Betriebstag',
  `ident` int(10) unsigned NOT NULL COMMENT 'Mitarbeiter',
  `short4` varchar(50) DEFAULT NULL COMMENT 'Kürzel',
  `matchcode` varchar(200) DEFAULT NULL COMMENT 'Namen mit Ort',
  `noduty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Dienstfrei-Marker',
  `seq` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzeigereihenfolge',
  `ridini` int(10) unsigned NOT NULL COMMENT 'Initial-rid',
  `grp` varchar(10) NOT NULL COMMENT 'zugeteilte Gruppe',
  `grpH` varchar(10) NOT NULL COMMENT 'Name der geleiteten Gruppe',
  `grpini` varchar(10) NOT NULL COMMENT 'Initial-Gruppe',
  `grphead` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Gruppenleitermarkierung',
  `grpheadini` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Initial-Gruppenleitung',
  `spidini` int(10) unsigned DEFAULT NULL COMMENT 'Plan-spid bei Prozessbeginn',
  `spdtid` int(10) unsigned DEFAULT NULL COMMENT 'Kopie der dtid aus Betriebsplan',
  `tourini` varchar(50) NOT NULL COMMENT 'TourNr bei Prozessbeginn',
  `unavbl` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Nicht-Verfügbar-Marker',
  `dtidact` int(10) unsigned DEFAULT NULL COMMENT 'dtid der momentanen Zuweisung',
  `touract` int(10) unsigned DEFAULT NULL COMMENT 'TourNr aktuell',
  `offerElse` varchar(50) DEFAULT NULL COMMENT 'Dienstangebote in andern Bereichen',
  `jremark` varchar(255) DEFAULT NULL COMMENT 'Jobbezogene Anmerkung',
  `remkini` varchar(255) DEFAULT NULL COMMENT 'Initial-Anmerkung',
  `maname` varchar(100) DEFAULT NULL COMMENT 'Namen ohne Ort',
  `eo1` varchar(20) DEFAULT NULL COMMENT 'Essens-Ort = Bestellung Frühstück',
  `eo2` varchar(20) DEFAULT NULL COMMENT 'Essens-Ort = Bestellung Mittagessen',
  `eo3` varchar(20) DEFAULT NULL COMMENT 'Essens-Ort = Bestellung Abendessen',
  `ukftvor` varchar(100) DEFAULT NULL COMMENT 'Unterkunft vor dem Arbeitstag',
  `ukftnach` varchar(100) DEFAULT NULL COMMENT 'Unterkunft nach dem Arbeitstag',
  `ea1` varchar(20) DEFAULT NULL COMMENT 'Essensort FR aktuell',
  `ea2` varchar(20) DEFAULT NULL COMMENT 'Essensort MI aktuell',
  `ea3` varchar(20) DEFAULT NULL COMMENT 'Essensort AB aktuell',
  `ukav` varchar(100) DEFAULT NULL COMMENT 'Ukft vorabends aktuell',
  `ukan` varchar(100) DEFAULT NULL COMMENT 'Ukft nachfolgend aktuell',
  `dept` varchar(10) DEFAULT NULL COMMENT 'Auftraggebende Abteilung der Diensttour',
  `prodarea` int(10) unsigned DEFAULT NULL COMMENT 'Produktions-ID der Diensttour gemäss fi_prodarea',
  `eg123` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Summe aller Gruppenbestellungen',
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'Serviceplan-ID wie angeordnet',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'Assign-ID wie angeordnet',
  `spname` varchar(50) DEFAULT NULL COMMENT 'Diensttourbezeichnung wie angeordnet',
  `did` int(10) unsigned DEFAULT NULL COMMENT 'duty-ID wie angeordnet',
  PRIMARY KEY (`rid`,`opsday`,`ident`),
  KEY `seq` (`seq`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_realloc_job__arc`
--

DROP TABLE IF EXISTS `ep_realloc_job__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_realloc_job__arc` (
  `rid` int(10) unsigned NOT NULL COMMENT 'Job-ID',
  `opsday` date NOT NULL COMMENT 'Betriebstag',
  `ident` int(10) unsigned NOT NULL COMMENT 'Mitarbeiter',
  `short4` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Kürzel',
  `matchcode` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Namen mit Ort',
  `noduty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Dienstfrei-Marker',
  `seq` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzeigereihenfolge',
  `ridini` int(10) unsigned NOT NULL COMMENT 'Initial-rid',
  `grp` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'zugeteilte Gruppe',
  `grpH` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT 'geleitete Gruppe',
  `grpini` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Initial-Gruppe',
  `grphead` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Gruppenleitermarkierung',
  `grpheadini` int(10) unsigned DEFAULT NULL COMMENT 'Initial-Gruppenleitung',
  `spidini` int(10) unsigned DEFAULT NULL COMMENT 'Plan-spid bei Prozessbeginn',
  `spdtid` int(10) unsigned DEFAULT NULL COMMENT 'Kopie der dtid aus Betriebsplan',
  `tourini` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'TourNr bei Prozessbeginn',
  `unavbl` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Nicht-Verfügbar-Marker',
  `dtidact` int(10) unsigned DEFAULT NULL COMMENT 'dtid der momentanen Zuweisung',
  `touract` int(10) unsigned DEFAULT NULL COMMENT 'TourNr aktuell',
  `offerElse` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Dienstangebote in andern Bereichen',
  `jremark` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Jobbezogene Anmerkung',
  `remkini` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Initialanmerkung',
  `maname` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Namen ohne Ort',
  `eo1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Frühstück',
  `eo2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Mittagessen',
  `eo3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Abendessen',
  `ukftvor` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Unterkunft vorabends',
  `ukftnach` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Unterkunft danach',
  `ea1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'FR aktuell',
  `ea2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'MI aktuell',
  `ea3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'AB aktuell',
  `ukav` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ukft vorabends aktuell',
  `ukan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ukft nachfolgend aktuell',
  `dept` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Auftraggebende Abteilung der Diensttour',
  `prodarea` int(10) unsigned DEFAULT NULL COMMENT 'Produktions-ID der Diensttour',
  `eg123` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Summe aller Gruppenessen',
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'Serviceplan-Id nach Anordnung',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'Assign-Id nach Anordnung',
  `spname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'neue Diensttourbezeichung',
  `did` int(10) unsigned DEFAULT NULL COMMENT 'duty-ID nach Anordnung',
  `step` int(10) unsigned DEFAULT NULL,
  `archived` datetime DEFAULT current_timestamp(),
  `admin` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_reallocated`
--

DROP TABLE IF EXISTS `ep_reallocated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_reallocated` (
  `rid` int(10) unsigned NOT NULL COMMENT 'Job-ID',
  `opsday` date NOT NULL COMMENT 'Betriebstag',
  `ident` int(10) unsigned NOT NULL COMMENT 'Mitarbeiter',
  `short4` varchar(50) DEFAULT NULL COMMENT 'Kürzel',
  `matchcode` varchar(200) DEFAULT NULL COMMENT 'Namen mit Ort',
  `noduty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Dienstfrei-Marker',
  `seq` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzeigereihenfolge',
  `ridini` int(10) unsigned NOT NULL COMMENT 'Initial-rid',
  `grp` varchar(10) NOT NULL COMMENT 'zugeteilte Gruppe',
  `grpH` varchar(10) NOT NULL COMMENT 'Name der geleiteten Gruppe',
  `grpini` varchar(10) NOT NULL COMMENT 'Initial-Gruppe',
  `grphead` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Gruppenleitermarkierung',
  `grpheadini` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Initial-Gruppenleitung',
  `spidini` int(10) unsigned DEFAULT NULL COMMENT 'Plan-spid bei Prozessbeginn',
  `spdtid` int(10) unsigned DEFAULT NULL COMMENT 'Kopie der dtid aus Betriebsplan',
  `tourini` varchar(50) NOT NULL COMMENT 'TourNr bei Prozessbeginn',
  `unavbl` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Nicht-Verfügbar-Marker',
  `dtidact` int(10) unsigned DEFAULT NULL COMMENT 'dtid der momentanen Zuweisung',
  `touract` int(10) unsigned DEFAULT NULL COMMENT 'TourNr aktuell',
  `offerElse` varchar(50) DEFAULT NULL COMMENT 'Dienstangebote in andern Bereichen',
  `jremark` varchar(255) DEFAULT NULL COMMENT 'Jobbezogene Anmerkung',
  `remkini` varchar(255) DEFAULT NULL COMMENT 'Initial-Anmerkung',
  `maname` varchar(100) DEFAULT NULL COMMENT 'Namen ohne Ort',
  `eo1` varchar(20) DEFAULT NULL COMMENT 'Essens-Ort = Bestellung Frühstück',
  `eo2` varchar(20) DEFAULT NULL COMMENT 'Essens-Ort = Bestellung Mittagessen',
  `eo3` varchar(20) DEFAULT NULL COMMENT 'Essens-Ort = Bestellung Abendessen',
  `ukftvor` varchar(100) DEFAULT NULL COMMENT 'Unterkunft vor dem Arbeitstag',
  `ukftnach` varchar(100) DEFAULT NULL COMMENT 'Unterkunft nach dem Arbeitstag',
  `ea1` varchar(20) DEFAULT NULL COMMENT 'Essensort FR aktuell',
  `ea2` varchar(20) DEFAULT NULL COMMENT 'Essensort MI aktuell',
  `ea3` varchar(20) DEFAULT NULL COMMENT 'Essensort AB aktuell',
  `ukav` varchar(100) DEFAULT NULL COMMENT 'Ukft vorabends aktuell',
  `ukan` varchar(100) DEFAULT NULL COMMENT 'Ukft nachfolgend aktuell',
  `dept` varchar(10) DEFAULT NULL COMMENT 'Auftraggebende Abteilung der Diensttour',
  `prodarea` int(10) unsigned DEFAULT NULL COMMENT 'Produktions-ID der Diensttour gemäss fi_prodarea',
  `eg123` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Summe aller Gruppenbestellungen',
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'Serviceplan-ID nach Anordnung',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'Assign-ID nach Anordnung',
  `spname` varchar(50) DEFAULT NULL COMMENT 'neue Diensttourbezeichnung',
  `did` int(10) unsigned DEFAULT NULL COMMENT 'duty-ID nach Anordnung',
  `changes` int(10) unsigned DEFAULT NULL COMMENT 'Anzahl der Veränderungen',
  `admin` int(10) unsigned DEFAULT NULL COMMENT 'Umdisponent',
  `reallocated` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Zeitpunkt der Umdisposition',
  KEY `rid` (`rid`),
  KEY `opsday` (`opsday`),
  KEY `ident` (`ident`),
  KEY `seq` (`seq`),
  KEY `reallocated` (`reallocated`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Log der umdisponierten Daten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_sector`
--

DROP TABLE IF EXISTS `ep_sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_sector` (
  `qid` int(10) unsigned NOT NULL DEFAULT 0,
  `ep_area` int(10) unsigned DEFAULT 0,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `parent` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `layer` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `prio` smallint(5) unsigned DEFAULT NULL,
  `shortname` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `admin` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '(eigentlich) Bereichs-Ident / Bearbeitende Organisation',
  `area` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `isgrp` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `q_or` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `descr` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `r_id_org` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'aus Subset',
  `ep_org` int(10) unsigned DEFAULT NULL,
  `hide` tinyint(1) DEFAULT 0,
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Hierarchiestufe',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_serv_of___0`
--

DROP TABLE IF EXISTS `ep_serv_of___0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_serv_of___0` (
  `soid` int(10) unsigned NOT NULL DEFAULT 0,
  `ident` int(10) unsigned NOT NULL,
  `opsday` date NOT NULL,
  `area` smallint(5) unsigned DEFAULT NULL,
  `offer` int(10) unsigned DEFAULT 0,
  `deny` int(10) unsigned DEFAULT 0,
  `remark` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `spid` int(10) unsigned NOT NULL DEFAULT 0,
  `entered` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `originator` int(10) unsigned DEFAULT 9012
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_service_offer`
--

DROP TABLE IF EXISTS `ep_service_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_service_offer` (
  `soid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `opsday` date NOT NULL,
  `area` smallint(5) unsigned DEFAULT NULL,
  `offer` int(10) unsigned DEFAULT 0,
  `deny` int(10) unsigned DEFAULT 0,
  `remark` varchar(100) DEFAULT NULL,
  `spid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'verwendet bei selfduty-Zuweisungen',
  `entered` timestamp NOT NULL DEFAULT current_timestamp(),
  `originator` int(10) unsigned DEFAULT 9012,
  PRIMARY KEY (`soid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`,`area`),
  KEY `spid` (`spid`)
) ENGINE=MyISAM AUTO_INCREMENT=64398 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplanung: Mitarbeitsangebote';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_service_offer___0`
--

DROP TABLE IF EXISTS `ep_service_offer___0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_service_offer___0` (
  `soid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `opsday` date NOT NULL,
  `area` smallint(5) unsigned DEFAULT NULL,
  `offer` int(10) unsigned DEFAULT 0,
  `deny` int(10) unsigned DEFAULT 0,
  `remark` varchar(100) DEFAULT NULL,
  `spid` int(10) unsigned NOT NULL DEFAULT 0,
  `entered` timestamp NOT NULL DEFAULT current_timestamp(),
  `originator` int(10) unsigned DEFAULT 9012,
  PRIMARY KEY (`soid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`,`area`),
  KEY `spid` (`spid`)
) ENGINE=MyISAM AUTO_INCREMENT=40789 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplanung: Mitarbeitsangebote';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_service_offer___2013`
--

DROP TABLE IF EXISTS `ep_service_offer___2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_service_offer___2013` (
  `soid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `opsday` date NOT NULL,
  `area` smallint(5) unsigned DEFAULT NULL,
  `offer` int(10) unsigned DEFAULT 0,
  `deny` int(10) unsigned DEFAULT 0,
  `remark` varchar(100) DEFAULT NULL,
  `entered` timestamp NOT NULL DEFAULT current_timestamp(),
  `originator` int(10) unsigned DEFAULT 9012,
  PRIMARY KEY (`soid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`,`area`)
) ENGINE=MyISAM AUTO_INCREMENT=4441 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplanung: Mitarbeitsangebote bis Ende 2013';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_service_offer___2014`
--

DROP TABLE IF EXISTS `ep_service_offer___2014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_service_offer___2014` (
  `soid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `opsday` date NOT NULL,
  `area` smallint(5) unsigned DEFAULT NULL,
  `offer` int(10) unsigned DEFAULT 0,
  `deny` int(10) unsigned DEFAULT 0,
  `remark` varchar(100) DEFAULT NULL,
  `spid` int(10) unsigned NOT NULL DEFAULT 0,
  `entered` timestamp NOT NULL DEFAULT current_timestamp(),
  `originator` int(10) unsigned DEFAULT 9012,
  PRIMARY KEY (`soid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`,`area`)
) ENGINE=MyISAM AUTO_INCREMENT=12101 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplanung: Mitarbeitsangebote bis Ende 2014';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_service_offer___2014plus`
--

DROP TABLE IF EXISTS `ep_service_offer___2014plus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_service_offer___2014plus` (
  `soid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `opsday` date NOT NULL,
  `area` smallint(5) unsigned DEFAULT NULL,
  `offer` int(10) unsigned DEFAULT 0,
  `deny` int(10) unsigned DEFAULT 0,
  `remark` varchar(100) DEFAULT NULL,
  `spid` int(10) unsigned NOT NULL DEFAULT 0,
  `entered` timestamp NOT NULL DEFAULT current_timestamp(),
  `originator` int(10) unsigned DEFAULT 9012,
  PRIMARY KEY (`soid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`,`area`)
) ENGINE=MyISAM AUTO_INCREMENT=12101 DEFAULT CHARSET=utf8 COMMENT='Einsatzplanung: Mitarbeitsangebote';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_service_offer__arc`
--

DROP TABLE IF EXISTS `ep_service_offer__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_service_offer__arc` (
  `soid` text DEFAULT NULL,
  `ident` text DEFAULT NULL,
  `opsday` text DEFAULT NULL,
  `area` text DEFAULT NULL,
  `offer` text DEFAULT NULL,
  `deny` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `spid` text DEFAULT NULL,
  `entered` text DEFAULT NULL,
  `originator` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(10) unsigned NOT NULL DEFAULT 9012
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Einsatzplanung: Archiv Mitarbeitsangebote';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_service_plan`
--

DROP TABLE IF EXISTS `ep_service_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_service_plan` (
  `spid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opsday` date NOT NULL,
  `dtid` int(10) unsigned NOT NULL,
  `xtra` varchar(10) NOT NULL,
  `instruc` varchar(10) NOT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `onorder` varchar(20) DEFAULT NULL,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `selfregist` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `realloc` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `productid` int(10) unsigned DEFAULT NULL,
  `crea_by` varchar(20) DEFAULT NULL,
  `trigger` varchar(50) DEFAULT NULL,
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`spid`),
  UNIQUE KEY `season` (`opsday`,`dtid`,`xtra`,`instruc`),
  KEY `dtid` (`dtid`),
  KEY `xtra` (`xtra`),
  KEY `instruc` (`instruc`)
) ENGINE=MyISAM AUTO_INCREMENT=57496 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplanung: Geplante Diensttouren';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_service_plan___2013`
--

DROP TABLE IF EXISTS `ep_service_plan___2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_service_plan___2013` (
  `spid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opsday` date NOT NULL,
  `dtid` int(10) unsigned NOT NULL,
  `xtra` varchar(10) NOT NULL,
  `instruc` varchar(10) NOT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `onorder` varchar(20) DEFAULT NULL,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `productid` int(10) unsigned DEFAULT NULL,
  `crea_by` varchar(20) DEFAULT NULL,
  `trigger` varchar(50) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`spid`),
  UNIQUE KEY `season` (`opsday`,`dtid`,`xtra`,`instruc`),
  KEY `dtid` (`dtid`),
  KEY `xtra` (`xtra`),
  KEY `instruc` (`instruc`)
) ENGINE=MyISAM AUTO_INCREMENT=1821 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplanung: Geplante Diensttouren';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_service_plan___20191218`
--

DROP TABLE IF EXISTS `ep_service_plan___20191218`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_service_plan___20191218` (
  `spid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opsday` date NOT NULL,
  `dtid` int(10) unsigned NOT NULL,
  `xtra` varchar(10) NOT NULL,
  `instruc` varchar(10) NOT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `onorder` varchar(20) DEFAULT NULL,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `selfregist` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `productid` int(10) unsigned DEFAULT NULL,
  `crea_by` varchar(20) DEFAULT NULL,
  `trigger` varchar(50) DEFAULT NULL,
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`spid`),
  UNIQUE KEY `season` (`opsday`,`dtid`,`xtra`,`instruc`),
  KEY `dtid` (`dtid`),
  KEY `xtra` (`xtra`),
  KEY `instruc` (`instruc`)
) ENGINE=MyISAM AUTO_INCREMENT=41702 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplanung: Geplante Diensttouren';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_service_plan___TEST`
--

DROP TABLE IF EXISTS `ep_service_plan___TEST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_service_plan___TEST` (
  `spid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opsday` date NOT NULL,
  `dtid` int(10) unsigned NOT NULL,
  `xtra` varchar(10) NOT NULL,
  `instruc` varchar(10) NOT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `onorder` varchar(20) DEFAULT NULL,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `selfregist` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `productid` int(10) unsigned DEFAULT NULL,
  `crea_by` varchar(20) DEFAULT NULL,
  `trigger` varchar(50) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`spid`),
  UNIQUE KEY `season` (`opsday`,`dtid`,`xtra`,`instruc`),
  KEY `dtid` (`dtid`),
  KEY `xtra` (`xtra`),
  KEY `instruc` (`instruc`)
) ENGINE=MyISAM AUTO_INCREMENT=12465 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplanung: Geplante Diensttouren';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_service_plan___copy0428`
--

DROP TABLE IF EXISTS `ep_service_plan___copy0428`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_service_plan___copy0428` (
  `spid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opsday` date NOT NULL,
  `dtid` int(10) unsigned NOT NULL,
  `xtra` varchar(10) NOT NULL,
  `instruc` varchar(10) NOT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `onorder` varchar(20) DEFAULT NULL,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `selfregist` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `productid` int(10) unsigned DEFAULT NULL,
  `crea_by` varchar(20) DEFAULT NULL,
  `trigger` varchar(50) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`spid`),
  UNIQUE KEY `season` (`opsday`,`dtid`,`xtra`,`instruc`),
  KEY `dtid` (`dtid`),
  KEY `xtra` (`xtra`),
  KEY `instruc` (`instruc`)
) ENGINE=MyISAM AUTO_INCREMENT=10659 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplanung: Geplante Diensttouren';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_service_plan___ok`
--

DROP TABLE IF EXISTS `ep_service_plan___ok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_service_plan___ok` (
  `spid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opsday` date NOT NULL,
  `dtid` int(10) unsigned NOT NULL,
  `xtra` varchar(10) NOT NULL,
  `instruc` varchar(10) NOT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `onorder` varchar(20) DEFAULT NULL,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `selfregist` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `productid` int(10) unsigned DEFAULT NULL,
  `crea_by` varchar(20) DEFAULT NULL,
  `trigger` varchar(50) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`spid`),
  UNIQUE KEY `season` (`opsday`,`dtid`,`xtra`,`instruc`),
  KEY `dtid` (`dtid`),
  KEY `xtra` (`xtra`),
  KEY `instruc` (`instruc`)
) ENGINE=MyISAM AUTO_INCREMENT=8113 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Einsatzplanung: Geplante Diensttouren';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_service_plan__arc`
--

DROP TABLE IF EXISTS `ep_service_plan__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_service_plan__arc` (
  `spid` text DEFAULT NULL,
  `opsday` text DEFAULT NULL,
  `dtid` text DEFAULT NULL,
  `xtra` text DEFAULT NULL,
  `instruc` text DEFAULT NULL,
  `opsmode` text DEFAULT NULL,
  `onorder` text DEFAULT NULL,
  `isops` text DEFAULT NULL,
  `selfregist` text DEFAULT NULL,
  `realloc` text DEFAULT NULL,
  `productid` text DEFAULT NULL,
  `crea_by` text DEFAULT NULL,
  `trigger` text DEFAULT NULL,
  `entered` text DEFAULT NULL,
  `originator` text DEFAULT NULL,
  `modified` text DEFAULT NULL,
  `modifier` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_skills`
--

DROP TABLE IF EXISTS `ep_skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_skills` (
  `qid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shortname` varchar(20) DEFAULT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `descr` varchar(20) DEFAULT NULL,
  `contract` varchar(20) DEFAULT NULL,
  `noarea` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `isgrp` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `q_or` varchar(200) DEFAULT NULL,
  `admin` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '(eigentlich) Bereichs-Ident',
  `ep_area` int(10) unsigned DEFAULT 0,
  `qprof_tbd` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ep_org` int(10) unsigned DEFAULT NULL,
  `r_id_org` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'aus Subset',
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
-- Table structure for table `ep_team`
--

DROP TABLE IF EXISTS `ep_team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_team` (
  `qid` int(10) unsigned NOT NULL DEFAULT 0,
  `ident` int(10) unsigned NOT NULL DEFAULT 0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date DEFAULT '9999-12-31',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `admin` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `plan` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `dispo` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `split` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `look` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `funct` int(10) unsigned DEFAULT NULL COMMENT 'old!',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`qid`,`ident`,`validfrom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Einsatzplanung: Team pro Zuständigkeitsbereich';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ep_workteam`
--

DROP TABLE IF EXISTS `ep_workteam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ep_workteam` (
  `idwt` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `dtlead` int(10) unsigned NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `pre_night` varchar(20) NOT NULL DEFAULT 'std',
  `breakfast` varchar(20) NOT NULL DEFAULT 'std',
  `lunch` varchar(20) NOT NULL DEFAULT 'std',
  `dinner` varchar(20) NOT NULL DEFAULT 'std',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idwt`),
  KEY `lead` (`dtlead`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Arbeitsgruppen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_report`
--

DROP TABLE IF EXISTS `event_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_report` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `entered` datetime DEFAULT NULL,
  `reported` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `anonym` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `eventdatum` date DEFAULT NULL,
  `eventzeit` time DEFAULT NULL,
  `kind` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `weather` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `affected` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `workflowstate` varchar(200) COLLATE utf8_unicode_ci DEFAULT 'gemeldet',
  `workflowkind` text CHARACTER SET utf8 DEFAULT NULL,
  `docu` text CHARACTER SET utf8 DEFAULT NULL,
  `emailText` text CHARACTER SET utf8 DEFAULT NULL COMMENT 'letzter Wert, falls mehrmals aufgerufen',
  `emailOther` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT 'letzter Wert, falls mehrmals aufgerufen',
  `ident` int(11) DEFAULT NULL COMMENT 'für feedback E-Mail',
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=432 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `event_report2`
--

DROP TABLE IF EXISTS `event_report2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_report2` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `entered` datetime DEFAULT NULL,
  `reported` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `anonym` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `eventdatum` date DEFAULT NULL,
  `eventzeit` time DEFAULT NULL,
  `kind` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `weather` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `affected` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `triggering` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `consequences` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `workflowstate` varchar(200) COLLATE utf8_unicode_ci DEFAULT 'gemeldet',
  `workflowkind` text CHARACTER SET utf8 DEFAULT NULL,
  `docu` text CHARACTER SET utf8 DEFAULT NULL,
  `emailText` text CHARACTER SET utf8 DEFAULT NULL COMMENT 'letzter Wert, falls mehrmals aufgerufen',
  `emailOther` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT 'letzter Wert, falls mehrmals aufgerufen',
  `grpkey` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `test` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_bericht`
--

DROP TABLE IF EXISTS `fb_bericht`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_bericht` (
  `idzf` int(10) unsigned NOT NULL DEFAULT 0,
  `idzp` int(10) unsigned DEFAULT NULL,
  `idza` int(10) unsigned DEFAULT NULL,
  `opsday` date DEFAULT NULL,
  `planid` varchar(20) DEFAULT NULL,
  `opsid` varchar(20) DEFAULT NULL,
  `ref_plan` varchar(20) NOT NULL,
  `ref_fdl` varchar(20) NOT NULL,
  `onOffer` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `opsmode` varchar(20) NOT NULL,
  `comment` text DEFAULT NULL,
  `passW` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `rotten` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `passE` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `velowagen` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `runaction1` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `dep_eff` varchar(10) DEFAULT NULL,
  `arr_eff` varchar(10) DEFAULT NULL,
  `via_eff` varchar(10) DEFAULT NULL,
  `dep_km` int(10) unsigned DEFAULT 0,
  `arr_km` int(10) unsigned DEFAULT 0,
  `via_km` int(10) unsigned DEFAULT 0,
  `lok` varchar(10) DEFAULT NULL,
  `wagen` varchar(50) DEFAULT NULL,
  `offseats1` int(10) unsigned DEFAULT 0,
  `offseats2` int(10) unsigned DEFAULT 0,
  `declass1` int(10) unsigned DEFAULT 0,
  `result` varchar(20) DEFAULT NULL,
  `pax1cl_W` int(10) unsigned NOT NULL DEFAULT 0,
  `pax2cl_W` int(10) unsigned NOT NULL DEFAULT 0,
  `pax2Ccl_W` int(10) unsigned NOT NULL DEFAULT 0,
  `velo_W` int(10) unsigned NOT NULL DEFAULT 0,
  `action1_W` int(10) unsigned NOT NULL DEFAULT 0,
  `dfbcard_W` int(10) unsigned NOT NULL DEFAULT 0,
  `cl2child_W` int(10) unsigned NOT NULL DEFAULT 0,
  `pax1cl_R` int(10) unsigned NOT NULL DEFAULT 0,
  `pax2cl_R` int(10) unsigned NOT NULL DEFAULT 0,
  `pax2Ccl_R` int(10) unsigned NOT NULL DEFAULT 0,
  `velo_R` int(10) unsigned NOT NULL DEFAULT 0,
  `action1_R` int(10) unsigned NOT NULL DEFAULT 0,
  `dfbcard_R` int(10) unsigned NOT NULL DEFAULT 0,
  `cl2child_R` int(10) unsigned NOT NULL DEFAULT 0,
  `pax1cl_E` int(10) unsigned NOT NULL DEFAULT 0,
  `pax2cl_E` int(10) unsigned NOT NULL DEFAULT 0,
  `pax2Ccl_E` int(10) unsigned NOT NULL DEFAULT 0,
  `velo_E` int(10) unsigned NOT NULL DEFAULT 0,
  `action1_E` int(10) unsigned NOT NULL DEFAULT 0,
  `dfbcard_E` int(10) unsigned NOT NULL DEFAULT 0,
  `cl2child_E` int(10) unsigned NOT NULL DEFAULT 0,
  `commentPax` text DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzf`),
  KEY `opsday` (`opsday`),
  KEY `opsid` (`opsid`),
  KEY `planid` (`planid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Fahrbetrieb: Erfassungsdatei für Fahrberichte';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_bericht_basket`
--

DROP TABLE IF EXISTS `fb_bericht_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_bericht_basket` (
  `idzf` int(10) unsigned NOT NULL DEFAULT 0,
  `idzp` int(10) unsigned DEFAULT NULL,
  `idza` int(10) unsigned DEFAULT NULL,
  `opsday` date DEFAULT NULL,
  `planid` varchar(20) DEFAULT NULL,
  `opsid` varchar(20) DEFAULT NULL,
  `ref_plan` varchar(20) NOT NULL,
  `ref_fdl` varchar(20) NOT NULL,
  `onOffer` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `opsmode` varchar(20) NOT NULL,
  `comment` text DEFAULT NULL,
  `passW` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `rotten` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `passE` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `velowagen` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `runaction1` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `dep_eff` varchar(10) DEFAULT NULL,
  `arr_eff` varchar(10) DEFAULT NULL,
  `via_eff` varchar(10) DEFAULT NULL,
  `dep_km` int(10) unsigned DEFAULT 0,
  `arr_km` int(10) unsigned DEFAULT 0,
  `via_km` int(10) unsigned DEFAULT 0,
  `lok` varchar(10) DEFAULT NULL,
  `wagen` varchar(50) DEFAULT NULL,
  `offseats1` int(10) unsigned DEFAULT 0,
  `offseats2` int(10) unsigned DEFAULT 0,
  `declass1` int(10) unsigned DEFAULT 0,
  `result` varchar(20) DEFAULT NULL,
  `pax1cl_W` int(10) unsigned DEFAULT NULL COMMENT 'Realp Richtung Gletsch',
  `pax2cl_W` int(10) unsigned DEFAULT NULL,
  `pax2Ccl_W` int(10) unsigned DEFAULT NULL,
  `velo_W` int(10) unsigned DEFAULT NULL,
  `action1_W` int(10) unsigned DEFAULT NULL,
  `dfbcard_W` int(10) unsigned DEFAULT NULL,
  `cl2child_W` int(10) unsigned DEFAULT NULL,
  `pax1cl_R` int(10) unsigned DEFAULT NULL COMMENT 'Rottenschlucht',
  `pax2cl_R` int(10) unsigned DEFAULT NULL,
  `pax2Ccl_R` int(10) unsigned DEFAULT NULL,
  `velo_R` int(10) unsigned DEFAULT NULL,
  `action1_R` int(10) unsigned DEFAULT NULL,
  `dfbcard_R` int(10) unsigned DEFAULT NULL,
  `cl2child_R` int(10) unsigned DEFAULT NULL,
  `pax1cl_E` int(10) unsigned DEFAULT NULL COMMENT 'Gletsch Richtung Realp',
  `pax2cl_E` int(10) unsigned DEFAULT NULL,
  `pax2Ccl_E` int(10) unsigned DEFAULT NULL,
  `velo_E` int(10) unsigned DEFAULT NULL,
  `action1_E` int(10) unsigned DEFAULT NULL,
  `dfbcard_E` int(10) unsigned DEFAULT NULL,
  `cl2child_E` int(10) unsigned DEFAULT NULL,
  `pax1cl_M` int(10) unsigned DEFAULT NULL COMMENT 'auf MGB-Netz',
  `pax2cl_M` int(10) unsigned DEFAULT NULL,
  `pax2Ccl_M` int(10) unsigned DEFAULT NULL,
  `velo_M` int(10) unsigned DEFAULT NULL,
  `action1_M` int(10) unsigned DEFAULT NULL,
  `dfbcard_M` int(10) unsigned DEFAULT NULL,
  `cl2child_M` int(10) unsigned DEFAULT NULL,
  `commentPax` text DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzf`),
  KEY `opsday` (`opsday`),
  KEY `opsid` (`opsid`),
  KEY `planid` (`planid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Fahrbetrieb: Erfassungsdatei für Fahrberichte';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_bericht_basket___2013`
--

DROP TABLE IF EXISTS `fb_bericht_basket___2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_bericht_basket___2013` (
  `idzf` int(10) unsigned NOT NULL DEFAULT 0,
  `idzp` int(10) unsigned DEFAULT NULL,
  `idza` int(10) unsigned DEFAULT NULL,
  `opsday` date DEFAULT NULL,
  `planid` varchar(20) DEFAULT NULL,
  `opsid` varchar(20) DEFAULT NULL,
  `ref_plan` varchar(20) NOT NULL,
  `ref_fdl` varchar(20) NOT NULL,
  `onOffer` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `opsmode` varchar(20) NOT NULL,
  `comment` text DEFAULT NULL,
  `passW` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `rotten` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `passE` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `velowagen` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `runaction1` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `dep_eff` varchar(10) DEFAULT NULL,
  `arr_eff` varchar(10) DEFAULT NULL,
  `via_eff` varchar(10) DEFAULT NULL,
  `dep_km` int(10) unsigned DEFAULT 0,
  `arr_km` int(10) unsigned DEFAULT 0,
  `via_km` int(10) unsigned DEFAULT 0,
  `lok` varchar(10) DEFAULT NULL,
  `wagen` varchar(50) DEFAULT NULL,
  `offseats1` int(10) unsigned DEFAULT 0,
  `offseats2` int(10) unsigned DEFAULT 0,
  `declass1` int(10) unsigned DEFAULT 0,
  `result` varchar(20) DEFAULT NULL,
  `pax1cl_W` int(10) unsigned DEFAULT NULL,
  `pax2cl_W` int(10) unsigned DEFAULT NULL,
  `pax2Ccl_W` int(10) unsigned DEFAULT NULL,
  `velo_W` int(10) unsigned DEFAULT NULL,
  `action1_W` int(10) unsigned DEFAULT NULL,
  `dfbcard_W` int(10) unsigned DEFAULT NULL,
  `cl2child_W` int(10) unsigned DEFAULT NULL,
  `pax1cl_R` int(10) unsigned DEFAULT NULL,
  `pax2cl_R` int(10) unsigned DEFAULT NULL,
  `pax2Ccl_R` int(10) unsigned DEFAULT NULL,
  `velo_R` int(10) unsigned DEFAULT NULL,
  `action1_R` int(10) unsigned DEFAULT NULL,
  `dfbcard_R` int(10) unsigned DEFAULT NULL,
  `cl2child_R` int(10) unsigned DEFAULT NULL,
  `pax1cl_E` int(10) unsigned DEFAULT NULL,
  `pax2cl_E` int(10) unsigned DEFAULT NULL,
  `pax2Ccl_E` int(10) unsigned DEFAULT NULL,
  `velo_E` int(10) unsigned DEFAULT NULL,
  `action1_E` int(10) unsigned DEFAULT NULL,
  `dfbcard_E` int(10) unsigned DEFAULT NULL,
  `cl2child_E` int(10) unsigned DEFAULT NULL,
  `commentPax` text DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzf`),
  KEY `opsday` (`opsday`),
  KEY `opsid` (`opsid`),
  KEY `planid` (`planid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Fahrbetrieb: Erfassungsdatei für Fahrberichte';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_bericht_pax`
--

DROP TABLE IF EXISTS `fb_bericht_pax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_bericht_pax` (
  `opsday` date NOT NULL,
  `train` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `pt` smallint(5) unsigned NOT NULL COMMENT 'Geplante Routenteilstrecke: 0, 1, 2, 3..',
  `route` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `product` varchar(20) CHARACTER SET utf8 NOT NULL,
  `cat` varchar(255) CHARACTER SET utf8 NOT NULL,
  `pass` decimal(13,0) NOT NULL,
  `nopass` int(1) NOT NULL,
  `rott` decimal(11,0) NOT NULL,
  `charter` decimal(13,0) NOT NULL,
  `mgb` decimal(11,0) NOT NULL,
  `pax` decimal(17,0) NOT NULL,
  `report` varchar(5) CHARACTER SET utf8mb4 NOT NULL,
  `idza` int(10) unsigned NOT NULL,
  `idzp` int(10) unsigned NOT NULL,
  `seq` int(10) unsigned NOT NULL,
  `idzf` int(10) unsigned DEFAULT NULL,
  `cid` int(10) unsigned DEFAULT NULL,
  `idrp` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_duty_route`
--

DROP TABLE IF EXISTS `fb_duty_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_duty_route` (
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
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  FULLTEXT KEY `description` (`description`,`route`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Diensttouren nur Fahrdienst';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_duty_route__2012`
--

DROP TABLE IF EXISTS `fb_duty_route__2012`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_duty_route__2012` (
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
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  FULLTEXT KEY `description` (`description`,`route`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Diensttouren nur Fahrdienst';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_duty_tour`
--

DROP TABLE IF EXISTS `fb_duty_tour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_duty_tour` (
  `idtour` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sorttour` varchar(20) NOT NULL,
  `sector` mediumint(9) unsigned DEFAULT NULL,
  `tour` varchar(10) NOT NULL,
  `description` text DEFAULT NULL,
  `start` varchar(5) DEFAULT NULL,
  `route` varchar(50) DEFAULT NULL,
  `stopp` varchar(5) DEFAULT NULL,
  `qprofile` varchar(20) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`idtour`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  FULLTEXT KEY `description` (`description`,`route`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='Diensttouren';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_fahrzeug`
--

DROP TABLE IF EXISTS `fb_fahrzeug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_fahrzeug` (
  `idroma` varchar(20) NOT NULL,
  `lft` smallint(5) unsigned NOT NULL,
  `rgt` smallint(5) unsigned NOT NULL,
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Nested Set Level',
  `fztype` tinyint(3) unsigned DEFAULT NULL COMMENT 'zur Verwendung in fp_roma_...',
  `parent` varchar(20) NOT NULL,
  `kind` varchar(10) NOT NULL,
  `baureihe` varchar(20) DEFAULT NULL,
  `objname` varchar(50) DEFAULT NULL,
  `inop` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'ausser Betrieb',
  `status` varchar(20) DEFAULT NULL,
  `tit1` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'entspricht Titelstufe 1',
  `called` varchar(50) DEFAULT NULL,
  `purpose` varchar(50) DEFAULT NULL,
  `builder` varchar(20) DEFAULT NULL COMMENT 'Erbauer',
  `built` mediumint(4) unsigned DEFAULT NULL COMMENT 'Baujahr',
  `motor` varchar(20) DEFAULT NULL COMMENT 'Motorhersteller',
  `power` mediumint(8) unsigned DEFAULT NULL COMMENT 'Leistung (kW)',
  `fuel` varchar(10) DEFAULT NULL COMMENT 'Kraftstoff',
  `boilpress` smallint(5) unsigned DEFAULT NULL COMMENT 'Kesseldruck (bar)',
  `yearfrom` year(4) DEFAULT NULL COMMENT 'Übernahme DFB',
  `ops_orig` varchar(50) DEFAULT NULL COMMENT 'Ursprünglicher Betreiber: urspr. Bezeichnung',
  `operator` varchar(10) NOT NULL DEFAULT 'dfb' COMMENT 'Aktueller Betreiber',
  `DFBops` year(4) DEFAULT NULL COMMENT 'Inbetriebnahme DFB',
  `yearto` int(4) unsigned NOT NULL DEFAULT 9999 COMMENT 'Ausrangierung DFB',
  `opsnum` varchar(20) DEFAULT NULL COMMENT 'Benennung',
  `remark` text DEFAULT NULL COMMENT 'Hinweise zur Geschichte',
  `revisions` text DEFAULT NULL COMMENT 'Angaben zu erfolgten Revisionen',
  `look` varchar(50) DEFAULT NULL COMMENT 'Aussehen, Farbe',
  `luep` smallint(5) unsigned DEFAULT NULL COMMENT 'Länge über Puffer (mm)',
  `tara` mediumint(8) unsigned DEFAULT NULL COMMENT 'Leergewicht (kg)',
  `brutto` mediumint(8) unsigned DEFAULT NULL COMMENT 'Max. Dienstgewicht brutto (kg)',
  `braked` mediumint(8) unsigned DEFAULT NULL COMMENT 'Bremsgewicht (kg)',
  `loadarea` decimal(8,2) unsigned DEFAULT NULL COMMENT 'Ladefläche (qm)',
  `loadlimit` mediumint(9) unsigned DEFAULT NULL COMMENT 'Nutzzuladung (kg)',
  `ax_nondriven` smallint(5) unsigned DEFAULT NULL COMMENT 'Laufachsen',
  `ax_driven` smallint(5) unsigned DEFAULT NULL COMMENT 'Antriebsachsen',
  `diam_roll` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Laufrad (mm)',
  `diam_drive` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Triebrad (mm)',
  `diam_gear` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Zahnrad (mm)',
  `teethNsplit` varchar(50) DEFAULT NULL COMMENT 'Radzähne und Teilung',
  `vmaxA` smallint(5) unsigned DEFAULT NULL COMMENT 'Vmax Adhäsion (km/h)',
  `vmaxZ` smallint(5) unsigned DEFAULT NULL COMMENT 'Vmax Zahnrad (km/h)',
  `hookload` mediumint(8) unsigned DEFAULT NULL COMMENT 'Zugkraft am Haken (kp)',
  `wheelbase` mediumint(8) unsigned DEFAULT NULL COMMENT 'Radstand / Drehzapfenabstand (mm)',
  `wheeldist` mediumint(8) unsigned DEFAULT NULL COMMENT 'Radabstand in Drehgestell (mm)',
  `brakes` varchar(50) DEFAULT NULL COMMENT 'Bremssysteme',
  `audio` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `callstation` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `compsize` varchar(20) DEFAULT NULL,
  `seats1cl` smallint(5) unsigned NOT NULL DEFAULT 0,
  `seats2cl` smallint(5) unsigned NOT NULL DEFAULT 0,
  `style3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `wheelchair` smallint(5) unsigned NOT NULL DEFAULT 0,
  `placestand` smallint(5) unsigned NOT NULL DEFAULT 0,
  `heating` varchar(20) DEFAULT NULL,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `sort` mediumint(8) unsigned DEFAULT NULL,
  `entered` datetime NOT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL,
  PRIMARY KEY (`idroma`),
  KEY `objname` (`objname`),
  KEY `owner` (`operator`),
  KEY `status` (`status`),
  KEY `lft` (`lft`),
  KEY `kind` (`kind`),
  KEY `yearfrom` (`yearfrom`),
  KEY `yearto` (`yearto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Objekte Rollmaterial';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_fdl_pparts`
--

DROP TABLE IF EXISTS `fb_fdl_pparts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_fdl_pparts` (
  `fid` int(10) unsigned NOT NULL COMMENT 'FdL-Fahrplan ID',
  `seq` smallint(6) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  `activity` varchar(20) NOT NULL,
  `b4seq` text DEFAULT NULL COMMENT 'Regel vor Beginn der Sequenz',
  `seq_start` time DEFAULT NULL,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `seq_end` time DEFAULT NULL,
  `start_loc` varchar(10) DEFAULT NULL,
  `end_loc` varchar(10) NOT NULL,
  `dist` int(10) unsigned DEFAULT 0,
  `direc` varchar(10) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL COMMENT 'Kommentar',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`fid`,`seq`),
  KEY `activity` (`activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='FdL-Fahrplan Teilstrecken';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_fpl_pivot`
--

DROP TABLE IF EXISTS `fb_fpl_pivot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_fpl_pivot` (
  `cid` int(11) NOT NULL DEFAULT 0,
  `opsyear` mediumint(8) unsigned DEFAULT NULL,
  `opsid` varchar(10) NOT NULL COMMENT 'Vollständige Zugnummer, mit Zusätzen',
  `rpart` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Fahrplanteilstrecke',
  `fak` varchar(5) DEFAULT NULL COMMENT 'Fak-Zug-Markierung',
  `remark` varchar(250) DEFAULT NULL,
  `dfs` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Seitenzahl im Dienstfahrplan',
  `vmeter` varchar(5) NOT NULL DEFAULT '' COMMENT 'Meterzahl am via-Wendeort',
  `start_place` varchar(10) DEFAULT NULL,
  `via_place` varchar(10) DEFAULT NULL,
  `end_place` varchar(10) DEFAULT NULL,
  `locs` varchar(250) DEFAULT NULL,
  `min0` varchar(5) DEFAULT NULL,
  `max0` varchar(5) DEFAULT NULL,
  `min1` varchar(5) DEFAULT NULL,
  `max1` varchar(5) DEFAULT NULL,
  `condensed` varchar(250) DEFAULT NULL,
  `opsnum` int(10) unsigned DEFAULT NULL COMMENT 'Zahlenteil von opsid',
  `opsdistance` mediumint(8) unsigned DEFAULT NULL,
  `opsdirec` varchar(10) DEFAULT NULL,
  `totaltime` mediumint(8) unsigned DEFAULT NULL,
  `opstime` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `opsnum` (`opsnum`),
  KEY `opsid` (`opsid`,`rpart`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Pivot-Zusammenführung von geplanten (VP und Extra) als auch FdL-Diensttouren\r\n=> Basis für die Anordnung von weiteren FdL-Touren';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_fpl_pivot___2016`
--

DROP TABLE IF EXISTS `fb_fpl_pivot___2016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_fpl_pivot___2016` (
  `cid` int(10) unsigned NOT NULL DEFAULT 0,
  `opsyear` mediumint(8) unsigned DEFAULT NULL,
  `opsid` varchar(10) NOT NULL COMMENT 'Vollständige Zugnummer, mit Zusätzen',
  `remark` varchar(250) DEFAULT NULL,
  `vmeter` varchar(5) NOT NULL DEFAULT '',
  `start_place` varchar(10) DEFAULT NULL,
  `via_place` varchar(10) DEFAULT NULL,
  `end_place` varchar(10) DEFAULT NULL,
  `locs` varchar(250) DEFAULT NULL,
  `min0` varchar(5) DEFAULT NULL,
  `max0` varchar(5) DEFAULT NULL,
  `min1` varchar(5) DEFAULT NULL,
  `max1` varchar(5) DEFAULT NULL,
  `condensed` varchar(250) DEFAULT NULL,
  `opsnum` int(10) unsigned DEFAULT NULL COMMENT 'Zahlenteil von opsid',
  `opsdistance` mediumint(8) unsigned DEFAULT NULL,
  `opsdirec` varchar(10) DEFAULT NULL,
  `totaltime` mediumint(8) unsigned DEFAULT NULL,
  `opstime` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `opsid` (`opsid`),
  KEY `opsnum` (`opsnum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_fpl_pivot___2017`
--

DROP TABLE IF EXISTS `fb_fpl_pivot___2017`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_fpl_pivot___2017` (
  `cid` int(11) NOT NULL DEFAULT 0,
  `opsyear` mediumint(8) unsigned DEFAULT NULL,
  `opsid` varchar(10) NOT NULL COMMENT 'Vollständige Zugnummer, mit Zusätzen',
  `fak` varchar(5) DEFAULT NULL COMMENT 'Fak-Zug-Markierung',
  `remark` varchar(250) DEFAULT NULL,
  `dfs` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Seitenzahl im Dienstfahrplan',
  `vmeter` varchar(5) NOT NULL DEFAULT '' COMMENT 'Meterzahl am via-Wendeort',
  `start_place` varchar(10) DEFAULT NULL,
  `via_place` varchar(10) DEFAULT NULL,
  `end_place` varchar(10) DEFAULT NULL,
  `locs` varchar(250) DEFAULT NULL,
  `min0` varchar(5) DEFAULT NULL,
  `max0` varchar(5) DEFAULT NULL,
  `min1` varchar(5) DEFAULT NULL,
  `max1` varchar(5) DEFAULT NULL,
  `condensed` varchar(250) DEFAULT NULL,
  `opsnum` int(10) unsigned DEFAULT NULL COMMENT 'Zahlenteil von opsid',
  `opsdistance` mediumint(8) unsigned DEFAULT NULL,
  `opsdirec` varchar(10) DEFAULT NULL,
  `totaltime` mediumint(8) unsigned DEFAULT NULL,
  `opstime` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `opsid` (`opsid`),
  KEY `opsnum` (`opsnum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_fpl_pivot___20170708`
--

DROP TABLE IF EXISTS `fb_fpl_pivot___20170708`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_fpl_pivot___20170708` (
  `cid` int(10) unsigned NOT NULL DEFAULT 0,
  `opsyear` mediumint(8) unsigned DEFAULT NULL,
  `opsid` varchar(10) NOT NULL COMMENT 'Vollständige Zugnummer, mit Zusätzen',
  `fak` varchar(5) DEFAULT NULL COMMENT 'Fak-Zug-Markierung',
  `remark` varchar(250) DEFAULT NULL,
  `dfs` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Seitenzahl im Dienstfahrplan',
  `vmeter` varchar(5) NOT NULL DEFAULT '' COMMENT 'Meterzahl am via-Wendeort',
  `start_place` varchar(10) DEFAULT NULL,
  `via_place` varchar(10) DEFAULT NULL,
  `end_place` varchar(10) DEFAULT NULL,
  `locs` varchar(250) DEFAULT NULL,
  `min0` varchar(5) DEFAULT NULL,
  `max0` varchar(5) DEFAULT NULL,
  `min1` varchar(5) DEFAULT NULL,
  `max1` varchar(5) DEFAULT NULL,
  `condensed` varchar(250) DEFAULT NULL,
  `opsnum` int(10) unsigned DEFAULT NULL COMMENT 'Zahlenteil von opsid',
  `opsdistance` mediumint(8) unsigned DEFAULT NULL,
  `opsdirec` varchar(10) DEFAULT NULL,
  `totaltime` mediumint(8) unsigned DEFAULT NULL,
  `opstime` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `opsid` (`opsid`),
  KEY `opsnum` (`opsnum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_fpl_pivot___20190620`
--

DROP TABLE IF EXISTS `fb_fpl_pivot___20190620`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_fpl_pivot___20190620` (
  `cid` int(11) NOT NULL DEFAULT 0,
  `opsyear` mediumint(8) unsigned DEFAULT NULL,
  `opsid` varchar(10) NOT NULL COMMENT 'Vollständige Zugnummer, mit Zusätzen',
  `fak` varchar(5) DEFAULT NULL COMMENT 'Fak-Zug-Markierung',
  `remark` varchar(250) DEFAULT NULL,
  `dfs` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Seitenzahl im Dienstfahrplan',
  `vmeter` varchar(5) NOT NULL DEFAULT '' COMMENT 'Meterzahl am via-Wendeort',
  `start_place` varchar(10) DEFAULT NULL,
  `via_place` varchar(10) DEFAULT NULL,
  `end_place` varchar(10) DEFAULT NULL,
  `locs` varchar(250) DEFAULT NULL,
  `min0` varchar(5) DEFAULT NULL,
  `max0` varchar(5) DEFAULT NULL,
  `min1` varchar(5) DEFAULT NULL,
  `max1` varchar(5) DEFAULT NULL,
  `condensed` varchar(250) DEFAULT NULL,
  `opsnum` int(10) unsigned DEFAULT NULL COMMENT 'Zahlenteil von opsid',
  `opsdistance` mediumint(8) unsigned DEFAULT NULL,
  `opsdirec` varchar(10) DEFAULT NULL,
  `totaltime` mediumint(8) unsigned DEFAULT NULL,
  `opstime` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `opsid` (`opsid`),
  KEY `opsnum` (`opsnum`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_nr_schema`
--

DROP TABLE IF EXISTS `fb_nr_schema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_nr_schema` (
  `numfrom` smallint(5) unsigned NOT NULL,
  `numto` smallint(5) unsigned NOT NULL,
  `description` varchar(255) NOT NULL,
  `kind` varchar(20) DEFAULT NULL COMMENT 'Regel-/Fak- oder Extrazug',
  `opsmode` varchar(100) DEFAULT NULL COMMENT 'Zugbetriebsart',
  `isGlObw` varchar(1) NOT NULL COMMENT 'nur für Fahrten Gl-Obw zulässig',
  `chkGlObw` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Hintsteurung: Relevanz Rottenstrecke',
  `Fpos` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'fakzugberechtigt',
  `lft` smallint(5) unsigned NOT NULL,
  `rgt` smallint(5) unsigned NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date DEFAULT '9999-12-31',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `Rpos` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'rangierzugberechtigt, vermutlich OBSOLET',
  PRIMARY KEY (`numfrom`,`validfrom`),
  KEY `numto` (`numto`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Zugnummerschema DFB AG';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_ops_saison`
--

DROP TABLE IF EXISTS `fb_ops_saison`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_ops_saison` (
  `season` mediumint(4) unsigned NOT NULL COMMENT 'Jahreszahl',
  `plan_from` date DEFAULT NULL COMMENT 'Saisonbeginn',
  `plan_to` date DEFAULT NULL COMMENT 'Saisonende',
  `vp_days` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzahl Zugbetriebstage pro Saison',
  `fpl_revision` date DEFAULT NULL COMMENT 'Öffentlich anzuzeigendes Datum: Letzte Fahrplanrevision',
  PRIMARY KEY (`season`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Die Betriebssaison-Eckdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_ops_saison___20210510`
--

DROP TABLE IF EXISTS `fb_ops_saison___20210510`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_ops_saison___20210510` (
  `season` mediumint(4) unsigned NOT NULL COMMENT 'Jahreszahl',
  `plan_from` date DEFAULT NULL COMMENT 'Saisonbeginn',
  `plan_to` date DEFAULT NULL COMMENT 'Saisonende',
  `vp_days` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzahl Zugbetriebstage pro Saison',
  `fpl_revision` date DEFAULT NULL COMMENT 'Öffentlich anzuzeigendes Datum: Letzte Fahrplanrevision',
  PRIMARY KEY (`season`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Die Betriebssaison-Eckdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_opsday`
--

DROP TABLE IF EXISTS `fb_opsday`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_opsday` (
  `opsday` date NOT NULL,
  `int_cl` varchar(50) DEFAULT NULL,
  `pub_cl` varchar(50) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`opsday`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Train Ops Days bis 2012';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_opsplan`
--

DROP TABLE IF EXISTS `fb_opsplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_opsplan` (
  `opsdate` date NOT NULL DEFAULT '0000-00-00',
  `vp_ops` varchar(20) DEFAULT NULL,
  `vp_enlarge` varchar(50) DEFAULT NULL,
  `vp_omit` varchar(50) DEFAULT NULL,
  `ops_extra` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `routes` varchar(255) NOT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`opsdate`),
  KEY `vp_ops` (`vp_ops`),
  FULLTEXT KEY `ops_extra` (`ops_extra`,`vp_omit`,`vp_enlarge`),
  FULLTEXT KEY `trains` (`routes`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Fahrbetrieb: Zugrouten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_opsplan__2`
--

DROP TABLE IF EXISTS `fb_opsplan__2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_opsplan__2` (
  `opsdate` date NOT NULL DEFAULT '0000-00-00',
  `vp_ops` varchar(20) DEFAULT NULL,
  `vp_enlarge` varchar(50) DEFAULT NULL,
  `ops_extra` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`opsdate`),
  KEY `vp_ops` (`vp_ops`),
  FULLTEXT KEY `ops_extra` (`ops_extra`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Fahrbetrieb: Zugrouten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_period`
--

DROP TABLE IF EXISTS `fb_period`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_period` (
  `idvp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vpcode` varchar(10) NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `daily` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `weekdays` varchar(20) DEFAULT NULL,
  `legend` varchar(10) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idvp`),
  UNIQUE KEY `vp` (`vpcode`,`validfrom`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='Fahrbetriebs-Perioden bis 2012';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_rollcomp`
--

DROP TABLE IF EXISTS `fb_rollcomp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_rollcomp` (
  `idcw` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Laufnummer',
  `comp` varchar(100) NOT NULL COMMENT 'Fz-Nummern von Ost nach West, codiert',
  `chain` varchar(100) NOT NULL COMMENT 'Fahrzeug-IDs gem fb_rollmat, von Ost nach West',
  `planonly` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, falls nicht reale Komposition',
  `firstuse` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Datum erste Verwendung',
  `lastuse` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Datum letztweilige Verwendung',
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT 'Anzeige: Zuglänge Bruttogewicht Sitzzahlen',
  `pax` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1, falls Reisezug',
  `classlist` varchar(20) NOT NULL COMMENT 'Liste der Sitzklassen',
  `seats` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Pivot Gesamtsitzzahl',
  `cl1` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Pivot Sitze erster Klasse',
  `cl2` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Pivot Sitze zweiter Klasse',
  `cl3` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Pivot Sitze dritter Klasse (offen)',
  `length` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Pivot Komp-Länge (mm)',
  `axles` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Pivot Komp-Achszahl',
  `tare` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Pivot Komp Leergewicht (kg)',
  `gross` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Pivot Komp Bruttogewicht (kg)',
  `braked` mediumint(8) unsigned NOT NULL DEFAULT 0 COMMENT 'Pivot Komp Bremsgewicht (kg)',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Letzter Bearbeitungszeitpunkt',
  `modifier` int(10) unsigned NOT NULL DEFAULT 1 COMMENT 'Letzter Bearbeiter',
  PRIMARY KEY (`idcw`),
  KEY `comp` (`comp`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Benutzte Wagenkompositionen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_rollcomp_obj`
--

DROP TABLE IF EXISTS `fb_rollcomp_obj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_rollcomp_obj` (
  `idcw` int(10) unsigned NOT NULL,
  `seq` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `idroma` varchar(20) NOT NULL,
  `backwards` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `locked` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `downgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idcw`,`seq`),
  KEY `wagid` (`idroma`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Wagenfolge im Fahrbetrieb';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_rollingstock___2012`
--

DROP TABLE IF EXISTS `fb_rollingstock___2012`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_rollingstock___2012` (
  `idroma` varchar(20) NOT NULL,
  `lft` smallint(5) unsigned DEFAULT NULL,
  `rgt` smallint(5) unsigned DEFAULT NULL,
  `hide` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `parent` varchar(30) DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT NULL,
  `entered` datetime NOT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL,
  PRIMARY KEY (`idroma`),
  KEY `lft` (`lft`),
  KEY `parent` (`parent`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Objekte Rollmaterial (2012)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_rollmat`
--

DROP TABLE IF EXISTS `fb_rollmat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_rollmat` (
  `idrs` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Auto-Identifikator',
  `kind` varchar(10) NOT NULL COMMENT 'Fahrzeugart',
  `fuel` varchar(10) NOT NULL DEFAULT '' COMMENT 'Kraftstoff',
  `idroma` varchar(20) NOT NULL COMMENT 'Identifikator',
  `specif` varchar(20) NOT NULL COMMENT 'übergeordneter Identifikator',
  `validfrom` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Beginn Versionsperiode',
  `validto` date NOT NULL DEFAULT '9999-12-31' COMMENT 'Ende Versionsperiode',
  `purpose` varchar(50) DEFAULT NULL COMMENT 'Einsetzbarkeitsliste',
  `state` varchar(20) DEFAULT NULL COMMENT 'Fahrzeugzustand',
  `readiness` varchar(20) DEFAULT NULL COMMENT 'Betriebsbereitschaft',
  `baureihe` varchar(20) DEFAULT NULL COMMENT 'CH-Baureihe',
  `remark` text DEFAULT NULL COMMENT 'Hinweise zur Geschichte',
  `revisions` text DEFAULT NULL COMMENT 'Angaben zu erfolgten Revisionen',
  `fztype` tinyint(3) unsigned DEFAULT NULL COMMENT 'zur Verwendung in fp_roma_...',
  `objname` varchar(50) DEFAULT NULL COMMENT 'Korrekte Bezeichnung',
  `called` varchar(50) DEFAULT NULL COMMENT 'Name, falls vorhanden',
  `inop` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, falls ausser Betrieb',
  `tit1` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'entspricht Titelstufe 1',
  `builder` varchar(20) DEFAULT NULL COMMENT 'Erbauer',
  `built` mediumint(4) unsigned DEFAULT NULL COMMENT 'Baujahr',
  `motor` varchar(20) DEFAULT NULL COMMENT 'Motorhersteller',
  `power` mediumint(8) unsigned DEFAULT NULL COMMENT 'Leistung (kW)',
  `boilpress` smallint(5) DEFAULT NULL COMMENT 'Kesseldruck (bar)',
  `yearfrom` year(4) DEFAULT NULL COMMENT 'Übernahme DFB',
  `ops_orig` varchar(50) DEFAULT NULL COMMENT 'Ursprünglicher Betreiber: urspr. Bezeichnung',
  `operator` varchar(10) NOT NULL DEFAULT 'dfb' COMMENT 'Aktueller Betreiber',
  `DFBops` year(4) DEFAULT NULL COMMENT 'Inbetriebnahme DFB',
  `yearto` int(4) unsigned NOT NULL DEFAULT 9999 COMMENT 'Ausrangierung DFB',
  `opsnum` varchar(20) DEFAULT NULL COMMENT 'Benennung',
  `looks` varchar(50) DEFAULT NULL COMMENT 'Aussehen, Farbe',
  `luep` smallint(5) unsigned DEFAULT NULL COMMENT 'Länge über Puffer (mm)',
  `tara` mediumint(8) unsigned DEFAULT NULL COMMENT 'Leergewicht (kg)',
  `brutto` mediumint(8) unsigned DEFAULT NULL COMMENT 'Max. Dienstgewicht brutto (kg)',
  `braked` mediumint(8) unsigned DEFAULT NULL COMMENT 'Bremsgewicht (kg)',
  `loadarea` decimal(8,2) unsigned DEFAULT NULL COMMENT 'Ladefläche (qm)',
  `loadlimit` mediumint(9) unsigned DEFAULT NULL COMMENT 'Nutzzuladung (kg)',
  `ax_nondriven` smallint(5) unsigned DEFAULT NULL COMMENT 'Laufachsen',
  `ax_driven` smallint(5) unsigned DEFAULT NULL COMMENT 'Antriebsachsen',
  `diam_roll` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Laufrad (mm)',
  `diam_drive` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Triebrad (mm)',
  `diam_gear` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Zahnrad (mm)',
  `teethNsplit` varchar(50) DEFAULT NULL COMMENT 'Radzähne und Teilung',
  `vmaxA` smallint(5) unsigned DEFAULT NULL COMMENT 'Vmax Adhäsion (km/h)',
  `vmaxZ` smallint(5) unsigned DEFAULT NULL COMMENT 'Vmax Zahnrad (km/h)',
  `hookload` mediumint(8) unsigned DEFAULT NULL COMMENT 'Zugkraft am Haken (kp)',
  `wheelbase` mediumint(8) unsigned DEFAULT NULL COMMENT 'Radstand / Drehzapfenabstand (mm)',
  `wheeldist` mediumint(8) unsigned DEFAULT NULL COMMENT 'Radabstand in Drehgestell (mm)',
  `brakes` varchar(50) DEFAULT NULL COMMENT 'Bremssysteme',
  `audio` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, falls mit Audiosystem ausgerüstet',
  `callstation` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, falls mit Besprechungsanlage',
  `compsize` varchar(20) DEFAULT NULL COMMENT 'Sitzzahlliste der Wagenabteile, ab Handbremse',
  `seats1cl` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Sitzzahl erster Klasse',
  `seats2cl` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Sitzzahl zweiter Klasse',
  `style3` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'davon in offenem Abteil',
  `wheelchair` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzahl Rollstuhlhalterungen',
  `placestand` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzahl zusätzliche Stehplätze',
  `heating` varchar(20) DEFAULT NULL COMMENT 'Liste von Heizungssystemen',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Eintrag ausblenden',
  `sort` mediumint(8) unsigned DEFAULT NULL COMMENT 'Sortierindex',
  `entered` datetime NOT NULL COMMENT 'Ersterfassungsdatum',
  `originator` int(11) NOT NULL DEFAULT 1 COMMENT 'Ident Ersterfasser',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Letztes Modifikationsdatum',
  `modifier` int(11) NOT NULL COMMENT 'Ident Modifikator',
  PRIMARY KEY (`idrs`),
  KEY `kind` (`kind`),
  KEY `state` (`state`),
  KEY `readiness` (`readiness`),
  KEY `objname` (`objname`),
  KEY `idroma_versfrom` (`idroma`,`validfrom`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Rollmaterialtabelle ab 20.4.2020';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_rollmat2017`
--

DROP TABLE IF EXISTS `fb_rollmat2017`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_rollmat2017` (
  `idrs` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Auto-Identifikator',
  `kind` varchar(10) NOT NULL COMMENT 'Fahrzeugart',
  `specif` varchar(20) NOT NULL COMMENT 'übergeordneter Identifikator',
  `idroma` varchar(20) NOT NULL COMMENT 'Identifikator',
  `validfrom` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Beginn Versionsperiode',
  `validto` date NOT NULL DEFAULT '9999-12-31' COMMENT 'Ende Versionsperiode',
  `purpose` varchar(50) DEFAULT NULL COMMENT 'Einsetzbarkeitsliste',
  `state` varchar(20) DEFAULT NULL COMMENT 'Fahrzeugzustand',
  `readiness` varchar(20) DEFAULT NULL COMMENT 'Betriebsbereitschaft',
  `baureihe` varchar(20) DEFAULT NULL COMMENT 'CH-Baureihe',
  `remark` text DEFAULT NULL COMMENT 'Hinweise zur Geschichte',
  `revisions` text DEFAULT NULL COMMENT 'Angaben zu erfolgten Revisionen',
  `fztype` tinyint(3) unsigned DEFAULT NULL COMMENT 'zur Verwendung in fp_roma_...',
  `objname` varchar(50) DEFAULT NULL COMMENT 'Korrekte Bezeichnung',
  `called` varchar(50) DEFAULT NULL COMMENT 'Name, falls vorhanden',
  `inop` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, falls ausser Betrieb',
  `tit1` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'entspricht Titelstufe 1',
  `builder` varchar(20) DEFAULT NULL COMMENT 'Erbauer',
  `built` mediumint(4) unsigned DEFAULT NULL COMMENT 'Baujahr',
  `motor` varchar(20) DEFAULT NULL COMMENT 'Motorhersteller',
  `power` mediumint(8) unsigned DEFAULT NULL COMMENT 'Leistung (kW)',
  `fuel` varchar(10) DEFAULT NULL COMMENT 'Kraftstoff',
  `boilpress` smallint(5) DEFAULT NULL COMMENT 'Kesseldruck (bar)',
  `yearfrom` year(4) DEFAULT NULL COMMENT 'Übernahme DFB',
  `ops_orig` varchar(50) DEFAULT NULL COMMENT 'Ursprünglicher Betreiber: urspr. Bezeichnung',
  `operator` varchar(10) NOT NULL DEFAULT 'dfb' COMMENT 'Aktueller Betreiber',
  `DFBops` year(4) DEFAULT NULL COMMENT 'Inbetriebnahme DFB',
  `yearto` int(4) unsigned NOT NULL DEFAULT 9999 COMMENT 'Ausrangierung DFB',
  `opsnum` varchar(20) DEFAULT NULL COMMENT 'Benennung',
  `looks` varchar(50) DEFAULT NULL COMMENT 'Aussehen, Farbe',
  `luep` smallint(5) unsigned DEFAULT NULL COMMENT 'Länge über Puffer (mm)',
  `tara` mediumint(8) unsigned DEFAULT NULL COMMENT 'Leergewicht (kg)',
  `brutto` mediumint(8) unsigned DEFAULT NULL COMMENT 'Max. Dienstgewicht brutto (kg)',
  `braked` mediumint(8) unsigned DEFAULT NULL COMMENT 'Bremsgewicht (kg)',
  `loadarea` decimal(8,2) unsigned DEFAULT NULL COMMENT 'Ladefläche (qm)',
  `loadlimit` mediumint(9) unsigned DEFAULT NULL COMMENT 'Nutzzuladung (kg)',
  `ax_nondriven` smallint(5) unsigned DEFAULT NULL COMMENT 'Laufachsen',
  `ax_driven` smallint(5) unsigned DEFAULT NULL COMMENT 'Antriebsachsen',
  `diam_roll` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Laufrad (mm)',
  `diam_drive` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Triebrad (mm)',
  `diam_gear` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Zahnrad (mm)',
  `teethNsplit` varchar(50) DEFAULT NULL COMMENT 'Radzähne und Teilung',
  `vmaxA` smallint(5) unsigned DEFAULT NULL COMMENT 'Vmax Adhäsion (km/h)',
  `vmaxZ` smallint(5) unsigned DEFAULT NULL COMMENT 'Vmax Zahnrad (km/h)',
  `hookload` mediumint(8) unsigned DEFAULT NULL COMMENT 'Zugkraft am Haken (kp)',
  `wheelbase` mediumint(8) unsigned DEFAULT NULL COMMENT 'Radstand / Drehzapfenabstand (mm)',
  `wheeldist` mediumint(8) unsigned DEFAULT NULL COMMENT 'Radabstand in Drehgestell (mm)',
  `brakes` varchar(50) DEFAULT NULL COMMENT 'Bremssysteme',
  `audio` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, falls mit Audiosystem ausgerüstet',
  `callstation` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, falls mit Besprechungsanlage',
  `compsize` varchar(20) DEFAULT NULL COMMENT 'Sitzzahlliste der Wagenabteile, ab Handbremse',
  `seats1cl` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Sitzzahl erster Klasse',
  `seats2cl` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Sitzzahl zweiter Klasse',
  `style3` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'davon in offenem Abteil',
  `wheelchair` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzahl Rollstuhlhalterungen',
  `placestand` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzahl zusätzliche Stehplätze',
  `heating` varchar(20) DEFAULT NULL COMMENT 'Liste von Heizungssystemen',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Eintrag ausblenden',
  `sort` mediumint(8) unsigned DEFAULT NULL COMMENT 'Sortierindex',
  `entered` datetime NOT NULL COMMENT 'Ersterfassungsdatum',
  `originator` int(11) NOT NULL DEFAULT 1 COMMENT 'Ident Ersterfasser',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Letztes Modifikationsdatum',
  `modifier` int(11) NOT NULL COMMENT 'Ident Modifikator',
  PRIMARY KEY (`idrs`),
  KEY `kind` (`kind`),
  KEY `state` (`state`),
  KEY `readiness` (`readiness`),
  KEY `objname` (`objname`),
  KEY `idroma_versfrom` (`idroma`,`validfrom`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=utf8 COMMENT='Temporäre Rollmaterialtabelle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_rollmat___130723`
--

DROP TABLE IF EXISTS `fb_rollmat___130723`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_rollmat___130723` (
  `sector` varchar(20) NOT NULL DEFAULT 'rollmat',
  `idroma` varchar(20) NOT NULL,
  `lft` smallint(5) unsigned NOT NULL,
  `rgt` smallint(5) unsigned NOT NULL,
  `hide` tinyint(4) NOT NULL DEFAULT 0,
  `parent` varchar(20) NOT NULL,
  `kind` varchar(10) NOT NULL,
  `objname` varchar(50) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT 'DFB',
  `purpose` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `baureihe` varchar(20) DEFAULT NULL,
  `opsnum` varchar(20) DEFAULT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `look` varchar(50) DEFAULT NULL,
  `luep` smallint(5) unsigned DEFAULT NULL,
  `tara` mediumint(8) unsigned DEFAULT NULL,
  `brutto` mediumint(8) unsigned DEFAULT NULL,
  `braked` mediumint(8) unsigned DEFAULT NULL,
  `loadarea` decimal(8,2) unsigned DEFAULT NULL,
  `loadlimit` mediumint(9) unsigned DEFAULT NULL,
  `ax_nondriven` smallint(5) unsigned DEFAULT NULL,
  `ax_driven` smallint(5) unsigned DEFAULT NULL,
  `hookload` mediumint(8) unsigned DEFAULT NULL,
  `compsize` varchar(20) DEFAULT NULL,
  `seats1cl` smallint(5) unsigned DEFAULT NULL,
  `seats2cl` smallint(5) unsigned DEFAULT NULL,
  `style3` smallint(5) unsigned DEFAULT NULL,
  `placestand` smallint(5) unsigned DEFAULT NULL,
  `heating` varchar(20) DEFAULT NULL,
  `entered` datetime NOT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) NOT NULL,
  PRIMARY KEY (`idroma`),
  KEY `objname` (`objname`),
  KEY `owner` (`operator`),
  KEY `status` (`status`),
  KEY `lft` (`lft`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Objekte Rollmaterial';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_rollmat___150615`
--

DROP TABLE IF EXISTS `fb_rollmat___150615`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_rollmat___150615` (
  `idroma` varchar(20) NOT NULL,
  `lft` smallint(5) unsigned NOT NULL,
  `rgt` smallint(5) unsigned NOT NULL,
  `hide` tinyint(4) NOT NULL DEFAULT 0,
  `parent` varchar(20) NOT NULL,
  `sort` mediumint(8) unsigned DEFAULT NULL,
  `kind` varchar(10) NOT NULL,
  `baureihe` varchar(20) DEFAULT NULL,
  `objname` varchar(50) DEFAULT NULL,
  `called` varchar(50) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT 'dfb',
  `purpose` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `opsnum` varchar(20) DEFAULT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `look` varchar(50) DEFAULT NULL,
  `luep` smallint(5) unsigned DEFAULT NULL,
  `tara` mediumint(8) unsigned DEFAULT NULL,
  `brutto` mediumint(8) unsigned DEFAULT NULL,
  `braked` mediumint(8) unsigned DEFAULT NULL,
  `loadarea` decimal(8,2) unsigned DEFAULT NULL,
  `loadlimit` mediumint(9) unsigned DEFAULT NULL,
  `ax_nondriven` smallint(5) unsigned DEFAULT NULL,
  `ax_driven` smallint(5) unsigned DEFAULT NULL,
  `hookload` mediumint(8) unsigned DEFAULT NULL,
  `audio` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `callstation` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `compsize` varchar(20) DEFAULT NULL,
  `seats1cl` smallint(5) unsigned NOT NULL DEFAULT 0,
  `seats2cl` smallint(5) unsigned NOT NULL DEFAULT 0,
  `style3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `wheelchair` smallint(5) unsigned NOT NULL DEFAULT 0,
  `placestand` smallint(5) unsigned NOT NULL DEFAULT 0,
  `heating` varchar(20) DEFAULT NULL,
  `entered` datetime NOT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL,
  PRIMARY KEY (`idroma`),
  KEY `objname` (`objname`),
  KEY `owner` (`operator`),
  KEY `status` (`status`),
  KEY `lft` (`lft`),
  KEY `kind` (`kind`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Objekte Rollmaterial';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_rollmat___150616`
--

DROP TABLE IF EXISTS `fb_rollmat___150616`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_rollmat___150616` (
  `idroma` varchar(20) NOT NULL,
  `lft` smallint(5) unsigned NOT NULL,
  `rgt` smallint(5) unsigned NOT NULL,
  `hide` tinyint(4) NOT NULL DEFAULT 0,
  `parent` varchar(20) NOT NULL,
  `sort` mediumint(8) unsigned DEFAULT NULL,
  `kind` varchar(10) NOT NULL,
  `baureihe` varchar(20) DEFAULT NULL,
  `objname` varchar(50) DEFAULT NULL,
  `called` varchar(50) DEFAULT NULL,
  `purpose` varchar(50) DEFAULT NULL,
  `builder` varchar(20) DEFAULT NULL COMMENT 'Erbauer',
  `built` mediumint(4) unsigned DEFAULT NULL COMMENT 'Baujahr',
  `motor` varchar(20) DEFAULT NULL COMMENT 'Motorhersteller',
  `power` mediumint(8) unsigned DEFAULT NULL COMMENT 'Leistung (kW)',
  `fuel` varchar(10) DEFAULT NULL COMMENT 'Kraftstoff',
  `boilpress` smallint(5) unsigned DEFAULT NULL COMMENT 'Kesseldruck (bar)',
  `yearfrom` year(4) DEFAULT NULL COMMENT 'Übernahme DFB',
  `ops_orig` varchar(50) DEFAULT NULL COMMENT 'Ursprünglicher Betreiber: urspr. Bezeichnung',
  `operator` varchar(10) NOT NULL DEFAULT 'dfb' COMMENT 'Aktueller Betreiber',
  `DFBops` year(4) DEFAULT NULL COMMENT 'Inbetriebnahme DFB',
  `status` varchar(20) DEFAULT NULL,
  `yearto` int(4) unsigned NOT NULL DEFAULT 9999 COMMENT 'Ausrangierung DFB',
  `opsnum` varchar(20) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `look` varchar(50) DEFAULT NULL COMMENT 'Aussehen, Farbe',
  `luep` smallint(5) unsigned DEFAULT NULL COMMENT 'Länge über Puffer (mm)',
  `tara` mediumint(8) unsigned DEFAULT NULL COMMENT 'Leergewicht (kg)',
  `brutto` mediumint(8) unsigned DEFAULT NULL COMMENT 'Max. Dienstgewicht brutto (kg)',
  `braked` mediumint(8) unsigned DEFAULT NULL COMMENT 'Bremsgewicht (kg)',
  `loadarea` decimal(8,2) unsigned DEFAULT NULL COMMENT 'Ladefläche (qm)',
  `loadlimit` mediumint(9) unsigned DEFAULT NULL COMMENT 'Nutzzuladung (kg)',
  `ax_nondriven` smallint(5) unsigned DEFAULT NULL COMMENT 'Laufachsen',
  `ax_driven` smallint(5) unsigned DEFAULT NULL COMMENT 'Antriebsachsen',
  `diam_drive` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Triebrad (mm)',
  `diam_gear` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Zahnrad (mm)',
  `vmaxA` smallint(5) unsigned DEFAULT NULL COMMENT 'Vmax Adhäsion (km/h)',
  `vmaxZ` smallint(5) unsigned DEFAULT NULL COMMENT 'Vmax Zahnrad (km/h)',
  `hookload` mediumint(8) unsigned DEFAULT NULL COMMENT 'Zugkraft am Haken (kp)',
  `wheelbase` mediumint(8) unsigned DEFAULT NULL COMMENT 'Radstand / Drehzapfenabstand (mm)',
  `wheeldist` mediumint(8) unsigned DEFAULT NULL COMMENT 'Radabstand in Drehgestell (mm)',
  `brakes` varchar(50) DEFAULT NULL COMMENT 'Bremssysteme',
  `audio` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `callstation` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `compsize` varchar(20) DEFAULT NULL,
  `seats1cl` smallint(5) unsigned NOT NULL DEFAULT 0,
  `seats2cl` smallint(5) unsigned NOT NULL DEFAULT 0,
  `style3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `wheelchair` smallint(5) unsigned NOT NULL DEFAULT 0,
  `placestand` smallint(5) unsigned NOT NULL DEFAULT 0,
  `heating` varchar(20) DEFAULT NULL,
  `entered` datetime NOT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL,
  PRIMARY KEY (`idroma`),
  KEY `objname` (`objname`),
  KEY `owner` (`operator`),
  KEY `status` (`status`),
  KEY `lft` (`lft`),
  KEY `kind` (`kind`),
  KEY `yearfrom` (`yearfrom`),
  KEY `yearto` (`yearto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Objekte Rollmaterial';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_rollmat___20140810`
--

DROP TABLE IF EXISTS `fb_rollmat___20140810`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_rollmat___20140810` (
  `idroma` varchar(20) NOT NULL,
  `lft` smallint(5) unsigned NOT NULL,
  `rgt` smallint(5) unsigned NOT NULL,
  `hide` tinyint(4) NOT NULL DEFAULT 0,
  `parent` varchar(20) NOT NULL,
  `sort` mediumint(8) unsigned DEFAULT NULL,
  `kind` varchar(10) NOT NULL,
  `baureihe` varchar(20) DEFAULT NULL,
  `objname` varchar(50) DEFAULT NULL,
  `called` varchar(50) DEFAULT NULL,
  `operator` varchar(10) NOT NULL DEFAULT 'dfb',
  `purpose` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `opsnum` varchar(20) DEFAULT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `look` varchar(50) DEFAULT NULL,
  `luep` smallint(5) unsigned DEFAULT NULL,
  `tara` mediumint(8) unsigned DEFAULT NULL,
  `brutto` mediumint(8) unsigned DEFAULT NULL,
  `braked` mediumint(8) unsigned DEFAULT NULL,
  `loadarea` decimal(8,2) unsigned DEFAULT NULL,
  `loadlimit` mediumint(9) unsigned DEFAULT NULL,
  `ax_nondriven` smallint(5) unsigned DEFAULT NULL,
  `ax_driven` smallint(5) unsigned DEFAULT NULL,
  `hookload` mediumint(8) unsigned DEFAULT NULL,
  `audio` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `callstation` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `compsize` varchar(20) DEFAULT NULL,
  `seats1cl` smallint(5) unsigned NOT NULL DEFAULT 0,
  `seats2cl` smallint(5) unsigned NOT NULL DEFAULT 0,
  `style3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `wheelchair` smallint(5) unsigned NOT NULL DEFAULT 0,
  `placestand` smallint(5) unsigned NOT NULL DEFAULT 0,
  `heating` varchar(20) DEFAULT NULL,
  `entered` datetime NOT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL,
  PRIMARY KEY (`idroma`),
  KEY `objname` (`objname`),
  KEY `owner` (`operator`),
  KEY `status` (`status`),
  KEY `lft` (`lft`),
  KEY `kind` (`kind`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Objekte Rollmaterial';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_rollmat___2017OLD`
--

DROP TABLE IF EXISTS `fb_rollmat___2017OLD`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_rollmat___2017OLD` (
  `idrs` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Auto-Identifikator',
  `kind` varchar(10) NOT NULL COMMENT 'Fahrzeugart',
  `specif` varchar(20) NOT NULL COMMENT 'übergeordneter Identifikator',
  `idroma` varchar(20) NOT NULL COMMENT 'Fahrzeug-Ident',
  `versfrom` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Beginn Versionsperiode',
  `versto` date NOT NULL DEFAULT '9999-12-31' COMMENT 'Ende Versionsperiode',
  `purpose` varchar(50) DEFAULT NULL COMMENT 'Einsetzbarkeitsliste',
  `state` varchar(20) DEFAULT NULL COMMENT 'Fahrzeugzustand',
  `readiness` varchar(20) DEFAULT NULL COMMENT 'Betriebsbereitschaft',
  `baureihe` varchar(20) DEFAULT NULL COMMENT 'CH-Baureihe',
  `remark` text DEFAULT NULL COMMENT 'Hinweise zur Geschichte',
  `revisions` text DEFAULT NULL COMMENT 'Angaben zu erfolgten Revisionen',
  `fztype` tinyint(3) unsigned DEFAULT NULL COMMENT 'zur Verwendung in fp_roma_...',
  `objname` varchar(50) DEFAULT NULL COMMENT 'Korrekte Bezeichnung',
  `called` varchar(50) DEFAULT NULL COMMENT 'Name, falls vorhanden',
  `inop` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, falls ausser Betrieb',
  `tit1` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'entspricht Titelstufe 1',
  `builder` varchar(20) DEFAULT NULL COMMENT 'Erbauer',
  `built` mediumint(4) unsigned DEFAULT NULL COMMENT 'Baujahr',
  `motor` varchar(20) DEFAULT NULL COMMENT 'Motorhersteller',
  `power` mediumint(8) unsigned DEFAULT NULL COMMENT 'Leistung (kW)',
  `fuel` varchar(10) DEFAULT NULL COMMENT 'Kraftstoff',
  `boilpress` smallint(5) DEFAULT NULL COMMENT 'Kesseldruck (bar)',
  `yearfrom` year(4) DEFAULT NULL COMMENT 'Übernahme DFB',
  `ops_orig` varchar(50) DEFAULT NULL COMMENT 'Ursprünglicher Betreiber: urspr. Bezeichnung',
  `operator` varchar(10) NOT NULL DEFAULT 'dfb' COMMENT 'Aktueller Betreiber',
  `DFBops` year(4) DEFAULT NULL COMMENT 'Inbetriebnahme DFB',
  `yearto` int(4) unsigned NOT NULL DEFAULT 9999 COMMENT 'Ausrangierung DFB',
  `opsnum` varchar(20) DEFAULT NULL COMMENT 'Benennung',
  `looks` varchar(50) DEFAULT NULL COMMENT 'Aussehen, Farbe',
  `luep` smallint(5) unsigned DEFAULT NULL COMMENT 'Länge über Puffer (mm)',
  `tara` mediumint(8) unsigned DEFAULT NULL COMMENT 'Leergewicht (kg)',
  `brutto` mediumint(8) unsigned DEFAULT NULL COMMENT 'Max. Dienstgewicht brutto (kg)',
  `braked` mediumint(8) unsigned DEFAULT NULL COMMENT 'Bremsgewicht (kg)',
  `loadarea` decimal(8,2) unsigned DEFAULT NULL COMMENT 'Ladefläche (qm)',
  `loadlimit` mediumint(9) unsigned DEFAULT NULL COMMENT 'Nutzzuladung (kg)',
  `ax_nondriven` smallint(5) unsigned DEFAULT NULL COMMENT 'Laufachsen',
  `ax_driven` smallint(5) unsigned DEFAULT NULL COMMENT 'Antriebsachsen',
  `diam_roll` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Laufrad (mm)',
  `diam_drive` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Triebrad (mm)',
  `diam_gear` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Zahnrad (mm)',
  `teethNsplit` varchar(50) DEFAULT NULL COMMENT 'Radzähne und Teilung',
  `vmaxA` smallint(5) unsigned DEFAULT NULL COMMENT 'Vmax Adhäsion (km/h)',
  `vmaxZ` smallint(5) unsigned DEFAULT NULL COMMENT 'Vmax Zahnrad (km/h)',
  `hookload` mediumint(8) unsigned DEFAULT NULL COMMENT 'Zugkraft am Haken (kp)',
  `wheelbase` mediumint(8) unsigned DEFAULT NULL COMMENT 'Radstand / Drehzapfenabstand (mm)',
  `wheeldist` mediumint(8) unsigned DEFAULT NULL COMMENT 'Radabstand in Drehgestell (mm)',
  `brakes` varchar(50) DEFAULT NULL COMMENT 'Bremssysteme',
  `audio` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, falls mit Audiosystem ausgerüstet',
  `callstation` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, falls mit Besprechungsanlage',
  `compsize` varchar(20) DEFAULT NULL COMMENT 'Sitzzahlliste der Wagenabteile, ab Handbremse',
  `seats1cl` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Sitzzahl erster Klasse',
  `seats2cl` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Sitzzahl zweiter Klasse',
  `style3` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'davon in offenem Abteil',
  `wheelchair` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzahl Rollstuhlhalterungen',
  `placestand` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzahl zusätzliche Stehplätze',
  `heating` varchar(20) DEFAULT NULL COMMENT 'Liste von Heizungssystemen',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Eintrag ausblenden',
  `sort` mediumint(8) unsigned DEFAULT NULL COMMENT 'Sortierindex',
  `entered` datetime NOT NULL COMMENT 'Ersterfassungsdatum',
  `originator` int(11) NOT NULL DEFAULT 1 COMMENT 'Ident Ersterfasser',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Letztes Modifikationsdatum',
  `modifier` int(11) NOT NULL COMMENT 'Ident Modifikator',
  PRIMARY KEY (`idrs`),
  UNIQUE KEY `idroma_versfrom` (`idroma`,`versfrom`),
  KEY `objname` (`objname`),
  KEY `owner` (`operator`),
  KEY `kind` (`kind`),
  KEY `yearfrom` (`yearfrom`),
  KEY `yearto` (`yearto`),
  KEY `availability` (`readiness`),
  KEY `state` (`state`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Objekte Rollmaterial (temporäre Version 2017)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_rollmat___20200420`
--

DROP TABLE IF EXISTS `fb_rollmat___20200420`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_rollmat___20200420` (
  `idroma` varchar(20) NOT NULL COMMENT 'Identifikator',
  `lft` smallint(5) unsigned NOT NULL COMMENT 'NS Ordnungswert links',
  `rgt` smallint(5) unsigned NOT NULL COMMENT 'NS Ordnungswert rechts',
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Nested Set Level',
  `fztype` tinyint(3) unsigned DEFAULT NULL COMMENT 'zur Verwendung in fp_roma_...',
  `parent` varchar(20) NOT NULL COMMENT 'übergeordneter Identifikator',
  `kind` varchar(10) NOT NULL COMMENT 'Fahrzeugart',
  `baureihe` varchar(20) DEFAULT NULL COMMENT 'CH-Baureihe',
  `objname` varchar(50) DEFAULT NULL COMMENT 'Korrekte Bezeichnung',
  `header` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Titelzeile',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Eintrag ausblenden',
  `inop` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, falls ausser Betrieb',
  `status` varchar(20) DEFAULT NULL COMMENT 'Betriebsstatus ALT',
  `state` varchar(20) DEFAULT NULL COMMENT 'Fahrzeugzustand',
  `availability` varchar(20) DEFAULT NULL COMMENT 'Betriebsbereitschaft',
  `tit1` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'entspricht Titelstufe 1',
  `called` varchar(50) DEFAULT NULL COMMENT 'Name, falls vorhanden',
  `purpose` varchar(50) DEFAULT NULL COMMENT 'Einsetzbarkeitsliste',
  `builder` varchar(20) DEFAULT NULL COMMENT 'Erbauer',
  `built` mediumint(4) unsigned DEFAULT NULL COMMENT 'Baujahr',
  `motor` varchar(20) DEFAULT NULL COMMENT 'Motorhersteller',
  `power` mediumint(8) unsigned DEFAULT NULL COMMENT 'Leistung (kW)',
  `fuel` varchar(10) DEFAULT NULL COMMENT 'Kraftstoff',
  `boilpress` smallint(5) unsigned DEFAULT NULL COMMENT 'Kesseldruck (bar)',
  `yearfrom` year(4) DEFAULT NULL COMMENT 'Übernahme DFB',
  `ops_orig` varchar(50) DEFAULT NULL COMMENT 'Ursprünglicher Betreiber: urspr. Bezeichnung',
  `operator` varchar(10) NOT NULL DEFAULT 'dfb' COMMENT 'Aktueller Betreiber',
  `DFBops` year(4) DEFAULT NULL COMMENT 'Inbetriebnahme DFB',
  `yearto` int(4) unsigned NOT NULL DEFAULT 9999 COMMENT 'Ausrangierung DFB',
  `opsnum` varchar(20) DEFAULT NULL COMMENT 'Benennung',
  `remark` text DEFAULT NULL COMMENT 'Hinweise zur Geschichte',
  `revisions` text DEFAULT NULL COMMENT 'Angaben zu erfolgten Revisionen',
  `look` varchar(50) DEFAULT NULL COMMENT 'Aussehen, Farbe',
  `luep` smallint(5) unsigned DEFAULT NULL COMMENT 'Länge über Puffer (mm)',
  `tara` mediumint(8) unsigned DEFAULT NULL COMMENT 'Leergewicht (kg)',
  `brutto` mediumint(8) unsigned DEFAULT NULL COMMENT 'Max. Dienstgewicht brutto (kg)',
  `braked` mediumint(8) unsigned DEFAULT NULL COMMENT 'Bremsgewicht (kg)',
  `loadarea` decimal(8,2) unsigned DEFAULT NULL COMMENT 'Ladefläche (qm)',
  `loadlimit` mediumint(9) unsigned DEFAULT NULL COMMENT 'Nutzzuladung (kg)',
  `ax_nondriven` smallint(5) unsigned DEFAULT NULL COMMENT 'Laufachsen',
  `ax_driven` smallint(5) unsigned DEFAULT NULL COMMENT 'Antriebsachsen',
  `diam_roll` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Laufrad (mm)',
  `diam_drive` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Triebrad (mm)',
  `diam_gear` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Zahnrad (mm)',
  `teethNsplit` varchar(50) DEFAULT NULL COMMENT 'Radzähne und Teilung',
  `vmaxA` smallint(5) unsigned DEFAULT NULL COMMENT 'Vmax Adhäsion (km/h)',
  `vmaxZ` smallint(5) unsigned DEFAULT NULL COMMENT 'Vmax Zahnrad (km/h)',
  `hookload` mediumint(8) unsigned DEFAULT NULL COMMENT 'Zugkraft am Haken (kp)',
  `wheelbase` mediumint(8) unsigned DEFAULT NULL COMMENT 'Radstand / Drehzapfenabstand (mm)',
  `wheeldist` mediumint(8) unsigned DEFAULT NULL COMMENT 'Radabstand in Drehgestell (mm)',
  `brakes` varchar(50) DEFAULT NULL COMMENT 'Bremssysteme',
  `audio` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, falls mit Audiosystem ausgerüstet',
  `callstation` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, falls mit Besprechungsanlage',
  `compsize` varchar(20) DEFAULT NULL COMMENT 'Sitzzahlliste der Wagenabteile, ab Handbremse',
  `seats1cl` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Sitzzahl erster Klasse',
  `seats2cl` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Sitzzahl zweiter Klasse',
  `style3` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'davon in offenem Abteil',
  `wheelchair` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzahl Rollstuhlhalterungen',
  `placestand` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzahl zusätzliche Stehplätze',
  `heating` varchar(20) DEFAULT NULL COMMENT 'Liste von Heizungssystemen',
  `sort` mediumint(8) unsigned DEFAULT NULL COMMENT 'Sortierindex',
  `entered` datetime NOT NULL COMMENT 'Ersterfassungsdatum',
  `originator` int(11) NOT NULL DEFAULT 1 COMMENT 'Ident Ersterfasser',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Letztes Modifikationsdatum',
  `modifier` int(11) NOT NULL COMMENT 'Ident Modifikator',
  PRIMARY KEY (`idroma`),
  KEY `objname` (`objname`),
  KEY `owner` (`operator`),
  KEY `status` (`status`),
  KEY `lft` (`lft`),
  KEY `kind` (`kind`),
  KEY `yearfrom` (`yearfrom`),
  KEY `yearto` (`yearto`),
  KEY `availability` (`availability`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Objekte Rollmaterial (stillgelegt per s.Dateiname)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_rollmat___copy`
--

DROP TABLE IF EXISTS `fb_rollmat___copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_rollmat___copy` (
  `idroma` varchar(20) NOT NULL,
  `lft` smallint(5) unsigned NOT NULL,
  `rgt` smallint(5) unsigned NOT NULL,
  `hide` tinyint(4) NOT NULL DEFAULT 0,
  `parent` varchar(20) NOT NULL,
  `sort` mediumint(8) unsigned DEFAULT NULL,
  `kind` varchar(10) NOT NULL,
  `baureihe` varchar(20) DEFAULT NULL,
  `objname` varchar(50) DEFAULT NULL,
  `called` varchar(50) DEFAULT NULL,
  `purpose` varchar(50) DEFAULT NULL,
  `builder` varchar(20) DEFAULT NULL COMMENT 'Erbauer',
  `built` mediumint(4) unsigned DEFAULT NULL COMMENT 'Baujahr',
  `motor` varchar(20) DEFAULT NULL COMMENT 'Motorhersteller',
  `power` mediumint(8) unsigned DEFAULT NULL COMMENT 'Leistung (kW)',
  `fuel` varchar(10) DEFAULT NULL COMMENT 'Kraftstoff',
  `boilpress` smallint(5) unsigned DEFAULT NULL COMMENT 'Kesseldruck (bar)',
  `yearfrom` year(4) DEFAULT NULL COMMENT 'Übernahme DFB',
  `ops_orig` varchar(50) DEFAULT NULL COMMENT 'Ursprünglicher Betreiber: urspr. Bezeichnung',
  `operator` varchar(10) NOT NULL DEFAULT 'dfb' COMMENT 'Aktueller Betreiber',
  `DFBops` year(4) DEFAULT NULL COMMENT 'Inbetriebnahme DFB',
  `status` varchar(20) DEFAULT NULL,
  `yearto` int(4) unsigned NOT NULL DEFAULT 9999 COMMENT 'Ausrangierung DFB',
  `opsnum` varchar(20) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `look` varchar(50) DEFAULT NULL COMMENT 'Aussehen, Farbe',
  `luep` smallint(5) unsigned DEFAULT NULL COMMENT 'Länge über Puffer (mm)',
  `tara` mediumint(8) unsigned DEFAULT NULL COMMENT 'Leergewicht (kg)',
  `brutto` mediumint(8) unsigned DEFAULT NULL COMMENT 'Max. Dienstgewicht brutto (kg)',
  `braked` mediumint(8) unsigned DEFAULT NULL COMMENT 'Bremsgewicht (kg)',
  `loadarea` decimal(8,2) unsigned DEFAULT NULL COMMENT 'Ladefläche (qm)',
  `loadlimit` mediumint(9) unsigned DEFAULT NULL COMMENT 'Nutzzuladung (kg)',
  `ax_nondriven` smallint(5) unsigned DEFAULT NULL COMMENT 'Laufachsen',
  `ax_driven` smallint(5) unsigned DEFAULT NULL COMMENT 'Antriebsachsen',
  `diam_drive` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Triebrad (mm)',
  `diam_gear` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Zahnrad (mm)',
  `vmaxA` smallint(5) unsigned DEFAULT NULL COMMENT 'Vmax Adhäsion (km/h)',
  `vmaxZ` smallint(5) unsigned DEFAULT NULL COMMENT 'Vmax Zahnrad (km/h)',
  `hookload` mediumint(8) unsigned DEFAULT NULL COMMENT 'Zugkraft am Haken (kp)',
  `wheelbase` mediumint(8) unsigned DEFAULT NULL COMMENT 'Radstand / Drehzapfenabstand (mm)',
  `wheeldist` mediumint(8) unsigned DEFAULT NULL COMMENT 'Radabstand in Drehgestell (mm)',
  `brakes` varchar(50) DEFAULT NULL COMMENT 'Bremssysteme',
  `audio` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `callstation` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `compsize` varchar(20) DEFAULT NULL,
  `seats1cl` smallint(5) unsigned NOT NULL DEFAULT 0,
  `seats2cl` smallint(5) unsigned NOT NULL DEFAULT 0,
  `style3` smallint(5) unsigned NOT NULL DEFAULT 0,
  `wheelchair` smallint(5) unsigned NOT NULL DEFAULT 0,
  `placestand` smallint(5) unsigned NOT NULL DEFAULT 0,
  `heating` varchar(20) DEFAULT NULL,
  `entered` datetime NOT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL,
  PRIMARY KEY (`idroma`),
  KEY `objname` (`objname`),
  KEY `owner` (`operator`),
  KEY `status` (`status`),
  KEY `lft` (`lft`),
  KEY `kind` (`kind`),
  KEY `yearfrom` (`yearfrom`),
  KEY `yearto` (`yearto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Objekte Rollmaterial';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_rollmat_v1`
--

DROP TABLE IF EXISTS `fb_rollmat_v1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_rollmat_v1` (
  `idroma` varchar(20) NOT NULL COMMENT 'Identifikator',
  `lft` smallint(5) unsigned NOT NULL COMMENT 'NS Ordnungswert links',
  `rgt` smallint(5) unsigned NOT NULL COMMENT 'NS Ordnungswert rechts',
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Nested Set Level',
  `fztype` tinyint(3) unsigned DEFAULT NULL COMMENT 'zur Verwendung in fp_roma_...',
  `parent` varchar(20) NOT NULL COMMENT 'übergeordneter Identifikator',
  `kind` varchar(10) NOT NULL COMMENT 'Fahrzeugart',
  `baureihe` varchar(20) DEFAULT NULL COMMENT 'CH-Baureihe',
  `objname` varchar(50) DEFAULT NULL COMMENT 'Korrekte Bezeichnung',
  `header` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Titelzeile',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Eintrag ausblenden',
  `inop` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, falls ausser Betrieb',
  `status` varchar(20) DEFAULT NULL COMMENT 'Betriebsstatus ALT',
  `state` varchar(20) DEFAULT NULL COMMENT 'Fahrzeugzustand',
  `availability` varchar(20) DEFAULT NULL COMMENT 'Betriebsbereitschaft',
  `tit1` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'entspricht Titelstufe 1',
  `called` varchar(50) DEFAULT NULL COMMENT 'Name, falls vorhanden',
  `purpose` varchar(50) DEFAULT NULL COMMENT 'Einsetzbarkeitsliste',
  `builder` varchar(20) DEFAULT NULL COMMENT 'Erbauer',
  `built` mediumint(4) unsigned DEFAULT NULL COMMENT 'Baujahr',
  `motor` varchar(20) DEFAULT NULL COMMENT 'Motorhersteller',
  `power` mediumint(8) unsigned DEFAULT NULL COMMENT 'Leistung (kW)',
  `fuel` varchar(10) DEFAULT NULL COMMENT 'Kraftstoff',
  `boilpress` smallint(5) unsigned DEFAULT NULL COMMENT 'Kesseldruck (bar)',
  `yearfrom` year(4) DEFAULT NULL COMMENT 'Übernahme DFB',
  `ops_orig` varchar(50) DEFAULT NULL COMMENT 'Ursprünglicher Betreiber: urspr. Bezeichnung',
  `operator` varchar(10) NOT NULL DEFAULT 'dfb' COMMENT 'Aktueller Betreiber',
  `DFBops` year(4) DEFAULT NULL COMMENT 'Inbetriebnahme DFB',
  `yearto` int(4) unsigned NOT NULL DEFAULT 9999 COMMENT 'Ausrangierung DFB',
  `opsnum` varchar(20) DEFAULT NULL COMMENT 'Benennung',
  `remark` text DEFAULT NULL COMMENT 'Hinweise zur Geschichte',
  `revisions` text DEFAULT NULL COMMENT 'Angaben zu erfolgten Revisionen',
  `look` varchar(50) DEFAULT NULL COMMENT 'Aussehen, Farbe',
  `luep` smallint(5) unsigned DEFAULT NULL COMMENT 'Länge über Puffer (mm)',
  `tara` mediumint(8) unsigned DEFAULT NULL COMMENT 'Leergewicht (kg)',
  `brutto` mediumint(8) unsigned DEFAULT NULL COMMENT 'Max. Dienstgewicht brutto (kg)',
  `braked` mediumint(8) unsigned DEFAULT NULL COMMENT 'Bremsgewicht (kg)',
  `loadarea` decimal(8,2) unsigned DEFAULT NULL COMMENT 'Ladefläche (qm)',
  `loadlimit` mediumint(9) unsigned DEFAULT NULL COMMENT 'Nutzzuladung (kg)',
  `ax_nondriven` smallint(5) unsigned DEFAULT NULL COMMENT 'Laufachsen',
  `ax_driven` smallint(5) unsigned DEFAULT NULL COMMENT 'Antriebsachsen',
  `diam_roll` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Laufrad (mm)',
  `diam_drive` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Triebrad (mm)',
  `diam_gear` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Zahnrad (mm)',
  `teethNsplit` varchar(50) DEFAULT NULL COMMENT 'Radzähne und Teilung',
  `vmaxA` smallint(5) unsigned DEFAULT NULL COMMENT 'Vmax Adhäsion (km/h)',
  `vmaxZ` smallint(5) unsigned DEFAULT NULL COMMENT 'Vmax Zahnrad (km/h)',
  `hookload` mediumint(8) unsigned DEFAULT NULL COMMENT 'Zugkraft am Haken (kp)',
  `wheelbase` mediumint(8) unsigned DEFAULT NULL COMMENT 'Radstand / Drehzapfenabstand (mm)',
  `wheeldist` mediumint(8) unsigned DEFAULT NULL COMMENT 'Radabstand in Drehgestell (mm)',
  `brakes` varchar(50) DEFAULT NULL COMMENT 'Bremssysteme',
  `audio` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, falls mit Audiosystem ausgerüstet',
  `callstation` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, falls mit Besprechungsanlage',
  `compsize` varchar(20) DEFAULT NULL COMMENT 'Sitzzahlliste der Wagenabteile, ab Handbremse',
  `seats1cl` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Sitzzahl erster Klasse',
  `seats2cl` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Sitzzahl zweiter Klasse',
  `style3` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'davon in offenem Abteil',
  `wheelchair` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzahl Rollstuhlhalterungen',
  `placestand` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzahl zusätzliche Stehplätze',
  `heating` varchar(20) DEFAULT NULL COMMENT 'Liste von Heizungssystemen',
  `sort` mediumint(8) unsigned DEFAULT NULL COMMENT 'Sortierindex',
  `entered` datetime NOT NULL COMMENT 'Ersterfassungsdatum',
  `originator` int(11) NOT NULL DEFAULT 1 COMMENT 'Ident Ersterfasser',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Letztes Modifikationsdatum',
  `modifier` int(11) NOT NULL COMMENT 'Ident Modifikator',
  PRIMARY KEY (`idroma`),
  KEY `objname` (`objname`),
  KEY `owner` (`operator`),
  KEY `status` (`status`),
  KEY `lft` (`lft`),
  KEY `kind` (`kind`),
  KEY `yearfrom` (`yearfrom`),
  KEY `yearto` (`yearto`),
  KEY `availability` (`availability`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Objekte Rollmaterial (Version 1 mit Nested Set)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_rollmat_v1__arc`
--

DROP TABLE IF EXISTS `fb_rollmat_v1__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_rollmat_v1__arc` (
  `idroma` varchar(20) NOT NULL COMMENT 'Identifikator',
  `lft` smallint(5) unsigned NOT NULL COMMENT 'NS Ordnungswert links',
  `rgt` smallint(5) unsigned NOT NULL COMMENT 'NS Ordnungswert rechts',
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Nested Set Level',
  `fztype` tinyint(3) unsigned DEFAULT NULL COMMENT 'zur Verwendung in fp_roma_...',
  `parent` varchar(20) NOT NULL COMMENT 'übergeordneter Identifikator',
  `kind` varchar(10) NOT NULL COMMENT 'Fahrzeugart',
  `baureihe` varchar(20) DEFAULT NULL COMMENT 'CH-Baureihe',
  `objname` varchar(50) DEFAULT NULL COMMENT 'Korrekte Bezeichnung',
  `inop` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, falls ausser Betrieb',
  `status` varchar(20) DEFAULT NULL COMMENT 'Betriebsstatus ALT',
  `state` varchar(20) DEFAULT NULL COMMENT 'Fahrzeugzustand',
  `availability` varchar(20) DEFAULT NULL COMMENT 'Betriebsbereitschaft',
  `tit1` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'entspricht Titelstufe 1',
  `called` varchar(50) DEFAULT NULL COMMENT 'Name, falls vorhanden',
  `purpose` varchar(50) DEFAULT NULL COMMENT 'Einsetzbarkeitsliste',
  `builder` varchar(20) DEFAULT NULL COMMENT 'Erbauer',
  `built` mediumint(4) unsigned DEFAULT NULL COMMENT 'Baujahr',
  `motor` varchar(20) DEFAULT NULL COMMENT 'Motorhersteller',
  `power` mediumint(8) unsigned DEFAULT NULL COMMENT 'Leistung (kW)',
  `fuel` varchar(10) DEFAULT NULL COMMENT 'Kraftstoff',
  `boilpress` smallint(5) unsigned DEFAULT NULL COMMENT 'Kesseldruck (bar)',
  `yearfrom` year(4) DEFAULT NULL COMMENT 'Übernahme DFB',
  `ops_orig` varchar(50) DEFAULT NULL COMMENT 'Ursprünglicher Betreiber: urspr. Bezeichnung',
  `operator` varchar(10) NOT NULL DEFAULT 'dfb' COMMENT 'Aktueller Betreiber',
  `DFBops` year(4) DEFAULT NULL COMMENT 'Inbetriebnahme DFB',
  `yearto` int(4) unsigned NOT NULL DEFAULT 9999 COMMENT 'Ausrangierung DFB',
  `opsnum` varchar(20) DEFAULT NULL COMMENT 'Benennung',
  `remark` text DEFAULT NULL COMMENT 'Hinweise zur Geschichte',
  `revisions` text DEFAULT NULL COMMENT 'Angaben zu erfolgten Revisionen',
  `look` varchar(50) DEFAULT NULL COMMENT 'Aussehen, Farbe',
  `luep` smallint(5) unsigned DEFAULT NULL COMMENT 'Länge über Puffer (mm)',
  `tara` mediumint(8) unsigned DEFAULT NULL COMMENT 'Leergewicht (kg)',
  `brutto` mediumint(8) unsigned DEFAULT NULL COMMENT 'Max. Dienstgewicht brutto (kg)',
  `braked` mediumint(8) unsigned DEFAULT NULL COMMENT 'Bremsgewicht (kg)',
  `loadarea` decimal(8,2) unsigned DEFAULT NULL COMMENT 'Ladefläche (qm)',
  `loadlimit` mediumint(9) unsigned DEFAULT NULL COMMENT 'Nutzzuladung (kg)',
  `ax_nondriven` smallint(5) unsigned DEFAULT NULL COMMENT 'Laufachsen',
  `ax_driven` smallint(5) unsigned DEFAULT NULL COMMENT 'Antriebsachsen',
  `diam_roll` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Laufrad (mm)',
  `diam_drive` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Triebrad (mm)',
  `diam_gear` smallint(5) unsigned DEFAULT NULL COMMENT 'Durchmesser Zahnrad (mm)',
  `teethNsplit` varchar(50) DEFAULT NULL COMMENT 'Radzähne und Teilung',
  `vmaxA` smallint(5) unsigned DEFAULT NULL COMMENT 'Vmax Adhäsion (km/h)',
  `vmaxZ` smallint(5) unsigned DEFAULT NULL COMMENT 'Vmax Zahnrad (km/h)',
  `hookload` mediumint(8) unsigned DEFAULT NULL COMMENT 'Zugkraft am Haken (kp)',
  `wheelbase` mediumint(8) unsigned DEFAULT NULL COMMENT 'Radstand / Drehzapfenabstand (mm)',
  `wheeldist` mediumint(8) unsigned DEFAULT NULL COMMENT 'Radabstand in Drehgestell (mm)',
  `brakes` varchar(50) DEFAULT NULL COMMENT 'Bremssysteme',
  `audio` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, falls mit Audiosystem ausgerüstet',
  `callstation` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1, falls mit Besprechungsanlage',
  `compsize` varchar(20) DEFAULT NULL COMMENT 'Sitzzahlliste der Wagenabteile, ab Handbremse',
  `seats1cl` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Sitzzahl erster Klasse',
  `seats2cl` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Sitzzahl zweiter Klasse',
  `style3` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'davon in offenem Abteil',
  `wheelchair` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzahl Rollstuhlhalterungen',
  `placestand` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzahl zusätzliche Stehplätze',
  `heating` varchar(20) DEFAULT NULL COMMENT 'Liste von Heizungssystemen',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Eintrag ausblenden',
  `sort` mediumint(8) unsigned DEFAULT NULL COMMENT 'Sortierindex',
  `entered` datetime NOT NULL COMMENT 'Ersterfassungsdatum',
  `originator` int(11) NOT NULL DEFAULT 1 COMMENT 'Ident Ersterfasser',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Letztes Modifikationsdatum',
  `modifier` int(11) NOT NULL COMMENT 'Ident Modifikator',
  PRIMARY KEY (`idroma`),
  KEY `objname` (`objname`),
  KEY `owner` (`operator`),
  KEY `status` (`status`),
  KEY `lft` (`lft`),
  KEY `kind` (`kind`),
  KEY `yearfrom` (`yearfrom`),
  KEY `yearto` (`yearto`),
  KEY `availability` (`availability`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='ARCHIV Objekte Rollmaterial (Version 1)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_rolltype`
--

DROP TABLE IF EXISTS `fb_rolltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_rolltype` (
  `idgrp` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT 'Identifikator',
  `kind` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT 'Fahrzeugart',
  `specific` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT 'übergeordneter Identifikator',
  `lft` smallint(5) unsigned NOT NULL COMMENT 'NS Ordnungswert links',
  `rgt` smallint(5) unsigned NOT NULL COMMENT 'NS Ordnungswert rechts',
  `istype` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT '1: Fahrzeugtyp, 0: Titel',
  `fztype` tinyint(3) unsigned DEFAULT NULL COMMENT 'zur Verwendung in fp_roma_...',
  `objname` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Korrekte Bezeichnung',
  `seq` mediumint(8) unsigned DEFAULT NULL COMMENT 'Sortierindex',
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Letztes Modifikationsdatum',
  `modifier` int(11) NOT NULL COMMENT 'Ident Modifikator'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_schedule`
--

DROP TABLE IF EXISTS `fb_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_schedule` (
  `pday` date NOT NULL,
  `sorttour` varchar(20) NOT NULL,
  `extra` varchar(20) NOT NULL DEFAULT '',
  `tholder` int(10) unsigned NOT NULL DEFAULT 0,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`pday`,`sorttour`,`extra`),
  KEY `tholder` (`tholder`),
  KEY `sorttour` (`sorttour`),
  KEY `modified` (`modified`),
  KEY `extra` (`extra`)
) ENGINE=MyISAM AUTO_INCREMENT=276 DEFAULT CHARSET=utf8 COMMENT='Personalanforderung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_traveloffer`
--

DROP TABLE IF EXISTS `fb_traveloffer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_traveloffer` (
  `idzug` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idvp` varchar(1) DEFAULT NULL,
  `kind` varchar(10) DEFAULT NULL,
  `period` int(10) unsigned DEFAULT NULL,
  `route` varchar(20) NOT NULL,
  `dep_station` varchar(10) DEFAULT NULL,
  `arr_station` varchar(10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `reihe` varchar(10) DEFAULT NULL,
  `service` varchar(29) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzug`),
  UNIQUE KEY `route` (`period`,`route`)
) ENGINE=MyISAM AUTO_INCREMENT=159 DEFAULT CHARSET=utf8 COMMENT='Fahrbetrieb: Zugrouten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_ttable`
--

DROP TABLE IF EXISTS `fb_ttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_ttable` (
  `dtid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area` int(11) DEFAULT 0,
  `sector` varchar(2) DEFAULT NULL,
  `dtcode` varchar(10) DEFAULT NULL,
  `shortname` varchar(20) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `inclVP` varchar(50) DEFAULT NULL,
  `exclVP` varchar(50) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `r_end_time` mediumint(9) DEFAULT NULL,
  `r_end_place` varchar(10) DEFAULT NULL,
  `r_via` varchar(255) DEFAULT NULL,
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`dtid`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `area` (`area`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='Fahrbetrieb: Fahrpläne';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_ttable_stage`
--

DROP TABLE IF EXISTS `fb_ttable_stage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_ttable_stage` (
  `dtid` int(10) unsigned NOT NULL,
  `opt` varchar(20) NOT NULL,
  `seq` smallint(6) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `description` varchar(80) DEFAULT NULL,
  `activity` varchar(20) NOT NULL,
  `prereq` varchar(100) NOT NULL,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `mid_place1` varchar(20) NOT NULL,
  `mid_place2` varchar(20) NOT NULL,
  `mid_place3` varchar(20) NOT NULL,
  `end_place` varchar(10) NOT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`dtid`,`opt`,`seq`),
  KEY `activity` (`activity`),
  KEY `modified` (`modified`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Fahrbetrieb: Fahrplan-Etappen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_verkehr`
--

DROP TABLE IF EXISTS `fb_verkehr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_verkehr` (
  `idmov` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opsdate` date DEFAULT NULL,
  `idzug` int(10) unsigned DEFAULT NULL,
  `route` varchar(20) DEFAULT NULL,
  `train` varchar(20) DEFAULT NULL,
  `sub_train` varchar(20) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `dep_eff` varchar(10) DEFAULT NULL,
  `arr_eff` varchar(10) DEFAULT NULL,
  `via_eff` varchar(10) DEFAULT NULL,
  `dep_km` int(10) unsigned DEFAULT 0,
  `arr_km` int(10) unsigned DEFAULT 0,
  `via_km` int(10) unsigned DEFAULT 0,
  `lok` varchar(10) DEFAULT NULL,
  `wagen` varchar(50) DEFAULT NULL,
  `offseats1` int(10) unsigned DEFAULT 0,
  `offseats2` int(10) unsigned DEFAULT 0,
  `declass1` int(10) unsigned DEFAULT 0,
  `result` varchar(20) DEFAULT NULL,
  `pax1cl` int(10) unsigned DEFAULT 0,
  `pax2cl` int(10) unsigned DEFAULT 0,
  `cl2group` int(10) unsigned DEFAULT NULL,
  `cl2child` int(10) unsigned DEFAULT NULL,
  `cl2in3` int(10) unsigned DEFAULT NULL,
  `handicap` int(10) unsigned DEFAULT NULL,
  `wchair` int(10) unsigned DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idmov`),
  UNIQUE KEY `opsdate` (`opsdate`,`train`,`sub_train`),
  KEY `lok` (`lok`),
  KEY `result` (`result`),
  KEY `train` (`sub_train`),
  KEY `idzug` (`idzug`),
  KEY `route` (`train`),
  FULLTEXT KEY `wagen` (`wagen`)
) ENGINE=MyISAM AUTO_INCREMENT=577 DEFAULT CHARSET=utf8 COMMENT='Fahrbetrieb: Effektive Zugbewegungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_verkehr__2012_keep`
--

DROP TABLE IF EXISTS `fb_verkehr__2012_keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_verkehr__2012_keep` (
  `idmov` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opsdate` date DEFAULT NULL,
  `route` varchar(20) DEFAULT NULL,
  `train` varchar(20) DEFAULT NULL,
  `dep_eff` varchar(10) DEFAULT NULL,
  `arr_eff` varchar(10) DEFAULT NULL,
  `via_eff` varchar(10) DEFAULT NULL,
  `dep_km` int(10) unsigned DEFAULT 0,
  `arr_km` int(10) unsigned DEFAULT 0,
  `via_km` int(10) unsigned DEFAULT 0,
  `lok` varchar(10) DEFAULT NULL,
  `wagen` varchar(50) DEFAULT NULL,
  `offseats1` int(10) unsigned DEFAULT 0,
  `offseats2` int(10) unsigned DEFAULT 0,
  `declass1` int(10) unsigned DEFAULT 0,
  `result` varchar(20) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `pax1cl` int(10) unsigned DEFAULT 0,
  `pax2cl` int(10) unsigned DEFAULT 0,
  `cl2group` int(10) unsigned DEFAULT NULL,
  `cl2child` int(10) unsigned DEFAULT NULL,
  `cl2in3` int(10) unsigned DEFAULT NULL,
  `handicap` int(10) unsigned DEFAULT NULL,
  `wchair` int(10) unsigned DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idmov`),
  UNIQUE KEY `opsdate` (`opsdate`,`route`,`train`),
  KEY `lok` (`lok`),
  KEY `route` (`route`),
  KEY `result` (`result`),
  KEY `train` (`train`),
  FULLTEXT KEY `wagen` (`wagen`)
) ENGINE=MyISAM AUTO_INCREMENT=562 DEFAULT CHARSET=utf8 COMMENT='Fahrbetrieb: Alle Zugbewegungen 2012';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_verkehr___alt`
--

DROP TABLE IF EXISTS `fb_verkehr___alt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_verkehr___alt` (
  `idmov` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opsdate` date DEFAULT NULL,
  `route` varchar(20) DEFAULT NULL,
  `train` varchar(20) DEFAULT NULL,
  `dep_eff` varchar(10) DEFAULT NULL,
  `arr_eff` varchar(10) DEFAULT NULL,
  `via_eff` varchar(10) DEFAULT NULL,
  `dep_km` int(10) unsigned DEFAULT 0,
  `arr_km` int(10) unsigned DEFAULT 0,
  `via_km` int(10) unsigned DEFAULT 0,
  `lok` varchar(10) DEFAULT NULL,
  `wagen` varchar(50) DEFAULT NULL,
  `offseats1` int(10) unsigned DEFAULT 0,
  `offseats2` int(10) unsigned DEFAULT 0,
  `declass1` int(10) unsigned DEFAULT 0,
  `result` varchar(20) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `pax1cl` int(10) unsigned DEFAULT 0,
  `pax2cl` int(10) unsigned DEFAULT 0,
  `cl2group` int(10) unsigned DEFAULT NULL,
  `cl2child` int(10) unsigned DEFAULT NULL,
  `cl2in3` int(10) unsigned DEFAULT NULL,
  `handicap` int(10) unsigned DEFAULT NULL,
  `wchair` int(10) unsigned DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idmov`),
  UNIQUE KEY `opsdate` (`opsdate`,`route`,`train`),
  KEY `lok` (`lok`),
  KEY `route` (`route`),
  KEY `result` (`result`),
  KEY `train` (`train`),
  FULLTEXT KEY `wagen` (`wagen`)
) ENGINE=MyISAM AUTO_INCREMENT=562 DEFAULT CHARSET=utf8 COMMENT='Fahrbetrieb: Alle Zugbewegungen 2012';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_vp_zug`
--

DROP TABLE IF EXISTS `fb_vp_zug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_vp_zug` (
  `season` year(4) NOT NULL DEFAULT 0000,
  `wtsort` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `scheme` varchar(50) NOT NULL,
  `routes` varchar(255) DEFAULT NULL,
  `enhance` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`season`,`scheme`),
  KEY `wtsort` (`wtsort`),
  FULLTEXT KEY `reg_train` (`routes`,`enhance`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Fahrbetrieb: tägliche Regelzüge nach VP 2012';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_zug`
--

DROP TABLE IF EXISTS `fb_zug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_zug` (
  `idzug` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product` varchar(20) DEFAULT NULL,
  `vpcode` varchar(1) DEFAULT NULL,
  `main_train` varchar(10) DEFAULT NULL,
  `ops_extra` varchar(10) DEFAULT NULL,
  `fdl_extra` date DEFAULT NULL,
  `reihe` varchar(10) DEFAULT NULL,
  `train` varchar(20) NOT NULL,
  `dep_station` varchar(10) DEFAULT NULL,
  `arr_station` varchar(10) DEFAULT NULL,
  `via_station` varchar(10) DEFAULT NULL,
  `dep_pos` int(10) unsigned NOT NULL DEFAULT 0,
  `via_pos` int(10) unsigned NOT NULL DEFAULT 0,
  `arr_pos` int(10) unsigned NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `kind` varchar(20) DEFAULT NULL,
  `service` varchar(29) DEFAULT NULL,
  `season` int(10) unsigned DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzug`),
  UNIQUE KEY `zugnr` (`train`,`validfrom`,`vpcode`,`main_train`,`ops_extra`,`fdl_extra`),
  KEY `kind` (`kind`),
  KEY `validfrom` (`validfrom`),
  KEY `product` (`product`),
  KEY `ops_extra` (`ops_extra`),
  KEY `fdl_extra` (`fdl_extra`)
) ENGINE=MyISAM AUTO_INCREMENT=183 DEFAULT CHARSET=utf8 COMMENT='Fahrbetrieb: Zuganordnung bis 2012';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_zug_fahrt`
--

DROP TABLE IF EXISTS `fb_zug_fahrt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_zug_fahrt` (
  `idzf` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Betrieb',
  `idzp` int(10) unsigned DEFAULT NULL COMMENT 'Plan',
  `idza` int(10) unsigned DEFAULT NULL COMMENT 'Anforderung',
  `opsday` date NOT NULL,
  `seq` smallint(5) unsigned NOT NULL DEFAULT 65535,
  `opsid` varchar(10) DEFAULT NULL,
  `rpart` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Geplante Routenteilstrecke',
  `ref_plan` varchar(20) NOT NULL,
  `ref_fdl` varchar(20) NOT NULL,
  `efrp` int(10) unsigned DEFAULT NULL,
  `ef_route` varchar(50) NOT NULL,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `result` varchar(20) NOT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `orders` text NOT NULL,
  `remarks` text NOT NULL,
  `activated` datetime DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idzf`),
  UNIQUE KEY `season` (`opsday`,`opsid`,`rpart`),
  KEY `opsmode` (`opsmode`),
  KEY `idzp` (`idzp`),
  KEY `seq` (`seq`)
) ENGINE=MyISAM AUTO_INCREMENT=7902 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Produktionsplan Reise- und relevante Dienstzüge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_zug_fahrt___2014-07-25`
--

DROP TABLE IF EXISTS `fb_zug_fahrt___2014-07-25`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_zug_fahrt___2014-07-25` (
  `idzf` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Betrieb',
  `idzp` int(10) unsigned DEFAULT NULL COMMENT 'Plan',
  `idza` int(10) unsigned DEFAULT NULL COMMENT 'Anforderung',
  `opsday` date NOT NULL,
  `seq` smallint(5) unsigned NOT NULL DEFAULT 65535,
  `opsid` varchar(10) DEFAULT NULL,
  `ref_plan` varchar(20) NOT NULL,
  `ref_fdl` varchar(20) NOT NULL,
  `efrp` int(10) unsigned DEFAULT NULL,
  `ef_route` varchar(50) NOT NULL,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `result` varchar(20) NOT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `orders` text NOT NULL,
  `remarks` text NOT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idzf`),
  UNIQUE KEY `season` (`opsday`,`opsid`),
  KEY `opsmode` (`opsmode`),
  KEY `idzp` (`idzp`),
  KEY `seq` (`seq`)
) ENGINE=MyISAM AUTO_INCREMENT=1463 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Produktionsplan Reise- und relevante Dienstzüge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_zug_fahrt___20140816`
--

DROP TABLE IF EXISTS `fb_zug_fahrt___20140816`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_zug_fahrt___20140816` (
  `idzf` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Betrieb',
  `idzp` int(10) unsigned DEFAULT NULL COMMENT 'Plan',
  `idza` int(10) unsigned DEFAULT NULL COMMENT 'Anforderung',
  `opsday` date NOT NULL,
  `seq` smallint(5) unsigned NOT NULL DEFAULT 65535,
  `opsid` varchar(10) DEFAULT NULL,
  `ref_plan` varchar(20) NOT NULL,
  `ref_fdl` varchar(20) NOT NULL,
  `efrp` int(10) unsigned DEFAULT NULL,
  `ef_route` varchar(50) NOT NULL,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `result` varchar(20) NOT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `orders` text NOT NULL,
  `remarks` text NOT NULL,
  `activated` datetime DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idzf`),
  UNIQUE KEY `season` (`opsday`,`opsid`),
  KEY `opsmode` (`opsmode`),
  KEY `idzp` (`idzp`),
  KEY `seq` (`seq`)
) ENGINE=MyISAM AUTO_INCREMENT=1718 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Produktionsplan Reise- und relevante Dienstzüge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_zug_fahrt___20190620`
--

DROP TABLE IF EXISTS `fb_zug_fahrt___20190620`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_zug_fahrt___20190620` (
  `idzf` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Betrieb',
  `idzp` int(10) unsigned DEFAULT NULL COMMENT 'Plan',
  `idza` int(10) unsigned DEFAULT NULL COMMENT 'Anforderung',
  `opsday` date NOT NULL,
  `seq` smallint(5) unsigned NOT NULL DEFAULT 65535,
  `opsid` varchar(10) DEFAULT NULL,
  `ref_plan` varchar(20) NOT NULL,
  `ref_fdl` varchar(20) NOT NULL,
  `efrp` int(10) unsigned DEFAULT NULL,
  `ef_route` varchar(50) NOT NULL,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `result` varchar(20) NOT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `orders` text NOT NULL,
  `remarks` text NOT NULL,
  `activated` datetime DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idzf`),
  UNIQUE KEY `season` (`opsday`,`opsid`),
  KEY `opsmode` (`opsmode`),
  KEY `idzp` (`idzp`),
  KEY `seq` (`seq`)
) ENGINE=MyISAM AUTO_INCREMENT=5323 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Produktionsplan Reise- und relevante Dienstzüge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_zug_fahrt_basket`
--

DROP TABLE IF EXISTS `fb_zug_fahrt_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_zug_fahrt_basket` (
  `idzf` int(11) NOT NULL COMMENT 'Betrieb',
  `idzp` int(10) unsigned DEFAULT NULL COMMENT 'Plan',
  `idza` int(10) unsigned DEFAULT NULL COMMENT 'Anforderung',
  `opsday` date NOT NULL,
  `seq` smallint(5) unsigned NOT NULL DEFAULT 65535,
  `opsid` varchar(10) DEFAULT NULL,
  `rpart` smallint(5) unsigned NOT NULL DEFAULT 0,
  `ref_plan` varchar(20) NOT NULL,
  `ref_fdl` varchar(20) NOT NULL,
  `efrp` int(10) unsigned DEFAULT NULL,
  `ef_route` varchar(50) NOT NULL,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `result` varchar(20) NOT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `orders` text NOT NULL,
  `remarks` text NOT NULL,
  `activated` datetime DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idzf`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Arbeitsbasket zum Produktionsplan Reise- und relevante Dienstzüge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_zug_fahrt_basket__20190621`
--

DROP TABLE IF EXISTS `fb_zug_fahrt_basket__20190621`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_zug_fahrt_basket__20190621` (
  `idzf` int(11) NOT NULL COMMENT 'Betrieb',
  `idzp` int(10) unsigned DEFAULT NULL COMMENT 'Plan',
  `idza` int(10) unsigned DEFAULT NULL COMMENT 'Anforderung',
  `opsday` date NOT NULL,
  `seq` smallint(5) unsigned NOT NULL DEFAULT 65535,
  `opsid` varchar(10) DEFAULT NULL,
  `ref_plan` varchar(20) NOT NULL,
  `ref_fdl` varchar(20) NOT NULL,
  `efrp` int(10) unsigned DEFAULT NULL,
  `ef_route` varchar(50) NOT NULL,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `result` varchar(20) NOT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `orders` text NOT NULL,
  `remarks` text NOT NULL,
  `activated` datetime DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idzf`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Arbeitsbasket zum Produktionsplan Reise- und relevante Dienstzüge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_zug_fahrt_comp`
--

DROP TABLE IF EXISTS `fb_zug_fahrt_comp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_zug_fahrt_comp` (
  `idzc` int(10) unsigned NOT NULL,
  `idzf` int(10) unsigned DEFAULT NULL,
  `cat_comp` varchar(20) DEFAULT NULL,
  `cseq` int(7) unsigned NOT NULL DEFAULT 0,
  `idzp` int(10) unsigned DEFAULT NULL,
  `idza` int(10) unsigned DEFAULT NULL,
  `opsday` date DEFAULT NULL,
  `cluster` int(10) unsigned DEFAULT NULL,
  `r_opsid` varchar(20) DEFAULT NULL,
  `r_opsmode` varchar(20) DEFAULT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `distance` int(10) unsigned DEFAULT NULL,
  `r_tow_mass` int(10) unsigned DEFAULT NULL,
  `r_tractype` varchar(20) DEFAULT NULL,
  `tseq` int(10) unsigned DEFAULT NULL,
  `ttype` varchar(20) DEFAULT NULL,
  `dep` varchar(20) DEFAULT NULL,
  `cat_rolmat` int(10) unsigned DEFAULT NULL,
  `efco` varchar(20) DEFAULT NULL,
  `operated` varchar(100) DEFAULT NULL,
  `prco` varchar(20) DEFAULT NULL,
  `proposed` varchar(100) DEFAULT NULL,
  `propupd` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `idco` varchar(20) DEFAULT NULL,
  `planned` varchar(100) DEFAULT NULL,
  `tval` int(10) unsigned DEFAULT NULL,
  `tlft` int(10) unsigned DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzc`,`cseq`),
  KEY `cat_comp` (`cat_comp`),
  KEY `idzf` (`idzf`),
  KEY `idzp` (`idzp`),
  KEY `opsday` (`opsday`),
  KEY `r_opsid` (`r_opsid`),
  KEY `r_opsmode` (`r_opsmode`)
) ENGINE=MyISAM AUTO_INCREMENT=703 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Effektive Kompositionen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_zug_fahrt_comp___0821`
--

DROP TABLE IF EXISTS `fb_zug_fahrt_comp___0821`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_zug_fahrt_comp___0821` (
  `idzc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idzp` int(10) unsigned DEFAULT NULL,
  `idza` int(10) unsigned DEFAULT NULL,
  `opsday` date DEFAULT NULL,
  `cluster` int(10) unsigned DEFAULT NULL,
  `r_opsid` varchar(20) DEFAULT NULL,
  `r_opsmode` varchar(20) DEFAULT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `r_tow_mass` int(10) unsigned DEFAULT NULL,
  `r_tractype` varchar(20) DEFAULT NULL,
  `tseq` int(10) unsigned DEFAULT NULL,
  `ttype` varchar(20) DEFAULT NULL,
  `dep` varchar(20) DEFAULT NULL,
  `cat_rolmat` int(10) unsigned DEFAULT NULL,
  `cat_comp` varchar(20) DEFAULT NULL,
  `efco` varchar(20) DEFAULT NULL,
  `operated` varchar(100) DEFAULT NULL,
  `prco` varchar(20) DEFAULT NULL,
  `proposed` varchar(100) DEFAULT NULL,
  `idco` varchar(20) DEFAULT NULL,
  `planned` varchar(100) DEFAULT NULL,
  `tval` int(10) unsigned DEFAULT NULL,
  `tlft` int(10) unsigned DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzc`)
) ENGINE=MyISAM AUTO_INCREMENT=1317 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Effektive Kompositionen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_zug_fahrt_comp___0909`
--

DROP TABLE IF EXISTS `fb_zug_fahrt_comp___0909`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_zug_fahrt_comp___0909` (
  `idzc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cseq` int(7) unsigned NOT NULL DEFAULT 0,
  `idzp` int(10) unsigned DEFAULT NULL,
  `idza` int(10) unsigned DEFAULT NULL,
  `opsday` date DEFAULT NULL,
  `cluster` int(10) unsigned DEFAULT NULL,
  `r_opsid` varchar(20) DEFAULT NULL,
  `r_opsmode` varchar(20) DEFAULT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `r_tow_mass` int(10) unsigned DEFAULT NULL,
  `r_tractype` varchar(20) DEFAULT NULL,
  `tseq` int(10) unsigned DEFAULT NULL,
  `ttype` varchar(20) DEFAULT NULL,
  `dep` varchar(20) DEFAULT NULL,
  `cat_rolmat` int(10) unsigned DEFAULT NULL,
  `cat_comp` varchar(20) DEFAULT NULL,
  `efco` varchar(20) DEFAULT NULL,
  `operated` varchar(100) DEFAULT NULL,
  `prco` varchar(20) DEFAULT NULL,
  `proposed` varchar(100) DEFAULT NULL,
  `propupd` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `idco` varchar(20) DEFAULT NULL,
  `planned` varchar(100) DEFAULT NULL,
  `tval` int(10) unsigned DEFAULT NULL,
  `tlft` int(10) unsigned DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzc`,`cseq`)
) ENGINE=MyISAM AUTO_INCREMENT=676 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Effektive Kompositionen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_zug_fahrt_comp___2013prov`
--

DROP TABLE IF EXISTS `fb_zug_fahrt_comp___2013prov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_zug_fahrt_comp___2013prov` (
  `idzc` int(10) unsigned NOT NULL,
  `idzf` int(10) unsigned DEFAULT NULL,
  `cat_comp` varchar(20) DEFAULT NULL,
  `cseq` int(7) unsigned NOT NULL DEFAULT 0,
  `idzp` int(10) unsigned DEFAULT NULL,
  `idza` int(10) unsigned DEFAULT NULL,
  `opsday` date DEFAULT NULL,
  `cluster` int(10) unsigned DEFAULT NULL,
  `r_opsid` varchar(20) DEFAULT NULL,
  `r_opsmode` varchar(20) DEFAULT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `distance` int(10) unsigned DEFAULT NULL,
  `r_tow_mass` int(10) unsigned DEFAULT NULL,
  `r_tractype` varchar(20) DEFAULT NULL,
  `tseq` int(10) unsigned DEFAULT NULL,
  `ttype` varchar(20) DEFAULT NULL,
  `dep` varchar(20) DEFAULT NULL,
  `cat_rolmat` int(10) unsigned DEFAULT NULL,
  `efco` varchar(20) DEFAULT NULL,
  `operated` varchar(100) DEFAULT NULL,
  `prco` varchar(20) DEFAULT NULL,
  `proposed` varchar(100) DEFAULT NULL,
  `propupd` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `idco` varchar(20) DEFAULT NULL,
  `planned` varchar(100) DEFAULT NULL,
  `tval` int(10) unsigned DEFAULT NULL,
  `tlft` int(10) unsigned DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzc`,`cseq`),
  KEY `cat_comp` (`cat_comp`),
  KEY `idzf` (`idzf`),
  KEY `idzp` (`idzp`),
  KEY `opsday` (`opsday`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Effektive Kompositionen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_zug_fahrt_fdl`
--

DROP TABLE IF EXISTS `fb_zug_fahrt_fdl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_zug_fahrt_fdl` (
  `auto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idzp` int(10) unsigned DEFAULT NULL COMMENT 'Plan',
  `idza` int(10) unsigned DEFAULT NULL COMMENT 'Anforderung',
  `ofis` varchar(10) DEFAULT NULL,
  `opsday` date NOT NULL,
  `opsid` varchar(10) DEFAULT NULL,
  `ref_fdl` varchar(20) NOT NULL,
  `fid` int(10) unsigned DEFAULT NULL COMMENT 'fb_fdl_pparts.fid',
  `cid` int(10) unsigned DEFAULT NULL COMMENT 'fp_dfpl.cid',
  `efrp` int(10) unsigned DEFAULT NULL,
  `ef_route` varchar(50) NOT NULL,
  `dep_loc` varchar(10) NOT NULL,
  `dep_km` decimal(6,3) DEFAULT NULL,
  `dep` smallint(6) NOT NULL,
  `dep_time` time NOT NULL,
  `arr_loc` varchar(10) NOT NULL,
  `arr_km` decimal(6,3) DEFAULT NULL,
  `arr` smallint(6) NOT NULL,
  `arr_time` time NOT NULL,
  `via_loc` varchar(10) NOT NULL,
  `via_km` decimal(6,3) DEFAULT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `comp` varchar(250) DEFAULT NULL,
  `remarks` text NOT NULL,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `result` varchar(20) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`auto`)
) ENGINE=MyISAM AUTO_INCREMENT=1098 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Arbeitsbasket zu durch FdL angeordnete Extra- und Fak-Züge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_zug_fahrt_fdl___20140817`
--

DROP TABLE IF EXISTS `fb_zug_fahrt_fdl___20140817`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_zug_fahrt_fdl___20140817` (
  `auto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idzp` int(10) unsigned DEFAULT NULL COMMENT 'Plan',
  `idza` int(10) unsigned DEFAULT NULL COMMENT 'Anforderung',
  `opsday` date NOT NULL,
  `opsid` varchar(10) DEFAULT NULL,
  `ref_fdl` varchar(20) NOT NULL,
  `efrp` int(10) unsigned DEFAULT NULL,
  `ef_route` varchar(50) NOT NULL,
  `dep_loc` varchar(10) NOT NULL,
  `dep_km` decimal(6,3) DEFAULT NULL,
  `dep` int(10) unsigned NOT NULL,
  `arr_loc` varchar(10) NOT NULL,
  `arr_km` decimal(6,3) DEFAULT NULL,
  `arr` int(10) unsigned NOT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `comp` varchar(250) NOT NULL,
  `remarks` text NOT NULL,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`auto`)
) ENGINE=MyISAM AUTO_INCREMENT=211 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Produktionsplan Reise- und relevante Dienstzüge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_zug_fahrt_fdl_basket`
--

DROP TABLE IF EXISTS `fb_zug_fahrt_fdl_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_zug_fahrt_fdl_basket` (
  `auto` int(10) unsigned NOT NULL,
  `idzp` int(10) unsigned DEFAULT NULL COMMENT 'Plan',
  `idza` int(10) unsigned DEFAULT NULL COMMENT 'Anforderung',
  `ofis` varchar(10) DEFAULT NULL,
  `opsday` date NOT NULL,
  `opsid` varchar(10) DEFAULT NULL,
  `ref_fdl` varchar(20) NOT NULL,
  `fid` int(10) unsigned DEFAULT NULL COMMENT 'fb_fpf_parts.fid',
  `cid` int(10) unsigned DEFAULT NULL COMMENT 'fp_dfpl.cid',
  `efrp` int(10) unsigned DEFAULT NULL,
  `ef_route` varchar(50) NOT NULL,
  `dep_loc` varchar(10) NOT NULL,
  `dep_km` decimal(6,3) DEFAULT NULL,
  `dep` smallint(6) NOT NULL,
  `dep_time` time NOT NULL,
  `arr_loc` varchar(10) NOT NULL,
  `arr_km` decimal(6,3) DEFAULT NULL,
  `arr` smallint(6) NOT NULL,
  `arr_time` time NOT NULL,
  `via_loc` varchar(10) NOT NULL,
  `via_km` decimal(6,3) DEFAULT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `comp` varchar(250) NOT NULL,
  `remarks` text NOT NULL,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `result` varchar(20) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`auto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Durch FdL angeordnete Extra- und Fak-Züge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_zug_fahrt_save`
--

DROP TABLE IF EXISTS `fb_zug_fahrt_save`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_zug_fahrt_save` (
  `idzf` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Betrieb',
  `idzp` int(10) unsigned DEFAULT NULL COMMENT 'Plan',
  `idza` int(10) unsigned DEFAULT NULL COMMENT 'Anforderung',
  `opsday` date NOT NULL,
  `opsid` varchar(10) DEFAULT NULL,
  `ref_plan` varchar(20) NOT NULL,
  `ref_fdl` varchar(20) NOT NULL,
  `efrp` int(10) unsigned DEFAULT NULL,
  `ef_route` varchar(50) NOT NULL,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `result` varchar(20) NOT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `remarks` text NOT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idzf`),
  UNIQUE KEY `season` (`opsday`,`opsid`),
  KEY `opsmode` (`opsmode`),
  KEY `idzp` (`idzp`)
) ENGINE=MyISAM AUTO_INCREMENT=1088 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Produktionsplan Reise- und relevante Dienstzüge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_zug_prodplan`
--

DROP TABLE IF EXISTS `fb_zug_prodplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_zug_prodplan` (
  `opsdate` date NOT NULL DEFAULT '0000-00-00',
  `planops` varchar(50) DEFAULT NULL,
  `vpextra` varchar(100) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`opsdate`),
  KEY `baseops` (`planops`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Fahrbetrieb: Zugrouten 2012';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fb_zug_regeln`
--

DROP TABLE IF EXISTS `fb_zug_regeln`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fb_zug_regeln` (
  `season` year(4) NOT NULL DEFAULT 0000,
  `wtsort` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `scheme` varchar(50) NOT NULL,
  `trains` varchar(255) DEFAULT NULL,
  `enhance` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`season`,`scheme`),
  KEY `wtsort` (`wtsort`),
  FULLTEXT KEY `reg_train` (`trains`,`enhance`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Fahrbetrieb: tägliche Regelzüge 2012';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fi_kpay`
--

DROP TABLE IF EXISTS `fi_kpay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fi_kpay` (
  `rgid` int(10) unsigned NOT NULL,
  `version` smallint(5) unsigned NOT NULL,
  `taskedID` int(10) unsigned DEFAULT NULL,
  `orgID` int(10) unsigned DEFAULT NULL,
  `critVendor` smallint(5) unsigned DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Bezahlung Kreditorenrechnungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fi_kredifakt`
--

DROP TABLE IF EXISTS `fi_kredifakt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fi_kredifakt` (
  `rgid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `version` smallint(5) unsigned NOT NULL DEFAULT 0,
  `vendor` int(10) unsigned DEFAULT NULL,
  `vendorname` varchar(100) DEFAULT NULL,
  `invnum` varchar(20) DEFAULT NULL COMMENT 'Rechnungsnummer',
  `invdate` date DEFAULT NULL,
  `payuntil` date DEFAULT NULL,
  `invcur` varchar(3) NOT NULL DEFAULT 'CHF',
  `invsum` decimal(12,2) DEFAULT NULL,
  `invdocUrl` text DEFAULT NULL,
  `buyer` int(10) unsigned DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `uploadID` int(10) unsigned DEFAULT NULL,
  `fwd2ID` int(10) unsigned DEFAULT NULL,
  `senttime` datetime DEFAULT NULL,
  `sentbyID` int(10) unsigned DEFAULT NULL,
  `sentto` varchar(200) DEFAULT NULL,
  `sentremark` text DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`rgid`,`version`),
  UNIQUE KEY `vendor` (`vendor`,`invnum`,`invdate`,`version`),
  KEY `invnum` (`invnum`),
  KEY `invdate` (`invdate`),
  KEY `invsum` (`invsum`)
) ENGINE=MyISAM AUTO_INCREMENT=1112 DEFAULT CHARSET=utf8 COMMENT='Erfassung Kreditorenrechnungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fi_kredipay`
--

DROP TABLE IF EXISTS `fi_kredipay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fi_kredipay` (
  `rgid` int(10) unsigned NOT NULL DEFAULT 0,
  `version` smallint(5) unsigned NOT NULL DEFAULT 0,
  `taskedID` int(10) unsigned DEFAULT NULL,
  `wip` varchar(20) DEFAULT NULL COMMENT 'work in progress',
  `phase` varchar(20) DEFAULT 'assign',
  `ressortID` int(10) unsigned DEFAULT NULL,
  `proposeID` int(10) unsigned DEFAULT NULL,
  `proposeTime` datetime DEFAULT NULL,
  `supID` int(10) unsigned DEFAULT NULL,
  `clearID` int(10) unsigned DEFAULT NULL,
  `clearTime` datetime DEFAULT NULL,
  `critVendor` smallint(5) unsigned DEFAULT NULL,
  `entered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`rgid`,`version`,`entered`),
  KEY `taskedID` (`taskedID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Bezahlung Kreditorenrechnungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fi_prodarea`
--

DROP TABLE IF EXISTS `fi_prodarea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fi_prodarea` (
  `idp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `descr` varchar(100) DEFAULT NULL COMMENT 'Produktionsbereich',
  `sector` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Planungsgruppe 1-5',
  `backend` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0: Front-, 1: Back End-Tätigkeit (default)',
  `dept` varchar(100) DEFAULT NULL COMMENT 'Auftraggeber',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'relevante Org-Einheit',
  `ep_area` int(10) unsigned DEFAULT NULL COMMENT 'Default-Planungsstelle',
  `yearfrom` smallint(5) unsigned DEFAULT 0 COMMENT 'gültig ab Jahr',
  `yearto` smallint(5) unsigned DEFAULT 9999 COMMENT 'gültig bis Jahr',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'nicht mehr neu verwenden',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`idp`),
  KEY `ep_area` (`ep_area`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='Produktionsbereiche DFB AG\r\n(`support` entspricht $prio)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_circular`
--

DROP TABLE IF EXISTS `fp_circular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_circular` (
  `idze` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codename` varchar(10) NOT NULL,
  `season` varchar(4) DEFAULT NULL,
  `vpcode` varchar(20) NOT NULL DEFAULT '' COMMENT 'Wiederholungsregel des Zirkulars -- all_period.vpcode',
  `validfrom` date DEFAULT NULL,
  `validto` date DEFAULT NULL,
  `description` varchar(250) NOT NULL,
  `dep` time NOT NULL DEFAULT '00:00:00',
  `idz` varchar(10) NOT NULL,
  `docs` varchar(250) DEFAULT NULL,
  `docid` int(10) unsigned DEFAULT NULL,
  `visib` varchar(20) NOT NULL DEFAULT 'confidential',
  `shared` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sharedby` int(10) unsigned NOT NULL DEFAULT 0,
  `ordered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `orderedby` int(10) unsigned NOT NULL DEFAULT 0,
  `cancelled` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cancelby` int(10) unsigned NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idze`),
  KEY `circname` (`codename`)
) ENGINE=MyISAM AUTO_INCREMENT=173 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Mastertabelle aller geplanten Extrazüge (Zirkulare)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_circular___copy`
--

DROP TABLE IF EXISTS `fp_circular___copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_circular___copy` (
  `idze` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `codename` varchar(10) NOT NULL,
  `season` varchar(4) DEFAULT NULL,
  `validfrom` date DEFAULT NULL,
  `validto` date DEFAULT NULL,
  `description` varchar(250) NOT NULL,
  `dep` time NOT NULL DEFAULT '00:00:00',
  `idz` varchar(10) NOT NULL,
  `docs` varchar(250) DEFAULT NULL,
  `visib` varchar(20) NOT NULL DEFAULT 'confidential',
  `shared` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `sharedby` int(10) unsigned NOT NULL DEFAULT 0,
  `ordered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `orderedby` int(10) unsigned NOT NULL DEFAULT 0,
  `cancelled` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cancelby` int(10) unsigned NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idze`),
  KEY `circname` (`codename`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Mastertabelle aller geplanten Extrazüge (Zirkulare)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_comp_list`
--

DROP TABLE IF EXISTS `fp_comp_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_comp_list` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `list_obj` varchar(100) NOT NULL,
  `num_obj` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `total_cm` smallint(5) unsigned NOT NULL DEFAULT 0,
  `load_kp` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cid`),
  KEY `validfrom` (`validfrom`,`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Kompositions-Varianten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_comp_plan`
--

DROP TABLE IF EXISTS `fp_comp_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_comp_plan` (
  `idzp` int(10) unsigned NOT NULL,
  `cat` tinyint(3) unsigned NOT NULL,
  `opsseq` tinyint(3) unsigned NOT NULL,
  `idroma` int(10) unsigned DEFAULT NULL,
  `date_change` date DEFAULT NULL,
  `time_change` time DEFAULT NULL,
  `loc_change` varchar(20) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzp`,`cat`,`opsseq`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zug-Kompositions-Plan v.2016 (ergänzt fp_zug_plan)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_comp_plan___old`
--

DROP TABLE IF EXISTS `fp_comp_plan___old`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_comp_plan___old` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opsid` varchar(10) NOT NULL,
  `opsseq` varchar(10) NOT NULL,
  `opstype` varchar(20) DEFAULT NULL,
  `publicroute` int(10) unsigned DEFAULT NULL,
  `tractionunit` varchar(20) DEFAULT NULL,
  `wagoncomp` varchar(100) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `end_place` varchar(10) DEFAULT NULL,
  `via_place` varchar(10) DEFAULT NULL,
  `opstime` int(10) unsigned DEFAULT NULL,
  `opsdistance` int(10) unsigned DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `technum` (`opsid`,`opsseq`),
  KEY `validfrom` (`validfrom`,`validto`),
  KEY `publicname` (`publicroute`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Zug-Kompositions-Planung ALT';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_comp_rotation`
--

DROP TABLE IF EXISTS `fp_comp_rotation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_comp_rotation` (
  `idr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idtpax` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `idtservice` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `weekdays` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idr`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Wochentagbasierte Umlaufpläne von Kompositionen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_comp_type`
--

DROP TABLE IF EXISTS `fp_comp_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_comp_type` (
  `idza` int(10) unsigned DEFAULT NULL,
  `tseq` int(10) unsigned DEFAULT NULL,
  `r_opsid` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `r_opsmode` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `r_tractype` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `ttype` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `dep` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `cat_rolmat` int(10) unsigned DEFAULT NULL,
  `cat_comp` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `idco` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `planned` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `tval` int(10) unsigned DEFAULT NULL,
  `tlft` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Derzeitige Standardkompositionen der Zuganforderungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_comp_w`
--

DROP TABLE IF EXISTS `fp_comp_w`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_comp_w` (
  `idcw` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idres` varchar(2) NOT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `chain` varchar(100) NOT NULL,
  `classlist` varchar(20) NOT NULL,
  `seats` smallint(5) unsigned NOT NULL DEFAULT 0,
  `length` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `axles` smallint(5) unsigned NOT NULL DEFAULT 0,
  `tare` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `gross` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `braked` mediumint(8) unsigned NOT NULL DEFAULT 0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idcw`),
  KEY `idres` (`idres`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Typische Wagenkompositionen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_comp_w_suite`
--

DROP TABLE IF EXISTS `fp_comp_w_suite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_comp_w_suite` (
  `idcw` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `seq` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `idroma` varchar(20) NOT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idcw`,`seq`),
  KEY `wagid` (`idroma`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Wagenfolge von Kompositionen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_dfpl`
--

DROP TABLE IF EXISTS `fp_dfpl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_dfpl` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kind` varchar(20) DEFAULT NULL,
  `opsid` varchar(10) NOT NULL COMMENT 'Vollständige Zugnummer, mit Zusätzen',
  `yearfrom` varchar(4) DEFAULT NULL,
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `dfs` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Seitenzahl im Dienstfahrplan',
  `vp` varchar(10) DEFAULT NULL COMMENT 'Code der Verkehrsperiode',
  `remark` varchar(250) DEFAULT NULL,
  `opsnum` int(10) unsigned DEFAULT NULL COMMENT 'Zahlenteil von opsid',
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `end_place` varchar(10) DEFAULT NULL,
  `via_place` varchar(10) DEFAULT NULL,
  `idrp` int(10) unsigned DEFAULT NULL COMMENT 'ID Fahrstrecke gem. fp_route_plan',
  `r_route` varchar(50) DEFAULT NULL COMMENT 'Endpunkte Fahrstrecke gem fp_route_plan',
  `locs` varchar(250) DEFAULT NULL COMMENT 'alle berührten Stationen',
  `totaltime` mediumint(8) unsigned DEFAULT NULL,
  `opstime` mediumint(8) unsigned DEFAULT NULL,
  `opsdistance` mediumint(8) unsigned DEFAULT NULL,
  `opsdirec` varchar(10) DEFAULT NULL,
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  `prodcat` varchar(20) DEFAULT NULL COMMENT 'nur bis 2014 benützt',
  PRIMARY KEY (`cid`),
  UNIQUE KEY `technum` (`opsid`,`yearfrom`),
  KEY `kind` (`kind`),
  KEY `yearfrom` (`yearfrom`),
  KEY `yearto` (`yearto`),
  KEY `opsnum` (`opsnum`),
  KEY `start_place` (`start_place`),
  KEY `end_place` (`end_place`),
  KEY `via_place` (`via_place`)
) ENGINE=MyISAM AUTO_INCREMENT=758 DEFAULT CHARSET=utf8 COMMENT='Dienstfahrplan Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_dfpl___190609`
--

DROP TABLE IF EXISTS `fp_dfpl___190609`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_dfpl___190609` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kind` varchar(20) DEFAULT NULL,
  `opsid` varchar(10) NOT NULL COMMENT 'Vollständige Zugnummer, mit Zusätzen',
  `yearfrom` varchar(4) DEFAULT NULL,
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `dfs` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Seitenzahl im Dienstfahrplan',
  `vp` varchar(1) DEFAULT NULL COMMENT 'Code der Verkehrsperiode',
  `prodcat` varchar(20) DEFAULT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `opsnum` int(10) unsigned DEFAULT NULL COMMENT 'Zahlenteil von opsid',
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `end_place` varchar(10) DEFAULT NULL,
  `via_place` varchar(10) DEFAULT NULL,
  `idrp` int(10) unsigned DEFAULT NULL COMMENT 'ID Fahrstrecke gem. fp_route_plan',
  `r_route` varchar(50) DEFAULT NULL COMMENT 'Endpunkte Fahrstrecke gem fp_route_plan',
  `locs` varchar(250) DEFAULT NULL COMMENT 'alle berührten Stationen',
  `totaltime` mediumint(8) unsigned DEFAULT NULL,
  `opstime` mediumint(8) unsigned DEFAULT NULL,
  `opsdistance` mediumint(8) unsigned DEFAULT NULL,
  `opsdirec` varchar(10) DEFAULT NULL,
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `technum` (`opsid`,`yearfrom`),
  KEY `kind` (`kind`),
  KEY `yearfrom` (`yearfrom`),
  KEY `yearto` (`yearto`),
  KEY `opsnum` (`opsnum`),
  KEY `start_place` (`start_place`),
  KEY `end_place` (`end_place`),
  KEY `via_place` (`via_place`)
) ENGINE=MyISAM AUTO_INCREMENT=545 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Dienstfahrplan Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_dfpl___2013`
--

DROP TABLE IF EXISTS `fp_dfpl___2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_dfpl___2013` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kind` varchar(20) DEFAULT NULL,
  `opsid` varchar(10) NOT NULL,
  `yearfrom` varchar(4) DEFAULT NULL,
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `vp` varchar(1) DEFAULT NULL,
  `prodcat` varchar(10) DEFAULT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `end_place` varchar(10) DEFAULT NULL,
  `via_place` varchar(100) DEFAULT NULL,
  `totaltime` mediumint(8) unsigned DEFAULT NULL,
  `opstime` mediumint(8) unsigned DEFAULT NULL,
  `opsdistance` mediumint(8) unsigned DEFAULT NULL,
  `opsdirec` varchar(10) DEFAULT NULL,
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `technum` (`opsid`,`yearfrom`),
  KEY `kind` (`kind`),
  KEY `yearfrom` (`yearfrom`),
  KEY `yearto` (`yearto`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zugrouten nach Dienstfahrplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_dfpl___20150922`
--

DROP TABLE IF EXISTS `fp_dfpl___20150922`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_dfpl___20150922` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kind` varchar(20) DEFAULT NULL,
  `opsid` varchar(10) NOT NULL,
  `yearfrom` varchar(4) DEFAULT NULL,
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `vp` varchar(1) DEFAULT NULL,
  `prodcat` varchar(20) DEFAULT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `end_place` varchar(10) DEFAULT NULL,
  `via_place` varchar(100) DEFAULT NULL,
  `totaltime` mediumint(8) unsigned DEFAULT NULL,
  `opstime` mediumint(8) unsigned DEFAULT NULL,
  `opsdistance` mediumint(8) unsigned DEFAULT NULL,
  `opsdirec` varchar(10) DEFAULT NULL,
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `technum` (`opsid`,`yearfrom`),
  KEY `kind` (`kind`),
  KEY `yearfrom` (`yearfrom`),
  KEY `yearto` (`yearto`)
) ENGINE=MyISAM AUTO_INCREMENT=243 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Dienstfahrplan Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_dfpl___20170420`
--

DROP TABLE IF EXISTS `fp_dfpl___20170420`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_dfpl___20170420` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kind` varchar(20) DEFAULT NULL,
  `opsid` varchar(10) NOT NULL COMMENT 'Vollständige Zugnummer, mit Zusätzen',
  `yearfrom` varchar(4) DEFAULT NULL,
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `dfs` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Seitenzahl im Dienstfahrplan',
  `vp` varchar(1) DEFAULT NULL COMMENT 'Code der Verkehrsperiode',
  `prodcat` varchar(20) DEFAULT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `opsnum` int(10) unsigned DEFAULT NULL COMMENT 'Zahlenteil von opsid',
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `end_place` varchar(10) DEFAULT NULL,
  `via_place` varchar(10) DEFAULT NULL,
  `locs` varchar(250) DEFAULT NULL COMMENT 'alle berührten Stationen',
  `totaltime` mediumint(8) unsigned DEFAULT NULL,
  `opstime` mediumint(8) unsigned DEFAULT NULL,
  `opsdistance` mediumint(8) unsigned DEFAULT NULL,
  `opsdirec` varchar(10) DEFAULT NULL,
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `technum` (`opsid`,`yearfrom`),
  KEY `kind` (`kind`),
  KEY `yearfrom` (`yearfrom`),
  KEY `yearto` (`yearto`),
  KEY `opsnum` (`opsnum`),
  KEY `start_place` (`start_place`),
  KEY `end_place` (`end_place`),
  KEY `via_place` (`via_place`)
) ENGINE=MyISAM AUTO_INCREMENT=397 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Dienstfahrplan Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_dfpl___20200709`
--

DROP TABLE IF EXISTS `fp_dfpl___20200709`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_dfpl___20200709` (
  `cid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kind` varchar(20) DEFAULT NULL,
  `opsid` varchar(10) NOT NULL COMMENT 'Vollständige Zugnummer, mit Zusätzen',
  `yearfrom` varchar(4) DEFAULT NULL,
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `dfs` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Seitenzahl im Dienstfahrplan',
  `vp` varchar(1) DEFAULT NULL COMMENT 'Code der Verkehrsperiode',
  `prodcat` varchar(20) DEFAULT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `opsnum` int(10) unsigned DEFAULT NULL COMMENT 'Zahlenteil von opsid',
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `end_place` varchar(10) DEFAULT NULL,
  `via_place` varchar(10) DEFAULT NULL,
  `idrp` int(10) unsigned DEFAULT NULL COMMENT 'ID Fahrstrecke gem. fp_route_plan',
  `r_route` varchar(50) DEFAULT NULL COMMENT 'Endpunkte Fahrstrecke gem fp_route_plan',
  `locs` varchar(250) DEFAULT NULL COMMENT 'alle berührten Stationen',
  `totaltime` mediumint(8) unsigned DEFAULT NULL,
  `opstime` mediumint(8) unsigned DEFAULT NULL,
  `opsdistance` mediumint(8) unsigned DEFAULT NULL,
  `opsdirec` varchar(10) DEFAULT NULL,
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `technum` (`opsid`,`yearfrom`),
  KEY `kind` (`kind`),
  KEY `yearfrom` (`yearfrom`),
  KEY `yearto` (`yearto`),
  KEY `opsnum` (`opsnum`),
  KEY `start_place` (`start_place`),
  KEY `end_place` (`end_place`),
  KEY `via_place` (`via_place`)
) ENGINE=MyISAM AUTO_INCREMENT=663 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Dienstfahrplan Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_dfpl__arc`
--

DROP TABLE IF EXISTS `fp_dfpl__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_dfpl__arc` (
  `cid` text DEFAULT NULL,
  `kind` text DEFAULT NULL,
  `opsid` text DEFAULT NULL,
  `yearfrom` text DEFAULT NULL,
  `yearto` text DEFAULT NULL,
  `dfs` text DEFAULT NULL,
  `vp` text DEFAULT NULL,
  `prodcat` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `opsnum` text DEFAULT NULL,
  `start_time` text DEFAULT NULL,
  `start_place` text DEFAULT NULL,
  `end_time` text DEFAULT NULL,
  `end_place` text DEFAULT NULL,
  `via_place` text DEFAULT NULL,
  `idrp` text DEFAULT NULL,
  `r_route` text DEFAULT NULL,
  `locs` text DEFAULT NULL,
  `totaltime` text DEFAULT NULL,
  `opstime` text DEFAULT NULL,
  `opsdistance` text DEFAULT NULL,
  `opsdirec` text DEFAULT NULL,
  `seq_count` text DEFAULT NULL,
  `entered` text DEFAULT NULL,
  `originator` text DEFAULT NULL,
  `modified` text DEFAULT NULL,
  `modifier` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Archivdatei Dienstfahrplan Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_dfpl_basket`
--

DROP TABLE IF EXISTS `fp_dfpl_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_dfpl_basket` (
  `cid` int(11) NOT NULL,
  `kind` varchar(20) DEFAULT NULL,
  `opsid` varchar(10) NOT NULL,
  `yearfrom` varchar(4) DEFAULT NULL,
  `yearto` varchar(4) DEFAULT NULL,
  `dfs` tinyint(3) unsigned DEFAULT 0,
  `vp` varchar(10) DEFAULT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `opsnum` int(10) unsigned DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `end_place` varchar(10) DEFAULT NULL,
  `via_place` varchar(100) DEFAULT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `locs` varchar(250) DEFAULT NULL,
  `totaltime` mediumint(8) unsigned DEFAULT NULL,
  `opstime` mediumint(8) unsigned DEFAULT NULL,
  `opsdistance` mediumint(8) unsigned DEFAULT NULL,
  `opsdirec` varchar(10) DEFAULT NULL,
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  `prodcat` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `technum` (`opsid`,`yearfrom`),
  KEY `yearfrom` (`yearfrom`,`yearto`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Arbeitsdatei Dienstfahrplan Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_dfpl_new`
--

DROP TABLE IF EXISTS `fp_dfpl_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_dfpl_new` (
  `cid` int(10) unsigned NOT NULL,
  `kind` varchar(20) DEFAULT NULL,
  `opsid` varchar(10) NOT NULL,
  `yearfrom` varchar(4) DEFAULT NULL,
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `dfs` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `vp` varchar(1) DEFAULT NULL,
  `prodcat` varchar(10) DEFAULT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `opsnum` int(10) unsigned DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `end_place` varchar(10) DEFAULT NULL,
  `via_place` varchar(100) DEFAULT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `locs` varchar(250) DEFAULT NULL,
  `totaltime` mediumint(8) unsigned DEFAULT NULL,
  `opstime` mediumint(8) unsigned DEFAULT NULL,
  `opsdistance` mediumint(8) unsigned DEFAULT NULL,
  `opsdirec` varchar(10) DEFAULT NULL,
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  `admin` int(10) unsigned NOT NULL,
  `ok` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `edited` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `opsid_new` varchar(10) DEFAULT NULL,
  `opsnum_new` int(10) unsigned DEFAULT NULL,
  `yearfrom_new` varchar(4) DEFAULT NULL,
  `yearto_new` varchar(4) NOT NULL DEFAULT '9999',
  PRIMARY KEY (`admin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Basket NEU: Dienstfahrplan Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_dfpl_new___20170629`
--

DROP TABLE IF EXISTS `fp_dfpl_new___20170629`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_dfpl_new___20170629` (
  `cid` int(10) unsigned NOT NULL,
  `kind` varchar(20) DEFAULT NULL,
  `opsid` varchar(10) NOT NULL,
  `yearfrom` varchar(4) DEFAULT NULL,
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `dfs` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `vp` varchar(1) DEFAULT NULL,
  `prodcat` varchar(10) DEFAULT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `opsnum` int(10) unsigned DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `end_place` varchar(10) DEFAULT NULL,
  `via_place` varchar(100) DEFAULT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(10) DEFAULT NULL,
  `totaltime` mediumint(8) unsigned DEFAULT NULL,
  `opstime` mediumint(8) unsigned DEFAULT NULL,
  `opsdistance` mediumint(8) unsigned DEFAULT NULL,
  `opsdirec` varchar(10) DEFAULT NULL,
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  `admin` int(10) unsigned NOT NULL,
  `ok` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `edited` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `opsid_new` varchar(10) DEFAULT NULL,
  `yearfrom_new` varchar(4) DEFAULT NULL,
  `yearto_new` varchar(4) NOT NULL DEFAULT '9999',
  PRIMARY KEY (`admin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Basket NEU: Dienstfahrplan Kopfdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_dfpl_parts`
--

DROP TABLE IF EXISTS `fp_dfpl_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_dfpl_parts` (
  `cid` int(10) unsigned NOT NULL COMMENT 'Fahrplan-Identifikator',
  `seq` smallint(6) NOT NULL COMMENT 'Folge-Nummerierung',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT 'Folge-Index',
  `description` varchar(80) DEFAULT NULL,
  `activity` varchar(20) NOT NULL,
  `prereq` varchar(100) NOT NULL,
  `seq_start` time DEFAULT NULL,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `seq_end` time DEFAULT NULL,
  `start_loc` varchar(10) DEFAULT NULL,
  `mid_loc1` varchar(20) NOT NULL,
  `mid_loc2` varchar(20) NOT NULL,
  `mid_loc3` varchar(20) NOT NULL,
  `end_loc` varchar(10) NOT NULL,
  `dist` int(10) unsigned DEFAULT 0,
  `direc` varchar(10) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL COMMENT 'Kommentare',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`cid`,`seq`),
  KEY `activity` (`activity`),
  KEY `modified` (`modified`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Dienstfahrplan Teilstrecken';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_dfpl_parts___190609`
--

DROP TABLE IF EXISTS `fp_dfpl_parts___190609`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_dfpl_parts___190609` (
  `cid` int(10) unsigned NOT NULL,
  `seq` smallint(6) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `description` varchar(80) DEFAULT NULL,
  `activity` varchar(20) NOT NULL,
  `prereq` varchar(100) NOT NULL,
  `seq_start` time DEFAULT NULL,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `seq_end` time DEFAULT NULL,
  `start_loc` varchar(10) DEFAULT NULL,
  `mid_loc1` varchar(20) NOT NULL,
  `mid_loc2` varchar(20) NOT NULL,
  `mid_loc3` varchar(20) NOT NULL,
  `end_loc` varchar(10) NOT NULL,
  `dist` int(10) unsigned DEFAULT 0,
  `direc` varchar(10) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL COMMENT 'Kommentare',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`cid`,`seq`),
  KEY `activity` (`activity`),
  KEY `modified` (`modified`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Dienstfahrplan Teilstrecken';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_dfpl_parts___2013`
--

DROP TABLE IF EXISTS `fp_dfpl_parts___2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_dfpl_parts___2013` (
  `cid` int(10) unsigned NOT NULL,
  `seq` smallint(6) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `description` varchar(80) DEFAULT NULL,
  `activity` varchar(20) NOT NULL,
  `prereq` varchar(100) NOT NULL,
  `seq_start` time DEFAULT NULL,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `seq_end` time DEFAULT NULL,
  `start_loc` varchar(10) DEFAULT NULL,
  `mid_loc1` varchar(20) NOT NULL,
  `mid_loc2` varchar(20) NOT NULL,
  `mid_loc3` varchar(20) NOT NULL,
  `end_loc` varchar(10) NOT NULL,
  `dist` int(10) unsigned DEFAULT 0,
  `direc` varchar(10) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL COMMENT 'Kommentar',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`cid`,`seq`),
  KEY `activity` (`activity`),
  KEY `modified` (`modified`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Fahrplanstrecken eines Zuges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_dfpl_parts___20200709`
--

DROP TABLE IF EXISTS `fp_dfpl_parts___20200709`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_dfpl_parts___20200709` (
  `cid` int(10) unsigned NOT NULL COMMENT 'Fahrplan-Identifikator',
  `seq` smallint(6) NOT NULL COMMENT 'Folge-Nummerierung',
  `sort` int(11) NOT NULL DEFAULT 0 COMMENT 'Folge-Index',
  `description` varchar(80) DEFAULT NULL,
  `activity` varchar(20) NOT NULL,
  `prereq` varchar(100) NOT NULL,
  `seq_start` time DEFAULT NULL,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `seq_end` time DEFAULT NULL,
  `start_loc` varchar(10) DEFAULT NULL,
  `mid_loc1` varchar(20) NOT NULL,
  `mid_loc2` varchar(20) NOT NULL,
  `mid_loc3` varchar(20) NOT NULL,
  `end_loc` varchar(10) NOT NULL,
  `dist` int(10) unsigned DEFAULT 0,
  `direc` varchar(10) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL COMMENT 'Kommentare',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`cid`,`seq`),
  KEY `activity` (`activity`),
  KEY `modified` (`modified`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Dienstfahrplan Teilstrecken';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_dfpl_parts__arc`
--

DROP TABLE IF EXISTS `fp_dfpl_parts__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_dfpl_parts__arc` (
  `cid` text DEFAULT NULL,
  `seq` text DEFAULT NULL,
  `sort` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `activity` text DEFAULT NULL,
  `prereq` text DEFAULT NULL,
  `seq_start` text DEFAULT NULL,
  `duration` text DEFAULT NULL,
  `seq_end` text DEFAULT NULL,
  `start_loc` text DEFAULT NULL,
  `mid_loc1` text DEFAULT NULL,
  `mid_loc2` text DEFAULT NULL,
  `mid_loc3` text DEFAULT NULL,
  `end_loc` text DEFAULT NULL,
  `dist` text DEFAULT NULL,
  `direc` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `entered` text DEFAULT NULL,
  `originator` text DEFAULT NULL,
  `modified` text DEFAULT NULL,
  `modifier` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Archivdatei Dienstfahrplan Teilstrecken';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_dfpl_parts_basket`
--

DROP TABLE IF EXISTS `fp_dfpl_parts_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_dfpl_parts_basket` (
  `cid` int(11) NOT NULL,
  `seq` smallint(6) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `description` varchar(80) DEFAULT NULL,
  `activity` varchar(20) NOT NULL,
  `prereq` varchar(100) NOT NULL,
  `seq_start` time DEFAULT NULL,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `seq_end` time DEFAULT NULL,
  `start_loc` varchar(10) DEFAULT NULL,
  `mid_loc1` varchar(20) NOT NULL,
  `mid_loc2` varchar(20) NOT NULL,
  `mid_loc3` varchar(20) NOT NULL,
  `end_loc` varchar(10) NOT NULL,
  `dist` int(10) unsigned DEFAULT 0,
  `direc` varchar(10) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL COMMENT 'Kommentar',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`cid`,`seq`),
  KEY `activity` (`activity`),
  KEY `modified` (`modified`),
  KEY `sort` (`sort`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Arbeitsdatei Dienstfahrplan Teilstrecken';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_dfpl_tmp`
--

DROP TABLE IF EXISTS `fp_dfpl_tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_dfpl_tmp` (
  `cid` int(10) unsigned NOT NULL,
  `seq` smallint(6) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT 0,
  `description` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  `activity` varchar(20) CHARACTER SET utf8 NOT NULL,
  `prereq` varchar(100) CHARACTER SET utf8 NOT NULL,
  `seq_start` time DEFAULT NULL,
  `duration` mediumint(9) NOT NULL DEFAULT 0,
  `seq_end` time DEFAULT NULL,
  `start_loc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `mid_loc1` varchar(20) CHARACTER SET utf8 NOT NULL,
  `mid_loc2` varchar(20) CHARACTER SET utf8 NOT NULL,
  `mid_loc3` varchar(20) CHARACTER SET utf8 NOT NULL,
  `end_loc` varchar(10) CHARACTER SET utf8 NOT NULL,
  `dist` int(10) unsigned DEFAULT 0,
  `direc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_equipment`
--

DROP TABLE IF EXISTS `fp_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_equipment` (
  `eqid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idzp` int(10) unsigned NOT NULL COMMENT 'Key des relevanten fp_zug_plan-Eintrages',
  `obj_type` varchar(50) NOT NULL COMMENT 'Objektart gem td_param::sector=object_link',
  `fpl_seq` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'gültig ab dieser Fahrplansequenz',
  `compid` int(250) unsigned DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL COMMENT 'Umschreibung der Ausrüstung',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`eqid`),
  UNIQUE KEY `comp_seq` (`idzp`,`obj_type`,`fpl_seq`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Betriebsmittelplan während Fahrdienstplanungsphase';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_opsdays`
--

DROP TABLE IF EXISTS `fp_opsdays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_opsdays` (
  `opsday` date NOT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `vps` varchar(50) NOT NULL,
  `circular` varchar(250) NOT NULL,
  `zps` text NOT NULL,
  `byScope` varchar(50) NOT NULL,
  PRIMARY KEY (`opsday`),
  KEY `byScope` (`byScope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='DFB Fahrbetriebstage (Verwendungsnachweis VP+Zirkulare) -> OBSOLET seit 2015';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_opsdays___TEST`
--

DROP TABLE IF EXISTS `fp_opsdays___TEST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_opsdays___TEST` (
  `opsday` date NOT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `vps` varchar(50) NOT NULL,
  `circular` varchar(100) NOT NULL,
  `zps` varchar(50) NOT NULL,
  `byScope` varchar(50) NOT NULL,
  PRIMARY KEY (`opsday`),
  KEY `byScope` (`byScope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='DFB Fahrbetriebstage (Verwendungsnachweis VP+Zirkulare)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_opsdays___copy`
--

DROP TABLE IF EXISTS `fp_opsdays___copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_opsdays___copy` (
  `opsday` date NOT NULL,
  `remark` varchar(250) DEFAULT NULL,
  `vps` varchar(50) NOT NULL,
  `circular` varchar(250) NOT NULL,
  `zps` text NOT NULL,
  `byScope` varchar(50) NOT NULL,
  PRIMARY KEY (`opsday`),
  KEY `byScope` (`byScope`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='DFB Fahrbetriebstage (Verwendungsnachweis VP+Zirkulare)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_pro_pax_trains`
--

DROP TABLE IF EXISTS `fp_pro_pax_trains`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_pro_pax_trains` (
  `ppid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `atorder` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `tid` int(10) unsigned NOT NULL DEFAULT 0,
  `seq` smallint(5) unsigned NOT NULL DEFAULT 0,
  `train` varchar(10) DEFAULT NULL,
  `vp` varchar(1) DEFAULT NULL,
  `part_add` varchar(10) NOT NULL,
  `onOffer` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `tractype` varchar(20) DEFAULT NULL,
  `reihe` varchar(20) DEFAULT NULL,
  `tow_mass` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_1` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_2` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_3` int(10) unsigned NOT NULL DEFAULT 0,
  `bicycles` int(10) unsigned NOT NULL DEFAULT 0,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`ppid`),
  UNIQUE KEY `product` (`tid`,`seq`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Reiseverkehrszüge und ihre relevanten Dienstzüge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_rollmat`
--

DROP TABLE IF EXISTS `fp_rollmat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_rollmat` (
  `idroma` varchar(20) NOT NULL,
  `kind` varchar(10) NOT NULL,
  `purpose` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `objname` varchar(50) DEFAULT NULL,
  `baureihe` varchar(20) DEFAULT NULL,
  `opsnum` varchar(20) DEFAULT NULL,
  `look` varchar(50) DEFAULT NULL,
  `luep` smallint(5) unsigned DEFAULT NULL,
  `tara` mediumint(8) unsigned DEFAULT NULL,
  `brutto` mediumint(8) unsigned DEFAULT NULL,
  `loadarea` decimal(8,2) unsigned DEFAULT NULL,
  `loadlimit` mediumint(9) unsigned DEFAULT NULL,
  `ax_nondriven` smallint(5) unsigned DEFAULT NULL,
  `ax_driven` smallint(5) unsigned DEFAULT NULL,
  `hookload` mediumint(8) unsigned DEFAULT NULL,
  `compsize` varchar(20) DEFAULT NULL,
  `seats1cl` smallint(5) unsigned DEFAULT NULL,
  `seats2cl` smallint(5) unsigned DEFAULT NULL,
  `style3` smallint(5) unsigned DEFAULT NULL,
  `placestand` smallint(5) unsigned DEFAULT NULL,
  `heating` varchar(20) DEFAULT NULL,
  `lft` smallint(5) unsigned NOT NULL,
  `rgt` smallint(5) unsigned NOT NULL,
  `entered` datetime NOT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) NOT NULL,
  PRIMARY KEY (`idroma`,`kind`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Objekte Rollmaterial';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_roma_day`
--

DROP TABLE IF EXISTS `fp_roma_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_roma_day` (
  `idrd` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `task1` varchar(100) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `days` varchar(13) NOT NULL DEFAULT '1,2,3,4,5,6,0',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idrd`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Tagesablauf eines Einzelfahrzeuges oder einer Kette eines Fahrzeugtyps';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_roma_day_parts`
--

DROP TABLE IF EXISTS `fp_roma_day_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_roma_day_parts` (
  `idrd` int(10) unsigned NOT NULL,
  `seq` smallint(5) unsigned NOT NULL,
  `dfpl` int(10) unsigned NOT NULL,
  `specfrom` varchar(10) DEFAULT NULL,
  `specto` varchar(10) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idrd`,`seq`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Tagesablauf einer Komposition oder eines Fahrzeuges';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_roma_plan`
--

DROP TABLE IF EXISTS `fp_roma_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_roma_plan` (
  `idrop` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `idzp` int(10) unsigned NOT NULL COMMENT 'Id fp_zug_plan',
  `idru` int(10) unsigned NOT NULL COMMENT 'Id fp_roma_umlauf',
  `seq` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Abfolge von Komp-Änderungen',
  `idroma` varchar(20) DEFAULT NULL COMMENT 'Einzelfahrzeug gem fb_rollmat',
  `idcw` int(10) unsigned DEFAULT NULL COMMENT 'Komposition gem fb_rollcomp',
  `opsday` date DEFAULT NULL COMMENT 'R: Anfangsdatum Umlauf',
  `lap` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'R: Zusatztage Umlauf',
  `train` varchar(20) DEFAULT NULL COMMENT 'R: Zugnummer',
  `rpart` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'R: Streckenabschnittsindex',
  `opsmode` varchar(25) DEFAULT NULL COMMENT 'Betriebsart (drive-bezogen)',
  `dep` varchar(5) DEFAULT NULL COMMENT 'R: Ausgangsort',
  `fztype` tinyint(3) unsigned NOT NULL COMMENT 'R: Fahrzeugart 1:Dampf, 4: Diesel, 7: Wagen',
  `drive` tinyint(3) unsigned NOT NULL COMMENT 'R: Antriebsverhalten: 1:Lok, 2:gekoppelt, 0:Wagen',
  `idza` int(10) unsigned DEFAULT NULL COMMENT 'R: Id fp_zug_anford',
  `only` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'nur zur Steuerung des Formularinputs genutzt',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idrop`),
  KEY `umlauf_part` (`idzp`,`idru`,`seq`)
) ENGINE=MyISAM AUTO_INCREMENT=4710 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Aktueller Planungsstand Rollmaterial nach Massgabe von Anforderungen und Umlaufplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_roma_plan___20190628`
--

DROP TABLE IF EXISTS `fp_roma_plan___20190628`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_roma_plan___20190628` (
  `idrop` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `idzp` int(10) unsigned NOT NULL COMMENT 'Id fp_zug_plan',
  `idru` int(10) unsigned NOT NULL COMMENT 'Id fp_roma_umlauf',
  `seq` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Abfolge von Komp-Änderungen',
  `idroma` varchar(20) DEFAULT NULL COMMENT 'Einzelfahrzeug gem fb_rollmat',
  `idcw` int(10) unsigned DEFAULT NULL COMMENT 'Komposition gem fb_rollcomp',
  `opsday` date DEFAULT NULL COMMENT 'R: Anfangsdatum Umlauf',
  `lap` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'R: Zusatztage Umlauf',
  `train` varchar(20) DEFAULT NULL COMMENT 'R: Zugnummer',
  `rpart` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'R: Streckenabschnittsindex',
  `opsmode` varchar(25) DEFAULT NULL COMMENT 'Betriebsart (drive-bezogen)',
  `dep` varchar(5) DEFAULT NULL COMMENT 'R: Ausgangsort',
  `fztype` tinyint(3) unsigned NOT NULL COMMENT 'R: Fahrzeugart 1:Dampf, 4: Diesel, 7: Wagen',
  `drive` tinyint(3) unsigned NOT NULL COMMENT 'R: Antriebsverhalten: 1:Lok, 2:gekoppelt, 0:Wagen',
  `idza` int(10) unsigned DEFAULT NULL COMMENT 'R: Id fp_zug_anford',
  `only` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'nur zur Steuerung des Formularinputs genutzt',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idrop`),
  KEY `umlauf_part` (`idzp`,`idru`,`seq`)
) ENGINE=MyISAM AUTO_INCREMENT=4701 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Aktueller Planungsstand Rollmaterial nach Massgabe von Anforderungen und Umlaufplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_roma_umlauf`
--

DROP TABLE IF EXISTS `fp_roma_umlauf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_roma_umlauf` (
  `idru` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL COMMENT 'Umschreibung des Turnus',
  `fztype` tinyint(3) unsigned NOT NULL COMMENT 'Fahrzeugart 1:Dampf, 4: Diesel, 7: Wagen',
  `drive` tinyint(3) unsigned NOT NULL COMMENT 'Antriebsverhalten: 1:Lok, 2:Push, 0:Wagen',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `startdays` varchar(13) NOT NULL DEFAULT '1,2,3,4,5,6,0' COMMENT 'Turnusanfangstage',
  `idza` int(10) unsigned DEFAULT NULL COMMENT '1. Zugfahrplan',
  `train` varchar(10) DEFAULT NULL COMMENT '1. Zugnummer',
  `dep` varchar(5) DEFAULT NULL COMMENT '1. Abfahrtsort',
  `chk2` smallint(6) NOT NULL DEFAULT 0 COMMENT 'OpsCheck Zug 2 +idza:ja / -idza:nein',
  `chk3` smallint(6) NOT NULL DEFAULT 0 COMMENT 'OpsCheck Zug 3 +idza:ja / -idza:nein',
  `lap` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Zusätzlich betroffene Folgetage',
  `fol0` varchar(50) DEFAULT NULL COMMENT 'Zugliste Starttag: fp_dfpl.cid',
  `fol1` varchar(50) DEFAULT NULL COMMENT 'Zugliste Folgetag 1',
  `fol2` varchar(50) DEFAULT NULL COMMENT 'Zugliste Folgetag 2',
  `folpush` varchar(50) DEFAULT NULL COMMENT 'Zugliste für Schiebedienst',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idru`)
) ENGINE=MyISAM AUTO_INCREMENT=104 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Turnus (Umlauf) eines Einzelfahrzeuges oder einer Kette eines Fahrzeugtyps';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_roma_umlauf___2019-06-20`
--

DROP TABLE IF EXISTS `fp_roma_umlauf___2019-06-20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_roma_umlauf___2019-06-20` (
  `idru` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL COMMENT 'Umschreibung des Turnus',
  `fztype` tinyint(3) unsigned NOT NULL COMMENT 'Fahrzeugart 1:Dampf, 4: Diesel, 7: Wagen',
  `drive` tinyint(3) unsigned NOT NULL COMMENT 'Antriebsverhalten: 1:Lok, 2:Push, 0:Wagen',
  `startdays` varchar(13) NOT NULL DEFAULT '1,2,3,4,5,6,0' COMMENT 'Turnusanfangstage',
  `idza` int(10) unsigned DEFAULT NULL COMMENT '1. Zugfahrplan',
  `train` varchar(10) DEFAULT NULL COMMENT '1. Zugnummer',
  `dep` varchar(5) DEFAULT NULL COMMENT '1. Abfahrtsort',
  `chk2` smallint(6) NOT NULL DEFAULT 0 COMMENT 'OpsCheck Zug 2 +idza:ja / -idza:nein',
  `chk3` smallint(6) NOT NULL DEFAULT 0 COMMENT 'OpsCheck Zug 3 +idza:ja / -idza:nein',
  `lap` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Zusätzlich betroffene Folgetage',
  `fol0` varchar(50) DEFAULT NULL COMMENT 'Zugliste Starttag: fp_dfpl.cid',
  `fol1` varchar(50) DEFAULT NULL COMMENT 'Zugliste Folgetag 1',
  `fol2` varchar(50) DEFAULT NULL COMMENT 'Zugliste Folgetag 2',
  `folpush` varchar(50) DEFAULT NULL COMMENT 'Zugliste für Schiebedienst',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idru`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Turnus (Umlauf) eines Einzelfahrzeuges oder einer Kette eines Fahrzeugtyps';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_roma_umlauf_parts`
--

DROP TABLE IF EXISTS `fp_roma_umlauf_parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_roma_umlauf_parts` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idru` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID Umlauf',
  `trainseq` smallint(5) unsigned DEFAULT NULL COMMENT 'der wievielte Zug pro Tag',
  `partseq` smallint(5) unsigned NOT NULL COMMENT 'fp_dfpl_parts.seq',
  `folday` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Nummer des Folgetages',
  `condvp` varchar(10) DEFAULT NULL COMMENT 'sofern leer oder eine dieser VPs erfüllt ist',
  `opsid` varchar(10) NOT NULL COMMENT 'fp_dfpl.opsid',
  `start_loc` varchar(10) DEFAULT NULL COMMENT 'fp_dfpl_parts.start_loc Abfahrtssort',
  `seq_start` time DEFAULT NULL COMMENT 'fp_dfpl_parts.seq_start Abfahrtszeit',
  `end_loc` varchar(10) DEFAULT NULL COMMENT 'fp_dfpl_parts.end_loc Ankunftsort',
  `seq_end` time DEFAULT NULL COMMENT 'fp_dfpl_parts..seq_end Ankunftszeit',
  `dist` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'fp_dfpl_parts.dist Fahrdistanz',
  `activity` varchar(20) DEFAULT NULL COMMENT 'fp_dfpl_parts.activity Art der Fahrt',
  `duration` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'fp_dfpl_parts.duration Fahrtdauer',
  `description` varchar(80) DEFAULT NULL COMMENT 'fp_dfpl_parts.description Umschreibung',
  `direc` varchar(10) DEFAULT NULL COMMENT 'fp_dfpl_parts.direc Fahrtrichtung',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idx`),
  KEY `seq` (`idru`,`trainseq`,`partseq`)
) ENGINE=MyISAM AUTO_INCREMENT=1012 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Die Einzelfahrstrecken der Umläufe';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_route_plan`
--

DROP TABLE IF EXISTS `fp_route_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_route_plan` (
  `idrp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `route` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `dep` varchar(10) NOT NULL,
  `arr` varchar(10) NOT NULL,
  `via` varchar(10) NOT NULL,
  `dep_m` int(11) NOT NULL DEFAULT 0,
  `arr_m` int(11) NOT NULL DEFAULT 0,
  `via_m` int(11) NOT NULL DEFAULT 0,
  `distance` int(11) NOT NULL DEFAULT 0,
  `lft` smallint(5) unsigned DEFAULT NULL,
  `rgt` smallint(5) unsigned DEFAULT NULL,
  `hide` tinyint(3) unsigned DEFAULT 0,
  `parent` int(10) unsigned DEFAULT NULL,
  `pass` int(11) NOT NULL DEFAULT 0,
  `rott` int(11) NOT NULL DEFAULT 0,
  `extn` int(11) NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idrp`),
  UNIQUE KEY `route` (`route`),
  KEY `description` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Typische Fahrstrecken';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_route_plan___20160810`
--

DROP TABLE IF EXISTS `fp_route_plan___20160810`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_route_plan___20160810` (
  `idrp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `route` varchar(30) NOT NULL,
  `description` varchar(100) NOT NULL,
  `dep` varchar(10) NOT NULL,
  `arr` varchar(10) NOT NULL,
  `via` varchar(10) NOT NULL,
  `dep_m` int(11) NOT NULL DEFAULT 0,
  `arr_m` int(11) NOT NULL DEFAULT 0,
  `via_m` int(11) NOT NULL DEFAULT 0,
  `distance` int(11) NOT NULL DEFAULT 0,
  `lft` smallint(5) unsigned DEFAULT NULL,
  `rgt` smallint(5) unsigned DEFAULT NULL,
  `hide` tinyint(3) unsigned DEFAULT 0,
  `parent` int(10) unsigned DEFAULT NULL,
  `pass` int(11) NOT NULL DEFAULT 0,
  `rott` int(11) NOT NULL DEFAULT 0,
  `extn` int(11) NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idrp`),
  UNIQUE KEY `route` (`route`),
  KEY `description` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Typische Fahrstrecken';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_umlauf_plan`
--

DROP TABLE IF EXISTS `fp_umlauf_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_umlauf_plan` (
  `idum` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `umlauf` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `seq` int(10) unsigned NOT NULL DEFAULT 0,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idum`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Fahrbetrieb: Angestrebte Zugumläufe ALT';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_vp`
--

DROP TABLE IF EXISTS `fp_vp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_vp` (
  `idvp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `vpcode` varchar(10) NOT NULL,
  `validfrom` date NOT NULL,
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `daily` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `description` varchar(255) DEFAULT NULL,
  `weekdays` varchar(20) DEFAULT NULL,
  `legend` varchar(10) DEFAULT NULL,
  `is_vp` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idvp`),
  UNIQUE KEY `vpcode` (`vpcode`,`validfrom`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='Einsatzplan: Verkehrs- und weitere Zeitperioden';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_web_fpl_zeilen`
--

DROP TABLE IF EXISTS `fp_web_fpl_zeilen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_web_fpl_zeilen` (
  `yearfrom` year(4) NOT NULL DEFAULT 0000,
  `back` tinyint(3) unsigned NOT NULL,
  `line` tinyint(3) unsigned NOT NULL,
  `eVnt` varchar(10) NOT NULL,
  `yearto` year(4) DEFAULT NULL,
  PRIMARY KEY (`yearfrom`,`back`,`line`),
  KEY `eVnt` (`eVnt`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Die Zeilen im Webfahrplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_web_fpl_zuege`
--

DROP TABLE IF EXISTS `fp_web_fpl_zuege`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_web_fpl_zuege` (
  `opsyear` year(4) NOT NULL,
  `back` tinyint(3) unsigned NOT NULL,
  `col` tinyint(3) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `remark` varchar(20) DEFAULT NULL,
  `res` tinyint(3) unsigned NOT NULL,
  `seats` varchar(10) DEFAULT NULL,
  `hili` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`opsyear`,`back`,`col`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Die Zeilen im Webfahrplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_web_fpl_zuege___181005`
--

DROP TABLE IF EXISTS `fp_web_fpl_zuege___181005`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_web_fpl_zuege___181005` (
  `opsyear` year(4) NOT NULL,
  `back` tinyint(3) unsigned NOT NULL,
  `col` tinyint(3) unsigned NOT NULL,
  `cid` int(10) unsigned NOT NULL,
  `remark` varchar(20) DEFAULT NULL,
  `res` tinyint(3) unsigned NOT NULL,
  `seats` varchar(10) DEFAULT NULL,
  `hili` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`opsyear`,`back`,`col`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Die Zeilen im Webfahrplan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_anford`
--

DROP TABLE IF EXISTS `fp_zug_anford`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_anford` (
  `idza` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID dieser Anforderung',
  `seq` int(10) unsigned NOT NULL DEFAULT 999999 COMMENT 'strukturierter Sortierschlüssel',
  `opsyear` year(4) DEFAULT NULL COMMENT 'Betriebsjahr',
  `extra` tinyint(3) unsigned DEFAULT NULL COMMENT 'Grundsatzunterscheidung 1/0 Extrazug : Regelzug',
  `train` varchar(10) DEFAULT NULL COMMENT 'Effektive Zugnummer',
  `rpart` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Geplante Routenteilstrecke: 0, 1, 2, 3..',
  `opsmode` varchar(20) DEFAULT NULL COMMENT 'Betriebsart',
  `product` varchar(20) NOT NULL COMMENT 'ID tf_product',
  `cluster` varchar(10) NOT NULL DEFAULT '' COMMENT 'Markierung zusammengehöriger Züge (zZt leer)',
  `onOffer` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Zug wird im Reservationsangebot geführt',
  `onreq_only` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'durch FdL aktivierbar bei Bedarf',
  `idrp` int(10) unsigned DEFAULT NULL COMMENT 'ID fp_route_plan Fahrstrecke',
  `r_route` varchar(50) DEFAULT NULL COMMENT 'Fahrstrecke -- R fp_route_plan',
  `forp` int(10) unsigned DEFAULT NULL COMMENT 'Fkt-Ergebnis (fo-idrp), nur nach Teilstreckencheck',
  `cid` int(10) unsigned DEFAULT NULL COMMENT 'ID der ausgewählten Fahrordnung',
  `nr_fo` varchar(10) DEFAULT NULL COMMENT 'Zugnummer Fahrordnung -- R fp_dfpl',
  `ref` varchar(10) DEFAULT NULL COMMENT 'Ergebnis Referenz -- R `refvp` oder `refx`',
  `refvp` varchar(10) NOT NULL COMMENT 'VP (ID=Anzeige) gem all_period',
  `idze` int(10) unsigned NOT NULL COMMENT 'ID Zirkular Extrazug gem fp_circular',
  `refx` varchar(10) NOT NULL COMMENT 'Zirkularnummer -- R fp_circular',
  `validfrom` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Anfangsdatum Extrazug -- R fp_circular',
  `wrx` varchar(10) NOT NULL COMMENT 'Zirkular-Wiederholungsregel -- R fp_circular',
  `validto` date NOT NULL DEFAULT '9999-12-31' COMMENT 'Enddatum Extrazug -- R fp_circular',
  `romaview` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'verlangt Rollmat-Spezifizierung und Publikation',
  `tractype` varchar(20) DEFAULT NULL COMMENT 'Traktionsart',
  `drive1` varchar(20) DEFAULT NULL COMMENT 'Haupt-Triebfahrzeug',
  `drive2` varchar(20) DEFAULT NULL COMMENT 'Hilfs-Triebfahrzeug (Schub)',
  `comp_w` int(10) unsigned DEFAULT NULL,
  `wag_std` varchar(20) NOT NULL,
  `tow_mass` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_1` int(10) unsigned NOT NULL DEFAULT 0,
  `declas_1` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_2` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_3` int(10) unsigned NOT NULL DEFAULT 0,
  `bicycles` int(10) unsigned NOT NULL DEFAULT 0,
  `remark` text NOT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  `yearfrom` varchar(4) NOT NULL DEFAULT '0000' COMMENT 'OBSOLET, bis 2014 genutzt',
  `yearto` varchar(4) NOT NULL DEFAULT '9999' COMMENT 'OBSOLET dito',
  `idvp` varchar(10) NOT NULL COMMENT '(unbenutzt)',
  `r_dep` varchar(10) DEFAULT NULL COMMENT 'vermutlich OBSOLET, da in route enthalten',
  `r_via` varchar(10) DEFAULT NULL COMMENT 'do',
  `r_end` varchar(10) DEFAULT NULL COMMENT 'do',
  PRIMARY KEY (`idza`),
  KEY `seq` (`seq`),
  KEY `cid` (`cid`),
  KEY `train` (`train`)
) ENGINE=MyISAM AUTO_INCREMENT=111180 DEFAULT CHARSET=utf8 COMMENT='Alle geplanten Züge (generisch, ohne Datum), mit Anforderungsprofil';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_anford___170629`
--

DROP TABLE IF EXISTS `fp_zug_anford___170629`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_anford___170629` (
  `idza` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `seq` int(10) unsigned NOT NULL DEFAULT 999999,
  `idvp` varchar(10) NOT NULL,
  `idze` int(10) unsigned NOT NULL,
  `opsyear` year(4) DEFAULT NULL,
  `ref` varchar(10) DEFAULT NULL,
  `refvp` varchar(10) NOT NULL,
  `refx` varchar(10) NOT NULL,
  `ref_old` varchar(10) DEFAULT NULL,
  `cluster` varchar(10) DEFAULT NULL,
  `cid` int(10) unsigned DEFAULT NULL,
  `train` varchar(10) DEFAULT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `product` varchar(20) NOT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `onreq_only` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `onOffer` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `tractype` varchar(20) DEFAULT NULL,
  `drive1` varchar(20) DEFAULT NULL,
  `drive2` varchar(20) DEFAULT NULL,
  `comp_w` int(10) unsigned DEFAULT NULL,
  `wag_std` varchar(20) NOT NULL,
  `tow_mass` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_1` int(10) unsigned NOT NULL DEFAULT 0,
  `declas_1` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_2` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_3` int(10) unsigned NOT NULL DEFAULT 0,
  `bicycles` int(10) unsigned NOT NULL DEFAULT 0,
  `r_dep` varchar(10) DEFAULT NULL,
  `r_via` varchar(10) DEFAULT NULL,
  `r_end` varchar(10) DEFAULT NULL,
  `remark` text NOT NULL,
  `yearfrom` varchar(4) NOT NULL DEFAULT '0000',
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idza`),
  KEY `seq` (`seq`),
  KEY `cid` (`cid`),
  KEY `train` (`train`)
) ENGINE=MyISAM AUTO_INCREMENT=668 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Alle geplanten Züge (generisch, ohne Datum), mit Anforderungsprofil';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_anford___2013`
--

DROP TABLE IF EXISTS `fp_zug_anford___2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_anford___2013` (
  `idza` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `seq` smallint(5) unsigned NOT NULL DEFAULT 65535,
  `cid` int(10) unsigned DEFAULT NULL,
  `ref` varchar(10) DEFAULT NULL,
  `cluster` varchar(10) DEFAULT NULL,
  `train` varchar(10) DEFAULT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `onreq_only` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `onOffer` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `tractype` varchar(20) DEFAULT NULL,
  `newtrac` varchar(10) DEFAULT NULL,
  `tow_mass` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_1` int(10) unsigned NOT NULL DEFAULT 0,
  `declas_1` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_2` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_3` int(10) unsigned NOT NULL DEFAULT 0,
  `bicycles` int(10) unsigned NOT NULL DEFAULT 0,
  `r_dep` varchar(10) DEFAULT NULL,
  `r_via` varchar(10) DEFAULT NULL,
  `r_end` varchar(10) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idza`),
  KEY `seq` (`seq`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Alle geplanten Züge (generisch, ohne Datum), mit Anforderungsprofil';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_anford___20140703`
--

DROP TABLE IF EXISTS `fp_zug_anford___20140703`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_anford___20140703` (
  `idza` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `seq` smallint(5) unsigned NOT NULL DEFAULT 65535,
  `idvp` varchar(10) NOT NULL,
  `idze` int(10) unsigned NOT NULL,
  `opsyear` year(4) DEFAULT NULL,
  `ref` varchar(10) DEFAULT NULL,
  `refvp` varchar(10) NOT NULL,
  `refx` varchar(10) NOT NULL,
  `ref_old` varchar(10) DEFAULT NULL,
  `cluster` varchar(10) DEFAULT NULL,
  `cid` int(10) unsigned DEFAULT NULL,
  `train` varchar(10) DEFAULT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `onreq_only` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `onOffer` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `tractype` varchar(20) DEFAULT NULL,
  `newtrac` varchar(10) DEFAULT NULL,
  `tow_mass` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_1` int(10) unsigned NOT NULL DEFAULT 0,
  `declas_1` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_2` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_3` int(10) unsigned NOT NULL DEFAULT 0,
  `bicycles` int(10) unsigned NOT NULL DEFAULT 0,
  `r_dep` varchar(10) DEFAULT NULL,
  `r_via` varchar(10) DEFAULT NULL,
  `r_end` varchar(10) DEFAULT NULL,
  `remark` text NOT NULL,
  `yearfrom` varchar(4) NOT NULL DEFAULT '0000',
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idza`),
  KEY `seq` (`seq`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=179 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Alle geplanten Züge (generisch, ohne Datum), mit Anforderungsprofil';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_anford___20140804`
--

DROP TABLE IF EXISTS `fp_zug_anford___20140804`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_anford___20140804` (
  `idza` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `seq` smallint(5) unsigned NOT NULL DEFAULT 65535,
  `idvp` varchar(10) NOT NULL,
  `idze` int(10) unsigned NOT NULL,
  `opsyear` year(4) DEFAULT NULL,
  `ref` varchar(10) DEFAULT NULL,
  `refvp` varchar(10) NOT NULL,
  `refx` varchar(10) NOT NULL,
  `ref_old` varchar(10) DEFAULT NULL,
  `cluster` varchar(10) DEFAULT NULL,
  `cid` int(10) unsigned DEFAULT NULL,
  `train` varchar(10) DEFAULT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `product` varchar(20) NOT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `onreq_only` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `onOffer` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `tractype` varchar(20) DEFAULT NULL,
  `newtrac` varchar(10) DEFAULT NULL,
  `trac1_std` varchar(20) NOT NULL,
  `trac2_std` varchar(20) NOT NULL,
  `wag_std` varchar(20) NOT NULL,
  `tow_mass` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_1` int(10) unsigned NOT NULL DEFAULT 0,
  `declas_1` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_2` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_3` int(10) unsigned NOT NULL DEFAULT 0,
  `bicycles` int(10) unsigned NOT NULL DEFAULT 0,
  `r_dep` varchar(10) DEFAULT NULL,
  `r_via` varchar(10) DEFAULT NULL,
  `r_end` varchar(10) DEFAULT NULL,
  `remark` text NOT NULL,
  `yearfrom` varchar(4) NOT NULL DEFAULT '0000',
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idza`),
  KEY `seq` (`seq`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Alle geplanten Züge (generisch, ohne Datum), mit Anforderungsprofil';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_anford___20140814`
--

DROP TABLE IF EXISTS `fp_zug_anford___20140814`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_anford___20140814` (
  `idza` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `seq` smallint(5) unsigned NOT NULL DEFAULT 65535,
  `idvp` varchar(10) NOT NULL,
  `idze` int(10) unsigned NOT NULL,
  `opsyear` year(4) DEFAULT NULL,
  `ref` varchar(10) DEFAULT NULL,
  `refvp` varchar(10) NOT NULL,
  `refx` varchar(10) NOT NULL,
  `ref_old` varchar(10) DEFAULT NULL,
  `cluster` varchar(10) DEFAULT NULL,
  `cid` int(10) unsigned DEFAULT NULL,
  `train` varchar(10) DEFAULT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `product` varchar(20) NOT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `onreq_only` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `onOffer` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `tractype` varchar(20) DEFAULT NULL,
  `newtrac` varchar(10) DEFAULT NULL,
  `trac1_std` varchar(20) NOT NULL,
  `trac2_std` varchar(20) NOT NULL,
  `wag_std` varchar(20) NOT NULL,
  `tow_mass` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_1` int(10) unsigned NOT NULL DEFAULT 0,
  `declas_1` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_2` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_3` int(10) unsigned NOT NULL DEFAULT 0,
  `bicycles` int(10) unsigned NOT NULL DEFAULT 0,
  `r_dep` varchar(10) DEFAULT NULL,
  `r_via` varchar(10) DEFAULT NULL,
  `r_end` varchar(10) DEFAULT NULL,
  `remark` text NOT NULL,
  `yearfrom` varchar(4) NOT NULL DEFAULT '0000',
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idza`),
  KEY `seq` (`seq`),
  KEY `cid` (`cid`),
  KEY `train` (`train`)
) ENGINE=MyISAM AUTO_INCREMENT=268 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Alle geplanten Züge (generisch, ohne Datum), mit Anforderungsprofil';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_anford___20150617`
--

DROP TABLE IF EXISTS `fp_zug_anford___20150617`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_anford___20150617` (
  `idza` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `seq` int(10) unsigned NOT NULL DEFAULT 65535,
  `idvp` varchar(10) NOT NULL,
  `idze` int(10) unsigned NOT NULL,
  `opsyear` year(4) DEFAULT NULL,
  `ref` varchar(10) DEFAULT NULL,
  `refvp` varchar(10) NOT NULL,
  `refx` varchar(10) NOT NULL,
  `ref_old` varchar(10) DEFAULT NULL,
  `cluster` varchar(10) DEFAULT NULL,
  `cid` int(10) unsigned DEFAULT NULL,
  `train` varchar(10) DEFAULT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `product` varchar(20) NOT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `onreq_only` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `onOffer` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `tractype` varchar(20) DEFAULT NULL,
  `newtrac` varchar(10) DEFAULT NULL,
  `trac1_std` varchar(20) NOT NULL,
  `trac2_std` varchar(20) NOT NULL,
  `wag_std` varchar(20) NOT NULL,
  `tow_mass` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_1` int(10) unsigned NOT NULL DEFAULT 0,
  `declas_1` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_2` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_3` int(10) unsigned NOT NULL DEFAULT 0,
  `bicycles` int(10) unsigned NOT NULL DEFAULT 0,
  `r_dep` varchar(10) DEFAULT NULL,
  `r_via` varchar(10) DEFAULT NULL,
  `r_end` varchar(10) DEFAULT NULL,
  `remark` text NOT NULL,
  `yearfrom` varchar(4) NOT NULL DEFAULT '0000',
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idza`),
  KEY `seq` (`seq`),
  KEY `cid` (`cid`),
  KEY `train` (`train`)
) ENGINE=MyISAM AUTO_INCREMENT=317 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Alle geplanten Züge (generisch, ohne Datum), mit Anforderungsprofil';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_anford___20190617`
--

DROP TABLE IF EXISTS `fp_zug_anford___20190617`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_anford___20190617` (
  `idza` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `seq` int(10) unsigned NOT NULL DEFAULT 999999,
  `idvp` varchar(10) NOT NULL COMMENT 'Verkehrsperiode',
  `idze` int(10) unsigned NOT NULL COMMENT 'ID Zirkular',
  `opsyear` year(4) DEFAULT NULL,
  `ref` varchar(10) DEFAULT NULL,
  `refvp` varchar(10) NOT NULL,
  `refx` varchar(10) NOT NULL,
  `ref_old` varchar(10) DEFAULT NULL,
  `cluster` varchar(10) DEFAULT NULL,
  `cid` int(10) unsigned DEFAULT NULL,
  `train` varchar(10) DEFAULT NULL,
  `rpart` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Routenteilstrecke: 0, 10, 20, 30..',
  `opsmode` varchar(20) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `product` varchar(20) NOT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `onreq_only` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `onOffer` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `tractype` varchar(20) DEFAULT NULL,
  `drive1` varchar(20) DEFAULT NULL COMMENT 'Haupt-Triebfahrzeug',
  `drive2` varchar(20) DEFAULT NULL COMMENT 'Hilfs-Triebfahrzeug (Schub)',
  `comp_w` int(10) unsigned DEFAULT NULL,
  `wag_std` varchar(20) NOT NULL,
  `tow_mass` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_1` int(10) unsigned NOT NULL DEFAULT 0,
  `declas_1` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_2` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_3` int(10) unsigned NOT NULL DEFAULT 0,
  `bicycles` int(10) unsigned NOT NULL DEFAULT 0,
  `r_dep` varchar(10) DEFAULT NULL,
  `r_via` varchar(10) DEFAULT NULL,
  `r_end` varchar(10) DEFAULT NULL,
  `remark` text NOT NULL,
  `yearfrom` varchar(4) NOT NULL DEFAULT '0000',
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idza`),
  KEY `seq` (`seq`),
  KEY `cid` (`cid`),
  KEY `train` (`train`)
) ENGINE=MyISAM AUTO_INCREMENT=953 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Alle geplanten Züge (generisch, ohne Datum), mit Anforderungsprofil';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_anford___tmp`
--

DROP TABLE IF EXISTS `fp_zug_anford___tmp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_anford___tmp` (
  `idza` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `seq` smallint(5) unsigned NOT NULL DEFAULT 65535,
  `idvp` varchar(10) NOT NULL,
  `idze` int(10) unsigned NOT NULL,
  `opsyear` year(4) DEFAULT NULL,
  `ref` varchar(10) DEFAULT NULL,
  `refvp` varchar(10) NOT NULL,
  `refx` varchar(10) NOT NULL,
  `ref_old` varchar(10) DEFAULT NULL,
  `cluster` varchar(10) DEFAULT NULL,
  `cid` int(10) unsigned DEFAULT NULL,
  `train` varchar(10) DEFAULT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `onreq_only` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `onOffer` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `tractype` varchar(20) DEFAULT NULL,
  `newtrac` varchar(10) DEFAULT NULL,
  `tow_mass` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_1` int(10) unsigned NOT NULL DEFAULT 0,
  `declas_1` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_2` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_3` int(10) unsigned NOT NULL DEFAULT 0,
  `bicycles` int(10) unsigned NOT NULL DEFAULT 0,
  `r_dep` varchar(10) DEFAULT NULL,
  `r_via` varchar(10) DEFAULT NULL,
  `r_end` varchar(10) DEFAULT NULL,
  `remark` text NOT NULL,
  `yearfrom` varchar(4) NOT NULL DEFAULT '0000',
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idza`),
  KEY `seq` (`seq`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=179 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Alle geplanten Züge (generisch, ohne Datum), mit Anforderungsprofil';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_anford_comp`
--

DROP TABLE IF EXISTS `fp_zug_anford_comp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_anford_comp` (
  `idza` int(10) unsigned NOT NULL,
  `seq` smallint(5) unsigned NOT NULL DEFAULT 10,
  `recomp` varchar(10) NOT NULL,
  `traction` varchar(20) NOT NULL,
  `tracplus` varchar(20) NOT NULL,
  `plustype` varchar(5) NOT NULL,
  `wagcomp` varchar(20) NOT NULL,
  `trac_rot` varchar(20) NOT NULL,
  `thelp_rot` varchar(20) NOT NULL,
  `wag_rot` varchar(20) NOT NULL,
  `r_train` varchar(10) DEFAULT NULL,
  `r_opsmode` varchar(20) DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `r_tractype` varchar(20) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idza`,`seq`)
) ENGINE=MyISAM AUTO_INCREMENT=179 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Angeforderte Kompositionsfolge der Planzüge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_anford_mitpush`
--

DROP TABLE IF EXISTS `fp_zug_anford_mitpush`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_anford_mitpush` (
  `idza` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `seq` smallint(5) unsigned NOT NULL DEFAULT 65535,
  `idvp` varchar(10) NOT NULL,
  `idze` int(10) unsigned NOT NULL,
  `opsyear` year(4) DEFAULT NULL,
  `ref` varchar(10) DEFAULT NULL,
  `refvp` varchar(10) NOT NULL,
  `refx` varchar(10) NOT NULL,
  `ref_old` varchar(10) DEFAULT NULL,
  `cluster` varchar(10) DEFAULT NULL,
  `cid` int(10) unsigned DEFAULT NULL,
  `train` varchar(10) DEFAULT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `product` varchar(20) NOT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `onreq_only` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `onOffer` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `tractype` varchar(20) DEFAULT NULL,
  `newtrac` varchar(10) DEFAULT NULL,
  `trac1_std` varchar(20) NOT NULL,
  `trac2_std` varchar(20) NOT NULL,
  `wag_std` varchar(20) NOT NULL,
  `tow_mass` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_1` int(10) unsigned NOT NULL DEFAULT 0,
  `declas_1` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_2` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_3` int(10) unsigned NOT NULL DEFAULT 0,
  `bicycles` int(10) unsigned NOT NULL DEFAULT 0,
  `r_dep` varchar(10) DEFAULT NULL,
  `r_via` varchar(10) DEFAULT NULL,
  `r_end` varchar(10) DEFAULT NULL,
  `remark` text NOT NULL,
  `yearfrom` varchar(4) NOT NULL DEFAULT '0000',
  `yearto` varchar(4) NOT NULL DEFAULT '9999',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idza`),
  KEY `seq` (`seq`),
  KEY `cid` (`cid`),
  KEY `train` (`train`)
) ENGINE=MyISAM AUTO_INCREMENT=268 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Alle geplanten Züge (generisch, ohne Datum), mit Anforderungsprofil, letztmals inkl Schiebedienst-Pseudozüge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_anford_save`
--

DROP TABLE IF EXISTS `fp_zug_anford_save`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_anford_save` (
  `idza` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `seq` smallint(5) unsigned NOT NULL DEFAULT 65535,
  `ref` varchar(10) DEFAULT NULL,
  `cluster` varchar(10) DEFAULT NULL,
  `train` varchar(10) DEFAULT NULL,
  `opsmode` varchar(20) DEFAULT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `onreq_only` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `onOffer` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `tractype` varchar(20) DEFAULT NULL,
  `newtrac` varchar(10) DEFAULT NULL,
  `tow_mass` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_1` int(10) unsigned NOT NULL DEFAULT 0,
  `declas_1` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_2` int(10) unsigned NOT NULL DEFAULT 0,
  `seats_3` int(10) unsigned NOT NULL DEFAULT 0,
  `bicycles` int(10) unsigned NOT NULL DEFAULT 0,
  `start_place` varchar(10) DEFAULT NULL,
  `via_place` varchar(10) DEFAULT NULL,
  `end_place` varchar(10) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idza`),
  KEY `seq` (`seq`)
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Alle geplanten Züge (generisch, ohne Datum), mit Anforderungsprofil';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_comp`
--

DROP TABLE IF EXISTS `fp_zug_comp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_comp` (
  `idzc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idzp` int(10) unsigned DEFAULT NULL,
  `idza` int(10) unsigned DEFAULT NULL,
  `opsday` date DEFAULT NULL,
  `cluster` int(10) unsigned DEFAULT NULL,
  `r_opsid` varchar(20) DEFAULT NULL,
  `r_opsmode` varchar(20) DEFAULT NULL,
  `idrp1` int(10) unsigned DEFAULT NULL,
  `idrp2` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `r_tow_mass` int(10) unsigned DEFAULT NULL,
  `r_tractype` varchar(20) DEFAULT NULL,
  `tseq` int(10) unsigned DEFAULT NULL,
  `ttype` varchar(20) DEFAULT NULL,
  `dep` varchar(20) DEFAULT NULL,
  `cat_rolmat` int(10) unsigned DEFAULT NULL,
  `cat_comp` varchar(20) DEFAULT NULL,
  `idrd` int(10) unsigned DEFAULT NULL,
  `idco` varchar(20) DEFAULT NULL,
  `planned` varchar(100) DEFAULT NULL,
  `tval` int(10) unsigned DEFAULT NULL,
  `tlft` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzc`)
) ENGINE=MyISAM AUTO_INCREMENT=1332 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Kompositionenbedarf';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_comp___2013`
--

DROP TABLE IF EXISTS `fp_zug_comp___2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_comp___2013` (
  `idzc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idzp` int(10) unsigned DEFAULT NULL,
  `idza` int(10) unsigned DEFAULT NULL,
  `opsday` date DEFAULT NULL,
  `cluster` int(10) unsigned DEFAULT NULL,
  `r_opsid` varchar(20) DEFAULT NULL,
  `r_opsmode` varchar(20) DEFAULT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `r_tow_mass` int(10) unsigned DEFAULT NULL,
  `r_tractype` varchar(20) DEFAULT NULL,
  `tseq` int(10) unsigned DEFAULT NULL,
  `ttype` varchar(20) DEFAULT NULL,
  `dep` varchar(20) DEFAULT NULL,
  `cat_rolmat` int(10) unsigned DEFAULT NULL,
  `cat_comp` varchar(20) DEFAULT NULL,
  `idco` varchar(20) DEFAULT NULL,
  `planned` varchar(100) DEFAULT NULL,
  `tval` int(10) unsigned DEFAULT NULL,
  `tlft` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzc`)
) ENGINE=MyISAM AUTO_INCREMENT=1316 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Kompositionenbedarf';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_comp___20190617`
--

DROP TABLE IF EXISTS `fp_zug_comp___20190617`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_comp___20190617` (
  `idzc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idzp` int(10) unsigned DEFAULT NULL,
  `idza` int(10) unsigned DEFAULT NULL,
  `opsday` date DEFAULT NULL,
  `cluster` int(10) unsigned DEFAULT NULL,
  `r_opsid` varchar(20) DEFAULT NULL,
  `r_opsmode` varchar(20) DEFAULT NULL,
  `idrp1` int(10) unsigned DEFAULT NULL,
  `idrp2` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `r_tow_mass` int(10) unsigned DEFAULT NULL,
  `r_tractype` varchar(20) DEFAULT NULL,
  `tseq` int(10) unsigned DEFAULT NULL,
  `ttype` varchar(20) DEFAULT NULL,
  `dep` varchar(20) DEFAULT NULL,
  `cat_rolmat` int(10) unsigned DEFAULT NULL,
  `cat_comp` varchar(20) DEFAULT NULL,
  `idrd` int(10) unsigned DEFAULT NULL,
  `idco` varchar(20) DEFAULT NULL,
  `planned` varchar(100) DEFAULT NULL,
  `tval` int(10) unsigned DEFAULT NULL,
  `tlft` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzc`)
) ENGINE=MyISAM AUTO_INCREMENT=1332 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Kompositionenbedarf';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_comp___saveall`
--

DROP TABLE IF EXISTS `fp_zug_comp___saveall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_comp___saveall` (
  `idzc` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idzp` int(10) unsigned DEFAULT NULL,
  `idza` int(10) unsigned DEFAULT NULL,
  `opsday` date DEFAULT NULL,
  `cluster` int(10) unsigned DEFAULT NULL,
  `r_opsid` varchar(20) DEFAULT NULL,
  `r_opsmode` varchar(20) DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `idrp` int(10) unsigned DEFAULT NULL,
  `r_route` varchar(50) DEFAULT NULL,
  `traccode` varchar(20) DEFAULT NULL,
  `tow_mass` int(10) unsigned DEFAULT NULL,
  `ylft` int(10) unsigned DEFAULT NULL,
  `ttype` varchar(20) DEFAULT NULL,
  `dep` varchar(20) DEFAULT NULL,
  `cat_rolmat` int(10) unsigned DEFAULT NULL,
  `cat_comp` varchar(20) DEFAULT NULL,
  `tdescript` varchar(100) DEFAULT NULL,
  `tval` int(10) unsigned DEFAULT NULL,
  `tlft` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzc`)
) ENGINE=MyISAM AUTO_INCREMENT=1307 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Kompositionenbedarf';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_plan`
--

DROP TABLE IF EXISTS `fp_zug_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_plan` (
  `idzp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idza` int(10) unsigned DEFAULT NULL,
  `opsday` date NOT NULL COMMENT 'Betriebsdatum R -- fp_zug_anford',
  `opsid` varchar(10) DEFAULT NULL COMMENT 'Offizielle Zugnummer R -- fp_zug_anford',
  `rpart` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Teilstreckennummerierung R -- fp_zug_anford',
  `cid` varchar(10) DEFAULT NULL COMMENT 'benutzte Fahrordnung R -- fp_zug_anford > fp_dfpl',
  `cluster` varchar(50) NOT NULL DEFAULT '' COMMENT 'Markierung zusammengehöriger Züge (zZt leer)',
  `ref_plan` varchar(20) NOT NULL COMMENT 'Plancode VP oder Zirk R -- fp_zug_anford:ref',
  `ref_fdl` varchar(20) NOT NULL,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `opsmode` varchar(20) DEFAULT NULL COMMENT 'Betriebsart R -- fp_zug_anford',
  `product` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Produktbereich R -- fp_zug_anford::product',
  `orders` text NOT NULL,
  `idrp` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Streckencode R -- fp_zug_anford > fp_route_plan',
  `route` varchar(100) DEFAULT NULL COMMENT 'Fahrstrecke R -- fp_zug_anford',
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  `idrp1` varchar(10) DEFAULT NULL COMMENT 'vermutlich obsolet',
  `idrp2` varchar(10) DEFAULT NULL COMMENT 'vermutlich obsolet',
  PRIMARY KEY (`idzp`),
  UNIQUE KEY `season` (`opsday`,`opsid`,`rpart`),
  KEY `opsmode` (`opsmode`),
  KEY `idza` (`idza`),
  KEY `opslist` (`opsday`,`ref_plan`,`opsid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=7692 DEFAULT CHARSET=utf8 COMMENT='Produktionsplan Reise- und relevante Dienstzüge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_planN`
--

DROP TABLE IF EXISTS `fp_zug_planN`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_planN` (
  `idzp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idza` int(10) unsigned DEFAULT NULL,
  `opsday` date NOT NULL,
  `cid` varchar(10) DEFAULT NULL COMMENT 'ID Fahrplan',
  `opsid` varchar(10) DEFAULT NULL COMMENT 'Offizielle Zugnummer',
  `rpart` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Teilstreckennummerierung',
  `ref_plan` varchar(20) NOT NULL,
  `ref_fdl` varchar(20) NOT NULL,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `opsmode` varchar(20) DEFAULT NULL,
  `product` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'fi_prodarea::ID Produktionsbereich',
  `orders` text NOT NULL,
  `idrp` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Streckencode',
  `route` varchar(100) DEFAULT NULL,
  `idrp1` varchar(10) DEFAULT NULL,
  `idrp2` varchar(10) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzp`),
  UNIQUE KEY `season` (`opsday`,`opsid`,`rpart`),
  KEY `opsmode` (`opsmode`),
  KEY `idza` (`idza`),
  KEY `opslist` (`opsday`,`ref_plan`,`opsid`),
  KEY `cid` (`cid`)
) ENGINE=MyISAM AUTO_INCREMENT=7740 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Produktionsplan Reise- und relevante Dienstzüge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_plan___140621`
--

DROP TABLE IF EXISTS `fp_zug_plan___140621`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_plan___140621` (
  `idzp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idza` int(10) unsigned DEFAULT NULL,
  `opsday` date NOT NULL,
  `opsid` varchar(10) DEFAULT NULL,
  `ref_plan` varchar(20) NOT NULL,
  `ref_fdl` varchar(20) NOT NULL,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `opsmode` varchar(20) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzp`),
  UNIQUE KEY `season` (`opsday`,`opsid`),
  KEY `opsmode` (`opsmode`),
  KEY `idza` (`idza`),
  KEY `opslist` (`opsday`,`ref_plan`,`opsid`)
) ENGINE=MyISAM AUTO_INCREMENT=1427 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Produktionsplan Reise- und relevante Dienstzüge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_plan___20140401`
--

DROP TABLE IF EXISTS `fp_zug_plan___20140401`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_plan___20140401` (
  `idzp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idza` int(10) unsigned DEFAULT NULL,
  `opsday` date NOT NULL,
  `opsid` varchar(10) DEFAULT NULL,
  `ref_plan` varchar(20) NOT NULL,
  `ref_fdl` varchar(20) NOT NULL,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `opsmode` varchar(20) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzp`),
  UNIQUE KEY `season` (`opsday`,`opsid`),
  KEY `opsmode` (`opsmode`),
  KEY `idza` (`idza`),
  KEY `opslist` (`opsday`,`ref_plan`,`opsid`)
) ENGINE=MyISAM AUTO_INCREMENT=753 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Produktionsplan Reise- und relevante Dienstzüge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_plan___20140805`
--

DROP TABLE IF EXISTS `fp_zug_plan___20140805`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_plan___20140805` (
  `idzp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idza` int(10) unsigned DEFAULT NULL,
  `opsday` date NOT NULL,
  `opsid` varchar(10) DEFAULT NULL,
  `ref_plan` varchar(20) NOT NULL,
  `ref_fdl` varchar(20) NOT NULL,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `opsmode` varchar(20) DEFAULT NULL,
  `orders` text NOT NULL,
  `idrp1` varchar(10) DEFAULT NULL,
  `idrp2` varchar(10) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzp`),
  UNIQUE KEY `season` (`opsday`,`opsid`),
  KEY `opsmode` (`opsmode`),
  KEY `idza` (`idza`),
  KEY `opslist` (`opsday`,`ref_plan`,`opsid`)
) ENGINE=MyISAM AUTO_INCREMENT=1174 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Produktionsplan Reise- und relevante Dienstzüge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_plan___20190617`
--

DROP TABLE IF EXISTS `fp_zug_plan___20190617`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_plan___20190617` (
  `idzp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idza` int(10) unsigned DEFAULT NULL,
  `opsday` date NOT NULL,
  `opsid` varchar(10) DEFAULT NULL,
  `ref_plan` varchar(20) NOT NULL,
  `ref_fdl` varchar(20) NOT NULL,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `opsmode` varchar(20) DEFAULT NULL,
  `product` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'fi_prodarea::ID Produktionsbereich',
  `orders` text NOT NULL,
  `idrp1` varchar(10) DEFAULT NULL,
  `idrp2` varchar(10) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzp`),
  UNIQUE KEY `season` (`opsday`,`opsid`),
  KEY `opsmode` (`opsmode`),
  KEY `idza` (`idza`),
  KEY `opslist` (`opsday`,`ref_plan`,`opsid`)
) ENGINE=MyISAM AUTO_INCREMENT=5658 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Produktionsplan Reise- und relevante Dienstzüge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_plan___20200325`
--

DROP TABLE IF EXISTS `fp_zug_plan___20200325`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_plan___20200325` (
  `idzp` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idza` int(10) unsigned DEFAULT NULL,
  `opsday` date NOT NULL,
  `opsid` varchar(10) DEFAULT NULL COMMENT 'Offizielle Zugnummer',
  `rpart` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Teilstreckennummerierung',
  `ref_plan` varchar(20) NOT NULL,
  `ref_fdl` varchar(20) NOT NULL,
  `waiver` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `opsmode` varchar(20) DEFAULT NULL,
  `product` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'fi_prodarea::ID Produktionsbereich',
  `orders` text NOT NULL,
  `idrp1` varchar(10) DEFAULT NULL,
  `idrp2` varchar(10) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzp`),
  UNIQUE KEY `season` (`opsday`,`opsid`,`rpart`),
  KEY `opsmode` (`opsmode`),
  KEY `idza` (`idza`),
  KEY `opslist` (`opsday`,`ref_plan`,`opsid`)
) ENGINE=MyISAM AUTO_INCREMENT=6181 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Produktionsplan Reise- und relevante Dienstzüge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_plan__arc`
--

DROP TABLE IF EXISTS `fp_zug_plan__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_plan__arc` (
  `idzp` text DEFAULT NULL,
  `idza` text DEFAULT NULL,
  `opsday` text DEFAULT NULL,
  `opsid` text DEFAULT NULL,
  `rpart` text DEFAULT NULL,
  `cid` text DEFAULT NULL,
  `cluster` text DEFAULT NULL,
  `ref_plan` text DEFAULT NULL,
  `ref_fdl` text DEFAULT NULL,
  `waiver` text DEFAULT NULL,
  `isops` text DEFAULT NULL,
  `opsmode` text DEFAULT NULL,
  `product` text DEFAULT NULL,
  `orders` text DEFAULT NULL,
  `idrp` text DEFAULT NULL,
  `route` text DEFAULT NULL,
  `entered` text DEFAULT NULL,
  `originator` text DEFAULT NULL,
  `modified` text DEFAULT NULL,
  `modifier` text DEFAULT NULL,
  `idrp1` text DEFAULT NULL,
  `idrp2` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fp_zug_roma`
--

DROP TABLE IF EXISTS `fp_zug_roma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fp_zug_roma` (
  `idrop` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `idzp` int(10) unsigned NOT NULL COMMENT 'Id fp_zug_plan',
  `role` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Funktion im Zug: 0: offen, 1: Hauptlok, 10: Wagen',
  `idrs` int(10) unsigned NOT NULL COMMENT 'Einzelfahrzeug gem fb_rollmat',
  `train` varchar(20) DEFAULT NULL COMMENT 'R: Zugnummer',
  `opsday` date DEFAULT NULL COMMENT 'R: Betriebstag',
  `idza` int(10) unsigned DEFAULT NULL COMMENT 'R: Id fp_zug_anford',
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idrop`),
  UNIQUE KEY `idzp_role` (`idzp`,`role`),
  KEY `idrs` (`idrs`)
) ENGINE=MyISAM AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Aktueller Planungsstand Rollmaterial (Mini-Version 2020)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_all_attend`
--

DROP TABLE IF EXISTS `gep_all_attend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_all_attend` (
  `atid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'KEY',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'IDENT contacts.tb_ident',
  `short` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'DFB-Kürzel',
  `opsday` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Betriebstag',
  `cause` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Anlass: 1.work, 2.eve,3.inter,4.depart',
  `orderby` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Auftraggebende Abteilung',
  `self` tinyint(3) unsigned DEFAULT NULL COMMENT 'selbstregistrierter Serviceplan',
  `worktime` int(10) unsigned DEFAULT NULL COMMENT 'Arbeitsdauer',
  `attendance` int(10) unsigned DEFAULT NULL COMMENT 'Schichtdauer',
  `regio` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Einsatz-Grossraum',
  `start_loc` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Anfangsort Tour',
  `start_time` time DEFAULT NULL COMMENT 'Anfangsuhrzeit Tour',
  `end_loc` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Endort Tour',
  `end_time` time DEFAULT NULL COMMENT 'Enduhrzeit Tour',
  `remark` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Kurzkommentar Thema Präsenz',
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_service_plan',
  `prodcat` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ID Produktionsbereich',
  `dtid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_dtour',
  `tour` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Diensttour codiert (ohne dtid = gelöschte Tour)',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_assign',
  `did` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_duty',
  `rid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Eintrag durch Umdisposition',
  `accepted` datetime DEFAULT NULL COMMENT 'Zeitpunkt Dienstübernahme',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`atid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `cause` (`cause`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=31356 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_all_attend__0`
--

DROP TABLE IF EXISTS `gep_all_attend__0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_all_attend__0` (
  `atid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'KEY',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'IDENT contacts.tb_ident',
  `short` varchar(10) DEFAULT NULL COMMENT 'DFB-Kürzel',
  `opsday` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Betriebstag',
  `cause` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Anlass: 1.work, 2.eve,3.inter,4.depart',
  `orderby` varchar(20) DEFAULT NULL COMMENT 'Auftraggebende Abteilung',
  `self` tinyint(3) unsigned DEFAULT NULL COMMENT 'selbstregistrierter Serviceplan',
  `worktime` int(10) unsigned DEFAULT NULL COMMENT 'Arbeitsdauer',
  `attendance` int(10) unsigned DEFAULT NULL COMMENT 'Schichtdauer',
  `regio` varchar(10) DEFAULT NULL COMMENT 'Einsatz-Grossraum',
  `start_loc` varchar(20) DEFAULT NULL COMMENT 'Anfangsort Tour',
  `start_time` time DEFAULT NULL COMMENT 'Anfangsuhrzeit Tour',
  `end_loc` varchar(20) DEFAULT NULL COMMENT 'Endort Tour',
  `end_time` time DEFAULT NULL COMMENT 'Enduhrzeit Tour',
  `remark` varchar(150) DEFAULT NULL COMMENT 'Kurzkommentar Thema Präsenz',
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_service_plan',
  `prodcat` varchar(20) DEFAULT NULL COMMENT 'ID Produktionsbereich',
  `dtid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_dtour',
  `tour` varchar(50) NOT NULL COMMENT 'Diensttour codiert (ohne dtid = gelöschte Tour)',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_assign',
  `did` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_duty',
  `realloc` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Eintrag durch Umdisposition',
  `accepted` datetime DEFAULT NULL COMMENT 'Zeitpunkt Dienstübernahme',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`atid`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `cause` (`cause`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=31345 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Umfassende Anwesenheitstabelle aller DFB-Mitarbeit und Logistik-Nutzung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_assign`
--

DROP TABLE IF EXISTS `gep_assign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_assign` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `r_short` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Kürzel des Mitarbeiters',
  `assigner` int(10) unsigned DEFAULT NULL COMMENT 'EP-Planer',
  `assigned` timestamp NOT NULL DEFAULT current_timestamp(),
  `r_a_short` varchar(4) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Kürzel des Assigners',
  `opsday` date NOT NULL,
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'ID des zugehörigen ep_service_plan',
  `rid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID des Reallocationauftrages',
  `grp` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT 'Arbeitsgruppenbezeichnung',
  `grphead` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Leiter einer Arbeitsgruppe',
  `r_spname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Tourbezeichnung, codiert als dtcode#instr_v0x',
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open' COMMENT 'planning / VERSAND / closed / CONFIRMED / added',
  `action` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'add' COMMENT 'add / remove',
  `partn` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `close_time` datetime NOT NULL DEFAULT '9999-12-31 00:00:00' COMMENT 'Zeitpunkt des Planungsendes = Versand',
  `cancelled` date NOT NULL DEFAULT '9999-12-31' COMMENT 'Streichdatum',
  `notb4` date NOT NULL DEFAULT '0000-00-00',
  `accepted` datetime DEFAULT NULL COMMENT 'Bestätigung, auch Zeitpunkt des Übertrags in ep_duty',
  `dtid` int(10) unsigned zerofill DEFAULT NULL COMMENT '(nicht benutzt)',
  PRIMARY KEY (`aid`),
  KEY `ident` (`ident`),
  KEY `r_short` (`r_short`),
  KEY `assigner` (`assigner`),
  KEY `opsday` (`opsday`),
  KEY `spid` (`spid`),
  KEY `status` (`status`),
  KEY `close_time` (`close_time`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=25167 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_assign__0`
--

DROP TABLE IF EXISTS `gep_assign__0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_assign__0` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL,
  `r_short` varchar(4) DEFAULT NULL COMMENT 'Kürzel des Mitarbeiters',
  `assigner` int(10) unsigned DEFAULT NULL COMMENT 'EP-Planer',
  `assigned` timestamp NOT NULL DEFAULT current_timestamp(),
  `r_a_short` varchar(4) DEFAULT NULL COMMENT 'Kürzel des Assigners',
  `opsday` date NOT NULL,
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'ID des zugehörigen ep_service_plan',
  `rid` int(10) unsigned NOT NULL COMMENT 'ID des Reallocationauftrages',
  `grp` varchar(50) NOT NULL COMMENT 'Arbeitsgruppenbezeichnung',
  `grphead` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Leiter einer Arbeitsgruppe',
  `r_spname` varchar(50) DEFAULT NULL COMMENT 'Tourbezeichnung, codiert als dtcode#instr_v0x',
  `remark` varchar(255) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'open' COMMENT 'planning / VERSAND / closed / CONFIRMED / added',
  `action` varchar(20) NOT NULL DEFAULT 'add' COMMENT 'add / remove',
  `partn` varchar(250) DEFAULT NULL,
  `close_time` datetime NOT NULL DEFAULT '9999-12-31 00:00:00' COMMENT 'Zeitpunkt des Planungsendes = Versand',
  `cancelled` date NOT NULL DEFAULT '9999-12-31' COMMENT 'Streichdatum',
  `notb4` date NOT NULL DEFAULT '0000-00-00',
  `accepted` datetime DEFAULT NULL COMMENT 'Bestätigung, auch Zeitpunkt des Übertrags in ep_duty',
  `dtid` int(10) unsigned zerofill DEFAULT NULL COMMENT '(nicht benutzt)',
  PRIMARY KEY (`aid`),
  KEY `ident` (`ident`),
  KEY `r_short` (`r_short`),
  KEY `assigner` (`assigner`),
  KEY `opsday` (`opsday`),
  KEY `spid` (`spid`),
  KEY `status` (`status`),
  KEY `close_time` (`close_time`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=22898 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_dtour`
--

DROP TABLE IF EXISTS `gep_dtour`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_dtour` (
  `dtid` int(10) unsigned NOT NULL DEFAULT 0,
  `area` int(11) DEFAULT 0,
  `layer` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dtcode` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `yearfrom` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT 'wird seit V2.0 als ''opsyear'' genutzt',
  `yearto` varchar(4) CHARACTER SET utf8 NOT NULL DEFAULT '9999' COMMENT 'V2: obsolet',
  `dutytype` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'duty' COMMENT 'grp/grp_avbl: Gruppentouren, pro/pro_avbl:Profi-Tour',
  `shortname` varchar(24) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Art der Tätigkeit',
  `route` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(80) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Nutzniesser der Tätigkeit',
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `r_via` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `regio` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT 'geografischer Einsatzraum',
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) CHARACTER SET utf8 NOT NULL,
  `byScope` varchar(100) CHARACTER SET utf8 NOT NULL,
  `multip` varchar(100) CHARACTER SET utf8 NOT NULL,
  `orderby` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'auftraggebende DFB-Abteilung',
  `prodarea` int(10) unsigned DEFAULT NULL COMMENT 'Produktionsbereich gem fi_prodarea',
  `prodcat` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `r_prereqs` varchar(100) CHARACTER SET utf8 NOT NULL,
  `commit` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `selfduty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'löst bei commit=yes eine Dienstregistrierung aus',
  `quali_choice` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `r_grp` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT 'qprofil, benutzt zur thematischen Gruppenbildung',
  `dtlead` int(10) unsigned DEFAULT NULL,
  `pre_night` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `breakfast` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `lunch` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `dinner` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `any1` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort morgens beliebig wählbar',
  `any2` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort mittags beliebig wählbar',
  `any3` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort abends beliebig wählbar',
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `inuse` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Pivot: Anzahl der Nutzungen in ep_service_plan',
  `day1` date DEFAULT NULL COMMENT 'Pivot: Tag der ersten Nutzung gem ep_service_plan',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `dtcode_old` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT 'obsolet, aber in Formular benutzt',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_dtour__0`
--

DROP TABLE IF EXISTS `gep_dtour__0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_dtour__0` (
  `dtid` int(10) unsigned NOT NULL DEFAULT 0,
  `area` int(11) DEFAULT 0,
  `layer` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `prio` tinyint(3) unsigned DEFAULT NULL,
  `dtcode` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `yearfrom` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT 'wird seit V2.0 als ''opsyear'' genutzt',
  `yearto` varchar(4) CHARACTER SET utf8 NOT NULL DEFAULT '9999' COMMENT 'V2: obsolet',
  `dutytype` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'duty' COMMENT 'grp/grp_avbl: Gruppentouren, pro/pro_avbl:Profi-Tour',
  `shortname` varchar(24) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Art der Tätigkeit',
  `route` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(80) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Nutzniesser der Tätigkeit',
  `start_time` time DEFAULT NULL,
  `start_place` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `r_end_time` time DEFAULT NULL,
  `r_end_place` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `r_via` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `regio` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT 'geografischer Einsatzraum',
  `r_worktime` mediumint(9) DEFAULT NULL,
  `r_attendance` mediumint(9) DEFAULT NULL,
  `byPeriod` varchar(100) CHARACTER SET utf8 NOT NULL,
  `byScope` varchar(100) CHARACTER SET utf8 NOT NULL,
  `multip` varchar(100) CHARACTER SET utf8 NOT NULL,
  `orderby` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'auftraggebende DFB-Abteilung',
  `prodarea` int(10) unsigned DEFAULT NULL COMMENT 'Produktionsbereich gem fi_prodarea',
  `prodcat` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `r_prereqs` varchar(100) CHARACTER SET utf8 NOT NULL,
  `commit` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `selfduty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'löst bei commit=yes eine Dienstregistrierung aus',
  `quali_choice` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `r_grp` varchar(20) CHARACTER SET utf8 NOT NULL COMMENT 'qprofil, benutzt zur thematischen Gruppenbildung',
  `dtlead` int(10) unsigned DEFAULT NULL,
  `pre_night` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `breakfast` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `lunch` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `dinner` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `any1` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort morgens beliebig wählbar',
  `any2` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort mittags beliebig wählbar',
  `any3` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Essensort abends beliebig wählbar',
  `seq_count` int(10) unsigned NOT NULL DEFAULT 0,
  `inuse` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Pivot: Anzahl der Nutzungen in ep_service_plan',
  `day1` date DEFAULT NULL COMMENT 'Pivot: Tag der ersten Nutzung gem ep_service_plan',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `dtcode_old` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT 'obsolet, aber in Formular benutzt',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_duty`
--

DROP TABLE IF EXISTS `gep_duty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_duty` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'KEY',
  `ident` int(10) unsigned NOT NULL COMMENT 'ID Kontakt.tb_ident',
  `r_short` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT 'zInfo Kurzzeichen',
  `opsday` date NOT NULL COMMENT 'Betriebstag',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_assign',
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_service_plan',
  `r_spname` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ID Dienstbezeichnungscode',
  `remark` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Kommentar',
  `status` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'open' COMMENT 'Status',
  `partn` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `accepted` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Übernahmezeitpunkt',
  `cancelled` date DEFAULT '9999-12-31' COMMENT 'Löschdatum',
  PRIMARY KEY (`did`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `aid` (`aid`),
  KEY `spid` (`spid`)
) ENGINE=MyISAM AUTO_INCREMENT=21342 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_duty__0`
--

DROP TABLE IF EXISTS `gep_duty__0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_duty__0` (
  `did` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'KEY',
  `ident` int(10) unsigned NOT NULL COMMENT 'ID Kontakt.tb_ident',
  `r_short` varchar(4) CHARACTER SET utf8 DEFAULT NULL COMMENT 'zInfo Kurzzeichen',
  `opsday` date NOT NULL COMMENT 'Betriebstag',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_assign',
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'ID ep_service_plan',
  `r_spname` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'ID Dienstbezeichnungscode',
  `remark` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Kommentar',
  `status` varchar(20) CHARACTER SET utf8 NOT NULL DEFAULT 'open' COMMENT 'Status',
  `partn` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `accepted` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Übernahmezeitpunkt',
  `cancelled` date DEFAULT '9999-12-31' COMMENT 'Löschdatum',
  PRIMARY KEY (`did`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `aid` (`aid`),
  KEY `spid` (`spid`)
) ENGINE=InnoDB AUTO_INCREMENT=19529 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_duty__arc`
--

DROP TABLE IF EXISTS `gep_duty__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_duty__arc` (
  `did` text DEFAULT NULL,
  `ident` text DEFAULT NULL,
  `r_short` text DEFAULT NULL,
  `opsday` text DEFAULT NULL,
  `aid` text DEFAULT NULL,
  `spid` text DEFAULT NULL,
  `r_spname` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `partn` text DEFAULT NULL,
  `accepted` text DEFAULT NULL,
  `cancelled` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_pl_essen`
--

DROP TABLE IF EXISTS `gep_pl_essen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_pl_essen` (
  `ides` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'KEY',
  `opsday` date DEFAULT NULL COMMENT 'Logistik-Tag',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'Kontakt-Ident',
  `tod` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'time of day: 1/2/3 morgens/mittags/abends',
  `picnic` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Picknick anstelle Mahlzeit',
  `loc` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Bereitstellungsort',
  `ma` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Eigene Bestellung',
  `gu` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Bestellungen für eigene Gäste',
  `arranged` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Flag für arrangiertes Essen',
  `idg` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID Arbeitsgruppe',
  `dept` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Auftraggebende Abteilung',
  `remark` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Kurzkommentar Thema Mahlzeit',
  `productid` int(10) unsigned DEFAULT NULL COMMENT 'Produktionscode / Kostencode',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'ep_assign.aid',
  `tour` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Diensttour  dtcode_xtra#000instruc',
  `summa` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl Individual-MA',
  `sumgrp` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl Gruppen-MA',
  `sumgu` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl echte Gäste',
  `idrep` int(10) unsigned DEFAULT NULL COMMENT 'Stellvertretender Besteller bei Gruppen',
  `rid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Id gem. ep_realloc_ctrl',
  `entered` datetime DEFAULT NULL COMMENT 'Erstellungszeitpunkt',
  `originator` int(10) unsigned DEFAULT NULL COMMENT 'Ersteller-Org, resp Ersteller w.persönlich',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Modifikationszeitpunkt',
  `modifier` int(10) unsigned DEFAULT NULL COMMENT 'Modifikator',
  `auto` int(10) unsigned DEFAULT NULL COMMENT 'BISHER KEY',
  `grp` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'BISHER',
  `name1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'BISHER',
  `name2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'BISHER',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'BISHER',
  PRIMARY KEY (`ides`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `tod` (`tod`),
  KEY `loc` (`loc`),
  KEY `dept` (`dept`)
) ENGINE=MyISAM AUTO_INCREMENT=65933 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_pl_essen__0`
--

DROP TABLE IF EXISTS `gep_pl_essen__0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_pl_essen__0` (
  `ides` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'KEY',
  `opsday` date DEFAULT NULL COMMENT 'Logistik-Tag',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'Kontakt-Ident',
  `tod` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'time of day: 1/2/3 morgens/mittags/abends',
  `picnic` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Picknick anstelle Mahlzeit',
  `loc` varchar(10) DEFAULT NULL COMMENT 'Bereitstellungsort',
  `ma` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Eigene Bestellung',
  `gu` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Bestellungen für eigene Gäste',
  `arranged` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Flag für arrangiertes Essen',
  `idg` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID Arbeitsgruppe',
  `dept` varchar(20) DEFAULT NULL COMMENT 'Auftraggebende Abteilung',
  `remark` varchar(150) DEFAULT NULL COMMENT 'Kurzkommentar Thema Mahlzeit',
  `productid` int(10) unsigned DEFAULT NULL COMMENT 'Produktionscode / Kostencode',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'ep_assign.aid',
  `tour` varchar(50) DEFAULT NULL COMMENT 'Diensttour  dtcode_xtra#000instruc',
  `summa` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl Individual-MA',
  `sumgrp` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl Gruppen-MA',
  `sumgu` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl echte Gäste',
  `entered` datetime DEFAULT NULL COMMENT 'Erstellungszeitpunkt',
  `originator` int(10) unsigned DEFAULT NULL COMMENT 'Ersteller-Org, resp Ersteller w.persönlich',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Modifikationszeitpunkt',
  `modifier` int(10) unsigned DEFAULT NULL COMMENT 'Modifikator',
  `auto` int(10) unsigned DEFAULT NULL COMMENT 'BISHER KEY',
  `grp` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `name1` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `name2` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `email` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  PRIMARY KEY (`ides`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `tod` (`tod`),
  KEY `loc` (`loc`),
  KEY `dept` (`dept`)
) ENGINE=MyISAM AUTO_INCREMENT=71450 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Mahlzeitenbestellungen (Personallogistik)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_qprofile`
--

DROP TABLE IF EXISTS `gep_qprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_qprofile` (
  `qid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sector` varchar(20) CHARACTER SET utf8 NOT NULL,
  `shortname` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `parent` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `area` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `layer` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `prio` smallint(5) unsigned DEFAULT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Hierarchiestufe',
  `inactive` tinyint(3) unsigned DEFAULT 0 COMMENT 'Nicht in Verwendung',
  `admin` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '(eigentlich) Bereichs-Ident / Bearbeitende Organisation',
  `adm_rep` tinyint(3) unsigned DEFAULT 0 COMMENT 'dieser admin ist oben bereits vorhanden (ausblenden!)',
  `ep_area` int(10) unsigned DEFAULT 0,
  `noarea` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `object_link` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `contract` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `isgrp` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `q_or` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `selectname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `qprof_tbd` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `commit` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `descr` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `r_id_org` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'aus Subset',
  `skillma` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Skill Management Area',
  `ep_org` int(10) unsigned DEFAULT NULL,
  `hide` tinyint(1) DEFAULT 0,
  `sort` int(6) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `value` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'obsolet',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`qid`),
  UNIQUE KEY `sector_shortname` (`sector`,`shortname`),
  KEY `lft` (`lft`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='fast sicher OBSOLET';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_qprofile__0`
--

DROP TABLE IF EXISTS `gep_qprofile__0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_qprofile__0` (
  `qid` int(10) unsigned NOT NULL DEFAULT 0,
  `sector` varchar(20) CHARACTER SET utf8 NOT NULL,
  `shortname` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `parent` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `area` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `layer` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `prio` smallint(5) unsigned DEFAULT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Hierarchiestufe',
  `inactive` tinyint(3) unsigned DEFAULT 0 COMMENT 'Nicht in Verwendung',
  `admin` int(10) unsigned NOT NULL DEFAULT 0 COMMENT '(eigentlich) Bereichs-Ident / Bearbeitende Organisation',
  `adm_rep` tinyint(3) unsigned DEFAULT 0 COMMENT 'dieser admin ist oben bereits vorhanden (ausblenden!)',
  `ep_area` int(10) unsigned DEFAULT 0,
  `noarea` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `object_link` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `contract` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `isgrp` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `q_or` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `selectname` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `qprof_tbd` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `commit` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `descr` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `r_id_org` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'aus Subset',
  `skillma` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Skill Management Area',
  `ep_org` int(10) unsigned DEFAULT NULL,
  `hide` tinyint(1) DEFAULT 0,
  `sort` int(6) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `value` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'obsolet',
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_realloc_ctrl`
--

DROP TABLE IF EXISTS `gep_realloc_ctrl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_realloc_ctrl` (
  `rid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `adm_org` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'entspricht ep_qprofile.admin',
  `description` varchar(100) NOT NULL,
  `opsyear` year(4) DEFAULT NULL COMMENT 'Betriebsjahr',
  `grp_dtid` int(10) unsigned DEFAULT NULL COMMENT 'GRUPPENPLANUNG: die zu ersetzende Platzhalter-Tour (dtid)',
  `grp_dtcode` int(10) unsigned DEFAULT NULL COMMENT 'Obiger Tourname der Referenztour',
  `dtid_incl` text NOT NULL COMMENT 'Liste der verwalteten Diensttouren-IDs (dtid)',
  `dtid_stby` int(10) unsigned DEFAULT NULL COMMENT 'Reserve-Vor-Ort Dienstour',
  `dtid_head` varchar(100) NOT NULL COMMENT 'Liste der potentiellen Gruppenleitertouren (dtid)',
  `dtid_ep` text DEFAULT NULL COMMENT 'Live verwendete, aber zu meidende Touren (during DEV only)',
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`rid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Steuerdaten für Umdispositionen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_realloc_focus`
--

DROP TABLE IF EXISTS `gep_realloc_focus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_realloc_focus` (
  `ident` int(10) unsigned NOT NULL COMMENT 'Mitarbeiter',
  `focussed` date NOT NULL DEFAULT '9999-12-31' COMMENT 'Umschaltdatum von Planung zu Umdisposition',
  `rid` int(10) unsigned NOT NULL COMMENT 'Job-ID',
  `released` date NOT NULL DEFAULT '9999-12-31' COMMENT 'aus Umdisposition entlassen',
  `originator` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Initiiert durch',
  `reladmin` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Freigabe durch',
  `remark` varchar(255) NOT NULL COMMENT 'Anmerkung',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Letzte Bearbeitung',
  `modifier` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'geändert durch',
  PRIMARY KEY (`ident`,`focussed`,`rid`),
  KEY `focussed` (`focussed`),
  KEY `released` (`released`),
  KEY `rid` (`rid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Die Mitarbeiter-Einsatztage, die von der Planung in die Umdisposition verschoben wurden';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_realloc_job`
--

DROP TABLE IF EXISTS `gep_realloc_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_realloc_job` (
  `rid` int(10) unsigned NOT NULL COMMENT 'Job-ID',
  `opsday` date NOT NULL COMMENT 'Betriebstag',
  `ident` int(10) unsigned NOT NULL COMMENT 'Mitarbeiter',
  `short4` varchar(50) DEFAULT NULL COMMENT 'Kürzel',
  `matchcode` varchar(200) DEFAULT NULL COMMENT 'Namen mit Ort',
  `noduty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Dienstfrei-Marker',
  `seq` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzeigereihenfolge',
  `ridini` int(10) unsigned NOT NULL COMMENT 'Initial-rid',
  `grp` varchar(10) NOT NULL COMMENT 'zugeteilte Gruppe',
  `grpH` varchar(10) NOT NULL COMMENT 'Name der geleiteten Gruppe',
  `grpini` varchar(10) NOT NULL COMMENT 'Initial-Gruppe',
  `grphead` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Gruppenleitermarkierung',
  `grpheadini` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Initial-Gruppenleitung',
  `spidini` int(10) unsigned DEFAULT NULL COMMENT 'Plan-spid bei Prozessbeginn',
  `spdtid` int(10) unsigned DEFAULT NULL COMMENT 'Kopie der dtid aus Betriebsplan',
  `tourini` varchar(50) NOT NULL COMMENT 'TourNr bei Prozessbeginn',
  `unavbl` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Nicht-Verfügbar-Marker',
  `dtidact` int(10) unsigned DEFAULT NULL COMMENT 'dtid der momentanen Zuweisung',
  `touract` int(10) unsigned DEFAULT NULL COMMENT 'TourNr aktuell',
  `offerElse` varchar(50) DEFAULT NULL COMMENT 'Dienstangebote in andern Bereichen',
  `jremark` varchar(255) DEFAULT NULL COMMENT 'Jobbezogene Anmerkung',
  `remkini` varchar(255) DEFAULT NULL COMMENT 'Initial-Anmerkung',
  `maname` varchar(100) DEFAULT NULL COMMENT 'Namen ohne Ort',
  `eo1` varchar(20) DEFAULT NULL COMMENT 'Essens-Ort = Bestellung Frühstück',
  `eo2` varchar(20) DEFAULT NULL COMMENT 'Essens-Ort = Bestellung Mittagessen',
  `eo3` varchar(20) DEFAULT NULL COMMENT 'Essens-Ort = Bestellung Abendessen',
  `ukftvor` varchar(100) DEFAULT NULL COMMENT 'Unterkunft vor dem Arbeitstag',
  `ukftnach` varchar(100) DEFAULT NULL COMMENT 'Unterkunft nach dem Arbeitstag',
  `ea1` varchar(20) DEFAULT NULL COMMENT 'Essensort FR aktuell',
  `ea2` varchar(20) DEFAULT NULL COMMENT 'Essensort MI aktuell',
  `ea3` varchar(20) DEFAULT NULL COMMENT 'Essensort AB aktuell',
  `ukav` varchar(100) DEFAULT NULL COMMENT 'Ukft vorabends aktuell',
  `ukan` varchar(100) DEFAULT NULL COMMENT 'Ukft nachfolgend aktuell',
  `dept` varchar(10) DEFAULT NULL COMMENT 'Auftraggebende Abteilung der Diensttour',
  `prodarea` int(10) unsigned DEFAULT NULL COMMENT 'Produktions-ID der Diensttour gemäss fi_prodarea',
  `eg123` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Summe aller Gruppenbestellungen',
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'Serviceplan-ID wie angeordnet',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'Assign-ID wie angeordnet',
  `spname` varchar(50) DEFAULT NULL COMMENT 'Diensttourbezeichnung wie angeordnet',
  `did` int(10) unsigned DEFAULT NULL COMMENT 'duty-ID wie angeordnet',
  PRIMARY KEY (`rid`,`opsday`,`ident`),
  KEY `seq` (`seq`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_realloc_job__arc`
--

DROP TABLE IF EXISTS `gep_realloc_job__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_realloc_job__arc` (
  `rid` int(10) unsigned NOT NULL COMMENT 'Job-ID',
  `opsday` date NOT NULL COMMENT 'Betriebstag',
  `ident` int(10) unsigned NOT NULL COMMENT 'Mitarbeiter',
  `short4` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Kürzel',
  `matchcode` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Namen mit Ort',
  `noduty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Dienstfrei-Marker',
  `seq` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzeigereihenfolge',
  `ridini` int(10) unsigned NOT NULL COMMENT 'Initial-rid',
  `grp` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'zugeteilte Gruppe',
  `grpH` varchar(10) CHARACTER SET utf8 NOT NULL COMMENT 'geleitete Gruppe',
  `grpini` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Initial-Gruppe',
  `grphead` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Gruppenleitermarkierung',
  `grpheadini` int(10) unsigned DEFAULT NULL COMMENT 'Initial-Gruppenleitung',
  `spidini` int(10) unsigned DEFAULT NULL COMMENT 'Plan-spid bei Prozessbeginn',
  `spdtid` int(10) unsigned DEFAULT NULL COMMENT 'Kopie der dtid aus Betriebsplan',
  `tourini` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT 'TourNr bei Prozessbeginn',
  `unavbl` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Nicht-Verfügbar-Marker',
  `dtidact` int(10) unsigned DEFAULT NULL COMMENT 'dtid der momentanen Zuweisung',
  `touract` int(10) unsigned DEFAULT NULL COMMENT 'TourNr aktuell',
  `offerElse` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Dienstangebote in andern Bereichen',
  `jremark` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Jobbezogene Anmerkung',
  `remkini` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Initialanmerkung',
  `maname` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Namen ohne Ort',
  `eo1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Frühstück',
  `eo2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Mittagessen',
  `eo3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Abendessen',
  `ukftvor` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Unterkunft vorabends',
  `ukftnach` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Unterkunft danach',
  `ea1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'FR aktuell',
  `ea2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'MI aktuell',
  `ea3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'AB aktuell',
  `ukav` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ukft vorabends aktuell',
  `ukan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Ukft nachfolgend aktuell',
  `dept` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Auftraggebende Abteilung der Diensttour',
  `prodarea` int(10) unsigned DEFAULT NULL COMMENT 'Produktions-ID der Diensttour',
  `eg123` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Summe aller Gruppenessen',
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'Serviceplan-Id nach Anordnung',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'Assign-Id nach Anordnung',
  `spname` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'neue Diensttourbezeichung',
  `did` int(10) unsigned DEFAULT NULL COMMENT 'duty-ID nach Anordnung',
  `step` int(10) unsigned DEFAULT NULL,
  `archived` datetime DEFAULT current_timestamp(),
  `admin` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_realloc_open`
--

DROP TABLE IF EXISTS `gep_realloc_open`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_realloc_open` (
  `rid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opsday` date NOT NULL,
  `step` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Iterationsindex (Anzahl Speicherungen)',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`rid`,`opsday`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Steuerdaten für Umdispositionen (vermutlich OBSOLET)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_reallocated`
--

DROP TABLE IF EXISTS `gep_reallocated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_reallocated` (
  `rid` int(10) unsigned NOT NULL COMMENT 'Job-ID',
  `opsday` date NOT NULL COMMENT 'Betriebstag',
  `ident` int(10) unsigned NOT NULL COMMENT 'Mitarbeiter',
  `short4` varchar(50) DEFAULT NULL COMMENT 'Kürzel',
  `matchcode` varchar(200) DEFAULT NULL COMMENT 'Namen mit Ort',
  `noduty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Dienstfrei-Marker',
  `seq` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzeigereihenfolge',
  `ridini` int(10) unsigned NOT NULL COMMENT 'Initial-rid',
  `grp` varchar(10) NOT NULL COMMENT 'zugeteilte Gruppe',
  `grpH` varchar(10) NOT NULL COMMENT 'Name der geleiteten Gruppe',
  `grpini` varchar(10) NOT NULL COMMENT 'Initial-Gruppe',
  `grphead` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Gruppenleitermarkierung',
  `grpheadini` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Initial-Gruppenleitung',
  `spidini` int(10) unsigned DEFAULT NULL COMMENT 'Plan-spid bei Prozessbeginn',
  `spdtid` int(10) unsigned DEFAULT NULL COMMENT 'Kopie der dtid aus Betriebsplan',
  `tourini` varchar(50) NOT NULL COMMENT 'TourNr bei Prozessbeginn',
  `unavbl` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Nicht-Verfügbar-Marker',
  `dtidact` int(10) unsigned DEFAULT NULL COMMENT 'dtid der momentanen Zuweisung',
  `touract` int(10) unsigned DEFAULT NULL COMMENT 'TourNr aktuell',
  `offerElse` varchar(50) DEFAULT NULL COMMENT 'Dienstangebote in andern Bereichen',
  `jremark` varchar(255) DEFAULT NULL COMMENT 'Jobbezogene Anmerkung',
  `remkini` varchar(255) DEFAULT NULL COMMENT 'Initial-Anmerkung',
  `maname` varchar(100) DEFAULT NULL COMMENT 'Namen ohne Ort',
  `eo1` varchar(20) DEFAULT NULL COMMENT 'Essens-Ort = Bestellung Frühstück',
  `eo2` varchar(20) DEFAULT NULL COMMENT 'Essens-Ort = Bestellung Mittagessen',
  `eo3` varchar(20) DEFAULT NULL COMMENT 'Essens-Ort = Bestellung Abendessen',
  `ukftvor` varchar(100) DEFAULT NULL COMMENT 'Unterkunft vor dem Arbeitstag',
  `ukftnach` varchar(100) DEFAULT NULL COMMENT 'Unterkunft nach dem Arbeitstag',
  `ea1` varchar(20) DEFAULT NULL COMMENT 'Essensort FR aktuell',
  `ea2` varchar(20) DEFAULT NULL COMMENT 'Essensort MI aktuell',
  `ea3` varchar(20) DEFAULT NULL COMMENT 'Essensort AB aktuell',
  `ukav` varchar(100) DEFAULT NULL COMMENT 'Ukft vorabends aktuell',
  `ukan` varchar(100) DEFAULT NULL COMMENT 'Ukft nachfolgend aktuell',
  `dept` varchar(10) DEFAULT NULL COMMENT 'Auftraggebende Abteilung der Diensttour',
  `prodarea` int(10) unsigned DEFAULT NULL COMMENT 'Produktions-ID der Diensttour gemäss fi_prodarea',
  `eg123` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Summe aller Gruppenbestellungen',
  `spid` int(10) unsigned DEFAULT NULL COMMENT 'Serviceplan-ID nach Anordnung',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'Assign-ID nach Anordnung',
  `spname` varchar(50) DEFAULT NULL COMMENT 'neue Diensttourbezeichnung',
  `did` int(10) unsigned DEFAULT NULL COMMENT 'duty-ID nach Anordnung',
  `changes` int(10) unsigned DEFAULT NULL COMMENT 'Anzahl der Veränderungen',
  `admin` int(10) unsigned DEFAULT NULL COMMENT 'Umdisponent',
  `reallocated` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Zeitpunkt der Umdisposition',
  KEY `rid` (`rid`),
  KEY `opsday` (`opsday`),
  KEY `ident` (`ident`),
  KEY `seq` (`seq`),
  KEY `reallocated` (`reallocated`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Log der umdisponierten Daten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_service_plan`
--

DROP TABLE IF EXISTS `gep_service_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_service_plan` (
  `spid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opsday` date NOT NULL,
  `dtid` int(10) unsigned NOT NULL,
  `xtra` varchar(10) CHARACTER SET utf8 NOT NULL,
  `instruc` varchar(10) CHARACTER SET utf8 NOT NULL,
  `opsmode` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `onorder` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `selfregist` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `realloc` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `productid` int(10) unsigned DEFAULT NULL,
  `crea_by` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `trigger` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`spid`),
  UNIQUE KEY `opsday_dtid_xtra_instruc` (`opsday`,`dtid`,`xtra`,`instruc`),
  KEY `dtid` (`dtid`),
  KEY `xtra` (`xtra`),
  KEY `instruc` (`instruc`)
) ENGINE=MyISAM AUTO_INCREMENT=40438 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gep_service_plan__0`
--

DROP TABLE IF EXISTS `gep_service_plan__0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gep_service_plan__0` (
  `spid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opsday` date NOT NULL,
  `dtid` int(10) unsigned NOT NULL,
  `xtra` varchar(10) CHARACTER SET utf8 NOT NULL,
  `instruc` varchar(10) CHARACTER SET utf8 NOT NULL,
  `opsmode` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `onorder` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `isops` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `selfregist` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `realloc` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `productid` int(10) unsigned DEFAULT NULL,
  `crea_by` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `trigger` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`spid`),
  UNIQUE KEY `opsday_dtid_xtra_instruc` (`opsday`,`dtid`,`xtra`,`instruc`),
  KEY `dtid` (`dtid`),
  KEY `xtra` (`xtra`),
  KEY `instruc` (`instruc`)
) ENGINE=InnoDB AUTO_INCREMENT=39180 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gv_anmeld`
--

DROP TABLE IF EXISTS `gv_anmeld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gv_anmeld` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `report` varchar(100) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `participate` varchar(100) DEFAULT NULL,
  `firstname_dep` varchar(100) DEFAULT NULL,
  `lastname_dep` varchar(100) DEFAULT NULL,
  `street_dep` varchar(100) DEFAULT NULL,
  `city_dep` varchar(100) DEFAULT NULL,
  `zip_dep` varchar(100) DEFAULT NULL,
  `phone_dep` varchar(100) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `userip` varchar(100) DEFAULT NULL,
  `Idnr` varchar(100) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modifier` int(11) DEFAULT 1,
  `ipentered` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=MyISAM AUTO_INCREMENT=223 DEFAULT CHARSET=utf8 COMMENT='Anmeldung zur GV';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gv_anmeld_2013`
--

DROP TABLE IF EXISTS `gv_anmeld_2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gv_anmeld_2013` (
  `_auto_` int(11) NOT NULL AUTO_INCREMENT,
  `_sessionID_` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp(),
  `_lastUserIP_` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auto` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `Idnr` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `firstname` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `lastname` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `street` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `zip` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `city` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `phone` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `email` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `remarks` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `userip` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `report` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `participate` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `lastname_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `firstname_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `street_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `zip_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `city_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `phone_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `submit` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  PRIMARY KEY (`_auto_`)
) ENGINE=MyISAM AUTO_INCREMENT=519 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='transfer table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gv_anmeld_2014`
--

DROP TABLE IF EXISTS `gv_anmeld_2014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gv_anmeld_2014` (
  `_auto_` int(11) NOT NULL AUTO_INCREMENT,
  `_sessionID_` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp(),
  `_lastUserIP_` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auto` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `Idnr` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `firstname` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `lastname` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `street` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `zip` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `city` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `phone` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `email` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `remarks` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `userip` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `report` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `participate` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `lastname_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `firstname_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `street_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `zip_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `city_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `phone_dep` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  `submit` text COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'dfbag_gv_anmeld',
  PRIMARY KEY (`_auto_`)
) ENGINE=MyISAM AUTO_INCREMENT=519 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='transfer table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log`
--

DROP TABLE IF EXISTS `log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `appl` varchar(20) DEFAULT NULL,
  `topic` varchar(50) DEFAULT NULL,
  `refId` int(10) unsigned DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `user` int(10) unsigned DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`lid`),
  KEY `refId` (`refId`),
  KEY `appl` (`appl`)
) ENGINE=MyISAM AUTO_INCREMENT=13327 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Log für Anwendungsereignisse (DFB AG)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `op_ticketPrice`
--

DROP TABLE IF EXISTS `op_ticketPrice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `op_ticketPrice` (
  `auto` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `trip` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Dampf, Diesel, ...\n',
  `descr` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` mediumtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `yearfrom` year(4) DEFAULT NULL COMMENT 'gültig ab Saison',
  `yearto` int(4) unsigned NOT NULL DEFAULT 9999 COMMENT 'gültig bis und mit Saison',
  `seq` int(10) unsigned DEFAULT 0,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'nicht anzuzeigender Eintrag',
  `idrp` int(10) unsigned DEFAULT 0 COMMENT 'Key der Strecke in fb_route_plan',
  `amount1s` decimal(8,2) DEFAULT NULL,
  `amount1r` decimal(8,2) DEFAULT NULL,
  `amount2s` decimal(8,2) DEFAULT NULL,
  `amount2r` decimal(8,2) DEFAULT NULL,
  `grpamount2s` decimal(8,2) DEFAULT NULL,
  `grpamount2r` decimal(8,2) DEFAULT NULL,
  `vouamount2s` decimal(8,2) DEFAULT NULL,
  `vouamount2r` decimal(8,2) DEFAULT NULL,
  `vouamount1s` decimal(8,2) DEFAULT NULL,
  `vouamount1r` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Fahrpreise, für Homepage';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_contact`
--

DROP TABLE IF EXISTS `pl_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_contact` (
  `ident` int(10) unsigned NOT NULL COMMENT 'gem. tb_ident',
  `key_short` varchar(6) DEFAULT NULL COMMENT 'Kurzzeichen oder Ersatz',
  `name` varchar(100) DEFAULT NULL COMMENT 'Matchcode',
  `nameshow` varchar(200) DEFAULT NULL COMMENT 'Matchcode (Ident) mit css',
  `kind` varchar(20) DEFAULT NULL COMMENT 'Kontaktart gem. tb_ident',
  `ispers` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Ist dies eine Person oder nicht?',
  `impomeal` datetime DEFAULT NULL COMMENT 'Zeitpunkt der letzten RWD-Essen-Daten',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ident`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Kontaktdaten-Pivot von Logistiknutzern';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_essen`
--

DROP TABLE IF EXISTS `pl_essen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_essen` (
  `ides` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'KEY',
  `opsday` date DEFAULT NULL COMMENT 'Logistik-Tag',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'Kontakt-Ident',
  `tod` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'time of day: 1/2/3 morgens/mittags/abends',
  `picnic` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Picknick anstelle Mahlzeit',
  `loc` varchar(10) DEFAULT NULL COMMENT 'Bereitstellungsort',
  `ma` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Eigene Bestellung',
  `gu` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Bestellungen für eigene Gäste',
  `arranged` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Flag für arrangiertes Essen',
  `idg` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID Arbeitsgruppe',
  `dept` varchar(20) DEFAULT NULL COMMENT 'Auftraggebende Abteilung',
  `remark` varchar(150) DEFAULT NULL COMMENT 'Kurzkommentar Thema Mahlzeit',
  `productid` int(10) unsigned DEFAULT NULL COMMENT 'Produktionscode / Kostencode',
  `aid` int(10) DEFAULT NULL COMMENT 'ep_assign.aid',
  `tour` varchar(50) DEFAULT NULL COMMENT 'Diensttour  dtcode_xtra#000instruc',
  `summa` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl Individual-MA',
  `sumgrp` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl Gruppen-MA',
  `sumgu` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl echte Gäste',
  `idrep` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Stellvertretender Besteller (bei Gruppen)',
  `rid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Id gem. ep_realloc_ctrl',
  `entered` datetime DEFAULT current_timestamp() COMMENT 'Erstellungszeitpunkt',
  `originator` int(10) unsigned DEFAULT NULL COMMENT 'Ersteller-Org, resp Ersteller w.persönlich',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Modifikationszeitpunkt',
  `modifier` int(10) unsigned DEFAULT NULL COMMENT 'Modifikator',
  `auto` int(10) unsigned DEFAULT NULL COMMENT 'BISHER KEY',
  `grp` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `name1` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `name2` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `email` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  PRIMARY KEY (`ides`),
  UNIQUE KEY `OneByMeal` (`opsday`,`ident`,`tod`),
  KEY `loc` (`loc`),
  KEY `dept` (`dept`),
  KEY `ident` (`ident`),
  KEY `tod` (`tod`)
) ENGINE=MyISAM AUTO_INCREMENT=116671 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Mahlzeitenbestellungen (Personallogistik)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_essen_HIST`
--

DROP TABLE IF EXISTS `pl_essen_HIST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_essen_HIST` (
  `ides` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'KEY',
  `opsday` date DEFAULT NULL COMMENT 'Logistik-Tag',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'Kontakt-Ident',
  `tod` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'time of day: 1/2/3 morgens/mittags/abends',
  `picnic` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Picknick anstelle Mahlzeit',
  `loc` varchar(10) DEFAULT NULL COMMENT 'Bereitstellungsort',
  `ma` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Eigene Bestellung',
  `gu` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Bestellungen für eigene Gäste',
  `arranged` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Flag für arrangiertes Essen',
  `idg` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID Arbeitsgruppe',
  `dept` varchar(20) DEFAULT NULL COMMENT 'Auftraggebende Abteilung',
  `remark` varchar(150) DEFAULT NULL COMMENT 'Kurzkommentar Thema Mahlzeit',
  `productid` int(10) unsigned DEFAULT NULL COMMENT 'Produktionscode / Kostencode',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'ep_assign.aid',
  `tour` varchar(50) DEFAULT NULL COMMENT 'Diensttour  dtcode_xtra#000instruc',
  `summa` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl Einzel-MA',
  `sumgrp` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl Gruppen-MA',
  `sumgu` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl echte Gäste',
  `entered` datetime DEFAULT NULL COMMENT 'Erstellungszeitpunkt',
  `originator` int(10) unsigned DEFAULT NULL COMMENT 'Ersteller-Org, resp Ersteller w.persönlich',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Modifikationszeitpunkt',
  `modifier` int(10) unsigned DEFAULT NULL COMMENT 'Modifikator',
  `auto` int(10) unsigned DEFAULT NULL COMMENT 'BISHER KEY',
  `grp` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `name1` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `name2` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `email` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  PRIMARY KEY (`ides`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `tod` (`tod`),
  KEY `loc` (`loc`),
  KEY `dept` (`dept`)
) ENGINE=MyISAM AUTO_INCREMENT=28448 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Vorjahre Mahlzeitenbestellungen (Personallogistik)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_essen___20170510`
--

DROP TABLE IF EXISTS `pl_essen___20170510`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_essen___20170510` (
  `ides` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'KEY',
  `opsday` date DEFAULT NULL COMMENT 'Logistik-Tag',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'Kontakt-Ident',
  `tod` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'time of day: 1/2/3 morgens/mittags/abends',
  `picnic` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Picknick anstelle Mahlzeit',
  `loc` varchar(10) DEFAULT NULL COMMENT 'Bereitstellungsort',
  `ma` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Eigene Bestellung',
  `gu` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Bestellungen für eigene Gäste',
  `arranged` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Flag für arrangiertes Essen',
  `idg` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID Arbeitsgruppe',
  `dept` varchar(20) DEFAULT NULL COMMENT 'Auftraggebende Abteilung',
  `remark` varchar(150) DEFAULT NULL COMMENT 'Kurzkommentar Thema Mahlzeit',
  `productid` int(10) unsigned DEFAULT NULL COMMENT 'Produktionscode / Kostencode',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'ep_assign.aid',
  `tour` varchar(50) DEFAULT NULL COMMENT 'Diensttour  dtcode_xtra#000instruc',
  `entered` datetime DEFAULT NULL COMMENT 'Erstellungszeitpunkt',
  `originator` int(10) unsigned DEFAULT NULL COMMENT 'Ersteller-Org, resp Ersteller w.persönlich',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Modifikationszeitpunkt',
  `modifier` int(10) unsigned DEFAULT NULL COMMENT 'Modifikator',
  `auto` int(10) unsigned DEFAULT NULL COMMENT 'BISHER KEY',
  `grp` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `name1` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `name2` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `email` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  PRIMARY KEY (`ides`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `tod` (`tod`),
  KEY `loc` (`loc`),
  KEY `dept` (`dept`)
) ENGINE=MyISAM AUTO_INCREMENT=33677 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Mahlzeitenbestellungen (Personallogistik)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_essen___20170906`
--

DROP TABLE IF EXISTS `pl_essen___20170906`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_essen___20170906` (
  `ides` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'KEY',
  `opsday` date DEFAULT NULL COMMENT 'Logistik-Tag',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'Kontakt-Ident',
  `tod` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'time of day: 1/2/3 morgens/mittags/abends',
  `picnic` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Picknick anstelle Mahlzeit',
  `loc` varchar(10) DEFAULT NULL COMMENT 'Bereitstellungsort',
  `ma` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Eigene Bestellung',
  `gu` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Bestellungen für eigene Gäste',
  `arranged` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Flag für arrangiertes Essen',
  `idg` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID Arbeitsgruppe',
  `dept` varchar(20) DEFAULT NULL COMMENT 'Auftraggebende Abteilung',
  `remark` varchar(150) DEFAULT NULL COMMENT 'Kurzkommentar Thema Mahlzeit',
  `productid` int(10) unsigned DEFAULT NULL COMMENT 'Produktionscode / Kostencode',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'ep_assign.aid',
  `tour` varchar(50) DEFAULT NULL COMMENT 'Diensttour  dtcode_xtra#000instruc',
  `summa` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl Individual-MA',
  `sumgrp` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl Gruppen-MA',
  `sumgu` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl echte Gäste',
  `entered` datetime DEFAULT NULL COMMENT 'Erstellungszeitpunkt',
  `originator` int(10) unsigned DEFAULT NULL COMMENT 'Ersteller-Org, resp Ersteller w.persönlich',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Modifikationszeitpunkt',
  `modifier` int(10) unsigned DEFAULT NULL COMMENT 'Modifikator',
  `auto` int(10) unsigned DEFAULT NULL COMMENT 'BISHER KEY',
  `grp` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `name1` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `name2` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `email` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  PRIMARY KEY (`ides`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `tod` (`tod`),
  KEY `loc` (`loc`),
  KEY `dept` (`dept`)
) ENGINE=MyISAM AUTO_INCREMENT=41328 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Mahlzeitenbestellungen (Personallogistik)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_essen___20170908`
--

DROP TABLE IF EXISTS `pl_essen___20170908`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_essen___20170908` (
  `ides` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'KEY',
  `opsday` date DEFAULT NULL COMMENT 'Logistik-Tag',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'Kontakt-Ident',
  `tod` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'time of day: 1/2/3 morgens/mittags/abends',
  `picnic` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Picknick anstelle Mahlzeit',
  `loc` varchar(10) DEFAULT NULL COMMENT 'Bereitstellungsort',
  `ma` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Eigene Bestellung',
  `gu` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Bestellungen für eigene Gäste',
  `arranged` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Flag für arrangiertes Essen',
  `idg` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID Arbeitsgruppe',
  `dept` varchar(20) DEFAULT NULL COMMENT 'Auftraggebende Abteilung',
  `remark` varchar(150) DEFAULT NULL COMMENT 'Kurzkommentar Thema Mahlzeit',
  `productid` int(10) unsigned DEFAULT NULL COMMENT 'Produktionscode / Kostencode',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'ep_assign.aid',
  `tour` varchar(50) DEFAULT NULL COMMENT 'Diensttour  dtcode_xtra#000instruc',
  `summa` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl Individual-MA',
  `sumgrp` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl Gruppen-MA',
  `sumgu` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl echte Gäste',
  `entered` datetime DEFAULT NULL COMMENT 'Erstellungszeitpunkt',
  `originator` int(10) unsigned DEFAULT NULL COMMENT 'Ersteller-Org, resp Ersteller w.persönlich',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Modifikationszeitpunkt',
  `modifier` int(10) unsigned DEFAULT NULL COMMENT 'Modifikator',
  `auto` int(10) unsigned DEFAULT NULL COMMENT 'BISHER KEY',
  `grp` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `name1` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `name2` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `email` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  PRIMARY KEY (`ides`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `tod` (`tod`),
  KEY `loc` (`loc`),
  KEY `dept` (`dept`)
) ENGINE=MyISAM AUTO_INCREMENT=41409 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Mahlzeitenbestellungen (Personallogistik)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_essen___20191108`
--

DROP TABLE IF EXISTS `pl_essen___20191108`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_essen___20191108` (
  `ides` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'KEY',
  `opsday` date DEFAULT NULL COMMENT 'Logistik-Tag',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'Kontakt-Ident',
  `tod` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'time of day: 1/2/3 morgens/mittags/abends',
  `picnic` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Picknick anstelle Mahlzeit',
  `loc` varchar(10) DEFAULT NULL COMMENT 'Bereitstellungsort',
  `ma` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Eigene Bestellung',
  `gu` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Bestellungen für eigene Gäste',
  `arranged` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Flag für arrangiertes Essen',
  `rid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Id gem. ep_realloc_ctrl',
  `idg` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID Arbeitsgruppe',
  `dept` varchar(20) DEFAULT NULL COMMENT 'Auftraggebende Abteilung',
  `remark` varchar(150) DEFAULT NULL COMMENT 'Kurzkommentar Thema Mahlzeit',
  `productid` int(10) unsigned DEFAULT NULL COMMENT 'Produktionscode / Kostencode',
  `aid` int(10) unsigned DEFAULT NULL COMMENT 'ep_assign.aid',
  `tour` varchar(50) DEFAULT NULL COMMENT 'Diensttour  dtcode_xtra#000instruc',
  `summa` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl Individual-MA',
  `sumgrp` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl Gruppen-MA',
  `sumgu` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl echte Gäste',
  `idrep` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Stellvertretender Besteller (bei Gruppen)',
  `entered` datetime DEFAULT NULL COMMENT 'Erstellungszeitpunkt',
  `originator` int(10) unsigned DEFAULT NULL COMMENT 'Ersteller-Org, resp Ersteller w.persönlich',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Modifikationszeitpunkt',
  `modifier` int(10) unsigned DEFAULT NULL COMMENT 'Modifikator',
  `auto` int(10) unsigned DEFAULT NULL COMMENT 'BISHER KEY',
  `grp` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `name1` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `name2` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `email` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  PRIMARY KEY (`ides`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `tod` (`tod`),
  KEY `loc` (`loc`),
  KEY `dept` (`dept`)
) ENGINE=MyISAM AUTO_INCREMENT=72741 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Mahlzeitenbestellungen (Personallogistik)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_essen___20200104_by191219`
--

DROP TABLE IF EXISTS `pl_essen___20200104_by191219`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_essen___20200104_by191219` (
  `ides` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'KEY',
  `opsday` date DEFAULT NULL COMMENT 'Logistik-Tag',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'Kontakt-Ident',
  `tod` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'time of day: 1/2/3 morgens/mittags/abends',
  `picnic` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Picknick anstelle Mahlzeit',
  `loc` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Bereitstellungsort',
  `ma` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Eigene Bestellung',
  `gu` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Bestellungen für eigene Gäste',
  `arranged` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Flag für arrangiertes Essen',
  `idg` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID Arbeitsgruppe',
  `dept` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Auftraggebende Abteilung',
  `remark` varchar(150) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Kurzkommentar Thema Mahlzeit',
  `productid` int(10) unsigned DEFAULT NULL COMMENT 'Produktionscode / Kostencode',
  `aid` int(10) DEFAULT NULL COMMENT 'ep_assign.aid',
  `tour` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Diensttour  dtcode_xtra#000instruc',
  `summa` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl Individual-MA',
  `sumgrp` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl Gruppen-MA',
  `sumgu` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl echte Gäste',
  `idrep` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Stellvertretender Besteller (bei Gruppen)',
  `rid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Id gem. ep_realloc_ctrl',
  `entered` datetime DEFAULT current_timestamp() COMMENT 'Erstellungszeitpunkt',
  `originator` int(10) unsigned DEFAULT NULL COMMENT 'Ersteller-Org, resp Ersteller w.persönlich',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Modifikationszeitpunkt',
  `modifier` int(10) unsigned DEFAULT NULL COMMENT 'Modifikator',
  `auto` int(10) unsigned DEFAULT NULL COMMENT 'BISHER KEY',
  `grp` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'BISHER',
  `name1` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'BISHER',
  `name2` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'BISHER',
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'BISHER'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_essen___20200426`
--

DROP TABLE IF EXISTS `pl_essen___20200426`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_essen___20200426` (
  `ides` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'KEY',
  `opsday` date DEFAULT NULL COMMENT 'Logistik-Tag',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'Kontakt-Ident',
  `tod` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'time of day: 1/2/3 morgens/mittags/abends',
  `picnic` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Picknick anstelle Mahlzeit',
  `loc` varchar(10) DEFAULT NULL COMMENT 'Bereitstellungsort',
  `ma` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Eigene Bestellung',
  `gu` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Bestellungen für eigene Gäste',
  `arranged` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Flag für arrangiertes Essen',
  `idg` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ID Arbeitsgruppe',
  `dept` varchar(20) DEFAULT NULL COMMENT 'Auftraggebende Abteilung',
  `remark` varchar(150) DEFAULT NULL COMMENT 'Kurzkommentar Thema Mahlzeit',
  `productid` int(10) unsigned DEFAULT NULL COMMENT 'Produktionscode / Kostencode',
  `aid` int(10) DEFAULT NULL COMMENT 'ep_assign.aid',
  `tour` varchar(50) DEFAULT NULL COMMENT 'Diensttour  dtcode_xtra#000instruc',
  `summa` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl Individual-MA',
  `sumgrp` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl Gruppen-MA',
  `sumgu` smallint(5) unsigned DEFAULT NULL COMMENT 'Bereinigte Anzahl echte Gäste',
  `idrep` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Stellvertretender Besteller (bei Gruppen)',
  `rid` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Id gem. ep_realloc_ctrl',
  `entered` datetime DEFAULT current_timestamp() COMMENT 'Erstellungszeitpunkt',
  `originator` int(10) unsigned DEFAULT NULL COMMENT 'Ersteller-Org, resp Ersteller w.persönlich',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Modifikationszeitpunkt',
  `modifier` int(10) unsigned DEFAULT NULL COMMENT 'Modifikator',
  `auto` int(10) unsigned DEFAULT NULL COMMENT 'BISHER KEY',
  `grp` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `name1` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `name2` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `email` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  PRIMARY KEY (`ides`),
  UNIQUE KEY `OneByMeal` (`opsday`,`ident`,`tod`),
  KEY `loc` (`loc`),
  KEY `dept` (`dept`),
  KEY `ident` (`ident`),
  KEY `tod` (`tod`)
) ENGINE=MyISAM AUTO_INCREMENT=78649 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Mahlzeitenbestellungen (Personallogistik)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_essen__arc`
--

DROP TABLE IF EXISTS `pl_essen__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_essen__arc` (
  `ides` text DEFAULT NULL,
  `opsday` text DEFAULT NULL,
  `ident` text DEFAULT NULL,
  `tod` text DEFAULT NULL,
  `picnic` text DEFAULT NULL,
  `loc` text DEFAULT NULL,
  `ma` text DEFAULT NULL,
  `gu` text DEFAULT NULL,
  `arranged` text DEFAULT NULL,
  `idg` text DEFAULT NULL,
  `dept` text DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `productid` text DEFAULT NULL,
  `aid` text DEFAULT NULL,
  `tour` text DEFAULT NULL,
  `summa` text DEFAULT NULL,
  `sumgrp` text DEFAULT NULL,
  `sumgu` text DEFAULT NULL,
  `idrep` text DEFAULT NULL,
  `rid` text DEFAULT NULL,
  `entered` text DEFAULT NULL,
  `originator` text DEFAULT NULL,
  `modified` text DEFAULT NULL,
  `modifier` text DEFAULT NULL,
  `auto` text DEFAULT NULL,
  `grp` text DEFAULT NULL,
  `name1` text DEFAULT NULL,
  `name2` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_essen__initial`
--

DROP TABLE IF EXISTS `pl_essen__initial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_essen__initial` (
  `ides` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'KEY',
  `opsday` date DEFAULT NULL COMMENT 'Logistik-Tag',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'Kontakt-Ident',
  `tod` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '1/2/3 morgens/mittags/abends',
  `picnic` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Picknick anstelle Mahlzeit',
  `loc` varchar(10) DEFAULT NULL COMMENT 'Bereitstellungsort',
  `ma` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 Eigene Bestellung',
  `gu` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Bestellungen für eigene Gäste',
  `dept` varchar(20) DEFAULT NULL COMMENT 'Auftraggebende Abteilung',
  `idg` int(10) unsigned DEFAULT NULL COMMENT 'ID Arbeitsgruppe',
  `peer` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'TEMPORARY: Gruppenkollegen',
  `arranged` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Flag für arrangiertes Essen',
  `dutid` int(10) unsigned DEFAULT NULL COMMENT 'ep_duty.did',
  `tour` varchar(50) DEFAULT NULL COMMENT 'Diensttour  dtcode_xtra#000instruc',
  `productid` int(10) unsigned DEFAULT NULL COMMENT 'Produktionscode / Kostencode',
  `entered` datetime DEFAULT NULL COMMENT 'Erstellungszeitpunkt',
  `originator` int(10) unsigned DEFAULT NULL COMMENT 'Ersteller-Org, resp Ersteller w.persönlich',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Modifikationszeitpunkt',
  `modifier` int(10) unsigned DEFAULT NULL COMMENT 'Modifikator',
  `auto` int(10) unsigned DEFAULT NULL COMMENT 'BISHER KEY',
  `date` date DEFAULT NULL COMMENT 'BISHER',
  `meal` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `location` varchar(20) DEFAULT NULL COMMENT 'BISHER',
  `numPers` tinyint(3) unsigned DEFAULT NULL COMMENT 'BISHER',
  `numGuest` smallint(5) unsigned DEFAULT NULL COMMENT 'BISHER',
  `einsatz` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `group` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `email` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `lastname` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  `firstname` varchar(100) DEFAULT NULL COMMENT 'BISHER',
  PRIMARY KEY (`ides`),
  KEY `ident` (`ident`),
  KEY `opsday` (`opsday`),
  KEY `tod` (`tod`),
  KEY `loc` (`loc`),
  KEY `dept` (`dept`)
) ENGINE=MyISAM AUTO_INCREMENT=224685 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Mahlzeitenbestellungen (Personallogistik)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_gruppen`
--

DROP TABLE IF EXISTS `pl_gruppen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_gruppen` (
  `idg` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gruppe` varchar(50) NOT NULL COMMENT 'Bezeichnung Gruppe',
  `kind` tinyint(3) unsigned NOT NULL DEFAULT 5 COMMENT '0 privat, 1:Einzelne, 5:Org, 9 lose gruppiert',
  `hide` tinyint(3) unsigned DEFAULT NULL,
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Referenzkontakt',
  `matchcode` varchar(100) DEFAULT NULL COMMENT 'Bezeichnung Referenzkonakt',
  `seq` smallint(6) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idg`),
  KEY `ident` (`ident`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Gruppen für die Anmeldungzum Essen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_gruppen___2019`
--

DROP TABLE IF EXISTS `pl_gruppen___2019`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_gruppen___2019` (
  `idg` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gruppe` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Bezeichnung Gruppe',
  `kind` tinyint(3) unsigned NOT NULL DEFAULT 5 COMMENT '0 privat, 1:Einzelne, 5:Org, 9 lose gruppiert',
  `hide` tinyint(3) unsigned DEFAULT NULL,
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Referenzkontakt',
  `matchcode` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Bezeichnung Referenzkonakt',
  `seq` smallint(6) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idg`),
  KEY `ident` (`ident`)
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='Gruppen für die Anmeldungzum Essen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_kitchen_ops`
--

DROP TABLE IF EXISTS `pl_kitchen_ops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_kitchen_ops` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loc` varchar(3) NOT NULL COMMENT 'Küchenort',
  `box` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Lunchbox erhältlich',
  `ordercode` varchar(3) NOT NULL COMMENT 'Mahlzeitenbestellcode',
  `yearfrom` year(4) NOT NULL DEFAULT 0000 COMMENT 'gültig ab Jahr',
  `yearto` int(4) unsigned NOT NULL DEFAULT 9999 COMMENT 'gültig bis Jahr',
  `tours` varchar(50) DEFAULT NULL COMMENT 'Liste von relevanten ep_dtour:dtcode',
  `regio` varchar(50) NOT NULL DEFAULT '' COMMENT 'Region analog ep_dtour',
  `s1` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'mit Service 1 morgens',
  `s2` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'mit Service 2 mittags',
  `s3` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'mit Service 3 abends',
  `remark` varchar(100) NOT NULL COMMENT 'Kommentar',
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  `zp` varchar(10) NOT NULL DEFAULT '' COMMENT 'OLD, Zeitperiode übersteuert meals123',
  `meals123` varchar(5) NOT NULL DEFAULT '1 1 1' COMMENT 'OLD, mo/mi/ab: 1 oder 0 je nach Service',
  `lubox` varchar(3) NOT NULL COMMENT 'OLD, Kürzel für ein Lunchpaket von dieser Kantine',
  `lu123` varchar(5) DEFAULT '0 0 0' COMMENT 'OLD, mo/mi/ab: 1 oder 0 für Lunchboxherstellung',
  PRIMARY KEY (`idx`),
  KEY `loc` (`ordercode`),
  KEY `cantina_picnic` (`loc`,`box`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Die Diensttouren, die auf den Betrieb einer Kantine hinweisen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_kitchen_opsTEST`
--

DROP TABLE IF EXISTS `pl_kitchen_opsTEST`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_kitchen_opsTEST` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `loc` varchar(3) NOT NULL COMMENT 'Küchenort',
  `box` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Lunchbox erhältlich',
  `ordercode` varchar(3) NOT NULL COMMENT 'Mahlzeitenbestellcode',
  `yearfrom` year(4) NOT NULL DEFAULT 0000 COMMENT 'gültig ab Jahr',
  `yearto` int(4) unsigned NOT NULL DEFAULT 9999 COMMENT 'gültig bis Jahr',
  `tours` varchar(50) DEFAULT NULL COMMENT 'Liste von relevanten ep_dtour:dtcode',
  `regio` varchar(50) NOT NULL DEFAULT '' COMMENT 'Region analog ep_dtour',
  `s1` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'mit Service 1 morgens',
  `s2` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'mit Service 2 mittags',
  `s3` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'mit Service 3 abends',
  `remark` varchar(100) NOT NULL COMMENT 'Kommentar',
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  `zp` varchar(10) NOT NULL DEFAULT '' COMMENT 'OLD, Zeitperiode übersteuert meals123',
  `meals123` varchar(5) NOT NULL DEFAULT '1 1 1' COMMENT 'OLD, mo/mi/ab: 1 oder 0 je nach Service',
  `lubox` varchar(3) NOT NULL COMMENT 'OLD, Kürzel für ein Lunchpaket von dieser Kantine',
  `lu123` varchar(5) DEFAULT '0 0 0' COMMENT 'OLD, mo/mi/ab: 1 oder 0 für Lunchboxherstellung',
  PRIMARY KEY (`idx`),
  KEY `loc` (`ordercode`),
  KEY `cantina_picnic` (`loc`,`box`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Die Diensttouren, die auf den Betrieb einer Kantine hinweisen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_location`
--

DROP TABLE IF EXISTS `pl_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_location` (
  `lid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent` int(10) unsigned NOT NULL DEFAULT 0,
  `location` varchar(100) DEFAULT NULL COMMENT 'Formelle Bezeichnung',
  `loc` varchar(20) NOT NULL DEFAULT '??' COMMENT 'Kurzbezeichnung',
  `zone` varchar(10) DEFAULT NULL,
  `cantina` varchar(50) DEFAULT NULL COMMENT 'Kantinen-Kurzbezeichung und Regeln',
  `koch_tour` int(10) unsigned DEFAULT NULL COMMENT 'Aktuelle Betriebstagereferenztour',
  `ktvfrom` year(4) DEFAULT NULL COMMENT 'koch_tour validfrom opsyear',
  `ktids` varchar(250) DEFAULT NULL COMMENT 'Tour-dtid-Liste ehemaliger Referenztouren mit altem dtcode',
  `hide` tinyint(3) unsigned DEFAULT 0,
  `fake` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Pseudo-Ort',
  `param` varchar(50) DEFAULT '' COMMENT 'entspr Eintrag in td_param.accommodation',
  `RWD` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'redundant verlinkt mit RWD_Unterkunft_location',
  `adm_ukft` int(10) unsigned DEFAULT 0 COMMENT 'Verantwortliche Lokaladministration Unterkunft',
  `adm_essen` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Verantwortliche Lokaladministration Verpflegung',
  `lft` smallint(5) unsigned DEFAULT 0,
  `rgt` smallint(5) unsigned DEFAULT 0,
  `nsl` smallint(5) unsigned DEFAULT 0 COMMENT 'Hierarchiestufe',
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`lid`),
  KEY `location` (`location`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Orte und Zuständigkeit der Personallogistik';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_meal_plan`
--

DROP TABLE IF EXISTS `pl_meal_plan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_meal_plan` (
  `opsday` date NOT NULL COMMENT 'Betriebstag',
  `orderloc` varchar(10) NOT NULL DEFAULT '' COMMENT 'Essensbestellcode',
  `loc` varchar(10) NOT NULL DEFAULT '' COMMENT 'Ortscode der Kantine',
  `box` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT '0/1 definiert Luchbox-Mahlzeiten',
  `is1` varchar(10) NOT NULL DEFAULT '' COMMENT 'Morgenessenservice als orderloc (oder leer)',
  `is2` varchar(10) NOT NULL DEFAULT '' COMMENT 'Mittagessenservice als orderloc (oder leer)',
  `is3` varchar(10) NOT NULL DEFAULT '' COMMENT 'Abendessenservice als orderloc (oder leer)',
  `monat` varchar(7) NOT NULL DEFAULT '' COMMENT 'yyyy-mm',
  `mt` varchar(2) NOT NULL DEFAULT '' COMMENT 'mm',
  `tg` tinyint(3) unsigned NOT NULL COMMENT 't (Tag als Kurzzahl)',
  `onduty` varchar(100) DEFAULT NULL COMMENT 'Liste der eingeplanten Touren-dtid',
  `persfrom` varchar(2) NOT NULL DEFAULT '' COMMENT 'hh: Beginn Personalpräsenzzeit',
  `persto` varchar(2) NOT NULL DEFAULT '' COMMENT 'hh: Ende Personalpräsenzzeit',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`opsday`,`orderloc`),
  KEY `orderloc` (`orderloc`),
  KEY `loc` (`loc`),
  KEY `box` (`box`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='PIVOT aller Essensmöglichkeiten pro Tag und Ort / OBSOLET ab 2020';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_meal_time`
--

DROP TABLE IF EXISTS `pl_meal_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_meal_time` (
  `tod` int(10) unsigned NOT NULL COMMENT 'time of day',
  `description` varchar(20) DEFAULT NULL COMMENT 'Bezeichnung',
  `cook_at_place` time DEFAULT NULL COMMENT 'Wann muss Koch vor Ort geplant sein?',
  `descr` varchar(2) DEFAULT NULL COMMENT 'Kurzbezeichnung',
  `mcod` varchar(20) DEFAULT NULL COMMENT 'Code für transl()',
  PRIMARY KEY (`tod`),
  KEY `descr` (`descr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Die drei Mahlzeiten mit ihren Referenzzeiten für die Diensttourbildung von Köchen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_room`
--

DROP TABLE IF EXISTS `pl_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_room` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(100) DEFAULT NULL,
  `room` varchar(100) DEFAULT NULL,
  `nmbrOfBeds` int(11) DEFAULT 1,
  `reserved` varchar(100) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  `hide` varchar(100) DEFAULT '0',
  PRIMARY KEY (`auto`),
  UNIQUE KEY `location_room` (`location`,`room`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Unterkunftsliste vorübergehend';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_ukft`
--

DROP TABLE IF EXISTS `pl_ukft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_ukft` (
  `idun` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `night` date NOT NULL,
  `ident` int(10) unsigned DEFAULT 0,
  `location` varchar(100) NOT NULL,
  `room` varchar(100) NOT NULL,
  `bed` varchar(100) DEFAULT NULL,
  `singleroom` varchar(20) DEFAULT NULL,
  `ongoing` tinyint(3) unsigned DEFAULT 0 COMMENT 'durchgehende Reservation: Objekt z Vfg',
  `grp` varchar(50) DEFAULT NULL,
  `nothing` int(10) unsigned DEFAULT NULL,
  `einsatz` varchar(100) DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `locextended` tinyint(4) NOT NULL DEFAULT 0,
  `comment` mediumtext DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  `auto` int(10) unsigned DEFAULT NULL,
  `name1` varchar(100) DEFAULT NULL,
  `name2` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`idun`),
  UNIQUE KEY `night_location_room` (`night`,`location`,`room`,`bed`,`nothing`),
  KEY `firstname` (`name1`),
  KEY `lastname` (`name2`),
  KEY `email` (`email`),
  KEY `ident` (`ident`),
  KEY `einsatz` (`einsatz`),
  KEY `dept` (`dept`),
  KEY `auto` (`auto`)
) ENGINE=MyISAM AUTO_INCREMENT=38106 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Unterkunftsliste Daten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pl_ukft_testdata`
--

DROP TABLE IF EXISTS `pl_ukft_testdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pl_ukft_testdata` (
  `idun` int(10) unsigned NOT NULL,
  `night` date NOT NULL,
  `ident` int(10) unsigned DEFAULT 0,
  `location` varchar(100) NOT NULL,
  `room` varchar(100) NOT NULL,
  `bed` varchar(100) DEFAULT NULL,
  `singleroom` varchar(20) DEFAULT NULL,
  `ongoing` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'durchgehende Reservation: Objekt z Vfg',
  `grp` varchar(50) DEFAULT NULL,
  `nothing` int(10) unsigned DEFAULT NULL,
  `einsatz` varchar(100) DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `locextended` tinyint(4) NOT NULL DEFAULT 0,
  `comment` mediumtext DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  `auto` int(10) unsigned DEFAULT NULL,
  `name1` varchar(100) DEFAULT NULL,
  `name2` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3510 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Unterkunftsliste Daten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roma_plan___3379`
--

DROP TABLE IF EXISTS `roma_plan___3379`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roma_plan___3379` (
  `idrop` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Id',
  `idzp` int(10) unsigned NOT NULL COMMENT 'Id fp_zug_plan',
  `idru` int(10) unsigned NOT NULL COMMENT 'Id fp_roma_umlauf',
  `seq` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Abfolge von Komp-Änderungen',
  `idroma` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Einzelfahrzeug gem fb_rollmat',
  `idcw` int(10) unsigned DEFAULT NULL COMMENT 'Komposition gem fb_rollcomp',
  `opsday` date DEFAULT NULL COMMENT 'R: Anfangsdatum Umlauf',
  `lap` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'R: Zusatztage Umlauf',
  `train` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'R: Zugnummer',
  `opsmode` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Betriebsart (drive-bezogen)',
  `dep` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT 'R: Ausgangsort',
  `fztype` tinyint(3) unsigned NOT NULL COMMENT 'R: Fahrzeugart 1:Dampf, 4: Diesel, 7: Wagen',
  `drive` tinyint(3) unsigned NOT NULL COMMENT 'R: Antriebsverhalten: 1:Lok, 2:gekoppelt, 0:Wagen',
  `idza` int(10) unsigned DEFAULT NULL COMMENT 'R: Id fp_zug_anford',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifier` int(10) unsigned NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roma_plan_heuer`
--

DROP TABLE IF EXISTS `roma_plan_heuer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roma_plan_heuer` (
  `idrop` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Id',
  `idzp` int(10) unsigned NOT NULL COMMENT 'Id fp_zug_plan',
  `idru` int(10) unsigned NOT NULL COMMENT 'Id fp_roma_umlauf',
  `seq` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Abfolge von Komp-Änderungen',
  `idroma` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Einzelfahrzeug gem fb_rollmat',
  `idcw` int(10) unsigned DEFAULT NULL COMMENT 'Komposition gem fb_rollcomp',
  `opsday` date DEFAULT NULL COMMENT 'R: Anfangsdatum Umlauf',
  `lap` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'R: Zusatztage Umlauf',
  `train` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'R: Zugnummer',
  `opsmode` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Betriebsart (drive-bezogen)',
  `dep` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT 'R: Ausgangsort',
  `fztype` tinyint(3) unsigned NOT NULL COMMENT 'R: Fahrzeugart 1:Dampf, 4: Diesel, 7: Wagen',
  `drive` tinyint(3) unsigned NOT NULL COMMENT 'R: Antriebsverhalten: 1:Lok, 2:gekoppelt, 0:Wagen',
  `idza` int(10) unsigned DEFAULT NULL COMMENT 'R: Id fp_zug_anford',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifier` int(10) unsigned NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `roma_plan_modif`
--

DROP TABLE IF EXISTS `roma_plan_modif`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roma_plan_modif` (
  `idrop` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Id',
  `idzp` int(10) unsigned NOT NULL COMMENT 'Id fp_zug_plan',
  `idru` int(10) unsigned NOT NULL COMMENT 'Id fp_roma_umlauf',
  `seq` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Abfolge von Komp-Änderungen',
  `idroma` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Einzelfahrzeug gem fb_rollmat',
  `idcw` int(10) unsigned DEFAULT NULL COMMENT 'Komposition gem fb_rollcomp',
  `opsday` date DEFAULT NULL COMMENT 'R: Anfangsdatum Umlauf',
  `lap` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'R: Zusatztage Umlauf',
  `train` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT 'R: Zugnummer',
  `rpart` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'R: Streckenabschnittsindex',
  `opsmode` varchar(25) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Betriebsart (drive-bezogen)',
  `dep` varchar(5) CHARACTER SET utf8 DEFAULT NULL COMMENT 'R: Ausgangsort',
  `fztype` tinyint(3) unsigned NOT NULL COMMENT 'R: Fahrzeugart 1:Dampf, 4: Diesel, 7: Wagen',
  `drive` tinyint(3) unsigned NOT NULL COMMENT 'R: Antriebsverhalten: 1:Lok, 2:gekoppelt, 0:Wagen',
  `idza` int(10) unsigned DEFAULT NULL COMMENT 'R: Id fp_zug_anford',
  `only` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'nur zur Steuerung des Formularinputs genutzt',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rwd_essen___5`
--

DROP TABLE IF EXISTS `rwd_essen___5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rwd_essen___5` (
  `auto` int(11) NOT NULL DEFAULT 0,
  `ident` int(11) DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `group` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `location` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `einsatz` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` date DEFAULT NULL,
  `meal` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `numPers` int(11) DEFAULT NULL,
  `numGuest` int(11) DEFAULT NULL,
  `arranged` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Flag für arrangiertes Essen',
  `dutid` int(10) unsigned DEFAULT NULL COMMENT 'ep_duty.did',
  `tour` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Diensttour  dtcode_xtra#000instruc',
  `productid` int(10) unsigned DEFAULT NULL COMMENT 'Produktionscode / Kostencode',
  `firstname` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `lastname` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `dept` varchar(100) CHARACTER SET utf8 DEFAULT '-ohne-',
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `smsHandbuch`
--

DROP TABLE IF EXISTS `smsHandbuch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `smsHandbuch` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `seq` int(11) DEFAULT 1,
  `text` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `snailmail`
--

DROP TABLE IF EXISTS `snailmail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `snailmail` (
  `sid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ident` int(10) unsigned NOT NULL DEFAULT 0,
  `r_short` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `topic` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `creator` int(10) unsigned DEFAULT NULL,
  `completed` date NOT NULL DEFAULT '9999-12-31',
  `admin` int(10) unsigned DEFAULT NULL,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`sid`),
  KEY `ident` (`ident`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COMMENT='Mittels Schneckenpost zu erledigende Aufgaben';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sql_filter`
--

DROP TABLE IF EXISTS `sql_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sql_filter` (
  `filt` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Name des Filters',
  `where` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'MySQL-WHERE-Sequenz',
  PRIMARY KEY (`filt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='MySQL-Sequencen, verwendbar in WHERE';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `td_param`
--

DROP TABLE IF EXISTS `td_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_param` (
  `sector` varchar(20) NOT NULL,
  `parid` varchar(30) NOT NULL,
  `parent` varchar(30) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `value` varchar(255) NOT NULL DEFAULT '',
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0 COMMENT 'versteckt, nicht nutzen',
  `header` tinyint(1) DEFAULT 0 COMMENT 'reine Titelzeile',
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Hierarchiestufe',
  `sort` int(6) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`sector`,`parid`),
  KEY `parent` (`parent`),
  KEY `parid` (`parid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Parameter';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `td_param___orig`
--

DROP TABLE IF EXISTS `td_param___orig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_param___orig` (
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
  KEY `parid` (`parid`),
  FULLTEXT KEY `tb_param` (`sector`,`parid`,`parent`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Parameter';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `td_param_plus`
--

DROP TABLE IF EXISTS `td_param_plus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_param_plus` (
  `sector` varchar(20) NOT NULL,
  `parid` varchar(30) NOT NULL,
  `int1` int(11) DEFAULT NULL,
  `int2` int(11) DEFAULT NULL,
  `int3` int(11) DEFAULT NULL,
  `string1` varchar(250) DEFAULT NULL,
  `string2` varchar(250) DEFAULT NULL,
  `string3` varchar(250) DEFAULT NULL,
  `text1` text DEFAULT NULL,
  `date1` datetime DEFAULT NULL,
  `date2` datetime DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`sector`,`parid`),
  KEY `parid` (`parid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Parameter';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `td_param_save`
--

DROP TABLE IF EXISTS `td_param_save`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `td_param_save` (
  `sector` varchar(20) NOT NULL,
  `parid` varchar(30) NOT NULL,
  `parent` varchar(30) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `nsl` smallint(5) unsigned NOT NULL DEFAULT 0,
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
-- Table structure for table `template_table`
--

DROP TABLE IF EXISTS `template_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `template_table` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(100) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Grundgerüst einer typischen Tabelle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tf_product`
--

DROP TABLE IF EXISTS `tf_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tf_product` (
  `sector` varchar(20) NOT NULL,
  `parid` varchar(30) NOT NULL,
  `parent` varchar(30) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `value` varchar(255) NOT NULL,
  `lft` smallint(6) NOT NULL DEFAULT 0,
  `rgt` smallint(6) NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `header` tinyint(1) DEFAULT 0 COMMENT '0/1 Titelzeile',
  `sort` int(6) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`sector`,`parid`),
  KEY `parent` (`parent`),
  KEY `parid` (`parid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Finanzparameter';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tl_accomm`
--

DROP TABLE IF EXISTS `tl_accomm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_accomm` (
  `idac` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(30) CHARACTER SET utf8 NOT NULL,
  `parent` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(80) CHARACTER SET utf8 DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 NOT NULL,
  `lft` smallint(6) NOT NULL DEFAULT 0,
  `rgt` smallint(6) NOT NULL DEFAULT 0,
  `hide` tinyint(1) DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`idac`),
  KEY `category` (`category`),
  KEY `lft` (`lft`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tl_preference`
--

DROP TABLE IF EXISTS `tl_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tl_preference` (
  `ident` int(10) unsigned NOT NULL,
  `RE_an` varchar(5) NOT NULL,
  `RE_ab` varchar(5) NOT NULL,
  `GL_an` varchar(5) NOT NULL,
  `GL_ab` varchar(5) NOT NULL,
  `OW_an` varchar(5) NOT NULL,
  `OW_ab` varchar(5) NOT NULL,
  `mod_ardp` datetime DEFAULT NULL,
  `mod_ardp_who` int(10) unsigned DEFAULT NULL,
  `mod_meals` datetime DEFAULT NULL,
  `mod_meals_who` int(10) unsigned DEFAULT NULL,
  `depotzfw` varchar(50) NOT NULL,
  `alpenhof` varchar(50) NOT NULL,
  `poestli` varchar(50) NOT NULL,
  `desalpes` varchar(50) NOT NULL,
  `zumdoerfli` varchar(50) NOT NULL,
  `REelse` varchar(50) NOT NULL,
  `blauhaus` varchar(50) NOT NULL,
  `GLelse` varchar(50) NOT NULL,
  `OWelse` varchar(50) NOT NULL,
  `mod_accom` datetime DEFAULT NULL,
  `mod_accom_who` int(10) unsigned DEFAULT NULL,
  `description` varchar(100) NOT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`ident`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Individuelle PrÃ¤ferenzen und Hinweise zur Mitarbeiterlogistik';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmp___scratch`
--

DROP TABLE IF EXISTS `tmp___scratch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp___scratch` (
  `loginuser` int(10) unsigned NOT NULL DEFAULT 0,
  `pid` int(10) unsigned NOT NULL DEFAULT 0,
  `anykey` varchar(200) NOT NULL DEFAULT '',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `hint` text DEFAULT NULL,
  `wip` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`loginuser`,`pid`,`anykey`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmp___string`
--

DROP TABLE IF EXISTS `tmp___string`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp___string` (
  `ident` int(10) unsigned DEFAULT NULL,
  `description` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tt_month`
--

DROP TABLE IF EXISTS `tt_month`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_month` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Hilfstabelle 12 sequentiellen Zahlen';
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
-- Table structure for table `ukft_keep`
--

DROP TABLE IF EXISTS `ukft_keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ukft_keep` (
  `auto` int(10) unsigned NOT NULL DEFAULT 0,
  `ident` int(10) unsigned DEFAULT 0,
  `firstname` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `lastname` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `einsatz` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `dept` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `night` date NOT NULL,
  `location` varchar(100) CHARACTER SET utf8 NOT NULL,
  `room` varchar(100) CHARACTER SET utf8 NOT NULL,
  `bed` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `singleroom` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `ongoing` tinyint(3) unsigned DEFAULT 0 COMMENT 'Durchgehende Reservation: Objekt z Vfg',
  `nothing` int(10) unsigned DEFAULT NULL,
  `group` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `locextended` tinyint(4) NOT NULL DEFAULT 0,
  `comment` mediumtext CHARACTER SET utf8 DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vb_umsatztag_basket`
--

DROP TABLE IF EXISTS `vb_umsatztag_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vb_umsatztag_basket` (
  `ida` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `kasse` varchar(20) DEFAULT NULL,
  `opsday` date DEFAULT NULL,
  `operator` int(10) unsigned DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `vorsaldo` decimal(10,2) DEFAULT NULL,
  `deviation` decimal(10,2) NOT NULL DEFAULT 0.00,
  `pay_extract` decimal(10,2) NOT NULL DEFAULT 0.00,
  `inivalue` decimal(10,2) DEFAULT NULL,
  `tagesumsatz` decimal(10,2) DEFAULT NULL,
  `endsaldo` decimal(10,2) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`ida`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Eingabedaten für den Kassenabschluss';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_homepage_teaser`
--

DROP TABLE IF EXISTS `web_homepage_teaser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_homepage_teaser` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `teaserkey` varchar(100) CHARACTER SET utf8 DEFAULT '1',
  `pageid` varchar(45) CHARACTER SET utf8 DEFAULT '986',
  `typoTitle` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(100) CHARACTER SET utf8 DEFAULT 'de',
  `uid` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aktiv` tinyint(4) DEFAULT 0,
  `permFE` varchar(100) CHARACTER SET utf8 DEFAULT '30',
  `validfrom` date DEFAULT '0000-00-00',
  `validto` date DEFAULT '9999-12-31',
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `pivot` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Homepage Teaser';
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
