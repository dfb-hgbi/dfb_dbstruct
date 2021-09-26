-- MySQL dump 10.19  Distrib 10.3.29-MariaDB, for FreeBSD12.2 (amd64)
--
-- Host: localhost    Database: dfbch1_ISFB
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
-- Table structure for table `Beurkundete`
--

DROP TABLE IF EXISTS `Beurkundete`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Beurkundete` (
  `onbehalf` int(10) unsigned NOT NULL,
  `parts` bigint(21) NOT NULL DEFAULT 0,
  `maxpaid` decimal(34,2) DEFAULT NULL,
  `urkunde` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  PRIMARY KEY (`onbehalf`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_dons_statisch`
--

DROP TABLE IF EXISTS `_dons_statisch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_dons_statisch` (
  `valuta` date DEFAULT NULL,
  `donYear` varchar(4) DEFAULT NULL,
  `onbehalf` int(10) unsigned DEFAULT NULL,
  `localsum` decimal(12,2) DEFAULT NULL,
  `anzpay` smallint(5) unsigned DEFAULT NULL,
  `u100` int(11) DEFAULT NULL,
  `u1000` int(11) DEFAULT NULL,
  `u2000` int(11) DEFAULT NULL,
  `u10000` int(11) DEFAULT NULL,
  `u100000` int(11) DEFAULT NULL,
  `u1M` int(11) DEFAULT NULL,
  `ab1M` int(11) DEFAULT NULL,
  KEY `donYear` (`donYear`),
  KEY `onbehalf` (`onbehalf`)
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Pseudotabelle zur Simulation von dfb_contacts->tb_ident (primkey ''ident'')';
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
-- Table structure for table `aa_test_`
--

DROP TABLE IF EXISTS `aa_test_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aa_test_` (
  `ident` int(10) unsigned NOT NULL DEFAULT 0,
  `matchcode` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `showboard` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `validfrom` date DEFAULT NULL,
  `visib` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT NULL,
  `updated` date DEFAULT NULL,
  PRIMARY KEY (`ident`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bkt_pay_test`
--

DROP TABLE IF EXISTS `bkt_pay_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bkt_pay_test` (
  `loginID` int(10) unsigned NOT NULL DEFAULT 0,
  `dproc` varchar(50) NOT NULL DEFAULT '',
  `status` varchar(50) DEFAULT NULL,
  `sysadm` varchar(10) DEFAULT NULL,
  `pay_from` date DEFAULT NULL,
  `pay_till` date DEFAULT NULL,
  `entries` int(10) unsigned DEFAULT NULL,
  `numCHF` int(10) unsigned DEFAULT NULL,
  `sumCHF` decimal(13,2) unsigned DEFAULT NULL,
  `numEUR` int(10) unsigned DEFAULT NULL,
  `sumEUR` decimal(13,2) unsigned DEFAULT NULL,
  `negRate` smallint(6) DEFAULT NULL,
  `rateEUR` decimal(8,4) unsigned DEFAULT NULL,
  `rateEURcfm` decimal(8,4) unsigned DEFAULT NULL,
  `okRate` decimal(8,4) unsigned DEFAULT NULL,
  `EUR_CHF` decimal(12,2) DEFAULT NULL,
  `chksum` decimal(12,2) DEFAULT NULL,
  `payfilt` varchar(500) DEFAULT NULL,
  `fields` varchar(500) DEFAULT NULL,
  `introtext` varchar(250) DEFAULT NULL,
  `sysmsg` text DEFAULT NULL,
  `sourcetable` varchar(100) DEFAULT NULL,
  `targettable` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dproc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Basket für Zahlungstransfer (NICHT löschen)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bkt_pay_transfer`
--

DROP TABLE IF EXISTS `bkt_pay_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bkt_pay_transfer` (
  `loginID` int(10) unsigned NOT NULL DEFAULT 0,
  `dproc` varchar(50) NOT NULL DEFAULT '',
  `status` varchar(50) DEFAULT NULL,
  `sysadm` varchar(10) DEFAULT NULL,
  `pay_from` date DEFAULT NULL,
  `pay_till` date DEFAULT NULL,
  `entries` int(10) unsigned DEFAULT NULL,
  `numCHF` int(10) unsigned DEFAULT NULL,
  `sumCHF` decimal(13,2) unsigned DEFAULT NULL,
  `numEUR` int(10) unsigned DEFAULT NULL,
  `sumEUR` decimal(13,2) unsigned DEFAULT NULL,
  `negRate` smallint(6) DEFAULT NULL,
  `rateEUR` decimal(8,4) unsigned DEFAULT NULL,
  `rateEURcfm` decimal(8,4) DEFAULT NULL,
  `okRate` decimal(8,4) DEFAULT NULL,
  `EUR_CHF` decimal(12,2) DEFAULT NULL,
  `chksum` decimal(12,2) DEFAULT NULL,
  `payfilt` varchar(500) DEFAULT NULL,
  `fields` varchar(500) DEFAULT NULL,
  `introtext` varchar(250) DEFAULT NULL,
  `sysmsg` text DEFAULT NULL,
  `sourcetable` varchar(100) DEFAULT NULL,
  `transfertable` varchar(100) DEFAULT NULL,
  `targettable` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dproc`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Basket für Zahlungstransfer (NICHT löschen)';
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
  `validto` date NOT NULL DEFAULT '9999-12-31',
  KEY `hhold` (`hhold`),
  KEY `ident` (`ident`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piv_donation`
--

DROP TABLE IF EXISTS `piv_donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piv_donation` (
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Adressierter Spender',
  `donator` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Zahlspender, falls in Haushalt',
  `hhm` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT 'relevante Haushaltmitglieder',
  `dyear` year(4) DEFAULT NULL COMMENT 'Spendenjahr April - März Folgejahr',
  `ysum` decimal(10,2) DEFAULT NULL COMMENT 'Jahresspende in CHF',
  `dons` int(10) unsigned DEFAULT NULL COMMENT 'Spenden pro Jahr',
  `partof` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'profitierender Haushalt',
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `originator` int(10) unsigned DEFAULT NULL,
  KEY `who` (`ident`),
  KEY `dyear` (`dyear`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='Pivottabelle SFB Jahresspenden pro Spendenjahr (April bis März +1)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `piv_donation_copy`
--

DROP TABLE IF EXISTS `piv_donation_copy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `piv_donation_copy` (
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Adressierter Spender',
  `donator` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Zahlspender, falls in Haushalt',
  `hhm` varchar(250) COLLATE utf8_unicode_ci NOT NULL COMMENT 'relevante Haushaltmitglieder',
  `dyear` year(4) DEFAULT NULL COMMENT 'Spendenjahr April - März Folgejahr',
  `ysum` decimal(10,2) DEFAULT NULL COMMENT 'Jahresspende in CHF',
  `dons` int(10) unsigned DEFAULT NULL COMMENT 'Spenden pro Jahr',
  `partof` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'profitierender Haushalt',
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `originator` int(10) unsigned DEFAULT NULL,
  KEY `who` (`ident`),
  KEY `dyear` (`dyear`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='Pivottabelle SFB Jahresspenden pro Spendenjahr (April bis März +1)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmp_eval`
--

DROP TABLE IF EXISTS `tmp_eval`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_eval` (
  `ident` int(10) unsigned DEFAULT NULL,
  `kind` varchar(15) CHARACTER SET utf8 NOT NULL DEFAULT 'contact' COMMENT 'Anrede, resp. Organisationskategorie',
  `matchcode` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `anz` bigint(21) NOT NULL,
  `von` mediumtext CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pivotkopie Haushaltkontakte';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tmp_ts_donation`
--

DROP TABLE IF EXISTS `tmp_ts_donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tmp_ts_donation` (
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
  `paybehalf` int(10) unsigned DEFAULT NULL,
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
  `perform` smallint(6) NOT NULL DEFAULT 0,
  `completed` datetime DEFAULT NULL,
  `bookkeeper` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpaymt`,`idcorr`),
  KEY `valuta` (`valuta`),
  KEY `onbehalf` (`onbehalf`),
  KEY `campaignid` (`campaignid`),
  KEY `purpose` (`purpose`),
  KEY `status` (`status`),
  KEY `accountid` (`accountid`),
  KEY `localsum` (`localsum`),
  KEY `idpaymt` (`idpaymt`),
  KEY `paysum` (`paysum`),
  KEY `paycur` (`paycur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Spenden-Hauptbuch';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tn_donation`
--

DROP TABLE IF EXISTS `tn_donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tn_donation` (
  `idpaymt` int(10) unsigned NOT NULL,
  `idcorr` smallint(6) unsigned NOT NULL DEFAULT 0,
  `spez` varchar(5) DEFAULT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Spenden';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tp_fielddef`
--

DROP TABLE IF EXISTS `tp_fielddef`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tp_fielddef` (
  `set` varchar(50) NOT NULL DEFAULT '',
  `fieldname` varchar(50) NOT NULL DEFAULT '',
  `designation` varchar(50) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `size` varchar(20) DEFAULT NULL,
  `special` varchar(20) DEFAULT NULL,
  `values` text DEFAULT NULL,
  `default` varchar(50) DEFAULT NULL,
  `tooltip` varchar(50) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  PRIMARY KEY (`set`,`fieldname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Felddefinitionen zum Editieren';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_currate`
--

DROP TABLE IF EXISTS `ts_currate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_currate` (
  `currency` varchar(3) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `xrate` decimal(9,4) unsigned NOT NULL DEFAULT 1.0000,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`currency`,`validfrom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Wechselkurse SFB Spendenwesen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_don_by_day`
--

DROP TABLE IF EXISTS `ts_don_by_day`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_don_by_day` (
  `ident` int(10) unsigned NOT NULL,
  `donator` varchar(100) DEFAULT NULL,
  `asfrom` date DEFAULT NULL,
  `upto` date DEFAULT NULL,
  `pay_count` int(10) unsigned DEFAULT NULL,
  `contribution` decimal(12,2) DEFAULT NULL,
  `maxpayment` decimal(12,2) DEFAULT NULL,
  `household` int(10) unsigned DEFAULT NULL,
  `hhname` varchar(100) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`ident`),
  KEY `donator` (`donator`),
  KEY `household` (`household`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spenden pro Spender und Tag (sowohl einzeln als auch Haushalt)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_don_hhold`
--

DROP TABLE IF EXISTS `ts_don_hhold`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_don_hhold` (
  `idpaymt` int(10) unsigned NOT NULL,
  `idcorr` smallint(6) unsigned NOT NULL DEFAULT 0,
  `household` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpaymt`,`idcorr`),
  KEY `household` (`household`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Spenden von Haushaltmitgliedern';
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
  `localcur` varchar(3) DEFAULT NULL,
  `localsum` decimal(12,2) NOT NULL DEFAULT 0.00,
  `sentby` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` varchar(1) DEFAULT NULL,
  `onbehalf` int(10) unsigned DEFAULT NULL,
  `onbehalf_purp` varchar(50) DEFAULT 'home',
  `paybehalf` int(10) unsigned DEFAULT NULL,
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
  `perform` smallint(6) NOT NULL DEFAULT 0,
  `completed` datetime DEFAULT NULL,
  `bookkeeper` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpaymt`,`idcorr`),
  KEY `valuta` (`valuta`),
  KEY `onbehalf` (`onbehalf`),
  KEY `campaignid` (`campaignid`),
  KEY `purpose` (`purpose`),
  KEY `status` (`status`),
  KEY `accountid` (`accountid`),
  KEY `localsum` (`localsum`),
  KEY `idpaymt` (`idpaymt`),
  KEY `paysum` (`paysum`),
  KEY `paycur` (`paycur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Spenden-Hauptbuch';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_donation_MIO`
--

DROP TABLE IF EXISTS `ts_donation_MIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_donation_MIO` (
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
  `paybehalf` int(10) unsigned DEFAULT NULL,
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
  `perform` smallint(6) NOT NULL DEFAULT 0,
  `completed` datetime DEFAULT NULL,
  `bookkeeper` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpaymt`,`idcorr`),
  KEY `valuta` (`valuta`),
  KEY `onbehalf` (`onbehalf`),
  KEY `campaignid` (`campaignid`),
  KEY `purpose` (`purpose`),
  KEY `status` (`status`),
  KEY `accountid` (`accountid`),
  KEY `localsum` (`localsum`),
  KEY `idpaymt` (`idpaymt`),
  KEY `paysum` (`paysum`),
  KEY `paycur` (`paycur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Spenden-Hauptbuch mit IDENT-Fehlern';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_donation__20150716`
--

DROP TABLE IF EXISTS `ts_donation__20150716`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_donation__20150716` (
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
  `paybehalf` int(10) unsigned DEFAULT NULL,
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
  `perform` smallint(6) NOT NULL DEFAULT 0,
  `completed` datetime DEFAULT NULL,
  `bookkeeper` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpaymt`,`idcorr`),
  KEY `valuta` (`valuta`),
  KEY `onbehalf` (`onbehalf`),
  KEY `campaignid` (`campaignid`),
  KEY `purpose` (`purpose`),
  KEY `status` (`status`),
  KEY `accountid` (`accountid`),
  KEY `localsum` (`localsum`),
  KEY `idpaymt` (`idpaymt`),
  KEY `paysum` (`paysum`),
  KEY `paycur` (`paycur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Spenden-Hauptbuch';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_donation__2016-03-11`
--

DROP TABLE IF EXISTS `ts_donation__2016-03-11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_donation__2016-03-11` (
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
  `paybehalf` int(10) unsigned DEFAULT NULL,
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
  `perform` smallint(6) NOT NULL DEFAULT 0,
  `completed` datetime DEFAULT NULL,
  `bookkeeper` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpaymt`,`idcorr`),
  KEY `valuta` (`valuta`),
  KEY `onbehalf` (`onbehalf`),
  KEY `campaignid` (`campaignid`),
  KEY `purpose` (`purpose`),
  KEY `status` (`status`),
  KEY `accountid` (`accountid`),
  KEY `localsum` (`localsum`),
  KEY `idpaymt` (`idpaymt`),
  KEY `paysum` (`paysum`),
  KEY `paycur` (`paycur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Spenden-Hauptbuch';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_donation__20161218`
--

DROP TABLE IF EXISTS `ts_donation__20161218`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_donation__20161218` (
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
  `paybehalf` int(10) unsigned DEFAULT NULL,
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
  `perform` smallint(6) NOT NULL DEFAULT 0,
  `completed` datetime DEFAULT NULL,
  `bookkeeper` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpaymt`,`idcorr`),
  KEY `valuta` (`valuta`),
  KEY `onbehalf` (`onbehalf`),
  KEY `campaignid` (`campaignid`),
  KEY `purpose` (`purpose`),
  KEY `status` (`status`),
  KEY `accountid` (`accountid`),
  KEY `localsum` (`localsum`),
  KEY `idpaymt` (`idpaymt`),
  KEY `paysum` (`paysum`),
  KEY `paycur` (`paycur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Spenden-Hauptbuch';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_donation__20200727`
--

DROP TABLE IF EXISTS `ts_donation__20200727`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_donation__20200727` (
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
  `paybehalf` int(10) unsigned DEFAULT NULL,
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
  `perform` smallint(6) NOT NULL DEFAULT 0,
  `completed` datetime DEFAULT NULL,
  `bookkeeper` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpaymt`,`idcorr`),
  KEY `valuta` (`valuta`),
  KEY `onbehalf` (`onbehalf`),
  KEY `campaignid` (`campaignid`),
  KEY `purpose` (`purpose`),
  KEY `status` (`status`),
  KEY `accountid` (`accountid`),
  KEY `localsum` (`localsum`),
  KEY `idpaymt` (`idpaymt`),
  KEY `paysum` (`paysum`),
  KEY `paycur` (`paycur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Spenden-Hauptbuch';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_donation__trsf20181002225329`
--

DROP TABLE IF EXISTS `ts_donation__trsf20181002225329`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_donation__trsf20181002225329` (
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
  `paybehalf` int(10) unsigned DEFAULT NULL,
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
  `perform` smallint(6) NOT NULL DEFAULT 0,
  `completed` datetime DEFAULT NULL,
  `bookkeeper` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpaymt`,`idcorr`),
  KEY `valuta` (`valuta`),
  KEY `onbehalf` (`onbehalf`),
  KEY `campaignid` (`campaignid`),
  KEY `purpose` (`purpose`),
  KEY `status` (`status`),
  KEY `accountid` (`accountid`),
  KEY `localsum` (`localsum`),
  KEY `idpaymt` (`idpaymt`),
  KEY `paysum` (`paysum`),
  KEY `paycur` (`paycur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Spenden-Hauptbuch';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_donation__trsf20181019205749`
--

DROP TABLE IF EXISTS `ts_donation__trsf20181019205749`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_donation__trsf20181019205749` (
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
  `paybehalf` int(10) unsigned DEFAULT NULL,
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
  `perform` smallint(6) NOT NULL DEFAULT 0,
  `completed` datetime DEFAULT NULL,
  `bookkeeper` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpaymt`,`idcorr`),
  KEY `valuta` (`valuta`),
  KEY `onbehalf` (`onbehalf`),
  KEY `campaignid` (`campaignid`),
  KEY `purpose` (`purpose`),
  KEY `status` (`status`),
  KEY `accountid` (`accountid`),
  KEY `localsum` (`localsum`),
  KEY `idpaymt` (`idpaymt`),
  KEY `paysum` (`paysum`),
  KEY `paycur` (`paycur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Spenden-Hauptbuch';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_donation_dev`
--

DROP TABLE IF EXISTS `ts_donation_dev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_donation_dev` (
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
  `paybehalf` int(10) unsigned DEFAULT NULL,
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
  `perform` smallint(6) DEFAULT NULL,
  `completed` datetime DEFAULT NULL,
  `bookkeeper` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpaymt`,`idcorr`),
  KEY `valuta` (`valuta`),
  KEY `onbehalf` (`onbehalf`),
  KEY `campaignid` (`campaignid`),
  KEY `purpose` (`purpose`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Spenden-Hauptbuch';
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Spenden';
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Nicht löschen! Fiktive Spenderliste, verwendet in PlugIn';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_ex_excel`
--

DROP TABLE IF EXISTS `ts_ex_excel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_ex_excel` (
  `idpaymt` int(10) unsigned NOT NULL,
  `exline` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`idpaymt`)
) ENGINE=MyISAM AUTO_INCREMENT=9070 DEFAULT CHARSET=utf8 COMMENT='Zeilennummern Excel-Quelle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_log`
--

DROP TABLE IF EXISTS `ts_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_log` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entered` timestamp NOT NULL DEFAULT current_timestamp(),
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `ident` int(10) unsigned NOT NULL DEFAULT 0,
  `ref` varchar(30) DEFAULT NULL,
  `eventdate` date DEFAULT NULL,
  `event` varchar(30) DEFAULT NULL,
  `result` varchar(30) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `value1` int(10) unsigned DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `method` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idid`),
  KEY `ident` (`ident`),
  KEY `event` (`event`),
  KEY `result` (`result`),
  KEY `ref` (`ref`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`),
  KEY `eventdate` (`eventdate`)
) ENGINE=MyISAM AUTO_INCREMENT=29530 DEFAULT CHARSET=utf8 COMMENT='Spender-Log, Liste der Ereignisse';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_log0`
--

DROP TABLE IF EXISTS `ts_log0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_log0` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `ident` int(10) unsigned NOT NULL DEFAULT 0,
  `valuta` date DEFAULT NULL,
  `validfrom` date DEFAULT '0000-00-00',
  `validto` date DEFAULT '9999-12-31',
  `event` varchar(50) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `rela2` int(10) unsigned DEFAULT NULL,
  `ref` varchar(50) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `idadm` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idid`),
  KEY `ident` (`ident`),
  KEY `valuta` (`valuta`),
  KEY `event` (`event`),
  KEY `result` (`result`),
  KEY `ref` (`ref`),
  KEY `validfrom` (`validfrom`),
  KEY `validto` (`validto`)
) ENGINE=MyISAM AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;
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
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'optional nicht nutzen, verstecken',
  `header` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Titeleintrag, nie nutzen',
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Hierarchiestufe',
  `parent` varchar(30) DEFAULT NULL,
  `sort` int(6) DEFAULT NULL,
  PRIMARY KEY (`set`,`parid`),
  KEY `parid` (`parid`),
  KEY `lft` (`lft`),
  KEY `parent` (`parent`),
  KEY `set` (`set`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Parametertabelle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_param_don`
--

DROP TABLE IF EXISTS `ts_param_don`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_param_don` (
  `sector` varchar(20) NOT NULL,
  `parid` varchar(100) NOT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date NOT NULL DEFAULT '9999-12-31',
  `description` varchar(200) DEFAULT NULL,
  `public` tinyint(4) DEFAULT NULL,
  `dfb` tinyint(4) DEFAULT NULL,
  `min_CHF_y` int(11) DEFAULT NULL,
  `min_EUR_y` int(11) DEFAULT NULL,
  `min_CHF_d` int(11) DEFAULT NULL,
  `min_EUR_d` int(11) DEFAULT NULL,
  `validity` int(11) DEFAULT NULL,
  `periodfrom` date DEFAULT NULL,
  `p_months` int(11) DEFAULT NULL,
  `lft` smallint(6) DEFAULT NULL,
  `rgt` smallint(6) DEFAULT NULL,
  `hide` tinyint(4) DEFAULT 0,
  `parent` varchar(100) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`sector`,`parid`,`validfrom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Parameter Zahlungskriterien';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_patron`
--

DROP TABLE IF EXISTS `ts_patron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_patron` (
  `donator` int(10) unsigned NOT NULL,
  `goennerjahr` int(4) unsigned NOT NULL DEFAULT 0,
  `kind` varchar(20) NOT NULL,
  `dfbint` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `donation_1` date DEFAULT NULL,
  `parts` bigint(21) NOT NULL DEFAULT 0,
  `sumyear` decimal(34,2) DEFAULT NULL,
  PRIMARY KEY (`donator`,`goennerjahr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pivotierung der als beurkundet markierten Spenden';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_patronage`
--

DROP TABLE IF EXISTS `ts_patronage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_patronage` (
  `ident` int(10) unsigned NOT NULL DEFAULT 0,
  `donyear` smallint(4) NOT NULL DEFAULT 0,
  `asfrom` date NOT NULL DEFAULT '0000-00-00',
  `donations` bigint(21) NOT NULL DEFAULT 0,
  `upto` date DEFAULT NULL,
  `contribution` decimal(34,2) DEFAULT NULL,
  `maxpaymt` decimal(12,2) DEFAULT NULL,
  `paycur` varchar(3) DEFAULT 'CHF',
  `y02` tinyint(4) DEFAULT NULL,
  `y03` tinyint(4) DEFAULT NULL,
  `y04` tinyint(4) DEFAULT NULL,
  `y05` tinyint(4) DEFAULT NULL,
  `y06` tinyint(4) DEFAULT NULL,
  `y07` tinyint(4) DEFAULT NULL,
  `y08` tinyint(4) DEFAULT NULL,
  `y09` tinyint(4) DEFAULT NULL,
  `y10` tinyint(4) DEFAULT NULL,
  `y11` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ident`,`donyear`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Gönnervoraussetzungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_pay_2011_q1`
--

DROP TABLE IF EXISTS `ts_pay_2011_q1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_pay_2011_q1` (
  `idpaymt` int(10) unsigned NOT NULL DEFAULT 0,
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
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Zahlungen Quartal 1 / 2011';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_pay_storno`
--

DROP TABLE IF EXISTS `ts_pay_storno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_pay_storno` (
  `idpaymt` int(10) unsigned NOT NULL DEFAULT 0,
  `accountid` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `valuta` date DEFAULT NULL,
  `paycur` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `paysum` decimal(12,2) DEFAULT NULL,
  `onbehalf` int(10) unsigned DEFAULT NULL,
  `paymessage` text CHARACTER SET utf8 DEFAULT NULL,
  `comment` text CHARACTER SET utf8 DEFAULT NULL,
  `purpose` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  KEY `idpaymt` (`idpaymt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Früher mal mit STORNO bezeichnete Einträge';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_pay_test`
--

DROP TABLE IF EXISTS `ts_pay_test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_pay_test` (
  `idpaymt` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `accountid` varchar(10) DEFAULT NULL,
  `valuta` date DEFAULT NULL,
  `paycur` varchar(3) DEFAULT NULL,
  `paysum` decimal(12,2) DEFAULT NULL,
  `sentby` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` varchar(1) DEFAULT NULL,
  `onbehalf` int(10) unsigned DEFAULT NULL,
  `onbehalf_purp` varchar(50) DEFAULT 'home',
  `campaignid` int(10) DEFAULT NULL,
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
  PRIMARY KEY (`idpaymt`)
) ENGINE=MyISAM AUTO_INCREMENT=3025 DEFAULT CHARSET=utf8 COMMENT='Zahlungsbelege TESTDATEN';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_payment`
--

DROP TABLE IF EXISTS `ts_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_payment` (
  `idpaymt` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`idpaymt`)
) ENGINE=MyISAM AUTO_INCREMENT=43990 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zahlungsbelege';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_payment_2017-08-08`
--

DROP TABLE IF EXISTS `ts_payment_2017-08-08`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_payment_2017-08-08` (
  `idpaymt` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`idpaymt`)
) ENGINE=MyISAM AUTO_INCREMENT=28329 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zahlungsbelege';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_payment_MIO`
--

DROP TABLE IF EXISTS `ts_payment_MIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_payment_MIO` (
  `idpaymt` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`idpaymt`)
) ENGINE=MyISAM AUTO_INCREMENT=17910 DEFAULT CHARSET=utf8 COMMENT='Zahlungsbelege mit IDENT-Fehlern';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_payment__2016-03-11`
--

DROP TABLE IF EXISTS `ts_payment__2016-03-11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_payment__2016-03-11` (
  `idpaymt` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`idpaymt`)
) ENGINE=MyISAM AUTO_INCREMENT=23258 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zahlungsbelege';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_payment__20200727`
--

DROP TABLE IF EXISTS `ts_payment__20200727`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_payment__20200727` (
  `idpaymt` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`idpaymt`)
) ENGINE=MyISAM AUTO_INCREMENT=39729 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zahlungsbelege';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_payment__trsf20181002225329`
--

DROP TABLE IF EXISTS `ts_payment__trsf20181002225329`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_payment__trsf20181002225329` (
  `idpaymt` int(10) unsigned NOT NULL DEFAULT 0,
  `accountid` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `valuta` date DEFAULT NULL,
  `paycur` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `paysum` decimal(12,2) DEFAULT NULL,
  `sentby` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `onbehalf` int(10) unsigned DEFAULT NULL,
  `onbehalf_purp` varchar(50) CHARACTER SET utf8 DEFAULT 'home',
  `campaignid` int(10) unsigned DEFAULT NULL,
  `paymessage` text CHARACTER SET utf8 DEFAULT NULL,
  `regi_method` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `comment` text CHARACTER SET utf8 DEFAULT NULL,
  `purpose` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `exline` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `completed` datetime DEFAULT NULL,
  `bookkeeper` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_payment__trsf20181019205749`
--

DROP TABLE IF EXISTS `ts_payment__trsf20181019205749`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_payment__trsf20181019205749` (
  `idpaymt` int(10) unsigned NOT NULL DEFAULT 0,
  `accountid` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `valuta` date DEFAULT NULL,
  `paycur` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `paysum` decimal(12,2) DEFAULT NULL,
  `sentby` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `onbehalf` int(10) unsigned DEFAULT NULL,
  `onbehalf_purp` varchar(50) CHARACTER SET utf8 DEFAULT 'home',
  `campaignid` int(10) unsigned DEFAULT NULL,
  `paymessage` text CHARACTER SET utf8 DEFAULT NULL,
  `regi_method` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `comment` text CHARACTER SET utf8 DEFAULT NULL,
  `purpose` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `status` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `exline` varchar(6) CHARACTER SET utf8 DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `completed` datetime DEFAULT NULL,
  `bookkeeper` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_payment_dev`
--

DROP TABLE IF EXISTS `ts_payment_dev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_payment_dev` (
  `idpaymt` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`idpaymt`)
) ENGINE=MyISAM AUTO_INCREMENT=11281 DEFAULT CHARSET=utf8 COMMENT='Zahlungsbelege TESTDATEN';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_payment_err20170807`
--

DROP TABLE IF EXISTS `ts_payment_err20170807`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_payment_err20170807` (
  `idpaymt` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`idpaymt`)
) ENGINE=MyISAM AUTO_INCREMENT=28329 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zahlungsbelege';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_payment_ok_mar02`
--

DROP TABLE IF EXISTS `ts_payment_ok_mar02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_payment_ok_mar02` (
  `idpaymt` int(10) unsigned NOT NULL AUTO_INCREMENT,
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
  PRIMARY KEY (`idpaymt`)
) ENGINE=MyISAM AUTO_INCREMENT=10940 DEFAULT CHARSET=utf8 COMMENT='Zahlungsbelege';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_query`
--

DROP TABLE IF EXISTS `ts_query`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_query` (
  `idq` varchar(50) NOT NULL COMMENT 'Name der Abfrage',
  `selec` varchar(50) DEFAULT NULL COMMENT 'SELECT-Name, sofern von idq verschieden',
  `cols` varchar(250) DEFAULT NULL COMMENT 'Anzuzeigende Felder',
  `transl` varchar(250) DEFAULT NULL COMMENT 'zu übersetzende Felder',
  `comment` text DEFAULT NULL,
  `entered` timestamp NOT NULL DEFAULT current_timestamp(),
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idq`),
  KEY `ident` (`selec`)
) ENGINE=MyISAM AUTO_INCREMENT=12323 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Abfragen-Parameter';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_transfer`
--

DROP TABLE IF EXISTS `ts_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_transfer` (
  `idpaymt` int(10) unsigned NOT NULL,
  `idcorr` smallint(6) unsigned NOT NULL DEFAULT 0 COMMENT 'für Zieldatei',
  `accountid` varchar(10) DEFAULT NULL,
  `valuta` date DEFAULT NULL,
  `paycur` varchar(3) DEFAULT NULL,
  `paysum` decimal(12,2) DEFAULT NULL,
  `localcur` varchar(3) DEFAULT NULL COMMENT 'für Zieldatei',
  `localsum` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT 'für Zieldatei',
  `sentby` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` varchar(1) DEFAULT NULL,
  `onbehalf` int(10) unsigned DEFAULT NULL,
  `onbehalf_purp` varchar(50) DEFAULT 'home',
  `paybehalf` int(10) unsigned DEFAULT NULL COMMENT 'für Zieldatei',
  `campaignid` int(10) unsigned DEFAULT NULL,
  `paymessage` text DEFAULT NULL,
  `regi_method` varchar(10) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `paypurpose` varchar(10) DEFAULT NULL COMMENT 'für Zieldatei',
  `purpose` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL COMMENT 'für Zieldatei',
  `exline` varchar(6) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `perform` smallint(6) NOT NULL DEFAULT 0,
  `completed` datetime DEFAULT NULL,
  `bookkeeper` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpaymt`,`idcorr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zwischenspeicher für Datentransfer von ts_payment nach ts_donation (structure like ts_donation)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_transfer_keep`
--

DROP TABLE IF EXISTS `ts_transfer_keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_transfer_keep` (
  `idpaymt` int(10) unsigned NOT NULL,
  `idcorr` smallint(6) unsigned NOT NULL DEFAULT 0 COMMENT 'für Zieldatei',
  `accountid` varchar(10) DEFAULT NULL,
  `valuta` date DEFAULT NULL,
  `paycur` varchar(3) DEFAULT NULL,
  `paysum` decimal(12,2) DEFAULT NULL,
  `localcur` varchar(3) DEFAULT NULL COMMENT 'für Zieldatei',
  `localsum` decimal(12,2) NOT NULL DEFAULT 0.00 COMMENT 'für Zieldatei',
  `sentby` int(10) unsigned NOT NULL DEFAULT 0,
  `hidden` varchar(1) DEFAULT NULL,
  `onbehalf` int(10) unsigned DEFAULT NULL,
  `onbehalf_purp` varchar(50) DEFAULT 'home',
  `paybehalf` int(10) unsigned DEFAULT NULL COMMENT 'für Zieldatei',
  `campaignid` int(10) unsigned DEFAULT NULL,
  `paymessage` text DEFAULT NULL,
  `regi_method` varchar(10) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `paypurpose` varchar(10) DEFAULT NULL COMMENT 'für Zieldatei',
  `purpose` varchar(10) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL COMMENT 'für Zieldatei',
  `exline` varchar(6) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `perform` smallint(6) NOT NULL DEFAULT 0,
  `completed` datetime DEFAULT NULL,
  `bookkeeper` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpaymt`,`idcorr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zwischenspeicher für Datentransfer von ts_payment nach ts_donation (structure like ts_donation)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ts_urkunde`
--

DROP TABLE IF EXISTS `ts_urkunde`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ts_urkunde` (
  `onbehalf` int(10) unsigned NOT NULL,
  `idpaymt` int(10) unsigned NOT NULL,
  `parts` bigint(21) NOT NULL DEFAULT 0,
  `beurkundet` varchar(10) CHARACTER SET utf8mb4 DEFAULT NULL,
  `maxpaid` decimal(34,2) DEFAULT NULL,
  PRIMARY KEY (`onbehalf`),
  KEY `beurkundet` (`beurkundet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Pivotierung der als beurkundet markierten Spenden';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tt_pay_transfer`
--

DROP TABLE IF EXISTS `tt_pay_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_pay_transfer` (
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
  `paybehalf` int(10) unsigned DEFAULT NULL,
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
  `perform` smallint(6) NOT NULL DEFAULT 0,
  `completed` datetime DEFAULT NULL,
  `bookkeeper` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpaymt`,`idcorr`),
  KEY `valuta` (`valuta`),
  KEY `onbehalf` (`onbehalf`),
  KEY `campaignid` (`campaignid`),
  KEY `purpose` (`purpose`),
  KEY `status` (`status`),
  KEY `accountid` (`accountid`),
  KEY `localsum` (`localsum`),
  KEY `idpaymt` (`idpaymt`),
  KEY `paysum` (`paysum`),
  KEY `paycur` (`paycur`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zahlungstransfer ins Hauptbuch';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tt_pay_transfer__20130406`
--

DROP TABLE IF EXISTS `tt_pay_transfer__20130406`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_pay_transfer__20130406` (
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
  `paybehalf` int(10) unsigned DEFAULT NULL,
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
  `perform` smallint(6) DEFAULT NULL,
  `completed` datetime DEFAULT NULL,
  `bookkeeper` int(10) unsigned DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpaymt`,`idcorr`),
  KEY `onbehalf` (`onbehalf`),
  KEY `purpose` (`purpose`),
  KEY `campaignid` (`campaignid`),
  KEY `valuta` (`valuta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Zahlungstransfer ins Hauptbuch';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tt_spec_don_ok`
--

DROP TABLE IF EXISTS `tt_spec_don_ok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_spec_don_ok` (
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
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpaymt`,`idcorr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tt_trsf_110930`
--

DROP TABLE IF EXISTS `tt_trsf_110930`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tt_trsf_110930` (
  `idpaymt` int(10) unsigned NOT NULL DEFAULT 0,
  `idcorr` smallint(6) unsigned NOT NULL DEFAULT 0,
  `accountid` varchar(10) NOT NULL DEFAULT '',
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
  `modified` timestamp NULL DEFAULT NULL,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  PRIMARY KEY (`idpaymt`,`idcorr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
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
