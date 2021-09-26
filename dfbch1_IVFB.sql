-- MySQL dump 10.19  Distrib 10.3.29-MariaDB, for FreeBSD12.2 (amd64)
--
-- Host: localhost    Database: dfbch1_IVFB
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
-- Table structure for table `basket_vt_anmeldung`
--

DROP TABLE IF EXISTS `basket_vt_anmeldung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basket_vt_anmeldung` (
  `seqnum` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contactID` int(10) unsigned DEFAULT NULL,
  `desircat` varchar(20) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `desirsect` varchar(10) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `IPclient` varchar(20) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(10) unsigned DEFAULT 0,
  `originator` int(10) unsigned DEFAULT 1,
  PRIMARY KEY (`seqnum`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Basket VFB-Anmeldungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tv_article`
--

DROP TABLE IF EXISTS `tv_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_article` (
  `orgunit` int(10) unsigned NOT NULL DEFAULT 0,
  `id_product` varchar(30) NOT NULL DEFAULT '',
  `category` varchar(30) DEFAULT NULL,
  `title_long` varchar(100) DEFAULT NULL,
  `title_short` varchar(20) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `lft` smallint(5) unsigned DEFAULT NULL,
  `rgt` smallint(5) unsigned DEFAULT NULL,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `parent` varchar(30) DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`orgunit`,`id_product`),
  KEY `id_product` (`id_product`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Artikelstamm VFB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tv_param`
--

DROP TABLE IF EXISTS `tv_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_param` (
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
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`sector`,`parid`),
  KEY `parent` (`parent`),
  KEY `parid` (`parid`),
  FULLTEXT KEY `tb_param` (`sector`,`parid`,`parent`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Parameter VFB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tv_price`
--

DROP TABLE IF EXISTS `tv_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tv_price` (
  `id_product` varchar(30) NOT NULL,
  `currency` varchar(3) NOT NULL DEFAULT '',
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date DEFAULT '9999-12-31',
  `unit_price` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`id_product`,`currency`,`validfrom`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Artikelpreisstamm VFB';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vb_addr_g`
--

DROP TABLE IF EXISTS `vb_addr_g`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vb_addr_g` (
  `Nummer` int(10) unsigned NOT NULL COMMENT 'CCh',
  `purpose` varchar(50) DEFAULT NULL COMMENT 'dfb - Zweck (def: home)',
  `Adresse2` varchar(200) DEFAULT NULL COMMENT 'CCh: Adresse2',
  `addr2` varchar(200) DEFAULT NULL COMMENT 'dfb - Adresszusatz 1 vor Strasse',
  `tmp` varchar(200) DEFAULT NULL,
  `Adresse1` varchar(200) DEFAULT NULL COMMENT 'CCh: Adresse1',
  `addr1` varchar(200) DEFAULT NULL COMMENT 'dfb - Strasse > addr1',
  `Adresse3` varchar(200) DEFAULT NULL COMMENT 'CCh: > addr3',
  `addr3` varchar(200) DEFAULT NULL COMMENT 'dfb - Adresszusatz 2 nach Strasse',
  `Adresse4` varchar(200) DEFAULT NULL COMMENT 'CCh: > pob',
  `pob` varchar(200) DEFAULT NULL COMMENT 'dfb - Postfach',
  `matched` varchar(255) DEFAULT NULL COMMENT 'Sammelname z.K.',
  `PLZ` varchar(20) DEFAULT NULL COMMENT 'CCh',
  `zip` varchar(20) DEFAULT NULL COMMENT 'dfb - PLZ',
  `Ort` varchar(100) DEFAULT NULL COMMENT 'CCh',
  `city` varchar(100) DEFAULT NULL COMMENT 'dfb - Ort',
  `Land` varchar(50) DEFAULT NULL COMMENT 'CCh: Land, ergänzt um CH',
  `country` varchar(50) DEFAULT NULL COMMENT 'dfb - Ländercode',
  `subset` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Verarbeitungssequenz',
  `ad1road` varchar(200) DEFAULT NULL COMMENT 'CCh: Adresse1 ohne Zahlen',
  `ad1num` varchar(20) DEFAULT NULL COMMENT 'CCh: Adresse1 nur Zahlen',
  PRIMARY KEY (`Nummer`),
  KEY `matched` (`matched`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Die jeweils einzige Postadresse eines VFB-Kontaktes\r\nNummer, matched, purpose, Adresse2,addr1, Adresse1,addr2,ad2road,ad2num, Adresse3,addr3, Adresse4,pob, PLZ,zip, Ort,city, Land,country';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vb_addr_v`
--

DROP TABLE IF EXISTS `vb_addr_v`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vb_addr_v` (
  `Nummer` int(10) unsigned NOT NULL COMMENT 'CCh',
  `matched` varchar(255) DEFAULT NULL COMMENT 'Sammelname z.K.',
  `Land` varchar(50) DEFAULT NULL COMMENT 'CCh - Land, ergänzt um CH',
  `TelP` varchar(50) DEFAULT NULL COMMENT 'CCh',
  `value_p` varchar(50) DEFAULT NULL COMMENT 'dfb-Schreibweise',
  `pack_p` varchar(10) DEFAULT NULL COMMENT 'letzte 9 Stellen verdichtet',
  `TelG` varchar(50) DEFAULT NULL COMMENT 'CCh',
  `value_g` varchar(50) DEFAULT NULL,
  `pack_g` varchar(10) DEFAULT NULL,
  `Fax` varchar(50) DEFAULT NULL COMMENT 'CCh',
  `value_f` varchar(50) DEFAULT NULL,
  `pack_f` varchar(10) DEFAULT NULL,
  `Mobile` varchar(50) DEFAULT NULL COMMENT 'CCh',
  `value_m` varchar(50) DEFAULT NULL,
  `pack_m` varchar(10) DEFAULT NULL,
  `E_Mail` varchar(100) DEFAULT NULL COMMENT 'CCh',
  `Homepage` varchar(100) DEFAULT NULL COMMENT 'CCh',
  `subset` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Verarbeitungssequenz',
  PRIMARY KEY (`Nummer`),
  KEY `matched` (`matched`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Relationen parallel aufgeführt pro Nummer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vb_beitrag`
--

DROP TABLE IF EXISTS `vb_beitrag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vb_beitrag` (
  `Nummer` int(10) unsigned NOT NULL COMMENT 'CCh',
  `matchcode` varchar(200) NOT NULL DEFAULT '' COMMENT 'CCh Sammelname',
  `Rechnung_an` int(10) unsigned DEFAULT NULL COMMENT 'CCh',
  `Zahlungsfrist` int(11) DEFAULT NULL COMMENT 'CCh',
  `Debitorenkonto` int(10) unsigned DEFAULT NULL COMMENT 'CCh',
  PRIMARY KEY (`Nummer`),
  KEY `kind` (`matchcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Importierte Finanzielle Aspekte';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vb_cchannel_done`
--

DROP TABLE IF EXISTS `vb_cchannel_done`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vb_cchannel_done` (
  `Lot` int(10) unsigned NOT NULL COMMENT 'Nummer der Bearbeitungsserie',
  `Nummer` int(10) unsigned NOT NULL COMMENT 'LINK-ID',
  `Titel` text NOT NULL COMMENT 'tb_name',
  `Anrede` text NOT NULL COMMENT 'tb_ident',
  `Art` text NOT NULL COMMENT 'tb_relation',
  `Art_alt` text NOT NULL COMMENT '?',
  `Rechnung_an` text NOT NULL COMMENT '(Rechnungsadresse)',
  `Name` text NOT NULL COMMENT 'tb_name',
  `Name_Zusatz` text NOT NULL COMMENT 'tb_name',
  `Vorname` text NOT NULL COMMENT 'tb_name',
  `Adresse1` text NOT NULL COMMENT 'tb_address_g',
  `Adresse2` text NOT NULL COMMENT 'tb_address_g',
  `Adresse3` text NOT NULL COMMENT 'tb_address_g',
  `Adresse4` text NOT NULL COMMENT 'tb_address_g',
  `PLZ` text NOT NULL COMMENT 'tb_address_g',
  `Ort` text NOT NULL COMMENT 'tb_address_g',
  `Land` text NOT NULL COMMENT 'tb_address_g',
  `TelP` text NOT NULL COMMENT 'tb_address_v',
  `TelG` text NOT NULL COMMENT 'tb_address_v',
  `Fax` text NOT NULL COMMENT 'tb_address_v',
  `Mobile` text NOT NULL COMMENT 'tb_address_v',
  `E_Mail` text NOT NULL COMMENT 'tb_address_v',
  `Homepage` text NOT NULL COMMENT 'tb_address_v',
  `Kommentar` text NOT NULL,
  `Sprache` text NOT NULL COMMENT 'tb_properties',
  `Geschlecht` text NOT NULL COMMENT 'tb_ident implizit',
  `Zahlungsfrist` text NOT NULL COMMENT 'vb_beitrag',
  `Debitorenkonto` text NOT NULL COMMENT 'vb_beitrag',
  `Geburtsdatum` text NOT NULL COMMENT 'tb_properties',
  `Eintritt` text NOT NULL COMMENT 'tb_relation',
  `Austritt` text NOT NULL COMMENT 'tb_relation',
  `Funktion1` text NOT NULL,
  `Funktion2` text NOT NULL,
  `Funktion3` text NOT NULL,
  `Funktion4` text NOT NULL,
  `Funktion5` text NOT NULL,
  `Funktion6` text NOT NULL,
  `Option1` text NOT NULL,
  `Option2` text NOT NULL,
  `Option3` text NOT NULL,
  `Option4` text NOT NULL,
  `Option5` text NOT NULL,
  `Option6` text NOT NULL,
  `Option7` text NOT NULL,
  `Option8` text NOT NULL,
  `Option9` text NOT NULL,
  `Option10` text NOT NULL,
  `Option11` text NOT NULL COMMENT '(Sektion) tb_relation',
  `Option12` text NOT NULL,
  `Option13` text NOT NULL COMMENT '(Beruf)',
  `Option14` text NOT NULL,
  `Option15` text NOT NULL,
  `Option16` text NOT NULL,
  `Option17` text NOT NULL COMMENT '(angeworben in/durch) tb_relation',
  `Option18` text NOT NULL,
  `Option19` text NOT NULL,
  `Option20` text NOT NULL,
  `Gebuehr1` text NOT NULL,
  `Gebuehr2` text NOT NULL,
  `Gebuehr3` text NOT NULL,
  `Gebuehr4` text NOT NULL,
  `Gebuehr5` text NOT NULL,
  `Gebuehr6` text NOT NULL,
  `Nummer_Verband` text NOT NULL,
  `DD_Einzel` text NOT NULL,
  `DD_Serie` text NOT NULL,
  `DD_Jahr` text NOT NULL,
  `DD_Beleg` text NOT NULL,
  `PN_Beleg` text NOT NULL,
  `BP_Beleg` text NOT NULL,
  `DD_Konto` text NOT NULL,
  `PID` text NOT NULL,
  `BP_email` text NOT NULL,
  `Adresse` text NOT NULL,
  `Id` text NOT NULL,
  PRIMARY KEY (`Nummer`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Verarbeitete VFB-Daten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vb_cchannel_impo`
--

DROP TABLE IF EXISTS `vb_cchannel_impo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vb_cchannel_impo` (
  `Lot` int(10) unsigned NOT NULL COMMENT 'Nummer des Bearbeitungsdurchlaufs',
  `Nummer` int(10) unsigned NOT NULL COMMENT 'LINK-ID',
  `Titel` text NOT NULL COMMENT 'tb_name',
  `Anrede` text NOT NULL COMMENT 'tb_ident',
  `Art` text NOT NULL COMMENT 'tb_relation',
  `Art_alt` text NOT NULL COMMENT '?',
  `Rechnung_an` text NOT NULL COMMENT '(Rechnungsadresse)',
  `Name` text NOT NULL COMMENT 'tb_name',
  `Name_Zusatz` text NOT NULL COMMENT 'tb_name',
  `Vorname` text NOT NULL COMMENT 'tb_name',
  `Adresse1` text NOT NULL COMMENT 'tb_address_g',
  `Adresse2` text NOT NULL COMMENT 'tb_address_g',
  `Adresse3` text NOT NULL COMMENT 'tb_address_g',
  `Adresse4` text NOT NULL COMMENT 'tb_address_g',
  `PLZ` text NOT NULL COMMENT 'tb_address_g',
  `Ort` text NOT NULL COMMENT 'tb_address_g',
  `Land` text NOT NULL COMMENT 'tb_address_g',
  `TelP` text NOT NULL COMMENT 'tb_address_v',
  `TelG` text NOT NULL COMMENT 'tb_address_v',
  `Fax` text NOT NULL COMMENT 'tb_address_v',
  `Mobile` text NOT NULL COMMENT 'tb_address_v',
  `E_Mail` text NOT NULL COMMENT 'tb_address_v',
  `Homepage` text NOT NULL COMMENT 'tb_address_v',
  `Kommentar` text NOT NULL,
  `Sprache` text NOT NULL COMMENT 'tb_properties',
  `Geschlecht` text NOT NULL COMMENT 'tb_ident implizit',
  `Zahlungsfrist` text NOT NULL COMMENT 'vb_beitrag',
  `Debitorenkonto` text NOT NULL COMMENT 'vb_beitrag',
  `Geburtsdatum` text NOT NULL COMMENT 'tb_properties',
  `Eintritt` text NOT NULL COMMENT 'tb_relation',
  `Austritt` text NOT NULL COMMENT 'tb_relation',
  `Funktion1` text NOT NULL,
  `Funktion2` text NOT NULL,
  `Funktion3` text NOT NULL,
  `Funktion4` text NOT NULL,
  `Funktion5` text NOT NULL,
  `Funktion6` text NOT NULL,
  `Option1` text NOT NULL,
  `Option2` text NOT NULL,
  `Option3` text NOT NULL,
  `Option4` text NOT NULL,
  `Option5` text NOT NULL,
  `Option6` text NOT NULL,
  `Option7` text NOT NULL,
  `Option8` text NOT NULL,
  `Option9` text NOT NULL,
  `Option10` text NOT NULL,
  `Option11` text NOT NULL COMMENT '(Sektion) tb_relation',
  `Option12` text NOT NULL,
  `Option13` text NOT NULL COMMENT '(Beruf)',
  `Option14` text NOT NULL,
  `Option15` text NOT NULL,
  `Option16` text NOT NULL,
  `Option17` text NOT NULL COMMENT '(angeworben in/durch) tb_relation',
  `Option18` text NOT NULL,
  `Option19` text NOT NULL,
  `Option20` text NOT NULL,
  `Gebuehr1` text NOT NULL,
  `Gebuehr2` text NOT NULL,
  `Gebuehr3` text NOT NULL,
  `Gebuehr4` text NOT NULL,
  `Gebuehr5` text NOT NULL,
  `Gebuehr6` text NOT NULL,
  `Nummer_Verband` text NOT NULL,
  `DD_Einzel` text NOT NULL,
  `DD_Serie` text NOT NULL,
  `DD_Jahr` text NOT NULL,
  `DD_Beleg` text NOT NULL,
  `PN_Beleg` text NOT NULL,
  `BP_Beleg` text NOT NULL,
  `DD_Konto` text NOT NULL,
  `PID` text NOT NULL,
  `BP_email` text NOT NULL,
  `Adresse` text NOT NULL,
  `Id` text NOT NULL,
  PRIMARY KEY (`Nummer`),
  KEY `Lot` (`Lot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Importdatei für VFB-Daten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vb_cchannel_impo_all`
--

DROP TABLE IF EXISTS `vb_cchannel_impo_all`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vb_cchannel_impo_all` (
  `Nummer` int(10) unsigned NOT NULL COMMENT 'LINK-ID',
  `Titel` text NOT NULL COMMENT 'tb_name',
  `Anrede` text NOT NULL COMMENT 'tb_ident',
  `Art` text NOT NULL COMMENT 'tb_relation',
  `Art_alt` text NOT NULL COMMENT '?',
  `Rechnung_an` text NOT NULL COMMENT '(Rechnungsadresse)',
  `Name` varchar(200) NOT NULL COMMENT 'tb_name',
  `Name_Zusatz` text NOT NULL COMMENT 'tb_name',
  `Vorname` varchar(200) NOT NULL COMMENT 'tb_name',
  `Adresse1` text NOT NULL COMMENT 'tb_address_g',
  `Adresse2` text NOT NULL COMMENT 'tb_address_g',
  `Adresse3` text NOT NULL COMMENT 'tb_address_g',
  `Adresse4` text NOT NULL COMMENT 'tb_address_g',
  `PLZ` text NOT NULL COMMENT 'tb_address_g',
  `Ort` text NOT NULL COMMENT 'tb_address_g',
  `Land` text NOT NULL COMMENT 'tb_address_g',
  `TelP` text NOT NULL COMMENT 'tb_address_v',
  `TelG` text NOT NULL COMMENT 'tb_address_v',
  `Fax` text NOT NULL COMMENT 'tb_address_v',
  `Mobile` text NOT NULL COMMENT 'tb_address_v',
  `E_Mail` text NOT NULL COMMENT 'tb_address_v',
  `Homepage` text NOT NULL COMMENT 'tb_address_v',
  `Kommentar` text NOT NULL,
  `Sprache` text NOT NULL COMMENT 'tb_properties',
  `Geschlecht` text NOT NULL COMMENT 'tb_ident implizit',
  `Zahlungsfrist` text NOT NULL COMMENT 'vb_beitrag',
  `Debitorenkonto` text NOT NULL COMMENT 'vb_beitrag',
  `Geburtsdatum` text NOT NULL COMMENT 'tb_properties',
  `Eintritt` text NOT NULL COMMENT 'tb_relation',
  `Austritt` text NOT NULL COMMENT 'tb_relation',
  `Funktion1` text NOT NULL,
  `Funktion2` text NOT NULL,
  `Funktion3` text NOT NULL,
  `Funktion4` text NOT NULL,
  `Funktion5` text NOT NULL,
  `Funktion6` text NOT NULL,
  `Option1` text NOT NULL,
  `Option2` text NOT NULL,
  `Option3` text NOT NULL,
  `Option4` text NOT NULL,
  `Option5` text NOT NULL,
  `Option6` text NOT NULL,
  `Option7` text NOT NULL,
  `Option8` text NOT NULL,
  `Option9` text NOT NULL,
  `Option10` text NOT NULL,
  `Option11` varchar(100) NOT NULL COMMENT '(Sektion) tb_relation',
  `Option12` text NOT NULL,
  `Option13` text NOT NULL COMMENT '(Beruf)',
  `Option14` text NOT NULL,
  `Option15` text NOT NULL,
  `Option16` text NOT NULL,
  `Option17` text NOT NULL COMMENT '(angeworben in/durch) tb_relation',
  `Option18` text NOT NULL,
  `Option19` text NOT NULL,
  `Option20` text NOT NULL,
  `Gebuehr1` text NOT NULL,
  `Gebuehr2` text NOT NULL,
  `Gebuehr3` text NOT NULL,
  `Gebuehr4` text NOT NULL,
  `Gebuehr5` text NOT NULL,
  `Gebuehr6` text NOT NULL,
  `Nummer_Verband` text NOT NULL,
  `DD_Einzel` text NOT NULL,
  `DD_Serie` text NOT NULL,
  `DD_Jahr` text NOT NULL,
  `DD_Beleg` text NOT NULL,
  `PN_Beleg` text NOT NULL,
  `BP_Beleg` text NOT NULL,
  `DD_Konto` text NOT NULL,
  `PID` text NOT NULL,
  `BP_email` text NOT NULL,
  `Adresse` text NOT NULL,
  `Id` text NOT NULL,
  PRIMARY KEY (`Nummer`),
  KEY `Name` (`Name`),
  KEY `Vorname` (`Vorname`),
  KEY `Option11` (`Option11`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Importdatei für VFB-Daten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vb_cchannel_impo_allSTR`
--

DROP TABLE IF EXISTS `vb_cchannel_impo_allSTR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vb_cchannel_impo_allSTR` (
  `Nummer` int(10) unsigned NOT NULL COMMENT 'LINK-ID',
  `Titel` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_name',
  `Anrede` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_ident',
  `Art` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_relation',
  `Art_alt` text CHARACTER SET utf8 NOT NULL COMMENT '?',
  `Rechnung_an` text CHARACTER SET utf8 NOT NULL COMMENT '(Rechnungsadresse)',
  `Name` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT 'tb_name',
  `Name_Zusatz` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_name',
  `Vorname` varchar(200) CHARACTER SET utf8 NOT NULL COMMENT 'tb_name',
  `Adresse1` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_address_g',
  `Adresse2` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_address_g',
  `Adresse3` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_address_g',
  `Adresse4` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_address_g',
  `PLZ` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_address_g',
  `Ort` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_address_g',
  `Land` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_address_g',
  `TelP` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_address_v',
  `TelG` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_address_v',
  `Fax` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_address_v',
  `Mobile` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_address_v',
  `E_Mail` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_address_v',
  `Homepage` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_address_v',
  `Kommentar` text CHARACTER SET utf8 NOT NULL,
  `Sprache` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_properties',
  `Geschlecht` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_ident implizit',
  `Zahlungsfrist` text CHARACTER SET utf8 NOT NULL COMMENT 'vb_beitrag',
  `Debitorenkonto` text CHARACTER SET utf8 NOT NULL COMMENT 'vb_beitrag',
  `Geburtsdatum` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_properties',
  `Eintritt` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_relation',
  `Austritt` text CHARACTER SET utf8 NOT NULL COMMENT 'tb_relation',
  `Funktion1` text CHARACTER SET utf8 NOT NULL,
  `Funktion2` text CHARACTER SET utf8 NOT NULL,
  `Funktion3` text CHARACTER SET utf8 NOT NULL,
  `Funktion4` text CHARACTER SET utf8 NOT NULL,
  `Funktion5` text CHARACTER SET utf8 NOT NULL,
  `Funktion6` text CHARACTER SET utf8 NOT NULL,
  `Option1` text CHARACTER SET utf8 NOT NULL,
  `Option2` text CHARACTER SET utf8 NOT NULL,
  `Option3` text CHARACTER SET utf8 NOT NULL,
  `Option4` text CHARACTER SET utf8 NOT NULL,
  `Option5` text CHARACTER SET utf8 NOT NULL,
  `Option6` text CHARACTER SET utf8 NOT NULL,
  `Option7` text CHARACTER SET utf8 NOT NULL,
  `Option8` text CHARACTER SET utf8 NOT NULL,
  `Option9` text CHARACTER SET utf8 NOT NULL,
  `Option10` text CHARACTER SET utf8 NOT NULL,
  `Option11` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '(Sektion) tb_relation',
  `Option12` text CHARACTER SET utf8 NOT NULL,
  `Option13` text CHARACTER SET utf8 NOT NULL COMMENT '(Beruf)',
  `Option14` text CHARACTER SET utf8 NOT NULL,
  `Option15` text CHARACTER SET utf8 NOT NULL,
  `Option16` text CHARACTER SET utf8 NOT NULL,
  `Option17` text CHARACTER SET utf8 NOT NULL COMMENT '(angeworben in/durch) tb_relation',
  `Option18` text CHARACTER SET utf8 NOT NULL,
  `Option19` text CHARACTER SET utf8 NOT NULL,
  `Option20` text CHARACTER SET utf8 NOT NULL,
  `Gebuehr1` text CHARACTER SET utf8 NOT NULL,
  `Gebuehr2` text CHARACTER SET utf8 NOT NULL,
  `Gebuehr3` text CHARACTER SET utf8 NOT NULL,
  `Gebuehr4` text CHARACTER SET utf8 NOT NULL,
  `Gebuehr5` text CHARACTER SET utf8 NOT NULL,
  `Gebuehr6` text CHARACTER SET utf8 NOT NULL,
  `Nummer_Verband` text CHARACTER SET utf8 NOT NULL,
  `DD_Einzel` text CHARACTER SET utf8 NOT NULL,
  `DD_Serie` text CHARACTER SET utf8 NOT NULL,
  `DD_Jahr` text CHARACTER SET utf8 NOT NULL,
  `DD_Beleg` text CHARACTER SET utf8 NOT NULL,
  `PN_Beleg` text CHARACTER SET utf8 NOT NULL,
  `BP_Beleg` text CHARACTER SET utf8 NOT NULL,
  `DD_Konto` text CHARACTER SET utf8 NOT NULL,
  `PID` text CHARACTER SET utf8 NOT NULL,
  `BP_email` text CHARACTER SET utf8 NOT NULL,
  `Adresse` text CHARACTER SET utf8 NOT NULL,
  `Id` text CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`Nummer`),
  KEY `Name` (`Name`),
  KEY `Vorname` (`Vorname`),
  KEY `Option11` (`Option11`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vb_cchannel_impo_all_keep`
--

DROP TABLE IF EXISTS `vb_cchannel_impo_all_keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vb_cchannel_impo_all_keep` (
  `Nummer` int(10) unsigned NOT NULL COMMENT 'LINK-ID',
  `Titel` text NOT NULL COMMENT 'tb_name',
  `Anrede` text NOT NULL COMMENT 'tb_ident',
  `Art` text NOT NULL COMMENT 'tb_relation',
  `Art_alt` text NOT NULL COMMENT '?',
  `Rechnung_an` text NOT NULL COMMENT '(Rechnungsadresse)',
  `Name` varchar(200) NOT NULL COMMENT 'tb_name',
  `Name_Zusatz` text NOT NULL COMMENT 'tb_name',
  `Vorname` varchar(200) NOT NULL COMMENT 'tb_name',
  `Adresse1` text NOT NULL COMMENT 'tb_address_g',
  `Adresse2` text NOT NULL COMMENT 'tb_address_g',
  `Adresse3` text NOT NULL COMMENT 'tb_address_g',
  `Adresse4` text NOT NULL COMMENT 'tb_address_g',
  `PLZ` text NOT NULL COMMENT 'tb_address_g',
  `Ort` text NOT NULL COMMENT 'tb_address_g',
  `Land` text NOT NULL COMMENT 'tb_address_g',
  `TelP` text NOT NULL COMMENT 'tb_address_v',
  `TelG` text NOT NULL COMMENT 'tb_address_v',
  `Fax` text NOT NULL COMMENT 'tb_address_v',
  `Mobile` text NOT NULL COMMENT 'tb_address_v',
  `E_Mail` text NOT NULL COMMENT 'tb_address_v',
  `Homepage` text NOT NULL COMMENT 'tb_address_v',
  `Kommentar` text NOT NULL,
  `Sprache` text NOT NULL COMMENT 'tb_properties',
  `Geschlecht` text NOT NULL COMMENT 'tb_ident implizit',
  `Zahlungsfrist` text NOT NULL COMMENT 'vb_beitrag',
  `Debitorenkonto` text NOT NULL COMMENT 'vb_beitrag',
  `Geburtsdatum` text NOT NULL COMMENT 'tb_properties',
  `Eintritt` text NOT NULL COMMENT 'tb_relation',
  `Austritt` text NOT NULL COMMENT 'tb_relation',
  `Funktion1` text NOT NULL,
  `Funktion2` text NOT NULL,
  `Funktion3` text NOT NULL,
  `Funktion4` text NOT NULL,
  `Funktion5` text NOT NULL,
  `Funktion6` text NOT NULL,
  `Option1` text NOT NULL,
  `Option2` text NOT NULL,
  `Option3` text NOT NULL,
  `Option4` text NOT NULL,
  `Option5` text NOT NULL,
  `Option6` text NOT NULL,
  `Option7` text NOT NULL,
  `Option8` text NOT NULL,
  `Option9` text NOT NULL,
  `Option10` text NOT NULL,
  `Option11` varchar(100) NOT NULL COMMENT '(Sektion) tb_relation',
  `Option12` text NOT NULL,
  `Option13` text NOT NULL COMMENT '(Beruf)',
  `Option14` text NOT NULL,
  `Option15` text NOT NULL,
  `Option16` text NOT NULL,
  `Option17` text NOT NULL COMMENT '(angeworben in/durch) tb_relation',
  `Option18` text NOT NULL,
  `Option19` text NOT NULL,
  `Option20` text NOT NULL,
  `Gebuehr1` text NOT NULL,
  `Gebuehr2` text NOT NULL,
  `Gebuehr3` text NOT NULL,
  `Gebuehr4` text NOT NULL,
  `Gebuehr5` text NOT NULL,
  `Gebuehr6` text NOT NULL,
  `Nummer_Verband` text NOT NULL,
  `DD_Einzel` text NOT NULL,
  `DD_Serie` text NOT NULL,
  `DD_Jahr` text NOT NULL,
  `DD_Beleg` text NOT NULL,
  `PN_Beleg` text NOT NULL,
  `BP_Beleg` text NOT NULL,
  `DD_Konto` text NOT NULL,
  `PID` text NOT NULL,
  `BP_email` text NOT NULL,
  `Adresse` text NOT NULL,
  `Id` text NOT NULL,
  PRIMARY KEY (`Nummer`),
  KEY `Name` (`Name`),
  KEY `Vorname` (`Vorname`),
  KEY `Option11` (`Option11`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Importdatei für VFB-Daten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vb_decision`
--

DROP TABLE IF EXISTS `vb_decision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vb_decision` (
  `Nummer` int(10) unsigned NOT NULL COMMENT 'CCh',
  `ident` int(10) unsigned NOT NULL COMMENT 'Key gem.  tb_ident',
  `step` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Migrationsstand der Basisdaten',
  `rela` varchar(50) NOT NULL COMMENT 'Migrierte Mitgliedschaft',
  `matchcode` varchar(200) NOT NULL COMMENT 'Sammelname',
  `reason` varchar(10) NOT NULL COMMENT 'Grund: exi, new oder adopted',
  `rownum` varchar(20) NOT NULL COMMENT 'Gewählte Zeilennummer',
  `hits` varchar(20) NOT NULL COMMENT 'Nützliche und Gesamttreffer',
  `try_later` tinyint(3) unsigned NOT NULL COMMENT 'noch unentschieden, versuch''s nochmal',
  `adopted` varchar(250) NOT NULL COMMENT 'Ergebnis des Vergleichsprozesses',
  `hint` text NOT NULL COMMENT 'Kommentare aus dem Vergleichsprozess',
  `entered` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Erstellungsdatum',
  `originator` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Ersteller',
  PRIMARY KEY (`Nummer`),
  KEY `matchcode` (`matchcode`),
  KEY `ident` (`ident`),
  KEY `try_later` (`try_later`),
  KEY `rela` (`rela`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Aufschiebungen und Migrationsentscheide';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vb_dfbIT_`
--

DROP TABLE IF EXISTS `vb_dfbIT_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vb_dfbIT_` (
  `admin` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Der bearbeitende Administrator',
  `Nummer` int(10) unsigned NOT NULL COMMENT 'CCh',
  `matched` varchar(100) DEFAULT NULL,
  `knd` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Kontaktetyp',
  `vn` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Vornamentreffer',
  `nn` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Nachname',
  `geb` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Geburtstagstreffer',
  `subj` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Subjektwahrscheinlichkeit',
  `rd` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Strassenname',
  `hnr` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Hausnummer',
  `zip` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'PLZ',
  `city` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Ort',
  `ctry` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Land',
  `addr` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'Adresswahrscheinlichkeit',
  `useless` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'wesentliche Voraussetzungen fehlen',
  `usable` smallint(5) unsigned NOT NULL DEFAULT 0 COMMENT 'kommt in Frage für Korrelation',
  `hits` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Gesamttreffer',
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Key zu allen Kontaktinformationen',
  `ikind` varchar(20) NOT NULL DEFAULT '' COMMENT 'Kontaktetyp',
  `matchcode` varchar(200) DEFAULT '' COMMENT 'Name der potentiell passenden DFB-Kontakte',
  `born` varchar(10) NOT NULL DEFAULT '' COMMENT 'Geburtstag',
  `late` varchar(10) NOT NULL DEFAULT '' COMMENT 'Todestag',
  `dbl` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Dublettenmarkierung',
  PRIMARY KEY (`Nummer`,`ident`),
  KEY `admin` (`admin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Sammlung aller möglichen dfbIT-Kontakte, bezogen auf einen einzelnen VFB-Kontakt (multi-admin-fähig)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vb_ident`
--

DROP TABLE IF EXISTS `vb_ident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vb_ident` (
  `Nummer` int(10) unsigned NOT NULL COMMENT 'CCh',
  `source` int(10) unsigned DEFAULT NULL COMMENT 'Herkunft: ident dfbIT oder CCh',
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'gem. tb_ident, aber OBSOLET (nicht genutzt, belassen)',
  `step` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Migrationsschritt',
  `kind` varchar(15) DEFAULT NULL COMMENT 'Anrede, resp. Organisationskategorie',
  `kindkind` varchar(15) DEFAULT NULL COMMENT 'kind-Gruppe',
  `disused` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Datum der Stilllegung (properties)',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'aktiv, aber auszublenden',
  `validfrom` date NOT NULL DEFAULT '0000-00-00' COMMENT 'Migrationsdatum=Gültigkeitsanfang',
  `validto` date NOT NULL DEFAULT '9999-12-31' COMMENT 'Gültigkeitsende',
  `patron` int(10) unsigned NOT NULL DEFAULT 1200 COMMENT 'Ursächliche OrgEinheit',
  `entered` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Eintragungsdatum',
  `originator` int(10) unsigned DEFAULT 25272 COMMENT 'Eintragender Administrator',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Änderungsdatum',
  `modifier` int(10) unsigned DEFAULT 1 COMMENT 'Modifizierender Administrator',
  `aktiv` tinyint(3) unsigned NOT NULL DEFAULT 1 COMMENT 'Mitgliedstatus (0: verstorben)',
  `Anrede` varchar(50) DEFAULT NULL COMMENT 'CCh',
  `matched` varchar(255) DEFAULT NULL COMMENT 'CCh',
  `Geschlecht` int(11) DEFAULT NULL COMMENT 'CCh',
  `subset` tinyint(3) unsigned DEFAULT NULL COMMENT 'Verarbeitungspaket',
  `Id` text DEFAULT '' COMMENT 'CCh',
  PRIMARY KEY (`Nummer`),
  KEY `matched` (`matched`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Root gemäss CChannel-Daten vom 3.6.2021';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vb_name`
--

DROP TABLE IF EXISTS `vb_name`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vb_name` (
  `Nummer` int(10) unsigned NOT NULL COMMENT 'CCh',
  `Vorname` varchar(100) NOT NULL DEFAULT '' COMMENT 'CCh',
  `Nachname` varchar(100) NOT NULL DEFAULT '' COMMENT 'CCh Name',
  `Name_Zusatz` varchar(100) NOT NULL DEFAULT '' COMMENT 'CCh',
  `Titel` varchar(100) DEFAULT '' COMMENT 'CCh',
  `matched` varchar(200) NOT NULL DEFAULT '' COMMENT 'Sammelname',
  `name1` varchar(100) NOT NULL DEFAULT '' COMMENT 'Vorname 1',
  `name2` varchar(100) NOT NULL DEFAULT '' COMMENT 'Name 1',
  `name3` varchar(100) NOT NULL DEFAULT '' COMMENT 'Vorname 2',
  `name4` varchar(100) NOT NULL DEFAULT '' COMMENT 'Name 2',
  `title` varchar(50) DEFAULT NULL COMMENT 'Akad. Titel',
  `notation` varchar(10) DEFAULT NULL COMMENT 'Anschriftgestaltung',
  `subset` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'Verarbeitungsset',
  `tmp` varchar(100) DEFAULT '' COMMENT 'Rangiergleis',
  PRIMARY KEY (`Nummer`),
  KEY `kind` (`matched`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Importierte Namendaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vb_ok_auto`
--

DROP TABLE IF EXISTS `vb_ok_auto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vb_ok_auto` (
  `Nummer` int(10) unsigned NOT NULL COMMENT 'CCh',
  `ident` int(10) unsigned NOT NULL COMMENT 'Key gem.  tb_ident',
  `matchcode` varchar(200) NOT NULL COMMENT 'Sammelname',
  `reason` varchar(10) NOT NULL COMMENT 'Grund: exi oder new',
  `rownum` varchar(20) NOT NULL COMMENT 'Gewählte Zeilennummer',
  `hits` varchar(20) NOT NULL COMMENT 'Nützliche und Gesamttreffer',
  `try_later` tinyint(3) unsigned NOT NULL COMMENT 'noch unentschieden, versuch''s nochmal',
  `entered` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Erstellungsdatum',
  `originator` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Ersteller',
  PRIMARY KEY (`Nummer`),
  KEY `matchcode` (`matchcode`),
  KEY `ident` (`ident`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Pivot der Importdateien vb_ident, vb_name, vb_addr_g, vb_addr_v zwecks Ident-Suche';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vb_org`
--

DROP TABLE IF EXISTS `vb_org`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vb_org` (
  `Nummer` int(10) unsigned NOT NULL COMMENT 'CCh',
  `matched` varchar(200) NOT NULL DEFAULT '' COMMENT 'Sammelname',
  `Art` varchar(100) NOT NULL DEFAULT '' COMMENT 'CCh',
  `section_11` varchar(100) NOT NULL DEFAULT '' COMMENT 'CCh Option11 (Sektion)',
  `same` tinyint(3) unsigned DEFAULT NULL COMMENT 'Art und Option11 entsprechen sich',
  PRIMARY KEY (`Nummer`),
  KEY `kind` (`matched`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Importierte Belastungsart und Sektionszugehörigkeit';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vb_pivot`
--

DROP TABLE IF EXISTS `vb_pivot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vb_pivot` (
  `Lot` int(10) unsigned DEFAULT NULL COMMENT 'Nummer der Bearbeitungsserie',
  `Nummer` int(10) unsigned NOT NULL COMMENT 'CCh',
  `ident` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Key zu allen Kontaktinformationen',
  `auto` varchar(10) NOT NULL COMMENT 'Begründung im Falle von Auto-Korrelation',
  `hits` smallint(5) unsigned DEFAULT NULL COMMENT 'Treffer anlässlich Suche',
  `matchcode` varchar(200) NOT NULL,
  `kind` varchar(15) DEFAULT NULL COMMENT 'Anrede, resp. Organisationskategorie',
  `Vorname` varchar(100) NOT NULL DEFAULT '' COMMENT 'CCh',
  `Nachname` varchar(100) NOT NULL DEFAULT '' COMMENT 'CCh Name',
  `ad1road` varchar(200) DEFAULT NULL COMMENT 'CCh: Adresse1 ohne Zahlen',
  `ad1num` varchar(20) DEFAULT NULL COMMENT 'CCh: Adresse1 nur Zahlen',
  `zip` varchar(20) DEFAULT NULL COMMENT 'dfb - PLZ',
  `city` varchar(100) DEFAULT NULL COMMENT 'dfb - Ort',
  `country` varchar(50) DEFAULT NULL COMMENT 'dfb - Ländercode',
  `section` varchar(50) DEFAULT NULL COMMENT 'entspricht Option11',
  `pack_p` varchar(10) DEFAULT NULL COMMENT 'letzte 9 Stellen verdichtet',
  `pack_g` varchar(10) DEFAULT NULL,
  `pack_f` varchar(10) DEFAULT NULL,
  `pack_m` varchar(10) DEFAULT NULL,
  `E_mail` varchar(100) DEFAULT NULL COMMENT 'CCh',
  `Homepage` varchar(100) DEFAULT NULL COMMENT 'CCh',
  `matched` varchar(200) NOT NULL DEFAULT '' COMMENT 'Sammelname',
  PRIMARY KEY (`Nummer`),
  KEY `ident` (`ident`),
  KEY `matched` (`matched`),
  KEY `matchcode` (`matchcode`),
  KEY `Vorname` (`Vorname`),
  KEY `Nachname` (`Nachname`),
  KEY `city` (`city`),
  KEY `kind` (`kind`),
  KEY `section` (`section`),
  KEY `Lot` (`Lot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Pivot der Importdateien vb_ident, vb_name, vb_addr_g, vb_addr_v zwecks Ident-Suche';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vb_rela`
--

DROP TABLE IF EXISTS `vb_rela`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vb_rela` (
  `Nummer` int(10) unsigned NOT NULL COMMENT 'CCh',
  `matched` varchar(255) DEFAULT NULL COMMENT 'Sammelname z.K.',
  `Art` varchar(100) DEFAULT NULL COMMENT 'CCh M-Kategorie und Sektion',
  `m_section` varchar(50) DEFAULT NULL COMMENT 'CCh Sektion',
  `Option11` varchar(50) DEFAULT NULL COMMENT 'CCh Sektion (redundant)',
  `id_org_m` int(10) unsigned DEFAULT NULL COMMENT 'id_org Mitgliedschaft',
  `context_m` varchar(50) NOT NULL DEFAULT 'vfb_roll' COMMENT 'context Mitgliedschaft',
  `m_cat` varchar(50) DEFAULT NULL COMMENT 'CCh Mitgliederkategorie',
  `funct_m` varchar(50) DEFAULT NULL COMMENT 'funct Mitgliedschaft',
  `Eintritt` varchar(50) DEFAULT NULL COMMENT 'CCh Eintrittsdatum',
  `vfrom_m` date DEFAULT '0000-00-00' COMMENT 'validfrom Mitglied seit',
  `Austritt` varchar(50) DEFAULT NULL COMMENT 'CCh Austrittsdatum',
  `vto_m` date DEFAULT '9999-12-31' COMMENT 'validto Mitglied bis',
  `Option17` varchar(50) DEFAULT NULL COMMENT 'CCh geworben durch oder anlässlich > originator',
  `geworben` varchar(50) DEFAULT NULL COMMENT 'Umwandlung ex Option17',
  `Geburtsdatum` varchar(20) DEFAULT NULL COMMENT 'CCh geb.',
  `born` date NOT NULL COMMENT 'Geburtstag',
  `Todesdatum` varchar(20) DEFAULT NULL COMMENT 'CCh gest.',
  `late` date NOT NULL COMMENT 'Todestag',
  `orig_m` int(10) unsigned DEFAULT NULL COMMENT 'originator',
  PRIMARY KEY (`Nummer`),
  KEY `matched` (`matched`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Importierte Relationsdaten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vcat_article`
--

DROP TABLE IF EXISTS `vcat_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcat_article` (
  `dsn` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Auto-Zähler',
  `nummer` varchar(100) NOT NULL,
  `einheit` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `descript` varchar(200) NOT NULL COMMENT 'L',
  `preis` int(10) unsigned NOT NULL,
  `fibu` int(10) unsigned NOT NULL,
  `aktiv` tinyint(3) unsigned NOT NULL,
  `op1` tinyint(3) unsigned NOT NULL,
  `op2` tinyint(3) unsigned NOT NULL,
  `op3` tinyint(3) unsigned NOT NULL,
  `op4` tinyint(3) unsigned NOT NULL,
  `etikette` tinyint(3) unsigned NOT NULL,
  `eti_typ` int(10) unsigned NOT NULL,
  `eti_apost` tinyint(3) unsigned NOT NULL,
  `eti_signature` tinyint(3) unsigned NOT NULL,
  `eti_assurance` tinyint(3) unsigned NOT NULL,
  `billpayid` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`dsn`),
  FULLTEXT KEY `vermerke` (`nummer`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Artikel Hilfstabelle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vcat_custtitle`
--

DROP TABLE IF EXISTS `vcat_custtitle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcat_custtitle` (
  `dsn` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Auto-Zähler',
  `code` varchar(100) NOT NULL,
  `anrede` varchar(50) NOT NULL,
  `zusatz` tinyint(3) unsigned NOT NULL,
  `adresse` varchar(50) NOT NULL,
  `sprache` tinyint(3) unsigned NOT NULL,
  `dfbIT` varchar(50) NOT NULL,
  PRIMARY KEY (`dsn`),
  KEY `code` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=3327 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Kunden-Anreden Hilfstabelle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vcat_enrol`
--

DROP TABLE IF EXISTS `vcat_enrol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcat_enrol` (
  `idid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Auto-Zähler',
  `vermerke` varchar(255) NOT NULL COMMENT 'Liste von Option17-Vermerken',
  `nam2` varchar(100) NOT NULL,
  `werber` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `ident` int(10) unsigned DEFAULT NULL COMMENT 'gem. tb_ident',
  `description` varchar(200) NOT NULL COMMENT 'opt. Bemerkungen',
  `anlass` varchar(100) NOT NULL,
  `jahr` varchar(50) NOT NULL COMMENT 'Werbejahr',
  `disregard` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'nicht übernehmen',
  PRIMARY KEY (`idid`),
  FULLTEXT KEY `vermerke` (`vermerke`)
) ENGINE=MyISAM AUTO_INCREMENT=2021 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Anwerbungs-Personen und Anlässe';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vcat_esrconfig`
--

DROP TABLE IF EXISTS `vcat_esrconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcat_esrconfig` (
  `dsn` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Auto-Zähler',
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `bankcode` tinyint(3) unsigned NOT NULL,
  `institut` varchar(100) NOT NULL COMMENT 'L',
  `konto` varchar(100) NOT NULL,
  `absender1` varchar(200) NOT NULL,
  `absender2` varchar(200) NOT NULL,
  `absender4` varchar(200) NOT NULL,
  `abs_tel` varchar(100) NOT NULL,
  `besrid` varchar(100) NOT NULL,
  `freicode` varchar(50) NOT NULL,
  `nextrnr` int(10) unsigned NOT NULL,
  `esrtype` tinyint(3) unsigned NOT NULL,
  `whr` varchar(50) NOT NULL,
  `ipicharge` tinyint(3) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`dsn`),
  FULLTEXT KEY `vermerke` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Artikel Hilfstabelle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vcat_impo`
--

DROP TABLE IF EXISTS `vcat_impo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcat_impo` (
  `dsn` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Auto-Zähler',
  `typ` int(11) NOT NULL,
  `funktion` varchar(50) NOT NULL,
  `aktiv` varchar(50) NOT NULL,
  `id` varchar(50) NOT NULL,
  PRIMARY KEY (`dsn`)
) ENGINE=MyISAM AUTO_INCREMENT=3327 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Kunden-Anreden Hilfstabelle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vcat_kind`
--

DROP TABLE IF EXISTS `vcat_kind`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcat_kind` (
  `kind` varchar(50) NOT NULL COMMENT 'ident-Typ',
  `description` varchar(50) DEFAULT NULL COMMENT 'Typenbeschreibung',
  `dsns` varchar(100) DEFAULT NULL COMMENT 'Liste zutreffender custtitle',
  `kindkind` varchar(50) DEFAULT NULL COMMENT 'Typenart',
  `gender` varchar(10) NOT NULL DEFAULT '' COMMENT 'Geschlecht, Anredeform',
  `Anreden` varchar(200) NOT NULL DEFAULT '' COMMENT 'CCh-Anreden-Liste',
  `Geschlechter` varchar(50) NOT NULL DEFAULT '' COMMENT 'CCh-Geschlechter-Liste',
  `lft` int(10) unsigned DEFAULT NULL COMMENT 'Sortierung',
  PRIMARY KEY (`kind`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Root';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vcat_membertype`
--

DROP TABLE IF EXISTS `vcat_membertype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcat_membertype` (
  `dsn` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Auto-Zähler',
  `art` varchar(200) NOT NULL,
  `konto` int(10) unsigned NOT NULL,
  `mitglied` tinyint(3) unsigned NOT NULL DEFAULT 1,
  `typ` varchar(50) NOT NULL,
  `beitrag` int(10) unsigned NOT NULL,
  `sektion` varchar(50) NOT NULL,
  `wohnhaft` varchar(50) NOT NULL,
  PRIMARY KEY (`dsn`),
  FULLTEXT KEY `vermerke` (`art`)
) ENGINE=MyISAM AUTO_INCREMENT=18316 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Mitglied-Sektionskombi Hilfstabelle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vcat_param`
--

DROP TABLE IF EXISTS `vcat_param`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vcat_param` (
  `sector` varchar(20) NOT NULL,
  `parid` varchar(30) NOT NULL,
  `parent` varchar(30) DEFAULT NULL,
  `description` varchar(80) DEFAULT NULL,
  `valuelist` varchar(255) DEFAULT NULL,
  `lft` smallint(5) unsigned NOT NULL DEFAULT 0,
  `rgt` smallint(5) unsigned NOT NULL DEFAULT 0,
  `nsl` smallint(5) unsigned DEFAULT NULL COMMENT 'Hierarchiestufe',
  `hide` tinyint(1) DEFAULT 0,
  `header` tinyint(1) DEFAULT 0,
  `entered` datetime DEFAULT current_timestamp(),
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`sector`,`parid`),
  KEY `parent` (`parent`),
  KEY `parid` (`parid`),
  KEY `lft` (`lft`),
  FULLTEXT KEY `tb_param` (`sector`,`parid`,`parent`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Parameter';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vd_impo`
--

DROP TABLE IF EXISTS `vd_impo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vd_impo` (
  `TABLE_CATALOG` varchar(512) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `TABLE_SCHEMA` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `TABLE_NAME` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `COLUMN_NAME` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `ORDINAL_POSITION` bigint(21) unsigned NOT NULL DEFAULT 0,
  `COLUMN_DEFAULT` longtext CHARACTER SET utf8 DEFAULT NULL,
  `IS_NULLABLE` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `DATA_TYPE` varchar(64) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `CHARACTER_MAXIMUM_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_OCTET_LENGTH` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_PRECISION` bigint(21) unsigned DEFAULT NULL,
  `NUMERIC_SCALE` bigint(21) unsigned DEFAULT NULL,
  `DATETIME_PRECISION` bigint(21) unsigned DEFAULT NULL,
  `CHARACTER_SET_NAME` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `COLLATION_NAME` varchar(32) CHARACTER SET utf8 DEFAULT NULL,
  `COLUMN_TYPE` longtext CHARACTER SET utf8 NOT NULL,
  `COLUMN_KEY` varchar(3) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `EXTRA` varchar(30) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `PRIVILEGES` varchar(80) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `COLUMN_COMMENT` varchar(1024) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `IS_GENERATED` varchar(6) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `GENERATION_EXPRESSION` longtext CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vf_kontenplan`
--

DROP TABLE IF EXISTS `vf_kontenplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vf_kontenplan` (
  `dsn` int(10) unsigned NOT NULL,
  `konto` varchar(50) NOT NULL,
  `kontotext` varchar(100) NOT NULL,
  `stufe` int(10) unsigned NOT NULL,
  `typ` int(10) unsigned NOT NULL,
  `dsn_kategorie` int(10) unsigned NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rgt` int(10) unsigned NOT NULL,
  `nsl` int(10) unsigned NOT NULL,
  `hide` tinyint(3) unsigned NOT NULL,
  `header` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`dsn`)
) ENGINE=MyISAM AUTO_INCREMENT=3327 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Kunden-Anreden Hilfstabelle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `vtmp_job`
--

DROP TABLE IF EXISTS `vtmp_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vtmp_job` (
  `admin` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'ident Administrator',
  `Nummer` int(10) unsigned DEFAULT NULL COMMENT 'aktuell/zuletzt bearbeiteter VFB-Kontakt',
  `runs` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Anzahl bearbeitete Kontakte',
  `entered` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'erstellt um',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'letzte Modifikation',
  PRIMARY KEY (`admin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Root';
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-26 17:22:02
