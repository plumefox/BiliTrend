-- MySQL dump 10.13  Distrib 5.7.19, for Win64 (x86_64)
--
-- Host: localhost    Database: bilitrend
-- ------------------------------------------------------
-- Server version	5.7.19

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
-- Table structure for table `bilitrendallall`
--

DROP TABLE IF EXISTS `bilitrendallall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendallall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=701 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendallcartoon`
--

DROP TABLE IF EXISTS `bilitrendallcartoon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendallcartoon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendalldance`
--

DROP TABLE IF EXISTS `bilitrendalldance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendalldance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1901 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendallfashion`
--

DROP TABLE IF EXISTS `bilitrendallfashion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendallfashion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3701 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendallgame`
--

DROP TABLE IF EXISTS `bilitrendallgame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendallgame` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendallguichu`
--

DROP TABLE IF EXISTS `bilitrendallguichu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendallguichu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3401 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendalllife`
--

DROP TABLE IF EXISTS `bilitrendalllife`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendalllife` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendallmachine`
--

DROP TABLE IF EXISTS `bilitrendallmachine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendallmachine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2801 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendallmovie`
--

DROP TABLE IF EXISTS `bilitrendallmovie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendallmovie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4301 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendallmusic`
--

DROP TABLE IF EXISTS `bilitrendallmusic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendallmusic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1601 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendallorgin`
--

DROP TABLE IF EXISTS `bilitrendallorgin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendallorgin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1301 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendalltechnique`
--

DROP TABLE IF EXISTS `bilitrendalltechnique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendalltechnique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2501 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendallyule`
--

DROP TABLE IF EXISTS `bilitrendallyule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendallyule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendbangumichina`
--

DROP TABLE IF EXISTS `bilitrendbangumichina`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendbangumichina` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendbangumijapan`
--

DROP TABLE IF EXISTS `bilitrendbangumijapan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendbangumijapan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendcinemamovie`
--

DROP TABLE IF EXISTS `bilitrendcinemamovie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendcinemamovie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendcinemanewsreel`
--

DROP TABLE IF EXISTS `bilitrendcinemanewsreel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendcinemanewsreel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5801 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendcinemateleplay`
--

DROP TABLE IF EXISTS `bilitrendcinemateleplay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendcinemateleplay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendoriginall`
--

DROP TABLE IF EXISTS `bilitrendoriginall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendoriginall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendorigincartoon`
--

DROP TABLE IF EXISTS `bilitrendorigincartoon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendorigincartoon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3401 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendorigindance`
--

DROP TABLE IF EXISTS `bilitrendorigindance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendorigindance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendoriginfashion`
--

DROP TABLE IF EXISTS `bilitrendoriginfashion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendoriginfashion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendorigingame`
--

DROP TABLE IF EXISTS `bilitrendorigingame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendorigingame` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendoriginguichu`
--

DROP TABLE IF EXISTS `bilitrendoriginguichu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendoriginguichu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendoriginlife`
--

DROP TABLE IF EXISTS `bilitrendoriginlife`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendoriginlife` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4801 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendoriginmachine`
--

DROP TABLE IF EXISTS `bilitrendoriginmachine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendoriginmachine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4601 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendoriginmovie`
--

DROP TABLE IF EXISTS `bilitrendoriginmovie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendoriginmovie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5601 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendoriginmusic`
--

DROP TABLE IF EXISTS `bilitrendoriginmusic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendoriginmusic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3801 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendoriginorgin`
--

DROP TABLE IF EXISTS `bilitrendoriginorgin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendoriginorgin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3501 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendorigintechnique`
--

DROP TABLE IF EXISTS `bilitrendorigintechnique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendorigintechnique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4401 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendoriginyule`
--

DROP TABLE IF EXISTS `bilitrendoriginyule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendoriginyule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5401 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendrookieall`
--

DROP TABLE IF EXISTS `bilitrendrookieall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendrookieall` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6401 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendrookiecartoon`
--

DROP TABLE IF EXISTS `bilitrendrookiecartoon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendrookiecartoon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6601 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendrookiedance`
--

DROP TABLE IF EXISTS `bilitrendrookiedance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendrookiedance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3701 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendrookiefashion`
--

DROP TABLE IF EXISTS `bilitrendrookiefashion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendrookiefashion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4301 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendrookiegame`
--

DROP TABLE IF EXISTS `bilitrendrookiegame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendrookiegame` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3801 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendrookieguichu`
--

DROP TABLE IF EXISTS `bilitrendrookieguichu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendrookieguichu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4201 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendrookielife`
--

DROP TABLE IF EXISTS `bilitrendrookielife`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendrookielife` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendrookiemachine`
--

DROP TABLE IF EXISTS `bilitrendrookiemachine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendrookiemachine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4001 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendrookiemovie`
--

DROP TABLE IF EXISTS `bilitrendrookiemovie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendrookiemovie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4501 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendrookiemusic`
--

DROP TABLE IF EXISTS `bilitrendrookiemusic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendrookiemusic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6801 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendrookieorgin`
--

DROP TABLE IF EXISTS `bilitrendrookieorgin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendrookieorgin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendrookietechnique`
--

DROP TABLE IF EXISTS `bilitrendrookietechnique`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendrookietechnique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3901 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bilitrendrookieyule`
--

DROP TABLE IF EXISTS `bilitrendrookieyule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bilitrendrookieyule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `herf` varchar(255) DEFAULT NULL,
  `playCount` varchar(255) DEFAULT NULL,
  `view` varchar(255) DEFAULT NULL,
  `upHerf` varchar(255) DEFAULT NULL,
  `upName` varchar(255) DEFAULT NULL,
  `pts` varchar(255) DEFAULT NULL,
  `DatabasecreatedTime` bigint(20) DEFAULT NULL,
  `DatabaseupdateTime` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4401 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-15 14:50:18
