-- MySQL dump 10.19  Distrib 10.3.29-MariaDB, for FreeBSD12.2 (amd64)
--
-- Host: localhost    Database: dfbch1_Igen
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
-- Table structure for table `IPblocked`
--

DROP TABLE IF EXISTS `IPblocked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IPblocked` (
  `ip` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted` tinyint(4) DEFAULT 0,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifier` int(11) DEFAULT 0,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Blockierte IP-Adressen, ven denen SPAM gekommen ist';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `RWD_Essen`
--

DROP TABLE IF EXISTS `RWD_Essen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RWD_Essen` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `ident` int(11) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dept` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `meal` varchar(100) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`auto`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Mahlzeiten für Essen-Anmeldung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_anmx_answers`
--

DROP TABLE IF EXISTS `_anmx_answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_anmx_answers` (
  `idx` int(10) unsigned NOT NULL DEFAULT 0,
  `seq` varchar(10) NOT NULL DEFAULT '',
  `datum` varchar(10) NOT NULL DEFAULT '',
  `woher` varchar(10) NOT NULL DEFAULT '',
  `gender` varchar(10) NOT NULL DEFAULT '',
  `sexori` varchar(10) NOT NULL DEFAULT '',
  `age` varchar(10) NOT NULL DEFAULT '',
  `wohnsitu` varchar(10) NOT NULL DEFAULT '',
  `sexexperi` varchar(10) NOT NULL DEFAULT '',
  `howlong` varchar(10) NOT NULL DEFAULT '',
  `zivilstand` varchar(10) NOT NULL DEFAULT '',
  `children` varchar(10) NOT NULL DEFAULT '',
  `psydiagn` varchar(10) NOT NULL DEFAULT '',
  `medi` varchar(10) NOT NULL DEFAULT '',
  `somdiagn` varchar(10) NOT NULL DEFAULT '',
  `ivo01` varchar(10) NOT NULL DEFAULT '',
  `ivo02` varchar(10) NOT NULL DEFAULT '',
  `ivo03` varchar(10) NOT NULL DEFAULT '',
  `ivo04` varchar(10) NOT NULL DEFAULT '',
  `ivo05` varchar(10) DEFAULT NULL,
  `ivo06` varchar(10) DEFAULT NULL,
  `ivo07` varchar(10) DEFAULT NULL,
  `ivo08` varchar(10) DEFAULT NULL,
  `ivo09` varchar(10) DEFAULT NULL,
  `genderhappy` varchar(10) DEFAULT NULL,
  `pbs01` varchar(10) DEFAULT NULL,
  `pbs02` varchar(10) DEFAULT NULL,
  `pbs03` varchar(10) DEFAULT NULL,
  `pbs04` varchar(10) DEFAULT NULL,
  `pbs05` varchar(10) DEFAULT NULL,
  `pbs06` varchar(10) DEFAULT NULL,
  `pbs07` varchar(10) DEFAULT NULL,
  `pbs08` varchar(10) DEFAULT NULL,
  `pbs09` varchar(10) DEFAULT NULL,
  `pbs10` varchar(10) DEFAULT NULL,
  `kme01` varchar(10) DEFAULT NULL,
  `kme02` varchar(10) DEFAULT NULL,
  `kme03` varchar(10) DEFAULT NULL,
  `kme04` varchar(10) DEFAULT NULL,
  `kme05` varchar(10) DEFAULT NULL,
  `kme06` varchar(10) DEFAULT NULL,
  `kme07` varchar(10) DEFAULT NULL,
  `kme08` varchar(10) DEFAULT NULL,
  `bauh01` varchar(10) DEFAULT NULL,
  `bauh02` varchar(10) DEFAULT NULL,
  `bauh02a` varchar(10) DEFAULT NULL,
  `bauh02b` varchar(10) DEFAULT NULL,
  `bauh02c` varchar(10) DEFAULT NULL,
  `bauh02d` varchar(10) DEFAULT NULL,
  `bauh02e` varchar(10) DEFAULT NULL,
  `bauh02f` varchar(10) DEFAULT NULL,
  `bauh02g` varchar(10) DEFAULT NULL,
  `bauh02h` varchar(10) DEFAULT NULL,
  `bauh02i` varchar(10) DEFAULT NULL,
  `bauh02j` varchar(10) DEFAULT NULL,
  `bauh02k` varchar(10) DEFAULT NULL,
  `bauh03` varchar(10) DEFAULT NULL,
  `bauh04` varchar(10) DEFAULT NULL,
  `bauh05` varchar(10) DEFAULT NULL,
  `bauh06` varchar(10) DEFAULT NULL,
  `bauh07` varchar(10) DEFAULT NULL,
  `umf02` varchar(10) DEFAULT NULL,
  `umf03` varchar(10) DEFAULT NULL,
  `umf04` varchar(10) DEFAULT NULL,
  `umf05` varchar(10) DEFAULT NULL,
  `umf06` varchar(10) DEFAULT NULL,
  `umf07` varchar(10) DEFAULT NULL,
  `umf08` varchar(10) DEFAULT NULL,
  `umf09` varchar(10) DEFAULT NULL,
  `umf10` varchar(10) DEFAULT NULL,
  `umf11` varchar(10) DEFAULT NULL,
  `umf11a` varchar(10) DEFAULT NULL,
  `umf12` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Umfrage Susann';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_anmx_answers0`
--

DROP TABLE IF EXISTS `_anmx_answers0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_anmx_answers0` (
  `idx` int(10) unsigned NOT NULL DEFAULT 0,
  `seq` varchar(10) NOT NULL DEFAULT '',
  `datum` varchar(10) NOT NULL DEFAULT '',
  `woher` varchar(10) NOT NULL DEFAULT '',
  `gender` varchar(10) NOT NULL DEFAULT '',
  `sexori` varchar(10) NOT NULL DEFAULT '',
  `age` varchar(10) NOT NULL DEFAULT '',
  `wohnsitu` varchar(10) NOT NULL DEFAULT '',
  `sexexperi` varchar(10) NOT NULL DEFAULT '',
  `howlong` varchar(10) NOT NULL DEFAULT '',
  `zivilstand` varchar(10) NOT NULL DEFAULT '',
  `children` varchar(10) NOT NULL DEFAULT '',
  `psydiagn` varchar(10) NOT NULL DEFAULT '',
  `medi` varchar(10) NOT NULL DEFAULT '',
  `somdiagn` varchar(10) NOT NULL DEFAULT '',
  `ivo01` varchar(10) NOT NULL DEFAULT '',
  `ivo02` varchar(10) NOT NULL DEFAULT '',
  `ivo03` varchar(10) NOT NULL DEFAULT '',
  `ivo04` varchar(10) NOT NULL DEFAULT '',
  `ivo05` varchar(10) DEFAULT NULL,
  `ivo06` varchar(10) DEFAULT NULL,
  `ivo07` varchar(10) DEFAULT NULL,
  `ivo08` varchar(10) DEFAULT NULL,
  `ivo09` varchar(10) DEFAULT NULL,
  `genderhappy` varchar(10) DEFAULT NULL,
  `pbs01` varchar(10) DEFAULT NULL,
  `pbs02` varchar(10) DEFAULT NULL,
  `pbs03` varchar(10) DEFAULT NULL,
  `pbs04` varchar(10) DEFAULT NULL,
  `pbs05` varchar(10) DEFAULT NULL,
  `pbs06` varchar(10) DEFAULT NULL,
  `pbs07` varchar(10) DEFAULT NULL,
  `pbs08` varchar(10) DEFAULT NULL,
  `pbs09` varchar(10) DEFAULT NULL,
  `pbs10` varchar(10) DEFAULT NULL,
  `kme01` varchar(10) DEFAULT NULL,
  `kme02` varchar(10) DEFAULT NULL,
  `kme03` varchar(10) DEFAULT NULL,
  `kme04` varchar(10) DEFAULT NULL,
  `kme05` varchar(10) DEFAULT NULL,
  `kme06` varchar(10) DEFAULT NULL,
  `kme07` varchar(10) DEFAULT NULL,
  `kme08` varchar(10) DEFAULT NULL,
  `bauh01` varchar(10) DEFAULT NULL,
  `bauh02` varchar(10) DEFAULT NULL,
  `bauh02a` varchar(10) DEFAULT NULL,
  `bauh02b` varchar(10) DEFAULT NULL,
  `bauh02c` varchar(10) DEFAULT NULL,
  `bauh02d` varchar(10) DEFAULT NULL,
  `bauh02e` varchar(10) DEFAULT NULL,
  `bauh02f` varchar(10) DEFAULT NULL,
  `bauh02g` varchar(10) DEFAULT NULL,
  `bauh02h` varchar(10) DEFAULT NULL,
  `bauh02i` varchar(10) DEFAULT NULL,
  `bauh02j` varchar(10) DEFAULT NULL,
  `bauh02k` varchar(10) DEFAULT NULL,
  `bauh03` varchar(10) DEFAULT NULL,
  `bauh04` varchar(10) DEFAULT NULL,
  `bauh05` varchar(10) DEFAULT NULL,
  `bauh06` varchar(10) DEFAULT NULL,
  `bauh07` varchar(10) DEFAULT NULL,
  `umf02` varchar(10) DEFAULT NULL,
  `umf03` varchar(10) DEFAULT NULL,
  `umf04` varchar(10) DEFAULT NULL,
  `umf05` varchar(10) DEFAULT NULL,
  `umf06` varchar(10) DEFAULT NULL,
  `umf07` varchar(10) DEFAULT NULL,
  `umf08` varchar(10) DEFAULT NULL,
  `umf09` varchar(10) DEFAULT NULL,
  `umf10` varchar(10) DEFAULT NULL,
  `umf11` varchar(10) DEFAULT NULL,
  `umf11a` varchar(10) DEFAULT NULL,
  `umf12` varchar(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Umfrage Susann';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_anmx_coded`
--

DROP TABLE IF EXISTS `_anmx_coded`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_anmx_coded` (
  `seq` int(10) unsigned NOT NULL,
  `empty` tinyint(3) unsigned NOT NULL DEFAULT 0 COMMENT 'leerer Antwortbogen',
  `woher` varchar(50) NOT NULL COMMENT 'Herkunft gem x_cat_woher',
  `woher2` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `sexori` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL COMMENT 'evtl jahrzehnt',
  `wohnsitu` varchar(50) NOT NULL,
  `howlong0` varchar(50) NOT NULL,
  `howlong` varchar(50) NOT NULL,
  `children` varchar(50) NOT NULL,
  `zivilstand` varchar(50) NOT NULL,
  `medi` varchar(250) NOT NULL,
  `psydiagn` varchar(50) NOT NULL,
  `somdiagn` varchar(50) NOT NULL,
  UNIQUE KEY `seq` (`seq`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Auswertungen Fragebogen, codierte Antworten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_anmx_codedNEU`
--

DROP TABLE IF EXISTS `_anmx_codedNEU`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_anmx_codedNEU` (
  `seq` int(10) unsigned NOT NULL,
  `woher` varchar(50) NOT NULL COMMENT 'Herkunft gem x_cat_woher',
  `woher2` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `sexori` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL COMMENT 'evtl jahrzehnt',
  `howlong0` varchar(50) NOT NULL,
  `howlong` varchar(50) NOT NULL,
  `zivilstand` varchar(50) NOT NULL,
  `medi` varchar(250) NOT NULL,
  `psydiagn` varchar(50) NOT NULL,
  `somdiagn` varchar(50) NOT NULL,
  UNIQUE KEY `seq` (`seq`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Auswertungen Fragebogen, codierte Antworten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_anmx_enquiry`
--

DROP TABLE IF EXISTS `_anmx_enquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_anmx_enquiry` (
  `seq` int(10) unsigned NOT NULL DEFAULT 0,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `datum` date DEFAULT NULL,
  `woher` text DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `sexori` text DEFAULT NULL,
  `age` text DEFAULT NULL,
  `wohnsitu` text DEFAULT NULL,
  `sexexperi` text DEFAULT NULL,
  `howlong` text DEFAULT NULL,
  `dauer` decimal(10,1) unsigned DEFAULT NULL,
  `zivilstand` text DEFAULT NULL,
  `children` text DEFAULT NULL,
  `psydiagn` text DEFAULT NULL,
  `psyicd10` varchar(100) DEFAULT NULL,
  `medi` text DEFAULT NULL,
  `somdiagn` text DEFAULT NULL,
  `ivo01` text DEFAULT NULL,
  `ivo02` text DEFAULT NULL,
  `ivo03` text DEFAULT NULL,
  `ivo04` text DEFAULT NULL,
  `ivo05` text DEFAULT NULL,
  `ivo06` text DEFAULT NULL,
  `ivo07` text DEFAULT NULL,
  `ivo08` text DEFAULT NULL,
  `ivo09` text DEFAULT NULL,
  `genderhappy` text DEFAULT NULL,
  `pbs01` text DEFAULT NULL,
  `pbs02` text DEFAULT NULL,
  `pbs03` text DEFAULT NULL,
  `pbs04` text DEFAULT NULL,
  `pbs05` text DEFAULT NULL,
  `pbs06` text DEFAULT NULL,
  `pbs07` text DEFAULT NULL,
  `pbs08` text DEFAULT NULL,
  `pbs09` text DEFAULT NULL,
  `pbs10` text DEFAULT NULL,
  `kme01` text DEFAULT NULL,
  `kme02` text DEFAULT NULL,
  `kme03` text DEFAULT NULL,
  `kme04` text DEFAULT NULL,
  `kme05` text DEFAULT NULL,
  `kme06` text DEFAULT NULL,
  `kme07` text DEFAULT NULL,
  `kme08` text DEFAULT NULL,
  `bauh01` text DEFAULT NULL,
  `bauh02` text DEFAULT NULL,
  `bauh02a` text DEFAULT NULL,
  `bauh02b` text DEFAULT NULL,
  `bauh02c` text DEFAULT NULL,
  `bauh02d` text DEFAULT NULL,
  `bauh02e` text DEFAULT NULL,
  `bauh02f` text DEFAULT NULL,
  `bauh02g` text DEFAULT NULL,
  `bauh02h` text DEFAULT NULL,
  `bauh02i` text DEFAULT NULL,
  `bauh02j` text DEFAULT NULL,
  `bauh02k` text DEFAULT NULL,
  `bauh03` text DEFAULT NULL,
  `bauh04` text DEFAULT NULL,
  `bauh05` text DEFAULT NULL,
  `bauh06` text DEFAULT NULL,
  `umf01` text DEFAULT NULL,
  `umf02` text DEFAULT NULL,
  `umf03` text DEFAULT NULL,
  `umf04` text DEFAULT NULL,
  `umf05` text DEFAULT NULL,
  `umf06` text DEFAULT NULL,
  `umf07` text DEFAULT NULL,
  `umf08` text DEFAULT NULL,
  `umf09` text DEFAULT NULL,
  `umf10` text DEFAULT NULL,
  `umf11` text DEFAULT NULL,
  `umf11a` text DEFAULT NULL,
  `umf12` text DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Umfrage Susann';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_anmx_enquiry_icd`
--

DROP TABLE IF EXISTS `_anmx_enquiry_icd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_anmx_enquiry_icd` (
  `seq` int(10) unsigned NOT NULL DEFAULT 0,
  `datum` date DEFAULT NULL,
  `woher` text DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `sexori` text DEFAULT NULL,
  `age` text DEFAULT NULL,
  `wohnsitu` text DEFAULT NULL,
  `sexexperi` text DEFAULT NULL,
  `howlong` text DEFAULT NULL,
  `dauer` decimal(10,1) DEFAULT NULL,
  `zivilstand` text DEFAULT NULL,
  `children` text DEFAULT NULL,
  `psydiagn` text DEFAULT NULL,
  `psyicd10` varchar(100) DEFAULT NULL,
  `medi` text DEFAULT NULL,
  `somdiagn` text DEFAULT NULL,
  `ivo01` text DEFAULT NULL,
  `ivo02` text DEFAULT NULL,
  `ivo03` text DEFAULT NULL,
  `ivo04` text DEFAULT NULL,
  `ivo05` text DEFAULT NULL,
  `ivo06` text DEFAULT NULL,
  `ivo07` text DEFAULT NULL,
  `ivo08` text DEFAULT NULL,
  `ivo09` text DEFAULT NULL,
  `genderhappy` text DEFAULT NULL,
  `pbs01` text DEFAULT NULL,
  `pbs02` text DEFAULT NULL,
  `pbs03` text DEFAULT NULL,
  `pbs04` text DEFAULT NULL,
  `pbs05` text DEFAULT NULL,
  `pbs06` text DEFAULT NULL,
  `pbs07` text DEFAULT NULL,
  `pbs08` text DEFAULT NULL,
  `pbs09` text DEFAULT NULL,
  `pbs10` text DEFAULT NULL,
  `kme01` text DEFAULT NULL,
  `kme02` text DEFAULT NULL,
  `kme03` text DEFAULT NULL,
  `kme04` text DEFAULT NULL,
  `kme05` text DEFAULT NULL,
  `kme06` text DEFAULT NULL,
  `kme07` text DEFAULT NULL,
  `kme08` text DEFAULT NULL,
  `bauh01` text DEFAULT NULL,
  `bauh02` text DEFAULT NULL,
  `bauh02a` text DEFAULT NULL,
  `bauh02b` text DEFAULT NULL,
  `bauh02c` text DEFAULT NULL,
  `bauh02d` text DEFAULT NULL,
  `bauh02e` text DEFAULT NULL,
  `bauh02f` text DEFAULT NULL,
  `bauh02g` text DEFAULT NULL,
  `bauh02h` text DEFAULT NULL,
  `bauh02i` text DEFAULT NULL,
  `bauh02j` text DEFAULT NULL,
  `bauh02k` text DEFAULT NULL,
  `bauh03` text DEFAULT NULL,
  `bauh04` text DEFAULT NULL,
  `bauh05` text DEFAULT NULL,
  `bauh06` text DEFAULT NULL,
  `umf01` text DEFAULT NULL,
  `umf02` text DEFAULT NULL,
  `umf03` text DEFAULT NULL,
  `umf04` text DEFAULT NULL,
  `umf05` text DEFAULT NULL,
  `umf06` text DEFAULT NULL,
  `umf07` text DEFAULT NULL,
  `umf08` text DEFAULT NULL,
  `umf09` text DEFAULT NULL,
  `umf10` text DEFAULT NULL,
  `umf11` text DEFAULT NULL,
  `umf11a` text DEFAULT NULL,
  `umf12` text DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Umfrage Susann';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_anmx_enquiry_orig`
--

DROP TABLE IF EXISTS `_anmx_enquiry_orig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_anmx_enquiry_orig` (
  `seq` int(10) unsigned NOT NULL DEFAULT 0,
  `datum` date DEFAULT NULL,
  `woher` text DEFAULT NULL,
  `gender` text DEFAULT NULL,
  `sexori` text DEFAULT NULL,
  `age` text DEFAULT NULL,
  `wohnsitu` text DEFAULT NULL,
  `sexexperi` text DEFAULT NULL,
  `howlong` text DEFAULT NULL,
  `dauer` decimal(10,1) DEFAULT NULL,
  `zivilstand` text DEFAULT NULL,
  `children` text DEFAULT NULL,
  `psydiagn` text DEFAULT NULL,
  `psyicd10` text DEFAULT NULL,
  `medi` text DEFAULT NULL,
  `somdiagn` text DEFAULT NULL,
  `ivo01` text DEFAULT NULL,
  `ivo02` text DEFAULT NULL,
  `ivo03` text DEFAULT NULL,
  `ivo04` text DEFAULT NULL,
  `ivo05` text DEFAULT NULL,
  `ivo06` text DEFAULT NULL,
  `ivo07` text DEFAULT NULL,
  `ivo08` text DEFAULT NULL,
  `ivo09` text DEFAULT NULL,
  `genderhappy` text DEFAULT NULL,
  `pbs01` text DEFAULT NULL,
  `pbs02` text DEFAULT NULL,
  `pbs03` text DEFAULT NULL,
  `pbs04` text DEFAULT NULL,
  `pbs05` text DEFAULT NULL,
  `pbs06` text DEFAULT NULL,
  `pbs07` text DEFAULT NULL,
  `pbs08` text DEFAULT NULL,
  `pbs09` text DEFAULT NULL,
  `pbs10` text DEFAULT NULL,
  `kme01` text DEFAULT NULL,
  `kme02` text DEFAULT NULL,
  `kme03` text DEFAULT NULL,
  `kme04` text DEFAULT NULL,
  `kme05` text DEFAULT NULL,
  `kme06` text DEFAULT NULL,
  `kme07` text DEFAULT NULL,
  `kme08` text DEFAULT NULL,
  `bauh01` text DEFAULT NULL,
  `bauh02` text DEFAULT NULL,
  `bauh02a` text DEFAULT NULL,
  `bauh02b` text DEFAULT NULL,
  `bauh02c` text DEFAULT NULL,
  `bauh02d` text DEFAULT NULL,
  `bauh02e` text DEFAULT NULL,
  `bauh02f` text DEFAULT NULL,
  `bauh02g` text DEFAULT NULL,
  `bauh02h` text DEFAULT NULL,
  `bauh02i` text DEFAULT NULL,
  `bauh02j` text DEFAULT NULL,
  `bauh02k` text DEFAULT NULL,
  `bauh03` text DEFAULT NULL,
  `bauh04` text DEFAULT NULL,
  `bauh05` text DEFAULT NULL,
  `bauh06` text DEFAULT NULL,
  `umf01` text DEFAULT NULL,
  `umf02` text DEFAULT NULL,
  `umf03` text DEFAULT NULL,
  `umf04` text DEFAULT NULL,
  `umf05` text DEFAULT NULL,
  `umf06` text DEFAULT NULL,
  `umf07` text DEFAULT NULL,
  `umf08` text DEFAULT NULL,
  `umf09` text DEFAULT NULL,
  `umf10` text DEFAULT NULL,
  `umf11` text DEFAULT NULL,
  `umf11a` text DEFAULT NULL,
  `umf12` text DEFAULT NULL,
  PRIMARY KEY (`seq`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Umfrage Susann';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_anmx_medi`
--

DROP TABLE IF EXISTS `_anmx_medi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_anmx_medi` (
  `mdrug` varchar(250) CHARACTER SET utf8 NOT NULL,
  `medi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Bogen` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_anmx_medi0`
--

DROP TABLE IF EXISTS `_anmx_medi0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_anmx_medi0` (
  `drug` longtext CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_anmx_medi__keep`
--

DROP TABLE IF EXISTS `_anmx_medi__keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_anmx_medi__keep` (
  `mdrug` varchar(250) CHARACTER SET utf8 NOT NULL,
  `medi` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Bogen` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_anmx_result`
--

DROP TABLE IF EXISTS `_anmx_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_anmx_result` (
  `Frage` varchar(50) NOT NULL,
  `Wert` varchar(50) NOT NULL,
  `Anzahl` int(10) unsigned DEFAULT NULL,
  `Anteil` decimal(10,1) DEFAULT NULL,
  `Resultat` text DEFAULT NULL,
  `Bemerk` text DEFAULT NULL,
  `Bogen` text DEFAULT NULL,
  PRIMARY KEY (`Frage`,`Wert`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Auswertungen Fragebogen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_anmx_result0`
--

DROP TABLE IF EXISTS `_anmx_result0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_anmx_result0` (
  `Frage` varchar(50) NOT NULL,
  `Wert` varchar(50) NOT NULL,
  `Anzahl` int(10) unsigned DEFAULT NULL,
  `Resultat` text DEFAULT NULL,
  `Bemerk` text DEFAULT NULL,
  `Bogen` text DEFAULT NULL,
  PRIMARY KEY (`Frage`,`Wert`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Auswertungen Fragebogen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `_nd_`
--

DROP TABLE IF EXISTS `_nd_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `_nd_` (
  `von` date DEFAULT NULL,
  `bis` date DEFAULT NULL,
  `zeile1` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `zeile2` varchar(250) CHARACTER SET utf8 DEFAULT NULL,
  `ort` varchar(250) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bau_tb_bauphasen`
--

DROP TABLE IF EXISTS `bau_tb_bauphasen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bau_tb_bauphasen` (
  `year` year(4) NOT NULL,
  `package` varchar(10) NOT NULL,
  `day1` tinyint(1) DEFAULT NULL,
  `duration` tinyint(1) DEFAULT NULL,
  `cwfrom` tinyint(2) DEFAULT NULL,
  `cwto` tinyint(2) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT NULL,
  PRIMARY KEY (`year`,`package`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Vorgesehene Bauwochen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bau_tb_event`
--

DROP TABLE IF EXISTS `bau_tb_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bau_tb_event` (
  `ticket` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ownerid` int(11) DEFAULT NULL,
  `ticketowner` varchar(20) DEFAULT NULL,
  `situation` text DEFAULT NULL,
  `progid` varchar(15) DEFAULT NULL,
  `progress` varchar(15) DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ticket`),
  KEY `ownerid` (`ownerid`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COMMENT='Baugruppentätigkeit';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bau_tb_event_more`
--

DROP TABLE IF EXISTS `bau_tb_event_more`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bau_tb_event_more` (
  `ticket` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `refyear` year(4) NOT NULL DEFAULT 0000,
  `cweek` tinyint(2) NOT NULL DEFAULT 0,
  `seq` float NOT NULL DEFAULT 1,
  `task` varchar(15) DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  `base` varchar(15) DEFAULT NULL,
  `nr` varchar(20) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ticket`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='Baugruppentätigkeit';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bau_tb_fron`
--

DROP TABLE IF EXISTS `bau_tb_fron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bau_tb_fron` (
  `year` year(4) NOT NULL DEFAULT 0000,
  `cweek` tinyint(2) NOT NULL DEFAULT 0,
  `seq` float NOT NULL DEFAULT 1,
  `task` varchar(15) DEFAULT NULL,
  `group` int(11) DEFAULT NULL,
  `base` varchar(15) DEFAULT NULL,
  `plan` text DEFAULT NULL,
  `hours` float DEFAULT NULL,
  `result` text DEFAULT NULL,
  `nr` varchar(20) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`year`,`cweek`,`seq`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Baugruppentätigkeit';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bau_tb_wochenplan`
--

DROP TABLE IF EXISTS `bau_tb_wochenplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bau_tb_wochenplan` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `period` varchar(10) NOT NULL DEFAULT '',
  `seq` tinyint(4) DEFAULT 1,
  `base` varchar(10) NOT NULL DEFAULT '',
  `category` tinyint(4) DEFAULT NULL,
  `org` int(11) DEFAULT NULL,
  `eventlabel` varchar(20) DEFAULT NULL,
  `contact` int(11) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp(),
  `modifier` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`bid`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='Bauabteilung Wocheneinteilung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bulkletter`
--

DROP TABLE IF EXISTS `bulkletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bulkletter` (
  `kind` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `filename` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `assignedCols` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailSubject` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailMessage` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `mailFooter` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`kind`,`filename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `calendarPopup`
--

DROP TABLE IF EXISTS `calendarPopup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendarPopup` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `calname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `txt` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `entered` datetime DEFAULT NULL,
  `modifier` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cat_todo`
--

DROP TABLE IF EXISTS `cat_todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_todo` (
  `cat` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`cat`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='Todo Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dashboard_support`
--

DROP TABLE IF EXISTS `dashboard_support`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_support` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(45) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `txt` text DEFAULT NULL,
  `kind` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'ICONresolved',
  `public` varchar(45) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `pivot` text DEFAULT NULL,
  `workflow` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=MyISAM AUTO_INCREMENT=107 DEFAULT CHARSET=utf8 COMMENT='Todo Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dashboard_todo`
--

DROP TABLE IF EXISTS `dashboard_todo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_todo` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `originator` int(11) DEFAULT NULL,
  `customer` varchar(200) DEFAULT NULL,
  `customer_ident` int(11) DEFAULT NULL,
  `cat` varchar(45) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `txt` text DEFAULT NULL,
  `kind` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'ICONresolved',
  `prio` int(11) DEFAULT 3,
  `duedate` date DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `completed` date DEFAULT '0000-00-00',
  `emailTextCompleted` text DEFAULT NULL,
  `hours2complete` decimal(10,1) DEFAULT NULL,
  `pivot` text DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=MyISAM AUTO_INCREMENT=151 DEFAULT CHARSET=utf8 COMMENT='Todo Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dashboard_todoOther`
--

DROP TABLE IF EXISTS `dashboard_todoOther`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_todoOther` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `originator` int(11) DEFAULT NULL,
  `customer` varchar(200) DEFAULT NULL,
  `customer_ident` int(11) DEFAULT NULL,
  `cat` varchar(45) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `txt` text DEFAULT NULL,
  `kind` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT 'ICONresolved',
  `prio` int(11) DEFAULT 3,
  `duedate` date DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `completed` date DEFAULT '0000-00-00',
  `emailTextCompleted` text DEFAULT NULL,
  `hours2complete` decimal(10,1) DEFAULT NULL,
  `pivot` text DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='Todo Categories';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_RWD_Essen`
--

DROP TABLE IF EXISTS `dg_RWD_Essen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_RWD_Essen` (
  `ident` varchar(100) NOT NULL DEFAULT '',
  `location` varchar(100) NOT NULL DEFAULT '',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `meal` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`ident`,`location`,`date`,`meal`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Mahlzeiten für Essen-Anmeldung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_RWD_Essen_1_basket`
--

DROP TABLE IF EXISTS `dg_RWD_Essen_1_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_RWD_Essen_1_basket` (
  `_sessionID_` varchar(100) NOT NULL DEFAULT '',
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp(),
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `ident` text DEFAULT NULL COMMENT 'RWD_Essen_1',
  `location` text DEFAULT NULL COMMENT 'RWD_Essen_1',
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_RWD_Essen_1_complStep`
--

DROP TABLE IF EXISTS `dg_RWD_Essen_1_complStep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_RWD_Essen_1_complStep` (
  `_sessionID_` varchar(100) NOT NULL,
  `_stepCompleted_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table of completed steps';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_RWD_Essen_basket`
--

DROP TABLE IF EXISTS `dg_RWD_Essen_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_RWD_Essen_basket` (
  `_sessionID_` varchar(100) NOT NULL DEFAULT '',
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp(),
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `short4` text DEFAULT NULL COMMENT 'dg_Essen_3',
  `ident` text DEFAULT NULL COMMENT 'dg_Essen_3',
  `location` text DEFAULT NULL COMMENT 'dg_Essen_1',
  `firstname` text DEFAULT NULL COMMENT 'dg_Essen_4',
  `lastname` text DEFAULT NULL COMMENT 'dg_Essen_4',
  `email` text DEFAULT NULL COMMENT 'dg_Essen_4',
  `fon` text DEFAULT NULL COMMENT 'dg_Essen_4',
  `dept` text DEFAULT NULL COMMENT 'dg_Essen_4',
  `numPers` text DEFAULT NULL COMMENT 'dg_Essen_4',
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_RWD_Essen_complStep`
--

DROP TABLE IF EXISTS `dg_RWD_Essen_complStep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_RWD_Essen_complStep` (
  `_sessionID_` varchar(100) NOT NULL,
  `_stepCompleted_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table of completed steps';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_RWD_Essen_meals`
--

DROP TABLE IF EXISTS `dg_RWD_Essen_meals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_RWD_Essen_meals` (
  `_sessionID_` varchar(100) NOT NULL DEFAULT '',
  `date` date NOT NULL DEFAULT '0000-00-00',
  `meal` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`_sessionID_`,`date`,`meal`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Mahlzeiten für Essen-Anmeldung';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_RWD_Essen_transfer`
--

DROP TABLE IF EXISTS `dg_RWD_Essen_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_RWD_Essen_transfer` (
  `_auto_` int(11) NOT NULL AUTO_INCREMENT,
  `_sessionID_` varchar(100) DEFAULT NULL,
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp(),
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `location` text DEFAULT NULL COMMENT 'dg_Essen_1',
  `short4` text DEFAULT NULL COMMENT 'dg_Essen_3',
  `ident` text DEFAULT NULL COMMENT 'dg_Essen_3',
  `firstname` text DEFAULT NULL COMMENT 'dg_Essen_4',
  `lastname` text DEFAULT NULL COMMENT 'dg_Essen_4',
  `email` text DEFAULT NULL COMMENT 'dg_Essen_4',
  `fon` text DEFAULT NULL COMMENT 'dg_Essen_4',
  `dept` text DEFAULT NULL COMMENT 'dg_Essen_4',
  `numPers` text DEFAULT NULL COMMENT 'dg_Essen_4',
  PRIMARY KEY (`_auto_`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='transfer table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_contact_details_basic_keep`
--

DROP TABLE IF EXISTS `dg_contact_details_basic_keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_contact_details_basic_keep` (
  `_sessionID_` varchar(100) NOT NULL DEFAULT '',
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `appell` text DEFAULT NULL COMMENT 'contact_details_basic',
  `firstname` text DEFAULT NULL COMMENT 'contact_details_basic',
  `lastname` text DEFAULT NULL COMMENT 'contact_details_basic',
  `street` text DEFAULT NULL COMMENT 'contact_details_basic',
  `zip` text DEFAULT NULL COMMENT 'contact_details_basic',
  `city` text DEFAULT NULL COMMENT 'contact_details_basic',
  `country` text DEFAULT NULL COMMENT 'contact_details_basic',
  `phone` text DEFAULT NULL COMMENT 'contact_details_basic',
  `fonmobile` text DEFAULT NULL COMMENT 'contact_details_basic',
  `email` text DEFAULT NULL COMMENT 'contact_details_basic',
  `lang_corr` text DEFAULT NULL COMMENT 'contact_details_basic',
  `remarks` text DEFAULT NULL COMMENT 'contact_details_basic',
  `userip` text DEFAULT NULL COMMENT 'contact_details_basic',
  `pob` text DEFAULT NULL COMMENT 'contact_details_basic',
  `title` text DEFAULT NULL COMMENT 'contact_details_basic',
  `recruited_by` text DEFAULT NULL COMMENT 'contact_details_basic',
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_contact_details_fron_keep`
--

DROP TABLE IF EXISTS `dg_contact_details_fron_keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_contact_details_fron_keep` (
  `_sessionID_` varchar(100) NOT NULL DEFAULT '',
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `firstname` text DEFAULT NULL COMMENT 'contact_details_fron',
  `lastname` text DEFAULT NULL COMMENT 'contact_details_fron',
  `street` text DEFAULT NULL COMMENT 'contact_details_fron',
  `pob` text DEFAULT NULL COMMENT 'contact_details_fron',
  `city` text DEFAULT NULL COMMENT 'contact_details_fron',
  `country` text DEFAULT NULL COMMENT 'contact_details_fron',
  `phone` text DEFAULT NULL COMMENT 'contact_details_fron',
  `fonmobile` text DEFAULT NULL COMMENT 'contact_details_fron',
  `fonbusiness` text DEFAULT NULL COMMENT 'contact_details_fron',
  `name_emerg` text DEFAULT NULL COMMENT 'contact_details_fron',
  `firstname_emerg` text DEFAULT NULL COMMENT 'contact_details_fron',
  `lastname_emerg` text DEFAULT NULL COMMENT 'contact_details_fron',
  `phone_emerg` text DEFAULT NULL COMMENT 'contact_details_fron',
  `email_emerg` text DEFAULT NULL COMMENT 'contact_details_fron',
  `fon_emerg` text DEFAULT NULL COMMENT 'contact_details_fron',
  `zip` text DEFAULT NULL COMMENT 'contact_details_fron',
  `accid_insur` text DEFAULT NULL COMMENT 'contact_details_fron',
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_contact_ship_details_keep`
--

DROP TABLE IF EXISTS `dg_contact_ship_details_keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_contact_ship_details_keep` (
  `_sessionID_` varchar(100) NOT NULL DEFAULT '',
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `appell` text DEFAULT NULL COMMENT 'contact_ship_details',
  `title` text DEFAULT NULL COMMENT 'contact_ship_details',
  `firstname` text DEFAULT NULL COMMENT 'contact_ship_details',
  `lastname` text DEFAULT NULL COMMENT 'contact_ship_details',
  `street` text DEFAULT NULL COMMENT 'contact_ship_details',
  `pob` text DEFAULT NULL COMMENT 'contact_ship_details',
  `zip` text DEFAULT NULL COMMENT 'contact_ship_details',
  `city` text DEFAULT NULL COMMENT 'contact_ship_details',
  `country` text DEFAULT NULL COMMENT 'contact_ship_details',
  `phone` text DEFAULT NULL COMMENT 'contact_ship_details',
  `fonmobile` text DEFAULT NULL COMMENT 'contact_ship_details',
  `email` text DEFAULT NULL COMMENT 'contact_ship_details',
  `lang_corr` text DEFAULT NULL COMMENT 'contact_ship_details',
  `remarks` text DEFAULT NULL COMMENT 'contact_ship_details',
  `userip` text DEFAULT NULL COMMENT 'contact_ship_details',
  `ship_title` text DEFAULT NULL COMMENT 'contact_ship_details',
  `ship_appell` text DEFAULT NULL COMMENT 'contact_ship_details',
  `ship_firstname` text DEFAULT NULL COMMENT 'contact_ship_details',
  `ship_lastname` text DEFAULT NULL COMMENT 'contact_ship_details',
  `ship_street` text DEFAULT NULL COMMENT 'contact_ship_details',
  `ship_pob` text DEFAULT NULL COMMENT 'contact_ship_details',
  `ship_zip` text DEFAULT NULL COMMENT 'contact_ship_details',
  `ship_city` text DEFAULT NULL COMMENT 'contact_ship_details',
  `ship_country` text DEFAULT NULL COMMENT 'contact_ship_details',
  `inv_appell` text DEFAULT NULL COMMENT 'contact_ship_details',
  `inv_title` text DEFAULT NULL COMMENT 'contact_ship_details',
  `inv_firstname` text DEFAULT NULL COMMENT 'contact_ship_details',
  `inv_lastname` text DEFAULT NULL COMMENT 'contact_ship_details',
  `inv_street` text DEFAULT NULL COMMENT 'contact_ship_details',
  `inv_pob` text DEFAULT NULL COMMENT 'contact_ship_details',
  `inv_zip` text DEFAULT NULL COMMENT 'contact_ship_details',
  `inv_city` text DEFAULT NULL COMMENT 'contact_ship_details',
  `inv_country` text DEFAULT NULL COMMENT 'contact_ship_details',
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dfb_licence_keep`
--

DROP TABLE IF EXISTS `dg_dfb_licence_keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dfb_licence_keep` (
  `_sessionID_` varchar(100) NOT NULL DEFAULT '',
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `licence_road` text DEFAULT NULL COMMENT 'dfb_licence',
  `licence_rail` text DEFAULT NULL COMMENT 'dfb_licence',
  `licence_bau` text DEFAULT NULL COMMENT 'dfb_licence',
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dfb_profile_basic_keep`
--

DROP TABLE IF EXISTS `dg_dfb_profile_basic_keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dfb_profile_basic_keep` (
  `_sessionID_` varchar(100) NOT NULL DEFAULT '',
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp(),
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `birthday` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `nationality` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `education` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `actual_job` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `driver_license_cat` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `skills_rail` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `skills_lang` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `accid_insur` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `work_motive` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `voluwork_yearly` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `poss_wdays` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `poss_dayblocs` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dfbag_aktien_erh_basket`
--

DROP TABLE IF EXISTS `dg_dfbag_aktien_erh_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dfbag_aktien_erh_basket` (
  `_sessionID_` varchar(100) NOT NULL DEFAULT '',
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp(),
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `akt_nom100` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_nom200` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_nom250` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_nom300` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_nom400` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_nom500` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_part200` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_shareholder` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_ship` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_remarks` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `appell` text DEFAULT NULL COMMENT 'contact_ship_details',
  `title` text DEFAULT NULL COMMENT 'contact_ship_details',
  `firstname` text DEFAULT NULL COMMENT 'contact_ship_details',
  `lastname` text DEFAULT NULL COMMENT 'contact_ship_details',
  `street` text DEFAULT NULL COMMENT 'contact_ship_details',
  `pob` text DEFAULT NULL COMMENT 'contact_ship_details',
  `zip` text DEFAULT NULL COMMENT 'contact_ship_details',
  `city` text DEFAULT NULL COMMENT 'contact_ship_details',
  `country` text DEFAULT NULL COMMENT 'contact_ship_details',
  `phone` text DEFAULT NULL COMMENT 'contact_ship_details',
  `fonmobile` text DEFAULT NULL COMMENT 'contact_ship_details',
  `email` text DEFAULT NULL COMMENT 'contact_ship_details',
  `lang_corr` text DEFAULT NULL COMMENT 'contact_ship_details',
  `remarks` text DEFAULT NULL COMMENT 'contact_ship_details',
  `userip` text DEFAULT NULL COMMENT 'contact_ship_details',
  `inv_appell` text DEFAULT NULL,
  `inv_title` text DEFAULT NULL,
  `inv_firstname` text DEFAULT NULL,
  `inv_lastname` text DEFAULT NULL,
  `inv_street` text DEFAULT NULL,
  `inv_pob` text DEFAULT NULL,
  `inv_zip` text DEFAULT NULL,
  `inv_city` text DEFAULT NULL,
  `inv_country` text DEFAULT NULL,
  `ship_pob` text DEFAULT NULL COMMENT 'contact_ship_details',
  `akt_kind` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dfbag_aktien_erh_complStep`
--

DROP TABLE IF EXISTS `dg_dfbag_aktien_erh_complStep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dfbag_aktien_erh_complStep` (
  `_sessionID_` varchar(100) NOT NULL,
  `_stepCompleted_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table of completed steps';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dfbag_aktien_erh_transfer`
--

DROP TABLE IF EXISTS `dg_dfbag_aktien_erh_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dfbag_aktien_erh_transfer` (
  `_auto_` int(11) NOT NULL AUTO_INCREMENT,
  `_sessionID_` varchar(100) DEFAULT NULL,
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp(),
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `akt_nom100` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_nom200` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_nom250` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_nom300` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_nom400` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_nom500` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_part200` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_shareholder` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_ship` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_remarks` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `appell` text DEFAULT NULL COMMENT 'contact_ship_details',
  `title` text DEFAULT NULL COMMENT 'contact_ship_details',
  `firstname` text DEFAULT NULL COMMENT 'contact_ship_details',
  `lastname` text DEFAULT NULL COMMENT 'contact_ship_details',
  `street` text DEFAULT NULL COMMENT 'contact_ship_details',
  `pob` text DEFAULT NULL COMMENT 'contact_ship_details',
  `zip` text DEFAULT NULL COMMENT 'contact_ship_details',
  `city` text DEFAULT NULL COMMENT 'contact_ship_details',
  `country` text DEFAULT NULL COMMENT 'contact_ship_details',
  `phone` text DEFAULT NULL COMMENT 'contact_ship_details',
  `fonmobile` text DEFAULT NULL COMMENT 'contact_ship_details',
  `email` text DEFAULT NULL COMMENT 'contact_ship_details',
  `lang_corr` text DEFAULT NULL COMMENT 'contact_ship_details',
  `remarks` text DEFAULT NULL COMMENT 'contact_ship_details',
  `userip` text DEFAULT NULL COMMENT 'contact_ship_details',
  `inv_appell` text DEFAULT NULL,
  `inv_title` text DEFAULT NULL,
  `inv_firstname` text DEFAULT NULL,
  `inv_lastname` text DEFAULT NULL,
  `inv_street` text DEFAULT NULL,
  `inv_pob` text DEFAULT NULL,
  `inv_zip` text DEFAULT NULL,
  `inv_city` text DEFAULT NULL,
  `inv_country` text DEFAULT NULL,
  `ship_pob` text DEFAULT NULL COMMENT 'contact_ship_details',
  `akt_kind` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  PRIMARY KEY (`_auto_`)
) ENGINE=MyISAM AUTO_INCREMENT=266 DEFAULT CHARSET=utf8 COMMENT='transfer table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dfbag_frondienst_1_basket`
--

DROP TABLE IF EXISTS `dg_dfbag_frondienst_1_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dfbag_frondienst_1_basket` (
  `_sessionID_` varchar(100) NOT NULL DEFAULT '',
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `firstname` text DEFAULT NULL COMMENT 'contact_details_fron',
  `lastname` text DEFAULT NULL COMMENT 'contact_details_fron',
  `street` text DEFAULT NULL COMMENT 'contact_details_fron',
  `pob` text DEFAULT NULL COMMENT 'contact_details_fron',
  `zip` text DEFAULT NULL COMMENT 'contact_details_fron',
  `city` text DEFAULT NULL COMMENT 'contact_details_fron',
  `country` text DEFAULT NULL COMMENT 'contact_details_fron',
  `phone` text DEFAULT NULL COMMENT 'contact_details_fron',
  `fonmobile` text DEFAULT NULL COMMENT 'contact_details_fron',
  `fonbusiness` text DEFAULT NULL COMMENT 'contact_details_fron',
  `firstname_emerg` text DEFAULT NULL COMMENT 'contact_details_fron',
  `lastname_emerg` text DEFAULT NULL COMMENT 'contact_details_fron',
  `fon_emerg` text DEFAULT NULL COMMENT 'contact_details_fron',
  `email_emerg` text DEFAULT NULL COMMENT 'contact_details_fron',
  `licence_road` text DEFAULT NULL COMMENT 'dfb_licence',
  `licence_rail` text DEFAULT NULL COMMENT 'dfb_licence',
  `licence_bau` text DEFAULT NULL COMMENT 'dfb_licence',
  `train_drive` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `train_maintain` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `trainops` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `stationops` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `public_relations` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `constr_serv` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `RwD_serv` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `IT_serv` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `club_activity` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `comment` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `plscontactme` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `accid_insur` text DEFAULT NULL COMMENT 'contact_details_fron',
  `val` text DEFAULT NULL COMMENT 'dfb_job_desired',
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dfbag_frondienst_1_transfer`
--

DROP TABLE IF EXISTS `dg_dfbag_frondienst_1_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dfbag_frondienst_1_transfer` (
  `_auto_` int(11) NOT NULL AUTO_INCREMENT,
  `_sessionID_` varchar(100) DEFAULT NULL,
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `firstname` text DEFAULT NULL COMMENT 'contact_details_fron',
  `lastname` text DEFAULT NULL COMMENT 'contact_details_fron',
  `street` text DEFAULT NULL COMMENT 'contact_details_fron',
  `pob` text DEFAULT NULL COMMENT 'contact_details_fron',
  `zip` text DEFAULT NULL COMMENT 'contact_details_fron',
  `city` text DEFAULT NULL COMMENT 'contact_details_fron',
  `country` text DEFAULT NULL COMMENT 'contact_details_fron',
  `phone` text DEFAULT NULL COMMENT 'contact_details_fron',
  `fonmobile` text DEFAULT NULL COMMENT 'contact_details_fron',
  `fonbusiness` text DEFAULT NULL COMMENT 'contact_details_fron',
  `firstname_emerg` text DEFAULT NULL COMMENT 'contact_details_fron',
  `lastname_emerg` text DEFAULT NULL COMMENT 'contact_details_fron',
  `fon_emerg` text DEFAULT NULL COMMENT 'contact_details_fron',
  `email_emerg` text DEFAULT NULL COMMENT 'contact_details_fron',
  `accid_insur` text DEFAULT NULL COMMENT 'contact_details_fron',
  `licence_road` text DEFAULT NULL COMMENT 'dfb_licence',
  `licence_rail` text DEFAULT NULL COMMENT 'dfb_licence',
  `licence_bau` text DEFAULT NULL COMMENT 'dfb_licence',
  `train_drive` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `train_maintain` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `trainops` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `stationops` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `public_relations` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `constr_serv` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `RwD_serv` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `IT_serv` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `club_activity` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `comment` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `plscontactme` text DEFAULT NULL COMMENT 'dfb_job_desired',
  PRIMARY KEY (`_auto_`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='transfer table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dfbag_frondienst_basket`
--

DROP TABLE IF EXISTS `dg_dfbag_frondienst_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dfbag_frondienst_basket` (
  `_sessionID_` varchar(100) NOT NULL DEFAULT '',
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp(),
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `appell` text DEFAULT NULL COMMENT 'contact_details_basic',
  `title` text DEFAULT NULL COMMENT 'contact_details_basic',
  `firstname` text DEFAULT NULL COMMENT 'contact_details_basic',
  `lastname` text DEFAULT NULL COMMENT 'contact_details_basic',
  `street` text DEFAULT NULL COMMENT 'contact_details_basic',
  `pob` text DEFAULT NULL COMMENT 'contact_details_basic',
  `zip` text DEFAULT NULL COMMENT 'contact_details_basic',
  `city` text DEFAULT NULL COMMENT 'contact_details_basic',
  `country` text DEFAULT NULL COMMENT 'contact_details_basic',
  `phone` text DEFAULT NULL COMMENT 'contact_details_basic',
  `fonmobile` text DEFAULT NULL COMMENT 'contact_details_basic',
  `email` text DEFAULT NULL COMMENT 'contact_details_basic',
  `lang_corr` text DEFAULT NULL COMMENT 'contact_details_basic',
  `remarks` text DEFAULT NULL COMMENT 'contact_details_basic',
  `userip` text DEFAULT NULL COMMENT 'contact_details_basic',
  `val` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `train_drive` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `train_maintain` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `trainops` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `stationops` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `public_relations` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `constr_serv` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `RwD_serv` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `IT_serv` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `comment` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `plscontactme` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `birthday` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `nationality` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `education` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `actual_job` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `driver_license_cat` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `skills_rail` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `skills_lang` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `accid_insur` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `work_motive` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `voluwork_yearly` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `poss_wdays` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `poss_dayblocs` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `IPclient` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `mgmt` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `recruited_by` text DEFAULT NULL COMMENT 'contact_details_basic',
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dfbag_frondienst_complStep`
--

DROP TABLE IF EXISTS `dg_dfbag_frondienst_complStep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dfbag_frondienst_complStep` (
  `_sessionID_` varchar(100) NOT NULL,
  `_stepCompleted_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table of completed steps';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dfbag_frondienst_transfer`
--

DROP TABLE IF EXISTS `dg_dfbag_frondienst_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dfbag_frondienst_transfer` (
  `_auto_` int(11) NOT NULL AUTO_INCREMENT,
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `appell` text DEFAULT NULL COMMENT 'contact_details_basic',
  `title` text DEFAULT NULL COMMENT 'contact_details_basic',
  `firstname` text DEFAULT NULL COMMENT 'contact_details_basic',
  `lastname` text DEFAULT NULL COMMENT 'contact_details_basic',
  `street` text DEFAULT NULL COMMENT 'contact_details_basic',
  `pob` text DEFAULT NULL COMMENT 'contact_details_basic',
  `zip` text DEFAULT NULL COMMENT 'contact_details_basic',
  `city` text DEFAULT NULL COMMENT 'contact_details_basic',
  `country` text DEFAULT NULL COMMENT 'contact_details_basic',
  `phone` text DEFAULT NULL COMMENT 'contact_details_basic',
  `fonmobile` text DEFAULT NULL COMMENT 'contact_details_basic',
  `email` text DEFAULT NULL COMMENT 'contact_details_basic',
  `lang_corr` text DEFAULT NULL COMMENT 'contact_details_basic',
  `recruited_by` text DEFAULT NULL COMMENT 'contact_details_basic',
  `remarks` text DEFAULT NULL COMMENT 'contact_details_basic',
  `train_drive` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `train_maintain` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `trainops` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `stationops` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `public_relations` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `constr_serv` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `RwD_serv` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `IT_serv` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `mgmt` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `club_activity` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `comment` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `plscontactme` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `birthday` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `nationality` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `education` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `actual_job` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `driver_license_cat` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `skills_rail` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `skills_lang` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `accid_insur` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `work_motive` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `voluwork_yearly` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `poss_wdays` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `poss_dayblocs` text DEFAULT NULL COMMENT 'dfb_profile_basic',
  `val` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `userip` text DEFAULT NULL COMMENT 'contact_details_basic',
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `IPclient` text DEFAULT NULL COMMENT 'dfb_job_desired',
  `_sessionID_` varchar(100) DEFAULT NULL,
  `auto2` int(10) unsigned NOT NULL DEFAULT 0 COMMENT 'Auto-Ref. Version 2',
  `modified2` datetime DEFAULT NULL COMMENT 'V2 Modifikationsdatum',
  `level_desir` text DEFAULT NULL COMMENT 'V2 gewünschte Hierarchiestufe',
  `mktg_serv` text DEFAULT NULL COMMENT 'V2 job at Marketing',
  PRIMARY KEY (`_auto_`)
) ENGINE=MyISAM AUTO_INCREMENT=365 DEFAULT CHARSET=utf8 COMMENT='transfer table to store temporary data';
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
  `comment` text DEFAULT NULL,
  `plscontactme` text DEFAULT NULL,
  `club_activity` text DEFAULT NULL,
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
  `auto2` text DEFAULT NULL,
  `modified2` text DEFAULT NULL,
  `level_desir` text DEFAULT NULL,
  `mktg_serv` text DEFAULT NULL,
  `archived` timestamp NOT NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dfbag_kadertagung_basket`
--

DROP TABLE IF EXISTS `dg_dfbag_kadertagung_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dfbag_kadertagung_basket` (
  `_sessionID_` varchar(100) NOT NULL DEFAULT '',
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `ident` text DEFAULT NULL COMMENT 'dg_dfbag_kadertagung',
  `short4` text DEFAULT NULL COMMENT 'dg_dfbag_kadertagung',
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dfbag_kadertagung_complStep`
--

DROP TABLE IF EXISTS `dg_dfbag_kadertagung_complStep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dfbag_kadertagung_complStep` (
  `_sessionID_` varchar(100) NOT NULL,
  `_stepCompleted_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table of completed steps';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dg_aktien_stk_keep`
--

DROP TABLE IF EXISTS `dg_dg_aktien_stk_keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dg_aktien_stk_keep` (
  `_sessionID_` varchar(100) NOT NULL DEFAULT '',
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `akt_nom100` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_nom200` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_nom250` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_nom300` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_nom400` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_nom500` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_part200` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_shareholder` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_remarks` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_ship` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  `akt_kind` text DEFAULT NULL COMMENT 'dg_aktien_stk',
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_dg_dfbag_kadertagung_keep`
--

DROP TABLE IF EXISTS `dg_dg_dfbag_kadertagung_keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_dg_dfbag_kadertagung_keep` (
  `_sessionID_` varchar(100) NOT NULL DEFAULT '',
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `ident` text DEFAULT NULL COMMENT 'dg_dfbag_kadertagung',
  `short4` text DEFAULT NULL COMMENT 'dg_dfbag_kadertagung',
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_ship_details_basic_keep`
--

DROP TABLE IF EXISTS `dg_ship_details_basic_keep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_ship_details_basic_keep` (
  `_sessionID_` varchar(100) NOT NULL DEFAULT '',
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `ship_appell` text DEFAULT NULL COMMENT 'ship_details_basic',
  `ship_title` text DEFAULT NULL COMMENT 'ship_details_basic',
  `ship_firstname` text DEFAULT NULL COMMENT 'ship_details_basic',
  `ship_lastname` text DEFAULT NULL COMMENT 'ship_details_basic',
  `ship_street` text DEFAULT NULL COMMENT 'ship_details_basic',
  `ship_pob` text DEFAULT NULL COMMENT 'ship_details_basic',
  `ship_zip` text DEFAULT NULL COMMENT 'ship_details_basic',
  `ship_city` text DEFAULT NULL COMMENT 'ship_details_basic',
  `ship_country` text DEFAULT NULL COMMENT 'ship_details_basic',
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_vfb_registration_basket`
--

DROP TABLE IF EXISTS `dg_vfb_registration_basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_vfb_registration_basket` (
  `_sessionID_` varchar(100) NOT NULL DEFAULT '',
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `desircat` text DEFAULT NULL COMMENT 'vfb_registration',
  `desirsect` text DEFAULT NULL COMMENT 'vfb_registration',
  `comment` text DEFAULT NULL COMMENT 'vfb_registration',
  `entered` text DEFAULT NULL COMMENT 'vfb_registration',
  `appell` text DEFAULT NULL COMMENT 'contact_details_basic',
  `firstname` text DEFAULT NULL COMMENT 'contact_details_basic',
  `lastname` text DEFAULT NULL COMMENT 'contact_details_basic',
  `street` text DEFAULT NULL COMMENT 'contact_details_basic',
  `zip` text DEFAULT NULL COMMENT 'contact_details_basic',
  `city` text DEFAULT NULL COMMENT 'contact_details_basic',
  `country` text DEFAULT NULL COMMENT 'contact_details_basic',
  `phone` text DEFAULT NULL COMMENT 'contact_details_basic',
  `fonmobile` text DEFAULT NULL COMMENT 'contact_details_basic',
  `email` text DEFAULT NULL COMMENT 'contact_details_basic',
  `lang_corr` text DEFAULT NULL COMMENT 'contact_details_basic',
  `remarks` text DEFAULT NULL COMMENT 'contact_details_basic',
  `userip` text DEFAULT NULL COMMENT 'contact_details_basic',
  `birthday` text DEFAULT NULL COMMENT 'vfb_other',
  `actual_job` text DEFAULT NULL COMMENT 'vfb_other',
  `pob` text DEFAULT NULL COMMENT 'contact_details_basic',
  `additional` text DEFAULT NULL COMMENT 'vfb_other',
  `title` text DEFAULT NULL COMMENT 'contact_details_basic',
  `prof_skills` text DEFAULT NULL COMMENT 'vfb_other',
  `__birth_comp` text DEFAULT NULL COMMENT 'vfb_registration',
  `recruited_by` text DEFAULT NULL COMMENT 'contact_details_basic',
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_vfb_registration_complStep`
--

DROP TABLE IF EXISTS `dg_vfb_registration_complStep`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_vfb_registration_complStep` (
  `_sessionID_` varchar(100) NOT NULL,
  `_stepCompleted_` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`_sessionID_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='basket table of completed steps';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dg_vfb_registration_transfer`
--

DROP TABLE IF EXISTS `dg_vfb_registration_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dg_vfb_registration_transfer` (
  `_auto_` int(11) NOT NULL AUTO_INCREMENT,
  `_sessionID_` varchar(100) DEFAULT NULL,
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `_lastUserIP_` varchar(50) DEFAULT NULL,
  `desircat` text DEFAULT NULL COMMENT 'vfb_registration',
  `desirsect` text DEFAULT NULL COMMENT 'vfb_registration',
  `comment` text DEFAULT NULL COMMENT 'vfb_registration',
  `entered` text DEFAULT NULL COMMENT 'vfb_registration',
  `appell` text DEFAULT NULL COMMENT 'contact_details_basic',
  `firstname` text DEFAULT NULL COMMENT 'contact_details_basic',
  `lastname` text DEFAULT NULL COMMENT 'contact_details_basic',
  `street` text DEFAULT NULL COMMENT 'contact_details_basic',
  `zip` text DEFAULT NULL COMMENT 'contact_details_basic',
  `city` text DEFAULT NULL COMMENT 'contact_details_basic',
  `country` text DEFAULT NULL COMMENT 'contact_details_basic',
  `phone` text DEFAULT NULL COMMENT 'contact_details_basic',
  `fonmobile` text DEFAULT NULL COMMENT 'contact_details_basic',
  `email` text DEFAULT NULL COMMENT 'contact_details_basic',
  `lang_corr` text DEFAULT NULL COMMENT 'contact_details_basic',
  `remarks` text DEFAULT NULL COMMENT 'contact_details_basic',
  `userip` text DEFAULT NULL COMMENT 'contact_details_basic',
  `birthday` text DEFAULT NULL COMMENT 'vfb_other',
  `actual_job` text DEFAULT NULL COMMENT 'vfb_other',
  `pob` text DEFAULT NULL COMMENT 'contact_details_basic',
  `additional` text DEFAULT NULL COMMENT 'vfb_other',
  `title` text DEFAULT NULL COMMENT 'contact_details_basic',
  `__birth_comp` text DEFAULT NULL COMMENT 'vfb_registration',
  `prof_skills` text DEFAULT NULL COMMENT 'vfb_other',
  `recruited_by` text DEFAULT NULL COMMENT 'contact_details_basic',
  PRIMARY KEY (`_auto_`)
) ENGINE=MyISAM AUTO_INCREMENT=832 DEFAULT CHARSET=utf8 COMMENT='transfer table to store temporary data';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fd_rollmat`
--

DROP TABLE IF EXISTS `fd_rollmat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fd_rollmat` (
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
  `created` datetime NOT NULL,
  `originator` int(11) NOT NULL DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) NOT NULL,
  PRIMARY KEY (`idroma`,`kind`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Objekte Rollmaterial';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fd_verkehr`
--

DROP TABLE IF EXISTS `fd_verkehr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fd_verkehr` (
  `idmov` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `opsdate` date DEFAULT NULL,
  `route` varchar(20) DEFAULT NULL,
  `lok` varchar(10) DEFAULT NULL,
  `wagen` varchar(50) DEFAULT NULL,
  `result` varchar(20) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `pax1cl` int(10) unsigned DEFAULT NULL,
  `pax2cl` int(10) unsigned DEFAULT NULL,
  `cl2group` int(10) unsigned DEFAULT NULL,
  `cl2child` int(10) unsigned DEFAULT NULL,
  `cl2in3` int(10) unsigned DEFAULT NULL,
  `handicap` int(10) unsigned DEFAULT NULL,
  `wchair` int(10) unsigned DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idmov`),
  UNIQUE KEY `opsdate` (`opsdate`,`route`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Fahrdienstliche Zugbewegungen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fd_zug`
--

DROP TABLE IF EXISTS `fd_zug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fd_zug` (
  `idzug` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `route` varchar(20) NOT NULL,
  `dep_station` varchar(10) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `kind` varchar(20) DEFAULT NULL,
  `service` varchar(29) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `originator` int(10) unsigned DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`idzug`),
  UNIQUE KEY `route` (`route`,`validfrom`),
  KEY `kind` (`kind`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='Fahrbetrieb: Zugrouten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gb_Data_Master`
--

DROP TABLE IF EXISTS `gb_Data_Master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gb_Data_Master` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `top` int(11) DEFAULT 0,
  `reply` int(11) DEFAULT 0,
  `justname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `topic` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted` tinyint(4) DEFAULT 0,
  `ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browserVersion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifier` int(11) DEFAULT 0,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='wir verwendet um eine produktive Tabelle via LIKE zu erstellen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gb_User_Master`
--

DROP TABLE IF EXISTS `gb_User_Master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gb_User_Master` (
  `justname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `registered` tinyint(4) DEFAULT 1,
  `entered` datetime DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted` tinyint(4) DEFAULT 0,
  `modifier` int(11) DEFAULT 0,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gb_guestBook_Data`
--

DROP TABLE IF EXISTS `gb_guestBook_Data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gb_guestBook_Data` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `top` int(11) DEFAULT 0,
  `reply` int(11) DEFAULT 0,
  `justname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `topic` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted` tinyint(4) DEFAULT 0,
  `ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browserVersion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifier` int(11) DEFAULT 0,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=800 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='wir verwendet um eine produktive Tabelle via LIKE zu erstellen';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gb_guestBook_User`
--

DROP TABLE IF EXISTS `gb_guestBook_User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gb_guestBook_User` (
  `justname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `registered` tinyint(4) DEFAULT 1,
  `entered` datetime DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted` tinyint(4) DEFAULT 0,
  `modifier` int(11) DEFAULT 0,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guestPoll2015`
--

DROP TABLE IF EXISTS `guestPoll2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestPoll2015` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `pollID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `q01` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q02` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q03` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q04` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q05` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q06` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q07` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q08` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q09` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q11` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q12` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q13` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q14` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q15` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q16` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q17` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q18` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q19` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q20` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q21` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q22` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q23` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browserVersion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=604 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Gaeste Umfrage';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guestPoll2016`
--

DROP TABLE IF EXISTS `guestPoll2016`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestPoll2016` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `pollID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `q01` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q02` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q03` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q04` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q05` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q06` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q07` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q08` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q09` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q11` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q12` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q13` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q14` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q15` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q16` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q17` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q18` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q19` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q20` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browserVersion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=1307 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Gaeste Umfrage Online';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guestPoll2017`
--

DROP TABLE IF EXISTS `guestPoll2017`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestPoll2017` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `pollID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `q01` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q02` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q03` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q04` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q05` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q06` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q07` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q08` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q09` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q11` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q12` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q13` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q14` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q15` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q16` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q17` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q18` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q19` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q20` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q21` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browserVersion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=1086 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Gaeste Umfrage Online';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guestPoll2017grp`
--

DROP TABLE IF EXISTS `guestPoll2017grp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestPoll2017grp` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `pollID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `r01` text CHARACTER SET utf8 DEFAULT NULL,
  `r02` text CHARACTER SET utf8 DEFAULT NULL,
  `r03` text CHARACTER SET utf8 DEFAULT NULL,
  `r04` text CHARACTER SET utf8 DEFAULT NULL,
  `r05` text CHARACTER SET utf8 DEFAULT NULL,
  `r06` text CHARACTER SET utf8 DEFAULT NULL,
  `r07` text CHARACTER SET utf8 DEFAULT NULL,
  `r08` text CHARACTER SET utf8 DEFAULT NULL,
  `r09` text CHARACTER SET utf8 DEFAULT NULL,
  `r10` text CHARACTER SET utf8 DEFAULT NULL,
  `r11` text CHARACTER SET utf8 DEFAULT NULL,
  `r12` text CHARACTER SET utf8 DEFAULT NULL,
  `r13` text CHARACTER SET utf8 DEFAULT NULL,
  `r14` text CHARACTER SET utf8 DEFAULT NULL,
  `r15` text CHARACTER SET utf8 DEFAULT NULL,
  `r16` text CHARACTER SET utf8 DEFAULT NULL,
  `r17` text CHARACTER SET utf8 DEFAULT NULL,
  `r18` text CHARACTER SET utf8 DEFAULT NULL,
  `r19` text CHARACTER SET utf8 DEFAULT NULL,
  `r20` text CHARACTER SET utf8 DEFAULT NULL,
  `q01` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q02` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q03` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q04` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q05` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q50` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q51` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q52` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q53` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q08` text CHARACTER SET utf8 DEFAULT NULL,
  `q54` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q06` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q07` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q09` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q11` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q12` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q13` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q14` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q15` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q16` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q17` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q18` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q19` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q20` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q21` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `contact_person` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browserVersion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Gaeste Umfrage Online';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guestPoll2018`
--

DROP TABLE IF EXISTS `guestPoll2018`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestPoll2018` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `pollID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `q01` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q02` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q03` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q04` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q05` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q06` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q07` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q08` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q09` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q11` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q12` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q13` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q14` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q15` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q16` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q17` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q18` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q19` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q20` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q21` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browserVersion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=1442 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Gaeste Umfrage Online';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guestPoll2018grp`
--

DROP TABLE IF EXISTS `guestPoll2018grp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestPoll2018grp` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `pollID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `r01` text CHARACTER SET utf8 DEFAULT NULL,
  `r02` text CHARACTER SET utf8 DEFAULT NULL,
  `r03` text CHARACTER SET utf8 DEFAULT NULL,
  `r04` text CHARACTER SET utf8 DEFAULT NULL,
  `r05` text CHARACTER SET utf8 DEFAULT NULL,
  `r06` text CHARACTER SET utf8 DEFAULT NULL,
  `r07` text CHARACTER SET utf8 DEFAULT NULL,
  `r08` text CHARACTER SET utf8 DEFAULT NULL,
  `r09` text CHARACTER SET utf8 DEFAULT NULL,
  `r10` text CHARACTER SET utf8 DEFAULT NULL,
  `r11` text CHARACTER SET utf8 DEFAULT NULL,
  `r12` text CHARACTER SET utf8 DEFAULT NULL,
  `r13` text CHARACTER SET utf8 DEFAULT NULL,
  `r14` text CHARACTER SET utf8 DEFAULT NULL,
  `r15` text CHARACTER SET utf8 DEFAULT NULL,
  `r16` text CHARACTER SET utf8 DEFAULT NULL,
  `r17` text CHARACTER SET utf8 DEFAULT NULL,
  `r18` text CHARACTER SET utf8 DEFAULT NULL,
  `r19` text CHARACTER SET utf8 DEFAULT NULL,
  `r20` text CHARACTER SET utf8 DEFAULT NULL,
  `q01` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q02` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q03` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q04` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q05` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q50` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q51` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q52` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q53` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q08` text CHARACTER SET utf8 DEFAULT NULL,
  `q54` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q06` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q07` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q09` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q11` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q12` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q13` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q14` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q15` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q16` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q17` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q18` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q19` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q20` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q21` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `contact_person` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browserVersion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Gaeste Umfrage Online';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guestPoll2019`
--

DROP TABLE IF EXISTS `guestPoll2019`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestPoll2019` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `pollID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `q01` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q02` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q03` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q04` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q05` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q06` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q07` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q08` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q09` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q11` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q12` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q13` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q14` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q15` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q16` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q17` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q18` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q19` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q20` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q21` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browserVersion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=1945 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Gaeste Umfrage Online';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guestPoll2019grp`
--

DROP TABLE IF EXISTS `guestPoll2019grp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestPoll2019grp` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `pollID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `r01` text CHARACTER SET utf8 DEFAULT NULL,
  `r02` text CHARACTER SET utf8 DEFAULT NULL,
  `r03` text CHARACTER SET utf8 DEFAULT NULL,
  `r04` text CHARACTER SET utf8 DEFAULT NULL,
  `r05` text CHARACTER SET utf8 DEFAULT NULL,
  `r06` text CHARACTER SET utf8 DEFAULT NULL,
  `r07` text CHARACTER SET utf8 DEFAULT NULL,
  `r08` text CHARACTER SET utf8 DEFAULT NULL,
  `r09` text CHARACTER SET utf8 DEFAULT NULL,
  `r10` text CHARACTER SET utf8 DEFAULT NULL,
  `r11` text CHARACTER SET utf8 DEFAULT NULL,
  `r12` text CHARACTER SET utf8 DEFAULT NULL,
  `r13` text CHARACTER SET utf8 DEFAULT NULL,
  `r14` text CHARACTER SET utf8 DEFAULT NULL,
  `r15` text CHARACTER SET utf8 DEFAULT NULL,
  `r16` text CHARACTER SET utf8 DEFAULT NULL,
  `r17` text CHARACTER SET utf8 DEFAULT NULL,
  `r18` text CHARACTER SET utf8 DEFAULT NULL,
  `r19` text CHARACTER SET utf8 DEFAULT NULL,
  `r20` text CHARACTER SET utf8 DEFAULT NULL,
  `q01` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q02` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q03` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q04` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q05` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q50` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q51` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q52` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q53` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q08` text CHARACTER SET utf8 DEFAULT NULL,
  `q54` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q06` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q07` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q09` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q11` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q12` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q13` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q14` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q15` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q16` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q17` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q18` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q19` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q20` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q21` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `contact_person` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browserVersion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Gaeste Umfrage Online';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guestPoll2020`
--

DROP TABLE IF EXISTS `guestPoll2020`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestPoll2020` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `pollID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `q01` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q02` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q03` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q04` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q05` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q06` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q07` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q08` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q09` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q11` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q12` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q13` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q14` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q15` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q16` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q17` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q18` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q19` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q20` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q21` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browserVersion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=873 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Gaeste Umfrage Online';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guestPoll2020grp`
--

DROP TABLE IF EXISTS `guestPoll2020grp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestPoll2020grp` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `pollID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `r01` text CHARACTER SET utf8 DEFAULT NULL,
  `r02` text CHARACTER SET utf8 DEFAULT NULL,
  `r03` text CHARACTER SET utf8 DEFAULT NULL,
  `r04` text CHARACTER SET utf8 DEFAULT NULL,
  `r05` text CHARACTER SET utf8 DEFAULT NULL,
  `r06` text CHARACTER SET utf8 DEFAULT NULL,
  `r07` text CHARACTER SET utf8 DEFAULT NULL,
  `r08` text CHARACTER SET utf8 DEFAULT NULL,
  `r09` text CHARACTER SET utf8 DEFAULT NULL,
  `r10` text CHARACTER SET utf8 DEFAULT NULL,
  `r11` text CHARACTER SET utf8 DEFAULT NULL,
  `r12` text CHARACTER SET utf8 DEFAULT NULL,
  `r13` text CHARACTER SET utf8 DEFAULT NULL,
  `r14` text CHARACTER SET utf8 DEFAULT NULL,
  `r15` text CHARACTER SET utf8 DEFAULT NULL,
  `r16` text CHARACTER SET utf8 DEFAULT NULL,
  `r17` text CHARACTER SET utf8 DEFAULT NULL,
  `r18` text CHARACTER SET utf8 DEFAULT NULL,
  `r19` text CHARACTER SET utf8 DEFAULT NULL,
  `r20` text CHARACTER SET utf8 DEFAULT NULL,
  `q01` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q02` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q03` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q04` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q05` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q50` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q51` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q52` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q53` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q08` text CHARACTER SET utf8 DEFAULT NULL,
  `q54` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q06` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q07` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q09` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q10` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q11` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q12` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q13` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q14` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q15` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q16` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q17` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q18` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q19` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q20` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `q21` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `contact_person` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `sex` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browserVersion` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `platform` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Gaeste Umfrage Online';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guestPollSat`
--

DROP TABLE IF EXISTS `guestPollSat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestPollSat` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `rank` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txt` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Gaeste Umfrage: Zufriedenheiten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `guestPollSat2015`
--

DROP TABLE IF EXISTS `guestPollSat2015`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guestPollSat2015` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `rank` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txt` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Gaeste Umfrage: Zufriedenheiten';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ideen`
--

DROP TABLE IF EXISTS `ideen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ideen` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descr` text COLLATE utf8_unicode_ci NOT NULL,
  `pageid` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`auto`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Ideen Liste';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `intranet_special`
--

DROP TABLE IF EXISTS `intranet_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intranet_special` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `button_class` varchar(100) DEFAULT NULL,
  `descr` varchar(100) DEFAULT NULL,
  `page_element` int(11) DEFAULT NULL,
  `validfrom` date NOT NULL DEFAULT '0000-00-00',
  `validto` date DEFAULT '9999-12-31',
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`auto`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Intranet News, Hilfe, Hinweise, Alarme usw. pro Seite';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `loginNews`
--

DROP TABLE IF EXISTS `loginNews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loginNews` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `validfrom` datetime DEFAULT NULL,
  `validto` datetime DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 0,
  `hide` varchar(100) COLLATE utf8_unicode_ci DEFAULT '0',
  `display` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prio` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permFE` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT '0',
  `personal` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sqlperm` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `special` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `resetUserParm` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pivot` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mailcollect`
--

DROP TABLE IF EXISTS `mailcollect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mailcollect` (
  `id_nl` int(11) NOT NULL AUTO_INCREMENT,
  `firma` varchar(50) DEFAULT NULL,
  `nname` varchar(50) DEFAULT NULL,
  `vname` varchar(30) DEFAULT NULL,
  `str` varchar(30) DEFAULT NULL,
  `hnr` varchar(10) DEFAULT NULL,
  `land` varchar(3) DEFAULT NULL,
  `plz` varchar(15) DEFAULT NULL,
  `ort` varchar(30) DEFAULT NULL,
  `email` varchar(50) NOT NULL DEFAULT '',
  `woher` varchar(15) DEFAULT NULL,
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_nl`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=161 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `massmail_storage`
--

DROP TABLE IF EXISTS `massmail_storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `massmail_storage` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `pageid` varchar(50) DEFAULT '0',
  `sender` varchar(200) DEFAULT NULL,
  `appell` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `mailbody` mediumtext DEFAULT NULL,
  `footer` text DEFAULT NULL,
  `baseurl` varchar(200) DEFAULT NULL,
  `addrSelected` text DEFAULT NULL,
  `addrSent` text DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `department` varchar(100) DEFAULT NULL,
  `workflow` varchar(100) DEFAULT NULL COMMENT 'Prozessname gemäss dfb_gen.workflow',
  `template` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=548 DEFAULT CHARSET=utf8 COMMENT='AJAX massmail storage ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `massmail_storage_2016-08-18`
--

DROP TABLE IF EXISTS `massmail_storage_2016-08-18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `massmail_storage_2016-08-18` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `pageid` varchar(50) DEFAULT '0',
  `sender` varchar(200) DEFAULT NULL,
  `appell` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `mailbody` mediumtext DEFAULT NULL,
  `baseurl` varchar(200) DEFAULT NULL,
  `addrSelected` text DEFAULT NULL,
  `addrSent` text DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `department` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8 COMMENT='AJAX massmail storage ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `massmail_storage_20200601_092413`
--

DROP TABLE IF EXISTS `massmail_storage_20200601_092413`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `massmail_storage_20200601_092413` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `pageid` varchar(50) DEFAULT '0',
  `sender` varchar(200) DEFAULT NULL,
  `appell` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `mailbody` mediumtext DEFAULT NULL,
  `footer` text DEFAULT NULL,
  `baseurl` varchar(200) DEFAULT NULL,
  `addrSelected` text DEFAULT NULL,
  `addrSent` text DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `department` varchar(100) DEFAULT NULL,
  `workflow` varchar(100) DEFAULT NULL COMMENT 'Prozessname gemäss dfb_gen.workflow',
  `template` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=493 DEFAULT CHARSET=utf8 COMMENT='AJAX massmail storage ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `massmail_template`
--

DROP TABLE IF EXISTS `massmail_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `massmail_template` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templ` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `news_GL`
--

DROP TABLE IF EXISTS `news_GL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_GL` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `cat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageids` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `validfrom` datetime DEFAULT NULL,
  `validto` datetime DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `originator` int(11) DEFAULT 0,
  `modifier` int(11) DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `news_IT`
--

DROP TABLE IF EXISTS `news_IT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_IT` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `cat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageids` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `validfrom` datetime DEFAULT NULL,
  `validto` datetime DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `originator` int(11) DEFAULT 0,
  `modifier` int(11) DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `news_furka2160`
--

DROP TABLE IF EXISTS `news_furka2160`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_furka2160` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `cat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageids` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `validfrom` datetime DEFAULT NULL,
  `validto` datetime DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `originator` int(11) DEFAULT 0,
  `modifier` int(11) DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `news_main`
--

DROP TABLE IF EXISTS `news_main`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_main` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `tablename` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `dbname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `container` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `txt` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `pageids` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_dir` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `img_loc` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_loc` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allowed` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fe_grp` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `responsible` int(11) DEFAULT NULL,
  `modifier` int(11) DEFAULT 0,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `seq` smallint(6) DEFAULT NULL,
  PRIMARY KEY (`auto`),
  UNIQUE KEY `news_main_PK` (`tablename`,`dbname`,`container`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `news_muster`
--

DROP TABLE IF EXISTS `news_muster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news_muster` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `datum` date DEFAULT NULL,
  `cat` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageids` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `msg` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `validfrom` datetime DEFAULT NULL,
  `validto` datetime DEFAULT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `originator` int(11) DEFAULT 0,
  `modifier` int(11) DEFAULT 0,
  `entered` datetime DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `optIn___NA`
--

DROP TABLE IF EXISTS `optIn___NA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `optIn___NA` (
  `email` varchar(200) CHARACTER SET utf8 NOT NULL DEFAULT 'illegal',
  `application` varchar(200) CHARACTER SET utf8 DEFAULT 'general',
  `confirmed` datetime DEFAULT current_timestamp(),
  `cancelled` datetime DEFAULT NULL COMMENT 'nachträglich abgemeldet',
  `reason` varchar(200) CHARACTER SET utf8 DEFAULT NULL COMMENT 'Abmeldungsgrund',
  `host` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT 0,
  `t3ver_oid` int(11) NOT NULL DEFAULT 0,
  `t3ver_id` int(11) NOT NULL DEFAULT 0,
  `t3ver_wsid` int(11) NOT NULL DEFAULT 0,
  `t3ver_label` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `t3ver_state` tinyint(4) NOT NULL DEFAULT 0,
  `t3ver_stage` int(11) NOT NULL DEFAULT 0,
  `t3ver_count` int(11) NOT NULL DEFAULT 0,
  `t3ver_tstamp` int(11) NOT NULL DEFAULT 0,
  `t3ver_move_id` int(11) NOT NULL DEFAULT 0,
  `t3_origuid` int(11) NOT NULL DEFAULT 0,
  `tstamp` int(11) unsigned NOT NULL DEFAULT 0,
  `sorting` int(11) unsigned NOT NULL DEFAULT 0,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT 0,
  `perms_userid` int(11) unsigned NOT NULL DEFAULT 0,
  `perms_groupid` int(11) unsigned NOT NULL DEFAULT 0,
  `perms_user` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `perms_group` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `perms_everybody` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `editlock` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `crdate` int(11) unsigned NOT NULL DEFAULT 0,
  `cruser_id` int(11) unsigned NOT NULL DEFAULT 0,
  `hidden` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `doktype` int(11) unsigned NOT NULL DEFAULT 0,
  `TSconfig` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `storage_pid` int(11) NOT NULL DEFAULT 0,
  `is_siteroot` tinyint(4) NOT NULL DEFAULT 0,
  `php_tree_stop` tinyint(4) NOT NULL DEFAULT 0,
  `tx_impexp_origuid` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `starttime` int(11) unsigned NOT NULL DEFAULT 0,
  `endtime` int(11) unsigned NOT NULL DEFAULT 0,
  `urltype` tinyint(4) unsigned NOT NULL DEFAULT 0,
  `shortcut` int(10) unsigned NOT NULL DEFAULT 0,
  `shortcut_mode` int(10) unsigned NOT NULL DEFAULT 0,
  `no_cache` int(10) unsigned NOT NULL DEFAULT 0,
  `fe_group` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `layout` int(11) unsigned NOT NULL DEFAULT 0,
  `url_scheme` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `target` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `media` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastUpdated` int(10) unsigned NOT NULL DEFAULT 0,
  `keywords` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `cache_timeout` int(10) unsigned NOT NULL DEFAULT 0,
  `newUntil` int(10) unsigned NOT NULL DEFAULT 0,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `no_search` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `SYS_LASTCHANGED` int(10) unsigned NOT NULL DEFAULT 0,
  `abstract` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(10) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `extendToSubpages` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `author` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `author_email` varchar(80) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_title` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `nav_hide` tinyint(4) NOT NULL DEFAULT 0,
  `content_from_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid` int(10) unsigned NOT NULL DEFAULT 0,
  `mount_pid_ol` tinyint(4) NOT NULL DEFAULT 0,
  `alias` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `l18n_cfg` tinyint(4) NOT NULL DEFAULT 0,
  `fe_login_mode` tinyint(4) NOT NULL DEFAULT 0,
  `backend_layout` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `backend_layout_next_level` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `tx_httpsenforcer_force_secure` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `cache_tags` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `categories` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`uid`),
  KEY `t3ver_oid` (`t3ver_oid`,`t3ver_wsid`),
  KEY `parent` (`pid`,`deleted`,`sorting`),
  KEY `alias` (`alias`),
  KEY `determineSiteRoot` (`deleted`,`hidden`,`is_siteroot`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `photoContest`
--

DROP TABLE IF EXISTS `photoContest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photoContest` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `contest` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Name des Wettbewerbs',
  `entered` datetime DEFAULT NULL COMMENT 'Eingabedatum',
  `pageId` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Typo Seitennummer',
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'pro E-Mail Adresse kann nur EIN Eintrag (der letzte) gespeichert werden',
  `telephone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recdate` datetime DEFAULT NULL COMMENT 'Aufnahmedatum',
  `slogan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `legend` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Titl, Kurzbeschreibung',
  `likes` int(11) DEFAULT 0 COMMENT 'Anzahl Stimmen',
  `mime` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'MIME Typ',
  `foto` longblob DEFAULT NULL,
  `thumb` longblob DEFAULT NULL,
  `size` varchar(100) COLLATE utf8_unicode_ci DEFAULT '0',
  `filename` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useragent` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hide` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `photoContestLikes`
--

DROP TABLE IF EXISTS `photoContestLikes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photoContestLikes` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `contest` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageId` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Typo Seitennummer',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mainkey` int(11) DEFAULT NULL COMMENT 'Feld `auto` aus der Haupttabelle',
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `photoContestLikes_tmpsave`
--

DROP TABLE IF EXISTS `photoContestLikes_tmpsave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photoContestLikes_tmpsave` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `contest` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageId` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Typo Seitennummer',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mainkey` int(11) DEFAULT NULL COMMENT 'Feld `auto` aus der Haupttabelle',
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `photoContestLikes_tmpsave1`
--

DROP TABLE IF EXISTS `photoContestLikes_tmpsave1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photoContestLikes_tmpsave1` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `contest` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pageId` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Typo Seitennummer',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mainkey` int(11) DEFAULT NULL COMMENT 'Feld `auto` aus der Haupttabelle',
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `photoContest_tmpsave`
--

DROP TABLE IF EXISTS `photoContest_tmpsave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photoContest_tmpsave` (
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `contest` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Name des Wettbewerbs',
  `entered` datetime DEFAULT NULL COMMENT 'Eingabedatum',
  `pageId` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Typo Seitennummer',
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'pro E-Mail Adresse kann nur EIN Eintrag (der letzte) gespeichert werden',
  `telephone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recdate` datetime DEFAULT NULL COMMENT 'Aufnahmedatum',
  `slogan` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `legend` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'Titl, Kurzbeschreibung',
  `likes` int(11) DEFAULT 0 COMMENT 'Anzahl Stimmen',
  `mime` varchar(100) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'MIME Typ',
  `foto` longblob DEFAULT NULL,
  `thumb` longblob DEFAULT NULL,
  `size` varchar(100) COLLATE utf8_unicode_ci DEFAULT '0',
  `filename` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `useragent` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hide` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `port_oeffnungszeiten`
--

DROP TABLE IF EXISTS `port_oeffnungszeiten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `port_oeffnungszeiten` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `col1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `col2` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `col3` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `seq` int(11) DEFAULT NULL,
  `modifier` int(11) DEFAULT 0,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `proj_intra_transfer`
--

DROP TABLE IF EXISTS `proj_intra_transfer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `proj_intra_transfer` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `who` int(11) DEFAULT NULL,
  `support` int(11) DEFAULT NULL,
  `what` text DEFAULT NULL,
  `target` date DEFAULT NULL,
  `projdoc` varchar(200) DEFAULT NULL,
  `percent` int(11) DEFAULT 0,
  `completed` date DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  PRIMARY KEY (`auto`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='Projekt Intranet Transfer zu Hostpoint';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stock__contact`
--

DROP TABLE IF EXISTS `stock__contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock__contact` (
  `id_contact` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` varchar(11) NOT NULL,
  `type` varchar(8) NOT NULL,
  `firma` varchar(50) DEFAULT NULL,
  `nname` varchar(50) NOT NULL,
  `vname` varchar(50) NOT NULL,
  `str` varchar(50) NOT NULL,
  `hnr` varchar(10) NOT NULL,
  `land` varchar(30) NOT NULL,
  `plz` varchar(10) NOT NULL,
  `ort` varchar(50) NOT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `telg` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `id_share` varchar(10) NOT NULL COMMENT 'Aktionär Nr',
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_contact`)
) ENGINE=MyISAM AUTO_INCREMENT=465 DEFAULT CHARSET=utf8 COMMENT='Kontakte Aktionariat';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stock__order`
--

DROP TABLE IF EXISTS `stock__order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock__order` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `a100` smallint(6) NOT NULL DEFAULT 0,
  `a200` smallint(6) NOT NULL DEFAULT 0,
  `a250` smallint(6) NOT NULL DEFAULT 0,
  `a300` smallint(6) NOT NULL DEFAULT 0,
  `a400` smallint(6) NOT NULL DEFAULT 0,
  `a500` smallint(6) NOT NULL DEFAULT 0,
  `ps200` smallint(6) NOT NULL DEFAULT 0,
  `remarks` tinytext DEFAULT NULL COMMENT 'Kommentar',
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_order`)
) ENGINE=MyISAM AUTO_INCREMENT=273 DEFAULT CHARSET=utf8 COMMENT='Zeichnungsscheine';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stock__order__2010`
--

DROP TABLE IF EXISTS `stock__order__2010`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock__order__2010` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `a100` smallint(6) NOT NULL DEFAULT 0,
  `a200` smallint(6) NOT NULL DEFAULT 0,
  `a250` smallint(6) NOT NULL DEFAULT 0,
  `a300` smallint(6) NOT NULL DEFAULT 0,
  `a400` smallint(6) NOT NULL DEFAULT 0,
  `a500` smallint(6) NOT NULL DEFAULT 0,
  `ps200` smallint(6) NOT NULL DEFAULT 0,
  `remarks` tinytext DEFAULT NULL COMMENT 'Kommentar',
  `tstamp` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_order`)
) ENGINE=MyISAM AUTO_INCREMENT=109 DEFAULT CHARSET=utf8 COMMENT='Zeichnungsscheine';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subscriptions` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `ident` int(11) DEFAULT NULL,
  `subscriber` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `entered` datetime DEFAULT current_timestamp(),
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `abo_status` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'unsubscribe | subscribe',
  `abo_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reason` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `action` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `suggestion`
--

DROP TABLE IF EXISTS `suggestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `suggestion` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `entered` datetime DEFAULT NULL,
  `reported` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `anonym` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `singlmult` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `addmemb` text CHARACTER SET utf8 DEFAULT NULL,
  `shortdescr` text CHARACTER SET utf8 DEFAULT NULL,
  `actualsit` text CHARACTER SET utf8 DEFAULT NULL,
  `targetsit` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `proposal` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `workflowstate` varchar(200) COLLATE utf8_unicode_ci DEFAULT 'gemeldet',
  `workflowkind` text CHARACTER SET utf8 DEFAULT NULL,
  `docu` text CHARACTER SET utf8 DEFAULT NULL,
  `emailText` text CHARACTER SET utf8 DEFAULT NULL COMMENT 'letzter Wert, falls mehrmals aufgerufen',
  `emailOther` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT 'letzter Wert, falls mehrmals aufgerufen',
  `pivot` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `tagebuch`
--

DROP TABLE IF EXISTS `tagebuch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tagebuch` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT current_timestamp(),
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `originator` int(11) NOT NULL DEFAULT 0,
  `modifier` int(11) NOT NULL DEFAULT 0,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `kind` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `txt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `who` varchar(200) COLLATE utf8_unicode_ci DEFAULT '',
  `effort` decimal(10,1) DEFAULT NULL,
  `flag` varchar(100) COLLATE utf8_unicode_ci DEFAULT '-1',
  `who_ident` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pivot` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `clipimage` longblob DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=209 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test_jobappl`
--

DROP TABLE IF EXISTS `test_jobappl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test_jobappl` (
  `_sessionID_` varchar(100) NOT NULL,
  `_timestamp_` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `_stepCompleted_` varchar(100) DEFAULT NULL,
  `_lastUserIP_` varchar(50) NOT NULL DEFAULT '',
  `train_drive` text DEFAULT NULL COMMENT 'vfb_registration',
  `train_maintain` text DEFAULT NULL COMMENT 'vfb_registration',
  `comment` text DEFAULT NULL COMMENT 'vfb_registration',
  `trainops` text DEFAULT NULL,
  `stationops` text DEFAULT NULL,
  `public_relations` text DEFAULT NULL,
  `constr_serv` text DEFAULT NULL,
  `RwD_serv` text DEFAULT NULL,
  `IT_serv` text DEFAULT NULL,
  `club_activity` text DEFAULT NULL,
  PRIMARY KEY (`_lastUserIP_`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='test table form development';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `va_webaktien`
--

DROP TABLE IF EXISTS `va_webaktien`;
/*!50001 DROP VIEW IF EXISTS `va_webaktien`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `va_webaktien` (
  `id_order` tinyint NOT NULL,
  `id_share` tinyint NOT NULL,
  `aname` tinyint NOT NULL,
  `kname` tinyint NOT NULL,
  `a100` tinyint NOT NULL,
  `a200` tinyint NOT NULL,
  `a250` tinyint NOT NULL,
  `a300` tinyint NOT NULL,
  `a400` tinyint NOT NULL,
  `a500` tinyint NOT NULL,
  `ps200` tinyint NOT NULL,
  `Hinweis` tinyint NOT NULL,
  `tstamp` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `vfb_nd_ausstellungen`
--

DROP TABLE IF EXISTS `vfb_nd_ausstellungen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vfb_nd_ausstellungen` (
  `seq` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `von` date DEFAULT NULL,
  `bis` date DEFAULT NULL,
  `zeile1` varchar(250) DEFAULT NULL,
  `zeile2` varchar(250) DEFAULT NULL,
  `ort` varchar(250) DEFAULT NULL,
  `remark` text DEFAULT NULL,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `modifier` int(10) unsigned NOT NULL DEFAULT 1,
  `modified` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`seq`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='Ausstellungsliste VFB Sektion Norddeutschland';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_enrollCollab`
--

DROP TABLE IF EXISTS `web_enrollCollab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_enrollCollab` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `salutation` varchar(45) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `streetno` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `lang_corr` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `interest` varchar(100) DEFAULT NULL,
  `management` text DEFAULT NULL,
  `construction` text DEFAULT NULL,
  `operation` text DEFAULT NULL,
  `informatics` text DEFAULT NULL,
  `marketing` text DEFAULT NULL,
  `rwd` text DEFAULT NULL,
  `zfw` text DEFAULT NULL,
  `sfb_vfb` text DEFAULT NULL,
  `commentEnroll` text DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='Anmeldeformular für Mitarbeit (MyISAM)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_enrollCollab__arc`
--

DROP TABLE IF EXISTS `web_enrollCollab__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_enrollCollab__arc` (
  `auto` text NOT NULL,
  `salutation` text DEFAULT NULL,
  `firstname` text DEFAULT NULL,
  `lastname` text DEFAULT NULL,
  `birthdate` text DEFAULT NULL,
  `streetno` text DEFAULT NULL,
  `zip` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `lang_corr` text DEFAULT NULL,
  `occupation` text DEFAULT NULL,
  `interest` text DEFAULT NULL,
  `management` text DEFAULT NULL,
  `construction` text DEFAULT NULL,
  `operation` text DEFAULT NULL,
  `informatics` text DEFAULT NULL,
  `marketing` text DEFAULT NULL,
  `rwd` text DEFAULT NULL,
  `zfw` text DEFAULT NULL,
  `sfb_vfb` text DEFAULT NULL,
  `commentEnroll` text DEFAULT NULL,
  `entered` text DEFAULT NULL,
  `modified` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `archived` timestamp NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Archiv des Anmeldeformulares für Mitarbeit (MyISAM)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_enrollCollab__hpsi`
--

DROP TABLE IF EXISTS `web_enrollCollab__hpsi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_enrollCollab__hpsi` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `salutation` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `streetno` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `zip` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang_corr` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `occupation` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interest` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `management` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `construction` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `operation` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `informatics` text CHARACTER SET utf8 DEFAULT NULL,
  `marketing` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `rwd` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `zfw` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `sfb_vfb` text CHARACTER SET utf8 DEFAULT NULL,
  `commentEnroll` text CHARACTER SET utf8 DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Anmeldeformular für Mitarbeit (INNODB)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_enrollDFB`
--

DROP TABLE IF EXISTS `web_enrollDFB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_enrollDFB` (
  `_auto_` int(11) NOT NULL AUTO_INCREMENT,
  `salutation` varchar(45) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `streetno` varchar(100) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `lang_corr` varchar(100) DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `actual_job` varchar(100) DEFAULT NULL,
  `management` text DEFAULT NULL,
  `construction` text DEFAULT NULL,
  `operation` text DEFAULT NULL,
  `informatics` text DEFAULT NULL,
  `marketing` text DEFAULT NULL,
  `rwd` text DEFAULT NULL,
  `zfw` text DEFAULT NULL,
  `sfb_vfb` text DEFAULT NULL,
  `commentEnroll` text DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`_auto_`)
) ENGINE=MyISAM AUTO_INCREMENT=527 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Anmeldeformular für Mitarbeit (MyISAM)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_enrollDFB__arc`
--

DROP TABLE IF EXISTS `web_enrollDFB__arc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_enrollDFB__arc` (
  `_auto_` text NOT NULL,
  `salutation` text DEFAULT NULL,
  `firstname` text DEFAULT NULL,
  `lastname` text DEFAULT NULL,
  `birthdate` text DEFAULT NULL,
  `streetno` text DEFAULT NULL,
  `zip` text DEFAULT NULL,
  `city` text DEFAULT NULL,
  `country` text DEFAULT NULL,
  `phone` text DEFAULT NULL,
  `mobile` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `lang_corr` text DEFAULT NULL,
  `occupation` text DEFAULT NULL,
  `actual_job` text DEFAULT NULL,
  `management` text DEFAULT NULL,
  `construction` text DEFAULT NULL,
  `operation` text DEFAULT NULL,
  `informatics` text DEFAULT NULL,
  `marketing` text DEFAULT NULL,
  `rwd` text DEFAULT NULL,
  `zfw` text DEFAULT NULL,
  `sfb_vfb` text DEFAULT NULL,
  `commentEnroll` text DEFAULT NULL,
  `entered` text DEFAULT NULL,
  `modified` text DEFAULT NULL,
  `ip` text DEFAULT NULL,
  `archived` timestamp NULL DEFAULT current_timestamp(),
  `agent` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Archiv des Anmeldeformulares für Mitarbeit (MyISAM)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_enrollFriend`
--

DROP TABLE IF EXISTS `web_enrollFriend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_enrollFriend` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `memberkind` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salutation` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `acadegree` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `streetno` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `pob` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recruited_by` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `additional` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `commentEnroll` text CHARACTER SET utf8 DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Anmeldeformular für Mitarbeit';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_enrollFriendDonat`
--

DROP TABLE IF EXISTS `web_enrollFriendDonat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_enrollFriendDonat` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `memberkind` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `salutation` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `acadegree` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `streetno` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `pob` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recruited_by` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `donamount` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `comment` text CHARACTER SET utf8 DEFAULT NULL,
  `entered` datetime DEFAULT NULL,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Anmeldeformular für Mitarbeit';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_jobs`
--

DROP TABLE IF EXISTS `web_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_jobs` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `comment` text CHARACTER SET utf8 DEFAULT NULL,
  `typoPage` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `elekey` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hide` tinyint(4) DEFAULT 0,
  `permFE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dept` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `dept_de` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `functgrp` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `functgrp_de` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type_of_activity` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `type_of_activity_de` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `contact_de` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link_de` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `additionalinfo` text CHARACTER SET utf8 DEFAULT NULL,
  `additionalinfo_de` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `entered` datetime DEFAULT NULL,
  `modifier` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `seq` int(11) DEFAULT 10,
  `validfrom` date DEFAULT '0000-00-00' COMMENT 'Gültigkeitsanfang',
  `validto` varchar(255) COLLATE utf8_unicode_ci DEFAULT '9999-12-31' COMMENT 'Gültigkeitsende',
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Offene Jobs veröffentlicht auf dem Webportal';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_oeffnungszeiten`
--

DROP TABLE IF EXISTS `web_oeffnungszeiten`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_oeffnungszeiten` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `heading` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(45) COLLATE utf8_unicode_ci DEFAULT 'de',
  `seq` int(11) DEFAULT NULL,
  `modifier` int(11) DEFAULT 0,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_oeffnungszeiten__2014-11-03`
--

DROP TABLE IF EXISTS `web_oeffnungszeiten__2014-11-03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_oeffnungszeiten__2014-11-03` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `heading` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `modifier` int(11) DEFAULT 0,
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_partner`
--

DROP TABLE IF EXISTS `web_partner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_partner` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homepage` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hide` tinyint(4) DEFAULT 0,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_partnerX`
--

DROP TABLE IF EXISTS `web_partnerX`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_partnerX` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `cat` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `logo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `homepage` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_pivot`
--

DROP TABLE IF EXISTS `web_pivot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_pivot` (
  `uid` int(11) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat0` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cat1` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `cat2` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `cat3` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pivot` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `starttime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `tstamp` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sys_language_uid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_responsible`
--

DROP TABLE IF EXISTS `web_responsible`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_responsible` (
  `cat` varchar(45) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `elekey` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `typoPage` int(11) DEFAULT 0,
  `typoTitle` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(45) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `permFE` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `extra` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifier` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pivot` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cat`,`elekey`,`lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `web_tableMain`
--

DROP TABLE IF EXISTS `web_tableMain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `web_tableMain` (
  `auto` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typoPage` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `typoTitle` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `elekey` varchar(100) CHARACTER SET utf8 DEFAULT 'RAND()' COMMENT 'zur Identifikation gleicher Einträge in Übersetzungen - d.h. elekey in ''de'' ist identisch zu elekey in ''fr'' und ''en''',
  `permFE` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lang` varchar(45) COLLATE utf8_unicode_ci DEFAULT 'de',
  `special` varchar(200) COLLATE utf8_unicode_ci DEFAULT 'tabular',
  `headerline` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `footerline` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `numbering` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `title_de` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `intro_de` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `introparm` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `titleDB` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `titleDB_de` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromFormsA` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SQLwhere` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col1` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col1_de` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col2_de` text CHARACTER SET utf8 DEFAULT NULL,
  `col3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col3_de` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col4` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col4_de` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col5` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col5_de` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col6` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col6_de` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col7` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col7_de` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col8` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col8_de` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col9` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `col9_de` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `footer_de` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `footerparm` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `validfrom` date DEFAULT '0000-00-00' COMMENT 'Gültigkeitsanfang',
  `validto` date DEFAULT '9999-12-31' COMMENT 'Gültigkeitsende',
  `hide` tinyint(4) DEFAULT 0,
  `CSSclass` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `JSlib` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CSSlib` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IMGresize` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relatedDocs` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `seq` int(11) DEFAULT 10,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `comment_de` text CHARACTER SET utf8 DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `entered` datetime DEFAULT NULL,
  `modifier` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pivot` text COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`auto`),
  UNIQUE KEY `elekey_UNIQUE` (`lang`,`elekey`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=884 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webportal_faq`
--

DROP TABLE IF EXISTS `webportal_faq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webportal_faq` (
  `idid` int(11) NOT NULL AUTO_INCREMENT,
  `entered` datetime DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `modified` timestamp NOT NULL DEFAULT current_timestamp(),
  `modifier` int(11) DEFAULT 1,
  `faq` varchar(250) DEFAULT NULL,
  `answer` text DEFAULT NULL,
  `cat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idid`),
  FULLTEXT KEY `webportal_faq` (`faq`,`answer`,`cat`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `workflow`
--

DROP TABLE IF EXISTS `workflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workflow` (
  `firstInChain` varchar(200) DEFAULT NULL,
  `wID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Workflow ID',
  `wProcess` varchar(45) DEFAULT NULL,
  `nextInChain` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL COMMENT 'Anwendungskategorie; wird nicht verwendet',
  `actionType` varchar(45) DEFAULT NULL COMMENT 'Art der Aktion, z.B. E-Mail',
  `condition` text DEFAULT NULL,
  `processType` varchar(200) DEFAULT NULL COMMENT 'einmalig, regelmässig, gesteuert; nicht verwendet',
  `processValue` text DEFAULT NULL,
  `libMeth` varchar(200) DEFAULT NULL COMMENT 'Bilbiothek.Methode, welche ausgeführt wird',
  `param` text DEFAULT NULL COMMENT 'Parameter für libMeth\n',
  `commentOther` text DEFAULT NULL,
  `text` text DEFAULT NULL,
  `form` varchar(200) DEFAULT NULL,
  `ajaxJS` varchar(200) DEFAULT NULL,
  `ajaxPHP` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `logtable` varchar(200) DEFAULT NULL,
  `validfrom` date DEFAULT '0000-00-00' COMMENT 'Gültigkeitsanfang',
  `validto` varchar(255) DEFAULT '9999-12-31' COMMENT 'Gültigkeitsende',
  `state` tinyint(4) DEFAULT 0,
  `docu` varchar(200) DEFAULT NULL,
  `originator` int(11) DEFAULT 1,
  `entered` datetime DEFAULT NULL,
  `modifier` int(11) DEFAULT 1,
  `modified` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `permFE` varchar(100) DEFAULT NULL,
  `permIdent` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`wID`),
  UNIQUE KEY `wName_UNIQUE` (`wProcess`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COMMENT='Workflow Haupt-Tabelle';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_age`
--

DROP TABLE IF EXISTS `x_cat_age`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_age` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feld` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `coded` varchar(50) NOT NULL,
  `descr` varchar(50) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Codeliste Umfrage S+P';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_children`
--

DROP TABLE IF EXISTS `x_cat_children`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_children` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feld` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `descr` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Codeliste Umfrage S+P';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_gender`
--

DROP TABLE IF EXISTS `x_cat_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_gender` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feld` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `coded` varchar(50) NOT NULL,
  `descr` varchar(50) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Codeliste Umfrage S+P';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_howlong`
--

DROP TABLE IF EXISTS `x_cat_howlong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_howlong` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feld` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `coded` varchar(50) NOT NULL,
  `descr` varchar(50) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COMMENT='Codeliste Umfrage S+P';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_icd`
--

DROP TABLE IF EXISTS `x_cat_icd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_icd` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feld` varchar(100) NOT NULL,
  `code` varchar(50) NOT NULL,
  `descr` varchar(200) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Codeliste Umfrage S+P';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_ja_nein`
--

DROP TABLE IF EXISTS `x_cat_ja_nein`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_ja_nein` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feld` varchar(250) DEFAULT NULL,
  `code` varchar(250) DEFAULT NULL,
  `descr` varchar(50) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='Codeliste Umfrage S+P';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_medi`
--

DROP TABLE IF EXISTS `x_cat_medi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_medi` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feld` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `coded` varchar(50) NOT NULL,
  `descr` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Codeliste Umfrage S+P';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_psydiagn`
--

DROP TABLE IF EXISTS `x_cat_psydiagn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_psydiagn` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feld` varchar(150) NOT NULL,
  `code` varchar(50) NOT NULL,
  `coded` varchar(50) NOT NULL,
  `descr` varchar(200) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='Codeliste Umfrage S+P';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_sexexperi`
--

DROP TABLE IF EXISTS `x_cat_sexexperi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_sexexperi` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feld` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `descr` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Codeliste Umfrage S+P';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_sexori`
--

DROP TABLE IF EXISTS `x_cat_sexori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_sexori` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feld` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `coded` varchar(50) NOT NULL,
  `descr` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Codeliste Umfrage S+P';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_umf02`
--

DROP TABLE IF EXISTS `x_cat_umf02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_umf02` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feld` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `descr` varchar(250) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Codeliste Umfrage S+P';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_umf05`
--

DROP TABLE IF EXISTS `x_cat_umf05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_umf05` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feld` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `descr` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Codeliste Umfrage S+P';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_umf06`
--

DROP TABLE IF EXISTS `x_cat_umf06`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_umf06` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feld` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `descr` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='Codeliste Umfrage S+P';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_umf07`
--

DROP TABLE IF EXISTS `x_cat_umf07`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_umf07` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feld` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `descr` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='Codeliste Umfrage S+P';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_umf09`
--

DROP TABLE IF EXISTS `x_cat_umf09`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_umf09` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feld` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `descr` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='Codeliste Umfrage S+P';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_umf10`
--

DROP TABLE IF EXISTS `x_cat_umf10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_umf10` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feld` varchar(100) NOT NULL,
  `code` varchar(100) NOT NULL,
  `descr` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='Codeliste Umfrage S+P';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_umfrage`
--

DROP TABLE IF EXISTS `x_cat_umfrage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_umfrage` (
  `seite` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `title` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `topic` varchar(250) NOT NULL,
  `feld` varchar(100) NOT NULL,
  `reply` varchar(10) NOT NULL COMMENT 'mc: multiple choice / ft: free text',
  `anz` int(10) unsigned DEFAULT NULL,
  `asfrom` int(10) unsigned DEFAULT NULL,
  `proz` decimal(10,1) unsigned DEFAULT NULL,
  KEY `seite_sort` (`seite`,`sort`),
  KEY `feld` (`feld`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Struktur und Fragenkatalog der Umfrage';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_umfrage_63`
--

DROP TABLE IF EXISTS `x_cat_umfrage_63`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_umfrage_63` (
  `seite` int(10) unsigned NOT NULL,
  `sort` int(10) unsigned NOT NULL,
  `hide` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `title` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `topic` varchar(250) NOT NULL,
  `feld` varchar(100) NOT NULL,
  `anz` int(10) unsigned DEFAULT NULL,
  `proz` decimal(10,1) unsigned DEFAULT NULL,
  KEY `seite_sort` (`seite`,`sort`),
  KEY `feld` (`feld`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Struktur und Fragenkatalog der Umfrage';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_woher`
--

DROP TABLE IF EXISTS `x_cat_woher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_woher` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feld` varchar(250) DEFAULT NULL,
  `code` varchar(50) DEFAULT NULL,
  `coded` varchar(50) DEFAULT NULL,
  `descr` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Codeliste Umfrage S+P';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_wohnsitu`
--

DROP TABLE IF EXISTS `x_cat_wohnsitu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_wohnsitu` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feld` varchar(50) NOT NULL,
  `code` varchar(100) NOT NULL,
  `coded` varchar(100) NOT NULL,
  `descr` varchar(50) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Codeliste Umfrage S+P';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `x_cat_zivilstand`
--

DROP TABLE IF EXISTS `x_cat_zivilstand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_cat_zivilstand` (
  `idx` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `feld` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `coded` varchar(50) NOT NULL,
  `descr` varchar(100) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='Codeliste Umfrage S+P';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `va_webaktien`
--

/*!50001 DROP TABLE IF EXISTS `va_webaktien`*/;
/*!50001 DROP VIEW IF EXISTS `va_webaktien`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = latin1 */;
/*!50001 SET character_set_results     = latin1 */;
/*!50001 SET collation_connection      = latin1_german1_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`dfbch1`@`10.0.24.%` SQL SECURITY DEFINER */
/*!50001 VIEW `va_webaktien` AS select `O`.`id_order` AS `id_order`,`C`.`id_share` AS `id_share`,concat(trim(concat(trim(concat(`H`.`firma`,' ',`H`.`nname`)),' ',`H`.`vname`)),', ',`H`.`ort`) AS `aname`,concat(trim(concat(`C`.`firma`,' ',`C`.`nname`)),' ',`C`.`vname`) AS `kname`,`O`.`a100` AS `a100`,`O`.`a200` AS `a200`,`O`.`a250` AS `a250`,`O`.`a300` AS `a300`,`O`.`a400` AS `a400`,`O`.`a500` AS `a500`,`O`.`ps200` AS `ps200`,`O`.`remarks` AS `Hinweis`,`O`.`tstamp` AS `tstamp` from ((`stock__order` `O` left join `stock__contact` `H` on(`H`.`id_order` = `O`.`id_order`)) left join `stock__contact` `C` on(`C`.`id_order` = `O`.`id_order`)) where `C`.`type` = 'cust' and `H`.`type` = 'holder' order by `O`.`tstamp` desc,`C`.`type` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-26 17:22:03
