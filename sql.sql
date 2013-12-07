-- MySQL dump 10.13  Distrib 5.1.32, for Win32 (ia32)
--
-- Host: localhost    Database: pc_xueshuhao
-- ------------------------------------------------------
-- Server version	5.1.32-community

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
-- Table structure for table `v9_admin`
--

DROP TABLE IF EXISTS `v9_admin`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_admin` (
  `userid` mediumint(6) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `roleid` smallint(5) DEFAULT '0',
  `encrypt` varchar(6) DEFAULT NULL,
  `lastloginip` varchar(15) DEFAULT NULL,
  `lastlogintime` int(10) unsigned DEFAULT '0',
  `email` varchar(40) DEFAULT NULL,
  `realname` varchar(50) NOT NULL DEFAULT '',
  `card` varchar(255) NOT NULL,
  `lang` varchar(6) NOT NULL,
  PRIMARY KEY (`userid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_admin`
--

LOCK TABLES `v9_admin` WRITE;
/*!40000 ALTER TABLE `v9_admin` DISABLE KEYS */;
INSERT INTO `v9_admin` VALUES (1,'phpcms','982797e2e723d8fb98a9d0c7786f00df',1,'H6M3La','127.0.0.1',1386344554,'admin@phpcms.com','','','');
/*!40000 ALTER TABLE `v9_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_admin_panel`
--

DROP TABLE IF EXISTS `v9_admin_panel`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_admin_panel` (
  `menuid` mediumint(8) unsigned NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` char(32) DEFAULT NULL,
  `url` char(255) DEFAULT NULL,
  `datetime` int(10) unsigned DEFAULT '0',
  UNIQUE KEY `userid` (`menuid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_admin_panel`
--

LOCK TABLES `v9_admin_panel` WRITE;
/*!40000 ALTER TABLE `v9_admin_panel` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_admin_panel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_admin_role`
--

DROP TABLE IF EXISTS `v9_admin_role`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_admin_role` (
  `roleid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`roleid`),
  KEY `listorder` (`listorder`),
  KEY `disabled` (`disabled`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_admin_role`
--

LOCK TABLES `v9_admin_role` WRITE;
/*!40000 ALTER TABLE `v9_admin_role` DISABLE KEYS */;
INSERT INTO `v9_admin_role` VALUES (1,'超级管理员','超级管理员',0,0),(2,'站点管理员','站点管理员',0,0),(3,'运营总监','运营总监',1,0),(4,'总编','总编',5,0),(5,'编辑','编辑',1,0),(7,'发布人员','发布人员',0,0);
/*!40000 ALTER TABLE `v9_admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_admin_role_priv`
--

DROP TABLE IF EXISTS `v9_admin_role_priv`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_admin_role_priv` (
  `roleid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL,
  `c` char(20) NOT NULL,
  `a` char(20) NOT NULL,
  `data` char(30) NOT NULL DEFAULT '',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  KEY `roleid` (`roleid`,`m`,`c`,`a`,`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_admin_role_priv`
--

LOCK TABLES `v9_admin_role_priv` WRITE;
/*!40000 ALTER TABLE `v9_admin_role_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_admin_role_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_announce`
--

DROP TABLE IF EXISTS `v9_announce`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_announce` (
  `aid` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` char(80) NOT NULL,
  `content` text NOT NULL,
  `starttime` date NOT NULL DEFAULT '0000-00-00',
  `endtime` date NOT NULL DEFAULT '0000-00-00',
  `username` varchar(40) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` smallint(5) unsigned NOT NULL DEFAULT '0',
  `passed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `style` char(15) NOT NULL,
  `show_template` char(30) NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `siteid` (`siteid`,`passed`,`endtime`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_announce`
--

LOCK TABLES `v9_announce` WRITE;
/*!40000 ALTER TABLE `v9_announce` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_announce` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_attachment`
--

DROP TABLE IF EXISTS `v9_attachment`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_attachment` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `module` char(15) NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `filename` char(50) NOT NULL,
  `filepath` char(200) NOT NULL,
  `filesize` int(10) unsigned NOT NULL DEFAULT '0',
  `fileext` char(10) NOT NULL,
  `isimage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isthumb` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `downloads` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `uploadtime` int(10) unsigned NOT NULL DEFAULT '0',
  `uploadip` char(15) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `authcode` char(32) NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `authcode` (`authcode`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_attachment`
--

LOCK TABLES `v9_attachment` WRITE;
/*!40000 ALTER TABLE `v9_attachment` DISABLE KEYS */;
INSERT INTO `v9_attachment` VALUES (1,'special',0,'20130710070213897.jpg','2013/1202/20131202032559703.jpg',35148,'jpg',1,0,0,1,1385969159,'127.0.0.1',1,'58fe084c1b2eb07a56222074ae9d9fae',1),(2,'special',0,'4c5dcd02a1abeba9632460e4fe6fcd2a.jpg','2013/1202/20131202032654104.jpg',43752,'jpg',1,0,0,1,1385969214,'127.0.0.1',1,'cfcc6523f3ec879ea4b218071b83c853',1);
/*!40000 ALTER TABLE `v9_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_attachment_index`
--

DROP TABLE IF EXISTS `v9_attachment_index`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_attachment_index` (
  `keyid` char(30) NOT NULL,
  `aid` char(10) NOT NULL,
  KEY `keyid` (`keyid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_attachment_index`
--

LOCK TABLES `v9_attachment_index` WRITE;
/*!40000 ALTER TABLE `v9_attachment_index` DISABLE KEYS */;
INSERT INTO `v9_attachment_index` VALUES ('special-2','1'),('special-2','2');
/*!40000 ALTER TABLE `v9_attachment_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_badword`
--

DROP TABLE IF EXISTS `v9_badword`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_badword` (
  `badid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `badword` char(20) NOT NULL,
  `level` tinyint(5) NOT NULL DEFAULT '1',
  `replaceword` char(20) NOT NULL DEFAULT '0',
  `lastusetime` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`badid`),
  UNIQUE KEY `badword` (`badword`),
  KEY `usetimes` (`replaceword`,`listorder`),
  KEY `hits` (`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_badword`
--

LOCK TABLES `v9_badword` WRITE;
/*!40000 ALTER TABLE `v9_badword` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_badword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_block`
--

DROP TABLE IF EXISTS `v9_block`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_block` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned DEFAULT '0',
  `name` char(50) DEFAULT NULL,
  `pos` char(30) DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0',
  `data` text,
  `template` text,
  PRIMARY KEY (`id`),
  KEY `pos` (`pos`),
  KEY `type` (`type`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_block`
--

LOCK TABLES `v9_block` WRITE;
/*!40000 ALTER TABLE `v9_block` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_block_history`
--

DROP TABLE IF EXISTS `v9_block_history`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_block_history` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `blockid` int(10) unsigned DEFAULT '0',
  `data` text,
  `creat_at` int(10) unsigned DEFAULT '0',
  `userid` mediumint(8) unsigned DEFAULT '0',
  `username` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_block_history`
--

LOCK TABLES `v9_block_history` WRITE;
/*!40000 ALTER TABLE `v9_block_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_block_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_block_priv`
--

DROP TABLE IF EXISTS `v9_block_priv`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_block_priv` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `roleid` tinyint(3) unsigned DEFAULT '0',
  `siteid` smallint(5) unsigned DEFAULT '0',
  `blockid` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blockid` (`blockid`),
  KEY `roleid` (`roleid`,`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_block_priv`
--

LOCK TABLES `v9_block_priv` WRITE;
/*!40000 ALTER TABLE `v9_block_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_block_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_cache`
--

DROP TABLE IF EXISTS `v9_cache`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_cache` (
  `filename` char(50) NOT NULL,
  `path` char(50) NOT NULL,
  `data` mediumtext NOT NULL,
  PRIMARY KEY (`filename`,`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_cache`
--

LOCK TABLES `v9_cache` WRITE;
/*!40000 ALTER TABLE `v9_cache` DISABLE KEYS */;
INSERT INTO `v9_cache` VALUES ('mood_program.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    1 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'震惊\',\n      \'pic\' => \'mood/a1.gif\',\n    ),\n    2 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'不解\',\n      \'pic\' => \'mood/a2.gif\',\n    ),\n    3 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'愤怒\',\n      \'pic\' => \'mood/a3.gif\',\n    ),\n    4 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'杯具\',\n      \'pic\' => \'mood/a4.gif\',\n    ),\n    5 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'无聊\',\n      \'pic\' => \'mood/a5.gif\',\n    ),\n    6 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'高兴\',\n      \'pic\' => \'mood/a6.gif\',\n    ),\n    7 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'支持\',\n      \'pic\' => \'mood/a7.gif\',\n    ),\n    8 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'超赞\',\n      \'pic\' => \'mood/a8.gif\',\n    ),\n    9 => \n    array (\n      \'use\' => NULL,\n      \'name\' => \'\',\n      \'pic\' => \'\',\n    ),\n    10 => \n    array (\n      \'use\' => NULL,\n      \'name\' => \'\',\n      \'pic\' => \'\',\n    ),\n  ),\n);\n?>'),('category_content.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  9 => \'1\',\n  10 => \'1\',\n  11 => \'1\',\n  12 => \'1\',\n  13 => \'1\',\n  14 => \'1\',\n  15 => \'1\',\n  16 => \'1\',\n  17 => \'1\',\n  18 => \'1\',\n  19 => \'1\',\n  20 => \'1\',\n  21 => \'1\',\n  22 => \'1\',\n  23 => \'1\',\n  24 => \'1\',\n  25 => \'1\',\n  26 => \'1\',\n  27 => \'1\',\n  28 => \'1\',\n  29 => \'1\',\n  30 => \'1\',\n  31 => \'1\',\n  32 => \'1\',\n  33 => \'1\',\n  34 => \'1\',\n  35 => \'1\',\n  36 => \'1\',\n  37 => \'1\',\n  38 => \'1\',\n  39 => \'1\',\n  40 => \'1\',\n  41 => \'1\',\n  42 => \'1\',\n  43 => \'1\',\n  44 => \'1\',\n  45 => \'1\',\n  46 => \'1\',\n  47 => \'1\',\n  48 => \'1\',\n  49 => \'1\',\n  50 => \'1\',\n  51 => \'1\',\n  52 => \'1\',\n  53 => \'1\',\n  54 => \'1\',\n  55 => \'1\',\n  56 => \'1\',\n  57 => \'1\',\n  58 => \'1\',\n  59 => \'1\',\n  60 => \'1\',\n  61 => \'1\',\n  62 => \'1\',\n  63 => \'1\',\n  64 => \'1\',\n  65 => \'1\',\n  66 => \'1\',\n  67 => \'1\',\n  68 => \'1\',\n  1 => \'1\',\n  2 => \'1\',\n  3 => \'1\',\n  4 => \'1\',\n  5 => \'1\',\n);\n?>'),('category_content_1.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  9 => \n  array (\n    \'catid\' => \'9\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'9,10,11,12\',\n    \'catname\' => \'晋级政策\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'jinji\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=9\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'9\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'jinjizhengce\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  10 => \n  array (\n    \'catid\' => \'10\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'9\',\n    \'arrparentid\' => \'0,9\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'10\',\n    \'catname\' => \'职称晋升\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'jinji/\',\n    \'catdir\' => \'zhicheng\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=10\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'10\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zhichengjinsheng\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  11 => \n  array (\n    \'catid\' => \'11\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'9\',\n    \'arrparentid\' => \'0,9\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'11\',\n    \'catname\' => \'写作技巧\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'jinji/\',\n    \'catdir\' => \'xiezuo\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=11\',\n    \'items\' => \'1\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'11\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'xiezuojiqiao\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  12 => \n  array (\n    \'catid\' => \'12\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'9\',\n    \'arrparentid\' => \'0,9\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'12\',\n    \'catname\' => \'期刊鉴别\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'jinji/\',\n    \'catdir\' => \'jianbie\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=12\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'12\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'qikanjianbie\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  13 => \n  array (\n    \'catid\' => \'13\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'13,20,21,22,23,24,25,26,27,28\',\n    \'catname\' => \'医学期刊\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'qikan\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=13\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'13\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yixueqikan\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  14 => \n  array (\n    \'catid\' => \'14\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'14,29,30,31,32,33,34,35,36,37,38,39,40,41,42\',\n    \'catname\' => \'专科文献\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'wenxian\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=14\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'14\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zhuankewenxian\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  15 => \n  array (\n    \'catid\' => \'15\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'15,43,44,45,46,47,48,49,50,51,52\',\n    \'catname\' => \'医学教育\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'jiaoyu\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=15\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'15\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yixuejiaoyu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  16 => \n  array (\n    \'catid\' => \'16\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'16\',\n    \'catname\' => \'在线投稿\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'如果您想发表您的相关课题信息，可以在此免费在线投稿！\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'tougao\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=16\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'16\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zaixiantougao\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  17 => \n  array (\n    \'catid\' => \'17\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'17\',\n    \'catname\' => \'学术会议\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'学术会议的说明\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'huiyi\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=17\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'17\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'xueshuhuiyi\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  18 => \n  array (\n    \'catid\' => \'18\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'18,53,54,55,56,57,58,59,60,61,62,63,64\',\n    \'catname\' => \'医学新知\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'xinzhi\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=18\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'18\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yixuexinzhi\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  19 => \n  array (\n    \'catid\' => \'19\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'19,65,66,67,68\',\n    \'catname\' => \'医护下载\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'xiazai\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=19\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'19\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yihuxiazai\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  20 => \n  array (\n    \'catid\' => \'20\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'13\',\n    \'arrparentid\' => \'0,13\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'20\',\n    \'catname\' => \'中医期刊\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'qikan/\',\n    \'catdir\' => \'zhongyiqikan\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=20\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'20\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zhongyiqikan\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  21 => \n  array (\n    \'catid\' => \'21\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'13\',\n    \'arrparentid\' => \'0,13\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'21\',\n    \'catname\' => \'护理期刊\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'qikan/\',\n    \'catdir\' => \'huliqikan\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=21\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'21\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'huliqikan\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  22 => \n  array (\n    \'catid\' => \'22\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'13\',\n    \'arrparentid\' => \'0,13\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'22\',\n    \'catname\' => \'省级期刊\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'qikan/\',\n    \'catdir\' => \'shengjiqikan\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=22\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'22\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'shengjiqikan\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  23 => \n  array (\n    \'catid\' => \'23\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'13\',\n    \'arrparentid\' => \'0,13\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'23\',\n    \'catname\' => \'国家级期刊\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'qikan/\',\n    \'catdir\' => \'guojiajiqikan\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=23\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'23\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'guojiajiqikan\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  24 => \n  array (\n    \'catid\' => \'24\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'13\',\n    \'arrparentid\' => \'0,13\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'24\',\n    \'catname\' => \'科技核心期刊\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'qikan/\',\n    \'catdir\' => \'kejihexinqikan\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=24\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'24\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'kejihexinqikan\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  25 => \n  array (\n    \'catid\' => \'25\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'13\',\n    \'arrparentid\' => \'0,13\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'25\',\n    \'catname\' => \'北大核心期刊\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'qikan/\',\n    \'catdir\' => \'beidahexinqikan\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=25\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'25\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'beidahexinqikan\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  26 => \n  array (\n    \'catid\' => \'26\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'13\',\n    \'arrparentid\' => \'0,13\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'26\',\n    \'catname\' => \'浙江目录\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'qikan/\',\n    \'catdir\' => \'zhejiangmulu\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=26\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'26\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zhejiangmulu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  27 => \n  array (\n    \'catid\' => \'27\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'13\',\n    \'arrparentid\' => \'0,13\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'27\',\n    \'catname\' => \'中华系列期刊\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'qikan/\',\n    \'catdir\' => \'zhonghuaxilieqikan\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=27\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'27\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zhonghuaxilieqikan\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  28 => \n  array (\n    \'catid\' => \'28\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'13\',\n    \'arrparentid\' => \'0,13\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'28\',\n    \'catname\' => \'SCI期刊\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'qikan/\',\n    \'catdir\' => \'sciqikan\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=28\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'28\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'sciqikan\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  29 => \n  array (\n    \'catid\' => \'29\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'29\',\n    \'catname\' => \'护理\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'wenxian/\',\n    \'catdir\' => \'huli\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=29\',\n    \'items\' => \'1\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'29\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'huli\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  30 => \n  array (\n    \'catid\' => \'30\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'30\',\n    \'catname\' => \'妇产科\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'wenxian/\',\n    \'catdir\' => \'fuchanke\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=30\',\n    \'items\' => \'1\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'30\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'fuchanke\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  31 => \n  array (\n    \'catid\' => \'31\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'31\',\n    \'catname\' => \'儿科\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'wenxian/\',\n    \'catdir\' => \'erke\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=31\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'31\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'erke\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  32 => \n  array (\n    \'catid\' => \'32\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'32\',\n    \'catname\' => \'肿瘤科\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'wenxian/\',\n    \'catdir\' => \'zhongliuke\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=32\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'32\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zhongliuke\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  33 => \n  array (\n    \'catid\' => \'33\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'33\',\n    \'catname\' => \'呼吸内科\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'wenxian/\',\n    \'catdir\' => \'huxineike\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=33\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'33\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'huxineike\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  34 => \n  array (\n    \'catid\' => \'34\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'34\',\n    \'catname\' => \'消化内科\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'wenxian/\',\n    \'catdir\' => \'xiaohuaneike\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=34\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'34\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'xiaohuaneike\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  35 => \n  array (\n    \'catid\' => \'35\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'35\',\n    \'catname\' => \'外科\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'wenxian/\',\n    \'catdir\' => \'waike\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=35\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'35\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'waike\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  36 => \n  array (\n    \'catid\' => \'36\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'36\',\n    \'catname\' => \'心血管科\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'wenxian/\',\n    \'catdir\' => \'xinxueguanke\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=36\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'36\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'xinxueguanke\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  37 => \n  array (\n    \'catid\' => \'37\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'37\',\n    \'catname\' => \'内分泌科\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'wenxian/\',\n    \'catdir\' => \'neifenmike\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=37\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'37\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'neifenmike\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  38 => \n  array (\n    \'catid\' => \'38\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'38\',\n    \'catname\' => \'泌尿内科\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'wenxian/\',\n    \'catdir\' => \'miniaoneike\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=38\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'38\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'miniaoneike\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  39 => \n  array (\n    \'catid\' => \'39\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'39\',\n    \'catname\' => \'骨科\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'wenxian/\',\n    \'catdir\' => \'guke\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=39\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'39\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'guke\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  40 => \n  array (\n    \'catid\' => \'40\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'40\',\n    \'catname\' => \'神经外科\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'wenxian/\',\n    \'catdir\' => \'shenjingwaike\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=40\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'40\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'shenjingwaike\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  41 => \n  array (\n    \'catid\' => \'41\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'41\',\n    \'catname\' => \'泌尿外科\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'wenxian/\',\n    \'catdir\' => \'miniaowaike\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=41\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'41\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'miniaowaike\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  42 => \n  array (\n    \'catid\' => \'42\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'14\',\n    \'arrparentid\' => \'0,14\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'42\',\n    \'catname\' => \'综合临床\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'wenxian/\',\n    \'catdir\' => \'zonghelinchuang\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=42\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'42\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zonghelinchuang\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  43 => \n  array (\n    \'catid\' => \'43\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'15\',\n    \'arrparentid\' => \'0,15\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'43\',\n    \'catname\' => \'医师维权\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'jiaoyu/\',\n    \'catdir\' => \'yishiweiquan\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=43\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'43\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yishiweiquan\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  44 => \n  array (\n    \'catid\' => \'44\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'15\',\n    \'arrparentid\' => \'0,15\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'44\',\n    \'catname\' => \'行业动态\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'jiaoyu/\',\n    \'catdir\' => \'xingyedongtai\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=44\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'44\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'xingyedongtai\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  45 => \n  array (\n    \'catid\' => \'45\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'15\',\n    \'arrparentid\' => \'0,15\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'45\',\n    \'catname\' => \'医界声音\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'jiaoyu/\',\n    \'catdir\' => \'yijieshengyin\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=45\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'45\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yijieshengyin\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  46 => \n  array (\n    \'catid\' => \'46\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'15\',\n    \'arrparentid\' => \'0,15\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'46\',\n    \'catname\' => \'病例讨论\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'jiaoyu/\',\n    \'catdir\' => \'binglitaolun\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=46\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'46\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'binglitaolun\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  47 => \n  array (\n    \'catid\' => \'47\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'15\',\n    \'arrparentid\' => \'0,15\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'47\',\n    \'catname\' => \'科研前线\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'jiaoyu/\',\n    \'catdir\' => \'keyanqianxian\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=47\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'47\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'keyanqianxian\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  48 => \n  array (\n    \'catid\' => \'48\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'15\',\n    \'arrparentid\' => \'0,15\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'48\',\n    \'catname\' => \'医药时评\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'jiaoyu/\',\n    \'catdir\' => \'yiyaoshiping\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=48\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'48\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yiyaoshiping\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  49 => \n  array (\n    \'catid\' => \'49\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'15\',\n    \'arrparentid\' => \'0,15\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'49\',\n    \'catname\' => \'医学图谱\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'jiaoyu/\',\n    \'catdir\' => \'yixuetupu\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=49\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'49\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yixuetupu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  50 => \n  array (\n    \'catid\' => \'50\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'15\',\n    \'arrparentid\' => \'0,15\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'50\',\n    \'catname\' => \'政策解读\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'jiaoyu/\',\n    \'catdir\' => \'zhengcejiedu\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=50\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'50\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zhengcejiedu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  51 => \n  array (\n    \'catid\' => \'51\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'15\',\n    \'arrparentid\' => \'0,15\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'51\',\n    \'catname\' => \'医学名词\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'jiaoyu/\',\n    \'catdir\' => \'yixuemingci\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=51\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'51\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yixuemingci\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  52 => \n  array (\n    \'catid\' => \'52\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'15\',\n    \'arrparentid\' => \'0,15\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'52\',\n    \'catname\' => \'医疗文书\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'jiaoyu/\',\n    \'catdir\' => \'yiliaowenshu\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=52\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'52\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yiliaowenshu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  53 => \n  array (\n    \'catid\' => \'53\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'18\',\n    \'arrparentid\' => \'0,18\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'53\',\n    \'catname\' => \'药物不良反应\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xinzhi/\',\n    \'catdir\' => \'yaowubuliangfanying\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=53\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'53\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yaowubuliangfanying\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  54 => \n  array (\n    \'catid\' => \'54\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'18\',\n    \'arrparentid\' => \'0,18\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'54\',\n    \'catname\' => \'典型病例\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xinzhi/\',\n    \'catdir\' => \'dianxingbingli\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=54\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'54\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'dianxingbingli\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  55 => \n  array (\n    \'catid\' => \'55\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'18\',\n    \'arrparentid\' => \'0,18\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'55\',\n    \'catname\' => \'疑难杂症\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xinzhi/\',\n    \'catdir\' => \'yinanzazheng\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=55\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'55\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yinanzazheng\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  56 => \n  array (\n    \'catid\' => \'56\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'18\',\n    \'arrparentid\' => \'0,18\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'56\',\n    \'catname\' => \'误诊误治\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xinzhi/\',\n    \'catdir\' => \'wuzhenwuzhi\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=56\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'56\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'wuzhenwuzhi\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  57 => \n  array (\n    \'catid\' => \'57\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'18\',\n    \'arrparentid\' => \'0,18\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'57\',\n    \'catname\' => \'医疗纠纷\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xinzhi/\',\n    \'catdir\' => \'yiliaojiufen\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=57\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'57\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yiliaojiufen\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  58 => \n  array (\n    \'catid\' => \'58\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'18\',\n    \'arrparentid\' => \'0,18\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'58\',\n    \'catname\' => \'中医中药\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xinzhi/\',\n    \'catdir\' => \'zhongyizhongyao\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=58\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'58\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zhongyizhongyao\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  59 => \n  array (\n    \'catid\' => \'59\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'18\',\n    \'arrparentid\' => \'0,18\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'59\',\n    \'catname\' => \'实验研究\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xinzhi/\',\n    \'catdir\' => \'shiyanyanjiu\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=59\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'59\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'shiyanyanjiu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  60 => \n  array (\n    \'catid\' => \'60\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'18\',\n    \'arrparentid\' => \'0,18\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'60\',\n    \'catname\' => \'辅助检查\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xinzhi/\',\n    \'catdir\' => \'fuzhujiancha\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=60\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'60\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'fuzhujiancha\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  61 => \n  array (\n    \'catid\' => \'61\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'18\',\n    \'arrparentid\' => \'0,18\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'61\',\n    \'catname\' => \'临床研究\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xinzhi/\',\n    \'catdir\' => \'linchuangyanjiu\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=61\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'61\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'linchuangyanjiu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  62 => \n  array (\n    \'catid\' => \'62\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'18\',\n    \'arrparentid\' => \'0,18\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'62\',\n    \'catname\' => \'护理文献\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xinzhi/\',\n    \'catdir\' => \'huliwenxian\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=62\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'62\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'huliwenxian\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  63 => \n  array (\n    \'catid\' => \'63\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'18\',\n    \'arrparentid\' => \'0,18\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'63\',\n    \'catname\' => \'管理文献\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xinzhi/\',\n    \'catdir\' => \'guanliwenxian\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=63\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'63\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'guanliwenxian\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  64 => \n  array (\n    \'catid\' => \'64\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'18\',\n    \'arrparentid\' => \'0,18\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'64\',\n    \'catname\' => \'临床用药\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xinzhi/\',\n    \'catdir\' => \'linchuangyongyao\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=64\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'64\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'linchuangyongyao\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  65 => \n  array (\n    \'catid\' => \'65\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'19\',\n    \'arrparentid\' => \'0,19\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'65\',\n    \'catname\' => \'医护工具\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xiazai/\',\n    \'catdir\' => \'yihugongju\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=65\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'65\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yihugongju\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  66 => \n  array (\n    \'catid\' => \'66\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'19\',\n    \'arrparentid\' => \'0,19\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'66\',\n    \'catname\' => \'医护课件\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xiazai/\',\n    \'catdir\' => \'yihukejian\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=66\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'66\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'yihukejian\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  67 => \n  array (\n    \'catid\' => \'67\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'19\',\n    \'arrparentid\' => \'0,19\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'67\',\n    \'catname\' => \'晋级期刊目录\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xiazai/\',\n    \'catdir\' => \'jinjiqikanmulu\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=67\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'67\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'jinjiqikanmulu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  68 => \n  array (\n    \'catid\' => \'68\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'1\',\n    \'parentid\' => \'19\',\n    \'arrparentid\' => \'0,19\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'68\',\n    \'catname\' => \'征稿函下载\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'xiazai/\',\n    \'catdir\' => \'zhenggaohanxiazai\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=68\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'workflowid\\\' => \\\'\\\',\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'content_ishtml\\\' => \\\'0\\\',\n  \\\'create_to_html_root\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'category_template\\\' => \\\'category\\\',\n  \\\'list_template\\\' => \\\'list\\\',\n  \\\'show_template\\\' => \\\'show\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'presentpoint\\\' => \\\'1\\\',\n  \\\'defaultchargepoint\\\' => \\\'0\\\',\n  \\\'paytype\\\' => \\\'0\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'16\\\',\n)\',\n    \'listorder\' => \'68\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zhenggaohanxiazai\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  1 => \n  array (\n    \'catid\' => \'1\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'1,2,3,4,5\',\n    \'catname\' => \'网站介绍\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'about\',\n    \'url\' => \'http://zazhi.ddecshop.com/html/about/\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'ishtml\\\' => \\\'1\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'page_template\\\' => \\\'page\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'category_ruleid\\\' => \\\'1\\\',\n  \\\'show_ruleid\\\' => \\\'\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n)\',\n    \'listorder\' => \'69\',\n    \'ismenu\' => \'0\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'wangzhanjieshao\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'1\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'1\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  2 => \n  array (\n    \'catid\' => \'2\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'1\',\n    \'arrparentid\' => \'0,1\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'2\',\n    \'catname\' => \'关于我们\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'about/\',\n    \'catdir\' => \'aboutus\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=2\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'page_template\\\' => \\\'page\\\',\n  \\\'meta_title\\\' => \\\'关于我们\\\',\n  \\\'meta_keywords\\\' => \\\'关于我们\\\',\n  \\\'meta_description\\\' => \\\'关于我们\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n)\',\n    \'listorder\' => \'70\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'guanyuwomen\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  3 => \n  array (\n    \'catid\' => \'3\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'1\',\n    \'arrparentid\' => \'0,1\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'3\',\n    \'catname\' => \'联系方式\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'about/\',\n    \'catdir\' => \'contactus\',\n    \'url\' => \'http://zazhi.ddecshop.com/html/about/contactus/\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'ishtml\\\' => \\\'1\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'page_template\\\' => \\\'page\\\',\n  \\\'meta_title\\\' => \\\'联系方式\\\',\n  \\\'meta_keywords\\\' => \\\'联系方式\\\',\n  \\\'meta_description\\\' => \\\'联系方式\\\',\n  \\\'category_ruleid\\\' => \\\'1\\\',\n  \\\'show_ruleid\\\' => \\\'\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n)\',\n    \'listorder\' => \'71\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'lianxifangshi\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'1\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'1\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  4 => \n  array (\n    \'catid\' => \'4\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'1\',\n    \'arrparentid\' => \'0,1\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'4\',\n    \'catname\' => \'版权声明\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'about/\',\n    \'catdir\' => \'copyright\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=4\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'page_template\\\' => \\\'page\\\',\n  \\\'meta_title\\\' => \\\'版权声明\\\',\n  \\\'meta_keywords\\\' => \\\'版权声明\\\',\n  \\\'meta_description\\\' => \\\'版权声明\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n)\',\n    \'listorder\' => \'72\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'banquanshengming\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  5 => \n  array (\n    \'catid\' => \'5\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'1\',\n    \'arrparentid\' => \'0,1\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'5\',\n    \'catname\' => \'网站地图\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'about/\',\n    \'catdir\' => \'hr\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=5\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'array (\n  \\\'ishtml\\\' => \\\'0\\\',\n  \\\'template_list\\\' => \\\'default\\\',\n  \\\'page_template\\\' => \\\'page\\\',\n  \\\'meta_title\\\' => \\\'\\\',\n  \\\'meta_keywords\\\' => \\\'\\\',\n  \\\'meta_description\\\' => \\\'\\\',\n  \\\'category_ruleid\\\' => \\\'6\\\',\n  \\\'show_ruleid\\\' => \\\'\\\',\n  \\\'repeatchargedays\\\' => \\\'1\\\',\n)\',\n    \'listorder\' => \'73\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'wangzhanditu\',\n    \'usable_type\' => \'\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n);\n?>'),('sitelist.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    \'siteid\' => \'1\',\n    \'name\' => \'默认站点\',\n    \'dirname\' => \'\',\n    \'domain\' => \'http://zazhi.ddecshop.com/\',\n    \'site_title\' => \'PHPCMS演示站\',\n    \'keywords\' => \'PHPCMS演示站\',\n    \'description\' => \'PHPCMS演示站\',\n    \'release_point\' => \'\',\n    \'default_style\' => \'default\',\n    \'template\' => \'default\',\n    \'setting\' => \'array (\n  \\\'upload_maxsize\\\' => \\\'2048\\\',\n  \\\'upload_allowext\\\' => \\\'jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf\\\',\n  \\\'watermark_enable\\\' => \\\'1\\\',\n  \\\'watermark_minwidth\\\' => \\\'300\\\',\n  \\\'watermark_minheight\\\' => \\\'300\\\',\n  \\\'watermark_img\\\' => \\\'/statics/images/water/mark.png\\\',\n  \\\'watermark_pct\\\' => \\\'85\\\',\n  \\\'watermark_quality\\\' => \\\'80\\\',\n  \\\'watermark_pos\\\' => \\\'9\\\',\n)\',\n    \'uuid\' => \'fe858436-584e-11e3-9569-c164b35693de\',\n    \'url\' => \'http://zazhi.ddecshop.com/\',\n  ),\n);\n?>'),('downservers.cache.php','caches_commons/caches_data/','<?php\nreturn NULL;\n?>'),('badword.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>'),('ipbanned.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>'),('keylink.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>'),('position.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  2 => \n  array (\n    \'posid\' => \'2\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'首页头条推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'4\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  1 => \n  array (\n    \'posid\' => \'1\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'首页焦点图推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'1\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  16 => \n  array (\n    \'posid\' => \'16\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'视频首页每日热点\',\n    \'maxnum\' => \'20\',\n    \'extention\' => \'\',\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  15 => \n  array (\n    \'posid\' => \'15\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'视频首页头条推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => \'\',\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  14 => \n  array (\n    \'posid\' => \'14\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'视频首页焦点图\',\n    \'maxnum\' => \'20\',\n    \'extention\' => \'\',\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  12 => \n  array (\n    \'posid\' => \'12\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'首页图片推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  10 => \n  array (\n    \'posid\' => \'10\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'栏目首页推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  9 => \n  array (\n    \'posid\' => \'9\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'网站顶部推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  8 => \n  array (\n    \'posid\' => \'8\',\n    \'modelid\' => \'30\',\n    \'catid\' => \'54\',\n    \'name\' => \'图片频道首页焦点图\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  5 => \n  array (\n    \'posid\' => \'5\',\n    \'modelid\' => \'69\',\n    \'catid\' => \'0\',\n    \'name\' => \'推荐下载\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  13 => \n  array (\n    \'posid\' => \'13\',\n    \'modelid\' => \'82\',\n    \'catid\' => \'0\',\n    \'name\' => \'栏目页焦点图\',\n    \'maxnum\' => \'20\',\n    \'extention\' => NULL,\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  17 => \n  array (\n    \'posid\' => \'17\',\n    \'modelid\' => \'0\',\n    \'catid\' => \'0\',\n    \'name\' => \'视频栏目精彩推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => \'\',\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n);\n?>'),('role_siteid.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>'),('role.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \'超级管理员\',\n  2 => \'站点管理员\',\n  3 => \'运营总监\',\n  4 => \'总编\',\n  5 => \'编辑\',\n  7 => \'发布人员\',\n);\n?>'),('urlrules_detail.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    \'urlruleid\' => \'1\',\n    \'module\' => \'content\',\n    \'file\' => \'category\',\n    \'ishtml\' => \'1\',\n    \'urlrule\' => \'{$categorydir}{$catdir}/index.html|{$categorydir}{$catdir}/{$page}.html\',\n    \'example\' => \'news/china/1000.html\',\n  ),\n  6 => \n  array (\n    \'urlruleid\' => \'6\',\n    \'module\' => \'content\',\n    \'file\' => \'category\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'index.php?m=content&c=index&a=lists&catid={$catid}|index.php?m=content&c=index&a=lists&catid={$catid}&page={$page}\',\n    \'example\' => \'index.php?m=content&c=index&a=lists&catid=1&page=1\',\n  ),\n  11 => \n  array (\n    \'urlruleid\' => \'11\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'1\',\n    \'urlrule\' => \'{$year}/{$catdir}_{$month}{$day}/{$id}.html|{$year}/{$catdir}_{$month}{$day}/{$id}_{$page}.html\',\n    \'example\' => \'2010/catdir_0720/1_2.html\',\n  ),\n  12 => \n  array (\n    \'urlruleid\' => \'12\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'1\',\n    \'urlrule\' => \'{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}.html|{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}_{$page}.html\',\n    \'example\' => \'it/product/2010/0720/1_2.html\',\n  ),\n  16 => \n  array (\n    \'urlruleid\' => \'16\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'index.php?m=content&c=index&a=show&catid={$catid}&id={$id}|index.php?m=content&c=index&a=show&catid={$catid}&id={$id}&page={$page}\',\n    \'example\' => \'index.php?m=content&c=index&a=show&catid=1&id=1\',\n  ),\n  17 => \n  array (\n    \'urlruleid\' => \'17\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'show-{$catid}-{$id}-{$page}.html\',\n    \'example\' => \'show-1-2-1.html\',\n  ),\n  18 => \n  array (\n    \'urlruleid\' => \'18\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'content-{$catid}-{$id}-{$page}.html\',\n    \'example\' => \'content-1-2-1.html\',\n  ),\n  30 => \n  array (\n    \'urlruleid\' => \'30\',\n    \'module\' => \'content\',\n    \'file\' => \'category\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'list-{$catid}-{$page}.html\',\n    \'example\' => \'list-1-1.html\',\n  ),\n);\n?>'),('urlrules.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \'{$categorydir}{$catdir}/index.html|{$categorydir}{$catdir}/{$page}.html\',\n  6 => \'index.php?m=content&c=index&a=lists&catid={$catid}|index.php?m=content&c=index&a=lists&catid={$catid}&page={$page}\',\n  11 => \'{$year}/{$catdir}_{$month}{$day}/{$id}.html|{$year}/{$catdir}_{$month}{$day}/{$id}_{$page}.html\',\n  12 => \'{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}.html|{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}_{$page}.html\',\n  16 => \'index.php?m=content&c=index&a=show&catid={$catid}&id={$id}|index.php?m=content&c=index&a=show&catid={$catid}&id={$id}&page={$page}\',\n  17 => \'show-{$catid}-{$id}-{$page}.html\',\n  18 => \'content-{$catid}-{$id}-{$page}.html\',\n  30 => \'list-{$catid}-{$page}.html\',\n);\n?>'),('modules.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  \'admin\' => \n  array (\n    \'module\' => \'admin\',\n    \'name\' => \'admin\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'array (\n  \\\'admin_email\\\' => \\\'phpcms@phpcms.cn\\\',\n  \\\'adminaccessip\\\' => \\\'0\\\',\n  \\\'maxloginfailedtimes\\\' => \\\'8\\\',\n  \\\'maxiplockedtime\\\' => \\\'15\\\',\n  \\\'minrefreshtime\\\' => \\\'2\\\',\n  \\\'mail_type\\\' => \\\'1\\\',\n  \\\'mail_server\\\' => \\\'smtp.qq.com\\\',\n  \\\'mail_port\\\' => \\\'25\\\',\n  \\\'mail_user\\\' => \\\'phpcms.cn@foxmail.com\\\',\n  \\\'mail_auth\\\' => \\\'1\\\',\n  \\\'mail_from\\\' => \\\'phpcms.cn@foxmail.com\\\',\n  \\\'mail_password\\\' => \\\'\\\',\n  \\\'errorlog_size\\\' => \\\'20\\\',\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-10-18\',\n    \'updatedate\' => \'2010-10-18\',\n  ),\n  \'member\' => \n  array (\n    \'module\' => \'member\',\n    \'name\' => \'会员\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'array (\n  \\\'allowregister\\\' => \\\'1\\\',\n  \\\'choosemodel\\\' => \\\'1\\\',\n  \\\'enablemailcheck\\\' => \\\'0\\\',\n  \\\'registerverify\\\' => \\\'0\\\',\n  \\\'showapppoint\\\' => \\\'0\\\',\n  \\\'rmb_point_rate\\\' => \\\'10\\\',\n  \\\'defualtpoint\\\' => \\\'0\\\',\n  \\\'defualtamount\\\' => \\\'0\\\',\n  \\\'showregprotocol\\\' => \\\'0\\\',\n  \\\'regprotocol\\\' => \\\'		 欢迎您注册成为phpcms用户\r\n请仔细阅读下面的协议，只有接受协议才能继续进行注册。 \r\n1．服务条款的确认和接纳\r\n　　phpcms用户服务的所有权和运作权归phpcms拥有。phpcms所提供的服务将按照有关章程、服务条款和操作规则严格执行。用户通过注册程序点击“我同意” 按钮，即表示用户与phpcms达成协议并接受所有的服务条款。\r\n2． phpcms服务简介\r\n　　phpcms通过国际互联网为用户提供新闻及文章浏览、图片浏览、软件下载、网上留言和BBS论坛等服务。\r\n　　用户必须： \r\n　　1)购置设备，包括个人电脑一台、调制解调器一个及配备上网装置。 \r\n　　2)个人上网和支付与此服务有关的电话费用、网络费用。\r\n　　用户同意： \r\n　　1)提供及时、详尽及准确的个人资料。 \r\n　　2)不断更新注册资料，符合及时、详尽、准确的要求。所有原始键入的资料将引用为注册资料。 \r\n　　3)用户同意遵守《中华人民共和国保守国家秘密法》、《中华人民共和国计算机信息系统安全保护条例》、《计算机软件保护条例》等有关计算机及互联网规定的法律和法规、实施办法。在任何情况下，phpcms合理地认为用户的行为可能违反上述法律、法规，phpcms可以在任何时候，不经事先通知终止向该用户提供服务。用户应了解国际互联网的无国界性，应特别注意遵守当地所有有关的法律和法规。\r\n3． 服务条款的修改\r\n　　phpcms会不定时地修改服务条款，服务条款一旦发生变动，将会在相关页面上提示修改内容。如果您同意改动，则再一次点击“我同意”按钮。 如果您不接受，则及时取消您的用户使用服务资格。\r\n4． 服务修订\r\n　　phpcms保留随时修改或中断服务而不需知照用户的权利。phpcms行使修改或中断服务的权利，不需对用户或第三方负责。\r\n5． 用户隐私制度\r\n　　尊重用户个人隐私是phpcms的 基本政策。phpcms不会公开、编辑或透露用户的注册信息，除非有法律许可要求，或phpcms在诚信的基础上认为透露这些信息在以下三种情况是必要的： \r\n　　1)遵守有关法律规定，遵从合法服务程序。 \r\n　　2)保持维护phpcms的商标所有权。 \r\n　　3)在紧急情况下竭力维护用户个人和社会大众的隐私安全。 \r\n　　4)符合其他相关的要求。 \r\n6．用户的帐号，密码和安全性\r\n　　一旦注册成功成为phpcms用户，您将得到一个密码和帐号。如果您不保管好自己的帐号和密码安全，将对因此产生的后果负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。您可随时根据指示改变您的密码，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，立即通知phpcms。\r\n7． 免责条款\r\n　　用户明确同意网站服务的使用由用户个人承担风险。 　　 \r\n　　phpcms不作任何类型的担保，不担保服务一定能满足用户的要求，也不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保。用户理解并接受：任何通过phpcms服务取得的信息资料的可靠性取决于用户自己，用户自己承担所有风险和责任。 \r\n8．有限责任\r\n　　phpcms对任何直接、间接、偶然、特殊及继起的损害不负责任。\r\n9． 不提供零售和商业性服务 \r\n　　用户使用网站服务的权利是个人的。用户只能是一个单独的个体而不能是一个公司或实体商业性组织。用户承诺不经phpcms同意，不能利用网站服务进行销售或其他商业用途。\r\n10．用户责任 \r\n　　用户单独承担传输内容的责任。用户必须遵循： \r\n　　1)从中国境内向外传输技术性资料时必须符合中国有关法规。 \r\n　　2)使用网站服务不作非法用途。 \r\n　　3)不干扰或混乱网络服务。 \r\n　　4)不在论坛BBS或留言簿发表任何与政治相关的信息。 \r\n　　5)遵守所有使用网站服务的网络协议、规定、程序和惯例。\r\n　　6)不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益。\r\n　　7)不得利用本站制作、复制和传播下列信息： \r\n　　　1、煽动抗拒、破坏宪法和法律、行政法规实施的；\r\n　　　2、煽动颠覆国家政权，推翻社会主义制度的；\r\n　　　3、煽动分裂国家、破坏国家统一的；\r\n　　　4、煽动民族仇恨、民族歧视，破坏民族团结的；\r\n　　　5、捏造或者歪曲事实，散布谣言，扰乱社会秩序的；\r\n　　　6、宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；\r\n　　　7、公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；\r\n　　　8、损害国家机关信誉的；\r\n　　　9、其他违反宪法和法律行政法规的；\r\n　　　10、进行商业广告行为的。\r\n　　用户不能传输任何教唆他人构成犯罪行为的资料；不能传输长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法 律的资料。未经许可而非法进入其它电脑系统是禁止的。若用户的行为不符合以上的条款，phpcms将取消用户服务帐号。\r\n11．网站内容的所有权\r\n　　phpcms定义的内容包括：文字、软件、声音、相片、录象、图表；在广告中全部内容；电子邮件的全部内容；phpcms为用户提供的商业信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在phpcms和广告商授权下才能使用这些内容，而不能擅自复制、篡改这些内容、或创造与内容有关的派生产品。\r\n12．附加信息服务\r\n　　用户在享用phpcms提供的免费服务的同时，同意接受phpcms提供的各类附加信息服务。\r\n13．解释权\r\n　　本注册协议的解释权归phpcms所有。如果其中有任何条款与国家的有关法律相抵触，则以国家法律的明文规定为准。 \\\',\n  \\\'registerverifymessage\\\' => \\\' 欢迎您注册成为phpcms用户，您的账号需要邮箱认证，点击下面链接进行认证：{click}\r\n或者将网址复制到浏览器：{url}\\\',\n  \\\'forgetpassword\\\' => \\\' phpcms密码找回，请在一小时内点击下面链接进行操作：{click}\r\n或者将网址复制到浏览器：{url}\\\',\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'pay\' => \n  array (\n    \'module\' => \'pay\',\n    \'name\' => \'支付\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'digg\' => \n  array (\n    \'module\' => \'digg\',\n    \'name\' => \'顶一下\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'special\' => \n  array (\n    \'module\' => \'special\',\n    \'name\' => \'专题\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'content\' => \n  array (\n    \'module\' => \'content\',\n    \'name\' => \'内容模块\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'search\' => \n  array (\n    \'module\' => \'search\',\n    \'name\' => \'全站搜索\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'array (\n  \\\'fulltextenble\\\' => \\\'1\\\',\n  \\\'relationenble\\\' => \\\'1\\\',\n  \\\'suggestenable\\\' => \\\'1\\\',\n  \\\'sphinxenable\\\' => \\\'0\\\',\n  \\\'sphinxhost\\\' => \\\'10.228.134.102\\\',\n  \\\'sphinxport\\\' => \\\'9312\\\',\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'scan\' => \n  array (\n    \'module\' => \'scan\',\n    \'name\' => \'木马扫描\',\n    \'url\' => \'scan\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'attachment\' => \n  array (\n    \'module\' => \'attachment\',\n    \'name\' => \'附件\',\n    \'url\' => \'attachment\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'block\' => \n  array (\n    \'module\' => \'block\',\n    \'name\' => \'碎片\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'collection\' => \n  array (\n    \'module\' => \'collection\',\n    \'name\' => \'采集模块\',\n    \'url\' => \'collection\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'dbsource\' => \n  array (\n    \'module\' => \'dbsource\',\n    \'name\' => \'数据源\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'template\' => \n  array (\n    \'module\' => \'template\',\n    \'name\' => \'模板风格\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'release\' => \n  array (\n    \'module\' => \'release\',\n    \'name\' => \'发布点\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'video\' => \n  array (\n    \'module\' => \'video\',\n    \'name\' => \'视频库\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2012-09-28\',\n    \'updatedate\' => \'2012-09-28\',\n  ),\n  \'announce\' => \n  array (\n    \'module\' => \'announce\',\n    \'name\' => \'公告\',\n    \'url\' => \'announce/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'公告\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2013-11-29\',\n    \'updatedate\' => \'2013-11-29\',\n  ),\n  \'comment\' => \n  array (\n    \'module\' => \'comment\',\n    \'name\' => \'评论\',\n    \'url\' => \'comment/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'评论\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2013-11-29\',\n    \'updatedate\' => \'2013-11-29\',\n  ),\n  \'link\' => \n  array (\n    \'module\' => \'link\',\n    \'name\' => \'友情链接\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'array (\n  1 => \n  array (\n    \\\'is_post\\\' => \\\'1\\\',\n    \\\'enablecheckcode\\\' => \\\'0\\\',\n  ),\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'vote\' => \n  array (\n    \'module\' => \'vote\',\n    \'name\' => \'投票\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'array (\r\n  1 => \r\n  array (\r\n    \\\'default_style\\\' => \\\'default\\\',\r\n    \\\'vote_tp_template\\\' => \\\'vote_tp\\\',\r\n    \\\'allowguest\\\' => \\\'1\\\',\r\n    \\\'enabled\\\' => \\\'1\\\',\r\n    \\\'interval\\\' => \\\'1\\\',\r\n    \\\'credit\\\' => \\\'1\\\',\r\n  ),\r\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'message\' => \n  array (\n    \'module\' => \'message\',\n    \'name\' => \'短消息\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'mood\' => \n  array (\n    \'module\' => \'mood\',\n    \'name\' => \'新闻心情\',\n    \'url\' => \'mood/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'新闻心情\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2013-11-29\',\n    \'updatedate\' => \'2013-11-29\',\n  ),\n  \'poster\' => \n  array (\n    \'module\' => \'poster\',\n    \'name\' => \'广告模块\',\n    \'url\' => \'poster/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'广告模块\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2013-11-29\',\n    \'updatedate\' => \'2013-11-29\',\n  ),\n  \'formguide\' => \n  array (\n    \'module\' => \'formguide\',\n    \'name\' => \'表单向导\',\n    \'url\' => \'formguide/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'formguide\',\n    \'setting\' => \'array (\n  \\\'allowmultisubmit\\\' => \\\'1\\\',\n  \\\'interval\\\' => \\\'30\\\',\n  \\\'allowunreg\\\' => \\\'0\\\',\n  \\\'mailmessage\\\' => \\\'用户向我们提交了表单数据，赶快去看看吧。\\\',\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-10-20\',\n    \'updatedate\' => \'2010-10-20\',\n  ),\n  \'wap\' => \n  array (\n    \'module\' => \'wap\',\n    \'name\' => \'手机门户\',\n    \'url\' => \'wap/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'手机门户\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2013-11-29\',\n    \'updatedate\' => \'2013-11-29\',\n  ),\n  \'upgrade\' => \n  array (\n    \'module\' => \'upgrade\',\n    \'name\' => \'在线升级\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2011-05-18\',\n    \'updatedate\' => \'2011-05-18\',\n  ),\n  \'tag\' => \n  array (\n    \'module\' => \'tag\',\n    \'name\' => \'标签向导\',\n    \'url\' => \'tag/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'标签向导\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2013-11-29\',\n    \'updatedate\' => \'2013-11-29\',\n  ),\n  \'sms\' => \n  array (\n    \'module\' => \'sms\',\n    \'name\' => \'短信平台\',\n    \'url\' => \'sms/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'短信平台\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2011-09-02\',\n    \'updatedate\' => \'2011-09-02\',\n  ),\n);\n?>'),('model.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    \'modelid\' => \'1\',\n    \'siteid\' => \'1\',\n    \'name\' => \'文章模型\',\n    \'description\' => \'\',\n    \'tablename\' => \'news\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category\',\n    \'list_template\' => \'list\',\n    \'show_template\' => \'show\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n  2 => \n  array (\n    \'modelid\' => \'2\',\n    \'siteid\' => \'1\',\n    \'name\' => \'下载模型\',\n    \'description\' => \'\',\n    \'tablename\' => \'download\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category_download\',\n    \'list_template\' => \'list_download\',\n    \'show_template\' => \'show_download\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n  3 => \n  array (\n    \'modelid\' => \'3\',\n    \'siteid\' => \'1\',\n    \'name\' => \'图片模型\',\n    \'description\' => \'\',\n    \'tablename\' => \'picture\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category_picture\',\n    \'list_template\' => \'list_picture\',\n    \'show_template\' => \'show_picture\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n  11 => \n  array (\n    \'modelid\' => \'11\',\n    \'siteid\' => \'1\',\n    \'name\' => \'视频模型\',\n    \'description\' => \'\',\n    \'tablename\' => \'video\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category_video\',\n    \'list_template\' => \'list_video\',\n    \'show_template\' => \'show_video\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n);\n?>'),('workflow_1.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    \'workflowid\' => \'1\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'1\',\n    \'workname\' => \'一级审核\',\n    \'description\' => \'审核一次\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n  2 => \n  array (\n    \'workflowid\' => \'2\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'2\',\n    \'workname\' => \'二级审核\',\n    \'description\' => \'审核两次\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n  3 => \n  array (\n    \'workflowid\' => \'3\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'3\',\n    \'workname\' => \'三级审核\',\n    \'description\' => \'审核三次\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n  4 => \n  array (\n    \'workflowid\' => \'4\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'4\',\n    \'workname\' => \'四级审核\',\n    \'description\' => \'四级审核\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n);\n?>'),('member_model.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  10 => \n  array (\n    \'modelid\' => \'10\',\n    \'siteid\' => \'1\',\n    \'name\' => \'普通会员\',\n    \'description\' => \'普通会员\',\n    \'tablename\' => \'member_detail\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'\',\n    \'category_template\' => \'\',\n    \'list_template\' => \'\',\n    \'show_template\' => \'\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'2\',\n  ),\n);\n?>'),('special.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  2 => \n  array (\n    \'id\' => \'2\',\n    \'siteid\' => \'1\',\n    \'title\' => \'《当代医学》\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=special&c=index&specialid=2\',\n    \'thumb\' => \'http://zazhi.ddecshop.com/uploadfile/2013/1202/20131202032654104.jpg\',\n    \'banner\' => \'http://zazhi.ddecshop.com/uploadfile/2013/1202/20131202032559703.jpg\',\n    \'ishtml\' => \'0\',\n  ),\n  1 => \n  array (\n    \'id\' => \'1\',\n    \'siteid\' => \'1\',\n    \'title\' => \'《健康大视野》\',\n    \'url\' => \'http://zazhi.ddecshop.com/index.php?m=special&c=index&specialid=1\',\n    \'thumb\' => \'http://zazhi.ddecshop.com/uploadfile/zazhi/934b8cb0465a2eb805b7319b0d984626.jpg\',\n    \'banner\' => \'http://zazhi.ddecshop.com/uploadfile/zazhi/20130709104058452.jpg\',\n    \'ishtml\' => \'0\',\n  ),\n);\n?>'),('common.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  \'admin_email\' => \'phpcms@phpcms.cn\',\n  \'adminaccessip\' => \'0\',\n  \'maxloginfailedtimes\' => \'8\',\n  \'maxiplockedtime\' => \'15\',\n  \'minrefreshtime\' => \'2\',\n  \'mail_type\' => \'1\',\n  \'mail_server\' => \'smtp.qq.com\',\n  \'mail_port\' => \'25\',\n  \'mail_user\' => \'phpcms.cn@foxmail.com\',\n  \'mail_auth\' => \'1\',\n  \'mail_from\' => \'phpcms.cn@foxmail.com\',\n  \'mail_password\' => \'\',\n  \'errorlog_size\' => \'20\',\n);\n?>'),('category_items_1.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  9 => \'0\',\n  10 => \'0\',\n  11 => \'1\',\n  12 => \'0\',\n  13 => \'0\',\n  14 => \'0\',\n  15 => \'0\',\n  16 => \'0\',\n  17 => \'0\',\n  18 => \'0\',\n  19 => \'0\',\n  20 => \'0\',\n  21 => \'0\',\n  22 => \'0\',\n  23 => \'0\',\n  24 => \'0\',\n  25 => \'0\',\n  26 => \'0\',\n  27 => \'0\',\n  28 => \'0\',\n  29 => \'1\',\n  30 => \'1\',\n  31 => \'0\',\n  32 => \'0\',\n  33 => \'0\',\n  34 => \'0\',\n  35 => \'0\',\n  36 => \'0\',\n  37 => \'0\',\n  38 => \'0\',\n  39 => \'0\',\n  40 => \'0\',\n  41 => \'0\',\n  42 => \'0\',\n  43 => \'0\',\n  44 => \'0\',\n  45 => \'0\',\n  46 => \'0\',\n  47 => \'0\',\n  48 => \'0\',\n  49 => \'0\',\n  50 => \'0\',\n  51 => \'0\',\n  52 => \'0\',\n  53 => \'0\',\n  54 => \'0\',\n  55 => \'0\',\n  56 => \'0\',\n  57 => \'0\',\n  58 => \'0\',\n  59 => \'0\',\n  60 => \'0\',\n  61 => \'0\',\n  62 => \'0\',\n  63 => \'0\',\n  64 => \'0\',\n  65 => \'0\',\n  66 => \'0\',\n  67 => \'0\',\n  68 => \'0\',\n);\n?>'),('category_items_2.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>'),('category_items_3.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>'),('category_items_11.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>'),('type_content.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>'),('vote.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    \'default_style\' => \'default\',\n    \'vote_tp_template\' => \'vote_tp\',\n    \'allowguest\' => \'1\',\n    \'enabled\' => \'1\',\n    \'interval\' => \'1\',\n    \'credit\' => \'1\',\n  ),\n);\n?>'),('link.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    \'is_post\' => \'1\',\n    \'enablecheckcode\' => \'0\',\n  ),\n);\n?>'),('type_content_1.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>'),('type_.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>'),('category_items_13.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>');
/*!40000 ALTER TABLE `v9_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_category`
--

DROP TABLE IF EXISTS `v9_category`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_category` (
  `catid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `module` varchar(15) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `arrparentid` varchar(255) NOT NULL,
  `child` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `arrchildid` mediumtext NOT NULL,
  `catname` varchar(30) NOT NULL,
  `style` varchar(5) NOT NULL,
  `image` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `parentdir` varchar(100) NOT NULL,
  `catdir` varchar(30) NOT NULL,
  `url` varchar(100) NOT NULL,
  `items` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `setting` mediumtext NOT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sethtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `letter` varchar(30) NOT NULL,
  `usable_type` varchar(255) NOT NULL,
  PRIMARY KEY (`catid`),
  KEY `module` (`module`,`parentid`,`listorder`,`catid`),
  KEY `siteid` (`siteid`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_category`
--

LOCK TABLES `v9_category` WRITE;
/*!40000 ALTER TABLE `v9_category` DISABLE KEYS */;
INSERT INTO `v9_category` VALUES (1,1,'content',1,0,0,'0',1,'1,2,3,4,5','网站介绍','','','','','about','/html/about/',0,0,'array (\n  \'ishtml\' => \'1\',\n  \'template_list\' => \'default\',\n  \'page_template\' => \'page\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'category_ruleid\' => \'1\',\n  \'show_ruleid\' => \'\',\n  \'repeatchargedays\' => \'1\',\n)',69,0,0,'wangzhanjieshao',''),(2,1,'content',1,0,1,'0,1',0,'2','关于我们','','','','about/','aboutus','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=2',0,0,'array (\n  \'ishtml\' => \'0\',\n  \'template_list\' => \'default\',\n  \'page_template\' => \'page\',\n  \'meta_title\' => \'关于我们\',\n  \'meta_keywords\' => \'关于我们\',\n  \'meta_description\' => \'关于我们\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'\',\n  \'repeatchargedays\' => \'1\',\n)',70,1,0,'guanyuwomen',''),(3,1,'content',1,0,1,'0,1',0,'3','联系方式','','','','about/','contactus','/html/about/contactus/',0,0,'array (\n  \'ishtml\' => \'1\',\n  \'template_list\' => \'default\',\n  \'page_template\' => \'page\',\n  \'meta_title\' => \'联系方式\',\n  \'meta_keywords\' => \'联系方式\',\n  \'meta_description\' => \'联系方式\',\n  \'category_ruleid\' => \'1\',\n  \'show_ruleid\' => \'\',\n  \'repeatchargedays\' => \'1\',\n)',71,1,0,'lianxifangshi',''),(4,1,'content',1,0,1,'0,1',0,'4','版权声明','','','','about/','copyright','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=4',0,0,'array (\n  \'ishtml\' => \'0\',\n  \'template_list\' => \'default\',\n  \'page_template\' => \'page\',\n  \'meta_title\' => \'版权声明\',\n  \'meta_keywords\' => \'版权声明\',\n  \'meta_description\' => \'版权声明\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'\',\n  \'repeatchargedays\' => \'1\',\n)',72,1,0,'banquanshengming',''),(5,1,'content',1,0,1,'0,1',0,'5','网站地图','','','','about/','hr','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=5',0,0,'array (\n  \'ishtml\' => \'0\',\n  \'template_list\' => \'default\',\n  \'page_template\' => \'page\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'\',\n  \'repeatchargedays\' => \'1\',\n)',73,1,0,'wangzhanditu',''),(9,1,'content',0,1,0,'0',1,'9,10,11,12','晋级政策','','','','','jinji','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=9',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',9,1,0,'jinjizhengce',''),(10,1,'content',0,1,9,'0,9',0,'10','职称晋升','','','','jinji/','zhicheng','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=10',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',10,1,0,'zhichengjinsheng',''),(11,1,'content',0,1,9,'0,9',0,'11','写作技巧','','','','jinji/','xiezuo','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=11',1,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',11,1,0,'xiezuojiqiao',''),(12,1,'content',0,1,9,'0,9',0,'12','期刊鉴别','','','','jinji/','jianbie','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=12',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',12,1,0,'qikanjianbie',''),(13,1,'content',0,1,0,'0',1,'13,20,21,22,23,24,25,26,27,28','医学期刊','','','','','qikan','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=13',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',13,1,0,'yixueqikan',''),(14,1,'content',0,1,0,'0',1,'14,29,30,31,32,33,34,35,36,37,38,39,40,41,42','专科文献','','','','','wenxian','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=14',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',14,1,0,'zhuankewenxian',''),(15,1,'content',0,1,0,'0',1,'15,43,44,45,46,47,48,49,50,51,52','医学教育','','','','','jiaoyu','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=15',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',15,1,0,'yixuejiaoyu',''),(16,1,'content',0,1,0,'0',0,'16','在线投稿','','','如果您想发表您的相关课题信息，可以在此免费在线投稿！','','tougao','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=16',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',16,1,0,'zaixiantougao',''),(17,1,'content',0,1,0,'0',0,'17','学术会议','','','学术会议的说明','','huiyi','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=17',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',17,1,0,'xueshuhuiyi',''),(18,1,'content',0,1,0,'0',1,'18,53,54,55,56,57,58,59,60,61,62,63,64','医学新知','','','','','xinzhi','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=18',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',18,1,0,'yixuexinzhi',''),(19,1,'content',0,1,0,'0',1,'19,65,66,67,68','医护下载','','','','','xiazai','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=19',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',19,1,0,'yihuxiazai',''),(20,1,'content',0,1,13,'0,13',0,'20','中医期刊','','','','qikan/','zhongyiqikan','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=20',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',20,1,0,'zhongyiqikan',''),(21,1,'content',0,1,13,'0,13',0,'21','护理期刊','','','','qikan/','huliqikan','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=21',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',21,1,0,'huliqikan',''),(22,1,'content',0,1,13,'0,13',0,'22','省级期刊','','','','qikan/','shengjiqikan','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=22',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',22,1,0,'shengjiqikan',''),(23,1,'content',0,1,13,'0,13',0,'23','国家级期刊','','','','qikan/','guojiajiqikan','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=23',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',23,1,0,'guojiajiqikan',''),(24,1,'content',0,1,13,'0,13',0,'24','科技核心期刊','','','','qikan/','kejihexinqikan','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=24',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',24,1,0,'kejihexinqikan',''),(25,1,'content',0,1,13,'0,13',0,'25','北大核心期刊','','','','qikan/','beidahexinqikan','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=25',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',25,1,0,'beidahexinqikan',''),(26,1,'content',0,1,13,'0,13',0,'26','浙江目录','','','','qikan/','zhejiangmulu','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=26',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',26,1,0,'zhejiangmulu',''),(27,1,'content',0,1,13,'0,13',0,'27','中华系列期刊','','','','qikan/','zhonghuaxilieqikan','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=27',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',27,1,0,'zhonghuaxilieqikan',''),(28,1,'content',0,1,13,'0,13',0,'28','SCI期刊','','','','qikan/','sciqikan','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=28',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',28,1,0,'sciqikan',''),(29,1,'content',0,1,14,'0,14',0,'29','护理','','','','wenxian/','huli','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=29',1,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',29,1,0,'huli',''),(30,1,'content',0,1,14,'0,14',0,'30','妇产科','','','','wenxian/','fuchanke','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=30',1,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',30,1,0,'fuchanke',''),(31,1,'content',0,1,14,'0,14',0,'31','儿科','','','','wenxian/','erke','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=31',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',31,1,0,'erke',''),(32,1,'content',0,1,14,'0,14',0,'32','肿瘤科','','','','wenxian/','zhongliuke','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=32',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',32,1,0,'zhongliuke',''),(33,1,'content',0,1,14,'0,14',0,'33','呼吸内科','','','','wenxian/','huxineike','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=33',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',33,1,0,'huxineike',''),(34,1,'content',0,1,14,'0,14',0,'34','消化内科','','','','wenxian/','xiaohuaneike','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=34',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',34,1,0,'xiaohuaneike',''),(35,1,'content',0,1,14,'0,14',0,'35','外科','','','','wenxian/','waike','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=35',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',35,1,0,'waike',''),(36,1,'content',0,1,14,'0,14',0,'36','心血管科','','','','wenxian/','xinxueguanke','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=36',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',36,1,0,'xinxueguanke',''),(37,1,'content',0,1,14,'0,14',0,'37','内分泌科','','','','wenxian/','neifenmike','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=37',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',37,1,0,'neifenmike',''),(38,1,'content',0,1,14,'0,14',0,'38','泌尿内科','','','','wenxian/','miniaoneike','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=38',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',38,1,0,'miniaoneike',''),(39,1,'content',0,1,14,'0,14',0,'39','骨科','','','','wenxian/','guke','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=39',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',39,1,0,'guke',''),(40,1,'content',0,1,14,'0,14',0,'40','神经外科','','','','wenxian/','shenjingwaike','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=40',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',40,1,0,'shenjingwaike',''),(41,1,'content',0,1,14,'0,14',0,'41','泌尿外科','','','','wenxian/','miniaowaike','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=41',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',41,1,0,'miniaowaike',''),(42,1,'content',0,1,14,'0,14',0,'42','综合临床','','','','wenxian/','zonghelinchuang','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=42',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',42,1,0,'zonghelinchuang',''),(43,1,'content',0,1,15,'0,15',0,'43','医师维权','','','','jiaoyu/','yishiweiquan','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=43',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',43,1,0,'yishiweiquan',''),(44,1,'content',0,1,15,'0,15',0,'44','行业动态','','','','jiaoyu/','xingyedongtai','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=44',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',44,1,0,'xingyedongtai',''),(45,1,'content',0,1,15,'0,15',0,'45','医界声音','','','','jiaoyu/','yijieshengyin','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=45',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',45,1,0,'yijieshengyin',''),(46,1,'content',0,1,15,'0,15',0,'46','病例讨论','','','','jiaoyu/','binglitaolun','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=46',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',46,1,0,'binglitaolun',''),(47,1,'content',0,1,15,'0,15',0,'47','科研前线','','','','jiaoyu/','keyanqianxian','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=47',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',47,1,0,'keyanqianxian',''),(48,1,'content',0,1,15,'0,15',0,'48','医药时评','','','','jiaoyu/','yiyaoshiping','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=48',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',48,1,0,'yiyaoshiping',''),(49,1,'content',0,1,15,'0,15',0,'49','医学图谱','','','','jiaoyu/','yixuetupu','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=49',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',49,1,0,'yixuetupu',''),(50,1,'content',0,1,15,'0,15',0,'50','政策解读','','','','jiaoyu/','zhengcejiedu','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=50',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',50,1,0,'zhengcejiedu',''),(51,1,'content',0,1,15,'0,15',0,'51','医学名词','','','','jiaoyu/','yixuemingci','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=51',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',51,1,0,'yixuemingci',''),(52,1,'content',0,1,15,'0,15',0,'52','医疗文书','','','','jiaoyu/','yiliaowenshu','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=52',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',52,1,0,'yiliaowenshu',''),(53,1,'content',0,1,18,'0,18',0,'53','药物不良反应','','','','xinzhi/','yaowubuliangfanying','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=53',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',53,1,0,'yaowubuliangfanying',''),(54,1,'content',0,1,18,'0,18',0,'54','典型病例','','','','xinzhi/','dianxingbingli','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=54',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',54,1,0,'dianxingbingli',''),(55,1,'content',0,1,18,'0,18',0,'55','疑难杂症','','','','xinzhi/','yinanzazheng','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=55',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',55,1,0,'yinanzazheng',''),(56,1,'content',0,1,18,'0,18',0,'56','误诊误治','','','','xinzhi/','wuzhenwuzhi','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=56',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',56,1,0,'wuzhenwuzhi',''),(57,1,'content',0,1,18,'0,18',0,'57','医疗纠纷','','','','xinzhi/','yiliaojiufen','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=57',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',57,1,0,'yiliaojiufen',''),(58,1,'content',0,1,18,'0,18',0,'58','中医中药','','','','xinzhi/','zhongyizhongyao','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=58',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',58,1,0,'zhongyizhongyao',''),(59,1,'content',0,1,18,'0,18',0,'59','实验研究','','','','xinzhi/','shiyanyanjiu','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=59',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',59,1,0,'shiyanyanjiu',''),(60,1,'content',0,1,18,'0,18',0,'60','辅助检查','','','','xinzhi/','fuzhujiancha','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=60',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',60,1,0,'fuzhujiancha',''),(61,1,'content',0,1,18,'0,18',0,'61','临床研究','','','','xinzhi/','linchuangyanjiu','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=61',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',61,1,0,'linchuangyanjiu',''),(62,1,'content',0,1,18,'0,18',0,'62','护理文献','','','','xinzhi/','huliwenxian','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=62',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',62,1,0,'huliwenxian',''),(63,1,'content',0,1,18,'0,18',0,'63','管理文献','','','','xinzhi/','guanliwenxian','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=63',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',63,1,0,'guanliwenxian',''),(64,1,'content',0,1,18,'0,18',0,'64','临床用药','','','','xinzhi/','linchuangyongyao','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=64',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',64,1,0,'linchuangyongyao',''),(65,1,'content',0,1,19,'0,19',0,'65','医护工具','','','','xiazai/','yihugongju','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=65',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',65,1,0,'yihugongju',''),(66,1,'content',0,1,19,'0,19',0,'66','医护课件','','','','xiazai/','yihukejian','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=66',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',66,1,0,'yihukejian',''),(67,1,'content',0,1,19,'0,19',0,'67','晋级期刊目录','','','','xiazai/','jinjiqikanmulu','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=67',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',67,1,0,'jinjiqikanmulu',''),(68,1,'content',0,1,19,'0,19',0,'68','征稿函下载','','','','xiazai/','zhenggaohanxiazai','http://zazhi.ddecshop.com/index.php?m=content&c=index&a=lists&catid=68',0,0,'array (\n  \'workflowid\' => \'\',\n  \'ishtml\' => \'0\',\n  \'content_ishtml\' => \'0\',\n  \'create_to_html_root\' => \'0\',\n  \'template_list\' => \'default\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n  \'meta_title\' => \'\',\n  \'meta_keywords\' => \'\',\n  \'meta_description\' => \'\',\n  \'presentpoint\' => \'1\',\n  \'defaultchargepoint\' => \'0\',\n  \'paytype\' => \'0\',\n  \'repeatchargedays\' => \'1\',\n  \'category_ruleid\' => \'6\',\n  \'show_ruleid\' => \'16\',\n)',68,1,0,'zhenggaohanxiazai','');
/*!40000 ALTER TABLE `v9_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_category_priv`
--

DROP TABLE IF EXISTS `v9_category_priv`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_category_priv` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `roleid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `action` char(30) NOT NULL,
  KEY `catid` (`catid`,`roleid`,`is_admin`,`action`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_category_priv`
--

LOCK TABLES `v9_category_priv` WRITE;
/*!40000 ALTER TABLE `v9_category_priv` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_category_priv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_collection_content`
--

DROP TABLE IF EXISTS `v9_collection_content`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_collection_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nodeid` int(10) unsigned NOT NULL DEFAULT '0',
  `siteid` mediumint(5) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(255) NOT NULL,
  `title` char(100) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nodeid` (`nodeid`,`siteid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_collection_content`
--

LOCK TABLES `v9_collection_content` WRITE;
/*!40000 ALTER TABLE `v9_collection_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_collection_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_collection_history`
--

DROP TABLE IF EXISTS `v9_collection_history`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_collection_history` (
  `md5` char(32) NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5`,`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_collection_history`
--

LOCK TABLES `v9_collection_history` WRITE;
/*!40000 ALTER TABLE `v9_collection_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_collection_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_collection_node`
--

DROP TABLE IF EXISTS `v9_collection_node`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_collection_node` (
  `nodeid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `lastdate` int(10) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sourcecharset` varchar(8) NOT NULL,
  `sourcetype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `urlpage` text NOT NULL,
  `pagesize_start` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pagesize_end` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `page_base` char(255) NOT NULL,
  `par_num` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `url_contain` char(100) NOT NULL,
  `url_except` char(100) NOT NULL,
  `url_start` char(100) NOT NULL DEFAULT '',
  `url_end` char(100) NOT NULL DEFAULT '',
  `title_rule` char(100) NOT NULL,
  `title_html_rule` text NOT NULL,
  `author_rule` char(100) NOT NULL,
  `author_html_rule` text NOT NULL,
  `comeform_rule` char(100) NOT NULL,
  `comeform_html_rule` text NOT NULL,
  `time_rule` char(100) NOT NULL,
  `time_html_rule` text NOT NULL,
  `content_rule` char(100) NOT NULL,
  `content_html_rule` text NOT NULL,
  `content_page_start` char(100) NOT NULL,
  `content_page_end` char(100) NOT NULL,
  `content_page_rule` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content_page` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `content_nextpage` char(100) NOT NULL,
  `down_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `watermark` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `coll_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `customize_config` text NOT NULL,
  PRIMARY KEY (`nodeid`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_collection_node`
--

LOCK TABLES `v9_collection_node` WRITE;
/*!40000 ALTER TABLE `v9_collection_node` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_collection_node` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_collection_program`
--

DROP TABLE IF EXISTS `v9_collection_program`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_collection_program` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `nodeid` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `config` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`),
  KEY `nodeid` (`nodeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_collection_program`
--

LOCK TABLES `v9_collection_program` WRITE;
/*!40000 ALTER TABLE `v9_collection_program` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_collection_program` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_comment`
--

DROP TABLE IF EXISTS `v9_comment`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_comment` (
  `commentid` char(30) NOT NULL,
  `siteid` smallint(5) NOT NULL DEFAULT '0',
  `title` char(255) NOT NULL,
  `url` char(255) NOT NULL,
  `total` int(8) unsigned DEFAULT '0',
  `square` mediumint(8) unsigned DEFAULT '0',
  `anti` mediumint(8) unsigned DEFAULT '0',
  `neutral` mediumint(8) unsigned DEFAULT '0',
  `display_type` tinyint(1) DEFAULT '0',
  `tableid` mediumint(8) unsigned DEFAULT '0',
  `lastupdate` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`commentid`),
  KEY `lastupdate` (`lastupdate`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_comment`
--

LOCK TABLES `v9_comment` WRITE;
/*!40000 ALTER TABLE `v9_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_comment_check`
--

DROP TABLE IF EXISTS `v9_comment_check`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_comment_check` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `comment_data_id` int(10) DEFAULT '0' COMMENT '论评ID号',
  `siteid` smallint(5) NOT NULL DEFAULT '0' COMMENT '站点ID',
  `tableid` mediumint(8) DEFAULT '0' COMMENT '数据存储表ID',
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`),
  KEY `comment_data_id` (`comment_data_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_comment_check`
--

LOCK TABLES `v9_comment_check` WRITE;
/*!40000 ALTER TABLE `v9_comment_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_comment_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_comment_data_1`
--

DROP TABLE IF EXISTS `v9_comment_data_1`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_comment_data_1` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `commentid` char(30) NOT NULL DEFAULT '' COMMENT '评论ID号',
  `siteid` smallint(5) NOT NULL DEFAULT '0' COMMENT '站点ID',
  `userid` int(10) unsigned DEFAULT '0' COMMENT '用户ID',
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `creat_at` int(10) DEFAULT NULL COMMENT '发布时间',
  `ip` varchar(15) DEFAULT NULL COMMENT '用户IP地址',
  `status` tinyint(1) DEFAULT '0' COMMENT '评论状态{0:未审核,-1:未通过审核,1:通过审核}',
  `content` text COMMENT '评论内容',
  `direction` tinyint(1) DEFAULT '0' COMMENT '评论方向{0:无方向,1:正文,2:反方,3:中立}',
  `support` mediumint(8) unsigned DEFAULT '0' COMMENT '支持数',
  `reply` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为回复',
  PRIMARY KEY (`id`),
  KEY `commentid` (`commentid`),
  KEY `direction` (`direction`),
  KEY `siteid` (`siteid`),
  KEY `support` (`support`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_comment_data_1`
--

LOCK TABLES `v9_comment_data_1` WRITE;
/*!40000 ALTER TABLE `v9_comment_data_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_comment_data_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_comment_setting`
--

DROP TABLE IF EXISTS `v9_comment_setting`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_comment_setting` (
  `siteid` smallint(5) NOT NULL DEFAULT '0' COMMENT '站点ID',
  `guest` tinyint(1) DEFAULT '0' COMMENT '是否允许游客评论',
  `check` tinyint(1) DEFAULT '0' COMMENT '是否需要审核',
  `code` tinyint(1) DEFAULT '0' COMMENT '是否开启验证码',
  `add_point` tinyint(3) unsigned DEFAULT '0' COMMENT '添加的积分数',
  `del_point` tinyint(3) unsigned DEFAULT '0' COMMENT '扣除的积分数',
  PRIMARY KEY (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_comment_setting`
--

LOCK TABLES `v9_comment_setting` WRITE;
/*!40000 ALTER TABLE `v9_comment_setting` DISABLE KEYS */;
INSERT INTO `v9_comment_setting` VALUES (1,0,0,0,0,0);
/*!40000 ALTER TABLE `v9_comment_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_comment_table`
--

DROP TABLE IF EXISTS `v9_comment_table`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_comment_table` (
  `tableid` mediumint(8) NOT NULL AUTO_INCREMENT COMMENT '表ID号',
  `total` int(10) unsigned DEFAULT '0' COMMENT '数据总量',
  `creat_at` int(10) DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`tableid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_comment_table`
--

LOCK TABLES `v9_comment_table` WRITE;
/*!40000 ALTER TABLE `v9_comment_table` DISABLE KEYS */;
INSERT INTO `v9_comment_table` VALUES (1,0,0);
/*!40000 ALTER TABLE `v9_comment_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_content_check`
--

DROP TABLE IF EXISTS `v9_content_check`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_content_check` (
  `checkid` char(15) NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` char(80) NOT NULL,
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `username` (`username`),
  KEY `checkid` (`checkid`),
  KEY `status` (`status`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_content_check`
--

LOCK TABLES `v9_content_check` WRITE;
/*!40000 ALTER TABLE `v9_content_check` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_content_check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_copyfrom`
--

DROP TABLE IF EXISTS `v9_copyfrom`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_copyfrom` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `sitename` varchar(30) NOT NULL,
  `siteurl` varchar(100) NOT NULL,
  `thumb` varchar(100) NOT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_copyfrom`
--

LOCK TABLES `v9_copyfrom` WRITE;
/*!40000 ALTER TABLE `v9_copyfrom` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_copyfrom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_datacall`
--

DROP TABLE IF EXISTS `v9_datacall`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_datacall` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` char(40) DEFAULT NULL,
  `dis_type` tinyint(1) unsigned DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `module` char(20) DEFAULT NULL,
  `action` char(20) DEFAULT NULL,
  `data` text,
  `template` text,
  `cache` mediumint(8) DEFAULT NULL,
  `num` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_datacall`
--

LOCK TABLES `v9_datacall` WRITE;
/*!40000 ALTER TABLE `v9_datacall` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_datacall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_dbsource`
--

DROP TABLE IF EXISTS `v9_dbsource`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_dbsource` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `host` varchar(20) NOT NULL,
  `port` int(5) NOT NULL DEFAULT '3306',
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `dbname` varchar(50) NOT NULL,
  `dbtablepre` varchar(30) NOT NULL,
  `charset` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_dbsource`
--

LOCK TABLES `v9_dbsource` WRITE;
/*!40000 ALTER TABLE `v9_dbsource` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_dbsource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_download`
--

DROP TABLE IF EXISTS `v9_download`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_download` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `systems` varchar(100) NOT NULL DEFAULT 'Win2000/WinXP/Win2003',
  `copytype` varchar(15) NOT NULL DEFAULT '',
  `language` varchar(10) NOT NULL DEFAULT '',
  `classtype` varchar(20) NOT NULL DEFAULT '',
  `version` varchar(20) NOT NULL DEFAULT '',
  `filesize` varchar(10) NOT NULL DEFAULT 'Unkown',
  `stars` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`status`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_download`
--

LOCK TABLES `v9_download` WRITE;
/*!40000 ALTER TABLE `v9_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_download_data`
--

DROP TABLE IF EXISTS `v9_download_data`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_download_data` (
  `id` mediumint(8) unsigned DEFAULT '0',
  `content` text NOT NULL,
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `downfiles` mediumtext NOT NULL,
  `downfile` varchar(255) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_download_data`
--

LOCK TABLES `v9_download_data` WRITE;
/*!40000 ALTER TABLE `v9_download_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_download_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_downservers`
--

DROP TABLE IF EXISTS `v9_downservers`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_downservers` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `sitename` varchar(100) DEFAULT NULL,
  `siteurl` varchar(255) DEFAULT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_downservers`
--

LOCK TABLES `v9_downservers` WRITE;
/*!40000 ALTER TABLE `v9_downservers` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_downservers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_extend_setting`
--

DROP TABLE IF EXISTS `v9_extend_setting`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_extend_setting` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `key` char(30) NOT NULL,
  `data` mediumtext,
  PRIMARY KEY (`id`),
  KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_extend_setting`
--

LOCK TABLES `v9_extend_setting` WRITE;
/*!40000 ALTER TABLE `v9_extend_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_extend_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_favorite`
--

DROP TABLE IF EXISTS `v9_favorite`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_favorite` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title` char(100) NOT NULL,
  `url` char(100) NOT NULL,
  `adddate` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_favorite`
--

LOCK TABLES `v9_favorite` WRITE;
/*!40000 ALTER TABLE `v9_favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_form_guestbook`
--

DROP TABLE IF EXISTS `v9_form_guestbook`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_form_guestbook` (
  `dataid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) unsigned NOT NULL,
  `username` varchar(20) NOT NULL,
  `datetime` int(10) unsigned NOT NULL,
  `ip` char(15) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '',
  `mob` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `fwdw` varchar(255) NOT NULL DEFAULT '',
  `ndzc` varchar(255) NOT NULL DEFAULT '',
  `szks` varchar(255) NOT NULL DEFAULT '',
  `content` mediumtext NOT NULL,
  PRIMARY KEY (`dataid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_form_guestbook`
--

LOCK TABLES `v9_form_guestbook` WRITE;
/*!40000 ALTER TABLE `v9_form_guestbook` DISABLE KEYS */;
INSERT INTO `v9_form_guestbook` VALUES (1,0,'',1386089150,'127.0.0.1','陈冠希','13122223333','5653232@qq.com','jklsd','jljds','sdsds','ssasas');
/*!40000 ALTER TABLE `v9_form_guestbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_hits`
--

DROP TABLE IF EXISTS `v9_hits`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_hits` (
  `hitsid` char(30) NOT NULL,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `yesterdayviews` int(10) unsigned NOT NULL DEFAULT '0',
  `dayviews` int(10) unsigned NOT NULL DEFAULT '0',
  `weekviews` int(10) unsigned NOT NULL DEFAULT '0',
  `monthviews` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hitsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_hits`
--

LOCK TABLES `v9_hits` WRITE;
/*!40000 ALTER TABLE `v9_hits` DISABLE KEYS */;
INSERT INTO `v9_hits` VALUES ('c-1-9',11,11,5,6,11,11,1386165033),('special-c-109-27',0,0,0,0,0,0,0),('special-c-2-28',0,0,0,0,0,0,0),('special-c-2-29',0,0,0,0,0,0,0),('special-c-2-30',0,0,0,0,0,0,0),('special-c-2-31',0,0,0,0,0,0,0),('special-c-2-32',0,3,2,1,3,3,1386168009),('special-c-1-1',0,6,0,4,4,4,1385951778),('special-c-1-2',0,8,6,1,7,7,1386079843),('special-c-1-3',0,8,5,3,8,8,1386079688),('special-c-1-4',0,2,0,1,2,2,1386345509),('special-c-1-5',0,5,3,1,4,5,1386079755),('special-c-50-6',0,0,0,0,0,0,0),('special-c-50-7',0,0,0,0,0,0,0),('special-c-1-21',0,0,0,0,0,0,0),('special-c-1-22',0,0,0,0,0,0,0),('special-c-50-10',0,0,0,0,0,0,0),('special-c-50-11',0,0,0,0,0,0,0),('special-c-50-12',0,0,0,0,0,0,0),('special-c-50-13',0,0,0,0,0,0,0),('special-c-50-14',0,0,0,0,0,0,0),('special-c-50-15',0,0,0,0,0,0,0),('special-c-1-16',0,0,0,0,0,0,0),('special-c-1-17',0,0,0,0,0,0,0),('special-c-1-18',0,0,0,0,0,0,0),('special-c-1-19',0,0,0,0,0,0,0),('special-c-1-20',0,0,0,0,0,0,0),('special-c-1-23',0,0,0,0,0,0,0),('special-c-1-24',0,0,0,0,0,0,0),('special-c-1-25',0,0,0,0,0,0,0),('special-c-1-26',0,27,3,1,27,27,1386164762),('special-c-1-33',0,6,0,6,6,6,1386096024),('c-1-10',29,4,0,4,4,4,1386167142),('c-1-11',30,0,0,0,0,0,1386094289);
/*!40000 ALTER TABLE `v9_hits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_ipbanned`
--

DROP TABLE IF EXISTS `v9_ipbanned`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_ipbanned` (
  `ipbannedid` smallint(5) NOT NULL AUTO_INCREMENT,
  `ip` char(15) NOT NULL,
  `expires` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipbannedid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_ipbanned`
--

LOCK TABLES `v9_ipbanned` WRITE;
/*!40000 ALTER TABLE `v9_ipbanned` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_ipbanned` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_keylink`
--

DROP TABLE IF EXISTS `v9_keylink`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_keylink` (
  `keylinkid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `word` char(40) NOT NULL,
  `url` char(100) NOT NULL,
  PRIMARY KEY (`keylinkid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_keylink`
--

LOCK TABLES `v9_keylink` WRITE;
/*!40000 ALTER TABLE `v9_keylink` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_keylink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_keyword`
--

DROP TABLE IF EXISTS `v9_keyword`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_keyword` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `keyword` char(100) NOT NULL,
  `pinyin` char(100) NOT NULL,
  `videonum` int(11) NOT NULL DEFAULT '0',
  `searchnums` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `keyword` (`keyword`,`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_keyword`
--

LOCK TABLES `v9_keyword` WRITE;
/*!40000 ALTER TABLE `v9_keyword` DISABLE KEYS */;
INSERT INTO `v9_keyword` VALUES (1,1,'111111111','111111111',1,0),(2,1,'写作技巧','xiezuojiqiao',2,0),(3,1,'','',2,0),(4,1,'1111111','1111111',2,0),(5,1,'222222222','222222222',1,0),(6,1,'333','333',1,0),(7,1,'44444444','44444444',1,0),(8,1,'55555','55555',1,0),(9,1,'6666666','6666666',1,0),(10,1,'1','1',1,0),(11,1,'test111111111','test111111111',2,0),(12,1,'护理','huli',1,0),(13,1,'ceshi','ceshi',1,0),(14,1,'妇产科','fuchanke',1,0),(15,1,'dsds','dsds',1,0);
/*!40000 ALTER TABLE `v9_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_keyword_data`
--

DROP TABLE IF EXISTS `v9_keyword_data`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_keyword_data` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tagid` int(10) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `contentid` char(30) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagid` (`tagid`,`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_keyword_data`
--

LOCK TABLES `v9_keyword_data` WRITE;
/*!40000 ALTER TABLE `v9_keyword_data` DISABLE KEYS */;
INSERT INTO `v9_keyword_data` VALUES (1,1,1,'1-1'),(2,2,1,'2-1'),(3,3,1,'2-1'),(4,4,1,'2-1'),(5,5,1,'3-1'),(6,6,1,'4-1'),(7,7,1,'5-1'),(8,8,1,'6-1'),(9,9,1,'7-1'),(10,10,1,'8-1'),(11,11,1,'9-1'),(12,12,1,'10-1'),(13,13,1,'10-1'),(14,14,1,'11-1'),(15,15,1,'11-1');
/*!40000 ALTER TABLE `v9_keyword_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_link`
--

DROP TABLE IF EXISTS `v9_link`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_link` (
  `linkid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `linktype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `introduce` text NOT NULL,
  `username` varchar(30) NOT NULL DEFAULT '',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `elite` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `passed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`linkid`),
  KEY `typeid` (`typeid`,`passed`,`listorder`,`linkid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_link`
--

LOCK TABLES `v9_link` WRITE;
/*!40000 ALTER TABLE `v9_link` DISABLE KEYS */;
INSERT INTO `v9_link` VALUES (3,1,0,0,'京东商城','http://jd.com','','','刘强东',0,0,1,1386090736);
/*!40000 ALTER TABLE `v9_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_linkage`
--

DROP TABLE IF EXISTS `v9_linkage`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_linkage` (
  `linkageid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `style` varchar(35) NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `child` tinyint(1) NOT NULL,
  `arrchildid` mediumtext NOT NULL,
  `keyid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  `setting` varchar(255) DEFAULT NULL,
  `siteid` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`linkageid`,`keyid`),
  KEY `parentid` (`parentid`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=3360 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_linkage`
--

LOCK TABLES `v9_linkage` WRITE;
/*!40000 ALTER TABLE `v9_linkage` DISABLE KEYS */;
INSERT INTO `v9_linkage` VALUES (1,'中国','1',0,0,'',0,0,'',NULL,0),(2,'北京市','0',0,0,'',1,0,'',NULL,0),(3,'上海市','0',0,0,'',1,0,'',NULL,0),(4,'天津市','0',0,0,'',1,0,'',NULL,0),(5,'重庆市','0',0,0,'',1,0,'',NULL,0),(6,'河北省','0',0,0,'',1,0,'',NULL,0),(7,'山西省','0',0,0,'',1,0,'',NULL,0),(8,'内蒙古','0',0,0,'',1,0,'',NULL,0),(9,'辽宁省','0',0,0,'',1,0,'',NULL,0),(10,'吉林省','0',0,0,'',1,0,'',NULL,0),(11,'黑龙江省','0',0,0,'',1,0,'',NULL,0),(12,'江苏省','0',0,0,'',1,0,'',NULL,0),(13,'浙江省','0',0,0,'',1,0,'',NULL,0),(14,'安徽省','0',0,0,'',1,0,'',NULL,0),(15,'福建省','0',0,0,'',1,0,'',NULL,0),(16,'江西省','0',0,0,'',1,0,'',NULL,0),(17,'山东省','0',0,0,'',1,0,'',NULL,0),(18,'河南省','0',0,0,'',1,0,'',NULL,0),(19,'湖北省','0',0,0,'',1,0,'',NULL,0),(20,'湖南省','0',0,0,'',1,0,'',NULL,0),(21,'广东省','0',0,0,'',1,0,'',NULL,0),(22,'广西','0',0,0,'',1,0,'',NULL,0),(23,'海南省','0',0,0,'',1,0,'',NULL,0),(24,'四川省','0',0,0,'',1,0,'',NULL,0),(25,'贵州省','0',0,0,'',1,0,'',NULL,0),(26,'云南省','0',0,0,'',1,0,'',NULL,0),(27,'西藏','0',0,0,'',1,0,'',NULL,0),(28,'陕西省','0',0,0,'',1,0,'',NULL,0),(29,'甘肃省','0',0,0,'',1,0,'',NULL,0),(30,'青海省','0',0,0,'',1,0,'',NULL,0),(31,'宁夏','0',0,0,'',1,0,'',NULL,0),(32,'新疆','0',0,0,'',1,0,'',NULL,0),(33,'台湾省','0',0,0,'',1,0,'',NULL,0),(34,'香港','0',0,0,'',1,0,'',NULL,0),(35,'澳门','0',0,0,'',1,0,'',NULL,0),(36,'东城区','0',2,0,'',1,0,'',NULL,0),(37,'西城区','0',2,0,'',1,0,'',NULL,0),(38,'崇文区','0',2,0,'',1,0,'',NULL,0),(39,'宣武区','0',2,0,'',1,0,'',NULL,0),(40,'朝阳区','0',2,0,'',1,0,'',NULL,0),(41,'石景山区','0',2,0,'',1,0,'',NULL,0),(42,'海淀区','0',2,0,'',1,0,'',NULL,0),(43,'门头沟区','0',2,0,'',1,0,'',NULL,0),(44,'房山区','0',2,0,'',1,0,'',NULL,0),(45,'通州区','0',2,0,'',1,0,'',NULL,0),(46,'顺义区','0',2,0,'',1,0,'',NULL,0),(47,'昌平区','0',2,0,'',1,0,'',NULL,0),(48,'大兴区','0',2,0,'',1,0,'',NULL,0),(49,'怀柔区','0',2,0,'',1,0,'',NULL,0),(50,'平谷区','0',2,0,'',1,0,'',NULL,0),(51,'密云县','0',2,0,'',1,0,'',NULL,0),(52,'延庆县','0',2,0,'',1,0,'',NULL,0),(53,'黄浦区','0',3,0,'',1,0,'',NULL,0),(54,'卢湾区','0',3,0,'',1,0,'',NULL,0),(55,'徐汇区','0',3,0,'',1,0,'',NULL,0),(56,'长宁区','0',3,0,'',1,0,'',NULL,0),(57,'静安区','0',3,0,'',1,0,'',NULL,0),(58,'普陀区','0',3,0,'',1,0,'',NULL,0),(59,'闸北区','0',3,0,'',1,0,'',NULL,0),(60,'虹口区','0',3,0,'',1,0,'',NULL,0),(61,'杨浦区','0',3,0,'',1,0,'',NULL,0),(62,'闵行区','0',3,0,'',1,0,'',NULL,0),(63,'宝山区','0',3,0,'',1,0,'',NULL,0),(64,'嘉定区','0',3,0,'',1,0,'',NULL,0),(65,'浦东新区','0',3,0,'',1,0,'',NULL,0),(66,'金山区','0',3,0,'',1,0,'',NULL,0),(67,'松江区','0',3,0,'',1,0,'',NULL,0),(68,'青浦区','0',3,0,'',1,0,'',NULL,0),(69,'南汇区','0',3,0,'',1,0,'',NULL,0),(70,'奉贤区','0',3,0,'',1,0,'',NULL,0),(71,'崇明县','0',3,0,'',1,0,'',NULL,0),(72,'和平区','0',4,0,'',1,0,'',NULL,0),(73,'河东区','0',4,0,'',1,0,'',NULL,0),(74,'河西区','0',4,0,'',1,0,'',NULL,0),(75,'南开区','0',4,0,'',1,0,'',NULL,0),(76,'河北区','0',4,0,'',1,0,'',NULL,0),(77,'红桥区','0',4,0,'',1,0,'',NULL,0),(78,'塘沽区','0',4,0,'',1,0,'',NULL,0),(79,'汉沽区','0',4,0,'',1,0,'',NULL,0),(80,'大港区','0',4,0,'',1,0,'',NULL,0),(81,'东丽区','0',4,0,'',1,0,'',NULL,0),(82,'西青区','0',4,0,'',1,0,'',NULL,0),(83,'津南区','0',4,0,'',1,0,'',NULL,0),(84,'北辰区','0',4,0,'',1,0,'',NULL,0),(85,'武清区','0',4,0,'',1,0,'',NULL,0),(86,'宝坻区','0',4,0,'',1,0,'',NULL,0),(87,'宁河县','0',4,0,'',1,0,'',NULL,0),(88,'静海县','0',4,0,'',1,0,'',NULL,0),(89,'蓟县','0',4,0,'',1,0,'',NULL,0),(90,'万州区','0',5,0,'',1,0,'',NULL,0),(91,'涪陵区','0',5,0,'',1,0,'',NULL,0),(92,'渝中区','0',5,0,'',1,0,'',NULL,0),(93,'大渡口区','0',5,0,'',1,0,'',NULL,0),(94,'江北区','0',5,0,'',1,0,'',NULL,0),(95,'沙坪坝区','0',5,0,'',1,0,'',NULL,0),(96,'九龙坡区','0',5,0,'',1,0,'',NULL,0),(97,'南岸区','0',5,0,'',1,0,'',NULL,0),(98,'北碚区','0',5,0,'',1,0,'',NULL,0),(99,'万盛区','0',5,0,'',1,0,'',NULL,0),(100,'双桥区','0',5,0,'',1,0,'',NULL,0),(101,'渝北区','0',5,0,'',1,0,'',NULL,0),(102,'巴南区','0',5,0,'',1,0,'',NULL,0),(103,'黔江区','0',5,0,'',1,0,'',NULL,0),(104,'长寿区','0',5,0,'',1,0,'',NULL,0),(105,'綦江县','0',5,0,'',1,0,'',NULL,0),(106,'潼南县','0',5,0,'',1,0,'',NULL,0),(107,'铜梁县','0',5,0,'',1,0,'',NULL,0),(108,'大足县','0',5,0,'',1,0,'',NULL,0),(109,'荣昌县','0',5,0,'',1,0,'',NULL,0),(110,'璧山县','0',5,0,'',1,0,'',NULL,0),(111,'梁平县','0',5,0,'',1,0,'',NULL,0),(112,'城口县','0',5,0,'',1,0,'',NULL,0),(113,'丰都县','0',5,0,'',1,0,'',NULL,0),(114,'垫江县','0',5,0,'',1,0,'',NULL,0),(115,'武隆县','0',5,0,'',1,0,'',NULL,0),(116,'忠县','0',5,0,'',1,0,'',NULL,0),(117,'开县','0',5,0,'',1,0,'',NULL,0),(118,'云阳县','0',5,0,'',1,0,'',NULL,0),(119,'奉节县','0',5,0,'',1,0,'',NULL,0),(120,'巫山县','0',5,0,'',1,0,'',NULL,0),(121,'巫溪县','0',5,0,'',1,0,'',NULL,0),(122,'石柱县','0',5,0,'',1,0,'',NULL,0),(123,'秀山县','0',5,0,'',1,0,'',NULL,0),(124,'酉阳县','0',5,0,'',1,0,'',NULL,0),(125,'彭水县','0',5,0,'',1,0,'',NULL,0),(126,'江津区','0',5,0,'',1,0,'',NULL,0),(127,'合川区','0',5,0,'',1,0,'',NULL,0),(128,'永川区','0',5,0,'',1,0,'',NULL,0),(129,'南川区','0',5,0,'',1,0,'',NULL,0),(130,'石家庄市','0',6,0,'',1,0,'',NULL,0),(131,'唐山市','0',6,0,'',1,0,'',NULL,0),(132,'秦皇岛市','0',6,0,'',1,0,'',NULL,0),(133,'邯郸市','0',6,0,'',1,0,'',NULL,0),(134,'邢台市','0',6,0,'',1,0,'',NULL,0),(135,'保定市','0',6,0,'',1,0,'',NULL,0),(136,'张家口市','0',6,0,'',1,0,'',NULL,0),(137,'承德市','0',6,0,'',1,0,'',NULL,0),(138,'沧州市','0',6,0,'',1,0,'',NULL,0),(139,'廊坊市','0',6,0,'',1,0,'',NULL,0),(140,'衡水市','0',6,0,'',1,0,'',NULL,0),(141,'太原市','0',7,0,'',1,0,'',NULL,0),(142,'大同市','0',7,0,'',1,0,'',NULL,0),(143,'阳泉市','0',7,0,'',1,0,'',NULL,0),(144,'长治市','0',7,0,'',1,0,'',NULL,0),(145,'晋城市','0',7,0,'',1,0,'',NULL,0),(146,'朔州市','0',7,0,'',1,0,'',NULL,0),(147,'晋中市','0',7,0,'',1,0,'',NULL,0),(148,'运城市','0',7,0,'',1,0,'',NULL,0),(149,'忻州市','0',7,0,'',1,0,'',NULL,0),(150,'临汾市','0',7,0,'',1,0,'',NULL,0),(151,'吕梁市','0',7,0,'',1,0,'',NULL,0),(152,'呼和浩特市','0',8,0,'',1,0,'',NULL,0),(153,'包头市','0',8,0,'',1,0,'',NULL,0),(154,'乌海市','0',8,0,'',1,0,'',NULL,0),(155,'赤峰市','0',8,0,'',1,0,'',NULL,0),(156,'通辽市','0',8,0,'',1,0,'',NULL,0),(157,'鄂尔多斯市','0',8,0,'',1,0,'',NULL,0),(158,'呼伦贝尔市','0',8,0,'',1,0,'',NULL,0),(159,'巴彦淖尔市','0',8,0,'',1,0,'',NULL,0),(160,'乌兰察布市','0',8,0,'',1,0,'',NULL,0),(161,'兴安盟','0',8,0,'',1,0,'',NULL,0),(162,'锡林郭勒盟','0',8,0,'',1,0,'',NULL,0),(163,'阿拉善盟','0',8,0,'',1,0,'',NULL,0),(164,'沈阳市','0',9,0,'',1,0,'',NULL,0),(165,'大连市','0',9,0,'',1,0,'',NULL,0),(166,'鞍山市','0',9,0,'',1,0,'',NULL,0),(167,'抚顺市','0',9,0,'',1,0,'',NULL,0),(168,'本溪市','0',9,0,'',1,0,'',NULL,0),(169,'丹东市','0',9,0,'',1,0,'',NULL,0),(170,'锦州市','0',9,0,'',1,0,'',NULL,0),(171,'营口市','0',9,0,'',1,0,'',NULL,0),(172,'阜新市','0',9,0,'',1,0,'',NULL,0),(173,'辽阳市','0',9,0,'',1,0,'',NULL,0),(174,'盘锦市','0',9,0,'',1,0,'',NULL,0),(175,'铁岭市','0',9,0,'',1,0,'',NULL,0),(176,'朝阳市','0',9,0,'',1,0,'',NULL,0),(177,'葫芦岛市','0',9,0,'',1,0,'',NULL,0),(178,'长春市','0',10,0,'',1,0,'',NULL,0),(179,'吉林市','0',10,0,'',1,0,'',NULL,0),(180,'四平市','0',10,0,'',1,0,'',NULL,0),(181,'辽源市','0',10,0,'',1,0,'',NULL,0),(182,'通化市','0',10,0,'',1,0,'',NULL,0),(183,'白山市','0',10,0,'',1,0,'',NULL,0),(184,'松原市','0',10,0,'',1,0,'',NULL,0),(185,'白城市','0',10,0,'',1,0,'',NULL,0),(186,'延边','0',10,0,'',1,0,'',NULL,0),(187,'哈尔滨市','0',11,0,'',1,0,'',NULL,0),(188,'齐齐哈尔市','0',11,0,'',1,0,'',NULL,0),(189,'鸡西市','0',11,0,'',1,0,'',NULL,0),(190,'鹤岗市','0',11,0,'',1,0,'',NULL,0),(191,'双鸭山市','0',11,0,'',1,0,'',NULL,0),(192,'大庆市','0',11,0,'',1,0,'',NULL,0),(193,'伊春市','0',11,0,'',1,0,'',NULL,0),(194,'佳木斯市','0',11,0,'',1,0,'',NULL,0),(195,'七台河市','0',11,0,'',1,0,'',NULL,0),(196,'牡丹江市','0',11,0,'',1,0,'',NULL,0),(197,'黑河市','0',11,0,'',1,0,'',NULL,0),(198,'绥化市','0',11,0,'',1,0,'',NULL,0),(199,'大兴安岭地区','0',11,0,'',1,0,'',NULL,0),(200,'南京市','0',12,0,'',1,0,'',NULL,0),(201,'无锡市','0',12,0,'',1,0,'',NULL,0),(202,'徐州市','0',12,0,'',1,0,'',NULL,0),(203,'常州市','0',12,0,'',1,0,'',NULL,0),(204,'苏州市','0',12,0,'',1,0,'',NULL,0),(205,'南通市','0',12,0,'',1,0,'',NULL,0),(206,'连云港市','0',12,0,'',1,0,'',NULL,0),(207,'淮安市','0',12,0,'',1,0,'',NULL,0),(208,'盐城市','0',12,0,'',1,0,'',NULL,0),(209,'扬州市','0',12,0,'',1,0,'',NULL,0),(210,'镇江市','0',12,0,'',1,0,'',NULL,0),(211,'泰州市','0',12,0,'',1,0,'',NULL,0),(212,'宿迁市','0',12,0,'',1,0,'',NULL,0),(213,'杭州市','0',13,0,'',1,0,'',NULL,0),(214,'宁波市','0',13,0,'',1,0,'',NULL,0),(215,'温州市','0',13,0,'',1,0,'',NULL,0),(216,'嘉兴市','0',13,0,'',1,0,'',NULL,0),(217,'湖州市','0',13,0,'',1,0,'',NULL,0),(218,'绍兴市','0',13,0,'',1,0,'',NULL,0),(219,'金华市','0',13,0,'',1,0,'',NULL,0),(220,'衢州市','0',13,0,'',1,0,'',NULL,0),(221,'舟山市','0',13,0,'',1,0,'',NULL,0),(222,'台州市','0',13,0,'',1,0,'',NULL,0),(223,'丽水市','0',13,0,'',1,0,'',NULL,0),(224,'合肥市','0',14,0,'',1,0,'',NULL,0),(225,'芜湖市','0',14,0,'',1,0,'',NULL,0),(226,'蚌埠市','0',14,0,'',1,0,'',NULL,0),(227,'淮南市','0',14,0,'',1,0,'',NULL,0),(228,'马鞍山市','0',14,0,'',1,0,'',NULL,0),(229,'淮北市','0',14,0,'',1,0,'',NULL,0),(230,'铜陵市','0',14,0,'',1,0,'',NULL,0),(231,'安庆市','0',14,0,'',1,0,'',NULL,0),(232,'黄山市','0',14,0,'',1,0,'',NULL,0),(233,'滁州市','0',14,0,'',1,0,'',NULL,0),(234,'阜阳市','0',14,0,'',1,0,'',NULL,0),(235,'宿州市','0',14,0,'',1,0,'',NULL,0),(236,'巢湖市','0',14,0,'',1,0,'',NULL,0),(237,'六安市','0',14,0,'',1,0,'',NULL,0),(238,'亳州市','0',14,0,'',1,0,'',NULL,0),(239,'池州市','0',14,0,'',1,0,'',NULL,0),(240,'宣城市','0',14,0,'',1,0,'',NULL,0),(241,'福州市','0',15,0,'',1,0,'',NULL,0),(242,'厦门市','0',15,0,'',1,0,'',NULL,0),(243,'莆田市','0',15,0,'',1,0,'',NULL,0),(244,'三明市','0',15,0,'',1,0,'',NULL,0),(245,'泉州市','0',15,0,'',1,0,'',NULL,0),(246,'漳州市','0',15,0,'',1,0,'',NULL,0),(247,'南平市','0',15,0,'',1,0,'',NULL,0),(248,'龙岩市','0',15,0,'',1,0,'',NULL,0),(249,'宁德市','0',15,0,'',1,0,'',NULL,0),(250,'南昌市','0',16,0,'',1,0,'',NULL,0),(251,'景德镇市','0',16,0,'',1,0,'',NULL,0),(252,'萍乡市','0',16,0,'',1,0,'',NULL,0),(253,'九江市','0',16,0,'',1,0,'',NULL,0),(254,'新余市','0',16,0,'',1,0,'',NULL,0),(255,'鹰潭市','0',16,0,'',1,0,'',NULL,0),(256,'赣州市','0',16,0,'',1,0,'',NULL,0),(257,'吉安市','0',16,0,'',1,0,'',NULL,0),(258,'宜春市','0',16,0,'',1,0,'',NULL,0),(259,'抚州市','0',16,0,'',1,0,'',NULL,0),(260,'上饶市','0',16,0,'',1,0,'',NULL,0),(261,'济南市','0',17,0,'',1,0,'',NULL,0),(262,'青岛市','0',17,0,'',1,0,'',NULL,0),(263,'淄博市','0',17,0,'',1,0,'',NULL,0),(264,'枣庄市','0',17,0,'',1,0,'',NULL,0),(265,'东营市','0',17,0,'',1,0,'',NULL,0),(266,'烟台市','0',17,0,'',1,0,'',NULL,0),(267,'潍坊市','0',17,0,'',1,0,'',NULL,0),(268,'济宁市','0',17,0,'',1,0,'',NULL,0),(269,'泰安市','0',17,0,'',1,0,'',NULL,0),(270,'威海市','0',17,0,'',1,0,'',NULL,0),(271,'日照市','0',17,0,'',1,0,'',NULL,0),(272,'莱芜市','0',17,0,'',1,0,'',NULL,0),(273,'临沂市','0',17,0,'',1,0,'',NULL,0),(274,'德州市','0',17,0,'',1,0,'',NULL,0),(275,'聊城市','0',17,0,'',1,0,'',NULL,0),(276,'滨州市','0',17,0,'',1,0,'',NULL,0),(277,'荷泽市','0',17,0,'',1,0,'',NULL,0),(278,'郑州市','0',18,0,'',1,0,'',NULL,0),(279,'开封市','0',18,0,'',1,0,'',NULL,0),(280,'洛阳市','0',18,0,'',1,0,'',NULL,0),(281,'平顶山市','0',18,0,'',1,0,'',NULL,0),(282,'安阳市','0',18,0,'',1,0,'',NULL,0),(283,'鹤壁市','0',18,0,'',1,0,'',NULL,0),(284,'新乡市','0',18,0,'',1,0,'',NULL,0),(285,'焦作市','0',18,0,'',1,0,'',NULL,0),(286,'濮阳市','0',18,0,'',1,0,'',NULL,0),(287,'许昌市','0',18,0,'',1,0,'',NULL,0),(288,'漯河市','0',18,0,'',1,0,'',NULL,0),(289,'三门峡市','0',18,0,'',1,0,'',NULL,0),(290,'南阳市','0',18,0,'',1,0,'',NULL,0),(291,'商丘市','0',18,0,'',1,0,'',NULL,0),(292,'信阳市','0',18,0,'',1,0,'',NULL,0),(293,'周口市','0',18,0,'',1,0,'',NULL,0),(294,'驻马店市','0',18,0,'',1,0,'',NULL,0),(295,'武汉市','0',19,0,'',1,0,'',NULL,0),(296,'黄石市','0',19,0,'',1,0,'',NULL,0),(297,'十堰市','0',19,0,'',1,0,'',NULL,0),(298,'宜昌市','0',19,0,'',1,0,'',NULL,0),(299,'襄樊市','0',19,0,'',1,0,'',NULL,0),(300,'鄂州市','0',19,0,'',1,0,'',NULL,0),(301,'荆门市','0',19,0,'',1,0,'',NULL,0),(302,'孝感市','0',19,0,'',1,0,'',NULL,0),(303,'荆州市','0',19,0,'',1,0,'',NULL,0),(304,'黄冈市','0',19,0,'',1,0,'',NULL,0),(305,'咸宁市','0',19,0,'',1,0,'',NULL,0),(306,'随州市','0',19,0,'',1,0,'',NULL,0),(307,'恩施土家族苗族自治州','0',19,0,'',1,0,'',NULL,0),(308,'仙桃市','0',19,0,'',1,0,'',NULL,0),(309,'潜江市','0',19,0,'',1,0,'',NULL,0),(310,'天门市','0',19,0,'',1,0,'',NULL,0),(311,'神农架林区','0',19,0,'',1,0,'',NULL,0),(312,'长沙市','0',20,0,'',1,0,'',NULL,0),(313,'株洲市','0',20,0,'',1,0,'',NULL,0),(314,'湘潭市','0',20,0,'',1,0,'',NULL,0),(315,'衡阳市','0',20,0,'',1,0,'',NULL,0),(316,'邵阳市','0',20,0,'',1,0,'',NULL,0),(317,'岳阳市','0',20,0,'',1,0,'',NULL,0),(318,'常德市','0',20,0,'',1,0,'',NULL,0),(319,'张家界市','0',20,0,'',1,0,'',NULL,0),(320,'益阳市','0',20,0,'',1,0,'',NULL,0),(321,'郴州市','0',20,0,'',1,0,'',NULL,0),(322,'永州市','0',20,0,'',1,0,'',NULL,0),(323,'怀化市','0',20,0,'',1,0,'',NULL,0),(324,'娄底市','0',20,0,'',1,0,'',NULL,0),(325,'湘西土家族苗族自治州','0',20,0,'',1,0,'',NULL,0),(326,'广州市','0',21,0,'',1,0,'',NULL,0),(327,'韶关市','0',21,0,'',1,0,'',NULL,0),(328,'深圳市','0',21,0,'',1,0,'',NULL,0),(329,'珠海市','0',21,0,'',1,0,'',NULL,0),(330,'汕头市','0',21,0,'',1,0,'',NULL,0),(331,'佛山市','0',21,0,'',1,0,'',NULL,0),(332,'江门市','0',21,0,'',1,0,'',NULL,0),(333,'湛江市','0',21,0,'',1,0,'',NULL,0),(334,'茂名市','0',21,0,'',1,0,'',NULL,0),(335,'肇庆市','0',21,0,'',1,0,'',NULL,0),(336,'惠州市','0',21,0,'',1,0,'',NULL,0),(337,'梅州市','0',21,0,'',1,0,'',NULL,0),(338,'汕尾市','0',21,0,'',1,0,'',NULL,0),(339,'河源市','0',21,0,'',1,0,'',NULL,0),(340,'阳江市','0',21,0,'',1,0,'',NULL,0),(341,'清远市','0',21,0,'',1,0,'',NULL,0),(342,'东莞市','0',21,0,'',1,0,'',NULL,0),(343,'中山市','0',21,0,'',1,0,'',NULL,0),(344,'潮州市','0',21,0,'',1,0,'',NULL,0),(345,'揭阳市','0',21,0,'',1,0,'',NULL,0),(346,'云浮市','0',21,0,'',1,0,'',NULL,0),(347,'南宁市','0',22,0,'',1,0,'',NULL,0),(348,'柳州市','0',22,0,'',1,0,'',NULL,0),(349,'桂林市','0',22,0,'',1,0,'',NULL,0),(350,'梧州市','0',22,0,'',1,0,'',NULL,0),(351,'北海市','0',22,0,'',1,0,'',NULL,0),(352,'防城港市','0',22,0,'',1,0,'',NULL,0),(353,'钦州市','0',22,0,'',1,0,'',NULL,0),(354,'贵港市','0',22,0,'',1,0,'',NULL,0),(355,'玉林市','0',22,0,'',1,0,'',NULL,0),(356,'百色市','0',22,0,'',1,0,'',NULL,0),(357,'贺州市','0',22,0,'',1,0,'',NULL,0),(358,'河池市','0',22,0,'',1,0,'',NULL,0),(359,'来宾市','0',22,0,'',1,0,'',NULL,0),(360,'崇左市','0',22,0,'',1,0,'',NULL,0),(361,'海口市','0',23,0,'',1,0,'',NULL,0),(362,'三亚市','0',23,0,'',1,0,'',NULL,0),(363,'五指山市','0',23,0,'',1,0,'',NULL,0),(364,'琼海市','0',23,0,'',1,0,'',NULL,0),(365,'儋州市','0',23,0,'',1,0,'',NULL,0),(366,'文昌市','0',23,0,'',1,0,'',NULL,0),(367,'万宁市','0',23,0,'',1,0,'',NULL,0),(368,'东方市','0',23,0,'',1,0,'',NULL,0),(369,'定安县','0',23,0,'',1,0,'',NULL,0),(370,'屯昌县','0',23,0,'',1,0,'',NULL,0),(371,'澄迈县','0',23,0,'',1,0,'',NULL,0),(372,'临高县','0',23,0,'',1,0,'',NULL,0),(373,'白沙黎族自治县','0',23,0,'',1,0,'',NULL,0),(374,'昌江黎族自治县','0',23,0,'',1,0,'',NULL,0),(375,'乐东黎族自治县','0',23,0,'',1,0,'',NULL,0),(376,'陵水黎族自治县','0',23,0,'',1,0,'',NULL,0),(377,'保亭黎族苗族自治县','0',23,0,'',1,0,'',NULL,0),(378,'琼中黎族苗族自治县','0',23,0,'',1,0,'',NULL,0),(379,'西沙群岛','0',23,0,'',1,0,'',NULL,0),(380,'南沙群岛','0',23,0,'',1,0,'',NULL,0),(381,'中沙群岛的岛礁及其海域','0',23,0,'',1,0,'',NULL,0),(382,'成都市','0',24,0,'',1,0,'',NULL,0),(383,'自贡市','0',24,0,'',1,0,'',NULL,0),(384,'攀枝花市','0',24,0,'',1,0,'',NULL,0),(385,'泸州市','0',24,0,'',1,0,'',NULL,0),(386,'德阳市','0',24,0,'',1,0,'',NULL,0),(387,'绵阳市','0',24,0,'',1,0,'',NULL,0),(388,'广元市','0',24,0,'',1,0,'',NULL,0),(389,'遂宁市','0',24,0,'',1,0,'',NULL,0),(390,'内江市','0',24,0,'',1,0,'',NULL,0),(391,'乐山市','0',24,0,'',1,0,'',NULL,0),(392,'南充市','0',24,0,'',1,0,'',NULL,0),(393,'眉山市','0',24,0,'',1,0,'',NULL,0),(394,'宜宾市','0',24,0,'',1,0,'',NULL,0),(395,'广安市','0',24,0,'',1,0,'',NULL,0),(396,'达州市','0',24,0,'',1,0,'',NULL,0),(397,'雅安市','0',24,0,'',1,0,'',NULL,0),(398,'巴中市','0',24,0,'',1,0,'',NULL,0),(399,'资阳市','0',24,0,'',1,0,'',NULL,0),(400,'阿坝州','0',24,0,'',1,0,'',NULL,0),(401,'甘孜州','0',24,0,'',1,0,'',NULL,0),(402,'凉山州','0',24,0,'',1,0,'',NULL,0),(403,'贵阳市','0',25,0,'',1,0,'',NULL,0),(404,'六盘水市','0',25,0,'',1,0,'',NULL,0),(405,'遵义市','0',25,0,'',1,0,'',NULL,0),(406,'安顺市','0',25,0,'',1,0,'',NULL,0),(407,'铜仁地区','0',25,0,'',1,0,'',NULL,0),(408,'黔西南州','0',25,0,'',1,0,'',NULL,0),(409,'毕节地区','0',25,0,'',1,0,'',NULL,0),(410,'黔东南州','0',25,0,'',1,0,'',NULL,0),(411,'黔南州','0',25,0,'',1,0,'',NULL,0),(412,'昆明市','0',26,0,'',1,0,'',NULL,0),(413,'曲靖市','0',26,0,'',1,0,'',NULL,0),(414,'玉溪市','0',26,0,'',1,0,'',NULL,0),(415,'保山市','0',26,0,'',1,0,'',NULL,0),(416,'昭通市','0',26,0,'',1,0,'',NULL,0),(417,'丽江市','0',26,0,'',1,0,'',NULL,0),(418,'思茅市','0',26,0,'',1,0,'',NULL,0),(419,'临沧市','0',26,0,'',1,0,'',NULL,0),(420,'楚雄州','0',26,0,'',1,0,'',NULL,0),(421,'红河州','0',26,0,'',1,0,'',NULL,0),(422,'文山州','0',26,0,'',1,0,'',NULL,0),(423,'西双版纳','0',26,0,'',1,0,'',NULL,0),(424,'大理','0',26,0,'',1,0,'',NULL,0),(425,'德宏','0',26,0,'',1,0,'',NULL,0),(426,'怒江','0',26,0,'',1,0,'',NULL,0),(427,'迪庆','0',26,0,'',1,0,'',NULL,0),(428,'拉萨市','0',27,0,'',1,0,'',NULL,0),(429,'昌都','0',27,0,'',1,0,'',NULL,0),(430,'山南','0',27,0,'',1,0,'',NULL,0),(431,'日喀则','0',27,0,'',1,0,'',NULL,0),(432,'那曲','0',27,0,'',1,0,'',NULL,0),(433,'阿里','0',27,0,'',1,0,'',NULL,0),(434,'林芝','0',27,0,'',1,0,'',NULL,0),(435,'西安市','0',28,0,'',1,0,'',NULL,0),(436,'铜川市','0',28,0,'',1,0,'',NULL,0),(437,'宝鸡市','0',28,0,'',1,0,'',NULL,0),(438,'咸阳市','0',28,0,'',1,0,'',NULL,0),(439,'渭南市','0',28,0,'',1,0,'',NULL,0),(440,'延安市','0',28,0,'',1,0,'',NULL,0),(441,'汉中市','0',28,0,'',1,0,'',NULL,0),(442,'榆林市','0',28,0,'',1,0,'',NULL,0),(443,'安康市','0',28,0,'',1,0,'',NULL,0),(444,'商洛市','0',28,0,'',1,0,'',NULL,0),(445,'兰州市','0',29,0,'',1,0,'',NULL,0),(446,'嘉峪关市','0',29,0,'',1,0,'',NULL,0),(447,'金昌市','0',29,0,'',1,0,'',NULL,0),(448,'白银市','0',29,0,'',1,0,'',NULL,0),(449,'天水市','0',29,0,'',1,0,'',NULL,0),(450,'武威市','0',29,0,'',1,0,'',NULL,0),(451,'张掖市','0',29,0,'',1,0,'',NULL,0),(452,'平凉市','0',29,0,'',1,0,'',NULL,0),(453,'酒泉市','0',29,0,'',1,0,'',NULL,0),(454,'庆阳市','0',29,0,'',1,0,'',NULL,0),(455,'定西市','0',29,0,'',1,0,'',NULL,0),(456,'陇南市','0',29,0,'',1,0,'',NULL,0),(457,'临夏州','0',29,0,'',1,0,'',NULL,0),(458,'甘州','0',29,0,'',1,0,'',NULL,0),(459,'西宁市','0',30,0,'',1,0,'',NULL,0),(460,'海东地区','0',30,0,'',1,0,'',NULL,0),(461,'海州','0',30,0,'',1,0,'',NULL,0),(462,'黄南州','0',30,0,'',1,0,'',NULL,0),(463,'海南州','0',30,0,'',1,0,'',NULL,0),(464,'果洛州','0',30,0,'',1,0,'',NULL,0),(465,'玉树州','0',30,0,'',1,0,'',NULL,0),(466,'海西州','0',30,0,'',1,0,'',NULL,0),(467,'银川市','0',31,0,'',1,0,'',NULL,0),(468,'石嘴山市','0',31,0,'',1,0,'',NULL,0),(469,'吴忠市','0',31,0,'',1,0,'',NULL,0),(470,'固原市','0',31,0,'',1,0,'',NULL,0),(471,'中卫市','0',31,0,'',1,0,'',NULL,0),(472,'乌鲁木齐市','0',32,0,'',1,0,'',NULL,0),(473,'克拉玛依市','0',32,0,'',1,0,'',NULL,0),(474,'吐鲁番地区','0',32,0,'',1,0,'',NULL,0),(475,'哈密地区','0',32,0,'',1,0,'',NULL,0),(476,'昌吉州','0',32,0,'',1,0,'',NULL,0),(477,'博尔州','0',32,0,'',1,0,'',NULL,0),(478,'巴音郭楞州','0',32,0,'',1,0,'',NULL,0),(479,'阿克苏地区','0',32,0,'',1,0,'',NULL,0),(480,'克孜勒苏柯尔克孜自治州','0',32,0,'',1,0,'',NULL,0),(481,'喀什地区','0',32,0,'',1,0,'',NULL,0),(482,'和田地区','0',32,0,'',1,0,'',NULL,0),(483,'伊犁州','0',32,0,'',1,0,'',NULL,0),(484,'塔城地区','0',32,0,'',1,0,'',NULL,0),(485,'阿勒泰地区','0',32,0,'',1,0,'',NULL,0),(486,'石河子市','0',32,0,'',1,0,'',NULL,0),(487,'阿拉尔市','0',32,0,'',1,0,'',NULL,0),(488,'图木舒克市','0',32,0,'',1,0,'',NULL,0),(489,'五家渠市','0',32,0,'',1,0,'',NULL,0),(490,'台北市','0',33,0,'',1,0,'',NULL,0),(491,'高雄市','0',33,0,'',1,0,'',NULL,0),(492,'基隆市','0',33,0,'',1,0,'',NULL,0),(493,'新竹市','0',33,0,'',1,0,'',NULL,0),(494,'台中市','0',33,0,'',1,0,'',NULL,0),(495,'嘉义市','0',33,0,'',1,0,'',NULL,0),(496,'台南市','0',33,0,'',1,0,'',NULL,0),(497,'台北县','0',33,0,'',1,0,'',NULL,0),(498,'桃园县','0',33,0,'',1,0,'',NULL,0),(499,'新竹县','0',33,0,'',1,0,'',NULL,0),(500,'苗栗县','0',33,0,'',1,0,'',NULL,0),(501,'台中县','0',33,0,'',1,0,'',NULL,0),(502,'彰化县','0',33,0,'',1,0,'',NULL,0),(503,'南投县','0',33,0,'',1,0,'',NULL,0),(504,'云林县','0',33,0,'',1,0,'',NULL,0),(505,'嘉义县','0',33,0,'',1,0,'',NULL,0),(506,'台南县','0',33,0,'',1,0,'',NULL,0),(507,'高雄县','0',33,0,'',1,0,'',NULL,0),(508,'屏东县','0',33,0,'',1,0,'',NULL,0),(509,'宜兰县','0',33,0,'',1,0,'',NULL,0),(510,'花莲县','0',33,0,'',1,0,'',NULL,0),(511,'台东县','0',33,0,'',1,0,'',NULL,0),(512,'澎湖县','0',33,0,'',1,0,'',NULL,0),(513,'金门县','0',33,0,'',1,0,'',NULL,0),(514,'连江县','0',33,0,'',1,0,'',NULL,0),(515,'中西区','0',34,0,'',1,0,'',NULL,0),(516,'东区','0',34,0,'',1,0,'',NULL,0),(517,'南区','0',34,0,'',1,0,'',NULL,0),(518,'湾仔区','0',34,0,'',1,0,'',NULL,0),(519,'九龙城区','0',34,0,'',1,0,'',NULL,0),(520,'观塘区','0',34,0,'',1,0,'',NULL,0),(521,'深水埗区','0',34,0,'',1,0,'',NULL,0),(522,'黄大仙区','0',34,0,'',1,0,'',NULL,0),(523,'油尖旺区','0',34,0,'',1,0,'',NULL,0),(524,'离岛区','0',34,0,'',1,0,'',NULL,0),(525,'葵青区','0',34,0,'',1,0,'',NULL,0),(526,'北区','0',34,0,'',1,0,'',NULL,0),(527,'西贡区','0',34,0,'',1,0,'',NULL,0),(528,'沙田区','0',34,0,'',1,0,'',NULL,0),(529,'大埔区','0',34,0,'',1,0,'',NULL,0),(530,'荃湾区','0',34,0,'',1,0,'',NULL,0),(531,'屯门区','0',34,0,'',1,0,'',NULL,0),(532,'元朗区','0',34,0,'',1,0,'',NULL,0),(533,'花地玛堂区','0',35,0,'',1,0,'',NULL,0),(534,'市圣安多尼堂区','0',35,0,'',1,0,'',NULL,0),(535,'大堂区','0',35,0,'',1,0,'',NULL,0),(536,'望德堂区','0',35,0,'',1,0,'',NULL,0),(537,'风顺堂区','0',35,0,'',1,0,'',NULL,0),(538,'嘉模堂区','0',35,0,'',1,0,'',NULL,0),(539,'圣方济各堂区','0',35,0,'',1,0,'',NULL,0),(540,'长安区','0',130,0,'',1,0,'',NULL,0),(541,'桥东区','0',130,0,'',1,0,'',NULL,0),(542,'桥西区','0',130,0,'',1,0,'',NULL,0),(543,'新华区','0',130,0,'',1,0,'',NULL,0),(544,'井陉矿区','0',130,0,'',1,0,'',NULL,0),(545,'裕华区','0',130,0,'',1,0,'',NULL,0),(546,'井陉县','0',130,0,'',1,0,'',NULL,0),(547,'正定县','0',130,0,'',1,0,'',NULL,0),(548,'栾城县','0',130,0,'',1,0,'',NULL,0),(549,'行唐县','0',130,0,'',1,0,'',NULL,0),(550,'灵寿县','0',130,0,'',1,0,'',NULL,0),(551,'高邑县','0',130,0,'',1,0,'',NULL,0),(552,'深泽县','0',130,0,'',1,0,'',NULL,0),(553,'赞皇县','0',130,0,'',1,0,'',NULL,0),(554,'无极县','0',130,0,'',1,0,'',NULL,0),(555,'平山县','0',130,0,'',1,0,'',NULL,0),(556,'元氏县','0',130,0,'',1,0,'',NULL,0),(557,'赵县','0',130,0,'',1,0,'',NULL,0),(558,'辛集市','0',130,0,'',1,0,'',NULL,0),(559,'藁城市','0',130,0,'',1,0,'',NULL,0),(560,'晋州市','0',130,0,'',1,0,'',NULL,0),(561,'新乐市','0',130,0,'',1,0,'',NULL,0),(562,'鹿泉市','0',130,0,'',1,0,'',NULL,0),(563,'路南区','0',131,0,'',1,0,'',NULL,0),(564,'路北区','0',131,0,'',1,0,'',NULL,0),(565,'古冶区','0',131,0,'',1,0,'',NULL,0),(566,'开平区','0',131,0,'',1,0,'',NULL,0),(567,'丰南区','0',131,0,'',1,0,'',NULL,0),(568,'丰润区','0',131,0,'',1,0,'',NULL,0),(569,'滦县','0',131,0,'',1,0,'',NULL,0),(570,'滦南县','0',131,0,'',1,0,'',NULL,0),(571,'乐亭县','0',131,0,'',1,0,'',NULL,0),(572,'迁西县','0',131,0,'',1,0,'',NULL,0),(573,'玉田县','0',131,0,'',1,0,'',NULL,0),(574,'唐海县','0',131,0,'',1,0,'',NULL,0),(575,'遵化市','0',131,0,'',1,0,'',NULL,0),(576,'迁安市','0',131,0,'',1,0,'',NULL,0),(577,'海港区','0',132,0,'',1,0,'',NULL,0),(578,'山海关区','0',132,0,'',1,0,'',NULL,0),(579,'北戴河区','0',132,0,'',1,0,'',NULL,0),(580,'青龙县','0',132,0,'',1,0,'',NULL,0),(581,'昌黎县','0',132,0,'',1,0,'',NULL,0),(582,'抚宁县','0',132,0,'',1,0,'',NULL,0),(583,'卢龙县','0',132,0,'',1,0,'',NULL,0),(584,'邯山区','0',133,0,'',1,0,'',NULL,0),(585,'丛台区','0',133,0,'',1,0,'',NULL,0),(586,'复兴区','0',133,0,'',1,0,'',NULL,0),(587,'峰峰矿区','0',133,0,'',1,0,'',NULL,0),(588,'邯郸县','0',133,0,'',1,0,'',NULL,0),(589,'临漳县','0',133,0,'',1,0,'',NULL,0),(590,'成安县','0',133,0,'',1,0,'',NULL,0),(591,'大名县','0',133,0,'',1,0,'',NULL,0),(592,'涉县','0',133,0,'',1,0,'',NULL,0),(593,'磁县','0',133,0,'',1,0,'',NULL,0),(594,'肥乡县','0',133,0,'',1,0,'',NULL,0),(595,'永年县','0',133,0,'',1,0,'',NULL,0),(596,'邱县','0',133,0,'',1,0,'',NULL,0),(597,'鸡泽县','0',133,0,'',1,0,'',NULL,0),(598,'广平县','0',133,0,'',1,0,'',NULL,0),(599,'馆陶县','0',133,0,'',1,0,'',NULL,0),(600,'魏县','0',133,0,'',1,0,'',NULL,0),(601,'曲周县','0',133,0,'',1,0,'',NULL,0),(602,'武安市','0',133,0,'',1,0,'',NULL,0),(603,'桥东区','0',134,0,'',1,0,'',NULL,0),(604,'桥西区','0',134,0,'',1,0,'',NULL,0),(605,'邢台县','0',134,0,'',1,0,'',NULL,0),(606,'临城县','0',134,0,'',1,0,'',NULL,0),(607,'内丘县','0',134,0,'',1,0,'',NULL,0),(608,'柏乡县','0',134,0,'',1,0,'',NULL,0),(609,'隆尧县','0',134,0,'',1,0,'',NULL,0),(610,'任县','0',134,0,'',1,0,'',NULL,0),(611,'南和县','0',134,0,'',1,0,'',NULL,0),(612,'宁晋县','0',134,0,'',1,0,'',NULL,0),(613,'巨鹿县','0',134,0,'',1,0,'',NULL,0),(614,'新河县','0',134,0,'',1,0,'',NULL,0),(615,'广宗县','0',134,0,'',1,0,'',NULL,0),(616,'平乡县','0',134,0,'',1,0,'',NULL,0),(617,'威县','0',134,0,'',1,0,'',NULL,0),(618,'清河县','0',134,0,'',1,0,'',NULL,0),(619,'临西县','0',134,0,'',1,0,'',NULL,0),(620,'南宫市','0',134,0,'',1,0,'',NULL,0),(621,'沙河市','0',134,0,'',1,0,'',NULL,0),(622,'新市区','0',135,0,'',1,0,'',NULL,0),(623,'北市区','0',135,0,'',1,0,'',NULL,0),(624,'南市区','0',135,0,'',1,0,'',NULL,0),(625,'满城县','0',135,0,'',1,0,'',NULL,0),(626,'清苑县','0',135,0,'',1,0,'',NULL,0),(627,'涞水县','0',135,0,'',1,0,'',NULL,0),(628,'阜平县','0',135,0,'',1,0,'',NULL,0),(629,'徐水县','0',135,0,'',1,0,'',NULL,0),(630,'定兴县','0',135,0,'',1,0,'',NULL,0),(631,'唐县','0',135,0,'',1,0,'',NULL,0),(632,'高阳县','0',135,0,'',1,0,'',NULL,0),(633,'容城县','0',135,0,'',1,0,'',NULL,0),(634,'涞源县','0',135,0,'',1,0,'',NULL,0),(635,'望都县','0',135,0,'',1,0,'',NULL,0),(636,'安新县','0',135,0,'',1,0,'',NULL,0),(637,'易县','0',135,0,'',1,0,'',NULL,0),(638,'曲阳县','0',135,0,'',1,0,'',NULL,0),(639,'蠡县','0',135,0,'',1,0,'',NULL,0),(640,'顺平县','0',135,0,'',1,0,'',NULL,0),(641,'博野县','0',135,0,'',1,0,'',NULL,0),(642,'雄县','0',135,0,'',1,0,'',NULL,0),(643,'涿州市','0',135,0,'',1,0,'',NULL,0),(644,'定州市','0',135,0,'',1,0,'',NULL,0),(645,'安国市','0',135,0,'',1,0,'',NULL,0),(646,'高碑店市','0',135,0,'',1,0,'',NULL,0),(647,'桥东区','0',136,0,'',1,0,'',NULL,0),(648,'桥西区','0',136,0,'',1,0,'',NULL,0),(649,'宣化区','0',136,0,'',1,0,'',NULL,0),(650,'下花园区','0',136,0,'',1,0,'',NULL,0),(651,'宣化县','0',136,0,'',1,0,'',NULL,0),(652,'张北县','0',136,0,'',1,0,'',NULL,0),(653,'康保县','0',136,0,'',1,0,'',NULL,0),(654,'沽源县','0',136,0,'',1,0,'',NULL,0),(655,'尚义县','0',136,0,'',1,0,'',NULL,0),(656,'蔚县','0',136,0,'',1,0,'',NULL,0),(657,'阳原县','0',136,0,'',1,0,'',NULL,0),(658,'怀安县','0',136,0,'',1,0,'',NULL,0),(659,'万全县','0',136,0,'',1,0,'',NULL,0),(660,'怀来县','0',136,0,'',1,0,'',NULL,0),(661,'涿鹿县','0',136,0,'',1,0,'',NULL,0),(662,'赤城县','0',136,0,'',1,0,'',NULL,0),(663,'崇礼县','0',136,0,'',1,0,'',NULL,0),(664,'双桥区','0',137,0,'',1,0,'',NULL,0),(665,'双滦区','0',137,0,'',1,0,'',NULL,0),(666,'鹰手营子矿区','0',137,0,'',1,0,'',NULL,0),(667,'承德县','0',137,0,'',1,0,'',NULL,0),(668,'兴隆县','0',137,0,'',1,0,'',NULL,0),(669,'平泉县','0',137,0,'',1,0,'',NULL,0),(670,'滦平县','0',137,0,'',1,0,'',NULL,0),(671,'隆化县','0',137,0,'',1,0,'',NULL,0),(672,'丰宁县','0',137,0,'',1,0,'',NULL,0),(673,'宽城县','0',137,0,'',1,0,'',NULL,0),(674,'围场县','0',137,0,'',1,0,'',NULL,0),(675,'新华区','0',138,0,'',1,0,'',NULL,0),(676,'运河区','0',138,0,'',1,0,'',NULL,0),(677,'沧县','0',138,0,'',1,0,'',NULL,0),(678,'青县','0',138,0,'',1,0,'',NULL,0),(679,'东光县','0',138,0,'',1,0,'',NULL,0),(680,'海兴县','0',138,0,'',1,0,'',NULL,0),(681,'盐山县','0',138,0,'',1,0,'',NULL,0),(682,'肃宁县','0',138,0,'',1,0,'',NULL,0),(683,'南皮县','0',138,0,'',1,0,'',NULL,0),(684,'吴桥县','0',138,0,'',1,0,'',NULL,0),(685,'献县','0',138,0,'',1,0,'',NULL,0),(686,'孟村县','0',138,0,'',1,0,'',NULL,0),(687,'泊头市','0',138,0,'',1,0,'',NULL,0),(688,'任丘市','0',138,0,'',1,0,'',NULL,0),(689,'黄骅市','0',138,0,'',1,0,'',NULL,0),(690,'河间市','0',138,0,'',1,0,'',NULL,0),(691,'安次区','0',139,0,'',1,0,'',NULL,0),(692,'广阳区','0',139,0,'',1,0,'',NULL,0),(693,'固安县','0',139,0,'',1,0,'',NULL,0),(694,'永清县','0',139,0,'',1,0,'',NULL,0),(695,'香河县','0',139,0,'',1,0,'',NULL,0),(696,'大城县','0',139,0,'',1,0,'',NULL,0),(697,'文安县','0',139,0,'',1,0,'',NULL,0),(698,'大厂县','0',139,0,'',1,0,'',NULL,0),(699,'霸州市','0',139,0,'',1,0,'',NULL,0),(700,'三河市','0',139,0,'',1,0,'',NULL,0),(701,'桃城区','0',140,0,'',1,0,'',NULL,0),(702,'枣强县','0',140,0,'',1,0,'',NULL,0),(703,'武邑县','0',140,0,'',1,0,'',NULL,0),(704,'武强县','0',140,0,'',1,0,'',NULL,0),(705,'饶阳县','0',140,0,'',1,0,'',NULL,0),(706,'安平县','0',140,0,'',1,0,'',NULL,0),(707,'故城县','0',140,0,'',1,0,'',NULL,0),(708,'景县','0',140,0,'',1,0,'',NULL,0),(709,'阜城县','0',140,0,'',1,0,'',NULL,0),(710,'冀州市','0',140,0,'',1,0,'',NULL,0),(711,'深州市','0',140,0,'',1,0,'',NULL,0),(712,'小店区','0',141,0,'',1,0,'',NULL,0),(713,'迎泽区','0',141,0,'',1,0,'',NULL,0),(714,'杏花岭区','0',141,0,'',1,0,'',NULL,0),(715,'尖草坪区','0',141,0,'',1,0,'',NULL,0),(716,'万柏林区','0',141,0,'',1,0,'',NULL,0),(717,'晋源区','0',141,0,'',1,0,'',NULL,0),(718,'清徐县','0',141,0,'',1,0,'',NULL,0),(719,'阳曲县','0',141,0,'',1,0,'',NULL,0),(720,'娄烦县','0',141,0,'',1,0,'',NULL,0),(721,'古交市','0',141,0,'',1,0,'',NULL,0),(722,'城区','0',142,0,'',1,0,'',NULL,0),(723,'矿区','0',142,0,'',1,0,'',NULL,0),(724,'南郊区','0',142,0,'',1,0,'',NULL,0),(725,'新荣区','0',142,0,'',1,0,'',NULL,0),(726,'阳高县','0',142,0,'',1,0,'',NULL,0),(727,'天镇县','0',142,0,'',1,0,'',NULL,0),(728,'广灵县','0',142,0,'',1,0,'',NULL,0),(729,'灵丘县','0',142,0,'',1,0,'',NULL,0),(730,'浑源县','0',142,0,'',1,0,'',NULL,0),(731,'左云县','0',142,0,'',1,0,'',NULL,0),(732,'大同县','0',142,0,'',1,0,'',NULL,0),(733,'城区','0',143,0,'',1,0,'',NULL,0),(734,'矿区','0',143,0,'',1,0,'',NULL,0),(735,'郊区','0',143,0,'',1,0,'',NULL,0),(736,'平定县','0',143,0,'',1,0,'',NULL,0),(737,'盂县','0',143,0,'',1,0,'',NULL,0),(738,'城区','0',144,0,'',1,0,'',NULL,0),(739,'郊区','0',144,0,'',1,0,'',NULL,0),(740,'长治县','0',144,0,'',1,0,'',NULL,0),(741,'襄垣县','0',144,0,'',1,0,'',NULL,0),(742,'屯留县','0',144,0,'',1,0,'',NULL,0),(743,'平顺县','0',144,0,'',1,0,'',NULL,0),(744,'黎城县','0',144,0,'',1,0,'',NULL,0),(745,'壶关县','0',144,0,'',1,0,'',NULL,0),(746,'长子县','0',144,0,'',1,0,'',NULL,0),(747,'武乡县','0',144,0,'',1,0,'',NULL,0),(748,'沁县','0',144,0,'',1,0,'',NULL,0),(749,'沁源县','0',144,0,'',1,0,'',NULL,0),(750,'潞城市','0',144,0,'',1,0,'',NULL,0),(751,'城区','0',145,0,'',1,0,'',NULL,0),(752,'沁水县','0',145,0,'',1,0,'',NULL,0),(753,'阳城县','0',145,0,'',1,0,'',NULL,0),(754,'陵川县','0',145,0,'',1,0,'',NULL,0),(755,'泽州县','0',145,0,'',1,0,'',NULL,0),(756,'高平市','0',145,0,'',1,0,'',NULL,0),(757,'朔城区','0',146,0,'',1,0,'',NULL,0),(758,'平鲁区','0',146,0,'',1,0,'',NULL,0),(759,'山阴县','0',146,0,'',1,0,'',NULL,0),(760,'应县','0',146,0,'',1,0,'',NULL,0),(761,'右玉县','0',146,0,'',1,0,'',NULL,0),(762,'怀仁县','0',146,0,'',1,0,'',NULL,0),(763,'榆次区','0',147,0,'',1,0,'',NULL,0),(764,'榆社县','0',147,0,'',1,0,'',NULL,0),(765,'左权县','0',147,0,'',1,0,'',NULL,0),(766,'和顺县','0',147,0,'',1,0,'',NULL,0),(767,'昔阳县','0',147,0,'',1,0,'',NULL,0),(768,'寿阳县','0',147,0,'',1,0,'',NULL,0),(769,'太谷县','0',147,0,'',1,0,'',NULL,0),(770,'祁县','0',147,0,'',1,0,'',NULL,0),(771,'平遥县','0',147,0,'',1,0,'',NULL,0),(772,'灵石县','0',147,0,'',1,0,'',NULL,0),(773,'介休市','0',147,0,'',1,0,'',NULL,0),(774,'盐湖区','0',148,0,'',1,0,'',NULL,0),(775,'临猗县','0',148,0,'',1,0,'',NULL,0),(776,'万荣县','0',148,0,'',1,0,'',NULL,0),(777,'闻喜县','0',148,0,'',1,0,'',NULL,0),(778,'稷山县','0',148,0,'',1,0,'',NULL,0),(779,'新绛县','0',148,0,'',1,0,'',NULL,0),(780,'绛县','0',148,0,'',1,0,'',NULL,0),(781,'垣曲县','0',148,0,'',1,0,'',NULL,0),(782,'夏县','0',148,0,'',1,0,'',NULL,0),(783,'平陆县','0',148,0,'',1,0,'',NULL,0),(784,'芮城县','0',148,0,'',1,0,'',NULL,0),(785,'永济市','0',148,0,'',1,0,'',NULL,0),(786,'河津市','0',148,0,'',1,0,'',NULL,0),(787,'忻府区','0',149,0,'',1,0,'',NULL,0),(788,'定襄县','0',149,0,'',1,0,'',NULL,0),(789,'五台县','0',149,0,'',1,0,'',NULL,0),(790,'代县','0',149,0,'',1,0,'',NULL,0),(791,'繁峙县','0',149,0,'',1,0,'',NULL,0),(792,'宁武县','0',149,0,'',1,0,'',NULL,0),(793,'静乐县','0',149,0,'',1,0,'',NULL,0),(794,'神池县','0',149,0,'',1,0,'',NULL,0),(795,'五寨县','0',149,0,'',1,0,'',NULL,0),(796,'岢岚县','0',149,0,'',1,0,'',NULL,0),(797,'河曲县','0',149,0,'',1,0,'',NULL,0),(798,'保德县','0',149,0,'',1,0,'',NULL,0),(799,'偏关县','0',149,0,'',1,0,'',NULL,0),(800,'原平市','0',149,0,'',1,0,'',NULL,0),(801,'尧都区','0',150,0,'',1,0,'',NULL,0),(802,'曲沃县','0',150,0,'',1,0,'',NULL,0),(803,'翼城县','0',150,0,'',1,0,'',NULL,0),(804,'襄汾县','0',150,0,'',1,0,'',NULL,0),(805,'洪洞县','0',150,0,'',1,0,'',NULL,0),(806,'古县','0',150,0,'',1,0,'',NULL,0),(807,'安泽县','0',150,0,'',1,0,'',NULL,0),(808,'浮山县','0',150,0,'',1,0,'',NULL,0),(809,'吉县','0',150,0,'',1,0,'',NULL,0),(810,'乡宁县','0',150,0,'',1,0,'',NULL,0),(811,'大宁县','0',150,0,'',1,0,'',NULL,0),(812,'隰县','0',150,0,'',1,0,'',NULL,0),(813,'永和县','0',150,0,'',1,0,'',NULL,0),(814,'蒲县','0',150,0,'',1,0,'',NULL,0),(815,'汾西县','0',150,0,'',1,0,'',NULL,0),(816,'侯马市','0',150,0,'',1,0,'',NULL,0),(817,'霍州市','0',150,0,'',1,0,'',NULL,0),(818,'离石区','0',151,0,'',1,0,'',NULL,0),(819,'文水县','0',151,0,'',1,0,'',NULL,0),(820,'交城县','0',151,0,'',1,0,'',NULL,0),(821,'兴县','0',151,0,'',1,0,'',NULL,0),(822,'临县','0',151,0,'',1,0,'',NULL,0),(823,'柳林县','0',151,0,'',1,0,'',NULL,0),(824,'石楼县','0',151,0,'',1,0,'',NULL,0),(825,'岚县','0',151,0,'',1,0,'',NULL,0),(826,'方山县','0',151,0,'',1,0,'',NULL,0),(827,'中阳县','0',151,0,'',1,0,'',NULL,0),(828,'交口县','0',151,0,'',1,0,'',NULL,0),(829,'孝义市','0',151,0,'',1,0,'',NULL,0),(830,'汾阳市','0',151,0,'',1,0,'',NULL,0),(831,'新城区','0',152,0,'',1,0,'',NULL,0),(832,'回民区','0',152,0,'',1,0,'',NULL,0),(833,'玉泉区','0',152,0,'',1,0,'',NULL,0),(834,'赛罕区','0',152,0,'',1,0,'',NULL,0),(835,'土默特左旗','0',152,0,'',1,0,'',NULL,0),(836,'托克托县','0',152,0,'',1,0,'',NULL,0),(837,'和林格尔县','0',152,0,'',1,0,'',NULL,0),(838,'清水河县','0',152,0,'',1,0,'',NULL,0),(839,'武川县','0',152,0,'',1,0,'',NULL,0),(840,'东河区','0',153,0,'',1,0,'',NULL,0),(841,'昆都仑区','0',153,0,'',1,0,'',NULL,0),(842,'青山区','0',153,0,'',1,0,'',NULL,0),(843,'石拐区','0',153,0,'',1,0,'',NULL,0),(844,'白云矿区','0',153,0,'',1,0,'',NULL,0),(845,'九原区','0',153,0,'',1,0,'',NULL,0),(846,'土默特右旗','0',153,0,'',1,0,'',NULL,0),(847,'固阳县','0',153,0,'',1,0,'',NULL,0),(848,'达尔罕茂明安联合旗','0',153,0,'',1,0,'',NULL,0),(849,'海勃湾区','0',154,0,'',1,0,'',NULL,0),(850,'海南区','0',154,0,'',1,0,'',NULL,0),(851,'乌达区','0',154,0,'',1,0,'',NULL,0),(852,'红山区','0',155,0,'',1,0,'',NULL,0),(853,'元宝山区','0',155,0,'',1,0,'',NULL,0),(854,'松山区','0',155,0,'',1,0,'',NULL,0),(855,'阿鲁科尔沁旗','0',155,0,'',1,0,'',NULL,0),(856,'巴林左旗','0',155,0,'',1,0,'',NULL,0),(857,'巴林右旗','0',155,0,'',1,0,'',NULL,0),(858,'林西县','0',155,0,'',1,0,'',NULL,0),(859,'克什克腾旗','0',155,0,'',1,0,'',NULL,0),(860,'翁牛特旗','0',155,0,'',1,0,'',NULL,0),(861,'喀喇沁旗','0',155,0,'',1,0,'',NULL,0),(862,'宁城县','0',155,0,'',1,0,'',NULL,0),(863,'敖汉旗','0',155,0,'',1,0,'',NULL,0),(864,'科尔沁区','0',156,0,'',1,0,'',NULL,0),(865,'科尔沁左翼中旗','0',156,0,'',1,0,'',NULL,0),(866,'科尔沁左翼后旗','0',156,0,'',1,0,'',NULL,0),(867,'开鲁县','0',156,0,'',1,0,'',NULL,0),(868,'库伦旗','0',156,0,'',1,0,'',NULL,0),(869,'奈曼旗','0',156,0,'',1,0,'',NULL,0),(870,'扎鲁特旗','0',156,0,'',1,0,'',NULL,0),(871,'霍林郭勒市','0',156,0,'',1,0,'',NULL,0),(872,'东胜区','0',157,0,'',1,0,'',NULL,0),(873,'达拉特旗','0',157,0,'',1,0,'',NULL,0),(874,'准格尔旗','0',157,0,'',1,0,'',NULL,0),(875,'鄂托克前旗','0',157,0,'',1,0,'',NULL,0),(876,'鄂托克旗','0',157,0,'',1,0,'',NULL,0),(877,'杭锦旗','0',157,0,'',1,0,'',NULL,0),(878,'乌审旗','0',157,0,'',1,0,'',NULL,0),(879,'伊金霍洛旗','0',157,0,'',1,0,'',NULL,0),(880,'海拉尔区','0',158,0,'',1,0,'',NULL,0),(881,'阿荣旗','0',158,0,'',1,0,'',NULL,0),(882,'莫力达瓦达斡尔族自治旗','0',158,0,'',1,0,'',NULL,0),(883,'鄂伦春自治旗','0',158,0,'',1,0,'',NULL,0),(884,'鄂温克族自治旗','0',158,0,'',1,0,'',NULL,0),(885,'陈巴尔虎旗','0',158,0,'',1,0,'',NULL,0),(886,'新巴尔虎左旗','0',158,0,'',1,0,'',NULL,0),(887,'新巴尔虎右旗','0',158,0,'',1,0,'',NULL,0),(888,'满洲里市','0',158,0,'',1,0,'',NULL,0),(889,'牙克石市','0',158,0,'',1,0,'',NULL,0),(890,'扎兰屯市','0',158,0,'',1,0,'',NULL,0),(891,'额尔古纳市','0',158,0,'',1,0,'',NULL,0),(892,'根河市','0',158,0,'',1,0,'',NULL,0),(893,'临河区','0',159,0,'',1,0,'',NULL,0),(894,'五原县','0',159,0,'',1,0,'',NULL,0),(895,'磴口县','0',159,0,'',1,0,'',NULL,0),(896,'乌拉特前旗','0',159,0,'',1,0,'',NULL,0),(897,'乌拉特中旗','0',159,0,'',1,0,'',NULL,0),(898,'乌拉特后旗','0',159,0,'',1,0,'',NULL,0),(899,'杭锦后旗','0',159,0,'',1,0,'',NULL,0),(900,'集宁区','0',160,0,'',1,0,'',NULL,0),(901,'卓资县','0',160,0,'',1,0,'',NULL,0),(902,'化德县','0',160,0,'',1,0,'',NULL,0),(903,'商都县','0',160,0,'',1,0,'',NULL,0),(904,'兴和县','0',160,0,'',1,0,'',NULL,0),(905,'凉城县','0',160,0,'',1,0,'',NULL,0),(906,'察哈尔右翼前旗','0',160,0,'',1,0,'',NULL,0),(907,'察哈尔右翼中旗','0',160,0,'',1,0,'',NULL,0),(908,'察哈尔右翼后旗','0',160,0,'',1,0,'',NULL,0),(909,'四子王旗','0',160,0,'',1,0,'',NULL,0),(910,'丰镇市','0',160,0,'',1,0,'',NULL,0),(911,'乌兰浩特市','0',161,0,'',1,0,'',NULL,0),(912,'阿尔山市','0',161,0,'',1,0,'',NULL,0),(913,'科尔沁右翼前旗','0',161,0,'',1,0,'',NULL,0),(914,'科尔沁右翼中旗','0',161,0,'',1,0,'',NULL,0),(915,'扎赉特旗','0',161,0,'',1,0,'',NULL,0),(916,'突泉县','0',161,0,'',1,0,'',NULL,0),(917,'二连浩特市','0',162,0,'',1,0,'',NULL,0),(918,'锡林浩特市','0',162,0,'',1,0,'',NULL,0),(919,'阿巴嘎旗','0',162,0,'',1,0,'',NULL,0),(920,'苏尼特左旗','0',162,0,'',1,0,'',NULL,0),(921,'苏尼特右旗','0',162,0,'',1,0,'',NULL,0),(922,'东乌珠穆沁旗','0',162,0,'',1,0,'',NULL,0),(923,'西乌珠穆沁旗','0',162,0,'',1,0,'',NULL,0),(924,'太仆寺旗','0',162,0,'',1,0,'',NULL,0),(925,'镶黄旗','0',162,0,'',1,0,'',NULL,0),(926,'正镶白旗','0',162,0,'',1,0,'',NULL,0),(927,'正蓝旗','0',162,0,'',1,0,'',NULL,0),(928,'多伦县','0',162,0,'',1,0,'',NULL,0),(929,'阿拉善左旗','0',163,0,'',1,0,'',NULL,0),(930,'阿拉善右旗','0',163,0,'',1,0,'',NULL,0),(931,'额济纳旗','0',163,0,'',1,0,'',NULL,0),(932,'和平区','0',164,0,'',1,0,'',NULL,0),(933,'沈河区','0',164,0,'',1,0,'',NULL,0),(934,'大东区','0',164,0,'',1,0,'',NULL,0),(935,'皇姑区','0',164,0,'',1,0,'',NULL,0),(936,'铁西区','0',164,0,'',1,0,'',NULL,0),(937,'苏家屯区','0',164,0,'',1,0,'',NULL,0),(938,'东陵区','0',164,0,'',1,0,'',NULL,0),(939,'新城子区','0',164,0,'',1,0,'',NULL,0),(940,'于洪区','0',164,0,'',1,0,'',NULL,0),(941,'辽中县','0',164,0,'',1,0,'',NULL,0),(942,'康平县','0',164,0,'',1,0,'',NULL,0),(943,'法库县','0',164,0,'',1,0,'',NULL,0),(944,'新民市','0',164,0,'',1,0,'',NULL,0),(945,'中山区','0',165,0,'',1,0,'',NULL,0),(946,'西岗区','0',165,0,'',1,0,'',NULL,0),(947,'沙河口区','0',165,0,'',1,0,'',NULL,0),(948,'甘井子区','0',165,0,'',1,0,'',NULL,0),(949,'旅顺口区','0',165,0,'',1,0,'',NULL,0),(950,'金州区','0',165,0,'',1,0,'',NULL,0),(951,'长海县','0',165,0,'',1,0,'',NULL,0),(952,'瓦房店市','0',165,0,'',1,0,'',NULL,0),(953,'普兰店市','0',165,0,'',1,0,'',NULL,0),(954,'庄河市','0',165,0,'',1,0,'',NULL,0),(955,'铁东区','0',166,0,'',1,0,'',NULL,0),(956,'铁西区','0',166,0,'',1,0,'',NULL,0),(957,'立山区','0',166,0,'',1,0,'',NULL,0),(958,'千山区','0',166,0,'',1,0,'',NULL,0),(959,'台安县','0',166,0,'',1,0,'',NULL,0),(960,'岫岩满族自治县','0',166,0,'',1,0,'',NULL,0),(961,'海城市','0',166,0,'',1,0,'',NULL,0),(962,'新抚区','0',167,0,'',1,0,'',NULL,0),(963,'东洲区','0',167,0,'',1,0,'',NULL,0),(964,'望花区','0',167,0,'',1,0,'',NULL,0),(965,'顺城区','0',167,0,'',1,0,'',NULL,0),(966,'抚顺县','0',167,0,'',1,0,'',NULL,0),(967,'新宾满族自治县','0',167,0,'',1,0,'',NULL,0),(968,'清原满族自治县','0',167,0,'',1,0,'',NULL,0),(969,'平山区','0',168,0,'',1,0,'',NULL,0),(970,'溪湖区','0',168,0,'',1,0,'',NULL,0),(971,'明山区','0',168,0,'',1,0,'',NULL,0),(972,'南芬区','0',168,0,'',1,0,'',NULL,0),(973,'本溪满族自治县','0',168,0,'',1,0,'',NULL,0),(974,'桓仁满族自治县','0',168,0,'',1,0,'',NULL,0),(975,'元宝区','0',169,0,'',1,0,'',NULL,0),(976,'振兴区','0',169,0,'',1,0,'',NULL,0),(977,'振安区','0',169,0,'',1,0,'',NULL,0),(978,'宽甸满族自治县','0',169,0,'',1,0,'',NULL,0),(979,'东港市','0',169,0,'',1,0,'',NULL,0),(980,'凤城市','0',169,0,'',1,0,'',NULL,0),(981,'古塔区','0',170,0,'',1,0,'',NULL,0),(982,'凌河区','0',170,0,'',1,0,'',NULL,0),(983,'太和区','0',170,0,'',1,0,'',NULL,0),(984,'黑山县','0',170,0,'',1,0,'',NULL,0),(985,'义县','0',170,0,'',1,0,'',NULL,0),(986,'凌海市','0',170,0,'',1,0,'',NULL,0),(987,'北镇市','0',170,0,'',1,0,'',NULL,0),(988,'站前区','0',171,0,'',1,0,'',NULL,0),(989,'西市区','0',171,0,'',1,0,'',NULL,0),(990,'鲅鱼圈区','0',171,0,'',1,0,'',NULL,0),(991,'老边区','0',171,0,'',1,0,'',NULL,0),(992,'盖州市','0',171,0,'',1,0,'',NULL,0),(993,'大石桥市','0',171,0,'',1,0,'',NULL,0),(994,'海州区','0',172,0,'',1,0,'',NULL,0),(995,'新邱区','0',172,0,'',1,0,'',NULL,0),(996,'太平区','0',172,0,'',1,0,'',NULL,0),(997,'清河门区','0',172,0,'',1,0,'',NULL,0),(998,'细河区','0',172,0,'',1,0,'',NULL,0),(999,'阜新蒙古族自治县','0',172,0,'',1,0,'',NULL,0),(1000,'彰武县','0',172,0,'',1,0,'',NULL,0),(1001,'白塔区','0',173,0,'',1,0,'',NULL,0),(1002,'文圣区','0',173,0,'',1,0,'',NULL,0),(1003,'宏伟区','0',173,0,'',1,0,'',NULL,0),(1004,'弓长岭区','0',173,0,'',1,0,'',NULL,0),(1005,'太子河区','0',173,0,'',1,0,'',NULL,0),(1006,'辽阳县','0',173,0,'',1,0,'',NULL,0),(1007,'灯塔市','0',173,0,'',1,0,'',NULL,0),(1008,'双台子区','0',174,0,'',1,0,'',NULL,0),(1009,'兴隆台区','0',174,0,'',1,0,'',NULL,0),(1010,'大洼县','0',174,0,'',1,0,'',NULL,0),(1011,'盘山县','0',174,0,'',1,0,'',NULL,0),(1012,'银州区','0',175,0,'',1,0,'',NULL,0),(1013,'清河区','0',175,0,'',1,0,'',NULL,0),(1014,'铁岭县','0',175,0,'',1,0,'',NULL,0),(1015,'西丰县','0',175,0,'',1,0,'',NULL,0),(1016,'昌图县','0',175,0,'',1,0,'',NULL,0),(1017,'调兵山市','0',175,0,'',1,0,'',NULL,0),(1018,'开原市','0',175,0,'',1,0,'',NULL,0),(1019,'双塔区','0',176,0,'',1,0,'',NULL,0),(1020,'龙城区','0',176,0,'',1,0,'',NULL,0),(1021,'朝阳县','0',176,0,'',1,0,'',NULL,0),(1022,'建平县','0',176,0,'',1,0,'',NULL,0),(1023,'喀喇沁左翼蒙古族自治县','0',176,0,'',1,0,'',NULL,0),(1024,'北票市','0',176,0,'',1,0,'',NULL,0),(1025,'凌源市','0',176,0,'',1,0,'',NULL,0),(1026,'连山区','0',177,0,'',1,0,'',NULL,0),(1027,'龙港区','0',177,0,'',1,0,'',NULL,0),(1028,'南票区','0',177,0,'',1,0,'',NULL,0),(1029,'绥中县','0',177,0,'',1,0,'',NULL,0),(1030,'建昌县','0',177,0,'',1,0,'',NULL,0),(1031,'兴城市','0',177,0,'',1,0,'',NULL,0),(1032,'南关区','0',178,0,'',1,0,'',NULL,0),(1033,'宽城区','0',178,0,'',1,0,'',NULL,0),(1034,'朝阳区','0',178,0,'',1,0,'',NULL,0),(1035,'二道区','0',178,0,'',1,0,'',NULL,0),(1036,'绿园区','0',178,0,'',1,0,'',NULL,0),(1037,'双阳区','0',178,0,'',1,0,'',NULL,0),(1038,'农安县','0',178,0,'',1,0,'',NULL,0),(1039,'九台市','0',178,0,'',1,0,'',NULL,0),(1040,'榆树市','0',178,0,'',1,0,'',NULL,0),(1041,'德惠市','0',178,0,'',1,0,'',NULL,0),(1042,'昌邑区','0',179,0,'',1,0,'',NULL,0),(1043,'龙潭区','0',179,0,'',1,0,'',NULL,0),(1044,'船营区','0',179,0,'',1,0,'',NULL,0),(1045,'丰满区','0',179,0,'',1,0,'',NULL,0),(1046,'永吉县','0',179,0,'',1,0,'',NULL,0),(1047,'蛟河市','0',179,0,'',1,0,'',NULL,0),(1048,'桦甸市','0',179,0,'',1,0,'',NULL,0),(1049,'舒兰市','0',179,0,'',1,0,'',NULL,0),(1050,'磐石市','0',179,0,'',1,0,'',NULL,0),(1051,'铁西区','0',180,0,'',1,0,'',NULL,0),(1052,'铁东区','0',180,0,'',1,0,'',NULL,0),(1053,'梨树县','0',180,0,'',1,0,'',NULL,0),(1054,'伊通满族自治县','0',180,0,'',1,0,'',NULL,0),(1055,'公主岭市','0',180,0,'',1,0,'',NULL,0),(1056,'双辽市','0',180,0,'',1,0,'',NULL,0),(1057,'龙山区','0',181,0,'',1,0,'',NULL,0),(1058,'西安区','0',181,0,'',1,0,'',NULL,0),(1059,'东丰县','0',181,0,'',1,0,'',NULL,0),(1060,'东辽县','0',181,0,'',1,0,'',NULL,0),(1061,'东昌区','0',182,0,'',1,0,'',NULL,0),(1062,'二道江区','0',182,0,'',1,0,'',NULL,0),(1063,'通化县','0',182,0,'',1,0,'',NULL,0),(1064,'辉南县','0',182,0,'',1,0,'',NULL,0),(1065,'柳河县','0',182,0,'',1,0,'',NULL,0),(1066,'梅河口市','0',182,0,'',1,0,'',NULL,0),(1067,'集安市','0',182,0,'',1,0,'',NULL,0),(1068,'八道江区','0',183,0,'',1,0,'',NULL,0),(1069,'抚松县','0',183,0,'',1,0,'',NULL,0),(1070,'靖宇县','0',183,0,'',1,0,'',NULL,0),(1071,'长白朝鲜族自治县','0',183,0,'',1,0,'',NULL,0),(1072,'江源县','0',183,0,'',1,0,'',NULL,0),(1073,'临江市','0',183,0,'',1,0,'',NULL,0),(1074,'宁江区','0',184,0,'',1,0,'',NULL,0),(1075,'前郭尔罗斯蒙古族自治县','0',184,0,'',1,0,'',NULL,0),(1076,'长岭县','0',184,0,'',1,0,'',NULL,0),(1077,'乾安县','0',184,0,'',1,0,'',NULL,0),(1078,'扶余县','0',184,0,'',1,0,'',NULL,0),(1079,'洮北区','0',185,0,'',1,0,'',NULL,0),(1080,'镇赉县','0',185,0,'',1,0,'',NULL,0),(1081,'通榆县','0',185,0,'',1,0,'',NULL,0),(1082,'洮南市','0',185,0,'',1,0,'',NULL,0),(1083,'大安市','0',185,0,'',1,0,'',NULL,0),(1084,'延吉市','0',186,0,'',1,0,'',NULL,0),(1085,'图们市','0',186,0,'',1,0,'',NULL,0),(1086,'敦化市','0',186,0,'',1,0,'',NULL,0),(1087,'珲春市','0',186,0,'',1,0,'',NULL,0),(1088,'龙井市','0',186,0,'',1,0,'',NULL,0),(1089,'和龙市','0',186,0,'',1,0,'',NULL,0),(1090,'汪清县','0',186,0,'',1,0,'',NULL,0),(1091,'安图县','0',186,0,'',1,0,'',NULL,0),(1092,'道里区','0',187,0,'',1,0,'',NULL,0),(1093,'南岗区','0',187,0,'',1,0,'',NULL,0),(1094,'道外区','0',187,0,'',1,0,'',NULL,0),(1095,'香坊区','0',187,0,'',1,0,'',NULL,0),(1096,'动力区','0',187,0,'',1,0,'',NULL,0),(1097,'平房区','0',187,0,'',1,0,'',NULL,0),(1098,'松北区','0',187,0,'',1,0,'',NULL,0),(1099,'呼兰区','0',187,0,'',1,0,'',NULL,0),(1100,'依兰县','0',187,0,'',1,0,'',NULL,0),(1101,'方正县','0',187,0,'',1,0,'',NULL,0),(1102,'宾县','0',187,0,'',1,0,'',NULL,0),(1103,'巴彦县','0',187,0,'',1,0,'',NULL,0),(1104,'木兰县','0',187,0,'',1,0,'',NULL,0),(1105,'通河县','0',187,0,'',1,0,'',NULL,0),(1106,'延寿县','0',187,0,'',1,0,'',NULL,0),(1107,'阿城市','0',187,0,'',1,0,'',NULL,0),(1108,'双城市','0',187,0,'',1,0,'',NULL,0),(1109,'尚志市','0',187,0,'',1,0,'',NULL,0),(1110,'五常市','0',187,0,'',1,0,'',NULL,0),(1111,'龙沙区','0',188,0,'',1,0,'',NULL,0),(1112,'建华区','0',188,0,'',1,0,'',NULL,0),(1113,'铁锋区','0',188,0,'',1,0,'',NULL,0),(1114,'昂昂溪区','0',188,0,'',1,0,'',NULL,0),(1115,'富拉尔基区','0',188,0,'',1,0,'',NULL,0),(1116,'碾子山区','0',188,0,'',1,0,'',NULL,0),(1117,'梅里斯达斡尔族区','0',188,0,'',1,0,'',NULL,0),(1118,'龙江县','0',188,0,'',1,0,'',NULL,0),(1119,'依安县','0',188,0,'',1,0,'',NULL,0),(1120,'泰来县','0',188,0,'',1,0,'',NULL,0),(1121,'甘南县','0',188,0,'',1,0,'',NULL,0),(1122,'富裕县','0',188,0,'',1,0,'',NULL,0),(1123,'克山县','0',188,0,'',1,0,'',NULL,0),(1124,'克东县','0',188,0,'',1,0,'',NULL,0),(1125,'拜泉县','0',188,0,'',1,0,'',NULL,0),(1126,'讷河市','0',188,0,'',1,0,'',NULL,0),(1127,'鸡冠区','0',189,0,'',1,0,'',NULL,0),(1128,'恒山区','0',189,0,'',1,0,'',NULL,0),(1129,'滴道区','0',189,0,'',1,0,'',NULL,0),(1130,'梨树区','0',189,0,'',1,0,'',NULL,0),(1131,'城子河区','0',189,0,'',1,0,'',NULL,0),(1132,'麻山区','0',189,0,'',1,0,'',NULL,0),(1133,'鸡东县','0',189,0,'',1,0,'',NULL,0),(1134,'虎林市','0',189,0,'',1,0,'',NULL,0),(1135,'密山市','0',189,0,'',1,0,'',NULL,0),(1136,'向阳区','0',190,0,'',1,0,'',NULL,0),(1137,'工农区','0',190,0,'',1,0,'',NULL,0),(1138,'南山区','0',190,0,'',1,0,'',NULL,0),(1139,'兴安区','0',190,0,'',1,0,'',NULL,0),(1140,'东山区','0',190,0,'',1,0,'',NULL,0),(1141,'兴山区','0',190,0,'',1,0,'',NULL,0),(1142,'萝北县','0',190,0,'',1,0,'',NULL,0),(1143,'绥滨县','0',190,0,'',1,0,'',NULL,0),(1144,'尖山区','0',191,0,'',1,0,'',NULL,0),(1145,'岭东区','0',191,0,'',1,0,'',NULL,0),(1146,'四方台区','0',191,0,'',1,0,'',NULL,0),(1147,'宝山区','0',191,0,'',1,0,'',NULL,0),(1148,'集贤县','0',191,0,'',1,0,'',NULL,0),(1149,'友谊县','0',191,0,'',1,0,'',NULL,0),(1150,'宝清县','0',191,0,'',1,0,'',NULL,0),(1151,'饶河县','0',191,0,'',1,0,'',NULL,0),(1152,'萨尔图区','0',192,0,'',1,0,'',NULL,0),(1153,'龙凤区','0',192,0,'',1,0,'',NULL,0),(1154,'让胡路区','0',192,0,'',1,0,'',NULL,0),(1155,'红岗区','0',192,0,'',1,0,'',NULL,0),(1156,'大同区','0',192,0,'',1,0,'',NULL,0),(1157,'肇州县','0',192,0,'',1,0,'',NULL,0),(1158,'肇源县','0',192,0,'',1,0,'',NULL,0),(1159,'林甸县','0',192,0,'',1,0,'',NULL,0),(1160,'杜尔伯特蒙古族自治县','0',192,0,'',1,0,'',NULL,0),(1161,'伊春区','0',193,0,'',1,0,'',NULL,0),(1162,'南岔区','0',193,0,'',1,0,'',NULL,0),(1163,'友好区','0',193,0,'',1,0,'',NULL,0),(1164,'西林区','0',193,0,'',1,0,'',NULL,0),(1165,'翠峦区','0',193,0,'',1,0,'',NULL,0),(1166,'新青区','0',193,0,'',1,0,'',NULL,0),(1167,'美溪区','0',193,0,'',1,0,'',NULL,0),(1168,'金山屯区','0',193,0,'',1,0,'',NULL,0),(1169,'五营区','0',193,0,'',1,0,'',NULL,0),(1170,'乌马河区','0',193,0,'',1,0,'',NULL,0),(1171,'汤旺河区','0',193,0,'',1,0,'',NULL,0),(1172,'带岭区','0',193,0,'',1,0,'',NULL,0),(1173,'乌伊岭区','0',193,0,'',1,0,'',NULL,0),(1174,'红星区','0',193,0,'',1,0,'',NULL,0),(1175,'上甘岭区','0',193,0,'',1,0,'',NULL,0),(1176,'嘉荫县','0',193,0,'',1,0,'',NULL,0),(1177,'铁力市','0',193,0,'',1,0,'',NULL,0),(1178,'永红区','0',194,0,'',1,0,'',NULL,0),(1179,'向阳区','0',194,0,'',1,0,'',NULL,0),(1180,'前进区','0',194,0,'',1,0,'',NULL,0),(1181,'东风区','0',194,0,'',1,0,'',NULL,0),(1182,'郊区','0',194,0,'',1,0,'',NULL,0),(1183,'桦南县','0',194,0,'',1,0,'',NULL,0),(1184,'桦川县','0',194,0,'',1,0,'',NULL,0),(1185,'汤原县','0',194,0,'',1,0,'',NULL,0),(1186,'抚远县','0',194,0,'',1,0,'',NULL,0),(1187,'同江市','0',194,0,'',1,0,'',NULL,0),(1188,'富锦市','0',194,0,'',1,0,'',NULL,0),(1189,'新兴区','0',195,0,'',1,0,'',NULL,0),(1190,'桃山区','0',195,0,'',1,0,'',NULL,0),(1191,'茄子河区','0',195,0,'',1,0,'',NULL,0),(1192,'勃利县','0',195,0,'',1,0,'',NULL,0),(1193,'东安区','0',196,0,'',1,0,'',NULL,0),(1194,'阳明区','0',196,0,'',1,0,'',NULL,0),(1195,'爱民区','0',196,0,'',1,0,'',NULL,0),(1196,'西安区','0',196,0,'',1,0,'',NULL,0),(1197,'东宁县','0',196,0,'',1,0,'',NULL,0),(1198,'林口县','0',196,0,'',1,0,'',NULL,0),(1199,'绥芬河市','0',196,0,'',1,0,'',NULL,0),(1200,'海林市','0',196,0,'',1,0,'',NULL,0),(1201,'宁安市','0',196,0,'',1,0,'',NULL,0),(1202,'穆棱市','0',196,0,'',1,0,'',NULL,0),(1203,'爱辉区','0',197,0,'',1,0,'',NULL,0),(1204,'嫩江县','0',197,0,'',1,0,'',NULL,0),(1205,'逊克县','0',197,0,'',1,0,'',NULL,0),(1206,'孙吴县','0',197,0,'',1,0,'',NULL,0),(1207,'北安市','0',197,0,'',1,0,'',NULL,0),(1208,'五大连池市','0',197,0,'',1,0,'',NULL,0),(1209,'北林区','0',198,0,'',1,0,'',NULL,0),(1210,'望奎县','0',198,0,'',1,0,'',NULL,0),(1211,'兰西县','0',198,0,'',1,0,'',NULL,0),(1212,'青冈县','0',198,0,'',1,0,'',NULL,0),(1213,'庆安县','0',198,0,'',1,0,'',NULL,0),(1214,'明水县','0',198,0,'',1,0,'',NULL,0),(1215,'绥棱县','0',198,0,'',1,0,'',NULL,0),(1216,'安达市','0',198,0,'',1,0,'',NULL,0),(1217,'肇东市','0',198,0,'',1,0,'',NULL,0),(1218,'海伦市','0',198,0,'',1,0,'',NULL,0),(1219,'呼玛县','0',199,0,'',1,0,'',NULL,0),(1220,'塔河县','0',199,0,'',1,0,'',NULL,0),(1221,'漠河县','0',199,0,'',1,0,'',NULL,0),(1222,'玄武区','0',200,0,'',1,0,'',NULL,0),(1223,'白下区','0',200,0,'',1,0,'',NULL,0),(1224,'秦淮区','0',200,0,'',1,0,'',NULL,0),(1225,'建邺区','0',200,0,'',1,0,'',NULL,0),(1226,'鼓楼区','0',200,0,'',1,0,'',NULL,0),(1227,'下关区','0',200,0,'',1,0,'',NULL,0),(1228,'浦口区','0',200,0,'',1,0,'',NULL,0),(1229,'栖霞区','0',200,0,'',1,0,'',NULL,0),(1230,'雨花台区','0',200,0,'',1,0,'',NULL,0),(1231,'江宁区','0',200,0,'',1,0,'',NULL,0),(1232,'六合区','0',200,0,'',1,0,'',NULL,0),(1233,'溧水县','0',200,0,'',1,0,'',NULL,0),(1234,'高淳县','0',200,0,'',1,0,'',NULL,0),(1235,'崇安区','0',201,0,'',1,0,'',NULL,0),(1236,'南长区','0',201,0,'',1,0,'',NULL,0),(1237,'北塘区','0',201,0,'',1,0,'',NULL,0),(1238,'锡山区','0',201,0,'',1,0,'',NULL,0),(1239,'惠山区','0',201,0,'',1,0,'',NULL,0),(1240,'滨湖区','0',201,0,'',1,0,'',NULL,0),(1241,'江阴市','0',201,0,'',1,0,'',NULL,0),(1242,'宜兴市','0',201,0,'',1,0,'',NULL,0),(1243,'鼓楼区','0',202,0,'',1,0,'',NULL,0),(1244,'云龙区','0',202,0,'',1,0,'',NULL,0),(1245,'九里区','0',202,0,'',1,0,'',NULL,0),(1246,'贾汪区','0',202,0,'',1,0,'',NULL,0),(1247,'泉山区','0',202,0,'',1,0,'',NULL,0),(1248,'丰县','0',202,0,'',1,0,'',NULL,0),(1249,'沛县','0',202,0,'',1,0,'',NULL,0),(1250,'铜山县','0',202,0,'',1,0,'',NULL,0),(1251,'睢宁县','0',202,0,'',1,0,'',NULL,0),(1252,'新沂市','0',202,0,'',1,0,'',NULL,0),(1253,'邳州市','0',202,0,'',1,0,'',NULL,0),(1254,'天宁区','0',203,0,'',1,0,'',NULL,0),(1255,'钟楼区','0',203,0,'',1,0,'',NULL,0),(1256,'戚墅堰区','0',203,0,'',1,0,'',NULL,0),(1257,'新北区','0',203,0,'',1,0,'',NULL,0),(1258,'武进区','0',203,0,'',1,0,'',NULL,0),(1259,'溧阳市','0',203,0,'',1,0,'',NULL,0),(1260,'金坛市','0',203,0,'',1,0,'',NULL,0),(1261,'沧浪区','0',204,0,'',1,0,'',NULL,0),(1262,'平江区','0',204,0,'',1,0,'',NULL,0),(1263,'金阊区','0',204,0,'',1,0,'',NULL,0),(1264,'虎丘区','0',204,0,'',1,0,'',NULL,0),(1265,'吴中区','0',204,0,'',1,0,'',NULL,0),(1266,'相城区','0',204,0,'',1,0,'',NULL,0),(1267,'常熟市','0',204,0,'',1,0,'',NULL,0),(1268,'张家港市','0',204,0,'',1,0,'',NULL,0),(1269,'昆山市','0',204,0,'',1,0,'',NULL,0),(1270,'吴江市','0',204,0,'',1,0,'',NULL,0),(1271,'太仓市','0',204,0,'',1,0,'',NULL,0),(1272,'崇川区','0',205,0,'',1,0,'',NULL,0),(1273,'港闸区','0',205,0,'',1,0,'',NULL,0),(1274,'海安县','0',205,0,'',1,0,'',NULL,0),(1275,'如东县','0',205,0,'',1,0,'',NULL,0),(1276,'启东市','0',205,0,'',1,0,'',NULL,0),(1277,'如皋市','0',205,0,'',1,0,'',NULL,0),(1278,'通州市','0',205,0,'',1,0,'',NULL,0),(1279,'海门市','0',205,0,'',1,0,'',NULL,0),(1280,'连云区','0',206,0,'',1,0,'',NULL,0),(1281,'新浦区','0',206,0,'',1,0,'',NULL,0),(1282,'海州区','0',206,0,'',1,0,'',NULL,0),(1283,'赣榆县','0',206,0,'',1,0,'',NULL,0),(1284,'东海县','0',206,0,'',1,0,'',NULL,0),(1285,'灌云县','0',206,0,'',1,0,'',NULL,0),(1286,'灌南县','0',206,0,'',1,0,'',NULL,0),(1287,'清河区','0',207,0,'',1,0,'',NULL,0),(1288,'楚州区','0',207,0,'',1,0,'',NULL,0),(1289,'淮阴区','0',207,0,'',1,0,'',NULL,0),(1290,'清浦区','0',207,0,'',1,0,'',NULL,0),(1291,'涟水县','0',207,0,'',1,0,'',NULL,0),(1292,'洪泽县','0',207,0,'',1,0,'',NULL,0),(1293,'盱眙县','0',207,0,'',1,0,'',NULL,0),(1294,'金湖县','0',207,0,'',1,0,'',NULL,0),(1295,'亭湖区','0',208,0,'',1,0,'',NULL,0),(1296,'盐都区','0',208,0,'',1,0,'',NULL,0),(1297,'响水县','0',208,0,'',1,0,'',NULL,0),(1298,'滨海县','0',208,0,'',1,0,'',NULL,0),(1299,'阜宁县','0',208,0,'',1,0,'',NULL,0),(1300,'射阳县','0',208,0,'',1,0,'',NULL,0),(1301,'建湖县','0',208,0,'',1,0,'',NULL,0),(1302,'东台市','0',208,0,'',1,0,'',NULL,0),(1303,'大丰市','0',208,0,'',1,0,'',NULL,0),(1304,'广陵区','0',209,0,'',1,0,'',NULL,0),(1305,'邗江区','0',209,0,'',1,0,'',NULL,0),(1306,'维扬区','0',209,0,'',1,0,'',NULL,0),(1307,'宝应县','0',209,0,'',1,0,'',NULL,0),(1308,'仪征市','0',209,0,'',1,0,'',NULL,0),(1309,'高邮市','0',209,0,'',1,0,'',NULL,0),(1310,'江都市','0',209,0,'',1,0,'',NULL,0),(1311,'京口区','0',210,0,'',1,0,'',NULL,0),(1312,'润州区','0',210,0,'',1,0,'',NULL,0),(1313,'丹徒区','0',210,0,'',1,0,'',NULL,0),(1314,'丹阳市','0',210,0,'',1,0,'',NULL,0),(1315,'扬中市','0',210,0,'',1,0,'',NULL,0),(1316,'句容市','0',210,0,'',1,0,'',NULL,0),(1317,'海陵区','0',211,0,'',1,0,'',NULL,0),(1318,'高港区','0',211,0,'',1,0,'',NULL,0),(1319,'兴化市','0',211,0,'',1,0,'',NULL,0),(1320,'靖江市','0',211,0,'',1,0,'',NULL,0),(1321,'泰兴市','0',211,0,'',1,0,'',NULL,0),(1322,'姜堰市','0',211,0,'',1,0,'',NULL,0),(1323,'宿城区','0',212,0,'',1,0,'',NULL,0),(1324,'宿豫区','0',212,0,'',1,0,'',NULL,0),(1325,'沭阳县','0',212,0,'',1,0,'',NULL,0),(1326,'泗阳县','0',212,0,'',1,0,'',NULL,0),(1327,'泗洪县','0',212,0,'',1,0,'',NULL,0),(1328,'上城区','0',213,0,'',1,0,'',NULL,0),(1329,'下城区','0',213,0,'',1,0,'',NULL,0),(1330,'江干区','0',213,0,'',1,0,'',NULL,0),(1331,'拱墅区','0',213,0,'',1,0,'',NULL,0),(1332,'西湖区','0',213,0,'',1,0,'',NULL,0),(1333,'滨江区','0',213,0,'',1,0,'',NULL,0),(1334,'萧山区','0',213,0,'',1,0,'',NULL,0),(1335,'余杭区','0',213,0,'',1,0,'',NULL,0),(1336,'桐庐县','0',213,0,'',1,0,'',NULL,0),(1337,'淳安县','0',213,0,'',1,0,'',NULL,0),(1338,'建德市','0',213,0,'',1,0,'',NULL,0),(1339,'富阳市','0',213,0,'',1,0,'',NULL,0),(1340,'临安市','0',213,0,'',1,0,'',NULL,0),(1341,'海曙区','0',214,0,'',1,0,'',NULL,0),(1342,'江东区','0',214,0,'',1,0,'',NULL,0),(1343,'江北区','0',214,0,'',1,0,'',NULL,0),(1344,'北仑区','0',214,0,'',1,0,'',NULL,0),(1345,'镇海区','0',214,0,'',1,0,'',NULL,0),(1346,'鄞州区','0',214,0,'',1,0,'',NULL,0),(1347,'象山县','0',214,0,'',1,0,'',NULL,0),(1348,'宁海县','0',214,0,'',1,0,'',NULL,0),(1349,'余姚市','0',214,0,'',1,0,'',NULL,0),(1350,'慈溪市','0',214,0,'',1,0,'',NULL,0),(1351,'奉化市','0',214,0,'',1,0,'',NULL,0),(1352,'鹿城区','0',215,0,'',1,0,'',NULL,0),(1353,'龙湾区','0',215,0,'',1,0,'',NULL,0),(1354,'瓯海区','0',215,0,'',1,0,'',NULL,0),(1355,'洞头县','0',215,0,'',1,0,'',NULL,0),(1356,'永嘉县','0',215,0,'',1,0,'',NULL,0),(1357,'平阳县','0',215,0,'',1,0,'',NULL,0),(1358,'苍南县','0',215,0,'',1,0,'',NULL,0),(1359,'文成县','0',215,0,'',1,0,'',NULL,0),(1360,'泰顺县','0',215,0,'',1,0,'',NULL,0),(1361,'瑞安市','0',215,0,'',1,0,'',NULL,0),(1362,'乐清市','0',215,0,'',1,0,'',NULL,0),(1363,'秀城区','0',216,0,'',1,0,'',NULL,0),(1364,'秀洲区','0',216,0,'',1,0,'',NULL,0),(1365,'嘉善县','0',216,0,'',1,0,'',NULL,0),(1366,'海盐县','0',216,0,'',1,0,'',NULL,0),(1367,'海宁市','0',216,0,'',1,0,'',NULL,0),(1368,'平湖市','0',216,0,'',1,0,'',NULL,0),(1369,'桐乡市','0',216,0,'',1,0,'',NULL,0),(1370,'吴兴区','0',217,0,'',1,0,'',NULL,0),(1371,'南浔区','0',217,0,'',1,0,'',NULL,0),(1372,'德清县','0',217,0,'',1,0,'',NULL,0),(1373,'长兴县','0',217,0,'',1,0,'',NULL,0),(1374,'安吉县','0',217,0,'',1,0,'',NULL,0),(1375,'越城区','0',218,0,'',1,0,'',NULL,0),(1376,'绍兴县','0',218,0,'',1,0,'',NULL,0),(1377,'新昌县','0',218,0,'',1,0,'',NULL,0),(1378,'诸暨市','0',218,0,'',1,0,'',NULL,0),(1379,'上虞市','0',218,0,'',1,0,'',NULL,0),(1380,'嵊州市','0',218,0,'',1,0,'',NULL,0),(1381,'婺城区','0',219,0,'',1,0,'',NULL,0),(1382,'金东区','0',219,0,'',1,0,'',NULL,0),(1383,'武义县','0',219,0,'',1,0,'',NULL,0),(1384,'浦江县','0',219,0,'',1,0,'',NULL,0),(1385,'磐安县','0',219,0,'',1,0,'',NULL,0),(1386,'兰溪市','0',219,0,'',1,0,'',NULL,0),(1387,'义乌市','0',219,0,'',1,0,'',NULL,0),(1388,'东阳市','0',219,0,'',1,0,'',NULL,0),(1389,'永康市','0',219,0,'',1,0,'',NULL,0),(1390,'柯城区','0',220,0,'',1,0,'',NULL,0),(1391,'衢江区','0',220,0,'',1,0,'',NULL,0),(1392,'常山县','0',220,0,'',1,0,'',NULL,0),(1393,'开化县','0',220,0,'',1,0,'',NULL,0),(1394,'龙游县','0',220,0,'',1,0,'',NULL,0),(1395,'江山市','0',220,0,'',1,0,'',NULL,0),(1396,'定海区','0',221,0,'',1,0,'',NULL,0),(1397,'普陀区','0',221,0,'',1,0,'',NULL,0),(1398,'岱山县','0',221,0,'',1,0,'',NULL,0),(1399,'嵊泗县','0',221,0,'',1,0,'',NULL,0),(1400,'椒江区','0',222,0,'',1,0,'',NULL,0),(1401,'黄岩区','0',222,0,'',1,0,'',NULL,0),(1402,'路桥区','0',222,0,'',1,0,'',NULL,0),(1403,'玉环县','0',222,0,'',1,0,'',NULL,0),(1404,'三门县','0',222,0,'',1,0,'',NULL,0),(1405,'天台县','0',222,0,'',1,0,'',NULL,0),(1406,'仙居县','0',222,0,'',1,0,'',NULL,0),(1407,'温岭市','0',222,0,'',1,0,'',NULL,0),(1408,'临海市','0',222,0,'',1,0,'',NULL,0),(1409,'莲都区','0',223,0,'',1,0,'',NULL,0),(1410,'青田县','0',223,0,'',1,0,'',NULL,0),(1411,'缙云县','0',223,0,'',1,0,'',NULL,0),(1412,'遂昌县','0',223,0,'',1,0,'',NULL,0),(1413,'松阳县','0',223,0,'',1,0,'',NULL,0),(1414,'云和县','0',223,0,'',1,0,'',NULL,0),(1415,'庆元县','0',223,0,'',1,0,'',NULL,0),(1416,'景宁畲族自治县','0',223,0,'',1,0,'',NULL,0),(1417,'龙泉市','0',223,0,'',1,0,'',NULL,0),(1418,'瑶海区','0',224,0,'',1,0,'',NULL,0),(1419,'庐阳区','0',224,0,'',1,0,'',NULL,0),(1420,'蜀山区','0',224,0,'',1,0,'',NULL,0),(1421,'包河区','0',224,0,'',1,0,'',NULL,0),(1422,'长丰县','0',224,0,'',1,0,'',NULL,0),(1423,'肥东县','0',224,0,'',1,0,'',NULL,0),(1424,'肥西县','0',224,0,'',1,0,'',NULL,0),(1425,'镜湖区','0',225,0,'',1,0,'',NULL,0),(1426,'弋江区','0',225,0,'',1,0,'',NULL,0),(1427,'鸠江区','0',225,0,'',1,0,'',NULL,0),(1428,'三山区','0',225,0,'',1,0,'',NULL,0),(1429,'芜湖县','0',225,0,'',1,0,'',NULL,0),(1430,'繁昌县','0',225,0,'',1,0,'',NULL,0),(1431,'南陵县','0',225,0,'',1,0,'',NULL,0),(1432,'龙子湖区','0',226,0,'',1,0,'',NULL,0),(1433,'蚌山区','0',226,0,'',1,0,'',NULL,0),(1434,'禹会区','0',226,0,'',1,0,'',NULL,0),(1435,'淮上区','0',226,0,'',1,0,'',NULL,0),(1436,'怀远县','0',226,0,'',1,0,'',NULL,0),(1437,'五河县','0',226,0,'',1,0,'',NULL,0),(1438,'固镇县','0',226,0,'',1,0,'',NULL,0),(1439,'大通区','0',227,0,'',1,0,'',NULL,0),(1440,'田家庵区','0',227,0,'',1,0,'',NULL,0),(1441,'谢家集区','0',227,0,'',1,0,'',NULL,0),(1442,'八公山区','0',227,0,'',1,0,'',NULL,0),(1443,'潘集区','0',227,0,'',1,0,'',NULL,0),(1444,'凤台县','0',227,0,'',1,0,'',NULL,0),(1445,'金家庄区','0',228,0,'',1,0,'',NULL,0),(1446,'花山区','0',228,0,'',1,0,'',NULL,0),(1447,'雨山区','0',228,0,'',1,0,'',NULL,0),(1448,'当涂县','0',228,0,'',1,0,'',NULL,0),(1449,'杜集区','0',229,0,'',1,0,'',NULL,0),(1450,'相山区','0',229,0,'',1,0,'',NULL,0),(1451,'烈山区','0',229,0,'',1,0,'',NULL,0),(1452,'濉溪县','0',229,0,'',1,0,'',NULL,0),(1453,'铜官山区','0',230,0,'',1,0,'',NULL,0),(1454,'狮子山区','0',230,0,'',1,0,'',NULL,0),(1455,'郊区','0',230,0,'',1,0,'',NULL,0),(1456,'铜陵县','0',230,0,'',1,0,'',NULL,0),(1457,'迎江区','0',231,0,'',1,0,'',NULL,0),(1458,'大观区','0',231,0,'',1,0,'',NULL,0),(1459,'宜秀区','0',231,0,'',1,0,'',NULL,0),(1460,'怀宁县','0',231,0,'',1,0,'',NULL,0),(1461,'枞阳县','0',231,0,'',1,0,'',NULL,0),(1462,'潜山县','0',231,0,'',1,0,'',NULL,0),(1463,'太湖县','0',231,0,'',1,0,'',NULL,0),(1464,'宿松县','0',231,0,'',1,0,'',NULL,0),(1465,'望江县','0',231,0,'',1,0,'',NULL,0),(1466,'岳西县','0',231,0,'',1,0,'',NULL,0),(1467,'桐城市','0',231,0,'',1,0,'',NULL,0),(1468,'屯溪区','0',232,0,'',1,0,'',NULL,0),(1469,'黄山区','0',232,0,'',1,0,'',NULL,0),(1470,'徽州区','0',232,0,'',1,0,'',NULL,0),(1471,'歙县','0',232,0,'',1,0,'',NULL,0),(1472,'休宁县','0',232,0,'',1,0,'',NULL,0),(1473,'黟县','0',232,0,'',1,0,'',NULL,0),(1474,'祁门县','0',232,0,'',1,0,'',NULL,0),(1475,'琅琊区','0',233,0,'',1,0,'',NULL,0),(1476,'南谯区','0',233,0,'',1,0,'',NULL,0),(1477,'来安县','0',233,0,'',1,0,'',NULL,0),(1478,'全椒县','0',233,0,'',1,0,'',NULL,0),(1479,'定远县','0',233,0,'',1,0,'',NULL,0),(1480,'凤阳县','0',233,0,'',1,0,'',NULL,0),(1481,'天长市','0',233,0,'',1,0,'',NULL,0),(1482,'明光市','0',233,0,'',1,0,'',NULL,0),(1483,'颍州区','0',234,0,'',1,0,'',NULL,0),(1484,'颍东区','0',234,0,'',1,0,'',NULL,0),(1485,'颍泉区','0',234,0,'',1,0,'',NULL,0),(1486,'临泉县','0',234,0,'',1,0,'',NULL,0),(1487,'太和县','0',234,0,'',1,0,'',NULL,0),(1488,'阜南县','0',234,0,'',1,0,'',NULL,0),(1489,'颍上县','0',234,0,'',1,0,'',NULL,0),(1490,'界首市','0',234,0,'',1,0,'',NULL,0),(1491,'埇桥区','0',235,0,'',1,0,'',NULL,0),(1492,'砀山县','0',235,0,'',1,0,'',NULL,0),(1493,'萧县','0',235,0,'',1,0,'',NULL,0),(1494,'灵璧县','0',235,0,'',1,0,'',NULL,0),(1495,'泗县','0',235,0,'',1,0,'',NULL,0),(1496,'居巢区','0',236,0,'',1,0,'',NULL,0),(1497,'庐江县','0',236,0,'',1,0,'',NULL,0),(1498,'无为县','0',236,0,'',1,0,'',NULL,0),(1499,'含山县','0',236,0,'',1,0,'',NULL,0),(1500,'和县','0',236,0,'',1,0,'',NULL,0),(1501,'金安区','0',237,0,'',1,0,'',NULL,0),(1502,'裕安区','0',237,0,'',1,0,'',NULL,0),(1503,'寿县','0',237,0,'',1,0,'',NULL,0),(1504,'霍邱县','0',237,0,'',1,0,'',NULL,0),(1505,'舒城县','0',237,0,'',1,0,'',NULL,0),(1506,'金寨县','0',237,0,'',1,0,'',NULL,0),(1507,'霍山县','0',237,0,'',1,0,'',NULL,0),(1508,'谯城区','0',238,0,'',1,0,'',NULL,0),(1509,'涡阳县','0',238,0,'',1,0,'',NULL,0),(1510,'蒙城县','0',238,0,'',1,0,'',NULL,0),(1511,'利辛县','0',238,0,'',1,0,'',NULL,0),(1512,'贵池区','0',239,0,'',1,0,'',NULL,0),(1513,'东至县','0',239,0,'',1,0,'',NULL,0),(1514,'石台县','0',239,0,'',1,0,'',NULL,0),(1515,'青阳县','0',239,0,'',1,0,'',NULL,0),(1516,'宣州区','0',240,0,'',1,0,'',NULL,0),(1517,'郎溪县','0',240,0,'',1,0,'',NULL,0),(1518,'广德县','0',240,0,'',1,0,'',NULL,0),(1519,'泾县','0',240,0,'',1,0,'',NULL,0),(1520,'绩溪县','0',240,0,'',1,0,'',NULL,0),(1521,'旌德县','0',240,0,'',1,0,'',NULL,0),(1522,'宁国市','0',240,0,'',1,0,'',NULL,0),(1523,'鼓楼区','0',241,0,'',1,0,'',NULL,0),(1524,'台江区','0',241,0,'',1,0,'',NULL,0),(1525,'仓山区','0',241,0,'',1,0,'',NULL,0),(1526,'马尾区','0',241,0,'',1,0,'',NULL,0),(1527,'晋安区','0',241,0,'',1,0,'',NULL,0),(1528,'闽侯县','0',241,0,'',1,0,'',NULL,0),(1529,'连江县','0',241,0,'',1,0,'',NULL,0),(1530,'罗源县','0',241,0,'',1,0,'',NULL,0),(1531,'闽清县','0',241,0,'',1,0,'',NULL,0),(1532,'永泰县','0',241,0,'',1,0,'',NULL,0),(1533,'平潭县','0',241,0,'',1,0,'',NULL,0),(1534,'福清市','0',241,0,'',1,0,'',NULL,0),(1535,'长乐市','0',241,0,'',1,0,'',NULL,0),(1536,'思明区','0',242,0,'',1,0,'',NULL,0),(1537,'海沧区','0',242,0,'',1,0,'',NULL,0),(1538,'湖里区','0',242,0,'',1,0,'',NULL,0),(1539,'集美区','0',242,0,'',1,0,'',NULL,0),(1540,'同安区','0',242,0,'',1,0,'',NULL,0),(1541,'翔安区','0',242,0,'',1,0,'',NULL,0),(1542,'城厢区','0',243,0,'',1,0,'',NULL,0),(1543,'涵江区','0',243,0,'',1,0,'',NULL,0),(1544,'荔城区','0',243,0,'',1,0,'',NULL,0),(1545,'秀屿区','0',243,0,'',1,0,'',NULL,0),(1546,'仙游县','0',243,0,'',1,0,'',NULL,0),(1547,'梅列区','0',244,0,'',1,0,'',NULL,0),(1548,'三元区','0',244,0,'',1,0,'',NULL,0),(1549,'明溪县','0',244,0,'',1,0,'',NULL,0),(1550,'清流县','0',244,0,'',1,0,'',NULL,0),(1551,'宁化县','0',244,0,'',1,0,'',NULL,0),(1552,'大田县','0',244,0,'',1,0,'',NULL,0),(1553,'尤溪县','0',244,0,'',1,0,'',NULL,0),(1554,'沙县','0',244,0,'',1,0,'',NULL,0),(1555,'将乐县','0',244,0,'',1,0,'',NULL,0),(1556,'泰宁县','0',244,0,'',1,0,'',NULL,0),(1557,'建宁县','0',244,0,'',1,0,'',NULL,0),(1558,'永安市','0',244,0,'',1,0,'',NULL,0),(1559,'鲤城区','0',245,0,'',1,0,'',NULL,0),(1560,'丰泽区','0',245,0,'',1,0,'',NULL,0),(1561,'洛江区','0',245,0,'',1,0,'',NULL,0),(1562,'泉港区','0',245,0,'',1,0,'',NULL,0),(1563,'惠安县','0',245,0,'',1,0,'',NULL,0),(1564,'安溪县','0',245,0,'',1,0,'',NULL,0),(1565,'永春县','0',245,0,'',1,0,'',NULL,0),(1566,'德化县','0',245,0,'',1,0,'',NULL,0),(1567,'金门县','0',245,0,'',1,0,'',NULL,0),(1568,'石狮市','0',245,0,'',1,0,'',NULL,0),(1569,'晋江市','0',245,0,'',1,0,'',NULL,0),(1570,'南安市','0',245,0,'',1,0,'',NULL,0),(1571,'芗城区','0',246,0,'',1,0,'',NULL,0),(1572,'龙文区','0',246,0,'',1,0,'',NULL,0),(1573,'云霄县','0',246,0,'',1,0,'',NULL,0),(1574,'漳浦县','0',246,0,'',1,0,'',NULL,0),(1575,'诏安县','0',246,0,'',1,0,'',NULL,0),(1576,'长泰县','0',246,0,'',1,0,'',NULL,0),(1577,'东山县','0',246,0,'',1,0,'',NULL,0),(1578,'南靖县','0',246,0,'',1,0,'',NULL,0),(1579,'平和县','0',246,0,'',1,0,'',NULL,0),(1580,'华安县','0',246,0,'',1,0,'',NULL,0),(1581,'龙海市','0',246,0,'',1,0,'',NULL,0),(1582,'延平区','0',247,0,'',1,0,'',NULL,0),(1583,'顺昌县','0',247,0,'',1,0,'',NULL,0),(1584,'浦城县','0',247,0,'',1,0,'',NULL,0),(1585,'光泽县','0',247,0,'',1,0,'',NULL,0),(1586,'松溪县','0',247,0,'',1,0,'',NULL,0),(1587,'政和县','0',247,0,'',1,0,'',NULL,0),(1588,'邵武市','0',247,0,'',1,0,'',NULL,0),(1589,'武夷山市','0',247,0,'',1,0,'',NULL,0),(1590,'建瓯市','0',247,0,'',1,0,'',NULL,0),(1591,'建阳市','0',247,0,'',1,0,'',NULL,0),(1592,'新罗区','0',248,0,'',1,0,'',NULL,0),(1593,'长汀县','0',248,0,'',1,0,'',NULL,0),(1594,'永定县','0',248,0,'',1,0,'',NULL,0),(1595,'上杭县','0',248,0,'',1,0,'',NULL,0),(1596,'武平县','0',248,0,'',1,0,'',NULL,0),(1597,'连城县','0',248,0,'',1,0,'',NULL,0),(1598,'漳平市','0',248,0,'',1,0,'',NULL,0),(1599,'蕉城区','0',249,0,'',1,0,'',NULL,0),(1600,'霞浦县','0',249,0,'',1,0,'',NULL,0),(1601,'古田县','0',249,0,'',1,0,'',NULL,0),(1602,'屏南县','0',249,0,'',1,0,'',NULL,0),(1603,'寿宁县','0',249,0,'',1,0,'',NULL,0),(1604,'周宁县','0',249,0,'',1,0,'',NULL,0),(1605,'柘荣县','0',249,0,'',1,0,'',NULL,0),(1606,'福安市','0',249,0,'',1,0,'',NULL,0),(1607,'福鼎市','0',249,0,'',1,0,'',NULL,0),(1608,'东湖区','0',250,0,'',1,0,'',NULL,0),(1609,'西湖区','0',250,0,'',1,0,'',NULL,0),(1610,'青云谱区','0',250,0,'',1,0,'',NULL,0),(1611,'湾里区','0',250,0,'',1,0,'',NULL,0),(1612,'青山湖区','0',250,0,'',1,0,'',NULL,0),(1613,'南昌县','0',250,0,'',1,0,'',NULL,0),(1614,'新建县','0',250,0,'',1,0,'',NULL,0),(1615,'安义县','0',250,0,'',1,0,'',NULL,0),(1616,'进贤县','0',250,0,'',1,0,'',NULL,0),(1617,'昌江区','0',251,0,'',1,0,'',NULL,0),(1618,'珠山区','0',251,0,'',1,0,'',NULL,0),(1619,'浮梁县','0',251,0,'',1,0,'',NULL,0),(1620,'乐平市','0',251,0,'',1,0,'',NULL,0),(1621,'安源区','0',252,0,'',1,0,'',NULL,0),(1622,'湘东区','0',252,0,'',1,0,'',NULL,0),(1623,'莲花县','0',252,0,'',1,0,'',NULL,0),(1624,'上栗县','0',252,0,'',1,0,'',NULL,0),(1625,'芦溪县','0',252,0,'',1,0,'',NULL,0),(1626,'庐山区','0',253,0,'',1,0,'',NULL,0),(1627,'浔阳区','0',253,0,'',1,0,'',NULL,0),(1628,'九江县','0',253,0,'',1,0,'',NULL,0),(1629,'武宁县','0',253,0,'',1,0,'',NULL,0),(1630,'修水县','0',253,0,'',1,0,'',NULL,0),(1631,'永修县','0',253,0,'',1,0,'',NULL,0),(1632,'德安县','0',253,0,'',1,0,'',NULL,0),(1633,'星子县','0',253,0,'',1,0,'',NULL,0),(1634,'都昌县','0',253,0,'',1,0,'',NULL,0),(1635,'湖口县','0',253,0,'',1,0,'',NULL,0),(1636,'彭泽县','0',253,0,'',1,0,'',NULL,0),(1637,'瑞昌市','0',253,0,'',1,0,'',NULL,0),(1638,'渝水区','0',254,0,'',1,0,'',NULL,0),(1639,'分宜县','0',254,0,'',1,0,'',NULL,0),(1640,'月湖区','0',255,0,'',1,0,'',NULL,0),(1641,'余江县','0',255,0,'',1,0,'',NULL,0),(1642,'贵溪市','0',255,0,'',1,0,'',NULL,0),(1643,'章贡区','0',256,0,'',1,0,'',NULL,0),(1644,'赣县','0',256,0,'',1,0,'',NULL,0),(1645,'信丰县','0',256,0,'',1,0,'',NULL,0),(1646,'大余县','0',256,0,'',1,0,'',NULL,0),(1647,'上犹县','0',256,0,'',1,0,'',NULL,0),(1648,'崇义县','0',256,0,'',1,0,'',NULL,0),(1649,'安远县','0',256,0,'',1,0,'',NULL,0),(1650,'龙南县','0',256,0,'',1,0,'',NULL,0),(1651,'定南县','0',256,0,'',1,0,'',NULL,0),(1652,'全南县','0',256,0,'',1,0,'',NULL,0),(1653,'宁都县','0',256,0,'',1,0,'',NULL,0),(1654,'于都县','0',256,0,'',1,0,'',NULL,0),(1655,'兴国县','0',256,0,'',1,0,'',NULL,0),(1656,'会昌县','0',256,0,'',1,0,'',NULL,0),(1657,'寻乌县','0',256,0,'',1,0,'',NULL,0),(1658,'石城县','0',256,0,'',1,0,'',NULL,0),(1659,'瑞金市','0',256,0,'',1,0,'',NULL,0),(1660,'南康市','0',256,0,'',1,0,'',NULL,0),(1661,'吉州区','0',257,0,'',1,0,'',NULL,0),(1662,'青原区','0',257,0,'',1,0,'',NULL,0),(1663,'吉安县','0',257,0,'',1,0,'',NULL,0),(1664,'吉水县','0',257,0,'',1,0,'',NULL,0),(1665,'峡江县','0',257,0,'',1,0,'',NULL,0),(1666,'新干县','0',257,0,'',1,0,'',NULL,0),(1667,'永丰县','0',257,0,'',1,0,'',NULL,0),(1668,'泰和县','0',257,0,'',1,0,'',NULL,0),(1669,'遂川县','0',257,0,'',1,0,'',NULL,0),(1670,'万安县','0',257,0,'',1,0,'',NULL,0),(1671,'安福县','0',257,0,'',1,0,'',NULL,0),(1672,'永新县','0',257,0,'',1,0,'',NULL,0),(1673,'井冈山市','0',257,0,'',1,0,'',NULL,0),(1674,'袁州区','0',258,0,'',1,0,'',NULL,0),(1675,'奉新县','0',258,0,'',1,0,'',NULL,0),(1676,'万载县','0',258,0,'',1,0,'',NULL,0),(1677,'上高县','0',258,0,'',1,0,'',NULL,0),(1678,'宜丰县','0',258,0,'',1,0,'',NULL,0),(1679,'靖安县','0',258,0,'',1,0,'',NULL,0),(1680,'铜鼓县','0',258,0,'',1,0,'',NULL,0),(1681,'丰城市','0',258,0,'',1,0,'',NULL,0),(1682,'樟树市','0',258,0,'',1,0,'',NULL,0),(1683,'高安市','0',258,0,'',1,0,'',NULL,0),(1684,'临川区','0',259,0,'',1,0,'',NULL,0),(1685,'南城县','0',259,0,'',1,0,'',NULL,0),(1686,'黎川县','0',259,0,'',1,0,'',NULL,0),(1687,'南丰县','0',259,0,'',1,0,'',NULL,0),(1688,'崇仁县','0',259,0,'',1,0,'',NULL,0),(1689,'乐安县','0',259,0,'',1,0,'',NULL,0),(1690,'宜黄县','0',259,0,'',1,0,'',NULL,0),(1691,'金溪县','0',259,0,'',1,0,'',NULL,0),(1692,'资溪县','0',259,0,'',1,0,'',NULL,0),(1693,'东乡县','0',259,0,'',1,0,'',NULL,0),(1694,'广昌县','0',259,0,'',1,0,'',NULL,0),(1695,'信州区','0',260,0,'',1,0,'',NULL,0),(1696,'上饶县','0',260,0,'',1,0,'',NULL,0),(1697,'广丰县','0',260,0,'',1,0,'',NULL,0),(1698,'玉山县','0',260,0,'',1,0,'',NULL,0),(1699,'铅山县','0',260,0,'',1,0,'',NULL,0),(1700,'横峰县','0',260,0,'',1,0,'',NULL,0),(1701,'弋阳县','0',260,0,'',1,0,'',NULL,0),(1702,'余干县','0',260,0,'',1,0,'',NULL,0),(1703,'鄱阳县','0',260,0,'',1,0,'',NULL,0),(1704,'万年县','0',260,0,'',1,0,'',NULL,0),(1705,'婺源县','0',260,0,'',1,0,'',NULL,0),(1706,'德兴市','0',260,0,'',1,0,'',NULL,0),(1707,'历下区','0',261,0,'',1,0,'',NULL,0),(1708,'市中区','0',261,0,'',1,0,'',NULL,0),(1709,'槐荫区','0',261,0,'',1,0,'',NULL,0),(1710,'天桥区','0',261,0,'',1,0,'',NULL,0),(1711,'历城区','0',261,0,'',1,0,'',NULL,0),(1712,'长清区','0',261,0,'',1,0,'',NULL,0),(1713,'平阴县','0',261,0,'',1,0,'',NULL,0),(1714,'济阳县','0',261,0,'',1,0,'',NULL,0),(1715,'商河县','0',261,0,'',1,0,'',NULL,0),(1716,'章丘市','0',261,0,'',1,0,'',NULL,0),(1717,'市南区','0',262,0,'',1,0,'',NULL,0),(1718,'市北区','0',262,0,'',1,0,'',NULL,0),(1719,'四方区','0',262,0,'',1,0,'',NULL,0),(1720,'黄岛区','0',262,0,'',1,0,'',NULL,0),(1721,'崂山区','0',262,0,'',1,0,'',NULL,0),(1722,'李沧区','0',262,0,'',1,0,'',NULL,0),(1723,'城阳区','0',262,0,'',1,0,'',NULL,0),(1724,'胶州市','0',262,0,'',1,0,'',NULL,0),(1725,'即墨市','0',262,0,'',1,0,'',NULL,0),(1726,'平度市','0',262,0,'',1,0,'',NULL,0),(1727,'胶南市','0',262,0,'',1,0,'',NULL,0),(1728,'莱西市','0',262,0,'',1,0,'',NULL,0),(1729,'淄川区','0',263,0,'',1,0,'',NULL,0),(1730,'张店区','0',263,0,'',1,0,'',NULL,0),(1731,'博山区','0',263,0,'',1,0,'',NULL,0),(1732,'临淄区','0',263,0,'',1,0,'',NULL,0),(1733,'周村区','0',263,0,'',1,0,'',NULL,0),(1734,'桓台县','0',263,0,'',1,0,'',NULL,0),(1735,'高青县','0',263,0,'',1,0,'',NULL,0),(1736,'沂源县','0',263,0,'',1,0,'',NULL,0),(1737,'市中区','0',264,0,'',1,0,'',NULL,0),(1738,'薛城区','0',264,0,'',1,0,'',NULL,0),(1739,'峄城区','0',264,0,'',1,0,'',NULL,0),(1740,'台儿庄区','0',264,0,'',1,0,'',NULL,0),(1741,'山亭区','0',264,0,'',1,0,'',NULL,0),(1742,'滕州市','0',264,0,'',1,0,'',NULL,0),(1743,'东营区','0',265,0,'',1,0,'',NULL,0),(1744,'河口区','0',265,0,'',1,0,'',NULL,0),(1745,'垦利县','0',265,0,'',1,0,'',NULL,0),(1746,'利津县','0',265,0,'',1,0,'',NULL,0),(1747,'广饶县','0',265,0,'',1,0,'',NULL,0),(1748,'芝罘区','0',266,0,'',1,0,'',NULL,0),(1749,'福山区','0',266,0,'',1,0,'',NULL,0),(1750,'牟平区','0',266,0,'',1,0,'',NULL,0),(1751,'莱山区','0',266,0,'',1,0,'',NULL,0),(1752,'长岛县','0',266,0,'',1,0,'',NULL,0),(1753,'龙口市','0',266,0,'',1,0,'',NULL,0),(1754,'莱阳市','0',266,0,'',1,0,'',NULL,0),(1755,'莱州市','0',266,0,'',1,0,'',NULL,0),(1756,'蓬莱市','0',266,0,'',1,0,'',NULL,0),(1757,'招远市','0',266,0,'',1,0,'',NULL,0),(1758,'栖霞市','0',266,0,'',1,0,'',NULL,0),(1759,'海阳市','0',266,0,'',1,0,'',NULL,0),(1760,'潍城区','0',267,0,'',1,0,'',NULL,0),(1761,'寒亭区','0',267,0,'',1,0,'',NULL,0),(1762,'坊子区','0',267,0,'',1,0,'',NULL,0),(1763,'奎文区','0',267,0,'',1,0,'',NULL,0),(1764,'临朐县','0',267,0,'',1,0,'',NULL,0),(1765,'昌乐县','0',267,0,'',1,0,'',NULL,0),(1766,'青州市','0',267,0,'',1,0,'',NULL,0),(1767,'诸城市','0',267,0,'',1,0,'',NULL,0),(1768,'寿光市','0',267,0,'',1,0,'',NULL,0),(1769,'安丘市','0',267,0,'',1,0,'',NULL,0),(1770,'高密市','0',267,0,'',1,0,'',NULL,0),(1771,'昌邑市','0',267,0,'',1,0,'',NULL,0),(1772,'市中区','0',268,0,'',1,0,'',NULL,0),(1773,'任城区','0',268,0,'',1,0,'',NULL,0),(1774,'微山县','0',268,0,'',1,0,'',NULL,0),(1775,'鱼台县','0',268,0,'',1,0,'',NULL,0),(1776,'金乡县','0',268,0,'',1,0,'',NULL,0),(1777,'嘉祥县','0',268,0,'',1,0,'',NULL,0),(1778,'汶上县','0',268,0,'',1,0,'',NULL,0),(1779,'泗水县','0',268,0,'',1,0,'',NULL,0),(1780,'梁山县','0',268,0,'',1,0,'',NULL,0),(1781,'曲阜市','0',268,0,'',1,0,'',NULL,0),(1782,'兖州市','0',268,0,'',1,0,'',NULL,0),(1783,'邹城市','0',268,0,'',1,0,'',NULL,0),(1784,'泰山区','0',269,0,'',1,0,'',NULL,0),(1785,'岱岳区','0',269,0,'',1,0,'',NULL,0),(1786,'宁阳县','0',269,0,'',1,0,'',NULL,0),(1787,'东平县','0',269,0,'',1,0,'',NULL,0),(1788,'新泰市','0',269,0,'',1,0,'',NULL,0),(1789,'肥城市','0',269,0,'',1,0,'',NULL,0),(1790,'环翠区','0',270,0,'',1,0,'',NULL,0),(1791,'文登市','0',270,0,'',1,0,'',NULL,0),(1792,'荣成市','0',270,0,'',1,0,'',NULL,0),(1793,'乳山市','0',270,0,'',1,0,'',NULL,0),(1794,'东港区','0',271,0,'',1,0,'',NULL,0),(1795,'岚山区','0',271,0,'',1,0,'',NULL,0),(1796,'五莲县','0',271,0,'',1,0,'',NULL,0),(1797,'莒县','0',271,0,'',1,0,'',NULL,0),(1798,'莱城区','0',272,0,'',1,0,'',NULL,0),(1799,'钢城区','0',272,0,'',1,0,'',NULL,0),(1800,'兰山区','0',273,0,'',1,0,'',NULL,0),(1801,'罗庄区','0',273,0,'',1,0,'',NULL,0),(1802,'河东区','0',273,0,'',1,0,'',NULL,0),(1803,'沂南县','0',273,0,'',1,0,'',NULL,0),(1804,'郯城县','0',273,0,'',1,0,'',NULL,0),(1805,'沂水县','0',273,0,'',1,0,'',NULL,0),(1806,'苍山县','0',273,0,'',1,0,'',NULL,0),(1807,'费县','0',273,0,'',1,0,'',NULL,0),(1808,'平邑县','0',273,0,'',1,0,'',NULL,0),(1809,'莒南县','0',273,0,'',1,0,'',NULL,0),(1810,'蒙阴县','0',273,0,'',1,0,'',NULL,0),(1811,'临沭县','0',273,0,'',1,0,'',NULL,0),(1812,'德城区','0',274,0,'',1,0,'',NULL,0),(1813,'陵县','0',274,0,'',1,0,'',NULL,0),(1814,'宁津县','0',274,0,'',1,0,'',NULL,0),(1815,'庆云县','0',274,0,'',1,0,'',NULL,0),(1816,'临邑县','0',274,0,'',1,0,'',NULL,0),(1817,'齐河县','0',274,0,'',1,0,'',NULL,0),(1818,'平原县','0',274,0,'',1,0,'',NULL,0),(1819,'夏津县','0',274,0,'',1,0,'',NULL,0),(1820,'武城县','0',274,0,'',1,0,'',NULL,0),(1821,'乐陵市','0',274,0,'',1,0,'',NULL,0),(1822,'禹城市','0',274,0,'',1,0,'',NULL,0),(1823,'东昌府区','0',275,0,'',1,0,'',NULL,0),(1824,'阳谷县','0',275,0,'',1,0,'',NULL,0),(1825,'莘县','0',275,0,'',1,0,'',NULL,0),(1826,'茌平县','0',275,0,'',1,0,'',NULL,0),(1827,'东阿县','0',275,0,'',1,0,'',NULL,0),(1828,'冠县','0',275,0,'',1,0,'',NULL,0),(1829,'高唐县','0',275,0,'',1,0,'',NULL,0),(1830,'临清市','0',275,0,'',1,0,'',NULL,0),(1831,'滨城区','0',276,0,'',1,0,'',NULL,0),(1832,'惠民县','0',276,0,'',1,0,'',NULL,0),(1833,'阳信县','0',276,0,'',1,0,'',NULL,0),(1834,'无棣县','0',276,0,'',1,0,'',NULL,0),(1835,'沾化县','0',276,0,'',1,0,'',NULL,0),(1836,'博兴县','0',276,0,'',1,0,'',NULL,0),(1837,'邹平县','0',276,0,'',1,0,'',NULL,0),(1838,'牡丹区','0',277,0,'',1,0,'',NULL,0),(1839,'曹县','0',277,0,'',1,0,'',NULL,0),(1840,'单县','0',277,0,'',1,0,'',NULL,0),(1841,'成武县','0',277,0,'',1,0,'',NULL,0),(1842,'巨野县','0',277,0,'',1,0,'',NULL,0),(1843,'郓城县','0',277,0,'',1,0,'',NULL,0),(1844,'鄄城县','0',277,0,'',1,0,'',NULL,0),(1845,'定陶县','0',277,0,'',1,0,'',NULL,0),(1846,'东明县','0',277,0,'',1,0,'',NULL,0),(1847,'中原区','0',278,0,'',1,0,'',NULL,0),(1848,'二七区','0',278,0,'',1,0,'',NULL,0),(1849,'管城回族区','0',278,0,'',1,0,'',NULL,0),(1850,'金水区','0',278,0,'',1,0,'',NULL,0),(1851,'上街区','0',278,0,'',1,0,'',NULL,0),(1852,'惠济区','0',278,0,'',1,0,'',NULL,0),(1853,'中牟县','0',278,0,'',1,0,'',NULL,0),(1854,'巩义市','0',278,0,'',1,0,'',NULL,0),(1855,'荥阳市','0',278,0,'',1,0,'',NULL,0),(1856,'新密市','0',278,0,'',1,0,'',NULL,0),(1857,'新郑市','0',278,0,'',1,0,'',NULL,0),(1858,'登封市','0',278,0,'',1,0,'',NULL,0),(1859,'龙亭区','0',279,0,'',1,0,'',NULL,0),(1860,'顺河回族区','0',279,0,'',1,0,'',NULL,0),(1861,'鼓楼区','0',279,0,'',1,0,'',NULL,0),(1862,'禹王台区','0',279,0,'',1,0,'',NULL,0),(1863,'金明区','0',279,0,'',1,0,'',NULL,0),(1864,'杞县','0',279,0,'',1,0,'',NULL,0),(1865,'通许县','0',279,0,'',1,0,'',NULL,0),(1866,'尉氏县','0',279,0,'',1,0,'',NULL,0),(1867,'开封县','0',279,0,'',1,0,'',NULL,0),(1868,'兰考县','0',279,0,'',1,0,'',NULL,0),(1869,'老城区','0',280,0,'',1,0,'',NULL,0),(1870,'西工区','0',280,0,'',1,0,'',NULL,0),(1871,'廛河回族区','0',280,0,'',1,0,'',NULL,0),(1872,'涧西区','0',280,0,'',1,0,'',NULL,0),(1873,'吉利区','0',280,0,'',1,0,'',NULL,0),(1874,'洛龙区','0',280,0,'',1,0,'',NULL,0),(1875,'孟津县','0',280,0,'',1,0,'',NULL,0),(1876,'新安县','0',280,0,'',1,0,'',NULL,0),(1877,'栾川县','0',280,0,'',1,0,'',NULL,0),(1878,'嵩县','0',280,0,'',1,0,'',NULL,0),(1879,'汝阳县','0',280,0,'',1,0,'',NULL,0),(1880,'宜阳县','0',280,0,'',1,0,'',NULL,0),(1881,'洛宁县','0',280,0,'',1,0,'',NULL,0),(1882,'伊川县','0',280,0,'',1,0,'',NULL,0),(1883,'偃师市','0',280,0,'',1,0,'',NULL,0),(1884,'新华区','0',281,0,'',1,0,'',NULL,0),(1885,'卫东区','0',281,0,'',1,0,'',NULL,0),(1886,'石龙区','0',281,0,'',1,0,'',NULL,0),(1887,'湛河区','0',281,0,'',1,0,'',NULL,0),(1888,'宝丰县','0',281,0,'',1,0,'',NULL,0),(1889,'叶县','0',281,0,'',1,0,'',NULL,0),(1890,'鲁山县','0',281,0,'',1,0,'',NULL,0),(1891,'郏县','0',281,0,'',1,0,'',NULL,0),(1892,'舞钢市','0',281,0,'',1,0,'',NULL,0),(1893,'汝州市','0',281,0,'',1,0,'',NULL,0),(1894,'文峰区','0',282,0,'',1,0,'',NULL,0),(1895,'北关区','0',282,0,'',1,0,'',NULL,0),(1896,'殷都区','0',282,0,'',1,0,'',NULL,0),(1897,'龙安区','0',282,0,'',1,0,'',NULL,0),(1898,'安阳县','0',282,0,'',1,0,'',NULL,0),(1899,'汤阴县','0',282,0,'',1,0,'',NULL,0),(1900,'滑县','0',282,0,'',1,0,'',NULL,0),(1901,'内黄县','0',282,0,'',1,0,'',NULL,0),(1902,'林州市','0',282,0,'',1,0,'',NULL,0),(1903,'鹤山区','0',283,0,'',1,0,'',NULL,0),(1904,'山城区','0',283,0,'',1,0,'',NULL,0),(1905,'淇滨区','0',283,0,'',1,0,'',NULL,0),(1906,'浚县','0',283,0,'',1,0,'',NULL,0),(1907,'淇县','0',283,0,'',1,0,'',NULL,0),(1908,'红旗区','0',284,0,'',1,0,'',NULL,0),(1909,'卫滨区','0',284,0,'',1,0,'',NULL,0),(1910,'凤泉区','0',284,0,'',1,0,'',NULL,0),(1911,'牧野区','0',284,0,'',1,0,'',NULL,0),(1912,'新乡县','0',284,0,'',1,0,'',NULL,0),(1913,'获嘉县','0',284,0,'',1,0,'',NULL,0),(1914,'原阳县','0',284,0,'',1,0,'',NULL,0),(1915,'延津县','0',284,0,'',1,0,'',NULL,0),(1916,'封丘县','0',284,0,'',1,0,'',NULL,0),(1917,'长垣县','0',284,0,'',1,0,'',NULL,0),(1918,'卫辉市','0',284,0,'',1,0,'',NULL,0),(1919,'辉县市','0',284,0,'',1,0,'',NULL,0),(1920,'解放区','0',285,0,'',1,0,'',NULL,0),(1921,'中站区','0',285,0,'',1,0,'',NULL,0),(1922,'马村区','0',285,0,'',1,0,'',NULL,0),(1923,'山阳区','0',285,0,'',1,0,'',NULL,0),(1924,'修武县','0',285,0,'',1,0,'',NULL,0),(1925,'博爱县','0',285,0,'',1,0,'',NULL,0),(1926,'武陟县','0',285,0,'',1,0,'',NULL,0),(1927,'温县','0',285,0,'',1,0,'',NULL,0),(1928,'济源市','0',285,0,'',1,0,'',NULL,0),(1929,'沁阳市','0',285,0,'',1,0,'',NULL,0),(1930,'孟州市','0',285,0,'',1,0,'',NULL,0),(1931,'华龙区','0',286,0,'',1,0,'',NULL,0),(1932,'清丰县','0',286,0,'',1,0,'',NULL,0),(1933,'南乐县','0',286,0,'',1,0,'',NULL,0),(1934,'范县','0',286,0,'',1,0,'',NULL,0),(1935,'台前县','0',286,0,'',1,0,'',NULL,0),(1936,'濮阳县','0',286,0,'',1,0,'',NULL,0),(1937,'魏都区','0',287,0,'',1,0,'',NULL,0),(1938,'许昌县','0',287,0,'',1,0,'',NULL,0),(1939,'鄢陵县','0',287,0,'',1,0,'',NULL,0),(1940,'襄城县','0',287,0,'',1,0,'',NULL,0),(1941,'禹州市','0',287,0,'',1,0,'',NULL,0),(1942,'长葛市','0',287,0,'',1,0,'',NULL,0),(1943,'源汇区','0',288,0,'',1,0,'',NULL,0),(1944,'郾城区','0',288,0,'',1,0,'',NULL,0),(1945,'召陵区','0',288,0,'',1,0,'',NULL,0),(1946,'舞阳县','0',288,0,'',1,0,'',NULL,0),(1947,'临颍县','0',288,0,'',1,0,'',NULL,0),(1948,'湖滨区','0',289,0,'',1,0,'',NULL,0),(1949,'渑池县','0',289,0,'',1,0,'',NULL,0),(1950,'陕县','0',289,0,'',1,0,'',NULL,0),(1951,'卢氏县','0',289,0,'',1,0,'',NULL,0),(1952,'义马市','0',289,0,'',1,0,'',NULL,0),(1953,'灵宝市','0',289,0,'',1,0,'',NULL,0),(1954,'宛城区','0',290,0,'',1,0,'',NULL,0),(1955,'卧龙区','0',290,0,'',1,0,'',NULL,0),(1956,'南召县','0',290,0,'',1,0,'',NULL,0),(1957,'方城县','0',290,0,'',1,0,'',NULL,0),(1958,'西峡县','0',290,0,'',1,0,'',NULL,0),(1959,'镇平县','0',290,0,'',1,0,'',NULL,0),(1960,'内乡县','0',290,0,'',1,0,'',NULL,0),(1961,'淅川县','0',290,0,'',1,0,'',NULL,0),(1962,'社旗县','0',290,0,'',1,0,'',NULL,0),(1963,'唐河县','0',290,0,'',1,0,'',NULL,0),(1964,'新野县','0',290,0,'',1,0,'',NULL,0),(1965,'桐柏县','0',290,0,'',1,0,'',NULL,0),(1966,'邓州市','0',290,0,'',1,0,'',NULL,0),(1967,'梁园区','0',291,0,'',1,0,'',NULL,0),(1968,'睢阳区','0',291,0,'',1,0,'',NULL,0),(1969,'民权县','0',291,0,'',1,0,'',NULL,0),(1970,'睢县','0',291,0,'',1,0,'',NULL,0),(1971,'宁陵县','0',291,0,'',1,0,'',NULL,0),(1972,'柘城县','0',291,0,'',1,0,'',NULL,0),(1973,'虞城县','0',291,0,'',1,0,'',NULL,0),(1974,'夏邑县','0',291,0,'',1,0,'',NULL,0),(1975,'永城市','0',291,0,'',1,0,'',NULL,0),(1976,'浉河区','0',292,0,'',1,0,'',NULL,0),(1977,'平桥区','0',292,0,'',1,0,'',NULL,0),(1978,'罗山县','0',292,0,'',1,0,'',NULL,0),(1979,'光山县','0',292,0,'',1,0,'',NULL,0),(1980,'新县','0',292,0,'',1,0,'',NULL,0),(1981,'商城县','0',292,0,'',1,0,'',NULL,0),(1982,'固始县','0',292,0,'',1,0,'',NULL,0),(1983,'潢川县','0',292,0,'',1,0,'',NULL,0),(1984,'淮滨县','0',292,0,'',1,0,'',NULL,0),(1985,'息县','0',292,0,'',1,0,'',NULL,0),(1986,'川汇区','0',293,0,'',1,0,'',NULL,0),(1987,'扶沟县','0',293,0,'',1,0,'',NULL,0),(1988,'西华县','0',293,0,'',1,0,'',NULL,0),(1989,'商水县','0',293,0,'',1,0,'',NULL,0),(1990,'沈丘县','0',293,0,'',1,0,'',NULL,0),(1991,'郸城县','0',293,0,'',1,0,'',NULL,0),(1992,'淮阳县','0',293,0,'',1,0,'',NULL,0),(1993,'太康县','0',293,0,'',1,0,'',NULL,0),(1994,'鹿邑县','0',293,0,'',1,0,'',NULL,0),(1995,'项城市','0',293,0,'',1,0,'',NULL,0),(1996,'驿城区','0',294,0,'',1,0,'',NULL,0),(1997,'西平县','0',294,0,'',1,0,'',NULL,0),(1998,'上蔡县','0',294,0,'',1,0,'',NULL,0),(1999,'平舆县','0',294,0,'',1,0,'',NULL,0),(2000,'正阳县','0',294,0,'',1,0,'',NULL,0),(2001,'确山县','0',294,0,'',1,0,'',NULL,0),(2002,'泌阳县','0',294,0,'',1,0,'',NULL,0),(2003,'汝南县','0',294,0,'',1,0,'',NULL,0),(2004,'遂平县','0',294,0,'',1,0,'',NULL,0),(2005,'新蔡县','0',294,0,'',1,0,'',NULL,0),(2006,'江岸区','0',295,0,'',1,0,'',NULL,0),(2007,'江汉区','0',295,0,'',1,0,'',NULL,0),(2008,'硚口区','0',295,0,'',1,0,'',NULL,0),(2009,'汉阳区','0',295,0,'',1,0,'',NULL,0),(2010,'武昌区','0',295,0,'',1,0,'',NULL,0),(2011,'青山区','0',295,0,'',1,0,'',NULL,0),(2012,'洪山区','0',295,0,'',1,0,'',NULL,0),(2013,'东西湖区','0',295,0,'',1,0,'',NULL,0),(2014,'汉南区','0',295,0,'',1,0,'',NULL,0),(2015,'蔡甸区','0',295,0,'',1,0,'',NULL,0),(2016,'江夏区','0',295,0,'',1,0,'',NULL,0),(2017,'黄陂区','0',295,0,'',1,0,'',NULL,0),(2018,'新洲区','0',295,0,'',1,0,'',NULL,0),(2019,'黄石港区','0',296,0,'',1,0,'',NULL,0),(2020,'西塞山区','0',296,0,'',1,0,'',NULL,0),(2021,'下陆区','0',296,0,'',1,0,'',NULL,0),(2022,'铁山区','0',296,0,'',1,0,'',NULL,0),(2023,'阳新县','0',296,0,'',1,0,'',NULL,0),(2024,'大冶市','0',296,0,'',1,0,'',NULL,0),(2025,'茅箭区','0',297,0,'',1,0,'',NULL,0),(2026,'张湾区','0',297,0,'',1,0,'',NULL,0),(2027,'郧县','0',297,0,'',1,0,'',NULL,0),(2028,'郧西县','0',297,0,'',1,0,'',NULL,0),(2029,'竹山县','0',297,0,'',1,0,'',NULL,0),(2030,'竹溪县','0',297,0,'',1,0,'',NULL,0),(2031,'房县','0',297,0,'',1,0,'',NULL,0),(2032,'丹江口市','0',297,0,'',1,0,'',NULL,0),(2033,'西陵区','0',298,0,'',1,0,'',NULL,0),(2034,'伍家岗区','0',298,0,'',1,0,'',NULL,0),(2035,'点军区','0',298,0,'',1,0,'',NULL,0),(2036,'猇亭区','0',298,0,'',1,0,'',NULL,0),(2037,'夷陵区','0',298,0,'',1,0,'',NULL,0),(2038,'远安县','0',298,0,'',1,0,'',NULL,0),(2039,'兴山县','0',298,0,'',1,0,'',NULL,0),(2040,'秭归县','0',298,0,'',1,0,'',NULL,0),(2041,'长阳土家族自治县','0',298,0,'',1,0,'',NULL,0),(2042,'五峰土家族自治县','0',298,0,'',1,0,'',NULL,0),(2043,'宜都市','0',298,0,'',1,0,'',NULL,0),(2044,'当阳市','0',298,0,'',1,0,'',NULL,0),(2045,'枝江市','0',298,0,'',1,0,'',NULL,0),(2046,'襄城区','0',299,0,'',1,0,'',NULL,0),(2047,'樊城区','0',299,0,'',1,0,'',NULL,0),(2048,'襄阳区','0',299,0,'',1,0,'',NULL,0),(2049,'南漳县','0',299,0,'',1,0,'',NULL,0),(2050,'谷城县','0',299,0,'',1,0,'',NULL,0),(2051,'保康县','0',299,0,'',1,0,'',NULL,0),(2052,'老河口市','0',299,0,'',1,0,'',NULL,0),(2053,'枣阳市','0',299,0,'',1,0,'',NULL,0),(2054,'宜城市','0',299,0,'',1,0,'',NULL,0),(2055,'梁子湖区','0',300,0,'',1,0,'',NULL,0),(2056,'华容区','0',300,0,'',1,0,'',NULL,0),(2057,'鄂城区','0',300,0,'',1,0,'',NULL,0),(2058,'东宝区','0',301,0,'',1,0,'',NULL,0),(2059,'掇刀区','0',301,0,'',1,0,'',NULL,0),(2060,'京山县','0',301,0,'',1,0,'',NULL,0),(2061,'沙洋县','0',301,0,'',1,0,'',NULL,0),(2062,'钟祥市','0',301,0,'',1,0,'',NULL,0),(2063,'孝南区','0',302,0,'',1,0,'',NULL,0),(2064,'孝昌县','0',302,0,'',1,0,'',NULL,0),(2065,'大悟县','0',302,0,'',1,0,'',NULL,0),(2066,'云梦县','0',302,0,'',1,0,'',NULL,0),(2067,'应城市','0',302,0,'',1,0,'',NULL,0),(2068,'安陆市','0',302,0,'',1,0,'',NULL,0),(2069,'汉川市','0',302,0,'',1,0,'',NULL,0),(2070,'沙市区','0',303,0,'',1,0,'',NULL,0),(2071,'荆州区','0',303,0,'',1,0,'',NULL,0),(2072,'公安县','0',303,0,'',1,0,'',NULL,0),(2073,'监利县','0',303,0,'',1,0,'',NULL,0),(2074,'江陵县','0',303,0,'',1,0,'',NULL,0),(2075,'石首市','0',303,0,'',1,0,'',NULL,0),(2076,'洪湖市','0',303,0,'',1,0,'',NULL,0),(2077,'松滋市','0',303,0,'',1,0,'',NULL,0),(2078,'黄州区','0',304,0,'',1,0,'',NULL,0),(2079,'团风县','0',304,0,'',1,0,'',NULL,0),(2080,'红安县','0',304,0,'',1,0,'',NULL,0),(2081,'罗田县','0',304,0,'',1,0,'',NULL,0),(2082,'英山县','0',304,0,'',1,0,'',NULL,0),(2083,'浠水县','0',304,0,'',1,0,'',NULL,0),(2084,'蕲春县','0',304,0,'',1,0,'',NULL,0),(2085,'黄梅县','0',304,0,'',1,0,'',NULL,0),(2086,'麻城市','0',304,0,'',1,0,'',NULL,0),(2087,'武穴市','0',304,0,'',1,0,'',NULL,0),(2088,'咸安区','0',305,0,'',1,0,'',NULL,0),(2089,'嘉鱼县','0',305,0,'',1,0,'',NULL,0),(2090,'通城县','0',305,0,'',1,0,'',NULL,0),(2091,'崇阳县','0',305,0,'',1,0,'',NULL,0),(2092,'通山县','0',305,0,'',1,0,'',NULL,0),(2093,'赤壁市','0',305,0,'',1,0,'',NULL,0),(2094,'曾都区','0',306,0,'',1,0,'',NULL,0),(2095,'广水市','0',306,0,'',1,0,'',NULL,0),(2096,'恩施市','0',307,0,'',1,0,'',NULL,0),(2097,'利川市','0',307,0,'',1,0,'',NULL,0),(2098,'建始县','0',307,0,'',1,0,'',NULL,0),(2099,'巴东县','0',307,0,'',1,0,'',NULL,0),(2100,'宣恩县','0',307,0,'',1,0,'',NULL,0),(2101,'咸丰县','0',307,0,'',1,0,'',NULL,0),(2102,'来凤县','0',307,0,'',1,0,'',NULL,0),(2103,'鹤峰县','0',307,0,'',1,0,'',NULL,0),(2104,'芙蓉区','0',312,0,'',1,0,'',NULL,0),(2105,'天心区','0',312,0,'',1,0,'',NULL,0),(2106,'岳麓区','0',312,0,'',1,0,'',NULL,0),(2107,'开福区','0',312,0,'',1,0,'',NULL,0),(2108,'雨花区','0',312,0,'',1,0,'',NULL,0),(2109,'长沙县','0',312,0,'',1,0,'',NULL,0),(2110,'望城县','0',312,0,'',1,0,'',NULL,0),(2111,'宁乡县','0',312,0,'',1,0,'',NULL,0),(2112,'浏阳市','0',312,0,'',1,0,'',NULL,0),(2113,'荷塘区','0',313,0,'',1,0,'',NULL,0),(2114,'芦淞区','0',313,0,'',1,0,'',NULL,0),(2115,'石峰区','0',313,0,'',1,0,'',NULL,0),(2116,'天元区','0',313,0,'',1,0,'',NULL,0),(2117,'株洲县','0',313,0,'',1,0,'',NULL,0),(2118,'攸县','0',313,0,'',1,0,'',NULL,0),(2119,'茶陵县','0',313,0,'',1,0,'',NULL,0),(2120,'炎陵县','0',313,0,'',1,0,'',NULL,0),(2121,'醴陵市','0',313,0,'',1,0,'',NULL,0),(2122,'雨湖区','0',314,0,'',1,0,'',NULL,0),(2123,'岳塘区','0',314,0,'',1,0,'',NULL,0),(2124,'湘潭县','0',314,0,'',1,0,'',NULL,0),(2125,'湘乡市','0',314,0,'',1,0,'',NULL,0),(2126,'韶山市','0',314,0,'',1,0,'',NULL,0),(2127,'珠晖区','0',315,0,'',1,0,'',NULL,0),(2128,'雁峰区','0',315,0,'',1,0,'',NULL,0),(2129,'石鼓区','0',315,0,'',1,0,'',NULL,0),(2130,'蒸湘区','0',315,0,'',1,0,'',NULL,0),(2131,'南岳区','0',315,0,'',1,0,'',NULL,0),(2132,'衡阳县','0',315,0,'',1,0,'',NULL,0),(2133,'衡南县','0',315,0,'',1,0,'',NULL,0),(2134,'衡山县','0',315,0,'',1,0,'',NULL,0),(2135,'衡东县','0',315,0,'',1,0,'',NULL,0),(2136,'祁东县','0',315,0,'',1,0,'',NULL,0),(2137,'耒阳市','0',315,0,'',1,0,'',NULL,0),(2138,'常宁市','0',315,0,'',1,0,'',NULL,0),(2139,'双清区','0',316,0,'',1,0,'',NULL,0),(2140,'大祥区','0',316,0,'',1,0,'',NULL,0),(2141,'北塔区','0',316,0,'',1,0,'',NULL,0),(2142,'邵东县','0',316,0,'',1,0,'',NULL,0),(2143,'新邵县','0',316,0,'',1,0,'',NULL,0),(2144,'邵阳县','0',316,0,'',1,0,'',NULL,0),(2145,'隆回县','0',316,0,'',1,0,'',NULL,0),(2146,'洞口县','0',316,0,'',1,0,'',NULL,0),(2147,'绥宁县','0',316,0,'',1,0,'',NULL,0),(2148,'新宁县','0',316,0,'',1,0,'',NULL,0),(2149,'城步苗族自治县','0',316,0,'',1,0,'',NULL,0),(2150,'武冈市','0',316,0,'',1,0,'',NULL,0),(2151,'岳阳楼区','0',317,0,'',1,0,'',NULL,0),(2152,'云溪区','0',317,0,'',1,0,'',NULL,0),(2153,'君山区','0',317,0,'',1,0,'',NULL,0),(2154,'岳阳县','0',317,0,'',1,0,'',NULL,0),(2155,'华容县','0',317,0,'',1,0,'',NULL,0),(2156,'湘阴县','0',317,0,'',1,0,'',NULL,0),(2157,'平江县','0',317,0,'',1,0,'',NULL,0),(2158,'汨罗市','0',317,0,'',1,0,'',NULL,0),(2159,'临湘市','0',317,0,'',1,0,'',NULL,0),(2160,'武陵区','0',318,0,'',1,0,'',NULL,0),(2161,'鼎城区','0',318,0,'',1,0,'',NULL,0),(2162,'安乡县','0',318,0,'',1,0,'',NULL,0),(2163,'汉寿县','0',318,0,'',1,0,'',NULL,0),(2164,'澧县','0',318,0,'',1,0,'',NULL,0),(2165,'临澧县','0',318,0,'',1,0,'',NULL,0),(2166,'桃源县','0',318,0,'',1,0,'',NULL,0),(2167,'石门县','0',318,0,'',1,0,'',NULL,0),(2168,'津市市','0',318,0,'',1,0,'',NULL,0),(2169,'永定区','0',319,0,'',1,0,'',NULL,0),(2170,'武陵源区','0',319,0,'',1,0,'',NULL,0),(2171,'慈利县','0',319,0,'',1,0,'',NULL,0),(2172,'桑植县','0',319,0,'',1,0,'',NULL,0),(2173,'资阳区','0',320,0,'',1,0,'',NULL,0),(2174,'赫山区','0',320,0,'',1,0,'',NULL,0),(2175,'南县','0',320,0,'',1,0,'',NULL,0),(2176,'桃江县','0',320,0,'',1,0,'',NULL,0),(2177,'安化县','0',320,0,'',1,0,'',NULL,0),(2178,'沅江市','0',320,0,'',1,0,'',NULL,0),(2179,'北湖区','0',321,0,'',1,0,'',NULL,0),(2180,'苏仙区','0',321,0,'',1,0,'',NULL,0),(2181,'桂阳县','0',321,0,'',1,0,'',NULL,0),(2182,'宜章县','0',321,0,'',1,0,'',NULL,0),(2183,'永兴县','0',321,0,'',1,0,'',NULL,0),(2184,'嘉禾县','0',321,0,'',1,0,'',NULL,0),(2185,'临武县','0',321,0,'',1,0,'',NULL,0),(2186,'汝城县','0',321,0,'',1,0,'',NULL,0),(2187,'桂东县','0',321,0,'',1,0,'',NULL,0),(2188,'安仁县','0',321,0,'',1,0,'',NULL,0),(2189,'资兴市','0',321,0,'',1,0,'',NULL,0),(2190,'零陵区','0',322,0,'',1,0,'',NULL,0),(2191,'冷水滩区','0',322,0,'',1,0,'',NULL,0),(2192,'祁阳县','0',322,0,'',1,0,'',NULL,0),(2193,'东安县','0',322,0,'',1,0,'',NULL,0),(2194,'双牌县','0',322,0,'',1,0,'',NULL,0),(2195,'道县','0',322,0,'',1,0,'',NULL,0),(2196,'江永县','0',322,0,'',1,0,'',NULL,0),(2197,'宁远县','0',322,0,'',1,0,'',NULL,0),(2198,'蓝山县','0',322,0,'',1,0,'',NULL,0),(2199,'新田县','0',322,0,'',1,0,'',NULL,0),(2200,'江华瑶族自治县','0',322,0,'',1,0,'',NULL,0),(2201,'鹤城区','0',323,0,'',1,0,'',NULL,0),(2202,'中方县','0',323,0,'',1,0,'',NULL,0),(2203,'沅陵县','0',323,0,'',1,0,'',NULL,0),(2204,'辰溪县','0',323,0,'',1,0,'',NULL,0),(2205,'溆浦县','0',323,0,'',1,0,'',NULL,0),(2206,'会同县','0',323,0,'',1,0,'',NULL,0),(2207,'麻阳苗族自治县','0',323,0,'',1,0,'',NULL,0),(2208,'新晃侗族自治县','0',323,0,'',1,0,'',NULL,0),(2209,'芷江侗族自治县','0',323,0,'',1,0,'',NULL,0),(2210,'靖州苗族侗族自治县','0',323,0,'',1,0,'',NULL,0),(2211,'通道侗族自治县','0',323,0,'',1,0,'',NULL,0),(2212,'洪江市','0',323,0,'',1,0,'',NULL,0),(2213,'娄星区','0',324,0,'',1,0,'',NULL,0),(2214,'双峰县','0',324,0,'',1,0,'',NULL,0),(2215,'新化县','0',324,0,'',1,0,'',NULL,0),(2216,'冷水江市','0',324,0,'',1,0,'',NULL,0),(2217,'涟源市','0',324,0,'',1,0,'',NULL,0),(2218,'吉首市','0',325,0,'',1,0,'',NULL,0),(2219,'泸溪县','0',325,0,'',1,0,'',NULL,0),(2220,'凤凰县','0',325,0,'',1,0,'',NULL,0),(2221,'花垣县','0',325,0,'',1,0,'',NULL,0),(2222,'保靖县','0',325,0,'',1,0,'',NULL,0),(2223,'古丈县','0',325,0,'',1,0,'',NULL,0),(2224,'永顺县','0',325,0,'',1,0,'',NULL,0),(2225,'龙山县','0',325,0,'',1,0,'',NULL,0),(2226,'荔湾区','0',326,0,'',1,0,'',NULL,0),(2227,'越秀区','0',326,0,'',1,0,'',NULL,0),(2228,'海珠区','0',326,0,'',1,0,'',NULL,0),(2229,'天河区','0',326,0,'',1,0,'',NULL,0),(2230,'白云区','0',326,0,'',1,0,'',NULL,0),(2231,'黄埔区','0',326,0,'',1,0,'',NULL,0),(2232,'番禺区','0',326,0,'',1,0,'',NULL,0),(2233,'花都区','0',326,0,'',1,0,'',NULL,0),(2234,'南沙区','0',326,0,'',1,0,'',NULL,0),(2235,'萝岗区','0',326,0,'',1,0,'',NULL,0),(2236,'增城市','0',326,0,'',1,0,'',NULL,0),(2237,'从化市','0',326,0,'',1,0,'',NULL,0),(2238,'武江区','0',327,0,'',1,0,'',NULL,0),(2239,'浈江区','0',327,0,'',1,0,'',NULL,0),(2240,'曲江区','0',327,0,'',1,0,'',NULL,0),(2241,'始兴县','0',327,0,'',1,0,'',NULL,0),(2242,'仁化县','0',327,0,'',1,0,'',NULL,0),(2243,'翁源县','0',327,0,'',1,0,'',NULL,0),(2244,'乳源瑶族自治县','0',327,0,'',1,0,'',NULL,0),(2245,'新丰县','0',327,0,'',1,0,'',NULL,0),(2246,'乐昌市','0',327,0,'',1,0,'',NULL,0),(2247,'南雄市','0',327,0,'',1,0,'',NULL,0),(2248,'罗湖区','0',328,0,'',1,0,'',NULL,0),(2249,'福田区','0',328,0,'',1,0,'',NULL,0),(2250,'南山区','0',328,0,'',1,0,'',NULL,0),(2251,'宝安区','0',328,0,'',1,0,'',NULL,0),(2252,'龙岗区','0',328,0,'',1,0,'',NULL,0),(2253,'盐田区','0',328,0,'',1,0,'',NULL,0),(2254,'香洲区','0',329,0,'',1,0,'',NULL,0),(2255,'斗门区','0',329,0,'',1,0,'',NULL,0),(2256,'金湾区','0',329,0,'',1,0,'',NULL,0),(2257,'龙湖区','0',330,0,'',1,0,'',NULL,0),(2258,'金平区','0',330,0,'',1,0,'',NULL,0),(2259,'濠江区','0',330,0,'',1,0,'',NULL,0),(2260,'潮阳区','0',330,0,'',1,0,'',NULL,0),(2261,'潮南区','0',330,0,'',1,0,'',NULL,0),(2262,'澄海区','0',330,0,'',1,0,'',NULL,0),(2263,'南澳县','0',330,0,'',1,0,'',NULL,0),(2264,'禅城区','0',331,0,'',1,0,'',NULL,0),(2265,'南海区','0',331,0,'',1,0,'',NULL,0),(2266,'顺德区','0',331,0,'',1,0,'',NULL,0),(2267,'三水区','0',331,0,'',1,0,'',NULL,0),(2268,'高明区','0',331,0,'',1,0,'',NULL,0),(2269,'蓬江区','0',332,0,'',1,0,'',NULL,0),(2270,'江海区','0',332,0,'',1,0,'',NULL,0),(2271,'新会区','0',332,0,'',1,0,'',NULL,0),(2272,'台山市','0',332,0,'',1,0,'',NULL,0),(2273,'开平市','0',332,0,'',1,0,'',NULL,0),(2274,'鹤山市','0',332,0,'',1,0,'',NULL,0),(2275,'恩平市','0',332,0,'',1,0,'',NULL,0),(2276,'赤坎区','0',333,0,'',1,0,'',NULL,0),(2277,'霞山区','0',333,0,'',1,0,'',NULL,0),(2278,'坡头区','0',333,0,'',1,0,'',NULL,0),(2279,'麻章区','0',333,0,'',1,0,'',NULL,0),(2280,'遂溪县','0',333,0,'',1,0,'',NULL,0),(2281,'徐闻县','0',333,0,'',1,0,'',NULL,0),(2282,'廉江市','0',333,0,'',1,0,'',NULL,0),(2283,'雷州市','0',333,0,'',1,0,'',NULL,0),(2284,'吴川市','0',333,0,'',1,0,'',NULL,0),(2285,'茂南区','0',334,0,'',1,0,'',NULL,0),(2286,'茂港区','0',334,0,'',1,0,'',NULL,0),(2287,'电白县','0',334,0,'',1,0,'',NULL,0),(2288,'高州市','0',334,0,'',1,0,'',NULL,0),(2289,'化州市','0',334,0,'',1,0,'',NULL,0),(2290,'信宜市','0',334,0,'',1,0,'',NULL,0),(2291,'端州区','0',335,0,'',1,0,'',NULL,0),(2292,'鼎湖区','0',335,0,'',1,0,'',NULL,0),(2293,'广宁县','0',335,0,'',1,0,'',NULL,0),(2294,'怀集县','0',335,0,'',1,0,'',NULL,0),(2295,'封开县','0',335,0,'',1,0,'',NULL,0),(2296,'德庆县','0',335,0,'',1,0,'',NULL,0),(2297,'高要市','0',335,0,'',1,0,'',NULL,0),(2298,'四会市','0',335,0,'',1,0,'',NULL,0),(2299,'惠城区','0',336,0,'',1,0,'',NULL,0),(2300,'惠阳区','0',336,0,'',1,0,'',NULL,0),(2301,'博罗县','0',336,0,'',1,0,'',NULL,0),(2302,'惠东县','0',336,0,'',1,0,'',NULL,0),(2303,'龙门县','0',336,0,'',1,0,'',NULL,0),(2304,'梅江区','0',337,0,'',1,0,'',NULL,0),(2305,'梅县','0',337,0,'',1,0,'',NULL,0),(2306,'大埔县','0',337,0,'',1,0,'',NULL,0),(2307,'丰顺县','0',337,0,'',1,0,'',NULL,0),(2308,'五华县','0',337,0,'',1,0,'',NULL,0),(2309,'平远县','0',337,0,'',1,0,'',NULL,0),(2310,'蕉岭县','0',337,0,'',1,0,'',NULL,0),(2311,'兴宁市','0',337,0,'',1,0,'',NULL,0),(2312,'城区','0',338,0,'',1,0,'',NULL,0),(2313,'海丰县','0',338,0,'',1,0,'',NULL,0),(2314,'陆河县','0',338,0,'',1,0,'',NULL,0),(2315,'陆丰市','0',338,0,'',1,0,'',NULL,0),(2316,'源城区','0',339,0,'',1,0,'',NULL,0),(2317,'紫金县','0',339,0,'',1,0,'',NULL,0),(2318,'龙川县','0',339,0,'',1,0,'',NULL,0),(2319,'连平县','0',339,0,'',1,0,'',NULL,0),(2320,'和平县','0',339,0,'',1,0,'',NULL,0),(2321,'东源县','0',339,0,'',1,0,'',NULL,0),(2322,'江城区','0',340,0,'',1,0,'',NULL,0),(2323,'阳西县','0',340,0,'',1,0,'',NULL,0),(2324,'阳东县','0',340,0,'',1,0,'',NULL,0),(2325,'阳春市','0',340,0,'',1,0,'',NULL,0),(2326,'清城区','0',341,0,'',1,0,'',NULL,0),(2327,'佛冈县','0',341,0,'',1,0,'',NULL,0),(2328,'阳山县','0',341,0,'',1,0,'',NULL,0),(2329,'连山壮族瑶族自治县','0',341,0,'',1,0,'',NULL,0),(2330,'连南瑶族自治县','0',341,0,'',1,0,'',NULL,0),(2331,'清新县','0',341,0,'',1,0,'',NULL,0),(2332,'英德市','0',341,0,'',1,0,'',NULL,0),(2333,'连州市','0',341,0,'',1,0,'',NULL,0),(2334,'湘桥区','0',344,0,'',1,0,'',NULL,0),(2335,'潮安县','0',344,0,'',1,0,'',NULL,0),(2336,'饶平县','0',344,0,'',1,0,'',NULL,0),(2337,'榕城区','0',345,0,'',1,0,'',NULL,0),(2338,'揭东县','0',345,0,'',1,0,'',NULL,0),(2339,'揭西县','0',345,0,'',1,0,'',NULL,0),(2340,'惠来县','0',345,0,'',1,0,'',NULL,0),(2341,'普宁市','0',345,0,'',1,0,'',NULL,0),(2342,'云城区','0',346,0,'',1,0,'',NULL,0),(2343,'新兴县','0',346,0,'',1,0,'',NULL,0),(2344,'郁南县','0',346,0,'',1,0,'',NULL,0),(2345,'云安县','0',346,0,'',1,0,'',NULL,0),(2346,'罗定市','0',346,0,'',1,0,'',NULL,0),(2347,'兴宁区','0',347,0,'',1,0,'',NULL,0),(2348,'青秀区','0',347,0,'',1,0,'',NULL,0),(2349,'江南区','0',347,0,'',1,0,'',NULL,0),(2350,'西乡塘区','0',347,0,'',1,0,'',NULL,0),(2351,'良庆区','0',347,0,'',1,0,'',NULL,0),(2352,'邕宁区','0',347,0,'',1,0,'',NULL,0),(2353,'武鸣县','0',347,0,'',1,0,'',NULL,0),(2354,'隆安县','0',347,0,'',1,0,'',NULL,0),(2355,'马山县','0',347,0,'',1,0,'',NULL,0),(2356,'上林县','0',347,0,'',1,0,'',NULL,0),(2357,'宾阳县','0',347,0,'',1,0,'',NULL,0),(2358,'横县','0',347,0,'',1,0,'',NULL,0),(2359,'城中区','0',348,0,'',1,0,'',NULL,0),(2360,'鱼峰区','0',348,0,'',1,0,'',NULL,0),(2361,'柳南区','0',348,0,'',1,0,'',NULL,0),(2362,'柳北区','0',348,0,'',1,0,'',NULL,0),(2363,'柳江县','0',348,0,'',1,0,'',NULL,0),(2364,'柳城县','0',348,0,'',1,0,'',NULL,0),(2365,'鹿寨县','0',348,0,'',1,0,'',NULL,0),(2366,'融安县','0',348,0,'',1,0,'',NULL,0),(2367,'融水苗族自治县','0',348,0,'',1,0,'',NULL,0),(2368,'三江侗族自治县','0',348,0,'',1,0,'',NULL,0),(2369,'秀峰区','0',349,0,'',1,0,'',NULL,0),(2370,'叠彩区','0',349,0,'',1,0,'',NULL,0),(2371,'象山区','0',349,0,'',1,0,'',NULL,0),(2372,'七星区','0',349,0,'',1,0,'',NULL,0),(2373,'雁山区','0',349,0,'',1,0,'',NULL,0),(2374,'阳朔县','0',349,0,'',1,0,'',NULL,0),(2375,'临桂县','0',349,0,'',1,0,'',NULL,0),(2376,'灵川县','0',349,0,'',1,0,'',NULL,0),(2377,'全州县','0',349,0,'',1,0,'',NULL,0),(2378,'兴安县','0',349,0,'',1,0,'',NULL,0),(2379,'永福县','0',349,0,'',1,0,'',NULL,0),(2380,'灌阳县','0',349,0,'',1,0,'',NULL,0),(2381,'龙胜各族自治县','0',349,0,'',1,0,'',NULL,0),(2382,'资源县','0',349,0,'',1,0,'',NULL,0),(2383,'平乐县','0',349,0,'',1,0,'',NULL,0),(2384,'荔蒲县','0',349,0,'',1,0,'',NULL,0),(2385,'恭城瑶族自治县','0',349,0,'',1,0,'',NULL,0),(2386,'万秀区','0',350,0,'',1,0,'',NULL,0),(2387,'蝶山区','0',350,0,'',1,0,'',NULL,0),(2388,'长洲区','0',350,0,'',1,0,'',NULL,0),(2389,'苍梧县','0',350,0,'',1,0,'',NULL,0),(2390,'藤县','0',350,0,'',1,0,'',NULL,0),(2391,'蒙山县','0',350,0,'',1,0,'',NULL,0),(2392,'岑溪市','0',350,0,'',1,0,'',NULL,0),(2393,'海城区','0',351,0,'',1,0,'',NULL,0),(2394,'银海区','0',351,0,'',1,0,'',NULL,0),(2395,'铁山港区','0',351,0,'',1,0,'',NULL,0),(2396,'合浦县','0',351,0,'',1,0,'',NULL,0),(2397,'港口区','0',352,0,'',1,0,'',NULL,0),(2398,'防城区','0',352,0,'',1,0,'',NULL,0),(2399,'上思县','0',352,0,'',1,0,'',NULL,0),(2400,'东兴市','0',352,0,'',1,0,'',NULL,0),(2401,'钦南区','0',353,0,'',1,0,'',NULL,0),(2402,'钦北区','0',353,0,'',1,0,'',NULL,0),(2403,'灵山县','0',353,0,'',1,0,'',NULL,0),(2404,'浦北县','0',353,0,'',1,0,'',NULL,0),(2405,'港北区','0',354,0,'',1,0,'',NULL,0),(2406,'港南区','0',354,0,'',1,0,'',NULL,0),(2407,'覃塘区','0',354,0,'',1,0,'',NULL,0),(2408,'平南县','0',354,0,'',1,0,'',NULL,0),(2409,'桂平市','0',354,0,'',1,0,'',NULL,0),(2410,'玉州区','0',355,0,'',1,0,'',NULL,0),(2411,'容县','0',355,0,'',1,0,'',NULL,0),(2412,'陆川县','0',355,0,'',1,0,'',NULL,0),(2413,'博白县','0',355,0,'',1,0,'',NULL,0),(2414,'兴业县','0',355,0,'',1,0,'',NULL,0),(2415,'北流市','0',355,0,'',1,0,'',NULL,0),(2416,'右江区','0',356,0,'',1,0,'',NULL,0),(2417,'田阳县','0',356,0,'',1,0,'',NULL,0),(2418,'田东县','0',356,0,'',1,0,'',NULL,0),(2419,'平果县','0',356,0,'',1,0,'',NULL,0),(2420,'德保县','0',356,0,'',1,0,'',NULL,0),(2421,'靖西县','0',356,0,'',1,0,'',NULL,0),(2422,'那坡县','0',356,0,'',1,0,'',NULL,0),(2423,'凌云县','0',356,0,'',1,0,'',NULL,0),(2424,'乐业县','0',356,0,'',1,0,'',NULL,0),(2425,'田林县','0',356,0,'',1,0,'',NULL,0),(2426,'西林县','0',356,0,'',1,0,'',NULL,0),(2427,'隆林各族自治县','0',356,0,'',1,0,'',NULL,0),(2428,'八步区','0',357,0,'',1,0,'',NULL,0),(2429,'昭平县','0',357,0,'',1,0,'',NULL,0),(2430,'钟山县','0',357,0,'',1,0,'',NULL,0),(2431,'富川瑶族自治县','0',357,0,'',1,0,'',NULL,0),(2432,'金城江区','0',358,0,'',1,0,'',NULL,0),(2433,'南丹县','0',358,0,'',1,0,'',NULL,0),(2434,'天峨县','0',358,0,'',1,0,'',NULL,0),(2435,'凤山县','0',358,0,'',1,0,'',NULL,0),(2436,'东兰县','0',358,0,'',1,0,'',NULL,0),(2437,'罗城仫佬族自治县','0',358,0,'',1,0,'',NULL,0),(2438,'环江毛南族自治县','0',358,0,'',1,0,'',NULL,0),(2439,'巴马瑶族自治县','0',358,0,'',1,0,'',NULL,0),(2440,'都安瑶族自治县','0',358,0,'',1,0,'',NULL,0),(2441,'大化瑶族自治县','0',358,0,'',1,0,'',NULL,0),(2442,'宜州市','0',358,0,'',1,0,'',NULL,0),(2443,'兴宾区','0',359,0,'',1,0,'',NULL,0),(2444,'忻城县','0',359,0,'',1,0,'',NULL,0),(2445,'象州县','0',359,0,'',1,0,'',NULL,0),(2446,'武宣县','0',359,0,'',1,0,'',NULL,0),(2447,'金秀瑶族自治县','0',359,0,'',1,0,'',NULL,0),(2448,'合山市','0',359,0,'',1,0,'',NULL,0),(2449,'江洲区','0',360,0,'',1,0,'',NULL,0),(2450,'扶绥县','0',360,0,'',1,0,'',NULL,0),(2451,'宁明县','0',360,0,'',1,0,'',NULL,0),(2452,'龙州县','0',360,0,'',1,0,'',NULL,0),(2453,'大新县','0',360,0,'',1,0,'',NULL,0),(2454,'天等县','0',360,0,'',1,0,'',NULL,0),(2455,'凭祥市','0',360,0,'',1,0,'',NULL,0),(2456,'秀英区','0',361,0,'',1,0,'',NULL,0),(2457,'龙华区','0',361,0,'',1,0,'',NULL,0),(2458,'琼山区','0',361,0,'',1,0,'',NULL,0),(2459,'美兰区','0',361,0,'',1,0,'',NULL,0),(2460,'锦江区','0',382,0,'',1,0,'',NULL,0),(2461,'青羊区','0',382,0,'',1,0,'',NULL,0),(2462,'金牛区','0',382,0,'',1,0,'',NULL,0),(2463,'武侯区','0',382,0,'',1,0,'',NULL,0),(2464,'成华区','0',382,0,'',1,0,'',NULL,0),(2465,'龙泉驿区','0',382,0,'',1,0,'',NULL,0),(2466,'青白江区','0',382,0,'',1,0,'',NULL,0),(2467,'新都区','0',382,0,'',1,0,'',NULL,0),(2468,'温江区','0',382,0,'',1,0,'',NULL,0),(2469,'金堂县','0',382,0,'',1,0,'',NULL,0),(2470,'双流县','0',382,0,'',1,0,'',NULL,0),(2471,'郫县','0',382,0,'',1,0,'',NULL,0),(2472,'大邑县','0',382,0,'',1,0,'',NULL,0),(2473,'蒲江县','0',382,0,'',1,0,'',NULL,0),(2474,'新津县','0',382,0,'',1,0,'',NULL,0),(2475,'都江堰市','0',382,0,'',1,0,'',NULL,0),(2476,'彭州市','0',382,0,'',1,0,'',NULL,0),(2477,'邛崃市','0',382,0,'',1,0,'',NULL,0),(2478,'崇州市','0',382,0,'',1,0,'',NULL,0),(2479,'自流井区','0',383,0,'',1,0,'',NULL,0),(2480,'贡井区','0',383,0,'',1,0,'',NULL,0),(2481,'大安区','0',383,0,'',1,0,'',NULL,0),(2482,'沿滩区','0',383,0,'',1,0,'',NULL,0),(2483,'荣县','0',383,0,'',1,0,'',NULL,0),(2484,'富顺县','0',383,0,'',1,0,'',NULL,0),(2485,'东区','0',384,0,'',1,0,'',NULL,0),(2486,'西区','0',384,0,'',1,0,'',NULL,0),(2487,'仁和区','0',384,0,'',1,0,'',NULL,0),(2488,'米易县','0',384,0,'',1,0,'',NULL,0),(2489,'盐边县','0',384,0,'',1,0,'',NULL,0),(2490,'江阳区','0',385,0,'',1,0,'',NULL,0),(2491,'纳溪区','0',385,0,'',1,0,'',NULL,0),(2492,'龙马潭区','0',385,0,'',1,0,'',NULL,0),(2493,'泸县','0',385,0,'',1,0,'',NULL,0),(2494,'合江县','0',385,0,'',1,0,'',NULL,0),(2495,'叙永县','0',385,0,'',1,0,'',NULL,0),(2496,'古蔺县','0',385,0,'',1,0,'',NULL,0),(2497,'旌阳区','0',386,0,'',1,0,'',NULL,0),(2498,'中江县','0',386,0,'',1,0,'',NULL,0),(2499,'罗江县','0',386,0,'',1,0,'',NULL,0),(2500,'广汉市','0',386,0,'',1,0,'',NULL,0),(2501,'什邡市','0',386,0,'',1,0,'',NULL,0),(2502,'绵竹市','0',386,0,'',1,0,'',NULL,0),(2503,'涪城区','0',387,0,'',1,0,'',NULL,0),(2504,'游仙区','0',387,0,'',1,0,'',NULL,0),(2505,'三台县','0',387,0,'',1,0,'',NULL,0),(2506,'盐亭县','0',387,0,'',1,0,'',NULL,0),(2507,'安县','0',387,0,'',1,0,'',NULL,0),(2508,'梓潼县','0',387,0,'',1,0,'',NULL,0),(2509,'北川羌族自治县','0',387,0,'',1,0,'',NULL,0),(2510,'平武县','0',387,0,'',1,0,'',NULL,0),(2511,'江油市','0',387,0,'',1,0,'',NULL,0),(2512,'市中区','0',388,0,'',1,0,'',NULL,0),(2513,'元坝区','0',388,0,'',1,0,'',NULL,0),(2514,'朝天区','0',388,0,'',1,0,'',NULL,0),(2515,'旺苍县','0',388,0,'',1,0,'',NULL,0),(2516,'青川县','0',388,0,'',1,0,'',NULL,0),(2517,'剑阁县','0',388,0,'',1,0,'',NULL,0),(2518,'苍溪县','0',388,0,'',1,0,'',NULL,0),(2519,'船山区','0',389,0,'',1,0,'',NULL,0),(2520,'安居区','0',389,0,'',1,0,'',NULL,0),(2521,'蓬溪县','0',389,0,'',1,0,'',NULL,0),(2522,'射洪县','0',389,0,'',1,0,'',NULL,0),(2523,'大英县','0',389,0,'',1,0,'',NULL,0),(2524,'市中区','0',390,0,'',1,0,'',NULL,0),(2525,'东兴区','0',390,0,'',1,0,'',NULL,0),(2526,'威远县','0',390,0,'',1,0,'',NULL,0),(2527,'资中县','0',390,0,'',1,0,'',NULL,0),(2528,'隆昌县','0',390,0,'',1,0,'',NULL,0),(2529,'市中区','0',391,0,'',1,0,'',NULL,0),(2530,'沙湾区','0',391,0,'',1,0,'',NULL,0),(2531,'五通桥区','0',391,0,'',1,0,'',NULL,0),(2532,'金口河区','0',391,0,'',1,0,'',NULL,0),(2533,'犍为县','0',391,0,'',1,0,'',NULL,0),(2534,'井研县','0',391,0,'',1,0,'',NULL,0),(2535,'夹江县','0',391,0,'',1,0,'',NULL,0),(2536,'沐川县','0',391,0,'',1,0,'',NULL,0),(2537,'峨边彝族自治县','0',391,0,'',1,0,'',NULL,0),(2538,'马边彝族自治县','0',391,0,'',1,0,'',NULL,0),(2539,'峨眉山市','0',391,0,'',1,0,'',NULL,0),(2540,'顺庆区','0',392,0,'',1,0,'',NULL,0),(2541,'高坪区','0',392,0,'',1,0,'',NULL,0),(2542,'嘉陵区','0',392,0,'',1,0,'',NULL,0),(2543,'南部县','0',392,0,'',1,0,'',NULL,0),(2544,'营山县','0',392,0,'',1,0,'',NULL,0),(2545,'蓬安县','0',392,0,'',1,0,'',NULL,0),(2546,'仪陇县','0',392,0,'',1,0,'',NULL,0),(2547,'西充县','0',392,0,'',1,0,'',NULL,0),(2548,'阆中市','0',392,0,'',1,0,'',NULL,0),(2549,'东坡区','0',393,0,'',1,0,'',NULL,0),(2550,'仁寿县','0',393,0,'',1,0,'',NULL,0),(2551,'彭山县','0',393,0,'',1,0,'',NULL,0),(2552,'洪雅县','0',393,0,'',1,0,'',NULL,0),(2553,'丹棱县','0',393,0,'',1,0,'',NULL,0),(2554,'青神县','0',393,0,'',1,0,'',NULL,0),(2555,'翠屏区','0',394,0,'',1,0,'',NULL,0),(2556,'宜宾县','0',394,0,'',1,0,'',NULL,0),(2557,'南溪县','0',394,0,'',1,0,'',NULL,0),(2558,'江安县','0',394,0,'',1,0,'',NULL,0),(2559,'长宁县','0',394,0,'',1,0,'',NULL,0),(2560,'高县','0',394,0,'',1,0,'',NULL,0),(2561,'珙县','0',394,0,'',1,0,'',NULL,0),(2562,'筠连县','0',394,0,'',1,0,'',NULL,0),(2563,'兴文县','0',394,0,'',1,0,'',NULL,0),(2564,'屏山县','0',394,0,'',1,0,'',NULL,0),(2565,'广安区','0',395,0,'',1,0,'',NULL,0),(2566,'岳池县','0',395,0,'',1,0,'',NULL,0),(2567,'武胜县','0',395,0,'',1,0,'',NULL,0),(2568,'邻水县','0',395,0,'',1,0,'',NULL,0),(2569,'华蓥市','0',395,0,'',1,0,'',NULL,0),(2570,'通川区','0',396,0,'',1,0,'',NULL,0),(2571,'达县','0',396,0,'',1,0,'',NULL,0),(2572,'宣汉县','0',396,0,'',1,0,'',NULL,0),(2573,'开江县','0',396,0,'',1,0,'',NULL,0),(2574,'大竹县','0',396,0,'',1,0,'',NULL,0),(2575,'渠县','0',396,0,'',1,0,'',NULL,0),(2576,'万源市','0',396,0,'',1,0,'',NULL,0),(2577,'雨城区','0',397,0,'',1,0,'',NULL,0),(2578,'名山县','0',397,0,'',1,0,'',NULL,0),(2579,'荥经县','0',397,0,'',1,0,'',NULL,0),(2580,'汉源县','0',397,0,'',1,0,'',NULL,0),(2581,'石棉县','0',397,0,'',1,0,'',NULL,0),(2582,'天全县','0',397,0,'',1,0,'',NULL,0),(2583,'芦山县','0',397,0,'',1,0,'',NULL,0),(2584,'宝兴县','0',397,0,'',1,0,'',NULL,0),(2585,'巴州区','0',398,0,'',1,0,'',NULL,0),(2586,'通江县','0',398,0,'',1,0,'',NULL,0),(2587,'南江县','0',398,0,'',1,0,'',NULL,0),(2588,'平昌县','0',398,0,'',1,0,'',NULL,0),(2589,'雁江区','0',399,0,'',1,0,'',NULL,0),(2590,'安岳县','0',399,0,'',1,0,'',NULL,0),(2591,'乐至县','0',399,0,'',1,0,'',NULL,0),(2592,'简阳市','0',399,0,'',1,0,'',NULL,0),(2593,'汶川县','0',400,0,'',1,0,'',NULL,0),(2594,'理县','0',400,0,'',1,0,'',NULL,0),(2595,'茂县','0',400,0,'',1,0,'',NULL,0),(2596,'松潘县','0',400,0,'',1,0,'',NULL,0),(2597,'九寨沟县','0',400,0,'',1,0,'',NULL,0),(2598,'金川县','0',400,0,'',1,0,'',NULL,0),(2599,'小金县','0',400,0,'',1,0,'',NULL,0),(2600,'黑水县','0',400,0,'',1,0,'',NULL,0),(2601,'马尔康县','0',400,0,'',1,0,'',NULL,0),(2602,'壤塘县','0',400,0,'',1,0,'',NULL,0),(2603,'阿坝县','0',400,0,'',1,0,'',NULL,0),(2604,'若尔盖县','0',400,0,'',1,0,'',NULL,0),(2605,'红原县','0',400,0,'',1,0,'',NULL,0),(2606,'康定县','0',401,0,'',1,0,'',NULL,0),(2607,'泸定县','0',401,0,'',1,0,'',NULL,0),(2608,'丹巴县','0',401,0,'',1,0,'',NULL,0),(2609,'九龙县','0',401,0,'',1,0,'',NULL,0),(2610,'雅江县','0',401,0,'',1,0,'',NULL,0),(2611,'道孚县','0',401,0,'',1,0,'',NULL,0),(2612,'炉霍县','0',401,0,'',1,0,'',NULL,0),(2613,'甘孜县','0',401,0,'',1,0,'',NULL,0),(2614,'新龙县','0',401,0,'',1,0,'',NULL,0),(2615,'德格县','0',401,0,'',1,0,'',NULL,0),(2616,'白玉县','0',401,0,'',1,0,'',NULL,0),(2617,'石渠县','0',401,0,'',1,0,'',NULL,0),(2618,'色达县','0',401,0,'',1,0,'',NULL,0),(2619,'理塘县','0',401,0,'',1,0,'',NULL,0),(2620,'巴塘县','0',401,0,'',1,0,'',NULL,0),(2621,'乡城县','0',401,0,'',1,0,'',NULL,0),(2622,'稻城县','0',401,0,'',1,0,'',NULL,0),(2623,'得荣县','0',401,0,'',1,0,'',NULL,0),(2624,'西昌市','0',402,0,'',1,0,'',NULL,0),(2625,'木里藏族自治县','0',402,0,'',1,0,'',NULL,0),(2626,'盐源县','0',402,0,'',1,0,'',NULL,0),(2627,'德昌县','0',402,0,'',1,0,'',NULL,0),(2628,'会理县','0',402,0,'',1,0,'',NULL,0),(2629,'会东县','0',402,0,'',1,0,'',NULL,0),(2630,'宁南县','0',402,0,'',1,0,'',NULL,0),(2631,'普格县','0',402,0,'',1,0,'',NULL,0),(2632,'布拖县','0',402,0,'',1,0,'',NULL,0),(2633,'金阳县','0',402,0,'',1,0,'',NULL,0),(2634,'昭觉县','0',402,0,'',1,0,'',NULL,0),(2635,'喜德县','0',402,0,'',1,0,'',NULL,0),(2636,'冕宁县','0',402,0,'',1,0,'',NULL,0),(2637,'越西县','0',402,0,'',1,0,'',NULL,0),(2638,'甘洛县','0',402,0,'',1,0,'',NULL,0),(2639,'美姑县','0',402,0,'',1,0,'',NULL,0),(2640,'雷波县','0',402,0,'',1,0,'',NULL,0),(2641,'南明区','0',403,0,'',1,0,'',NULL,0),(2642,'云岩区','0',403,0,'',1,0,'',NULL,0),(2643,'花溪区','0',403,0,'',1,0,'',NULL,0),(2644,'乌当区','0',403,0,'',1,0,'',NULL,0),(2645,'白云区','0',403,0,'',1,0,'',NULL,0),(2646,'小河区','0',403,0,'',1,0,'',NULL,0),(2647,'开阳县','0',403,0,'',1,0,'',NULL,0),(2648,'息烽县','0',403,0,'',1,0,'',NULL,0),(2649,'修文县','0',403,0,'',1,0,'',NULL,0),(2650,'清镇市','0',403,0,'',1,0,'',NULL,0),(2651,'钟山区','0',404,0,'',1,0,'',NULL,0),(2652,'六枝特区','0',404,0,'',1,0,'',NULL,0),(2653,'水城县','0',404,0,'',1,0,'',NULL,0),(2654,'盘县','0',404,0,'',1,0,'',NULL,0),(2655,'红花岗区','0',405,0,'',1,0,'',NULL,0),(2656,'汇川区','0',405,0,'',1,0,'',NULL,0),(2657,'遵义县','0',405,0,'',1,0,'',NULL,0),(2658,'桐梓县','0',405,0,'',1,0,'',NULL,0),(2659,'绥阳县','0',405,0,'',1,0,'',NULL,0),(2660,'正安县','0',405,0,'',1,0,'',NULL,0),(2661,'道真仡佬族苗族自治县','0',405,0,'',1,0,'',NULL,0),(2662,'务川仡佬族苗族自治县','0',405,0,'',1,0,'',NULL,0),(2663,'凤冈县','0',405,0,'',1,0,'',NULL,0),(2664,'湄潭县','0',405,0,'',1,0,'',NULL,0),(2665,'余庆县','0',405,0,'',1,0,'',NULL,0),(2666,'习水县','0',405,0,'',1,0,'',NULL,0),(2667,'赤水市','0',405,0,'',1,0,'',NULL,0),(2668,'仁怀市','0',405,0,'',1,0,'',NULL,0),(2669,'西秀区','0',406,0,'',1,0,'',NULL,0),(2670,'平坝县','0',406,0,'',1,0,'',NULL,0),(2671,'普定县','0',406,0,'',1,0,'',NULL,0),(2672,'镇宁布依族苗族自治县','0',406,0,'',1,0,'',NULL,0),(2673,'关岭布依族苗族自治县','0',406,0,'',1,0,'',NULL,0),(2674,'紫云苗族布依族自治县','0',406,0,'',1,0,'',NULL,0),(2675,'铜仁市','0',407,0,'',1,0,'',NULL,0),(2676,'江口县','0',407,0,'',1,0,'',NULL,0),(2677,'玉屏侗族自治县','0',407,0,'',1,0,'',NULL,0),(2678,'石阡县','0',407,0,'',1,0,'',NULL,0),(2679,'思南县','0',407,0,'',1,0,'',NULL,0),(2680,'印江土家族苗族自治县','0',407,0,'',1,0,'',NULL,0),(2681,'德江县','0',407,0,'',1,0,'',NULL,0),(2682,'沿河土家族自治县','0',407,0,'',1,0,'',NULL,0),(2683,'松桃苗族自治县','0',407,0,'',1,0,'',NULL,0),(2684,'万山特区','0',407,0,'',1,0,'',NULL,0),(2685,'兴义市','0',408,0,'',1,0,'',NULL,0),(2686,'兴仁县','0',408,0,'',1,0,'',NULL,0),(2687,'普安县','0',408,0,'',1,0,'',NULL,0),(2688,'晴隆县','0',408,0,'',1,0,'',NULL,0),(2689,'贞丰县','0',408,0,'',1,0,'',NULL,0),(2690,'望谟县','0',408,0,'',1,0,'',NULL,0),(2691,'册亨县','0',408,0,'',1,0,'',NULL,0),(2692,'安龙县','0',408,0,'',1,0,'',NULL,0),(2693,'毕节市','0',409,0,'',1,0,'',NULL,0),(2694,'大方县','0',409,0,'',1,0,'',NULL,0),(2695,'黔西县','0',409,0,'',1,0,'',NULL,0),(2696,'金沙县','0',409,0,'',1,0,'',NULL,0),(2697,'织金县','0',409,0,'',1,0,'',NULL,0),(2698,'纳雍县','0',409,0,'',1,0,'',NULL,0),(2699,'威宁彝族回族苗族自治县','0',409,0,'',1,0,'',NULL,0),(2700,'赫章县','0',409,0,'',1,0,'',NULL,0),(2701,'凯里市','0',410,0,'',1,0,'',NULL,0),(2702,'黄平县','0',410,0,'',1,0,'',NULL,0),(2703,'施秉县','0',410,0,'',1,0,'',NULL,0),(2704,'三穗县','0',410,0,'',1,0,'',NULL,0),(2705,'镇远县','0',410,0,'',1,0,'',NULL,0),(2706,'岑巩县','0',410,0,'',1,0,'',NULL,0),(2707,'天柱县','0',410,0,'',1,0,'',NULL,0),(2708,'锦屏县','0',410,0,'',1,0,'',NULL,0),(2709,'剑河县','0',410,0,'',1,0,'',NULL,0),(2710,'台江县','0',410,0,'',1,0,'',NULL,0),(2711,'黎平县','0',410,0,'',1,0,'',NULL,0),(2712,'榕江县','0',410,0,'',1,0,'',NULL,0),(2713,'从江县','0',410,0,'',1,0,'',NULL,0),(2714,'雷山县','0',410,0,'',1,0,'',NULL,0),(2715,'麻江县','0',410,0,'',1,0,'',NULL,0),(2716,'丹寨县','0',410,0,'',1,0,'',NULL,0),(2717,'都匀市','0',411,0,'',1,0,'',NULL,0),(2718,'福泉市','0',411,0,'',1,0,'',NULL,0),(2719,'荔波县','0',411,0,'',1,0,'',NULL,0),(2720,'贵定县','0',411,0,'',1,0,'',NULL,0),(2721,'瓮安县','0',411,0,'',1,0,'',NULL,0),(2722,'独山县','0',411,0,'',1,0,'',NULL,0),(2723,'平塘县','0',411,0,'',1,0,'',NULL,0),(2724,'罗甸县','0',411,0,'',1,0,'',NULL,0),(2725,'长顺县','0',411,0,'',1,0,'',NULL,0),(2726,'龙里县','0',411,0,'',1,0,'',NULL,0),(2727,'惠水县','0',411,0,'',1,0,'',NULL,0),(2728,'三都水族自治县','0',411,0,'',1,0,'',NULL,0),(2729,'五华区','0',412,0,'',1,0,'',NULL,0),(2730,'盘龙区','0',412,0,'',1,0,'',NULL,0),(2731,'官渡区','0',412,0,'',1,0,'',NULL,0),(2732,'西山区','0',412,0,'',1,0,'',NULL,0),(2733,'东川区','0',412,0,'',1,0,'',NULL,0),(2734,'呈贡县','0',412,0,'',1,0,'',NULL,0),(2735,'晋宁县','0',412,0,'',1,0,'',NULL,0),(2736,'富民县','0',412,0,'',1,0,'',NULL,0),(2737,'宜良县','0',412,0,'',1,0,'',NULL,0),(2738,'石林彝族自治县','0',412,0,'',1,0,'',NULL,0),(2739,'嵩明县','0',412,0,'',1,0,'',NULL,0),(2740,'禄劝彝族苗族自治县','0',412,0,'',1,0,'',NULL,0),(2741,'寻甸回族彝族自治县','0',412,0,'',1,0,'',NULL,0),(2742,'安宁市','0',412,0,'',1,0,'',NULL,0),(2743,'麒麟区','0',413,0,'',1,0,'',NULL,0),(2744,'马龙县','0',413,0,'',1,0,'',NULL,0),(2745,'陆良县','0',413,0,'',1,0,'',NULL,0),(2746,'师宗县','0',413,0,'',1,0,'',NULL,0),(2747,'罗平县','0',413,0,'',1,0,'',NULL,0),(2748,'富源县','0',413,0,'',1,0,'',NULL,0),(2749,'会泽县','0',413,0,'',1,0,'',NULL,0),(2750,'沾益县','0',413,0,'',1,0,'',NULL,0),(2751,'宣威市','0',413,0,'',1,0,'',NULL,0),(2752,'红塔区','0',414,0,'',1,0,'',NULL,0),(2753,'江川县','0',414,0,'',1,0,'',NULL,0),(2754,'澄江县','0',414,0,'',1,0,'',NULL,0),(2755,'通海县','0',414,0,'',1,0,'',NULL,0),(2756,'华宁县','0',414,0,'',1,0,'',NULL,0),(2757,'易门县','0',414,0,'',1,0,'',NULL,0),(2758,'峨山彝族自治县','0',414,0,'',1,0,'',NULL,0),(2759,'新平彝族傣族自治县','0',414,0,'',1,0,'',NULL,0),(2760,'元江哈尼族彝族傣族自治县','0',414,0,'',1,0,'',NULL,0),(2761,'隆阳区','0',415,0,'',1,0,'',NULL,0),(2762,'施甸县','0',415,0,'',1,0,'',NULL,0),(2763,'腾冲县','0',415,0,'',1,0,'',NULL,0),(2764,'龙陵县','0',415,0,'',1,0,'',NULL,0),(2765,'昌宁县','0',415,0,'',1,0,'',NULL,0),(2766,'昭阳区','0',416,0,'',1,0,'',NULL,0),(2767,'鲁甸县','0',416,0,'',1,0,'',NULL,0),(2768,'巧家县','0',416,0,'',1,0,'',NULL,0),(2769,'盐津县','0',416,0,'',1,0,'',NULL,0),(2770,'大关县','0',416,0,'',1,0,'',NULL,0),(2771,'永善县','0',416,0,'',1,0,'',NULL,0),(2772,'绥江县','0',416,0,'',1,0,'',NULL,0),(2773,'镇雄县','0',416,0,'',1,0,'',NULL,0),(2774,'彝良县','0',416,0,'',1,0,'',NULL,0),(2775,'威信县','0',416,0,'',1,0,'',NULL,0),(2776,'水富县','0',416,0,'',1,0,'',NULL,0),(2777,'古城区','0',417,0,'',1,0,'',NULL,0),(2778,'玉龙纳西族自治县','0',417,0,'',1,0,'',NULL,0),(2779,'永胜县','0',417,0,'',1,0,'',NULL,0),(2780,'华坪县','0',417,0,'',1,0,'',NULL,0),(2781,'宁蒗彝族自治县','0',417,0,'',1,0,'',NULL,0),(2782,'翠云区','0',418,0,'',1,0,'',NULL,0),(2783,'普洱哈尼族彝族自治县','0',418,0,'',1,0,'',NULL,0),(2784,'墨江哈尼族自治县','0',418,0,'',1,0,'',NULL,0),(2785,'景东彝族自治县','0',418,0,'',1,0,'',NULL,0),(2786,'景谷傣族彝族自治县','0',418,0,'',1,0,'',NULL,0),(2787,'镇沅彝族哈尼族拉祜族自治县','0',418,0,'',1,0,'',NULL,0),(2788,'江城哈尼族彝族自治县','0',418,0,'',1,0,'',NULL,0),(2789,'孟连傣族拉祜族佤族自治县','0',418,0,'',1,0,'',NULL,0),(2790,'澜沧拉祜族自治县','0',418,0,'',1,0,'',NULL,0),(2791,'西盟佤族自治县','0',418,0,'',1,0,'',NULL,0),(2792,'临翔区','0',419,0,'',1,0,'',NULL,0),(2793,'凤庆县','0',419,0,'',1,0,'',NULL,0),(2794,'云县','0',419,0,'',1,0,'',NULL,0),(2795,'永德县','0',419,0,'',1,0,'',NULL,0),(2796,'镇康县','0',419,0,'',1,0,'',NULL,0),(2797,'双江拉祜族佤族布朗族傣族自治县','0',419,0,'',1,0,'',NULL,0),(2798,'耿马傣族佤族自治县','0',419,0,'',1,0,'',NULL,0),(2799,'沧源佤族自治县','0',420,0,'',1,0,'',NULL,0),(2800,'楚雄市','0',420,0,'',1,0,'',NULL,0),(2801,'双柏县','0',420,0,'',1,0,'',NULL,0),(2802,'牟定县','0',420,0,'',1,0,'',NULL,0),(2803,'南华县','0',420,0,'',1,0,'',NULL,0),(2804,'姚安县','0',420,0,'',1,0,'',NULL,0),(2805,'大姚县','0',420,0,'',1,0,'',NULL,0),(2806,'永仁县','0',420,0,'',1,0,'',NULL,0),(2807,'元谋县','0',420,0,'',1,0,'',NULL,0),(2808,'武定县','0',420,0,'',1,0,'',NULL,0),(2809,'禄丰县','0',420,0,'',1,0,'',NULL,0),(2810,'个旧市','0',421,0,'',1,0,'',NULL,0),(2811,'开远市','0',421,0,'',1,0,'',NULL,0),(2812,'蒙自县','0',421,0,'',1,0,'',NULL,0),(2813,'屏边苗族自治县','0',421,0,'',1,0,'',NULL,0),(2814,'建水县','0',421,0,'',1,0,'',NULL,0),(2815,'石屏县','0',421,0,'',1,0,'',NULL,0),(2816,'弥勒县','0',421,0,'',1,0,'',NULL,0),(2817,'泸西县','0',421,0,'',1,0,'',NULL,0),(2818,'元阳县','0',421,0,'',1,0,'',NULL,0),(2819,'红河县','0',421,0,'',1,0,'',NULL,0),(2820,'金平苗族瑶族傣族自治县','0',421,0,'',1,0,'',NULL,0),(2821,'绿春县','0',421,0,'',1,0,'',NULL,0),(2822,'河口瑶族自治县','0',421,0,'',1,0,'',NULL,0),(2823,'文山县','0',422,0,'',1,0,'',NULL,0),(2824,'砚山县','0',422,0,'',1,0,'',NULL,0),(2825,'西畴县','0',422,0,'',1,0,'',NULL,0),(2826,'麻栗坡县','0',422,0,'',1,0,'',NULL,0),(2827,'马关县','0',422,0,'',1,0,'',NULL,0),(2828,'丘北县','0',422,0,'',1,0,'',NULL,0),(2829,'广南县','0',422,0,'',1,0,'',NULL,0),(2830,'富宁县','0',422,0,'',1,0,'',NULL,0),(2831,'景洪市','0',423,0,'',1,0,'',NULL,0),(2832,'勐海县','0',423,0,'',1,0,'',NULL,0),(2833,'勐腊县','0',423,0,'',1,0,'',NULL,0),(2834,'大理市','0',424,0,'',1,0,'',NULL,0),(2835,'漾濞彝族自治县','0',424,0,'',1,0,'',NULL,0),(2836,'祥云县','0',424,0,'',1,0,'',NULL,0),(2837,'宾川县','0',424,0,'',1,0,'',NULL,0),(2838,'弥渡县','0',424,0,'',1,0,'',NULL,0),(2839,'南涧彝族自治县','0',424,0,'',1,0,'',NULL,0),(2840,'巍山彝族回族自治县','0',424,0,'',1,0,'',NULL,0),(2841,'永平县','0',424,0,'',1,0,'',NULL,0),(2842,'云龙县','0',424,0,'',1,0,'',NULL,0),(2843,'洱源县','0',424,0,'',1,0,'',NULL,0),(2844,'剑川县','0',424,0,'',1,0,'',NULL,0),(2845,'鹤庆县','0',424,0,'',1,0,'',NULL,0),(2846,'瑞丽市','0',425,0,'',1,0,'',NULL,0),(2847,'潞西市','0',425,0,'',1,0,'',NULL,0),(2848,'梁河县','0',425,0,'',1,0,'',NULL,0),(2849,'盈江县','0',425,0,'',1,0,'',NULL,0),(2850,'陇川县','0',425,0,'',1,0,'',NULL,0),(2851,'泸水县','0',426,0,'',1,0,'',NULL,0),(2852,'福贡县','0',426,0,'',1,0,'',NULL,0),(2853,'贡山独龙族怒族自治县','0',426,0,'',1,0,'',NULL,0),(2854,'兰坪白族普米族自治县','0',426,0,'',1,0,'',NULL,0),(2855,'香格里拉县','0',427,0,'',1,0,'',NULL,0),(2856,'德钦县','0',427,0,'',1,0,'',NULL,0),(2857,'维西傈僳族自治县','0',427,0,'',1,0,'',NULL,0),(2858,'城关区','0',428,0,'',1,0,'',NULL,0),(2859,'林周县','0',428,0,'',1,0,'',NULL,0),(2860,'当雄县','0',428,0,'',1,0,'',NULL,0),(2861,'尼木县','0',428,0,'',1,0,'',NULL,0),(2862,'曲水县','0',428,0,'',1,0,'',NULL,0),(2863,'堆龙德庆县','0',428,0,'',1,0,'',NULL,0),(2864,'达孜县','0',428,0,'',1,0,'',NULL,0),(2865,'墨竹工卡县','0',428,0,'',1,0,'',NULL,0),(2866,'昌都县','0',429,0,'',1,0,'',NULL,0),(2867,'江达县','0',429,0,'',1,0,'',NULL,0),(2868,'贡觉县','0',429,0,'',1,0,'',NULL,0),(2869,'类乌齐县','0',429,0,'',1,0,'',NULL,0),(2870,'丁青县','0',429,0,'',1,0,'',NULL,0),(2871,'察雅县','0',429,0,'',1,0,'',NULL,0),(2872,'八宿县','0',429,0,'',1,0,'',NULL,0),(2873,'左贡县','0',429,0,'',1,0,'',NULL,0),(2874,'芒康县','0',429,0,'',1,0,'',NULL,0),(2875,'洛隆县','0',429,0,'',1,0,'',NULL,0),(2876,'边坝县','0',429,0,'',1,0,'',NULL,0),(2877,'乃东县','0',430,0,'',1,0,'',NULL,0),(2878,'扎囊县','0',430,0,'',1,0,'',NULL,0),(2879,'贡嘎县','0',430,0,'',1,0,'',NULL,0),(2880,'桑日县','0',430,0,'',1,0,'',NULL,0),(2881,'琼结县','0',430,0,'',1,0,'',NULL,0),(2882,'曲松县','0',430,0,'',1,0,'',NULL,0),(2883,'措美县','0',430,0,'',1,0,'',NULL,0),(2884,'洛扎县','0',430,0,'',1,0,'',NULL,0),(2885,'加查县','0',430,0,'',1,0,'',NULL,0),(2886,'隆子县','0',430,0,'',1,0,'',NULL,0),(2887,'错那县','0',430,0,'',1,0,'',NULL,0),(2888,'浪卡子县','0',430,0,'',1,0,'',NULL,0),(2889,'日喀则市','0',431,0,'',1,0,'',NULL,0),(2890,'南木林县','0',431,0,'',1,0,'',NULL,0),(2891,'江孜县','0',431,0,'',1,0,'',NULL,0),(2892,'定日县','0',431,0,'',1,0,'',NULL,0),(2893,'萨迦县','0',431,0,'',1,0,'',NULL,0),(2894,'拉孜县','0',431,0,'',1,0,'',NULL,0),(2895,'昂仁县','0',431,0,'',1,0,'',NULL,0),(2896,'谢通门县','0',431,0,'',1,0,'',NULL,0),(2897,'白朗县','0',431,0,'',1,0,'',NULL,0),(2898,'仁布县','0',431,0,'',1,0,'',NULL,0),(2899,'康马县','0',431,0,'',1,0,'',NULL,0),(2900,'定结县','0',431,0,'',1,0,'',NULL,0),(2901,'仲巴县','0',431,0,'',1,0,'',NULL,0),(2902,'亚东县','0',431,0,'',1,0,'',NULL,0),(2903,'吉隆县','0',431,0,'',1,0,'',NULL,0),(2904,'聂拉木县','0',431,0,'',1,0,'',NULL,0),(2905,'萨嘎县','0',431,0,'',1,0,'',NULL,0),(2906,'岗巴县','0',431,0,'',1,0,'',NULL,0),(2907,'那曲县','0',432,0,'',1,0,'',NULL,0),(2908,'嘉黎县','0',432,0,'',1,0,'',NULL,0),(2909,'比如县','0',432,0,'',1,0,'',NULL,0),(2910,'聂荣县','0',432,0,'',1,0,'',NULL,0),(2911,'安多县','0',432,0,'',1,0,'',NULL,0),(2912,'申扎县','0',432,0,'',1,0,'',NULL,0),(2913,'索县','0',432,0,'',1,0,'',NULL,0),(2914,'班戈县','0',432,0,'',1,0,'',NULL,0),(2915,'巴青县','0',432,0,'',1,0,'',NULL,0),(2916,'尼玛县','0',432,0,'',1,0,'',NULL,0),(2917,'普兰县','0',433,0,'',1,0,'',NULL,0),(2918,'札达县','0',433,0,'',1,0,'',NULL,0),(2919,'噶尔县','0',433,0,'',1,0,'',NULL,0),(2920,'日土县','0',433,0,'',1,0,'',NULL,0),(2921,'革吉县','0',433,0,'',1,0,'',NULL,0),(2922,'改则县','0',433,0,'',1,0,'',NULL,0),(2923,'措勤县','0',433,0,'',1,0,'',NULL,0),(2924,'林芝县','0',434,0,'',1,0,'',NULL,0),(2925,'工布江达县','0',434,0,'',1,0,'',NULL,0),(2926,'米林县','0',434,0,'',1,0,'',NULL,0),(2927,'墨脱县','0',434,0,'',1,0,'',NULL,0),(2928,'波密县','0',434,0,'',1,0,'',NULL,0),(2929,'察隅县','0',434,0,'',1,0,'',NULL,0),(2930,'朗县','0',434,0,'',1,0,'',NULL,0),(2931,'新城区','0',435,0,'',1,0,'',NULL,0),(2932,'碑林区','0',435,0,'',1,0,'',NULL,0),(2933,'莲湖区','0',435,0,'',1,0,'',NULL,0),(2934,'灞桥区','0',435,0,'',1,0,'',NULL,0),(2935,'未央区','0',435,0,'',1,0,'',NULL,0),(2936,'雁塔区','0',435,0,'',1,0,'',NULL,0),(2937,'阎良区','0',435,0,'',1,0,'',NULL,0),(2938,'临潼区','0',435,0,'',1,0,'',NULL,0),(2939,'长安区','0',435,0,'',1,0,'',NULL,0),(2940,'蓝田县','0',435,0,'',1,0,'',NULL,0),(2941,'周至县','0',435,0,'',1,0,'',NULL,0),(2942,'户县','0',435,0,'',1,0,'',NULL,0),(2943,'高陵县','0',435,0,'',1,0,'',NULL,0),(2944,'王益区','0',436,0,'',1,0,'',NULL,0),(2945,'印台区','0',436,0,'',1,0,'',NULL,0),(2946,'耀州区','0',436,0,'',1,0,'',NULL,0),(2947,'宜君县','0',436,0,'',1,0,'',NULL,0),(2948,'渭滨区','0',437,0,'',1,0,'',NULL,0),(2949,'金台区','0',437,0,'',1,0,'',NULL,0),(2950,'陈仓区','0',437,0,'',1,0,'',NULL,0),(2951,'凤翔县','0',437,0,'',1,0,'',NULL,0),(2952,'岐山县','0',437,0,'',1,0,'',NULL,0),(2953,'扶风县','0',437,0,'',1,0,'',NULL,0),(2954,'眉县','0',437,0,'',1,0,'',NULL,0),(2955,'陇县','0',437,0,'',1,0,'',NULL,0),(2956,'千阳县','0',437,0,'',1,0,'',NULL,0),(2957,'麟游县','0',437,0,'',1,0,'',NULL,0),(2958,'凤县','0',437,0,'',1,0,'',NULL,0),(2959,'太白县','0',437,0,'',1,0,'',NULL,0),(2960,'秦都区','0',438,0,'',1,0,'',NULL,0),(2961,'杨凌区','0',438,0,'',1,0,'',NULL,0),(2962,'渭城区','0',438,0,'',1,0,'',NULL,0),(2963,'三原县','0',438,0,'',1,0,'',NULL,0),(2964,'泾阳县','0',438,0,'',1,0,'',NULL,0),(2965,'乾县','0',438,0,'',1,0,'',NULL,0),(2966,'礼泉县','0',438,0,'',1,0,'',NULL,0),(2967,'永寿县','0',438,0,'',1,0,'',NULL,0),(2968,'彬县','0',438,0,'',1,0,'',NULL,0),(2969,'长武县','0',438,0,'',1,0,'',NULL,0),(2970,'旬邑县','0',438,0,'',1,0,'',NULL,0),(2971,'淳化县','0',438,0,'',1,0,'',NULL,0),(2972,'武功县','0',438,0,'',1,0,'',NULL,0),(2973,'兴平市','0',438,0,'',1,0,'',NULL,0),(2974,'临渭区','0',439,0,'',1,0,'',NULL,0),(2975,'华县','0',439,0,'',1,0,'',NULL,0),(2976,'潼关县','0',439,0,'',1,0,'',NULL,0),(2977,'大荔县','0',439,0,'',1,0,'',NULL,0),(2978,'合阳县','0',439,0,'',1,0,'',NULL,0),(2979,'澄城县','0',439,0,'',1,0,'',NULL,0),(2980,'蒲城县','0',439,0,'',1,0,'',NULL,0),(2981,'白水县','0',439,0,'',1,0,'',NULL,0),(2982,'富平县','0',439,0,'',1,0,'',NULL,0),(2983,'韩城市','0',439,0,'',1,0,'',NULL,0),(2984,'华阴市','0',439,0,'',1,0,'',NULL,0),(2985,'宝塔区','0',440,0,'',1,0,'',NULL,0),(2986,'延长县','0',440,0,'',1,0,'',NULL,0),(2987,'延川县','0',440,0,'',1,0,'',NULL,0),(2988,'子长县','0',440,0,'',1,0,'',NULL,0),(2989,'安塞县','0',440,0,'',1,0,'',NULL,0),(2990,'志丹县','0',440,0,'',1,0,'',NULL,0),(2991,'吴起县','0',440,0,'',1,0,'',NULL,0),(2992,'甘泉县','0',440,0,'',1,0,'',NULL,0),(2993,'富县','0',440,0,'',1,0,'',NULL,0),(2994,'洛川县','0',440,0,'',1,0,'',NULL,0),(2995,'宜川县','0',440,0,'',1,0,'',NULL,0),(2996,'黄龙县','0',440,0,'',1,0,'',NULL,0),(2997,'黄陵县','0',440,0,'',1,0,'',NULL,0),(2998,'汉台区','0',441,0,'',1,0,'',NULL,0),(2999,'南郑县','0',441,0,'',1,0,'',NULL,0),(3000,'城固县','0',441,0,'',1,0,'',NULL,0),(3001,'洋县','0',441,0,'',1,0,'',NULL,0),(3002,'西乡县','0',441,0,'',1,0,'',NULL,0),(3003,'勉县','0',441,0,'',1,0,'',NULL,0),(3004,'宁强县','0',441,0,'',1,0,'',NULL,0),(3005,'略阳县','0',441,0,'',1,0,'',NULL,0),(3006,'镇巴县','0',441,0,'',1,0,'',NULL,0),(3007,'留坝县','0',441,0,'',1,0,'',NULL,0),(3008,'佛坪县','0',441,0,'',1,0,'',NULL,0),(3009,'榆阳区','0',442,0,'',1,0,'',NULL,0),(3010,'神木县','0',442,0,'',1,0,'',NULL,0),(3011,'府谷县','0',442,0,'',1,0,'',NULL,0),(3012,'横山县','0',442,0,'',1,0,'',NULL,0),(3013,'靖边县','0',442,0,'',1,0,'',NULL,0),(3014,'定边县','0',442,0,'',1,0,'',NULL,0),(3015,'绥德县','0',442,0,'',1,0,'',NULL,0),(3016,'米脂县','0',442,0,'',1,0,'',NULL,0),(3017,'佳县','0',442,0,'',1,0,'',NULL,0),(3018,'吴堡县','0',442,0,'',1,0,'',NULL,0),(3019,'清涧县','0',442,0,'',1,0,'',NULL,0),(3020,'子洲县','0',442,0,'',1,0,'',NULL,0),(3021,'汉滨区','0',443,0,'',1,0,'',NULL,0),(3022,'汉阴县','0',443,0,'',1,0,'',NULL,0),(3023,'石泉县','0',443,0,'',1,0,'',NULL,0),(3024,'宁陕县','0',443,0,'',1,0,'',NULL,0),(3025,'紫阳县','0',443,0,'',1,0,'',NULL,0),(3026,'岚皋县','0',443,0,'',1,0,'',NULL,0),(3027,'平利县','0',443,0,'',1,0,'',NULL,0),(3028,'镇坪县','0',443,0,'',1,0,'',NULL,0),(3029,'旬阳县','0',443,0,'',1,0,'',NULL,0),(3030,'白河县','0',443,0,'',1,0,'',NULL,0),(3031,'商州区','0',444,0,'',1,0,'',NULL,0),(3032,'洛南县','0',444,0,'',1,0,'',NULL,0),(3033,'丹凤县','0',444,0,'',1,0,'',NULL,0),(3034,'商南县','0',444,0,'',1,0,'',NULL,0),(3035,'山阳县','0',444,0,'',1,0,'',NULL,0),(3036,'镇安县','0',444,0,'',1,0,'',NULL,0),(3037,'柞水县','0',444,0,'',1,0,'',NULL,0),(3038,'城关区','0',445,0,'',1,0,'',NULL,0),(3039,'七里河区','0',445,0,'',1,0,'',NULL,0),(3040,'西固区','0',445,0,'',1,0,'',NULL,0),(3041,'安宁区','0',445,0,'',1,0,'',NULL,0),(3042,'红古区','0',445,0,'',1,0,'',NULL,0),(3043,'永登县','0',445,0,'',1,0,'',NULL,0),(3044,'皋兰县','0',445,0,'',1,0,'',NULL,0),(3045,'榆中县','0',445,0,'',1,0,'',NULL,0),(3046,'金川区','0',447,0,'',1,0,'',NULL,0),(3047,'永昌县','0',447,0,'',1,0,'',NULL,0),(3048,'白银区','0',448,0,'',1,0,'',NULL,0),(3049,'平川区','0',448,0,'',1,0,'',NULL,0),(3050,'靖远县','0',448,0,'',1,0,'',NULL,0),(3051,'会宁县','0',448,0,'',1,0,'',NULL,0),(3052,'景泰县','0',448,0,'',1,0,'',NULL,0),(3053,'秦城区','0',449,0,'',1,0,'',NULL,0),(3054,'北道区','0',449,0,'',1,0,'',NULL,0),(3055,'清水县','0',449,0,'',1,0,'',NULL,0),(3056,'秦安县','0',449,0,'',1,0,'',NULL,0),(3057,'甘谷县','0',449,0,'',1,0,'',NULL,0),(3058,'武山县','0',449,0,'',1,0,'',NULL,0),(3059,'张家川回族自治县','0',449,0,'',1,0,'',NULL,0),(3060,'凉州区','0',450,0,'',1,0,'',NULL,0),(3061,'民勤县','0',450,0,'',1,0,'',NULL,0),(3062,'古浪县','0',450,0,'',1,0,'',NULL,0),(3063,'天祝藏族自治县','0',450,0,'',1,0,'',NULL,0),(3064,'甘州区','0',451,0,'',1,0,'',NULL,0),(3065,'肃南裕固族自治县','0',451,0,'',1,0,'',NULL,0),(3066,'民乐县','0',451,0,'',1,0,'',NULL,0),(3067,'临泽县','0',451,0,'',1,0,'',NULL,0),(3068,'高台县','0',451,0,'',1,0,'',NULL,0),(3069,'山丹县','0',451,0,'',1,0,'',NULL,0),(3070,'崆峒区','0',452,0,'',1,0,'',NULL,0),(3071,'泾川县','0',452,0,'',1,0,'',NULL,0),(3072,'灵台县','0',452,0,'',1,0,'',NULL,0),(3073,'崇信县','0',452,0,'',1,0,'',NULL,0),(3074,'华亭县','0',452,0,'',1,0,'',NULL,0),(3075,'庄浪县','0',452,0,'',1,0,'',NULL,0),(3076,'静宁县','0',452,0,'',1,0,'',NULL,0),(3077,'肃州区','0',453,0,'',1,0,'',NULL,0),(3078,'金塔县','0',453,0,'',1,0,'',NULL,0),(3079,'瓜州县','0',453,0,'',1,0,'',NULL,0),(3080,'肃北蒙古族自治县','0',453,0,'',1,0,'',NULL,0),(3081,'阿克塞哈萨克族自治县','0',453,0,'',1,0,'',NULL,0),(3082,'玉门市','0',453,0,'',1,0,'',NULL,0),(3083,'敦煌市','0',453,0,'',1,0,'',NULL,0),(3084,'西峰区','0',454,0,'',1,0,'',NULL,0),(3085,'庆城县','0',454,0,'',1,0,'',NULL,0),(3086,'环县','0',454,0,'',1,0,'',NULL,0),(3087,'华池县','0',454,0,'',1,0,'',NULL,0),(3088,'合水县','0',454,0,'',1,0,'',NULL,0),(3089,'正宁县','0',454,0,'',1,0,'',NULL,0),(3090,'宁县','0',454,0,'',1,0,'',NULL,0),(3091,'镇原县','0',454,0,'',1,0,'',NULL,0),(3092,'安定区','0',455,0,'',1,0,'',NULL,0),(3093,'通渭县','0',455,0,'',1,0,'',NULL,0),(3094,'陇西县','0',455,0,'',1,0,'',NULL,0),(3095,'渭源县','0',455,0,'',1,0,'',NULL,0),(3096,'临洮县','0',455,0,'',1,0,'',NULL,0),(3097,'漳县','0',455,0,'',1,0,'',NULL,0),(3098,'岷县','0',455,0,'',1,0,'',NULL,0),(3099,'武都区','0',456,0,'',1,0,'',NULL,0),(3100,'成县','0',456,0,'',1,0,'',NULL,0),(3101,'文县','0',456,0,'',1,0,'',NULL,0),(3102,'宕昌县','0',456,0,'',1,0,'',NULL,0),(3103,'康县','0',456,0,'',1,0,'',NULL,0),(3104,'西和县','0',456,0,'',1,0,'',NULL,0),(3105,'礼县','0',456,0,'',1,0,'',NULL,0),(3106,'徽县','0',456,0,'',1,0,'',NULL,0),(3107,'两当县','0',456,0,'',1,0,'',NULL,0),(3108,'临夏市','0',457,0,'',1,0,'',NULL,0),(3109,'临夏县','0',457,0,'',1,0,'',NULL,0),(3110,'康乐县','0',457,0,'',1,0,'',NULL,0),(3111,'永靖县','0',457,0,'',1,0,'',NULL,0),(3112,'广河县','0',457,0,'',1,0,'',NULL,0),(3113,'和政县','0',457,0,'',1,0,'',NULL,0),(3114,'东乡族自治县','0',457,0,'',1,0,'',NULL,0),(3115,'积石山保安族东乡族撒拉族自治县','0',457,0,'',1,0,'',NULL,0),(3116,'合作市','0',458,0,'',1,0,'',NULL,0),(3117,'临潭县','0',458,0,'',1,0,'',NULL,0),(3118,'卓尼县','0',458,0,'',1,0,'',NULL,0),(3119,'舟曲县','0',458,0,'',1,0,'',NULL,0),(3120,'迭部县','0',458,0,'',1,0,'',NULL,0),(3121,'玛曲县','0',458,0,'',1,0,'',NULL,0),(3122,'碌曲县','0',458,0,'',1,0,'',NULL,0),(3123,'夏河县','0',458,0,'',1,0,'',NULL,0),(3124,'城东区','0',459,0,'',1,0,'',NULL,0),(3125,'城中区','0',459,0,'',1,0,'',NULL,0),(3126,'城西区','0',459,0,'',1,0,'',NULL,0),(3127,'城北区','0',459,0,'',1,0,'',NULL,0),(3128,'大通回族土族自治县','0',459,0,'',1,0,'',NULL,0),(3129,'湟中县','0',459,0,'',1,0,'',NULL,0),(3130,'湟源县','0',459,0,'',1,0,'',NULL,0),(3131,'平安县','0',460,0,'',1,0,'',NULL,0),(3132,'民和回族土族自治县','0',460,0,'',1,0,'',NULL,0),(3133,'乐都县','0',460,0,'',1,0,'',NULL,0),(3134,'互助土族自治县','0',460,0,'',1,0,'',NULL,0),(3135,'化隆回族自治县','0',460,0,'',1,0,'',NULL,0),(3136,'循化撒拉族自治县','0',460,0,'',1,0,'',NULL,0),(3137,'门源回族自治县','0',461,0,'',1,0,'',NULL,0),(3138,'祁连县','0',461,0,'',1,0,'',NULL,0),(3139,'海晏县','0',461,0,'',1,0,'',NULL,0),(3140,'刚察县','0',461,0,'',1,0,'',NULL,0),(3141,'同仁县','0',462,0,'',1,0,'',NULL,0),(3142,'尖扎县','0',462,0,'',1,0,'',NULL,0),(3143,'泽库县','0',462,0,'',1,0,'',NULL,0),(3144,'河南蒙古族自治县','0',462,0,'',1,0,'',NULL,0),(3145,'共和县','0',463,0,'',1,0,'',NULL,0),(3146,'同德县','0',463,0,'',1,0,'',NULL,0),(3147,'贵德县','0',463,0,'',1,0,'',NULL,0),(3148,'兴海县','0',463,0,'',1,0,'',NULL,0),(3149,'贵南县','0',463,0,'',1,0,'',NULL,0),(3150,'玛沁县','0',464,0,'',1,0,'',NULL,0),(3151,'班玛县','0',464,0,'',1,0,'',NULL,0),(3152,'甘德县','0',464,0,'',1,0,'',NULL,0),(3153,'达日县','0',464,0,'',1,0,'',NULL,0),(3154,'久治县','0',464,0,'',1,0,'',NULL,0),(3155,'玛多县','0',464,0,'',1,0,'',NULL,0),(3156,'玉树县','0',465,0,'',1,0,'',NULL,0),(3157,'杂多县','0',465,0,'',1,0,'',NULL,0),(3158,'称多县','0',465,0,'',1,0,'',NULL,0),(3159,'治多县','0',465,0,'',1,0,'',NULL,0),(3160,'囊谦县','0',465,0,'',1,0,'',NULL,0),(3161,'曲麻莱县','0',465,0,'',1,0,'',NULL,0),(3162,'格尔木市','0',466,0,'',1,0,'',NULL,0),(3163,'德令哈市','0',466,0,'',1,0,'',NULL,0),(3164,'乌兰县','0',466,0,'',1,0,'',NULL,0),(3165,'都兰县','0',466,0,'',1,0,'',NULL,0),(3166,'天峻县','0',466,0,'',1,0,'',NULL,0),(3167,'兴庆区','0',467,0,'',1,0,'',NULL,0),(3168,'西夏区','0',467,0,'',1,0,'',NULL,0),(3169,'金凤区','0',467,0,'',1,0,'',NULL,0),(3170,'永宁县','0',467,0,'',1,0,'',NULL,0),(3171,'贺兰县','0',467,0,'',1,0,'',NULL,0),(3172,'灵武市','0',467,0,'',1,0,'',NULL,0),(3173,'大武口区','0',468,0,'',1,0,'',NULL,0),(3174,'惠农区','0',468,0,'',1,0,'',NULL,0),(3175,'平罗县','0',468,0,'',1,0,'',NULL,0),(3176,'利通区','0',469,0,'',1,0,'',NULL,0),(3177,'盐池县','0',469,0,'',1,0,'',NULL,0),(3178,'同心县','0',469,0,'',1,0,'',NULL,0),(3179,'青铜峡市','0',469,0,'',1,0,'',NULL,0),(3180,'原州区','0',470,0,'',1,0,'',NULL,0),(3181,'西吉县','0',470,0,'',1,0,'',NULL,0),(3182,'隆德县','0',470,0,'',1,0,'',NULL,0),(3183,'泾源县','0',470,0,'',1,0,'',NULL,0),(3184,'彭阳县','0',470,0,'',1,0,'',NULL,0),(3185,'沙坡头区','0',471,0,'',1,0,'',NULL,0),(3186,'中宁县','0',471,0,'',1,0,'',NULL,0),(3187,'海原县','0',471,0,'',1,0,'',NULL,0),(3188,'天山区','0',472,0,'',1,0,'',NULL,0),(3189,'沙依巴克区','0',472,0,'',1,0,'',NULL,0),(3190,'新市区','0',472,0,'',1,0,'',NULL,0),(3191,'水磨沟区','0',472,0,'',1,0,'',NULL,0),(3192,'头屯河区','0',472,0,'',1,0,'',NULL,0),(3193,'达坂城区','0',472,0,'',1,0,'',NULL,0),(3194,'东山区','0',472,0,'',1,0,'',NULL,0),(3195,'乌鲁木齐县','0',472,0,'',1,0,'',NULL,0),(3196,'独山子区','0',473,0,'',1,0,'',NULL,0),(3197,'克拉玛依区','0',473,0,'',1,0,'',NULL,0),(3198,'白碱滩区','0',473,0,'',1,0,'',NULL,0),(3199,'乌尔禾区','0',473,0,'',1,0,'',NULL,0),(3200,'吐鲁番市','0',474,0,'',1,0,'',NULL,0),(3201,'鄯善县','0',474,0,'',1,0,'',NULL,0),(3202,'托克逊县','0',474,0,'',1,0,'',NULL,0),(3203,'哈密市','0',475,0,'',1,0,'',NULL,0),(3204,'巴里坤哈萨克自治县','0',475,0,'',1,0,'',NULL,0),(3205,'伊吾县','0',475,0,'',1,0,'',NULL,0),(3206,'昌吉市','0',476,0,'',1,0,'',NULL,0),(3207,'阜康市','0',476,0,'',1,0,'',NULL,0),(3208,'米泉市','0',476,0,'',1,0,'',NULL,0),(3209,'呼图壁县','0',476,0,'',1,0,'',NULL,0),(3210,'玛纳斯县','0',476,0,'',1,0,'',NULL,0),(3211,'奇台县','0',476,0,'',1,0,'',NULL,0),(3212,'吉木萨尔县','0',476,0,'',1,0,'',NULL,0),(3213,'木垒哈萨克自治县','0',476,0,'',1,0,'',NULL,0),(3214,'博乐市','0',477,0,'',1,0,'',NULL,0),(3215,'精河县','0',477,0,'',1,0,'',NULL,0),(3216,'温泉县','0',477,0,'',1,0,'',NULL,0),(3217,'库尔勒市','0',478,0,'',1,0,'',NULL,0),(3218,'轮台县','0',478,0,'',1,0,'',NULL,0),(3219,'尉犁县','0',478,0,'',1,0,'',NULL,0),(3220,'若羌县','0',478,0,'',1,0,'',NULL,0),(3221,'且末县','0',478,0,'',1,0,'',NULL,0),(3222,'焉耆回族自治县','0',478,0,'',1,0,'',NULL,0),(3223,'和静县','0',478,0,'',1,0,'',NULL,0),(3224,'和硕县','0',478,0,'',1,0,'',NULL,0),(3225,'博湖县','0',478,0,'',1,0,'',NULL,0),(3226,'阿克苏市','0',479,0,'',1,0,'',NULL,0),(3227,'温宿县','0',479,0,'',1,0,'',NULL,0),(3228,'库车县','0',479,0,'',1,0,'',NULL,0),(3229,'沙雅县','0',479,0,'',1,0,'',NULL,0),(3230,'新和县','0',479,0,'',1,0,'',NULL,0),(3231,'拜城县','0',479,0,'',1,0,'',NULL,0),(3232,'乌什县','0',479,0,'',1,0,'',NULL,0),(3233,'阿瓦提县','0',479,0,'',1,0,'',NULL,0),(3234,'柯坪县','0',479,0,'',1,0,'',NULL,0),(3235,'阿图什市','0',480,0,'',1,0,'',NULL,0),(3236,'阿克陶县','0',480,0,'',1,0,'',NULL,0),(3237,'阿合奇县','0',480,0,'',1,0,'',NULL,0),(3238,'乌恰县','0',480,0,'',1,0,'',NULL,0),(3239,'喀什市','0',481,0,'',1,0,'',NULL,0),(3240,'疏附县','0',481,0,'',1,0,'',NULL,0),(3241,'疏勒县','0',481,0,'',1,0,'',NULL,0),(3242,'英吉沙县','0',481,0,'',1,0,'',NULL,0),(3243,'泽普县','0',481,0,'',1,0,'',NULL,0),(3244,'莎车县','0',481,0,'',1,0,'',NULL,0),(3245,'叶城县','0',481,0,'',1,0,'',NULL,0),(3246,'麦盖提县','0',481,0,'',1,0,'',NULL,0),(3247,'岳普湖县','0',481,0,'',1,0,'',NULL,0),(3248,'伽师县','0',481,0,'',1,0,'',NULL,0),(3249,'巴楚县','0',481,0,'',1,0,'',NULL,0),(3250,'塔什库尔干塔吉克自治县','0',481,0,'',1,0,'',NULL,0),(3251,'和田市','0',482,0,'',1,0,'',NULL,0),(3252,'和田县','0',482,0,'',1,0,'',NULL,0),(3253,'墨玉县','0',482,0,'',1,0,'',NULL,0),(3254,'皮山县','0',482,0,'',1,0,'',NULL,0),(3255,'洛浦县','0',482,0,'',1,0,'',NULL,0),(3256,'策勒县','0',482,0,'',1,0,'',NULL,0),(3257,'于田县','0',482,0,'',1,0,'',NULL,0),(3258,'民丰县','0',482,0,'',1,0,'',NULL,0),(3259,'伊宁市','0',483,0,'',1,0,'',NULL,0),(3260,'奎屯市','0',483,0,'',1,0,'',NULL,0),(3261,'伊宁县','0',483,0,'',1,0,'',NULL,0),(3262,'察布查尔锡伯自治县','0',483,0,'',1,0,'',NULL,0),(3263,'霍城县','0',483,0,'',1,0,'',NULL,0),(3264,'巩留县','0',483,0,'',1,0,'',NULL,0),(3265,'新源县','0',483,0,'',1,0,'',NULL,0),(3266,'昭苏县','0',483,0,'',1,0,'',NULL,0),(3267,'特克斯县','0',483,0,'',1,0,'',NULL,0),(3268,'尼勒克县','0',483,0,'',1,0,'',NULL,0),(3269,'塔城市','0',484,0,'',1,0,'',NULL,0),(3270,'乌苏市','0',484,0,'',1,0,'',NULL,0),(3271,'额敏县','0',484,0,'',1,0,'',NULL,0),(3272,'沙湾县','0',484,0,'',1,0,'',NULL,0),(3273,'托里县','0',484,0,'',1,0,'',NULL,0),(3274,'裕民县','0',484,0,'',1,0,'',NULL,0),(3275,'和布克赛尔蒙古自治县','0',484,0,'',1,0,'',NULL,0),(3276,'阿勒泰市','0',485,0,'',1,0,'',NULL,0),(3277,'布尔津县','0',485,0,'',1,0,'',NULL,0),(3278,'富蕴县','0',485,0,'',1,0,'',NULL,0),(3279,'福海县','0',485,0,'',1,0,'',NULL,0),(3280,'哈巴河县','0',485,0,'',1,0,'',NULL,0),(3281,'青河县','0',485,0,'',1,0,'',NULL,0),(3282,'吉木乃县','0',485,0,'',1,0,'',NULL,0),(3358,'钓鱼岛','',0,0,'',1,0,'',NULL,0),(3359,'钓鱼岛','',3358,0,'',1,0,'',NULL,0);
/*!40000 ALTER TABLE `v9_linkage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_log`
--

DROP TABLE IF EXISTS `v9_log`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_log` (
  `logid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(15) NOT NULL,
  `value` int(10) unsigned NOT NULL DEFAULT '0',
  `module` varchar(15) NOT NULL,
  `file` varchar(20) NOT NULL,
  `action` varchar(20) NOT NULL,
  `querystring` varchar(255) NOT NULL,
  `data` mediumtext NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`logid`),
  KEY `module` (`module`,`file`,`action`),
  KEY `username` (`username`,`action`)
) ENGINE=MyISAM AUTO_INCREMENT=721 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_log`
--

LOCK TABLES `v9_log` WRITE;
/*!40000 ALTER TABLE `v9_log` DISABLE KEYS */;
INSERT INTO `v9_log` VALUES (1,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2013-11-29 01:03:14'),(2,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2013-11-29 01:03:18'),(3,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2013-11-29 01:03:19'),(4,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2013-11-29 01:03:23'),(5,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2013-11-29 01:08:39'),(6,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'','127.0.0.1','2013-11-29 01:08:43'),(7,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'phpcms','127.0.0.1','2013-11-29 01:08:50'),(8,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-11-29 19:36:01'),(9,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-11-29 19:36:06'),(10,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:34:56'),(11,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:35:25'),(12,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:35:30'),(13,'',0,'admin','','category','?m=admin&c=category&a=listorder','',1,'phpcms','127.0.0.1','2013-11-29 21:36:35'),(14,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:36:40'),(15,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:37:47'),(16,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:38:13'),(17,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:38:28'),(18,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:38:38'),(19,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:38:40'),(20,'',0,'content','','content','?m=content&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-29 21:38:51'),(21,'',0,'content','','content','?m=content&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-29 21:39:00'),(22,'',0,'content','','content','?m=content&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-29 21:39:19'),(23,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:39:26'),(24,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:39:35'),(25,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:39:37'),(26,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:39:42'),(27,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:39:44'),(28,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:39:44'),(29,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:39:48'),(30,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:39:50'),(31,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:39:54'),(32,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:39:56'),(33,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:40:00'),(34,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:40:01'),(35,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:40:05'),(36,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:40:07'),(37,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:41:42'),(38,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:42:51'),(39,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:43:10'),(40,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:43:12'),(41,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:43:48'),(42,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:43:58'),(43,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:44:12'),(44,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:44:30'),(45,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:44:48'),(46,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:45:12'),(47,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:45:22'),(48,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:45:23'),(49,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:45:39'),(50,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:45:48'),(51,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:46:04'),(52,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:46:16'),(53,'',0,'admin','','category','?m=admin&c=category&a=listorder','',1,'phpcms','127.0.0.1','2013-11-29 21:47:50'),(54,'',0,'tag','','tag','?m=tag&c=tag&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:48:34'),(55,'',0,'tag','','tag','?m=tag&c=tag&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:48:48'),(56,'',0,'admin','','database','?m=admin&c=database&a=export','',1,'phpcms','127.0.0.1','2013-11-29 21:48:58'),(57,'',0,'admin','','googlesitemap','?m=admin&c=googlesitemap&a=set','',1,'phpcms','127.0.0.1','2013-11-29 21:49:04'),(58,'',0,'member','','member_menu','?m=member&c=member_menu&a=manage','',1,'phpcms','127.0.0.1','2013-11-29 21:49:09'),(59,'',0,'admin','','database','?m=admin&c=database&a=export','',1,'phpcms','127.0.0.1','2013-11-29 21:49:26'),(60,'',0,'admin','','release_point','?m=admin&c=release_point&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:49:36'),(61,'',0,'admin','','position','?m=admin&c=position&a=edit','',1,'phpcms','127.0.0.1','2013-11-29 21:50:11'),(62,'',0,'collection','','node','?m=collection&c=node&a=manage','',1,'phpcms','127.0.0.1','2013-11-29 21:50:52'),(63,'',0,'content','','type_manage','?m=content&c=type_manage&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:51:06'),(64,'',0,'content','','type_manage','?m=content&c=type_manage&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:51:24'),(65,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'phpcms','127.0.0.1','2013-11-29 21:52:34'),(66,'',0,'pay','','payment','?m=pay&c=payment&a=pay_list','',1,'phpcms','127.0.0.1','2013-11-29 21:53:30'),(67,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'phpcms','127.0.0.1','2013-11-29 21:53:41'),(68,'',0,'content','','content','?m=content&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-29 21:54:19'),(69,'',0,'admin','','category','?m=admin&c=category&a=batch_edit','',1,'phpcms','127.0.0.1','2013-11-29 21:55:24'),(70,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-11-29 21:55:35'),(71,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'phpcms','127.0.0.1','2013-11-29 21:55:49'),(72,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-29 22:15:32'),(73,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'phpcms','127.0.0.1','2013-11-29 22:17:16'),(74,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-29 22:34:28'),(75,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-29 22:41:04'),(76,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-29 22:41:06'),(77,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-29 22:41:06'),(78,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 22:41:42'),(79,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 22:42:27'),(80,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 22:43:07'),(81,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 22:43:10'),(82,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 22:45:39'),(83,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-29 22:46:16'),(84,'',0,'special','','special','?m=special&c=special&a=create_special_list','',1,'phpcms','127.0.0.1','2013-11-29 22:46:23'),(85,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-29 22:46:25'),(86,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 22:50:48'),(87,'',0,'member','','member_menu','?m=member&c=member_menu&a=manage','',1,'phpcms','127.0.0.1','2013-11-29 22:53:49'),(88,'',0,'tag','','tag','?m=tag&c=tag&a=add','',1,'phpcms','127.0.0.1','2013-11-29 22:54:11'),(89,'',0,'content','','sitemodel','?m=content&c=sitemodel&a=add','',1,'phpcms','127.0.0.1','2013-11-29 22:54:44'),(90,'',0,'content','','sitemodel','?m=content&c=sitemodel&a=add','',1,'phpcms','127.0.0.1','2013-11-29 23:31:52'),(91,'',0,'content','','sitemodel','?m=content&c=sitemodel&a=edit','',1,'phpcms','127.0.0.1','2013-11-29 23:36:18'),(92,'',0,'content','','sitemodel','?m=content&c=sitemodel&a=edit','',1,'phpcms','127.0.0.1','2013-11-29 23:36:25'),(93,'',0,'content','','sitemodel','?m=content&c=sitemodel&a=edit','',1,'phpcms','127.0.0.1','2013-11-29 23:36:36'),(94,'',0,'content','','sitemodel','?m=content&c=sitemodel&a=delete','',1,'phpcms','127.0.0.1','2013-11-29 23:38:02'),(95,'',0,'content','','sitemodel','?m=content&c=sitemodel&a=add','',1,'phpcms','127.0.0.1','2013-11-29 23:38:05'),(96,'',0,'content','','sitemodel','?m=content&c=sitemodel&a=add','',1,'phpcms','127.0.0.1','2013-11-29 23:38:20'),(97,'',0,'special','','special','?m=special&c=special&a=import','',1,'phpcms','127.0.0.1','2013-11-29 23:39:25'),(98,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-29 23:39:46'),(99,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-29 23:42:40'),(100,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-29 23:55:20'),(101,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-29 23:56:36'),(102,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-29 23:57:41'),(103,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=listorder','',1,'phpcms','127.0.0.1','2013-11-29 23:58:05'),(104,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-29 23:58:52'),(105,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-29 23:59:06'),(106,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-29 23:59:31'),(107,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-29 23:59:41'),(108,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-29 23:59:49'),(109,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:00:10'),(110,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:00:16'),(111,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:00:26'),(112,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:00:33'),(113,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:00:42'),(114,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:00:49'),(115,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:02:46'),(116,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:03:02'),(117,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:03:51'),(118,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:04:12'),(119,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:04:21'),(120,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:05:03'),(121,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:05:43'),(122,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:07:27'),(123,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:07:40'),(124,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:07:53'),(125,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:08:31'),(126,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:08:54'),(127,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:09:15'),(128,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:09:57'),(129,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:10:37'),(130,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:10:49'),(131,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:11:11'),(132,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:11:24'),(133,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:11:33'),(134,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:12:00'),(135,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:12:17'),(136,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:13:10'),(137,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:13:27'),(138,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:13:51'),(139,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:14:03'),(140,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:14:16'),(141,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:14:31'),(142,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:14:36'),(143,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:14:39'),(144,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:14:45'),(145,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:15:18'),(146,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:15:24'),(147,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:15:53'),(148,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:15:59'),(149,'',0,'content','','sitemodel_field','?m=content&c=sitemodel_field&a=listorder','',1,'phpcms','127.0.0.1','2013-11-30 00:17:09'),(150,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-30 00:18:57'),(151,'',0,'content','','sitemodel','?m=content&c=sitemodel&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:19:59'),(152,'',0,'special','','special','?m=special&c=special&a=elite','',1,'phpcms','127.0.0.1','2013-11-30 00:33:52'),(153,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:34:08'),(154,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:34:54'),(155,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 00:35:02'),(156,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-11-30 15:49:55'),(157,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-11-30 15:49:59'),(158,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-30 16:15:35'),(159,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 16:19:57'),(160,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-30 16:20:20'),(161,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-30 16:26:55'),(162,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-30 16:26:58'),(163,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-30 16:27:00'),(164,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 16:29:37'),(165,'',0,'special','','album','?m=special&c=album&a=import','',1,'phpcms','127.0.0.1','2013-11-30 16:30:08'),(166,'',0,'video','','video','?m=video&c=video&a=setting','',1,'phpcms','127.0.0.1','2013-11-30 16:30:10'),(167,'',0,'video','','video','?m=video&c=video&a=setting','',1,'phpcms','127.0.0.1','2013-11-30 16:30:10'),(168,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 16:30:15'),(169,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 18:21:55'),(170,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 18:32:25'),(171,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 18:34:04'),(172,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 18:34:35'),(173,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 19:43:16'),(174,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 19:44:45'),(175,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 19:47:05'),(176,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 19:47:38'),(177,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 19:47:50'),(178,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 19:50:55'),(179,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 19:53:36'),(180,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 19:54:02'),(181,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 20:01:19'),(182,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 20:02:33'),(183,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 20:04:22'),(184,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 20:05:05'),(185,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 20:12:44'),(186,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 20:20:38'),(187,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 20:21:52'),(188,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 20:21:54'),(189,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 20:21:54'),(190,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 20:22:22'),(191,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:24:17'),(192,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:27:54'),(193,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:28:22'),(194,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:28:35'),(195,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:28:37'),(196,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:29:44'),(197,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:31:43'),(198,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:32:22'),(199,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:33:15'),(200,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:36:16'),(201,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:37:15'),(202,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:37:16'),(203,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:37:43'),(204,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:37:44'),(205,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:38:20'),(206,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:38:21'),(207,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:38:21'),(208,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:39:06'),(209,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:39:07'),(210,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:48:03'),(211,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:48:05'),(212,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 20:53:33'),(213,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 20:54:19'),(214,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 20:54:53'),(215,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 20:56:13'),(216,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 20:56:14'),(217,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-11-30 20:56:14'),(218,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:56:24'),(219,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:57:00'),(220,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 20:57:02'),(221,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-30 21:01:09'),(222,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-30 21:11:35'),(223,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-30 21:11:36'),(224,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-30 21:11:48'),(225,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-30 21:11:49'),(226,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-11-30 21:18:02'),(227,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-11-30 21:18:05'),(228,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-30 21:18:58'),(229,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-30 21:21:19'),(230,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-30 21:21:32'),(231,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-30 21:26:56'),(232,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-30 21:28:18'),(233,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-30 21:28:20'),(234,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 21:28:44'),(235,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 21:28:46'),(236,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 21:29:08'),(237,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 21:29:09'),(238,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 21:29:13'),(239,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 21:29:32'),(240,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 21:29:47'),(241,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 21:32:07'),(242,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 21:35:43'),(243,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 21:35:47'),(244,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 21:35:49'),(245,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 21:36:04'),(246,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 21:36:52'),(247,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 21:39:07'),(248,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 21:39:26'),(249,'',0,'special','','special','?m=special&c=special&a=import','',1,'phpcms','127.0.0.1','2013-11-30 21:39:47'),(250,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-11-30 23:56:45'),(251,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-30 23:57:45'),(252,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-11-30 23:59:00'),(253,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-01 00:01:31'),(254,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-01 00:02:21'),(255,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-01 00:02:22'),(256,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-01 00:02:34'),(257,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-01 00:02:53'),(258,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-01 00:03:07'),(259,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-01 00:05:31'),(260,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-01 00:05:33'),(261,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-01 00:05:37'),(262,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-01 00:05:39'),(263,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-01 00:07:20'),(264,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-01 00:07:46'),(265,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-01 00:07:57'),(266,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-01 00:08:19'),(267,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-01 00:08:50'),(268,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-01 00:09:30'),(269,'',0,'special','','content','?m=special&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-01 00:09:48'),(270,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-01 00:10:23'),(271,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-01 00:10:36'),(272,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-01 00:10:44'),(273,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-01 00:10:52'),(274,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-01 19:39:00'),(275,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-01 19:39:05'),(276,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-01 19:42:18'),(277,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-01 19:48:30'),(278,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-01 19:50:46'),(279,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-01 19:51:17'),(280,'',0,'special','','content','?m=special&c=content&a=delete','',1,'phpcms','127.0.0.1','2013-12-02 00:52:26'),(281,'',0,'special','','content','?m=special&c=content&a=delete','',1,'phpcms','127.0.0.1','2013-12-02 00:53:54'),(282,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 00:56:07'),(283,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:03:20'),(284,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:04:56'),(285,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:09:19'),(286,'',0,'special','','content','?m=special&c=content&a=delete','',1,'phpcms','127.0.0.1','2013-12-02 01:28:41'),(287,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:29:27'),(288,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:29:31'),(289,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:29:32'),(290,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:30:09'),(291,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:34:27'),(292,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:34:29'),(293,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:34:50'),(294,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:34:52'),(295,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:35:43'),(296,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:35:45'),(297,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:36:16'),(298,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:36:18'),(299,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:36:33'),(300,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:36:36'),(301,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:37:36'),(302,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:37:39'),(303,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:38:50'),(304,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:38:52'),(305,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:39:14'),(306,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:39:16'),(307,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:39:26'),(308,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:39:28'),(309,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:40:06'),(310,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:40:09'),(311,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:40:19'),(312,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:40:21'),(313,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:40:31'),(314,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:40:33'),(315,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:40:49'),(316,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:40:51'),(317,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:41:04'),(318,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:41:06'),(319,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:41:21'),(320,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:41:23'),(321,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:41:55'),(322,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:41:57'),(323,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:42:23'),(324,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:42:24'),(325,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:43:57'),(326,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:44:06'),(327,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 01:45:45'),(328,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-02 01:45:46'),(329,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-02 10:33:13'),(330,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-02 10:33:26'),(331,'',0,'special','','content','?m=special&c=content&a=delete','',1,'phpcms','127.0.0.1','2013-12-02 10:40:37'),(332,'',0,'special','','content','?m=special&c=content&a=delete','',1,'phpcms','127.0.0.1','2013-12-02 10:41:38'),(333,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 10:42:32'),(334,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 10:47:00'),(335,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 10:47:13'),(336,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 10:47:15'),(337,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-12-02 15:23:52'),(338,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-12-02 15:28:52'),(339,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-12-02 15:28:54'),(340,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 15:33:37'),(341,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 15:33:41'),(342,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 15:33:42'),(343,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 15:33:42'),(344,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 15:36:03'),(345,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 15:36:07'),(346,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 15:36:08'),(347,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 15:38:48'),(348,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 15:38:51'),(349,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 15:38:52'),(350,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 15:39:00'),(351,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 15:39:04'),(352,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 15:39:05'),(353,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-02 20:03:18'),(354,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-02 20:03:18'),(355,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-02 20:06:45'),(356,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-12-02 20:32:52'),(357,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-12-02 20:47:50'),(358,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-12-02 20:47:52'),(359,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 20:55:15'),(360,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 20:56:59'),(361,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 21:00:40'),(362,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 21:01:28'),(363,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 21:05:45'),(364,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 21:06:13'),(365,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 21:06:40'),(366,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-12-02 21:07:24'),(367,'',0,'special','','special','?m=special&c=special&a=add','',1,'phpcms','127.0.0.1','2013-12-02 21:07:53'),(368,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 21:12:11'),(369,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 21:12:22'),(370,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 21:12:23'),(371,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 21:13:29'),(372,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 21:15:18'),(373,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 21:15:23'),(374,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 21:15:25'),(375,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 21:16:15'),(376,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 21:16:27'),(377,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 21:16:29'),(378,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 21:16:29'),(379,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 22:43:08'),(380,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 22:56:36'),(381,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 22:57:20'),(382,'',0,'member','','member_menu','?m=member&c=member_menu&a=manage','',1,'phpcms','127.0.0.1','2013-12-02 23:05:24'),(383,'',0,'poster','','space','?m=poster&c=space&a=add','',1,'phpcms','127.0.0.1','2013-12-02 23:06:02'),(384,'',0,'poster','','space','?m=poster&c=space&a=add','',1,'phpcms','127.0.0.1','2013-12-02 23:06:24'),(385,'',0,'poster','','space','?m=poster&c=space&a=poster_template','',1,'phpcms','127.0.0.1','2013-12-02 23:07:29'),(386,'',0,'poster','','space','?m=poster&c=space&a=add','',1,'phpcms','127.0.0.1','2013-12-02 23:09:00'),(387,'',0,'poster','','space','?m=poster&c=space&a=add','',1,'phpcms','127.0.0.1','2013-12-02 23:09:21'),(388,'',0,'poster','','poster','?m=poster&c=poster&a=add','',1,'phpcms','127.0.0.1','2013-12-02 23:09:26'),(389,'',0,'poster','','poster','?m=poster&c=poster&a=add','',1,'phpcms','127.0.0.1','2013-12-02 23:10:14'),(390,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-12-02 23:14:00'),(391,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-12-02 23:15:55'),(392,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-12-02 23:16:52'),(393,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-12-02 23:17:57'),(394,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-12-02 23:17:58'),(395,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-12-02 23:18:43'),(396,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-12-02 23:19:37'),(397,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-12-02 23:19:51'),(398,'',0,'admin','','category','?m=admin&c=category&a=add','',1,'phpcms','127.0.0.1','2013-12-02 23:20:22'),(399,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 23:20:43'),(400,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 23:21:04'),(401,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 23:21:21'),(402,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'phpcms','127.0.0.1','2013-12-02 23:21:33'),(403,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-03 21:37:54'),(404,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-03 21:37:54'),(405,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-03 21:38:01'),(406,'',0,'content','','content','?m=content&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-03 21:42:41'),(407,'',0,'content','','content','?m=content&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-03 21:43:35'),(408,'',0,'content','','content','?m=content&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-03 21:44:06'),(409,'',0,'content','','content','?m=content&c=content&a=delete','',1,'phpcms','127.0.0.1','2013-12-03 21:45:35'),(410,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-03 21:46:12'),(411,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-03 21:46:19'),(412,'',0,'content','','content','?m=content&c=content&a=delete','',1,'phpcms','127.0.0.1','2013-12-03 21:46:57'),(413,'',0,'content','','content','?m=content&c=content&a=delete','',1,'phpcms','127.0.0.1','2013-12-03 21:47:01'),(414,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-03 21:47:36'),(415,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-03 21:47:47'),(416,'',0,'content','','content','?m=content&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-03 21:47:54'),(417,'',0,'content','','content','?m=content&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-03 21:48:08'),(418,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-03 21:54:34'),(419,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-03 21:54:51'),(420,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-03 21:55:05'),(421,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-03 21:55:24'),(422,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-03 21:55:39'),(423,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-03 21:55:41'),(424,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-03 21:56:57'),(425,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-03 21:57:06'),(426,'',0,'special','','special','?m=special&c=special&a=edit','',1,'phpcms','127.0.0.1','2013-12-03 21:57:08'),(427,'',0,'special','','content','?m=special&c=content&a=delete','',1,'phpcms','127.0.0.1','2013-12-03 22:10:25'),(428,'',0,'special','','content','?m=special&c=content&a=delete','',1,'phpcms','127.0.0.1','2013-12-03 22:10:58'),(429,'',0,'special','','content','?m=special&c=content&a=delete','',1,'phpcms','127.0.0.1','2013-12-03 23:26:30'),(430,'',0,'special','','content','?m=special&c=content&a=delete','',1,'phpcms','127.0.0.1','2013-12-03 23:41:06'),(431,'',0,'special','','content','?m=special&c=content&a=delete','',1,'phpcms','127.0.0.1','2013-12-03 23:42:15'),(432,'',0,'special','','content','?m=special&c=content&a=delete','',1,'phpcms','127.0.0.1','2013-12-03 23:44:43'),(433,'',0,'special','','content','?m=special&c=content&a=delete','',1,'phpcms','127.0.0.1','2013-12-03 23:52:34'),(434,'',0,'formguide','','formguide','?m=formguide&c=formguide&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:03:36'),(435,'',0,'announce','','admin_announce','?m=announce&c=admin_announce&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:06:13'),(436,'',0,'announce','','admin_announce','?m=announce&c=admin_announce&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:06:36'),(437,'',0,'announce','','admin_announce','?m=announce&c=admin_announce&a=edit','',1,'phpcms','127.0.0.1','2013-12-04 00:06:49'),(438,'',0,'announce','','admin_announce','?m=announce&c=admin_announce&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:07:32'),(439,'',0,'announce','','admin_announce','?m=announce&c=admin_announce&a=delete','',1,'phpcms','127.0.0.1','2013-12-04 00:08:27'),(440,'',0,'pay','','payment','?m=pay&c=payment&a=pay_list','',1,'phpcms','127.0.0.1','2013-12-04 00:08:35'),(441,'',0,'formguide','','formguide','?m=formguide&c=formguide&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:09:52'),(442,'',0,'formguide','','formguide','?m=formguide&c=formguide&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:13:37'),(443,'',0,'formguide','','formguide_field','?m=formguide&c=formguide_field&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:13:47'),(444,'',0,'formguide','','formguide_field','?m=formguide&c=formguide_field&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:14:46'),(445,'',0,'formguide','','formguide_field','?m=formguide&c=formguide_field&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:15:08'),(446,'',0,'formguide','','formguide_field','?m=formguide&c=formguide_field&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:15:23'),(447,'',0,'formguide','','formguide_field','?m=formguide&c=formguide_field&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:15:30'),(448,'',0,'formguide','','formguide_field','?m=formguide&c=formguide_field&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:15:37'),(449,'',0,'formguide','','formguide_field','?m=formguide&c=formguide_field&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:15:42'),(450,'',0,'formguide','','formguide_field','?m=formguide&c=formguide_field&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:15:53'),(451,'',0,'formguide','','formguide_field','?m=formguide&c=formguide_field&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:15:59'),(452,'',0,'formguide','','formguide_field','?m=formguide&c=formguide_field&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:16:10'),(453,'',0,'formguide','','formguide_field','?m=formguide&c=formguide_field&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:16:16'),(454,'',0,'formguide','','formguide_field','?m=formguide&c=formguide_field&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:16:24'),(455,'',0,'formguide','','formguide_field','?m=formguide&c=formguide_field&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:16:30'),(456,'',0,'formguide','','formguide_field','?m=formguide&c=formguide_field&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:16:42'),(457,'',0,'formguide','','formguide','?m=formguide&c=formguide&a=edit','',1,'phpcms','127.0.0.1','2013-12-04 00:17:22'),(458,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:48:21'),(459,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:48:22'),(460,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:48:26'),(461,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:49:09'),(462,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:49:38'),(463,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:49:39'),(464,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:49:41'),(465,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:49:59'),(466,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:50:08'),(467,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'phpcms','127.0.0.1','2013-12-04 00:50:38'),(468,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'phpcms','127.0.0.1','2013-12-04 00:50:44'),(469,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'phpcms','127.0.0.1','2013-12-04 00:51:07'),(470,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:51:20'),(471,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:51:40'),(472,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:51:52'),(473,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:52:02'),(474,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:52:05'),(475,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:52:27'),(476,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:52:40'),(477,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:53:09'),(478,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:53:12'),(479,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'phpcms','127.0.0.1','2013-12-04 00:53:30'),(480,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'phpcms','127.0.0.1','2013-12-04 00:53:50'),(481,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'phpcms','127.0.0.1','2013-12-04 00:54:10'),(482,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:55:24'),(483,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:58:14'),(484,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:58:15'),(485,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:58:42'),(486,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:59:09'),(487,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:59:15'),(488,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:59:16'),(489,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:59:29'),(490,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:59:56'),(491,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 00:59:57'),(492,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 01:00:09'),(493,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 01:00:13'),(494,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 01:00:29'),(495,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 01:00:50'),(496,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 01:00:51'),(497,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'phpcms','127.0.0.1','2013-12-04 01:01:12'),(498,'',0,'poster','','space','?m=poster&c=space&a=edit','',1,'phpcms','127.0.0.1','2013-12-04 01:05:03'),(499,'',0,'poster','','poster','?m=poster&c=poster&a=edit','',1,'phpcms','127.0.0.1','2013-12-04 01:05:16'),(500,'',0,'poster','','poster','?m=poster&c=poster&a=add','',1,'phpcms','127.0.0.1','2013-12-04 01:05:34'),(501,'',0,'poster','','poster','?m=poster&c=poster&a=add','',1,'phpcms','127.0.0.1','2013-12-04 01:06:33'),(502,'',0,'poster','','poster','?m=poster&c=poster&a=delete','',1,'phpcms','127.0.0.1','2013-12-04 01:07:10'),(503,'',0,'poster','','space','?m=poster&c=space&a=add','',1,'phpcms','127.0.0.1','2013-12-04 01:07:13'),(504,'',0,'poster','','space','?m=poster&c=space&a=add','',1,'phpcms','127.0.0.1','2013-12-04 01:07:40'),(505,'',0,'poster','','space','?m=poster&c=space&a=add','',1,'phpcms','127.0.0.1','2013-12-04 01:07:56'),(506,'',0,'poster','','poster','?m=poster&c=poster&a=add','',1,'phpcms','127.0.0.1','2013-12-04 01:08:00'),(507,'',0,'poster','','poster','?m=poster&c=poster&a=add','',1,'phpcms','127.0.0.1','2013-12-04 01:08:11'),(508,'',0,'link','','link','?m=link&c=link&a=delete','',1,'phpcms','127.0.0.1','2013-12-04 01:11:36'),(509,'',0,'link','','link','?m=link&c=link&a=add','',1,'phpcms','127.0.0.1','2013-12-04 01:11:41'),(510,'',0,'link','','link','?m=link&c=link&a=add','',1,'phpcms','127.0.0.1','2013-12-04 01:12:16'),(511,'',0,'poster','','space','?m=poster&c=space&a=add','',1,'phpcms','127.0.0.1','2013-12-04 01:18:13'),(512,'',0,'poster','','space','?m=poster&c=space&a=add','',1,'phpcms','127.0.0.1','2013-12-04 01:18:25'),(513,'',0,'poster','','poster','?m=poster&c=poster&a=add','',1,'phpcms','127.0.0.1','2013-12-04 01:18:28'),(514,'',0,'poster','','poster','?m=poster&c=poster&a=add','',1,'phpcms','127.0.0.1','2013-12-04 01:18:58'),(515,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 02:08:57'),(516,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 02:09:16'),(517,'',0,'content','','content','?m=content&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-04 02:10:04'),(518,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 02:11:20'),(519,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 02:11:29'),(520,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-04 20:24:23'),(521,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-04 20:24:29'),(522,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-04 20:24:30'),(523,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-04 20:24:35'),(524,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-04 21:44:01'),(525,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-04 21:44:05'),(526,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-04 21:46:28'),(527,'',0,'member','','member','?m=member&c=member&a=manage','',1,'phpcms','127.0.0.1','2013-12-04 21:46:42'),(528,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'phpcms','127.0.0.1','2013-12-04 21:46:50'),(529,'',0,'admin','','site','?m=admin&c=site&a=edit','',1,'phpcms','127.0.0.1','2013-12-04 21:50:06'),(530,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-04 22:08:20'),(531,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-04 22:08:20'),(532,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-04 22:08:21'),(533,'',0,'content','','create_html','?m=content&c=create_html&a=category','',1,'phpcms','127.0.0.1','2013-12-04 22:08:35'),(534,'',0,'content','','create_html','?m=content&c=create_html&a=category','',1,'phpcms','127.0.0.1','2013-12-04 22:08:39'),(535,'',0,'content','','create_html','?m=content&c=create_html&a=category','',1,'phpcms','127.0.0.1','2013-12-04 22:08:41'),(536,'',0,'content','','create_html','?m=content&c=create_html&a=category','',1,'phpcms','127.0.0.1','2013-12-04 22:08:41'),(537,'',0,'content','','create_html','?m=content&c=create_html&a=category','',1,'phpcms','127.0.0.1','2013-12-04 22:08:41'),(538,'',0,'content','','create_html','?m=content&c=create_html&a=category','',1,'phpcms','127.0.0.1','2013-12-04 22:08:42'),(539,'',0,'content','','create_html','?m=content&c=create_html&a=category','',1,'phpcms','127.0.0.1','2013-12-04 22:08:42'),(540,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-04 22:22:42'),(541,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-04 22:28:27'),(542,'',0,'content','','create_html','?m=content&c=create_html&a=show','',1,'phpcms','127.0.0.1','2013-12-04 22:28:35'),(543,'',0,'content','','create_html','?m=content&c=create_html&a=show','',1,'phpcms','127.0.0.1','2013-12-04 22:28:38'),(544,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:28:43'),(545,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:28:56'),(546,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:28:56'),(547,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:28:56'),(548,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:28:57'),(549,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:28:57'),(550,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:28:58'),(551,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:28:58'),(552,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:28:58'),(553,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:28:59'),(554,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:28:59'),(555,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:28:59'),(556,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:00'),(557,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:00'),(558,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:00'),(559,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:01'),(560,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:01'),(561,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:02'),(562,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:02'),(563,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:02'),(564,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:03'),(565,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:03'),(566,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:03'),(567,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:04'),(568,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:04'),(569,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:05'),(570,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:05'),(571,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:05'),(572,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:06'),(573,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:06'),(574,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:06'),(575,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:07'),(576,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:07'),(577,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:07'),(578,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:08'),(579,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:08'),(580,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:08'),(581,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:09'),(582,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:09'),(583,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:10'),(584,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:10'),(585,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:10'),(586,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:11'),(587,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:11'),(588,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:11'),(589,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:12'),(590,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:12'),(591,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:13'),(592,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:13'),(593,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:14'),(594,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:14'),(595,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:14'),(596,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:15'),(597,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:15'),(598,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:15'),(599,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:16'),(600,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:16'),(601,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:16'),(602,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:17'),(603,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:17'),(604,'',0,'content','','create_html','?m=content&c=create_html&a=update_urls','',1,'phpcms','127.0.0.1','2013-12-04 22:29:18'),(605,'',0,'admin','','googlesitemap','?m=admin&c=googlesitemap&a=set','',1,'phpcms','127.0.0.1','2013-12-04 22:48:16'),(606,'',0,'admin','','googlesitemap','?m=admin&c=googlesitemap&a=set','',1,'phpcms','127.0.0.1','2013-12-04 22:48:35'),(607,'',0,'admin','','googlesitemap','?m=admin&c=googlesitemap&a=set','',1,'phpcms','127.0.0.1','2013-12-04 22:48:36'),(608,'',0,'admin','','googlesitemap','?m=admin&c=googlesitemap&a=set','',1,'phpcms','127.0.0.1','2013-12-04 22:48:57'),(609,'',0,'admin','','googlesitemap','?m=admin&c=googlesitemap&a=set','',1,'phpcms','127.0.0.1','2013-12-04 22:48:58'),(610,'',0,'admin','','googlesitemap','?m=admin&c=googlesitemap&a=set','',1,'phpcms','127.0.0.1','2013-12-04 22:48:58'),(611,'',0,'admin','','googlesitemap','?m=admin&c=googlesitemap&a=set','',1,'phpcms','127.0.0.1','2013-12-04 22:49:22'),(612,'',0,'admin','','googlesitemap','?m=admin&c=googlesitemap&a=set','',1,'phpcms','127.0.0.1','2013-12-04 22:49:37'),(613,'',0,'admin','','googlesitemap','?m=admin&c=googlesitemap&a=set','',1,'phpcms','127.0.0.1','2013-12-04 22:49:38'),(614,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 22:52:35'),(615,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-04 22:52:41'),(616,'',0,'admin','','googlesitemap','?m=admin&c=googlesitemap&a=set','',1,'phpcms','127.0.0.1','2013-12-04 22:52:55'),(617,'',0,'member','','member_menu','?m=member&c=member_menu&a=manage','',1,'phpcms','127.0.0.1','2013-12-04 22:52:59'),(618,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'phpcms','127.0.0.1','2013-12-04 23:02:54'),(619,'',0,'admin','','category','?m=admin&c=category&a=edit','',1,'phpcms','127.0.0.1','2013-12-04 23:03:24'),(620,'',0,'admin','','category','?m=admin&c=category&a=listorder','',1,'phpcms','127.0.0.1','2013-12-04 23:04:00'),(621,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'phpcms','127.0.0.1','2013-12-04 23:04:33'),(622,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'phpcms','127.0.0.1','2013-12-04 23:04:38'),(623,'',0,'admin','','category','?m=admin&c=category&a=delete','',1,'phpcms','127.0.0.1','2013-12-04 23:04:42'),(624,'',0,'content','','sitemodel','?m=content&c=sitemodel&a=delete','',1,'phpcms','127.0.0.1','2013-12-04 23:04:53'),(625,'',0,'content','','create_html','?m=content&c=create_html&a=category','',1,'phpcms','127.0.0.1','2013-12-04 23:09:37'),(626,'',0,'content','','create_html','?m=content&c=create_html&a=category','',1,'phpcms','127.0.0.1','2013-12-04 23:09:41'),(627,'',0,'content','','create_html','?m=content&c=create_html&a=category','',1,'phpcms','127.0.0.1','2013-12-04 23:09:42'),(628,'',0,'content','','create_html','?m=content&c=create_html&a=category','',1,'phpcms','127.0.0.1','2013-12-04 23:09:43'),(629,'',0,'content','','create_html','?m=content&c=create_html&a=category','',1,'phpcms','127.0.0.1','2013-12-04 23:09:43'),(630,'',0,'content','','create_html','?m=content&c=create_html&a=category','',1,'phpcms','127.0.0.1','2013-12-04 23:09:43'),(631,'',0,'content','','content','?m=content&c=content&a=clear_data','',1,'phpcms','127.0.0.1','2013-12-04 23:10:42'),(632,'',0,'content','','create_html','?m=content&c=create_html&a=category','',1,'phpcms','127.0.0.1','2013-12-04 23:12:10'),(633,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-06 23:42:30'),(634,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-06 23:42:30'),(635,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-06 23:42:34'),(636,'',0,'special','','special','?m=special&c=special&a=create_special_list','',1,'phpcms','127.0.0.1','2013-12-06 23:42:56'),(637,'',0,'admin','','menu','?m=admin&c=menu&a=edit','',1,'phpcms','127.0.0.1','2013-12-06 23:45:18'),(638,'',0,'admin','','menu','?m=admin&c=menu&a=edit','',1,'phpcms','127.0.0.1','2013-12-06 23:45:27'),(639,'',0,'admin','','menu','?m=admin&c=menu&a=edit','',1,'phpcms','127.0.0.1','2013-12-06 23:45:28'),(640,'',0,'admin','','menu','?m=admin&c=menu&a=add','',1,'phpcms','127.0.0.1','2013-12-06 23:45:44'),(641,'',0,'admin','','menu','?m=admin&c=menu&a=add','',1,'phpcms','127.0.0.1','2013-12-06 23:46:05'),(642,'',0,'special','','special','?m=special&c=special&a=special_content_list','',1,'phpcms','127.0.0.1','2013-12-06 23:46:12'),(643,'',0,'special','','special','?m=special&c=special&a=special_content_list','',1,'phpcms','127.0.0.1','2013-12-06 23:47:09'),(644,'',0,'collection','','node','?m=collection&c=node&a=manage','',1,'phpcms','127.0.0.1','2013-12-06 23:49:15'),(645,'',0,'comment','','comment_admin','?m=comment&c=comment_admin&a=listinfo','',1,'phpcms','127.0.0.1','2013-12-06 23:49:20'),(646,'',0,'collection','','node','?m=collection&c=node&a=manage','',1,'phpcms','127.0.0.1','2013-12-06 23:49:21'),(647,'',0,'collection','','node','?m=collection&c=node&a=manage','',1,'phpcms','127.0.0.1','2013-12-06 23:49:25'),(648,'',0,'comment','','comment_admin','?m=comment&c=comment_admin&a=listinfo','',1,'phpcms','127.0.0.1','2013-12-06 23:49:25'),(649,'',0,'collection','','node','?m=collection&c=node&a=manage','',1,'phpcms','127.0.0.1','2013-12-06 23:49:28'),(650,'',0,'collection','','node','?m=collection&c=node&a=manage','',1,'phpcms','127.0.0.1','2013-12-06 23:49:38'),(651,'',0,'collection','','node','?m=collection&c=node&a=manage','',1,'phpcms','127.0.0.1','2013-12-06 23:49:42'),(652,'',0,'admin','','menu','?m=admin&c=menu&a=edit','',1,'phpcms','127.0.0.1','2013-12-06 23:52:14'),(653,'',0,'admin','','menu','?m=admin&c=menu&a=edit','',1,'phpcms','127.0.0.1','2013-12-06 23:52:29'),(654,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-06 23:53:51'),(655,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-06 23:54:04'),(656,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-06 23:54:14'),(657,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-06 23:54:43'),(658,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-06 23:56:54'),(659,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-06 23:58:18'),(660,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:00:00'),(661,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:00:12'),(662,'',0,'special','','special','?m=special&c=special&a=import','',1,'phpcms','127.0.0.1','2013-12-07 00:00:17'),(663,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:00:58'),(664,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:01:16'),(665,'',0,'special','','content','?m=special&c=content&a=edit','',1,'phpcms','127.0.0.1','2013-12-07 00:01:32'),(666,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:02:14'),(667,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:03:24'),(668,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:07:09'),(669,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:07:30'),(670,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:07:56'),(671,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:10:00'),(672,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:12:39'),(673,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:12:58'),(674,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:13:37'),(675,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:14:03'),(676,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:14:27'),(677,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:14:46'),(678,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:15:11'),(679,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:16:59'),(680,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:17:15'),(681,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:18:42'),(682,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:19:50'),(683,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-07 00:19:53'),(684,'',0,'special','','content','?m=special&c=content&a=download','',1,'phpcms','127.0.0.1','2013-12-07 00:19:56'),(685,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:22:43'),(686,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:24:44'),(687,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:28:56'),(688,'',0,'special','','content','?m=special&c=content&a=listorder','',1,'phpcms','127.0.0.1','2013-12-07 00:29:01'),(689,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:29:02'),(690,'',0,'special','','content','?m=special&c=content&a=listorder','',1,'phpcms','127.0.0.1','2013-12-07 00:32:43'),(691,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:32:44'),(692,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:36:34'),(693,'',0,'special','','content','?m=special&c=content&a=listorder','',1,'phpcms','127.0.0.1','2013-12-07 00:36:37'),(694,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:36:39'),(695,'',0,'special','','content','?m=special&c=content&a=listorder','',1,'phpcms','127.0.0.1','2013-12-07 00:37:02'),(696,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:37:03'),(697,'',0,'special','','content','?m=special&c=content&a=listorder','',1,'phpcms','127.0.0.1','2013-12-07 00:38:46'),(698,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:38:47'),(699,'',0,'special','','content','?m=special&c=content&a=listorder','',1,'phpcms','127.0.0.1','2013-12-07 00:39:03'),(700,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:39:04'),(701,'',0,'special','','content','?m=special&c=content&a=listorder','',1,'phpcms','127.0.0.1','2013-12-07 00:49:06'),(702,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:49:07'),(703,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:49:36'),(704,'',0,'special','','content','?m=special&c=content&a=alterstatus','',1,'phpcms','127.0.0.1','2013-12-07 00:49:40'),(705,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:52:23'),(706,'',0,'special','','content','?m=special&c=content&a=alterstatus','',1,'phpcms','127.0.0.1','2013-12-07 00:52:26'),(707,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:53:07'),(708,'',0,'special','','content','?m=special&c=content&a=alterstatus','',1,'phpcms','127.0.0.1','2013-12-07 00:53:09'),(709,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:53:11'),(710,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:53:55'),(711,'',0,'special','','content','?m=special&c=content&a=alterstatus','',1,'phpcms','127.0.0.1','2013-12-07 00:53:58'),(712,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:53:59'),(713,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 00:53:59'),(714,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-07 00:55:08'),(715,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-07 00:55:42'),(716,'',0,'content','','content','?m=content&c=content&a=add','',1,'phpcms','127.0.0.1','2013-12-07 00:56:27'),(717,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 01:01:50'),(718,'',0,'special','','special','?m=special&c=special&a=special_all_list','',1,'phpcms','127.0.0.1','2013-12-07 01:02:31'),(719,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-07 23:12:43'),(720,'',0,'admin','','index','?m=admin&c=index&a=login','',0,'phpcms','127.0.0.1','2013-12-07 23:12:44');
/*!40000 ALTER TABLE `v9_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_member`
--

DROP TABLE IF EXISTS `v9_member`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_member` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `phpssouid` mediumint(8) unsigned NOT NULL,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `encrypt` char(6) NOT NULL,
  `nickname` char(20) NOT NULL,
  `regdate` int(10) unsigned NOT NULL DEFAULT '0',
  `lastdate` int(10) unsigned NOT NULL DEFAULT '0',
  `regip` char(15) NOT NULL DEFAULT '',
  `lastip` char(15) NOT NULL DEFAULT '',
  `loginnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `email` char(32) NOT NULL DEFAULT '',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `areaid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `point` smallint(5) unsigned NOT NULL DEFAULT '0',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vip` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `overduedate` int(10) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1',
  `connectid` char(40) NOT NULL DEFAULT '',
  `from` char(10) NOT NULL DEFAULT '',
  `mobile` char(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`(20)),
  KEY `phpssouid` (`phpssouid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_member`
--

LOCK TABLES `v9_member` WRITE;
/*!40000 ALTER TABLE `v9_member` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_member_detail`
--

DROP TABLE IF EXISTS `v9_member_detail`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_member_detail` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `birthday` date DEFAULT NULL,
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_member_detail`
--

LOCK TABLES `v9_member_detail` WRITE;
/*!40000 ALTER TABLE `v9_member_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_member_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_member_group`
--

DROP TABLE IF EXISTS `v9_member_group`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_member_group` (
  `groupid` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(15) NOT NULL,
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `starnum` tinyint(2) unsigned NOT NULL,
  `point` smallint(6) unsigned NOT NULL,
  `allowmessage` smallint(5) unsigned NOT NULL DEFAULT '0',
  `allowvisit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowpost` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowpostverify` tinyint(1) unsigned NOT NULL,
  `allowsearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allowupgrade` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowsendmessage` tinyint(1) unsigned NOT NULL,
  `allowpostnum` smallint(5) unsigned NOT NULL DEFAULT '0',
  `allowattachment` tinyint(1) NOT NULL,
  `price_y` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_m` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_d` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `icon` char(30) NOT NULL,
  `usernamecolor` char(7) NOT NULL,
  `description` char(100) NOT NULL,
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`),
  KEY `disabled` (`disabled`),
  KEY `listorder` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_member_group`
--

LOCK TABLES `v9_member_group` WRITE;
/*!40000 ALTER TABLE `v9_member_group` DISABLE KEYS */;
INSERT INTO `v9_member_group` VALUES (8,'游客',1,0,0,0,0,0,0,1,0,0,0,0,'0.00','0.00','0.00','','','',0,0),(2,'新手上路',1,1,50,100,1,1,0,0,0,1,0,0,'50.00','10.00','1.00','','','',2,0),(6,'注册会员',1,2,100,150,0,1,0,0,1,1,0,0,'300.00','30.00','1.00','','','',6,0),(4,'中级会员',1,3,150,500,1,1,0,1,1,1,0,0,'500.00','60.00','1.00','','','',4,0),(5,'高级会员',1,5,300,999,1,1,0,1,1,1,0,0,'360.00','90.00','5.00','','','',5,0),(1,'禁止访问',1,0,0,0,1,1,0,1,0,0,0,0,'0.00','0.00','0.00','','','0',0,0),(7,'邮件认证',1,0,0,0,0,0,0,0,0,0,0,0,'0.00','0.00','0.00','images/group/vip.jpg','#000000','',7,0);
/*!40000 ALTER TABLE `v9_member_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_member_menu`
--

DROP TABLE IF EXISTS `v9_member_menu`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_member_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL DEFAULT '',
  `parentid` smallint(6) NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL DEFAULT '',
  `c` char(20) NOT NULL DEFAULT '',
  `a` char(20) NOT NULL DEFAULT '',
  `data` char(100) NOT NULL DEFAULT '',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `display` enum('1','0') NOT NULL DEFAULT '1',
  `isurl` enum('1','0') NOT NULL DEFAULT '0',
  `url` char(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `listorder` (`listorder`),
  KEY `parentid` (`parentid`),
  KEY `module` (`m`,`c`,`a`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_member_menu`
--

LOCK TABLES `v9_member_menu` WRITE;
/*!40000 ALTER TABLE `v9_member_menu` DISABLE KEYS */;
INSERT INTO `v9_member_menu` VALUES (1,'member_init',0,'member','index','init','t=0',0,'1','',''),(2,'account_manage',0,'member','index','account_manage','t=1',0,'1','',''),(3,'favorite',0,'member','index','favorite','t=2',0,'1','','');
/*!40000 ALTER TABLE `v9_member_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_member_verify`
--

DROP TABLE IF EXISTS `v9_member_verify`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_member_verify` (
  `userid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL,
  `password` char(32) NOT NULL,
  `encrypt` char(6) NOT NULL,
  `nickname` char(20) NOT NULL,
  `regdate` int(10) unsigned NOT NULL,
  `regip` char(15) NOT NULL,
  `email` char(32) NOT NULL,
  `modelid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `point` smallint(5) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `modelinfo` char(255) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `siteid` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message` char(100) DEFAULT NULL,
  `mobile` char(11) NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_member_verify`
--

LOCK TABLES `v9_member_verify` WRITE;
/*!40000 ALTER TABLE `v9_member_verify` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_member_verify` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_member_vip`
--

DROP TABLE IF EXISTS `v9_member_vip`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_member_vip` (
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_member_vip`
--

LOCK TABLES `v9_member_vip` WRITE;
/*!40000 ALTER TABLE `v9_member_vip` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_member_vip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_menu`
--

DROP TABLE IF EXISTS `v9_menu`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_menu` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL DEFAULT '',
  `parentid` smallint(6) NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL DEFAULT '',
  `c` char(20) NOT NULL DEFAULT '',
  `a` char(20) NOT NULL DEFAULT '',
  `data` char(100) NOT NULL DEFAULT '',
  `listorder` smallint(6) unsigned NOT NULL DEFAULT '0',
  `display` enum('1','0') NOT NULL DEFAULT '1',
  `project1` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `project2` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `project3` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `project4` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `project5` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `listorder` (`listorder`),
  KEY `parentid` (`parentid`),
  KEY `module` (`m`,`c`,`a`)
) ENGINE=MyISAM AUTO_INCREMENT=1670 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_menu`
--

LOCK TABLES `v9_menu` WRITE;
/*!40000 ALTER TABLE `v9_menu` DISABLE KEYS */;
INSERT INTO `v9_menu` VALUES (1,'sys_setting',0,'admin','setting','init','',1,'1',0,1,1,1,1),(2,'module',0,'admin','module','init','',2,'1',1,1,1,1,1),(872,'sync_release_point',873,'release','index','init','',3,'1',1,1,1,1,1),(4,'content',0,'content','content','init','',4,'1',1,1,1,1,1),(5,'members',0,'member','member','init','',5,'1',1,1,1,1,1),(6,'userinterface',0,'template','style','init','',6,'1',0,1,1,1,1),(30,'correlative_setting',1,'admin','admin','admin','',0,'1',1,1,1,1,1),(31,'menu_manage',977,'admin','menu','init','',8,'1',1,1,1,1,1),(32,'posid_manage',975,'admin','position','init','',7,'1',1,1,1,1,1),(29,'module_manage',2,'admin','module','','',0,'1',1,1,1,1,1),(10,'panel',0,'admin','index','public_main','',0,'1',0,1,1,1,1),(35,'menu_add',31,'admin','menu','add','',0,'1',1,1,1,1,1),(826,'template_manager',6,'','','','',0,'1',1,1,1,1,1),(54,'admin_manage',49,'admin','admin_manage','init','',0,'1',1,1,1,1,1),(43,'category_manage',975,'admin','category','init','module=admin',4,'1',1,1,1,1,1),(42,'add_category',43,'admin','category','add','s=0',1,'1',1,1,1,1,1),(44,'edit_category',43,'admin','category','edit','',0,'0',1,1,1,1,1),(45,'badword_manage',977,'admin','badword','init','',10,'1',1,1,1,1,1),(46,'posid_add',32,'admin','position','add','',0,'0',1,1,1,1,1),(49,'admin_setting',1,'admin','','','',0,'1',1,1,1,1,1),(50,'role_manage',49,'admin','role','init','',0,'1',1,1,1,1,1),(51,'role_add',50,'admin','role','add','',0,'1',1,1,1,1,1),(52,'category_cache',43,'admin','category','public_cache','module=admin',4,'1',1,1,1,1,1),(55,'manage_member',5,'member','member','manage','',0,'1',1,1,1,1,1),(58,'admin_add',54,'admin','admin_manage','add','',0,'1',1,1,1,1,1),(59,'model_manage',975,'content','sitemodel','init','',5,'1',1,1,1,1,1),(64,'site_management',30,'admin','site','init','',2,'1',1,1,1,1,1),(81,'member_add',72,'member','member','add','',2,'0',1,1,1,1,1),(62,'add_model',59,'content','sitemodel','add','',0,'0',1,1,1,1,1),(65,'release_point_management',30,'admin','release_point','init','',3,'1',1,1,1,1,1),(66,'badword_export',45,'admin','badword','export','',0,'1',1,1,1,1,1),(67,'add_site',64,'admin','site','add','',0,'0',1,1,1,1,1),(68,'badword_import',45,'admin','badword','import','',0,'1',1,1,1,1,1),(812,'member_group_manage',76,'member','member_group','manage','',0,'1',1,1,1,1,1),(74,'member_verify',55,'member','member_verify','manage','s=0',3,'1',1,1,1,1,1),(76,'manage_member_group',5,'member','member_group','manage','',0,'1',1,1,1,1,1),(77,'manage_member_model',5,'member','member_model','manage','',0,'1',1,1,1,1,1),(78,'member_group_add',812,'member','member_group','add','',0,'0',1,1,1,1,1),(79,'member_model_add',813,'member','member_model','add','',1,'0',1,1,1,1,1),(80,'member_model_import',77,'member','member_model','import','',2,'0',1,1,1,1,1),(72,'member_manage',55,'member','member','manage','',1,'1',1,1,1,1,1),(813,'member_model_manage',77,'member','member_model','manage','',0,'1',1,1,1,1,1),(814,'site_edit',64,'admin','site','edit','',0,'0',1,1,1,1,1),(815,'site_del',64,'admin','site','del','',0,'0',1,1,1,1,1),(816,'release_point_add',65,'admin','release_point','add','',0,'0',1,1,1,1,1),(817,'release_point_del',65,'admin','release_point','del','',0,'0',1,1,1,1,1),(818,'release_point_edit',65,'admin','release_point','edit','',0,'0',1,1,1,1,1),(821,'content_publish',4,'content','content','init','',0,'1',1,1,1,1,1),(822,'content_manage',821,'content','content','init','',0,'1',1,1,1,1,1),(867,'linkage',977,'admin','linkage','init','',13,'1',1,1,1,1,1),(827,'template_style',826,'template','style','init','',0,'1',1,1,1,1,1),(828,'import_style',827,'template','style','import','',0,'0',1,1,1,1,1),(831,'template_export',827,'template','style','export','',0,'0',1,1,1,1,1),(830,'template_file',827,'template','file','init','',0,'0',1,1,1,1,1),(832,'template_onoff',827,'template','style','disable','',0,'0',1,1,1,1,1),(833,'template_updatename',827,'template','style','updatename','',0,'0',1,1,1,1,1),(834,'member_lock',72,'member','member','lock','',0,'0',1,1,1,1,1),(835,'member_unlock',72,'member','member','unlock','',0,'0',1,1,1,1,1),(836,'member_move',72,'member','member','move','',0,'0',1,1,1,1,1),(837,'member_delete',72,'member','member','delete','',0,'0',1,1,1,1,1),(842,'verify_ignore',74,'member','member_verify','manage','s=2',0,'1',1,1,1,1,1),(839,'member_setting',55,'member','member_setting','manage','',4,'1',1,1,1,1,1),(841,'verify_pass',74,'member','member_verify','manage','s=1',0,'1',1,1,1,1,1),(843,'verify_delete',74,'member','member_verify','manage','s=3',0,'0',1,1,1,1,1),(844,'verify_deny',74,'member','member_verify','manage','s=4',0,'1',1,1,1,1,1),(845,'never_pass',74,'member','member_verify','manage','s=5',0,'1',1,1,1,1,1),(846,'template_file_list',827,'template','file','init','',0,'0',1,1,1,1,1),(847,'template_file_edit',827,'template','file','edit_file','',0,'0',1,1,1,1,1),(848,'file_add_file',827,'template','file','add_file','',0,'0',1,1,1,1,1),(850,'listorder',76,'member','member_group','sort','',0,'0',1,1,1,1,1),(852,'priv_setting',50,'admin','role','priv_setting','',0,'0',1,1,1,1,1),(853,'role_priv',50,'admin','role','role_priv','',0,'0',1,1,1,1,1),(857,'attachment_manage',821,'attachment','manage','init','',0,'1',1,1,1,1,1),(868,'special',821,'special','special','init','',0,'1',1,1,1,1,1),(869,'template_editor',827,'template','file','edit_file','',0,'0',1,1,1,1,1),(870,'template_visualization',827,'template','file','visualization','',0,'0',1,1,1,1,1),(871,'pc_tag_edit',827,'template','file','edit_pc_tag','',0,'0',1,1,1,1,1),(873,'release_manage',4,'release','html','init','',0,'1',1,1,1,1,1),(874,'type_manage',975,'content','type_manage','init','',6,'1',1,1,1,1,1),(875,'add_type',874,'content','type_manage','add','',0,'0',1,1,1,1,1),(876,'linkageadd',867,'admin','linkage','add','',0,'0',1,1,1,1,1),(877,'failure_list',872,'release','index','failed','',0,'1',1,1,1,1,1),(879,'member_search',72,'member','member','search','',0,'0',1,1,1,1,1),(880,'queue_del',872,'release','index','del','',0,'0',1,1,1,1,1),(881,'member_model_delete',813,'member','member_model','delete','',0,'0',1,1,1,1,1),(882,'member_model_edit',813,'member','member_model','edit','',0,'0',1,1,1,1,1),(885,'workflow',977,'content','workflow','init','',15,'1',1,1,1,1,1),(888,'add_workflow',885,'content','workflow','add','',0,'1',1,1,1,1,1),(889,'member_modelfield_add',813,'member','member_modelfield','add','',0,'0',1,1,1,1,1),(890,'member_modelfield_edit',813,'member','member_modelfield','edit','',0,'0',1,1,1,1,1),(891,'member_modelfield_delete',813,'member','member_modelfield','delete','',0,'0',1,1,1,1,1),(892,'member_modelfield_manage',813,'member','member_modelfield','manage','',0,'0',1,1,1,1,1),(895,'sitemodel_import',59,'content','sitemodel','import','',0,'1',1,1,1,1,1),(896,'pay',29,'pay','payment','pay_list','s=3',0,'1',1,1,1,1,1),(897,'payments',896,'pay','payment','init','',0,'1',1,1,1,1,1),(898,'paylist',896,'pay','payment','pay_list','',0,'1',1,1,1,1,1),(899,'add_content',822,'content','content','add','',0,'0',1,1,1,1,1),(900,'modify_deposit',896,'pay','payment','modify_deposit','s=1',0,'1',1,1,1,1,1),(901,'check_content',822,'content','content','pass','',0,'0',1,1,1,1,1),(902,'dbsource',29,'dbsource','data','init','',0,'1',1,1,1,1,1),(905,'create_content_html',873,'content','create_html','show','',2,'1',1,1,1,1,1),(904,'external_data_sources',902,'dbsource','dbsource_admin','init','',0,'1',1,1,1,1,1),(906,'update_urls',873,'content','create_html','update_urls','',1,'1',1,1,1,1,1),(960,'node_add',957,'collection','node','add','',0,'1',1,1,1,1,1),(909,'fulltext_search',29,'search','search_type','init','',0,'1',1,1,1,1,1),(910,'manage_type',909,'search','search_type','init','',0,'0',1,1,1,1,1),(911,'search_setting',909,'search','search_admin','setting','',0,'1',1,1,1,1,1),(912,'createindex',909,'search','search_admin','createindex','',0,'1',1,1,1,1,1),(913,'add_search_type',909,'search','search_type','add','',0,'0',1,1,1,1,1),(914,'database_toos',977,'admin','database','export','',6,'1',1,1,1,1,1),(915,'database_export',914,'admin','database','export','',0,'1',1,1,1,1,1),(916,'database_import',914,'admin','database','import','',0,'1',1,1,1,1,1),(917,'dbsource_add',902,'dbsource','dbsource_admin','add','',0,'0',1,1,1,1,1),(918,'dbsource_edit',902,'dbsource','dbsource_admin','edit','',0,'0',1,1,1,1,1),(919,'dbsource_del',902,'dbsource','dbsource_admin','del','',0,'0',1,1,1,1,1),(920,'dbsource_data_add',902,'dbsource','data','add','',0,'0',1,1,1,1,1),(921,'dbsource_data_edit',902,'dbsource','data','edit','',0,'0',1,1,1,1,1),(922,'dbsource_data_del',902,'dbsource','data','del','',0,'0',1,1,1,1,1),(926,'add_special',868,'special','special','add','',0,'1',1,1,1,1,1),(927,'edit_special',868,'special','special','edit','',0,'0',1,1,1,1,1),(928,'special_list',868,'special','special','init','',0,'0',1,1,1,1,1),(929,'special_elite',868,'special','special','elite','',0,'0',1,1,1,1,1),(930,'delete_special',868,'special','special','delete','',0,'0',1,1,1,1,1),(931,'badword_add',45,'admin','badword','add','',0,'0',1,1,1,1,1),(932,'badword_edit',45,'admin','badword','edit','',0,'0',1,1,1,1,1),(933,'badword_delete',45,'admin','badword','delete','',0,'0',1,1,1,1,1),(934,'special_listorder',868,'special','special','listorder','',0,'0',1,1,1,1,1),(935,'special_content_list',868,'special','content','init','',0,'0',1,1,1,1,1),(936,'special_content_add',935,'special','content','add','',0,'0',1,1,1,1,1),(937,'special_content_list',935,'special','content','init','',0,'0',1,1,1,1,1),(938,'special_content_edit',935,'special','content','edit','',0,'0',1,1,1,1,1),(939,'special_content_delete',935,'special','content','delete','',0,'0',1,1,1,1,1),(940,'special_content_listorder',935,'special','content','listorder','',0,'0',1,1,1,1,1),(941,'special_content_import',935,'special','special','import','',0,'0',1,1,1,1,1),(942,'history_version',827,'template','template_bak','init','',0,'0',1,1,1,1,1),(943,'restore_version',827,'template','template_bak','restore','',0,'0',1,1,1,1,1),(944,'del_history_version',827,'template','template_bak','del','',0,'0',1,1,1,1,1),(945,'block',821,'block','block_admin','init','',0,'1',1,1,1,1,1),(946,'block_add',945,'block','block_admin','add','',0,'0',1,1,1,1,1),(950,'block_edit',945,'block','block_admin','edit','',0,'0',1,1,1,1,1),(951,'block_del',945,'block','block_admin','del','',0,'0',1,1,1,1,1),(952,'block_update',945,'block','block_admin','block_update','',0,'0',1,1,1,1,1),(953,'block_restore',945,'block','block_admin','history_restore','',0,'0',1,1,1,1,1),(954,'history_del',945,'block','block_admin','history_del','',0,'0',1,1,1,1,1),(978,'urlrule_manage',977,'admin','urlrule','init','',0,'1',1,1,1,1,1),(957,'collection_node',821,'collection','node','manage','',0,'1',1,1,1,1,1),(979,'safe_config',30,'admin','setting','init','&tab=2',11,'1',1,1,1,1,1),(959,'basic_config',30,'admin','setting','init','',10,'1',1,1,1,1,1),(961,'position_edit',32,'admin','position','edit','',0,'0',1,1,1,1,1),(962,'collection_node_edit',957,'collection','node','edit','',0,'0',1,1,1,1,1),(963,'collection_node_delete',957,'collection','node','del','',0,'0',1,1,1,1,1),(990,'col_url_list',957,'collection','node','col_url_list','',0,'0',1,1,1,1,1),(965,'collection_node_publish',957,'collection','node','publist','',0,'0',1,1,1,1,1),(966,'collection_node_import',957,'collection','node','node_import','',0,'0',1,1,1,1,1),(967,'collection_node_export',957,'collection','node','export','',0,'0',1,1,1,1,1),(968,'collection_node_collection_content',957,'collection','node','col_content','',0,'0',1,1,1,1,1),(969,'googlesitemap',977,'admin','googlesitemap','set','',11,'1',1,1,1,1,1),(970,'admininfo',10,'admin','admin_manage','init','',0,'1',1,1,1,1,1),(971,'editpwd',970,'admin','admin_manage','public_edit_pwd','',1,'1',1,1,1,1,1),(972,'editinfo',970,'admin','admin_manage','public_edit_info','',0,'1',1,1,1,1,1),(973,'keylink',977,'admin','keylink','init','',12,'1',1,1,1,1,1),(974,'add_keylink',973,'admin','keylink','add','',0,'0',1,1,1,1,1),(975,'content_settings',4,'content','content_settings','init','',0,'1',1,1,1,1,1),(7,'extend',0,'admin','extend','init_extend','',7,'1',0,1,1,1,1),(977,'extend_all',7,'admin','extend_all','init','',0,'1',1,1,1,1,1),(980,'sso_config',30,'admin','setting','init','&tab=3',12,'1',1,1,1,1,1),(981,'email_config',30,'admin','setting','init','&tab=4',13,'1',1,1,1,1,1),(982,'module_manage',29,'admin','module','init','',0,'1',1,1,1,1,1),(983,'ipbanned',977,'admin','ipbanned','init','',0,'1',1,1,1,1,1),(984,'add_ipbanned',983,'admin','ipbanned','add','',0,'0',1,1,1,1,1),(993,'collection_content_import',957,'collection','node','import','',0,'0',1,1,1,1,1),(991,'copy_node',957,'collection','node','copy','',0,'0',1,1,1,1,1),(992,'content_del',957,'collection','node','content_del','',0,'0',1,1,1,1,1),(989,'downsites',977,'admin','downservers','init','',0,'1',1,1,1,1,1),(994,'import_program_add',957,'collection','node','import_program_add','',0,'0',1,1,1,1,1),(995,'import_program_del',957,'collection','node','import_program_del','',0,'0',1,1,1,1,1),(996,'import_content',957,'collection','node','import_content','',0,'0',1,1,1,1,1),(997,'log',977,'admin','log','init','',0,'1',1,1,1,1,1),(998,'add_page',43,'admin','category','add','s=1',2,'1',1,1,1,1,1),(999,'add_cat_link',43,'admin','category','add','s=2',2,'1',1,1,1,1,1),(1000,'count_items',43,'admin','category','count_items','',5,'1',1,1,1,1,1),(1001,'cache_all',977,'admin','cache_all','init','',0,'1',1,1,1,1,1),(1002,'create_list_html',873,'content','create_html','category','',0,'1',1,1,1,1,1),(1003,'create_html_quick',10,'content','create_html_opt','index','',0,'1',1,1,1,1,1),(1004,'create_index',1003,'content','create_html','public_index','',0,'1',1,1,1,1,1),(1005,'scan',977,'scan','index','init','',0,'1',1,1,1,1,1),(1006,'scan_report',1005,'scan','index','scan_report','',0,'1',1,1,1,1,1),(1007,'md5_creat',1005,'scan','index','md5_creat','',0,'1',1,1,1,1,1),(1008,'album_import',868,'special','album','import','',0,'1',1,1,1,1,1),(8,'phpsso',0,'admin','phpsso','menu','',7,'1',0,1,1,1,1),(1011,'edit_content',822,'content','content','edit','',0,'0',1,1,1,1,1),(1012,'push_to_special',822,'content','push','init','',0,'0',1,1,1,1,1),(1023,'delete_log',997,'admin','log','delete','',0,'0',1,1,1,1,1),(1024,'delete_ip',983,'admin','ipbanned','delete','',0,'0',1,1,1,1,1),(1026,'delete_keylink',973,'admin','keylink','delete','',0,'0',1,1,1,1,1),(1027,'edit_keylink',973,'admin','keylink','edit','',0,'0',1,1,1,1,1),(1034,'operation_pass',74,'member','member_verify','pass','',0,'0',1,1,1,1,1),(1035,'operation_delete',74,'member','member_verify','delete','',0,'0',1,1,1,1,1),(1039,'operation_ignore',74,'member','member_verify','ignore','',0,'0',1,1,1,1,1),(1038,'settingsave',30,'admin','setting','save','',0,'0',1,1,1,1,1),(1040,'admin_edit',54,'admin','admin_manage','edit','',0,'0',1,1,1,1,1),(1041,'operation_reject',74,'member','member_verify','reject','',0,'0',1,1,1,1,1),(1042,'admin_delete',54,'admin','admin_manage','delete','',0,'0',1,1,1,1,1),(1043,'card',54,'admin','admin_manage','card','',0,'0',1,1,1,1,1),(1044,'creat_card',54,'admin','admin_manage','creat_card','',0,'0',1,1,1,1,1),(1045,'remove_card',54,'admin','admin_manage','remove_card','',0,'0',1,1,1,1,1),(1049,'member_group_edit',812,'member','member_group','edit','',0,'0',1,1,1,1,1),(1048,'member_edit',72,'member','member','edit','',0,'0',1,1,1,1,1),(1050,'role_edit',50,'admin','role','edit','',0,'0',1,1,1,1,1),(1051,'member_group_delete',812,'member','member_group','delete','',0,'0',1,1,1,1,1),(1052,'member_manage',50,'admin','role','member_manage','',0,'0',1,1,1,1,1),(1053,'role_delete',50,'admin','role','delete','',0,'0',1,1,1,1,1),(1054,'member_model_export',77,'member','member_model','export','',0,'0',1,1,1,1,1),(1055,'member_model_sort',77,'member','member_model','sort','',0,'0',1,1,1,1,1),(1056,'member_model_move',77,'member','member_model','move','',0,'0',1,1,1,1,1),(1057,'payment_add',897,'pay','payment','add','',0,'0',1,1,1,1,1),(1058,'payment_delete',897,'pay','payment','delete','',0,'0',1,1,1,1,1),(1059,'payment_edit',897,'pay','payment','edit','',0,'0',1,1,1,1,1),(1060,'spend_record',896,'pay','spend','init','',0,'1',1,1,1,1,1),(1061,'pay_stat',896,'pay','payment','pay_stat','',0,'1',1,1,1,1,1),(1062,'fields_manage',59,'content','sitemodel_field','init','',0,'0',1,1,1,1,1),(1063,'edit_model_content',59,'content','sitemodel','edit','',0,'0',1,1,1,1,1),(1064,'disabled_model',59,'content','sitemodel','disabled','',0,'0',1,1,1,1,1),(1065,'delete_model',59,'content','sitemodel','delete','',0,'0',1,1,1,1,1),(1066,'export_model',59,'content','sitemodel','export','',0,'0',1,1,1,1,1),(1067,'delete',874,'content','type_manage','delete','',0,'0',1,1,1,1,1),(1068,'edit',874,'content','type_manage','edit','',0,'0',1,1,1,1,1),(1069,'add_urlrule',978,'admin','urlrule','add','',0,'0',1,1,1,1,1),(1070,'edit_urlrule',978,'admin','urlrule','edit','',0,'0',1,1,1,1,1),(1071,'delete_urlrule',978,'admin','urlrule','delete','',0,'0',1,1,1,1,1),(1072,'edit_menu',31,'admin','menu','edit','',0,'0',1,1,1,1,1),(1073,'delete_menu',31,'admin','menu','delete','',0,'0',1,1,1,1,1),(1074,'edit_workflow',885,'content','workflow','edit','',0,'0',1,1,1,1,1),(1075,'delete_workflow',885,'content','workflow','delete','',0,'0',1,1,1,1,1),(1076,'creat_html',868,'special','special','html','',0,'1',1,1,1,1,1),(1093,'connect_config',30,'admin','setting','init','&tab=5',14,'1',1,1,1,1,1),(1102,'view_modelinfo',74,'member','member_verify','modelinfo','',0,'0',1,1,1,1,1),(1202,'create_special_list',868,'special','special','create_special_list','',0,'1',1,1,1,1,1),(1240,'view_memberlinfo',72,'member','member','memberinfo','',0,'0',1,1,1,1,1),(1239,'copyfrom_manage',977,'admin','copyfrom','init','',0,'1',1,1,1,1,1),(1241,'move_content',822,'content','content','move','',0,'0',1,1,1,1,1),(1242,'poster_template',56,'poster','space','poster_template','',0,'1',1,1,1,1,1),(1243,'create_index',873,'content','create_html','public_index','',0,'1',1,1,1,1,1),(1244,'add_othors',822,'content','content','add_othors','',0,'1',1,1,1,1,1),(1295,'attachment_manager_dir',857,'attachment','manage','dir','',2,'1',1,1,1,1,1),(1296,'attachment_manager_db',857,'attachment','manage','init','',1,'1',1,1,1,1,1),(1346,'attachment_address_replace',857,'attachment','address','init','',3,'1',1,1,1,1,1),(1347,'attachment_address_update',857,'attachment','address','update','',0,'0',1,1,1,1,1),(1348,'delete_content',822,'content','content','delete','',0,'1',1,1,1,1,1),(1349,'member_menu_manage',977,'member','member_menu','manage','',0,'1',1,1,1,1,1),(1350,'member_menu_add',1349,'member','member_menu','add','',0,'1',1,1,1,1,1),(1351,'member_menu_edit',1349,'member','member_menu','edit','',0,'0',1,1,1,1,1),(1352,'member_menu_delete',1349,'member','member_menu','delete','',0,'0',1,1,1,1,1),(1353,'batch_show',822,'content','create_html','batch_show','',0,'1',1,1,1,1,1),(1354,'pay_delete',898,'pay','payment','pay_del','',0,'0',1,1,1,1,1),(1355,'pay_cancel',898,'pay','payment','pay_cancel','',0,'0',1,1,1,1,1),(1356,'discount',898,'pay','payment','discount','',0,'0',1,1,1,1,1),(1360,'category_batch_edit',43,'admin','category','batch_edit','',6,'1',1,1,1,1,1),(1500,'listorder',822,'content','content','listorder','',0,'0',1,1,1,1,1),(1501,'a_clean_data',873,'content','content','clear_data','',0,'1',0,0,0,0,0),(9,'video',0,'video','video','init','',11,'1',1,1,1,1,1),(1589,'video',9,'video','video','init','',0,'1',1,1,1,1,1),(1583,'sub_delete',1589,'video','video','sub_del','',0,'0',1,1,1,1,1),(1582,'subscribe_manage',1589,'video','video','subscribe_list','',0,'1',1,1,1,1,1),(1581,'video_open',1589,'video','video','open','',0,'1',1,1,1,1,1),(1592,'complete_info',1581,'video','video','complete_info','',0,'1',1,1,1,1,1),(1591,'video_inputinfo',1581,'video','video','open','',0,'1',1,1,1,1,1),(1577,'video_manage',1589,'video','video','init','',0,'1',1,1,1,1,1),(1590,'player_manage',1589,'video','player','init','',0,'1',1,1,1,1,1),(1585,'import_ku6_video',1589,'video','video','import_ku6video','',0,'1',1,1,1,1,1),(1579,'video_edit',1589,'video','video','edit','',0,'0',1,1,1,1,1),(1580,'video_delete',1589,'video','video','delete','',0,'0',1,1,1,1,1),(1578,'video_upload',1589,'video','video','add','',0,'1',1,1,1,1,1),(1593,'video_stat',1589,'video','stat','init','',0,'1',1,1,1,1,1),(1586,'video_store',1589,'video','video','video2content','',0,'0',1,1,1,1,1),(1594,'announce',29,'announce','admin_announce','init','s=1',0,'1',1,1,1,1,1),(1595,'announce_add',1594,'announce','admin_announce','add','',0,'0',1,1,1,1,1),(1596,'edit_announce',1594,'announce','admin_announce','edit','s=1',0,'0',1,1,1,1,1),(1597,'check_announce',1594,'announce','admin_announce','init','s=2',0,'1',1,1,1,1,1),(1598,'overdue',1594,'announce','admin_announce','init','s=3',0,'1',1,1,1,1,1),(1599,'del_announce',1594,'announce','admin_announce','delete','',0,'0',1,1,1,1,1),(1600,'comment',29,'comment','comment_admin','init','',0,'1',1,1,1,1,1),(1601,'comment_manage',821,'comment','comment_admin','listinfo','',0,'1',1,1,1,1,1),(1602,'comment_check',1601,'comment','check','checks','',0,'1',1,1,1,1,1),(1603,'comment_list',1600,'comment','comment_admin','lists','',0,'0',1,1,1,1,1),(1604,'link',29,'link','link','init','',0,'1',1,1,1,1,1),(1605,'add_link',1604,'link','link','add','',0,'0',1,1,1,1,1),(1606,'edit_link',1604,'link','link','edit','',0,'0',1,1,1,1,1),(1607,'delete_link',1604,'link','link','delete','',0,'0',1,1,1,1,1),(1608,'link_setting',1604,'link','link','setting','',0,'1',1,1,1,1,1),(1609,'add_type',1604,'link','link','add_type','',0,'1',1,1,1,1,1),(1610,'list_type',1604,'link','link','list_type','',0,'1',1,1,1,1,1),(1611,'check_register',1604,'link','link','check_register','',0,'1',1,1,1,1,1),(1612,'vote',29,'vote','vote','init','',0,'1',1,1,1,1,1),(1613,'add_vote',1612,'vote','vote','add','',0,'0',1,1,1,1,1),(1614,'edit_vote',1612,'vote','vote','edit','',0,'0',1,1,1,1,1),(1615,'delete_vote',1612,'vote','vote','delete','',0,'0',1,1,1,1,1),(1616,'vote_setting',1612,'vote','vote','setting','',0,'1',1,1,1,1,1),(1617,'statistics_vote',1612,'vote','vote','statistics','',0,'0',1,1,1,1,1),(1618,'statistics_userlist',1612,'vote','vote','statistics_userlist','',0,'0',1,1,1,1,1),(1619,'create_js',1612,'vote','vote','create_js','',0,'1',1,1,1,1,1),(1620,'message',29,'message','message','init','',0,'1',1,1,1,1,1),(1621,'send_one',1620,'message','message','send_one','',0,'1',1,1,1,1,1),(1622,'delete_message',1620,'message','message','delete','',0,'0',1,1,1,1,1),(1623,'message_send',1620,'message','message','message_send','',0,'0',1,1,1,1,1),(1624,'message_group_manage',1620,'message','message','message_group_manage','',0,'1',1,1,1,1,1),(1625,'mood',29,'mood','mood_admin','init','',0,'1',1,1,1,1,1),(1626,'mood_setting',1625,'mood','mood_admin','setting','',0,'1',1,1,1,1,1),(1627,'poster',29,'poster','space','init','',0,'1',1,1,1,1,1),(1628,'add_space',1627,'poster','space','add','',0,'0',1,1,1,1,1),(1629,'edit_space',1627,'poster','space','edit','',0,'0',1,1,1,1,1),(1630,'del_space',1627,'poster','space','delete','',0,'0',1,1,1,1,1),(1631,'poster_list',1627,'poster','poster','init','',0,'0',1,1,1,1,1),(1632,'add_poster',1627,'poster','poster','add','',0,'0',1,1,1,1,1),(1633,'edit_poster',1627,'poster','poster','edit','',0,'0',1,1,1,1,1),(1634,'del_poster',1627,'poster','poster','delete','',0,'0',1,1,1,1,1),(1635,'poster_stat',1627,'poster','poster','stat','',0,'0',1,1,1,1,1),(1636,'poster_setting',1627,'poster','space','setting','',0,'0',1,1,1,1,1),(1637,'create_poster_js',1627,'poster','space','create_js','',0,'1',1,1,1,1,1),(1638,'poster_template',1627,'poster','space','poster_template','',0,'1',1,1,1,1,1),(1639,'formguide',29,'formguide','formguide','init','',0,'1',1,1,1,1,1),(1640,'formguide_add',1639,'formguide','formguide','add','',0,'0',1,1,1,1,1),(1641,'formguide_edit',1639,'formguide','formguide','edit','',0,'0',1,1,1,1,1),(1642,'form_info_list',1639,'formguide','formguide_info','init','',0,'0',1,1,1,1,1),(1643,'formguide_disabled',1639,'formguide','formguide','disabled','',0,'0',1,1,1,1,1),(1644,'formguide_delete',1639,'formguide','formguide','delete','',0,'0',1,1,1,1,1),(1645,'formguide_stat',1639,'formguide','formguide','stat','',0,'0',1,1,1,1,1),(1646,'add_public_field',1639,'formguide','formguide_field','add','',0,'1',1,1,1,1,1),(1647,'list_public_field',1639,'formguide','formguide_field','init','',0,'1',1,1,1,1,1),(1648,'module_setting',1639,'formguide','formguide','setting','',0,'0',1,1,1,1,1),(1649,'wap',29,'wap','wap_admin','init','',0,'1',1,1,1,1,1),(1650,'wap_add',1649,'wap','wap_admin','add','',0,'0',1,1,1,1,1),(1651,'wap_edit',1649,'wap','wap_admin','edit','',0,'0',1,1,1,1,1),(1652,'wap_delete',1649,'wap','wap_admin','delete','',0,'0',1,1,1,1,1),(1653,'wap_type_manage',1649,'wap','wap_admin','type_manage','',0,'0',1,1,1,1,1),(1654,'wap_type_edit',1649,'wap','wap_admin','type_edit','',0,'0',1,1,1,1,1),(1655,'wap_type_delete',1649,'wap','wap_admin','type_delete','',0,'0',1,1,1,1,1),(1656,'upgrade',977,'upgrade','index','init','',0,'1',1,1,1,1,1),(1657,'checkfile',1656,'upgrade','index','checkfile','',0,'1',1,1,1,1,1),(1658,'tag',826,'tag','tag','init','',0,'1',1,1,1,1,1),(1659,'add_tag',1658,'tag','tag','add','',0,'0',1,1,1,1,1),(1660,'edit_tag',1658,'tag','tag','edit','',0,'0',1,1,1,1,1),(1661,'delete_tag',1658,'tag','tag','del','',0,'0',1,1,1,1,1),(1662,'tag_lists',1658,'tag','tag','lists','',0,'0',1,1,1,1,1),(1663,'sms',29,'sms','sms','init','',0,'1',1,1,1,1,1),(1664,'sms_setting',1663,'sms','sms','sms_setting','',0,'1',1,1,1,1,1),(1665,'sms_pay_history',1663,'sms','sms','sms_pay_history','',0,'1',1,1,1,1,1),(1666,'sms_buy_history',1663,'sms','sms','sms_buy_history','',0,'1',1,1,1,1,1),(1667,'sms_api',1663,'sms','sms','sms_api','',0,'1',1,1,1,1,1),(1668,'sms_sent',1663,'sms','sms','sms_sent','',0,'1',1,1,1,1,1),(1669,'special_all_list',868,'special','special','special_all_list','',0,'1',1,1,1,1,1);
/*!40000 ALTER TABLE `v9_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_message`
--

DROP TABLE IF EXISTS `v9_message`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_message` (
  `messageid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `send_from_id` char(30) NOT NULL DEFAULT '0',
  `send_to_id` char(30) NOT NULL DEFAULT '0',
  `folder` enum('all','inbox','outbox') NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `message_time` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` char(80) DEFAULT NULL,
  `content` text NOT NULL,
  `replyid` int(10) unsigned NOT NULL DEFAULT '0',
  `del_type` tinyint(1) unsigned DEFAULT '0',
  PRIMARY KEY (`messageid`),
  KEY `msgtoid` (`send_to_id`,`folder`),
  KEY `replyid` (`replyid`),
  KEY `folder` (`send_from_id`,`folder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_message`
--

LOCK TABLES `v9_message` WRITE;
/*!40000 ALTER TABLE `v9_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_message_data`
--

DROP TABLE IF EXISTS `v9_message_data`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_message_data` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `userid` mediumint(8) NOT NULL,
  `group_message_id` int(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `message` (`userid`,`group_message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_message_data`
--

LOCK TABLES `v9_message_data` WRITE;
/*!40000 ALTER TABLE `v9_message_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_message_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_message_group`
--

DROP TABLE IF EXISTS `v9_message_group`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_message_group` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  `subject` char(80) DEFAULT NULL,
  `content` text NOT NULL COMMENT '内容',
  `inputtime` int(10) unsigned DEFAULT '0',
  `status` tinyint(2) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_message_group`
--

LOCK TABLES `v9_message_group` WRITE;
/*!40000 ALTER TABLE `v9_message_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_message_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_model`
--

DROP TABLE IF EXISTS `v9_model`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_model` (
  `modelid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` char(30) NOT NULL,
  `description` char(100) NOT NULL,
  `tablename` char(20) NOT NULL,
  `setting` text NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `items` smallint(5) unsigned NOT NULL DEFAULT '0',
  `enablesearch` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `default_style` char(30) NOT NULL,
  `category_template` char(30) NOT NULL,
  `list_template` char(30) NOT NULL,
  `show_template` char(30) NOT NULL,
  `js_template` varchar(30) NOT NULL,
  `admin_list_template` char(30) NOT NULL,
  `member_add_template` varchar(30) NOT NULL,
  `member_list_template` varchar(30) NOT NULL,
  `sort` tinyint(3) NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`modelid`),
  KEY `type` (`type`,`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_model`
--

LOCK TABLES `v9_model` WRITE;
/*!40000 ALTER TABLE `v9_model` DISABLE KEYS */;
INSERT INTO `v9_model` VALUES (1,1,'文章模型','','news','',0,0,1,0,'default','category','list','show','','','','',0,0),(2,1,'下载模型','','download','',0,0,1,0,'default','category_download','list_download','show_download','','','','',0,0),(3,1,'图片模型','','picture','',0,0,1,0,'default','category_picture','list_picture','show_picture','','','','',0,0),(10,1,'普通会员','普通会员','member_detail','',0,0,1,0,'','','','','','','','',0,2),(11,1,'视频模型','','video','',0,0,1,0,'default','category_video','list_video','show_video','','','','',0,0),(14,1,'留言本','','guestbook','array (\n  \'enabletime\' => \'0\',\n  \'starttime\' => \'1386086400\',\n  \'endtime\' => \'\',\n  \'sendmail\' => \'0\',\n  \'mails\' => \'\',\n  \'allowmultisubmit\' => \'1\',\n  \'allowunreg\' => \'1\',\n)',1386087217,1,1,0,'default','','','show','show_js','','','',0,3);
/*!40000 ALTER TABLE `v9_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_model_field`
--

DROP TABLE IF EXISTS `v9_model_field`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_model_field` (
  `fieldid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `tips` text NOT NULL,
  `css` varchar(30) NOT NULL,
  `minlength` int(10) unsigned NOT NULL DEFAULT '0',
  `maxlength` int(10) unsigned NOT NULL DEFAULT '0',
  `pattern` varchar(255) NOT NULL,
  `errortips` varchar(255) NOT NULL,
  `formtype` varchar(20) NOT NULL,
  `setting` mediumtext NOT NULL,
  `formattribute` varchar(255) NOT NULL,
  `unsetgroupids` varchar(255) NOT NULL,
  `unsetroleids` varchar(255) NOT NULL,
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isunique` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isbase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `issearch` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isfulltext` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isposition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isomnipotent` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  KEY `modelid` (`modelid`,`disabled`),
  KEY `field` (`field`,`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=172 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_model_field`
--

LOCK TABLES `v9_model_field` WRITE;
/*!40000 ALTER TABLE `v9_model_field` DISABLE KEYS */;
INSERT INTO `v9_model_field` VALUES (1,1,1,'catid','栏目','','',1,6,'/^[0-9]{1,6}$/','请选择栏目','catid','array (\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,1,0,1,1,1,0,0,1,0,0),(2,1,1,'typeid','类别','','',0,0,'','','typeid','array (\n  \'minnumber\' => \'\',\n  \'defaultvalue\' => \'\',\n)','','','',0,1,0,1,1,1,0,0,2,0,0),(3,1,1,'title','标题','','inputtitle',1,80,'','请输入标题','title','','','','',0,1,0,1,1,1,1,1,4,0,0),(4,1,1,'thumb','缩略图','','',0,100,'','','image','array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'show_type\' => \'1\',\n  \'upload_maxsize\' => \'1024\',\n  \'upload_allowext\' => \'jpg|jpeg|gif|png|bmp\',\n  \'watermark\' => \'0\',\n  \'isselectimage\' => \'1\',\n  \'images_width\' => \'\',\n  \'images_height\' => \'\',\n)','','','',0,1,0,0,0,1,0,1,14,0,0),(5,1,1,'keywords','关键词','多关键词之间用空格或者“,”隔开','',0,40,'','','keyword','array (\r\n  \'size\' => \'100\',\r\n  \'defaultvalue\' => \'\',\r\n)','','-99','-99',0,1,0,1,1,1,1,0,7,0,0),(6,1,1,'description','摘要','','',0,255,'','','textarea','array (\r\n  \'width\' => \'98\',\r\n  \'height\' => \'46\',\r\n  \'defaultvalue\' => \'\',\r\n  \'enablehtml\' => \'0\',\r\n)','','','',0,1,0,1,0,1,1,1,10,0,0),(7,1,1,'updatetime','更新时间','','',0,0,'','','datetime','array (\r\n  \'dateformat\' => \'int\',\r\n  \'format\' => \'Y-m-d H:i:s\',\r\n  \'defaulttype\' => \'1\',\r\n  \'defaultvalue\' => \'\',\r\n)','','','',1,1,0,1,0,0,0,0,12,0,0),(8,1,1,'content','内容','<div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>','',1,999999,'','内容不能为空','editor','array (\n  \'toolbar\' => \'full\',\n  \'defaultvalue\' => \'\',\n  \'enablekeylink\' => \'1\',\n  \'replacenum\' => \'2\',\n  \'link_mode\' => \'0\',\n  \'enablesaveimage\' => \'1\',\n)','','','',0,0,0,1,0,1,1,0,13,0,0),(9,1,1,'voteid','添加投票','','',0,0,'','','omnipotent','array (\n  \'formtext\' => \'<input type=\\\'text\\\' name=\\\'info[voteid]\\\' id=\\\'voteid\\\' value=\\\'{FIELD_VALUE}\\\' size=\\\'3\\\'> \r\n<input type=\\\'button\\\' value=\"选择已有投票\" onclick=\"omnipotent(\\\'selectid\\\',\\\'?m=vote&c=vote&a=public_get_votelist&from_api=1\\\',\\\'选择已有投票\\\')\" class=\"button\">\r\n<input type=\\\'button\\\' value=\"新增投票\" onclick=\"omnipotent(\\\'addvote\\\',\\\'?m=vote&c=vote&a=add&from_api=1\\\',\\\'添加投票\\\',0)\" class=\"button\">\',\n  \'fieldtype\' => \'mediumint\',\n  \'minnumber\' => \'1\',\n)','','','',0,0,0,1,0,0,1,0,21,0,0),(10,1,1,'pages','分页方式','','',0,0,'','','pages','','','-99','-99',0,0,0,1,0,0,0,0,16,0,0),(11,1,1,'inputtime','发布时间','','',0,0,'','','datetime','array (\n  \'fieldtype\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'0\',\n)','','','',0,1,0,0,0,0,0,1,17,0,0),(12,1,1,'posids','推荐位','','',0,0,'','','posid','array (\n  \'cols\' => \'4\',\n  \'width\' => \'125\',\n)','','','',0,1,0,1,0,0,0,0,18,0,0),(13,1,1,'url','URL','','',0,100,'','','text','','','','',1,1,0,1,0,0,0,0,50,0,0),(14,1,1,'listorder','排序','','',0,6,'','','number','','','','',1,1,0,1,0,0,0,0,51,0,0),(15,1,1,'status','状态','','',0,2,'','','box','','','','',1,1,0,1,0,0,0,0,55,0,0),(16,1,1,'template','内容页模板','','',0,30,'','','template','array (\n  \'size\' => \'\',\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,0,0,0,0,0,0,0,53,0,0),(17,1,1,'groupids_view','阅读权限','','',0,0,'','','groupid','array (\n  \'groupids\' => \'\',\n)','','','',0,0,0,1,0,0,0,0,19,0,0),(18,1,1,'readpoint','阅读收费','','',0,5,'','','readpoint','array (\n  \'minnumber\' => \'1\',\n  \'maxnumber\' => \'99999\',\n  \'decimaldigits\' => \'0\',\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,0,0,0,0,0,0,0,55,0,0),(19,1,1,'relation','相关文章','','',0,0,'','','omnipotent','array (\n  \'formtext\' => \'<input type=\\\'hidden\\\' name=\\\'info[relation]\\\' id=\\\'relation\\\' value=\\\'{FIELD_VALUE}\\\' style=\\\'50\\\' >\r\n<ul class=\"list-dot\" id=\"relation_text\"></ul>\r\n<div>\r\n<input type=\\\'button\\\' value=\"添加相关\" onclick=\"omnipotent(\\\'selectid\\\',\\\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\\\',\\\'添加相关文章\\\',1)\" class=\"button\" style=\"width:66px;\">\r\n<span class=\"edit_content\">\r\n<input type=\\\'button\\\' value=\"显示已有\" onclick=\"show_relation({MODELID},{ID})\" class=\"button\" style=\"width:66px;\">\r\n</span>\r\n</div>\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n)','','2,6,4,5,1,17,18,7','',0,0,0,0,0,0,1,0,15,0,0),(20,1,1,'allow_comment','允许评论','','',0,0,'','','box','array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'tinyint\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'0\',\n)','','','',0,0,0,0,0,0,0,0,54,0,0),(21,1,1,'copyfrom','来源','','',0,100,'','','copyfrom','array (\n  \'defaultvalue\' => \'\',\n)','','','',0,0,0,1,0,1,0,0,8,0,0),(80,1,1,'username','用户名','','',0,20,'','','text','','','','',1,1,0,1,0,0,0,0,98,0,0),(22,2,1,'catid','栏目','','',1,6,'/^[0-9]{1,6}$/','请选择栏目','catid','array (\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,1,0,1,1,1,0,0,1,0,0),(23,2,1,'typeid','类别','','',0,0,'','','typeid','array (\n  \'minnumber\' => \'\',\n  \'defaultvalue\' => \'\',\n)','','','',0,1,0,1,1,1,0,0,2,1,0),(24,2,1,'title','标题','','inputtitle',1,80,'','请输入标题','title','','','','',0,1,0,1,1,1,1,1,4,0,0),(25,2,1,'keywords','关键词','多关键词之间用空格或者“,”隔开','',0,40,'','','keyword','array (\r\n  \'size\' => \'100\',\r\n  \'defaultvalue\' => \'\',\r\n)','','-99','-99',0,1,0,1,1,1,1,0,7,0,0),(26,2,1,'description','摘要','','',0,255,'','','textarea','array (\r\n  \'width\' => \'98\',\r\n  \'height\' => \'46\',\r\n  \'defaultvalue\' => \'\',\r\n  \'enablehtml\' => \'0\',\r\n)','','','',0,1,0,1,0,1,1,1,10,0,0),(27,2,1,'updatetime','更新时间','','',0,0,'','','datetime','array (\r\n  \'dateformat\' => \'int\',\r\n  \'format\' => \'Y-m-d H:i:s\',\r\n  \'defaulttype\' => \'1\',\r\n  \'defaultvalue\' => \'\',\r\n)','','','',1,1,0,1,0,0,0,0,12,0,0),(28,2,1,'content','内容','<div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>','',1,999999,'','内容不能为空','editor','array (\n  \'toolbar\' => \'full\',\n  \'defaultvalue\' => \'\',\n  \'enablekeylink\' => \'1\',\n  \'replacenum\' => \'2\',\n  \'link_mode\' => \'0\',\n  \'enablesaveimage\' => \'1\',\n  \'height\' => \'\',\n  \'disabled_page\' => \'1\',\n)','','','',0,0,0,1,0,1,1,0,13,0,0),(29,2,1,'thumb','缩略图','','',0,100,'','','image','array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'show_type\' => \'1\',\n  \'upload_maxsize\' => \'1024\',\n  \'upload_allowext\' => \'jpg|jpeg|gif|png|bmp\',\n  \'watermark\' => \'0\',\n  \'isselectimage\' => \'1\',\n  \'images_width\' => \'\',\n  \'images_height\' => \'\',\n)','','','',0,1,0,0,0,1,0,1,14,0,0),(30,2,1,'relation','相关文章','','',0,0,'','','omnipotent','array (\n  \'formtext\' => \'<input type=\\\'hidden\\\' name=\\\'info[relation]\\\' id=\\\'relation\\\' value=\\\'{FIELD_VALUE}\\\' style=\\\'50\\\' >\r\n<ul class=\"list-dot\" id=\"relation_text\"></ul>\r\n<div>\r\n<input type=\\\'button\\\' value=\"添加相关\" onclick=\"omnipotent(\\\'selectid\\\',\\\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\\\',\\\'添加相关文章\\\',1)\" class=\"button\" style=\"width:66px;\">\r\n<span class=\"edit_content\">\r\n<input type=\\\'button\\\' value=\"显示已有\" onclick=\"show_relation({MODELID},{ID})\" class=\"button\" style=\"width:66px;\">\r\n</span>\r\n</div>\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n)','','2,6,4,5,1,17,18,7','',0,0,0,0,0,0,1,0,15,0,0),(31,2,1,'pages','分页方式','','',0,0,'','','pages','','','-99','-99',0,0,0,1,0,0,0,0,16,1,0),(32,2,1,'inputtime','发布时间','','',0,0,'','','datetime','array (\n  \'fieldtype\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'0\',\n)','','','',0,1,0,0,0,0,0,1,17,0,0),(33,2,1,'posids','推荐位','','',0,0,'','','posid','array (\n  \'cols\' => \'4\',\n  \'width\' => \'125\',\n)','','','',0,1,0,1,0,0,0,0,18,0,0),(34,2,1,'groupids_view','阅读权限','','',0,0,'','','groupid','array (\n  \'groupids\' => \'\',\n)','','','',0,0,0,1,0,0,0,0,19,0,0),(35,2,1,'url','URL','','',0,100,'','','text','','','','',1,1,0,1,0,0,0,0,50,0,0),(36,2,1,'listorder','排序','','',0,6,'','','number','','','','',1,1,0,1,0,0,0,0,51,0,0),(37,2,1,'template','内容页模板','','',0,30,'','','template','array (\n  \'size\' => \'\',\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,0,0,0,0,0,0,0,53,0,0),(38,2,1,'allow_comment','允许评论','','',0,0,'','','box','array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'tinyint\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'0\',\n)','','','',0,0,0,0,0,0,0,0,54,0,0),(39,2,1,'status','状态','','',0,2,'','','box','','','','',1,1,0,1,0,0,0,0,55,0,0),(40,2,1,'readpoint','阅读收费','','',0,5,'','','readpoint','array (\n  \'minnumber\' => \'1\',\n  \'maxnumber\' => \'99999\',\n  \'decimaldigits\' => \'0\',\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,0,0,0,0,0,0,0,55,0,0),(41,2,1,'username','用户名','','',0,20,'','','text','','','','',1,1,0,1,0,0,0,0,98,0,0),(42,2,1,'downfiles','本地下载','','',0,0,'','','downfiles','array (\n  \'upload_allowext\' => \'rar|zip\',\n  \'isselectimage\' => \'0\',\n  \'upload_number\' => \'10\',\n  \'downloadlink\' => \'1\',\n  \'downloadtype\' => \'1\',\n)','','','',0,0,0,1,0,1,0,0,8,0,0),(43,2,1,'downfile','镜像下载','','',0,0,'','','downfile','array (\n  \'downloadlink\' => \'1\',\n  \'downloadtype\' => \'1\',\n  \'upload_allowext\' => \'rar|zip\',\n  \'isselectimage\' => \'0\',\n  \'upload_number\' => \'1\',\n)','','','',0,0,0,1,0,1,0,0,9,0,0),(44,2,1,'systems','软件平台','<select name=\'selectSystem\' onchange=\"ChangeInput(this,document.myform.systems,\'/\')\">\r\n	<option value=\'WinXP\'>WinXP</option>\r\n	<option value=\'Vista\'>Windows 7</option>\r\n	<option value=\'Win2000\'>Win2000</option>\r\n	<option value=\'Win2003\'>Win2003</option>\r\n	<option value=\'Unix\'>Unix</option>\r\n	<option value=\'Linux\'>Linux</option>\r\n	<option value=\'MacOS\'>MacOS</option>\r\n</select>','',0,100,'','','text','array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'Win2000/WinXP/Win2003\',\n  \'ispassword\' => \'0\',\n)','','','',0,1,0,1,0,1,1,0,14,0,0),(45,2,1,'copytype','软件授权形式','','',0,15,'','','box','array (\n  \'options\' => \'免费版|免费版\r\n共享版|共享版\r\n试用版|试用版\r\n演示版|演示版\r\n注册版|注册版\r\n破解版|破解版\r\n零售版|零售版\r\nOEM版|OEM版\',\n  \'boxtype\' => \'select\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'cols\' => \'5\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'default_select_value\' => \'免费版\',\n)','','','',0,1,0,1,0,1,0,0,12,0,0),(46,2,1,'language','软件语言','','',0,16,'','','box','array (\n  \'options\' => \'英文|英文\r\n简体中文|简体中文\r\n繁体中文|繁体中文\r\n简繁中文|简繁中文\r\n多国语言|多国语言\r\n其他语言|其他语言\',\n  \'boxtype\' => \'select\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'cols\' => \'5\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'default_select_value\' => \'简体中文\',\n)','','','',0,1,0,1,0,1,0,0,13,0,0),(47,2,1,'classtype','软件类型','','',0,20,'','','box','array (\n  \'options\' => \'国产软件|国产软件\r\n国外软件|国外软件\r\n汉化补丁|汉化补丁\r\n程序源码|程序源码\r\n其他|其他\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'cols\' => \'5\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'default_select_value\' => \'国产软件\',\n)','','','',0,1,0,1,0,1,0,0,17,0,0),(48,2,1,'version','版本号','','',0,20,'','','text','array (\n  \'size\' => \'10\',\n  \'defaultvalue\' => \'\',\n  \'ispassword\' => \'0\',\n)','','','',0,1,0,0,0,1,1,0,13,0,0),(49,2,1,'filesize','文件大小','','',0,10,'','','text','array (\n  \'size\' => \'10\',\n  \'defaultvalue\' => \'未知\',\n  \'ispassword\' => \'0\',\n)','','','',0,1,0,0,0,1,1,0,14,0,0),(50,2,1,'stars','评分等级','','',0,20,'','','box','array (\n  \'options\' => \'★☆☆☆☆|★☆☆☆☆\r\n★★☆☆☆|★★☆☆☆\r\n★★★☆☆|★★★☆☆\r\n★★★★☆|★★★★☆\r\n★★★★★|★★★★★\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'cols\' => \'5\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'default_select_value\' => \'★★★☆☆\',\n)','','','',0,1,0,1,0,1,0,0,17,0,0),(51,3,1,'allow_comment','允许评论','','',0,0,'','','box','array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'tinyint\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'0\',\n)','','','',0,0,0,0,0,0,0,0,54,0,0),(52,3,1,'template','内容页模板','','',0,30,'','','template','array (\n  \'size\' => \'\',\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,0,0,0,0,0,0,0,53,0,0),(53,3,1,'url','URL','','',0,100,'','','text','','','','',1,1,0,1,0,0,0,0,50,0,0),(54,3,1,'listorder','排序','','',0,6,'','','number','','','','',1,1,0,1,0,0,0,0,51,0,0),(55,3,1,'posids','推荐位','','',0,0,'','','posid','array (\n  \'cols\' => \'4\',\n  \'width\' => \'125\',\n)','','','',0,1,0,1,0,0,0,0,18,0,0),(56,3,1,'groupids_view','阅读权限','','',0,0,'','','groupid','array (\n  \'groupids\' => \'\',\n)','','','',0,0,0,1,0,0,0,0,19,0,0),(57,3,1,'inputtime','发布时间','','',0,0,'','','datetime','array (\n  \'fieldtype\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'0\',\n)','','','',0,1,0,0,0,0,0,1,17,0,0),(58,3,1,'pages','分页方式','','',0,0,'','','pages','','','-99','-99',0,0,0,1,0,0,0,0,16,0,0),(59,3,1,'relation','相关组图','','',0,0,'','','omnipotent','array (\n  \'formtext\' => \'<input type=\\\'hidden\\\' name=\\\'info[relation]\\\' id=\\\'relation\\\' value=\\\'{FIELD_VALUE}\\\' style=\\\'50\\\' >\r\n<ul class=\"list-dot\" id=\"relation_text\"></ul>\r\n<div>\r\n<input type=\\\'button\\\' value=\"添加相关\" onclick=\"omnipotent(\\\'selectid\\\',\\\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\\\',\\\'添加相关文章\\\',1)\" class=\"button\" style=\"width:66px;\">\r\n<span class=\"edit_content\">\r\n<input type=\\\'button\\\' value=\"显示已有\" onclick=\"show_relation({MODELID},{ID})\" class=\"button\" style=\"width:66px;\">\r\n</span>\r\n</div>\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n)','','2,6,4,5,1,17,18,7','',0,0,0,0,0,0,1,0,15,0,0),(60,3,1,'thumb','缩略图','','',0,100,'','','image','array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'show_type\' => \'1\',\n  \'upload_maxsize\' => \'1024\',\n  \'upload_allowext\' => \'jpg|jpeg|gif|png|bmp\',\n  \'watermark\' => \'0\',\n  \'isselectimage\' => \'1\',\n  \'images_width\' => \'\',\n  \'images_height\' => \'\',\n)','','','',0,1,0,0,0,1,0,1,14,0,0),(61,3,1,'content','内容','<div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>','',0,999999,'','','editor','array (\n  \'toolbar\' => \'full\',\n  \'defaultvalue\' => \'\',\n  \'enablekeylink\' => \'1\',\n  \'replacenum\' => \'2\',\n  \'link_mode\' => \'0\',\n  \'enablesaveimage\' => \'1\',\n  \'height\' => \'\',\n  \'disabled_page\' => \'1\',\n)','','','',0,0,0,1,0,1,1,0,13,0,0),(62,3,1,'updatetime','更新时间','','',0,0,'','','datetime','array (\r\n  \'dateformat\' => \'int\',\r\n  \'format\' => \'Y-m-d H:i:s\',\r\n  \'defaulttype\' => \'1\',\r\n  \'defaultvalue\' => \'\',\r\n)','','','',1,1,0,1,0,0,0,0,12,0,0),(63,3,1,'description','摘要','','',0,255,'','','textarea','array (\r\n  \'width\' => \'98\',\r\n  \'height\' => \'46\',\r\n  \'defaultvalue\' => \'\',\r\n  \'enablehtml\' => \'0\',\r\n)','','','',0,1,0,1,0,1,1,1,10,0,0),(64,3,1,'title','标题','','inputtitle',1,80,'','请输入标题','title','','','','',0,1,0,1,1,1,1,1,4,0,0),(65,3,1,'keywords','关键词','多关键词之间用空格或者“,”隔开','',0,40,'','','keyword','array (\r\n  \'size\' => \'100\',\r\n  \'defaultvalue\' => \'\',\r\n)','','-99','-99',0,1,0,1,1,1,1,0,7,0,0),(66,3,1,'typeid','类别','','',0,0,'','','typeid','array (\n  \'minnumber\' => \'\',\n  \'defaultvalue\' => \'\',\n)','','','',0,1,0,1,1,1,0,0,2,0,0),(67,3,1,'catid','栏目','','',1,6,'/^[0-9]{1,6}$/','请选择栏目','catid','array (\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,1,0,1,1,1,0,0,1,0,0),(68,3,1,'status','状态','','',0,2,'','','box','','','','',1,1,0,1,0,0,0,0,55,0,0),(69,3,1,'readpoint','阅读收费','','',0,5,'','','readpoint','array (\n  \'minnumber\' => \'1\',\n  \'maxnumber\' => \'99999\',\n  \'decimaldigits\' => \'0\',\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,0,0,0,0,0,0,0,55,0,0),(70,3,1,'username','用户名','','',0,20,'','','text','','','','',1,1,0,1,0,0,0,0,98,0,0),(71,3,1,'pictureurls','组图','','',0,0,'','','images','array (\n  \'upload_allowext\' => \'gif|jpg|jpeg|png|bmp\',\n  \'isselectimage\' => \'1\',\n  \'upload_number\' => \'50\',\n)','','','',0,0,0,1,0,1,0,0,15,0,0),(72,3,1,'copyfrom','来源','','',0,0,'','','copyfrom','array (\n  \'defaultvalue\' => \'\',\n)','','','',0,0,0,1,0,1,0,0,8,0,0),(73,1,1,'islink','转向链接','','',0,0,'','','islink','','','','',0,1,0,0,0,1,0,0,30,0,0),(74,2,1,'islink','转向链接','','',0,0,'','','islink','','','','',0,1,0,0,0,1,0,0,30,0,0),(75,3,1,'islink','转向链接','','',0,0,'','','islink','','','','',0,1,0,0,0,1,0,0,30,0,0),(83,10,1,'birthday','生日','','',0,0,'','生日格式错误','datetime','array (\n  \'fieldtype\' => \'date\',\n  \'format\' => \'Y-m-d\',\n  \'defaulttype\' => \'0\',\n)','','','',0,0,0,0,0,1,1,0,0,0,0),(84,11,1,'catid','栏目','','',1,6,'/^[0-9]{1,6}$/','请选择栏目','catid','array (\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,1,0,1,1,1,0,0,1,0,0),(85,11,1,'typeid','类别','','',0,0,'','','typeid','array (\n  \'minnumber\' => \'\',\n  \'defaultvalue\' => \'\',\n)','','','',0,1,0,1,1,1,0,0,2,0,0),(86,11,1,'title','标题','','inputtitle',1,80,'','请输入标题','title','array (\n)','','','',0,1,0,1,1,1,1,1,4,0,0),(87,11,1,'keywords','关键词','多关键词之间用空格或者“,”隔开','',0,40,'','','keyword','array (\n  \'size\' => \'100\',\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,1,0,1,1,1,1,0,7,0,0),(88,11,1,'description','摘要','','',0,255,'','','textarea','array (\n  \'width\' => \'98\',\n  \'height\' => \'46\',\n  \'defaultvalue\' => \'\',\n  \'enablehtml\' => \'0\',\n)','','','',0,1,0,1,0,1,1,1,10,0,0),(89,11,1,'updatetime','更新时间','','',0,0,'','','datetime','array (\n  \'dateformat\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'1\',\n  \'defaultvalue\' => \'\',\n)','','','',1,1,0,1,0,0,0,0,12,0,0),(90,11,1,'content','内容','<div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>','',0,999999,'','内容不能为空','editor','array (\n  \'toolbar\' => \'full\',\n  \'defaultvalue\' => \'\',\n  \'enablekeylink\' => \'1\',\n  \'replacenum\' => \'2\',\n  \'link_mode\' => \'0\',\n  \'enablesaveimage\' => \'1\',\n  \'height\' => \'\',\n  \'disabled_page\' => \'0\',\n)','','','',0,0,0,1,0,1,1,0,13,0,0),(91,11,1,'thumb','缩略图','','',0,100,'','','image','array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'show_type\' => \'1\',\n  \'upload_maxsize\' => \'1024\',\n  \'upload_allowext\' => \'jpg|jpeg|gif|png|bmp\',\n  \'watermark\' => \'0\',\n  \'isselectimage\' => \'1\',\n  \'images_width\' => \'\',\n  \'images_height\' => \'\',\n)','','','',0,1,0,0,0,1,0,1,14,0,0),(92,11,1,'relation','相关文章','','',0,0,'','','omnipotent','array (\n  \'formtext\' => \'<input type=\\\'hidden\\\' name=\\\'info[relation]\\\' id=\\\'relation\\\' value=\\\'{FIELD_VALUE}\\\' style=\\\'50\\\' >\r\n<ul class=\"list-dot\" id=\"relation_text\"></ul>\r\n<div>\r\n<input type=\\\'button\\\' value=\"添加相关\" onclick=\"omnipotent(\\\'selectid\\\',\\\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\\\',\\\'添加相关文章\\\',1)\" class=\"button\" style=\"width:66px;\">\r\n<span class=\"edit_content\">\r\n<input type=\\\'button\\\' value=\"显示已有\" onclick=\"show_relation({MODELID},{ID})\" class=\"button\" style=\"width:66px;\">\r\n</span>\r\n</div>\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n)','','2,6,4,5,1,17,18,7','',0,0,0,0,0,0,1,0,15,0,0),(93,11,1,'pages','分页方式','','',0,0,'','','pages','array (\n)','','-99','-99',0,0,0,1,0,0,0,0,16,0,0),(94,11,1,'inputtime','发布时间','','',0,0,'','','datetime','array (\n  \'fieldtype\' => \'int\',\n  \'format\' => \'Y-m-d H:i:s\',\n  \'defaulttype\' => \'0\',\n)','','','',0,1,0,0,0,0,0,1,17,0,0),(95,11,1,'posids','推荐位','','',0,0,'','','posid','array (\n  \'cols\' => \'4\',\n  \'width\' => \'125\',\n)','','','',0,1,0,1,0,0,0,0,18,0,0),(96,11,1,'groupids_view','阅读权限','','',0,100,'','','groupid','array (\n  \'groupids\' => \'\',\n)','','','',0,0,0,1,0,0,0,0,19,0,0),(97,11,1,'url','URL','','',0,100,'','','text','array (\n)','','','',1,1,0,1,0,0,0,0,50,0,0),(98,11,1,'listorder','排序','','',0,6,'','','number','array (\n)','','','',1,1,0,1,0,0,0,0,51,0,0),(99,11,1,'template','内容页模板','','',0,30,'','','template','array (\n  \'size\' => \'\',\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,0,0,0,0,0,0,0,53,0,0),(100,11,1,'allow_comment','允许评论','','',0,0,'','','box','array (\n  \'options\' => \'允许评论|1\r\n不允许评论|0\',\n  \'boxtype\' => \'radio\',\n  \'fieldtype\' => \'tinyint\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'88\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'0\',\n)','','','',0,0,0,0,0,0,0,0,54,0,0),(101,11,1,'status','状态','','',0,2,'','','box','array (\n)','','','',1,1,0,1,0,0,0,0,55,0,0),(102,11,1,'readpoint','阅读收费','','',0,5,'','','readpoint','array (\n  \'minnumber\' => \'1\',\n  \'maxnumber\' => \'99999\',\n  \'decimaldigits\' => \'0\',\n  \'defaultvalue\' => \'\',\n)','','-99','-99',0,0,0,0,0,0,0,0,55,0,0),(103,11,1,'username','用户名','','',0,20,'','','text','array (\n)','','','',1,1,0,1,0,0,0,0,98,0,0),(104,11,1,'islink','转向链接','','',0,0,'','','islink','array (\n)','','','',0,1,0,1,0,1,0,0,20,0,0),(105,11,1,'video','视频上传','','',0,0,'','','video','array (\n  \'upload_allowext\' => \'flv|rm|mp4|rmv\',\n)','','','',0,0,0,1,0,1,0,0,8,0,0),(106,11,1,'vision','画质','','',0,0,'','','box','array (\n  \'options\' => \'高清|1\r\n普通|2\',\n  \'boxtype\' => \'select\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'0\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'1\',\n)','','','',0,1,0,1,0,1,0,0,9,0,0),(107,11,1,'video_category','视频分类','','',0,0,'','','box','array (\n  \'options\' => \'喜剧|1\r\n爱情|2\r\n科幻|3\r\n剧情|4\r\n动作|5\r\n伦理|6\',\n  \'boxtype\' => \'select\',\n  \'fieldtype\' => \'varchar\',\n  \'minnumber\' => \'1\',\n  \'width\' => \'80\',\n  \'size\' => \'1\',\n  \'defaultvalue\' => \'1\',\n  \'outputtype\' => \'1\',\n  \'filtertype\' => \'1\',\n)','','','',0,1,0,1,0,1,0,0,9,0,0),(165,14,1,'name','您的称呼','','',1,0,'','','text','array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'ispassword\' => \'0\',\n)','','','',0,0,0,0,0,0,0,0,0,0,0),(166,14,1,'mob','手机号码','','',1,0,'','','text','array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'ispassword\' => \'0\',\n)','','','',0,0,0,0,0,0,0,0,0,0,0),(167,14,1,'email','电子邮件','','',1,0,'','','text','array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'ispassword\' => \'0\',\n)','','','',0,0,0,0,0,0,0,0,0,0,0),(168,14,1,'fwdw','服务单位','','',1,0,'','','text','array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'ispassword\' => \'0\',\n)','','','',0,0,0,0,0,0,0,0,0,0,0),(169,14,1,'ndzc','您的职称','','',1,0,'','','text','array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'ispassword\' => \'0\',\n)','','','',0,0,0,0,0,0,0,0,0,0,0),(170,14,1,'szks','所在科室','','',1,0,'','','text','array (\n  \'size\' => \'50\',\n  \'defaultvalue\' => \'\',\n  \'ispassword\' => \'0\',\n)','','','',0,0,0,0,0,0,0,0,0,0,0),(171,14,1,'content','留言内容','','',0,0,'','','textarea','array (\n  \'width\' => \'100%\',\n  \'height\' => \'46\',\n  \'defaultvalue\' => \'\',\n  \'enablehtml\' => \'0\',\n)','','','',0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `v9_model_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_module`
--

DROP TABLE IF EXISTS `v9_module`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_module` (
  `module` varchar(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(50) NOT NULL,
  `iscore` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `version` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL,
  `setting` mediumtext NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `installdate` date NOT NULL DEFAULT '0000-00-00',
  `updatedate` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_module`
--

LOCK TABLES `v9_module` WRITE;
/*!40000 ALTER TABLE `v9_module` DISABLE KEYS */;
INSERT INTO `v9_module` VALUES ('admin','admin','',1,'1.0','','array (\n  \'admin_email\' => \'phpcms@phpcms.cn\',\n  \'adminaccessip\' => \'0\',\n  \'maxloginfailedtimes\' => \'8\',\n  \'maxiplockedtime\' => \'15\',\n  \'minrefreshtime\' => \'2\',\n  \'mail_type\' => \'1\',\n  \'mail_server\' => \'smtp.qq.com\',\n  \'mail_port\' => \'25\',\n  \'mail_user\' => \'phpcms.cn@foxmail.com\',\n  \'mail_auth\' => \'1\',\n  \'mail_from\' => \'phpcms.cn@foxmail.com\',\n  \'mail_password\' => \'\',\n  \'errorlog_size\' => \'20\',\n)',0,0,'2010-10-18','2010-10-18'),('member','会员','',1,'1.0','','array (\n  \'allowregister\' => \'1\',\n  \'choosemodel\' => \'1\',\n  \'enablemailcheck\' => \'0\',\n  \'registerverify\' => \'0\',\n  \'showapppoint\' => \'0\',\n  \'rmb_point_rate\' => \'10\',\n  \'defualtpoint\' => \'0\',\n  \'defualtamount\' => \'0\',\n  \'showregprotocol\' => \'0\',\n  \'regprotocol\' => \'		 欢迎您注册成为phpcms用户\r\n请仔细阅读下面的协议，只有接受协议才能继续进行注册。 \r\n1．服务条款的确认和接纳\r\n　　phpcms用户服务的所有权和运作权归phpcms拥有。phpcms所提供的服务将按照有关章程、服务条款和操作规则严格执行。用户通过注册程序点击“我同意” 按钮，即表示用户与phpcms达成协议并接受所有的服务条款。\r\n2． phpcms服务简介\r\n　　phpcms通过国际互联网为用户提供新闻及文章浏览、图片浏览、软件下载、网上留言和BBS论坛等服务。\r\n　　用户必须： \r\n　　1)购置设备，包括个人电脑一台、调制解调器一个及配备上网装置。 \r\n　　2)个人上网和支付与此服务有关的电话费用、网络费用。\r\n　　用户同意： \r\n　　1)提供及时、详尽及准确的个人资料。 \r\n　　2)不断更新注册资料，符合及时、详尽、准确的要求。所有原始键入的资料将引用为注册资料。 \r\n　　3)用户同意遵守《中华人民共和国保守国家秘密法》、《中华人民共和国计算机信息系统安全保护条例》、《计算机软件保护条例》等有关计算机及互联网规定的法律和法规、实施办法。在任何情况下，phpcms合理地认为用户的行为可能违反上述法律、法规，phpcms可以在任何时候，不经事先通知终止向该用户提供服务。用户应了解国际互联网的无国界性，应特别注意遵守当地所有有关的法律和法规。\r\n3． 服务条款的修改\r\n　　phpcms会不定时地修改服务条款，服务条款一旦发生变动，将会在相关页面上提示修改内容。如果您同意改动，则再一次点击“我同意”按钮。 如果您不接受，则及时取消您的用户使用服务资格。\r\n4． 服务修订\r\n　　phpcms保留随时修改或中断服务而不需知照用户的权利。phpcms行使修改或中断服务的权利，不需对用户或第三方负责。\r\n5． 用户隐私制度\r\n　　尊重用户个人隐私是phpcms的 基本政策。phpcms不会公开、编辑或透露用户的注册信息，除非有法律许可要求，或phpcms在诚信的基础上认为透露这些信息在以下三种情况是必要的： \r\n　　1)遵守有关法律规定，遵从合法服务程序。 \r\n　　2)保持维护phpcms的商标所有权。 \r\n　　3)在紧急情况下竭力维护用户个人和社会大众的隐私安全。 \r\n　　4)符合其他相关的要求。 \r\n6．用户的帐号，密码和安全性\r\n　　一旦注册成功成为phpcms用户，您将得到一个密码和帐号。如果您不保管好自己的帐号和密码安全，将对因此产生的后果负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。您可随时根据指示改变您的密码，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，立即通知phpcms。\r\n7． 免责条款\r\n　　用户明确同意网站服务的使用由用户个人承担风险。 　　 \r\n　　phpcms不作任何类型的担保，不担保服务一定能满足用户的要求，也不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保。用户理解并接受：任何通过phpcms服务取得的信息资料的可靠性取决于用户自己，用户自己承担所有风险和责任。 \r\n8．有限责任\r\n　　phpcms对任何直接、间接、偶然、特殊及继起的损害不负责任。\r\n9． 不提供零售和商业性服务 \r\n　　用户使用网站服务的权利是个人的。用户只能是一个单独的个体而不能是一个公司或实体商业性组织。用户承诺不经phpcms同意，不能利用网站服务进行销售或其他商业用途。\r\n10．用户责任 \r\n　　用户单独承担传输内容的责任。用户必须遵循： \r\n　　1)从中国境内向外传输技术性资料时必须符合中国有关法规。 \r\n　　2)使用网站服务不作非法用途。 \r\n　　3)不干扰或混乱网络服务。 \r\n　　4)不在论坛BBS或留言簿发表任何与政治相关的信息。 \r\n　　5)遵守所有使用网站服务的网络协议、规定、程序和惯例。\r\n　　6)不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益。\r\n　　7)不得利用本站制作、复制和传播下列信息： \r\n　　　1、煽动抗拒、破坏宪法和法律、行政法规实施的；\r\n　　　2、煽动颠覆国家政权，推翻社会主义制度的；\r\n　　　3、煽动分裂国家、破坏国家统一的；\r\n　　　4、煽动民族仇恨、民族歧视，破坏民族团结的；\r\n　　　5、捏造或者歪曲事实，散布谣言，扰乱社会秩序的；\r\n　　　6、宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；\r\n　　　7、公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；\r\n　　　8、损害国家机关信誉的；\r\n　　　9、其他违反宪法和法律行政法规的；\r\n　　　10、进行商业广告行为的。\r\n　　用户不能传输任何教唆他人构成犯罪行为的资料；不能传输长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法 律的资料。未经许可而非法进入其它电脑系统是禁止的。若用户的行为不符合以上的条款，phpcms将取消用户服务帐号。\r\n11．网站内容的所有权\r\n　　phpcms定义的内容包括：文字、软件、声音、相片、录象、图表；在广告中全部内容；电子邮件的全部内容；phpcms为用户提供的商业信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在phpcms和广告商授权下才能使用这些内容，而不能擅自复制、篡改这些内容、或创造与内容有关的派生产品。\r\n12．附加信息服务\r\n　　用户在享用phpcms提供的免费服务的同时，同意接受phpcms提供的各类附加信息服务。\r\n13．解释权\r\n　　本注册协议的解释权归phpcms所有。如果其中有任何条款与国家的有关法律相抵触，则以国家法律的明文规定为准。 \',\n  \'registerverifymessage\' => \' 欢迎您注册成为phpcms用户，您的账号需要邮箱认证，点击下面链接进行认证：{click}\r\n或者将网址复制到浏览器：{url}\',\n  \'forgetpassword\' => \' phpcms密码找回，请在一小时内点击下面链接进行操作：{click}\r\n或者将网址复制到浏览器：{url}\',\n)',0,0,'2010-09-06','2010-09-06'),('pay','支付','',1,'1.0','','',0,0,'2010-09-06','2010-09-06'),('digg','顶一下','',0,'1.0','','',0,0,'2010-09-06','2010-09-06'),('special','专题','',0,'1.0','','',0,0,'2010-09-06','2010-09-06'),('content','内容模块','',1,'1.0','','',0,0,'2010-09-06','2010-09-06'),('search','全站搜索','',0,'1.0','','array (\n  \'fulltextenble\' => \'1\',\n  \'relationenble\' => \'1\',\n  \'suggestenable\' => \'1\',\n  \'sphinxenable\' => \'0\',\n  \'sphinxhost\' => \'10.228.134.102\',\n  \'sphinxport\' => \'9312\',\n)',0,0,'2010-09-06','2010-09-06'),('scan','木马扫描','scan',0,'1.0','','',0,0,'2010-09-01','2010-09-06'),('attachment','附件','attachment',1,'1.0','','',0,0,'2010-09-01','2010-09-06'),('block','碎片','',1,'1.0','','',0,0,'2010-09-01','2010-09-06'),('collection','采集模块','collection',1,'1.0','','',0,0,'2010-09-01','2010-09-06'),('dbsource','数据源','',1,'','','',0,0,'2010-09-01','2010-09-06'),('template','模板风格','',1,'1.0','','',0,0,'2010-09-01','2010-09-06'),('release','发布点','',1,'1.0','','',0,0,'2010-09-01','2010-09-06'),('video','视频库','',0,'1.0','','',0,0,'2012-09-28','2012-09-28'),('announce','公告','announce/',0,'1.0','公告','',0,0,'2013-11-29','2013-11-29'),('comment','评论','comment/',0,'1.0','评论','',0,0,'2013-11-29','2013-11-29'),('link','友情链接','',0,'1.0','','array (\n  1 => \n  array (\n    \'is_post\' => \'1\',\n    \'enablecheckcode\' => \'0\',\n  ),\n)',0,0,'2010-09-06','2010-09-06'),('vote','投票','',0,'1.0','','array (\r\n  1 => \r\n  array (\r\n    \'default_style\' => \'default\',\r\n    \'vote_tp_template\' => \'vote_tp\',\r\n    \'allowguest\' => \'1\',\r\n    \'enabled\' => \'1\',\r\n    \'interval\' => \'1\',\r\n    \'credit\' => \'1\',\r\n  ),\r\n)',0,0,'2010-09-06','2010-09-06'),('message','短消息','',0,'1.0','','',0,0,'2010-09-06','2010-09-06'),('mood','新闻心情','mood/',0,'1.0','新闻心情','',0,0,'2013-11-29','2013-11-29'),('poster','广告模块','poster/',0,'1.0','广告模块','',0,0,'2013-11-29','2013-11-29'),('formguide','表单向导','formguide/',0,'1.0','formguide','array (\n  \'allowmultisubmit\' => \'1\',\n  \'interval\' => \'30\',\n  \'allowunreg\' => \'0\',\n  \'mailmessage\' => \'用户向我们提交了表单数据，赶快去看看吧。\',\n)',0,0,'2010-10-20','2010-10-20'),('wap','手机门户','wap/',0,'1.0','手机门户','',0,0,'2013-11-29','2013-11-29'),('upgrade','在线升级','',0,'1.0','','',0,0,'2011-05-18','2011-05-18'),('tag','标签向导','tag/',0,'1.0','标签向导','',0,0,'2013-11-29','2013-11-29'),('sms','短信平台','sms/',0,'1.0','短信平台','',0,0,'2011-09-02','2011-09-02');
/*!40000 ALTER TABLE `v9_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_mood`
--

DROP TABLE IF EXISTS `v9_mood`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_mood` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '栏目id',
  `siteid` mediumint(6) unsigned NOT NULL DEFAULT '0' COMMENT '站点ID',
  `contentid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `total` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '总数',
  `n1` int(10) unsigned NOT NULL DEFAULT '0',
  `n2` int(10) unsigned NOT NULL DEFAULT '0',
  `n3` int(10) unsigned NOT NULL DEFAULT '0',
  `n4` int(10) unsigned NOT NULL DEFAULT '0',
  `n5` int(10) unsigned NOT NULL DEFAULT '0',
  `n6` int(10) unsigned NOT NULL DEFAULT '0',
  `n7` int(10) unsigned NOT NULL DEFAULT '0',
  `n8` int(10) unsigned NOT NULL DEFAULT '0',
  `n9` int(10) unsigned NOT NULL DEFAULT '0',
  `n10` int(10) unsigned NOT NULL DEFAULT '0',
  `lastupdate` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  KEY `total` (`total`),
  KEY `lastupdate` (`lastupdate`),
  KEY `catid` (`catid`,`siteid`,`contentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_mood`
--

LOCK TABLES `v9_mood` WRITE;
/*!40000 ALTER TABLE `v9_mood` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_mood` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_news`
--

DROP TABLE IF EXISTS `v9_news`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_news` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` varchar(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` varchar(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`status`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_news`
--

LOCK TABLES `v9_news` WRITE;
/*!40000 ALTER TABLE `v9_news` DISABLE KEYS */;
INSERT INTO `v9_news` VALUES (9,11,0,'test111111111','','','test111111111','1',0,'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=show&catid=11&id=9',0,99,1,0,'phpcms',1386078456,1386078488),(10,29,0,'护理ceshi','','','护理 ceshi','sdsds',0,'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=show&catid=29&id=10',0,99,1,0,'phpcms',1386094137,1386094156),(11,30,0,'妇产科dsds','','','妇产科 dsds','2',0,'http://zazhi.ddecshop.com/index.php?m=content&c=index&a=show&catid=30&id=11',0,99,1,0,'phpcms',1386094280,1386094289);
/*!40000 ALTER TABLE `v9_news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_news_data`
--

DROP TABLE IF EXISTS `v9_news_data`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_news_data` (
  `id` mediumint(8) unsigned DEFAULT '0',
  `content` mediumtext NOT NULL,
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `voteid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `copyfrom` varchar(100) NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_news_data`
--

LOCK TABLES `v9_news_data` WRITE;
/*!40000 ALTER TABLE `v9_news_data` DISABLE KEYS */;
INSERT INTO `v9_news_data` VALUES (9,'1',0,'',0,10000,'',0,'',0,1,'互联网|0'),(10,'sdsds',0,'',0,10000,'',0,'',0,1,'|0'),(11,'2',0,'',0,10000,'',0,'',0,1,'|0');
/*!40000 ALTER TABLE `v9_news_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_page`
--

DROP TABLE IF EXISTS `v9_page`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_page` (
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `title` varchar(160) NOT NULL,
  `style` varchar(24) NOT NULL,
  `keywords` varchar(40) NOT NULL,
  `content` text NOT NULL,
  `template` varchar(30) NOT NULL,
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_page`
--

LOCK TABLES `v9_page` WRITE;
/*!40000 ALTER TABLE `v9_page` DISABLE KEYS */;
INSERT INTO `v9_page` VALUES (2,'关于我们',';','关于我们','<p><strong>中华医护好网隶属于北京远宏思创科技有限公司</strong></p><p><strong>业务介绍：<font face=\"Verdana\">中华医护好网</font></strong>主要从事<b>论文发表</b>、论文润色指导业务，同时我们还提供论文润色资料、图书杂志出版等服务。我们和上百家学术杂志有着密切的合作关系，我们可发表论文的每一本杂志，在晋级职称方面都是有效的，杂志CN刊号，ISSN刊号齐全，新闻出版总署，权威期刊数据库全文收录。欢迎咨询！我们会竭诚为您服务！<br>&nbsp;</p><p><b>实力介绍：<font face=\"Verdana\">中华医护好网</font></b> 学术论文发表业务多年来为学位申请、职称晋升的朋友提供了优质服务，得到了许多客户的认可。我们有信誉的保证，而信誉是我们经营的根本，一直认为信誉是我们最大的实力。</p>','',0),(3,'联系我们',';','联系','\r\n<p class=\"p0\" style=\"margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-family:;\">免费咨询热线：<font face=\"Times New Roman\">4006575136</font></span><span style=\"font-family:;\"><o:p></o:p></span></p>\r\n<p class=\"p0\" style=\"margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-family:;\">企业咨询<font face=\"Times New Roman\">QQ</font><font face=\"宋体\">：</font><font face=\"Times New Roman\">800070250</font></span><span style=\"font-family:;\"><o:p></o:p></span></p>\r\n<p class=\"p0\" style=\"margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-family:;\">投稿邮箱：</span><span><a href=\"mailto:xsb@yihuhao.com\"><span class=\"15\" style=\"color: rgb(0, 0, 255); font-family:;\">xsb@yihuhao.com</span></a></span><span style=\"font-family:;\">&nbsp;</span><span style=\"font-family:;\"><o:p></o:p></span></p>\r\n<p class=\"p0\" style=\"margin-top: 0pt; margin-bottom: 0pt;\"><span style=\"font-family:;\">办公地址：</span><span style=\"background: rgb(255, 255, 255); color: rgb(102, 102, 102); font-family:;\">北京市海淀区北四环中路<font face=\"Tahoma\">238</font><font face=\"宋体\">号</font></span><span style=\"font-family:;\"><o:p></o:p></span></p>\r\n','',0),(4,'版权声明',';','版权声明','<p>北京宏远思创科技有限公司</p><p align=\"left\">本网站部分文章从网络收集，如侵犯了您的权益，请速与我单位电话或电子邮件联系，我单位接到通知后三个工作日内删除上传信息。</p>','',0);
/*!40000 ALTER TABLE `v9_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_pay_account`
--

DROP TABLE IF EXISTS `v9_pay_account`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_pay_account` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `trade_sn` char(50) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `contactname` char(50) NOT NULL,
  `email` char(40) NOT NULL,
  `telephone` char(20) NOT NULL,
  `discount` float(8,2) NOT NULL DEFAULT '0.00',
  `money` char(8) NOT NULL,
  `quantity` int(8) unsigned NOT NULL DEFAULT '1',
  `addtime` int(10) NOT NULL DEFAULT '0',
  `paytime` int(10) NOT NULL DEFAULT '0',
  `usernote` char(255) NOT NULL,
  `pay_id` tinyint(3) NOT NULL,
  `pay_type` enum('offline','recharge','selfincome','online') NOT NULL DEFAULT 'recharge',
  `payment` char(90) NOT NULL,
  `type` tinyint(3) NOT NULL DEFAULT '1',
  `ip` char(15) NOT NULL DEFAULT '0.0.0.0',
  `status` enum('succ','failed','error','progress','timeout','cancel','waitting','unpay') NOT NULL DEFAULT 'unpay',
  `adminnote` char(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `trade_sn` (`trade_sn`,`money`,`status`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_pay_account`
--

LOCK TABLES `v9_pay_account` WRITE;
/*!40000 ALTER TABLE `v9_pay_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_pay_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_pay_payment`
--

DROP TABLE IF EXISTS `v9_pay_payment`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_pay_payment` (
  `pay_id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `pay_name` varchar(120) NOT NULL,
  `pay_code` varchar(20) NOT NULL,
  `pay_desc` text NOT NULL,
  `pay_method` tinyint(1) DEFAULT NULL,
  `pay_fee` varchar(10) NOT NULL,
  `config` text NOT NULL,
  `is_cod` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pay_order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `author` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `version` varchar(20) NOT NULL,
  PRIMARY KEY (`pay_id`),
  KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_pay_payment`
--

LOCK TABLES `v9_pay_payment` WRITE;
/*!40000 ALTER TABLE `v9_pay_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_pay_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_pay_spend`
--

DROP TABLE IF EXISTS `v9_pay_spend`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_pay_spend` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `creat_at` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `logo` varchar(20) NOT NULL,
  `value` int(5) NOT NULL,
  `op_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `op_username` char(20) NOT NULL,
  `msg` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `creat_at` (`creat_at`),
  KEY `logo` (`logo`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_pay_spend`
--

LOCK TABLES `v9_pay_spend` WRITE;
/*!40000 ALTER TABLE `v9_pay_spend` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_pay_spend` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_picture`
--

DROP TABLE IF EXISTS `v9_picture`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_picture` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`status`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_picture`
--

LOCK TABLES `v9_picture` WRITE;
/*!40000 ALTER TABLE `v9_picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_picture_data`
--

DROP TABLE IF EXISTS `v9_picture_data`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_picture_data` (
  `id` mediumint(8) unsigned DEFAULT '0',
  `content` text NOT NULL,
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `pictureurls` mediumtext NOT NULL,
  `copyfrom` varchar(255) NOT NULL DEFAULT '',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_picture_data`
--

LOCK TABLES `v9_picture_data` WRITE;
/*!40000 ALTER TABLE `v9_picture_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_picture_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_position`
--

DROP TABLE IF EXISTS `v9_position`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_position` (
  `posid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint(5) unsigned DEFAULT '0',
  `catid` smallint(5) unsigned DEFAULT '0',
  `name` char(30) NOT NULL DEFAULT '',
  `maxnum` smallint(5) NOT NULL DEFAULT '20',
  `extention` char(100) DEFAULT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(150) NOT NULL DEFAULT '',
  PRIMARY KEY (`posid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_position`
--

LOCK TABLES `v9_position` WRITE;
/*!40000 ALTER TABLE `v9_position` DISABLE KEYS */;
INSERT INTO `v9_position` VALUES (1,0,0,'首页焦点图推荐',20,NULL,1,1,''),(2,0,0,'首页头条推荐',20,NULL,4,1,''),(13,82,0,'栏目页焦点图',20,NULL,0,1,''),(5,69,0,'推荐下载',20,NULL,0,1,''),(8,30,54,'图片频道首页焦点图',20,NULL,0,1,''),(9,0,0,'网站顶部推荐',20,NULL,0,1,''),(10,0,0,'栏目首页推荐',20,NULL,0,1,''),(12,0,0,'首页图片推荐',20,NULL,0,1,''),(14,0,0,'视频首页焦点图',20,'',0,1,''),(15,0,0,'视频首页头条推荐',20,'',0,1,''),(16,0,0,'视频首页每日热点',20,'',0,1,''),(17,0,0,'视频栏目精彩推荐',20,'',0,1,'');
/*!40000 ALTER TABLE `v9_position` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_position_data`
--

DROP TABLE IF EXISTS `v9_position_data`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_position_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `posid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `module` char(20) DEFAULT NULL,
  `modelid` smallint(6) unsigned DEFAULT '0',
  `thumb` tinyint(1) NOT NULL DEFAULT '0',
  `data` mediumtext,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1',
  `listorder` mediumint(8) DEFAULT '0',
  `expiration` int(10) NOT NULL,
  `extention` char(30) DEFAULT NULL,
  `synedit` tinyint(1) DEFAULT '0',
  KEY `posid` (`posid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_position_data`
--

LOCK TABLES `v9_position_data` WRITE;
/*!40000 ALTER TABLE `v9_position_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_position_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_poster`
--

DROP TABLE IF EXISTS `v9_poster`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_poster` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(40) NOT NULL,
  `spaceid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) NOT NULL,
  `setting` text NOT NULL,
  `startdate` int(10) unsigned NOT NULL DEFAULT '0',
  `enddate` int(10) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `clicks` smallint(5) unsigned NOT NULL DEFAULT '0',
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `spaceid` (`spaceid`,`siteid`,`disabled`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_poster`
--

LOCK TABLES `v9_poster` WRITE;
/*!40000 ALTER TABLE `v9_poster` DISABLE KEYS */;
INSERT INTO `v9_poster` VALUES (1,1,'banner',1,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://zazhi.ddecshop.com/uploadfile/poster/2.png\',\n    \'alt\' => \'\',\n  ),\n)',1285813808,1446249600,1285813833,0,1,0,0),(2,1,'phpcmsv9',2,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://zazhi.ddecshop.com/statics/images/v9/ad_login.jpg\',\n    \'alt\' => \'phpcms专业建站系统\',\n  ),\n)',1285816298,1446249600,1285816310,0,1,0,0),(3,1,'phpcms下载推荐',3,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://zazhi.ddecshop.com/uploadfile/poster/3.png\',\n    \'alt\' => \'phpcms官方\',\n  ),\n)',1286504815,1446249600,1286504865,0,1,0,0),(4,1,'phpcms广告',4,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://zazhi.ddecshop.com/uploadfile/poster/4.gif\',\n    \'alt\' => \'phpcms官方\',\n  ),\n)',1286505141,1446249600,1286505178,0,0,0,0),(5,1,'phpcms下载',5,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://zazhi.ddecshop.com/uploadfile/poster/5.gif\',\n    \'alt\' => \'官方\',\n  ),\n)',1286509363,1446249600,1286509401,0,0,0,0),(6,1,'phpcms下载推荐1',6,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://zazhi.ddecshop.com/uploadfile/poster/5.gif\',\n    \'alt\' => \'官方\',\n  ),\n)',1286510183,1446249600,1286510227,0,0,0,0),(7,1,'phpcms下载详情',7,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://zazhi.ddecshop.com/uploadfile/poster/5.gif\',\n    \'alt\' => \'官方\',\n  ),\n)',1286510314,1446249600,1286510341,0,0,0,0),(8,1,'phpcms下载页',8,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://zazhi.ddecshop.com/uploadfile/poster/1.jpg\',\n    \'alt\' => \'官方站\',\n  ),\n)',1286522084,1446249600,1286522125,0,0,0,0),(9,1,'phpcms v9广告',9,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://zazhi.ddecshop.com/uploadfile/poster/4.gif\',\n    \'alt\' => \'\',\n  ),\n)',1287041759,1446249600,1287041804,0,0,0,0),(10,1,'phpcms',10,'images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://zazhi.ddecshop.com/uploadfile/poster/6.jpg\',\n    \'alt\' => \'phpcms官方\',\n  ),\n)',1289270509,1446249600,1289270541,1,0,0,0),(11,1,'首页轮播图',11,'text','array (\n  \'code\' => \'<!--DEMO start-->\r\n<script language=\\\'javascript\\\'> \r\nlinkarr = new Array();    \r\npicarr = new Array();    \r\ntextarr = new Array();    \r\nvar swf_width=960;    \r\nvar swf_height=200;    \r\n//文字颜色|文字位置|文字背景颜色|文字背景透明度|按键文字颜色|按键默认颜色|按键当前颜色|自动播放时间|图片过渡效果|是否显示按钮|打开方式    \r\nvar configtg=\\\'0xffffff||0x3FA61F|5|0xffffff|0xC5DDBC|0x000033|3|3|1|_blank\\\';\r\nvar files = \"\";    \r\nvar links = \"\";    \r\nvar texts = \"\";    \r\n//这里设置调用标记    \r\nlinkarr[1] = \"\";\r\npicarr[1]  = \"uploadfile/banner/20131024101738158.gif\";\r\ntextarr[1] = \"\";\r\nlinkarr[2] = \"\";\r\npicarr[2]  = \"uploadfile/banner/20130703021154486.jpg\";\r\ntextarr[2] = \"\";\r\n \r\n \r\nfor(i=1;i<picarr.length;i++){    \r\nif(files==\"\") files = picarr[i];    \r\nelse files += \"|\"+picarr[i];    \r\n}    \r\nfor(i=1;i<linkarr.length;i++){    \r\nif(links==\"\") links = linkarr[i];    \r\nelse links += \"|\"+linkarr[i];    \r\n}    \r\ndocument.write(\\\'<object classid=\"clsid:d27cdb6e-ae6d-11cf-96b8-444553540000\" codebase=\"http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,0,0\" width=\"\\\'+ swf_width +\\\'\" height=\"\\\'+ swf_height +\\\'\">\\\');    \r\ndocument.write(\\\'<param name=\"movie\" value=\"/statics/v1/images/bcastr3.swf\"><param name=\"quality\" value=\"high\">\\\');    \r\ndocument.write(\\\'<param name=\"menu\" value=\"false\"><param name=wmode value=\"opaque\">\\\');    \r\ndocument.write(\\\'<param name=\"FlashVars\" value=\"bcastr_file=\\\'+files+\\\'&bcastr_link=\\\'+links+\\\'&bcastr_title=\\\'+texts+\\\'&bcastr_config=\\\'+configtg+\\\'\">\\\');    \r\ndocument.write(\\\'<embed src=\"/statics/v1/images/bcastr3.swf\" wmode=\"opaque\" FlashVars=\"bcastr_file=\\\'+files+\\\'&bcastr_link=\\\'+links+\\\'&bcastr_config=\\\'+configtg+\\\'&menu=\"false\" quality=\"high\" width=\"\\\'+ swf_width +\\\'\" height=\"\\\'+ swf_height +\\\'\" type=\"application/x-shockwave-flash\" pluginspage=\"http://www.macromedia.com/go/getflashplayer\" />\\\'); document.write(\\\'</object>\\\');    \r\n</script>\r\n<!--DEMO end-->\',\n)',1385996966,1451574540,1385997014,0,0,0,0),(13,1,'底部联系方式',12,'text','array (\n  \'code\' => \'<p class=\"info\">版权所有 &copy;中华医护好网(隶属于北京远宏思创科技有限公司) Copyright 2010-2013 <br />\r\n本程序未经授权严禁复制或建立镜像，希望本站的内容为您提供一定的帮助!<br />\r\n投稿咨询：4006575136&nbsp;&nbsp;企业QQ：800070250&nbsp;&nbsp;&nbsp;本网网址：<a href=\"./\" target=\"_blank\" title=\"中华医护好网\">中华医护好网</a>(www.xueshuhao.com)&nbsp;&nbsp;</p>\r\n<p align=\"left\">本网站部分文章从网络收集，如侵犯了您的权益，请速与我单位电话或电子邮件联系，我单位接到通知后三个工作日内删除上传信息。</p>\',\n)',1386090480,1481735280,1386090491,0,0,0,0),(14,1,'首页左侧联系方式',13,'text','array (\n  \'code\' => \'<p><a href=\"/index.php?m=special&c=index&specialid=1&typeid=44\"><img width=\"250\" height=\"100\" src=\"/statics/v1/images/zt/tougao.gif\" alt=\"\" /></a></p>\r\n<p>&nbsp;</p>\r\n<p>免费咨询热线：4006575136</p>\r\n<p>&nbsp;</p>\r\n<p>企业咨询QQ：800070250</p>\r\n<p>&nbsp;</p>\r\n<p>投稿邮箱：<a href=\"mailto:xsb@yihuhao.com\">xsb@yihuhao.com</a></p>\',\n)',1386091108,1481217480,1386091138,0,0,0,0);
/*!40000 ALTER TABLE `v9_poster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_poster_201311`
--

DROP TABLE IF EXISTS `v9_poster_201311`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_poster_201311` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spaceid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `area` char(40) NOT NULL,
  `ip` char(15) NOT NULL,
  `referer` char(120) NOT NULL,
  `clicktime` int(10) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`,`type`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_poster_201311`
--

LOCK TABLES `v9_poster_201311` WRITE;
/*!40000 ALTER TABLE `v9_poster_201311` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_poster_201311` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_poster_space`
--

DROP TABLE IF EXISTS `v9_poster_space`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_poster_space` (
  `spaceid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` char(50) NOT NULL,
  `type` char(30) NOT NULL,
  `path` char(40) NOT NULL,
  `width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `setting` char(100) NOT NULL,
  `description` char(100) NOT NULL,
  `items` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`spaceid`),
  KEY `disabled` (`disabled`,`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_poster_space`
--

LOCK TABLES `v9_poster_space` WRITE;
/*!40000 ALTER TABLE `v9_poster_space` DISABLE KEYS */;
INSERT INTO `v9_poster_space` VALUES (1,1,'顶部搜索右侧广告位','banner','poster_js/1.js',430,63,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0),(2,1,'会员登陆页广告','banner','poster_js/2.js',310,304,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','会员登陆页广告右侧代替外部通行证广告',1,0),(3,1,'图片频道图片排行下方','banner','poster_js/3.js',249,87,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0),(4,1,'新闻中心推荐链接左侧','banner','poster_js/4.js',748,91,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0),(5,1,'下载列表页右侧顶部','banner','poster_js/5.js',248,162,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0),(6,1,'下载详情页右侧顶部','banner','poster_js/6.js',248,162,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0),(7,1,'下载详情页右侧下部','banner','poster_js/7.js',248,162,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0),(8,1,'下载频道首页','banner','poster_js/8.js',698,80,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0),(9,1,'下载详情页地址列表右侧','banner','poster_js/12.js',330,50,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0),(10,1,'首页关注下方广告','banner','poster_js/10.js',307,60,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0),(11,1,'首页轮播','code','{show_ad(1, 11)}',0,0,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0),(12,1,'底部联系方式','code','{show_ad(1, 12)}',0,0,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0),(13,1,'首页左侧联系方式','code','{show_ad(1, 13)}',0,0,'array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','',1,0);
/*!40000 ALTER TABLE `v9_poster_space` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_queue`
--

DROP TABLE IF EXISTS `v9_queue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_queue` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` char(5) DEFAULT NULL,
  `siteid` smallint(5) unsigned DEFAULT '0',
  `path` varchar(100) DEFAULT NULL,
  `status1` tinyint(1) DEFAULT '0',
  `status2` tinyint(1) DEFAULT '0',
  `status3` tinyint(1) DEFAULT '0',
  `status4` tinyint(1) DEFAULT '0',
  `times` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`),
  KEY `times` (`times`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_queue`
--

LOCK TABLES `v9_queue` WRITE;
/*!40000 ALTER TABLE `v9_queue` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_release_point`
--

DROP TABLE IF EXISTS `v9_release_point`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_release_point` (
  `id` mediumint(8) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `host` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `port` varchar(10) DEFAULT '21',
  `pasv` tinyint(1) DEFAULT '0',
  `ssl` tinyint(1) DEFAULT '0',
  `path` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_release_point`
--

LOCK TABLES `v9_release_point` WRITE;
/*!40000 ALTER TABLE `v9_release_point` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_release_point` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_search`
--

DROP TABLE IF EXISTS `v9_search`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_search` (
  `searchid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `adddate` int(10) unsigned NOT NULL,
  `data` text NOT NULL,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`searchid`),
  KEY `typeid` (`typeid`,`id`),
  KEY `siteid` (`siteid`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_search`
--

LOCK TABLES `v9_search` WRITE;
/*!40000 ALTER TABLE `v9_search` DISABLE KEYS */;
INSERT INTO `v9_search` VALUES (16,1,9,1386078456,'test111111111 test111111111 ',1),(14,52,26,1385918900,'重 型 颅 脑 损 伤 合 并 脑 梗 死 临 床 分 析 ',1),(17,1,10,1386094137,'护理ceshi 护理 ceshi 护理',1),(18,1,11,1386094280,'妇产科dsds 妇产科 dsds ',1),(11,52,4,1385827699,'健康大视野杂志2013年12期目录 监测 分析 地区 生活 石化',1),(12,52,5,1385827770,'健康大视野杂志2013年13期目录 蛋白 小时 相关性 分析 定量 肾病 论著 地区 目录 慢性 患者',1);
/*!40000 ALTER TABLE `v9_search` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_search_keyword`
--

DROP TABLE IF EXISTS `v9_search_keyword`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_search_keyword` (
  `keyword` char(20) NOT NULL,
  `pinyin` char(20) NOT NULL,
  `searchnums` int(10) unsigned NOT NULL,
  `data` char(20) NOT NULL,
  UNIQUE KEY `keyword` (`keyword`),
  UNIQUE KEY `pinyin` (`pinyin`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_search_keyword`
--

LOCK TABLES `v9_search_keyword` WRITE;
/*!40000 ALTER TABLE `v9_search_keyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_search_keyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_session`
--

DROP TABLE IF EXISTS `v9_session`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_session` (
  `sessionid` char(32) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `roleid` tinyint(3) unsigned DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL,
  `c` char(20) NOT NULL,
  `a` char(20) NOT NULL,
  `data` char(255) NOT NULL,
  PRIMARY KEY (`sessionid`),
  KEY `lastvisit` (`lastvisit`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_session`
--

LOCK TABLES `v9_session` WRITE;
/*!40000 ALTER TABLE `v9_session` DISABLE KEYS */;
INSERT INTO `v9_session` VALUES ('faa2f17e97a3ce43ffb4d683c0314dcc',0,'127.0.0.1',1386429164,0,0,'','','','code|s:4:\"7gmy\";');
/*!40000 ALTER TABLE `v9_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_site`
--

DROP TABLE IF EXISTS `v9_site`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_site` (
  `siteid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) DEFAULT '',
  `dirname` char(255) DEFAULT '',
  `domain` char(255) DEFAULT '',
  `site_title` char(255) DEFAULT '',
  `keywords` char(255) DEFAULT '',
  `description` char(255) DEFAULT '',
  `release_point` text,
  `default_style` char(50) DEFAULT NULL,
  `template` text,
  `setting` mediumtext,
  `uuid` char(40) DEFAULT '',
  PRIMARY KEY (`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_site`
--

LOCK TABLES `v9_site` WRITE;
/*!40000 ALTER TABLE `v9_site` DISABLE KEYS */;
INSERT INTO `v9_site` VALUES (1,'默认站点','','http://zazhi.ddecshop.com/','PHPCMS演示站','PHPCMS演示站','PHPCMS演示站','','default','default','array (\n  \'upload_maxsize\' => \'2048\',\n  \'upload_allowext\' => \'jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf\',\n  \'watermark_enable\' => \'1\',\n  \'watermark_minwidth\' => \'300\',\n  \'watermark_minheight\' => \'300\',\n  \'watermark_img\' => \'/statics/images/water/mark.png\',\n  \'watermark_pct\' => \'85\',\n  \'watermark_quality\' => \'80\',\n  \'watermark_pos\' => \'9\',\n)','fe858436-584e-11e3-9569-c164b35693de');
/*!40000 ALTER TABLE `v9_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_sms_report`
--

DROP TABLE IF EXISTS `v9_sms_report`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_sms_report` (
  `id` bigint(15) NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) NOT NULL,
  `posttime` int(10) unsigned NOT NULL DEFAULT '0',
  `id_code` varchar(10) NOT NULL,
  `msg` varchar(90) NOT NULL,
  `send_userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) NOT NULL DEFAULT '0',
  `return_id` varchar(30) NOT NULL,
  `ip` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mobile` (`mobile`,`posttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_sms_report`
--

LOCK TABLES `v9_sms_report` WRITE;
/*!40000 ALTER TABLE `v9_sms_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_sms_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_special`
--

DROP TABLE IF EXISTS `v9_special`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_special` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `catid` smallint(5) unsigned NOT NULL,
  `aid` int(10) unsigned NOT NULL DEFAULT '0',
  `title` char(60) NOT NULL,
  `typeids` char(100) NOT NULL,
  `thumb` char(100) NOT NULL,
  `banner` char(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `url` char(100) NOT NULL,
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ispage` tinyint(1) unsigned NOT NULL,
  `filename` char(40) NOT NULL,
  `pics` char(100) NOT NULL,
  `voteid` char(60) NOT NULL,
  `style` char(20) NOT NULL,
  `index_template` char(40) NOT NULL,
  `list_template` char(40) NOT NULL,
  `show_template` char(60) NOT NULL,
  `css` text NOT NULL,
  `username` char(40) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `createtime` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL,
  `elite` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isvideo` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tgbd` mediumtext NOT NULL,
  `zgdw` varchar(255) NOT NULL DEFAULT '',
  `zbdw` varchar(255) NOT NULL DEFAULT '',
  `gnkh` varchar(255) NOT NULL DEFAULT '',
  `gjkh` varchar(255) NOT NULL DEFAULT '',
  `yfdh` varchar(255) NOT NULL DEFAULT '',
  `cbzq` varchar(255) NOT NULL DEFAULT '',
  `yuyan` varchar(255) NOT NULL DEFAULT '',
  `leibie` varchar(255) NOT NULL DEFAULT '',
  `zhubian` varchar(255) NOT NULL DEFAULT '',
  `cbd` varchar(255) NOT NULL DEFAULT '',
  `cknf` varchar(255) NOT NULL DEFAULT '',
  `qkjb` varchar(255) NOT NULL DEFAULT '',
  `fhyxyz` varchar(255) NOT NULL DEFAULT '',
  `zhyxyz` varchar(255) NOT NULL DEFAULT '',
  `qq` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `tel` varchar(255) NOT NULL DEFAULT '',
  `is_recommend` smallint(3) NOT NULL DEFAULT '0',
  `is_hot` smallint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `disabled` (`disabled`,`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_special`
--

LOCK TABLES `v9_special` WRITE;
/*!40000 ALTER TABLE `v9_special` DISABLE KEYS */;
INSERT INTO `v9_special` VALUES (1,1,20,0,'《健康大视野》','','http://zazhi.ddecshop.com/uploadfile/zazhi/934b8cb0465a2eb805b7319b0d984626.jpg','http://zazhi.ddecshop.com/uploadfile/zazhi/20130709104058452.jpg','《健康大视野》杂志是由国家新闻出版总署正式批准，由卫生部主管中国保健协会主办的国家级医学专业性综合学术期刊。国际标准刊号：ISSN 1005-0019、国内统一刊号：CN 11-3252/R、邮发代号：82-584，国内外公开发行。本刊欢迎本专业及相关学科的医学工作者积极投稿。<br />\r\n主管：中华人民共和国卫生部<br />\r\n主办：中国保健协会&nbsp;<br />\r\n主要栏目：论著、综述、临床研究、检验医学、经验交流、医药之窗、综合医学、卫生防疫、调查报告、医药理、医学影像、医教园地等。护理文稿:论著、综述、 护理研究、专科护理、护理管理、护理教育、中医护理、康复护理、基础护理、健康教育、心理护理、个案护理、技术革新、医院感染、护理修养、社区护理等。管 理文稿:高层论坛、政策研究、卫生法规、卫生资讯、创新管理、经营管理、专科建设、医教探究、医院文化、政工研究、改革探析等。','http://zazhi.ddecshop.com/index.php?m=special&c=index&specialid=1',0,0,'','','','default','index','list','show','','phpcms',1,1385816173,0,0,0,0,'1、文题：应简明确切反映本文的特定内容，一般不用副标题，尽可能不使用代号。文题以20个汉字以内为宜，力求简明、醒目、反映文章的主题。<br />\r\n2、摘要：采用结构式文摘，即目的、方法、结果和结论四部分。摘要部分一般不超200字。<br />\r\n3、关键词：摘要下标引3-5个关键词<br />\r\n4、图表：凡文字能说明的内容尽量不用表和图，正文、表、图三者中的数据不应重复，统计表应另纸绘出附在稿件中，以便审阅。表有表题，图有图题及各自的编 号，采用三线表或王字表，表中数据务必核实，纵横之和一致，小数点后最少保留一位。统计学处理结果用 p&lt;0.5,p&lt;0.05,p&lt;0.01三档表示。<br />\r\n5、计量单位：按我国法定计量单位为准。标点符号、数字用法等均按国家标准执行。计量单位的书写必须规范，不应使用已废止的单位。<br />\r\n6、标题符号：正文中标准层次的编号按GB/1.1-1993和GB7713-87的规定,采用阿拉伯数字分别编号，一般不超过4级。第一级标题1；第二级标题1.1；第三级标题1.1.1；第四级标题1.1.1.1。全部左顶格写，正文内序号用①、②等。<br />\r\n7、讨论：重点阐述本文新的发现及得出的结果与观点，在结果中不要重复已叙述的内容。<br />\r\n8、参考文献：只限作者亲自阅读过的近期公开出版的主要文献，外文限五年内，中文限近三年内，按文中首次出现的次序编号，在右上角用方括号注明，内部刊物或未公开发表的资料均不列入。<br />\r\n9、论文刊载后，赠送该期杂志一册。','中华人民共和国卫生部','中国保健协会','CN11-3252/R','ISSN1005-0019','82-584','月刊','中文','医学期刊','刘仁富','北京市','1993','国家级','0.122','0.253','12013042','jkdsybj@163.com','010-83487658',1,1),(2,1,21,0,'《当代医学》','','http://zazhi.ddecshop.com/uploadfile/2013/1202/20131202032654104.jpg','http://zazhi.ddecshop.com/uploadfile/2013/1202/20131202032559703.jpg','<span style=\"color: rgb(51, 51, 51); font-family: Arial, Helvetica, sans-serif; line-height: 21px; text-indent: 24px;\">《当代医学》是由中华人民共和国卫生部主管，由中国医疗保健国际交流促进会主办的，中国医疗卫生领域唯一以系统阐述职业化医院经营与管理理念的国家级医药卫生类综合性学术期刊;曾用名《引进国外医药技术与设备》、《中国医院信息》，创刊于1994年，旬刊，规格为国际通用大16开本，国际刊号ISSN1009-4393，国内统一刊号CN11-4449/R ，邮发代号82-829 ，每月5、15、25日出版，单价20.00元，全年定价720.00元，面向国内外公开发行。</span>','http://zazhi.ddecshop.com/index.php?m=special&c=index&specialid=2',0,0,'','','','default','index','list','show','','phpcms',1,1385969332,0,0,0,0,'','','','','','','','','','','','','','','','','','',1,1);
/*!40000 ALTER TABLE `v9_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_special_c_data`
--

DROP TABLE IF EXISTS `v9_special_c_data`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_special_c_data` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author` varchar(40) NOT NULL,
  `content` text NOT NULL,
  `paginationtype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maxcharperpage` mediumint(6) unsigned NOT NULL DEFAULT '0',
  `style` char(20) NOT NULL,
  `show_template` varchar(30) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_special_c_data`
--

LOCK TABLES `v9_special_c_data` WRITE;
/*!40000 ALTER TABLE `v9_special_c_data` DISABLE KEYS */;
INSERT INTO `v9_special_c_data` VALUES (32,'车彦鹏','。。。。。。',0,10000,'default','show'),(4,'','<p>齐鲁石化地区2008～2012年生活饮用水水质监测分析刘茂强1王仁明2（1）</p>\r\n<p>急性重症阑尾炎采用手术方案治疗对预后的影响分析刘辉（2）</p>\r\n<p>移动盲肠综合征65例诊治分析陈耀堂（2）</p>\r\n<p>缘对缘技术治疗二尖瓣关闭不全的临床疗效分析于秀莲（3）</p>\r\n<p>仙桃市农民工职业健康防护干预效果分析杨感深（3）</p>\r\n<p>探讨急性脑梗死患者中检验血清高敏C反应蛋白的作用王利静 张景莉（4）</p>\r\n<p>PCT、CRP在感染性疾病诊断中的价值陶清元 &nbsp; &nbsp; 吴学帅（4）</p>\r\n<p>&nbsp;</p>\r\n<p>脑卒中急诊救治体会张玲（5）</p>\r\n<p>&nbsp;</p>\r\n<p>乳腺导管造影对溢液性乳腺病的诊断价值陈柯（5）</p>\r\n<p>&nbsp;</p>\r\n<p>颅脑损伤患者血糖监测的重要意义图日更乌吉斯古楞段英俊（6）</p>\r\n<p>&nbsp;</p>\r\n<p>改进带教方法对消毒供应中心实习护士锐器伤发生的影响江丽丽〖HT〗 〖HTK〗〖JY。〗（6）</p>\r\n<p>耐多药结核病研究分析裴洁（7）</p>\r\n<p>试述运用柴胡桂枝汤治疗瘾疹的机理朱旭阳（8）</p>\r\n<p>胸膜纤维板剥脱术治疗慢性结核性脓胸手术时机的选择李洲斌（8）</p>\r\n<p>&nbsp;</p>\r\n<p>经足三里穴位注射维生素B1对腹部手术后胃肠功能恢复的影响翟淑华王琳胡敬一刘丽（9）</p>\r\n<p>李氏方与肾炎读解杨亦华（9）</p>\r\n<p>胃镜消毒质量影响因素及控制措施于小萍（10）</p>\r\n<p>800例体检者体检前准备情况调查分析吴学帅陶清元严怡君（10）</p>\r\n<p>&nbsp;</p>\r\n<p>米索前列醇治疗产后子宫收缩乏力性出血的临床研究〖HT〗〖HS2〗〖HT4&rdquo;K〗〖JZ〗</p>\r\n<p>陈瑶琼 （11）</p>\r\n<p>卡介苗治疗扁平疣疗效分析许书成（11）</p>\r\n<p>结肠造口患者社交状况及相关因素分析马习鹏肖艳伟刘艾超常曼（12）</p>\r\n<p>静脉输液外渗的预防与治疗毛敏燕（12）</p>\r\n<p>妊娠妇女牙髓炎过渡性治疗的临床效果分析蒲凤英（13）</p>\r\n<p>混合痔外剥内扎术治疗混合痔临床分析刘湘南（13）</p>\r\n<p>念珠菌细胞快速处理检验采集拭子的比较叶亚平杨柳（14）</p>\r\n<p>血清铁蛋白测定对缺铁性贫血的诊断价值刘晓娜苏丽颜怡君（14）</p>\r\n<p>&nbsp;</p>\r\n<p>止痛如神汤在疼痛性肛肠疾病中应用分析 曹让富（15）</p>\r\n<p>羊水污染与新生儿窒息关系的分析李晓明（15）</p>\r\n<p>儿科急诊护患纠纷的原因分析及防范措施黄朝耘李艺霞（16）</p>\r\n<p>浅析46例胆囊结石继发胆囊管结石临床治疗效果陈鹏1樊归仓2（16）</p>\r\n<p>中药管理中存在的问题及对策分析唐家江（17）</p>\r\n<p>浅谈临床麻醉低血压王帅李杰（17）</p>\r\n<p>脑外伤后脑震荡样症状早期药物治疗的有效性分析李钧苏林梅（18）</p>\r\n<p>留置尿管常见问题及解决对策张洪梅（18）</p>\r\n<p>青少年肥胖伴高血压的心电图Q-T离散度分析王艳彩1樊玉鸽2（19）</p>\r\n<p>新生儿呼吸困难103例分析唐善权（19）</p>\r\n<p>急诊科护士心理状况的影响因素与对策王项菲（20）</p>\r\n<p>高场MRI 高分辨CE-MRV 对颅内Labbe静脉的显示价值张勇王锦刘波胡伟宏（20）</p>\r\n<p>内科护理教学与学生能力的培养分析刘玉桃（21）</p>\r\n<p>阑尾周围脓肿的处理分析安森成（21）</p>\r\n<p>基层医院医疗纠纷原因分析陈云烨吴研芹（22）</p>\r\n<p>慢性肺源性心脏病患者的内科治疗刘爱玲（23）</p>\r\n<p>43例妊娠合并心脏病结局与孕期保健的关系陈利（24）</p>\r\n<p>动态透视在经外周静脉穿刺置入中心静脉导管的作用杜平 &nbsp; 张勇（24）</p>\r\n<p>罗哌卡因与芬太尼自控硬膜外分娩镇痛的疗效孟妮妮（25）</p>\r\n<p>分析静脉输液拔针致皮下出血的原因 杨九梅 &nbsp;詹洁（25）</p>\r\n<p>消化内科门诊胃食管反流病的临床分析曲伟卫1阎秀磊2蓝娟3（26）</p>\r\n<p>中药治疗带状疱疹的方法张文杰（26）</p>\r\n<p>椎管内麻醉在分娩镇痛中的应用范一川（27）</p>\r\n<p>螺旋CT在我院诊治新生儿缺血缺氧性脑病中的应用价值王冬云（27）</p>\r\n<p>卵圆钳联合喉镜在重度中毒患者胃管置入中应用张凌峰 &nbsp;金薇 &nbsp;孙明（28）</p>\r\n<p>39例LEEP刀宫颈环形电切术诊治效果分析郑永红（28）</p>\r\n<p>52例Pilon骨折诊治效果分析杨永松（29）</p>\r\n<p>脱机患者的呼吸肌功能锻炼王婷（29）</p>\r\n<p>肘外侧小切口克氏针内固定治疗儿童肱骨髁上骨折曾军平 &nbsp;易爱祥 &nbsp;段语（30）</p>\r\n<p>外剥内扎术后敷料填塞时间的选择欧其阿石（30）</p>\r\n<p>小儿消化不良性腹泻临床治疗分析朱绍堂（31）</p>\r\n<p>100例肾内科患者医院感染的危险因素分析及对策陈宏（31）</p>\r\n<p>&nbsp;</p>\r\n<p>腹膜透析（PD）患者合理饮食重要性贾萍（32）</p>\r\n<p>&nbsp;</p>\r\n<p>经食管心脏电生理检查对阵发性室上性心动过速的诊断李景君陶愈婷王国蕾李亮黄积存王欢（32）</p>\r\n<p>&nbsp;</p>\r\n<p>冠心病合并糖尿病临床特点分析 &nbsp; 张碧辉〖HT〗 &nbsp;〖HTK〗〖JY。〗（33）</p>\r\n<p>&nbsp;</p>\r\n<p>中西医结合外科学结合点的思考与探索董太平 朱艳（33）</p>\r\n<p>中药塌渍治疗股肿的辨证施护曹梅（34）</p>\r\n<p>关于子宫内膜异常增生临床治疗的分析赵彩岩（34）</p>\r\n<p>CRP与白细胞联合检测在细菌感染诊断中的意义卢金金（35）</p>\r\n<p>中西医结合疗法在消化内科的运用张云林（35）</p>\r\n<p>放射式体外冲击波治疗肘外侧软组织疼痛疗效分析王磊刘荣成刘华瑞（36）</p>\r\n<p>骨科创伤及感染创面应用VSD治疗的临床疗效分析王智恒（36）</p>\r\n<p>液基薄层细胞学检测在宫颈癌筛查中的价值史洪超胡玉荣王娟（37）</p>\r\n<p>85例急性胰腺炎患者的临床治疗分析舒世明（37）</p>\r\n<p>老年肺癌患者围手术期的呼吸道管理体会黄晓娟（38）</p>\r\n<p>浅谈CT和MRI在肝脏肿瘤性病变中的应用体会苏宁于泳周茂荣（38）</p>\r\n<p>无痛胃肠腔镜检查的麻醉问题隐患及对策分析康西斌葛秀芳申茜赵林王刚沈浩刘玉龙（39）</p>\r\n<p>肾综合征出血热59例临床分析刘明刚袁红赵静媛方翠艳张琪（39）</p>\r\n<p>老年患者医院预防感染的护理干预研究李红（40）</p>\r\n<p>唐筛高危孕妇360例产前诊断分析施丽珠（41）</p>\r\n<p>分析白血病继发骨髓纤维化的病理特征与疾病预后关系董志华（41）</p>\r\n<p>胰腺癌38例外科治疗分析夏群胡晔孙春磊（42）</p>\r\n<p>基于38例支气管哮喘临床治疗效果进行分析薛志丽（42）</p>\r\n<p>肠外营养在胃肠肿瘤患者中的应用进展李红伟（43）</p>\r\n<p>浅谈盆腔炎的病因及治疗杨清丽（43）</p>\r\n<p>透明敷料不同更换频率对新生儿PICC导管相关感染的影响于淼（44）</p>\r\n<p>263例糖尿病患者糖尿病性视网膜病变病因分析史先蕊（44）</p>\r\n<p>1800例新生儿心脏彩超筛查结果分析刘永娟（45）</p>\r\n<p>经尿道前列腺电切术后尿道狭窄原因分析及预防措施刘永田张文涛（45）</p>\r\n<p>浅析产后盆底肌肉康复治疗对改善盆底肌力作用卓越（46）</p>\r\n<p>90例糖尿病患者糖化血红蛋白和血糖关系分析郭艳丽1杨涛2（46）</p>\r\n<p>基层医院关于心血管疾病临床治疗效果的分析许永刚焦建荣（47）</p>\r\n<p>无症状高尿酸血症尿酸水平与高脂血症的关系卢典阳李娜秦俭（47）</p>\r\n<p>护理风险管理在呼吸内科病房中的应用于分析李琼（48）</p>\r\n<p>针灸推拿治疗椎-基底动脉供血不足的临床研究进展黄吉芳（49）</p>\r\n<p>早产儿凝血功能试验测定的意义张丽萍（50）</p>\r\n<p>腹部透明血管型Castleman&rsquo;S病的MSCT表现谢锐 杨建荣（50）</p>\r\n<p>经皮加压空心螺钉内固定在踝关节骨折中的治疗分析 赖长君杨翼众胡元元廖直斌张福生（51）</p>\r\n<p>导尿管留置导致尿路感染的临床防治对策余英 &nbsp;（52）</p>\r\n<p>妇科急腹症超声诊断与病理结果对比〖HT〗</p>\r\n<p>&nbsp;〖HS2〗〖HT4&rdquo;K〗〖JZ〗张洁（52）</p>\r\n<p>异位妊娠误诊原因分析徐 英（53）</p>\r\n<p>艾塞那肽治疗2型糖尿病临床观察熊大琼（54）</p>\r\n<p>C-反应蛋白检测在感染性疾病中的临床价值胥伯如（54）</p>\r\n<p>不同胆囊切除术式治疗老年胆囊结石的疗效对比谭孝华（55）</p>\r\n<p>妇科肿瘤术后化疗后并发下肢静脉血栓的原因及护理罗婧（56）</p>\r\n<p>晕厥患者动态心电图检查结果探析臧莉（56）</p>\r\n<p>骨的纤维结构不良的X线与MRI表现对比路金强（57）</p>\r\n<p>快速细孔钻颅脑室置管引流术治疗脑室出血的疗效观察龙晓东（58）</p>\r\n<p>3M透气敷贴在神经外科气管切开患者造口愈合中的应用徐淑华 &nbsp;杨静平 &nbsp;孙静（58）</p>\r\n<p>前列腺增生症与下尿路症状的临床研究刘聪（59）</p>\r\n<p>急诊超声在诊断异位妊娠中的应用研究王家奇（60）</p>\r\n<p>泌尿系感染的病原菌分布及耐药性分析袁世平 &nbsp;白晓燕 &nbsp;赵松美（60）</p>\r\n<p>外固定架联合内固定治疗踝关节骨折脱位的疗效分析刘扬（61）</p>\r\n<p>血液分析仪对急慢性白血病的临床检验效果分析谭江峡（62）</p>\r\n<p>护理干预对淋巴瘤化疗患者的效果观察周海燕〖HT〗 〖HTK〗〖JY。〗（62）</p>\r\n<p>老年冠心病无症状性心肌缺血临床治疗分析蔡华（63）</p>\r\n<p>不同采血方法在血常规检验的效果观察郭健平（64）</p>\r\n<p>乙肝后肝硬化患者细胞免疫状态与肝功能及乙肝病毒定量变化分析姜杰常青山（64）</p>\r\n<p>受血者与献血者输血相关传染病检测结果对比分析徐燕青 李瑞玲 徐桂清（65）</p>\r\n<p>脑外科患者术后的治疗护理分析孔德珍（66）</p>\r\n<p>&nbsp;</p>\r\n<p>疝补片在无张力修补中的应用何琼花（66）</p>\r\n<p>消化内科常见不合理用药问题分析李焕春（67）</p>\r\n<p>对卵巢囊肿手术患者实施心理护理的效果评价兰立容〖HT〗 〖HTK〗〖JY。〗（68）</p>\r\n<p>早期急性胆囊炎的急诊腹腔镜下切除术效果分析梁鹏（68）</p>\r\n<p>&nbsp;</p>\r\n<p>安徽舒城地区6204例孕前优生健康检查TORCH结果分析 &nbsp;贾俊生（69）</p>\r\n<p>内痔套扎吻合术配合混合痔外剥内扎的166例临床疗效观察刘春贵 李海清（70）</p>\r\n<p>&nbsp;</p>\r\n<p>超声造影鉴别诊断乳腺肿瘤孙安 孟刚 刘慧君（70）</p>\r\n<p>203 例胎儿和围产儿尸检中先天畸形的临床病理分析佟晓（71）</p>\r\n<p>&nbsp;</p>\r\n<p>鼻腔局部应用布地奈德对鼻息肉中c-fos和c-myc</p>\r\n<p>〖JZ〗表达影响的临床评估古观保1揭苏平2黄小梅3（72）</p>\r\n<p>&nbsp;</p>\r\n<p>评价钽棒对早期股骨头坏死的保髋疗效胡爱民（72）</p>\r\n<p>经腹腔镜胆囊切除术并发症的预防和治疗高应军（73）</p>\r\n<p>&nbsp;</p>\r\n<p>贲门癌或食管癌术后早期肠内营养62例临床探讨桂妮（74）</p>\r\n<p>&nbsp;</p>\r\n<p>颅脑术后并发急性脑积水的早期观察与护理分析黄淑萍（74）</p>\r\n<p>&nbsp;</p>\r\n<p>无痛胃肠镜在消化内科临床中的应用 陈建中〖HT〗 〖HTK〗〖JY。〗（75）</p>\r\n<p>血液透析患者在血液透析过程中凝血</p>\r\n<p>&nbsp;</p>\r\n<p>〖JZ〗的常见原因分析及处理对策焦亚星（76）</p>\r\n<p>&nbsp;</p>\r\n<p>健康体检中中老年2型糖尿病心肌缺血筛查相关指标的分析蔡津津（76）</p>\r\n<p>骨科创伤患者护理中预见性护理程序的应用研究薛丹（77）</p>\r\n<p>&nbsp;</p>\r\n<p>医源性胆道损伤24例临床治疗体会分析陈小红 蒲晓斌（78）</p>\r\n<p>&nbsp;</p>\r\n<p>溶血对生化检验准确性的影响及纠正分析邱思宇（78）</p>\r\n<p>动态心电图与常规心电图在冠心病诊断中的应用价值探讨陈秀英 &nbsp; 刘孟春（79）</p>\r\n<p>临夏州2012年甲型病毒性肝炎流行特征分析李淑嫚（80）</p>\r\n<p>阴道镜检查联合HPV检测在筛查宫颈癌前病变中的应用分析王菲（80）</p>\r\n<p>儿科门诊静脉留置针使用的安全隐患及防范措施唐晶晶（81）</p>\r\n<p>浅述临床检测中分析前质量保证邵文龙（82）</p>\r\n<p>浅谈50例肺动脉栓塞患者临床治疗效果赵德平（82）</p>\r\n<p>无痛人流术中的4种镇痛方法应用分析石镇修（83）</p>\r\n<p>溶血样本对肝功能检验准确性的影响分析巴哈尔古丽&middot;卡依尔（84）</p>\r\n<p>胎心监护对于胎儿窘迫的临床诊断价值分析王月英（84）</p>\r\n<p>脐带绕颈对围产儿的影响危秀蓉（85）</p>\r\n<p>尺骨鹰嘴粉碎骨折的手术治疗分析葛明王丹李晖（86）</p>\r\n<p>&nbsp;</p>\r\n<p>新生儿科住院患儿抗生素应用分析唐燕 &nbsp; 白然（86）</p>\r\n<p>&nbsp;</p>\r\n<p>某院2012年门诊抗菌药物处方分析游茂锦 何英 余志荣（87）</p>\r\n<p>微生物物证检验的核酸分析技术解析李英（87）</p>\r\n<p>甲状腺功能亢进症1327例外科手术治疗分析张扬平王瑞华（88）</p>\r\n<p>浅谈早期异位妊娠保守性治疗64例临床分析张华（89）</p>\r\n<p>评价ICU基础护理流程的优化在创建优质护理服务中的作用汤庆辉（89）</p>\r\n<p>不同型号血液细胞分析仪检测结果一致性评估韦红金（90）</p>\r\n<p>浅论妊娠晚期头位胎膜早破198例临床分析沈秋敏（91）</p>\r\n<p>牙列缺失、牙列缺损以及牙体缺损的特点及临床修复分析李森（91）</p>\r\n<p>小儿非特异性间质性肺炎的临床诊治分析周有祥 李朝蓉 &nbsp;王云 &nbsp;张君梅 （92）</p>\r\n<p>钢板螺钉内固定治疗跟骨骨折32例临床研究李海清刘春贵钱瑞（93）</p>\r\n<p>与输血相关的病原微生物的实验室检测伍刚（93）</p>\r\n<p>磁敏感成像检测微出血在急性脑梗死治疗中的意义田臻 &nbsp;石广莲 吴艳云 朱树龙（94）</p>\r\n<p>临床带教在防范呼吸科护理实习生</p>\r\n<p>&nbsp;</p>\r\n<p>〖JZ〗职业暴露中的重点分析项佳１吕张红２（95）</p>\r\n<p>中医药治疗慢性胃炎的临床研究进展罗志强（95）</p>\r\n<p>肠梗阻围手术期护理袁英 &nbsp;（96）</p>\r\n<p>输血前检查血液传染病的必要性吕华北吕青（97）</p>\r\n<p>630例儿科住院患者抗菌药物使用分析娜孜拉（97）</p>\r\n<p>中西医结合治疗维持性血液透析并发症低血压效果观察张　铮（98）</p>\r\n<p>锁骨钩钢板加喙锁韧带重建治疗肩锁关节脱位赵孟和许春雷（99）</p>\r\n<p>巨块型宫颈癌术前腔内放疗联合手术与单纯手术治疗的疗效张海琴（99）</p>\r\n<p>血液化疗科不合理用药分析徐婷婷陈佩雷（100）</p>\r\n<p>&nbsp;</p>\r\n<p>浅谈阿奇霉素注射液的不良反应分析刘春梅（101）</p>\r\n<p>甲状腺肿瘤的彩色超声诊断特点分析李静静（101）</p>\r\n<p>银屑病相关细胞因子研究现状和发展趋势分析黄玲娟 &nbsp;钟江 &nbsp;吴志洪（102）</p>\r\n<p>心血管内科患者感染的危险因素及预防对策阿布都拉&middot;吐尔地巴克1阿卜力克木&middot;阿卜力米提2（103）</p>\r\n<p>浅谈产科急性弥散性血管内凝血的诊断及治疗边静 &nbsp; 李慧林（103）</p>\r\n<p>CCU医护人员手卫生的依从性调查与干预效果冯丽钦 &nbsp;颜焕芝（104）</p>\r\n<p>基层医院开展产前超声筛查的临床价值分析周君（104）</p>\r\n<p>女性生殖器结核患者的临床治疗分析谷娜（105）</p>\r\n<p>外阴癌12例放射治疗分析宋洪杰（106）</p>\r\n<p>小儿肺水肿临床治疗分析张兰华 &nbsp;刘学工 马波（106）</p>\r\n<p>克山病的表现及治疗孟俊杰（107）</p>\r\n<p>鼻内镜下腺样体切除术与腺样体刮除术治疗小儿鼾症的效果差异陈皓 （107）</p>\r\n<p>MMSE和MOCA在临床中的应用杨峰魏严秀周冬梅金丽霞（108）</p>\r\n<p>慢性咳嗽患者应用肺通气功能检查的结果分析陈小玲（109）</p>\r\n<p>牵引配合推拿治疗腰椎间盘突出症的临床观察王世强（109）</p>\r\n<p>Bakri子宫填塞球囊导管的应用陈新娟范建辉（110）</p>\r\n<p>从复方丹参滴丸看中国中药的新技术生产庄绪霞（111）</p>\r\n<p>试析我院抗精神病药致药物性肝炎224例罗明辉（111）</p>\r\n<p>中西药结合治疗溃疡性结肠炎64例临床研究 党滢 王鹏希 （112）</p>\r\n<p>肿瘤病人厕所跌倒原因分析及防范对策彭素姜邹舒倩甘丽梅（112）</p>\r\n<p>&nbsp;</p>\r\n<p>影响血气分析准确性因素分析张春梅（113）</p>\r\n<p>基于外界因素对白蛋白的影响的分析王众（114）</p>\r\n<p>1311例宫颈液基细胞学检测结果分析陆梅 王兴兰 李正红（114）</p>\r\n<p>老年恶性肿瘤的治疗吴爽 &nbsp;李斌 &nbsp;李燕（115）</p>\r\n<p>关于卵巢子宫内膜异位症情况临床分析谢菲（115）</p>\r\n<p>鼻空肠管与鼻胃管在脑卒中伴吞咽困难患者中的应用钟薇 &nbsp; 周芝文（116）</p>\r\n<p>老年住院患者跌倒危险因素分析与防范措施罗章梅（116）</p>\r\n<p>扁桃体切除及鼻内镜下腺样体切除治疗儿童鼾症崔艳红（117）</p>\r\n<p>&nbsp;</p>\r\n<p>浅析微创泌尿外科的发展姚衡（118）</p>\r\n<p>&nbsp;</p>\r\n<p>浅谈静脉采血对凝血四项结果的影响欧文华（118）</p>\r\n<p>&nbsp;</p>\r\n<p>型糖尿病患者尿微量白蛋白与下肢血管病变相关性分析马冬杰（119）</p>\r\n<p>&nbsp;</p>\r\n<p>冠心病与同型半胱氨酸樊国丽 &nbsp;钱德富（119）</p>\r\n<p>认知治疗对恢复期精神分裂症患者心理健康状况的影响周向军（120）</p>\r\n<p>动态血糖监测对指导糖尿病患者治疗的意义韩文菊 &nbsp; &nbsp;李中华 &nbsp; &nbsp;李林静（120）</p>\r\n<p>小儿蜗后听觉神经损害的临床与听力学特征及定位王义（121）</p>\r\n<p>反流性食管炎诊断鉴别诊断及治疗郑彦彦矫秀红齐国娟李润语邵艳艳田国利董来春（122）</p>\r\n<p>内科重症监护病房呼吸机临床应用分析易蕾（122）</p>\r\n<p>血液病患者血培养阳性标本病原菌分布及耐药性分析郭兆旺张丽娟（123）</p>\r\n<p>浅谈脑血管病人健康教育的实践滕刚（123）</p>\r\n<p>哮喘患者临床控制及肺通气功能的影响分析盛建华（124）</p>\r\n<p>两种麻醉方式对老年高血压手术患者麻醉影响及效果分析李丰（124）</p>\r\n<p>吞咽功能评定在防止脑卒中患者误吸中的应用价值刘万霞（125）</p>\r\n<p>消化内科患者在医院发生感染的几点分析陈立霞（126）</p>\r\n<p>小儿反复呼吸道感染的发病原因及诊治措施研究舒林宏（126）</p>\r\n<p>临床护士职业性损伤危险因素及防护措施冯素平武莉娜黄艳芬（127）</p>\r\n<p>流动儿童免疫规划管理对策分析罗照琦（127）</p>\r\n<p>健康教育对高血压患者生活质量的影响林玲云陈丽莉肖琴（128）</p>\r\n<p>64排CT血管重建对肝脏肿瘤介入的指导意义周桂荣朱虎杨彬孙功能（129）</p>\r\n<p>胃肠外科感染的治疗策略那孜尔别克&middot;加尼木汗（129）</p>\r\n<p>关于正畸治疗在口腔修复中的作用分析罗光宝（130）</p>\r\n<p>原发性闭角型青光眼合并白内障手术方式的系统评价江承旭（130）</p>\r\n<p>肝硬化消化道出血早期诊疗进展史和增（131）</p>\r\n<p>大连地区HBV基因型分布及临床意义孙艾军崔振兴（132）</p>\r\n<p>&nbsp;</p>\r\n<p>血清同型半胱氨酸检测在心血管疾病中的临床应用 雷德财1刘 &nbsp;芳2李春艳3（133）</p>\r\n<p>&nbsp;</p>\r\n<p>腹腔穿刺治疗肝硬化的临床观察刘洪丽（133）</p>\r\n<p>喉罩全麻通气在妇科麻醉中的临床应用逯花（134）</p>\r\n<p>儿童静脉输液固定器在输液中的应用与研究洪丹（134）</p>\r\n<p>&nbsp;</p>\r\n<p>浅析脊柱病变矫形支具的临床应用与进展的研究分析崔永胜 &nbsp; &nbsp;周劲松指导老师（135）</p>\r\n<p>&nbsp;</p>\r\n<p>针灸治疗神经性耳鸣的临床观察华强（135）</p>\r\n<p>&nbsp;</p>\r\n<p>慢性宫颈炎的治疗临床观察善小鸿（136）</p>\r\n<p>对糖尿病患者实施出院后电话回访64例效果观察尤霞燕（136）</p>\r\n<p>阑尾炎的中西医结合治疗尹国松（137）</p>\r\n<p>宫缩乏力300例临床分析杨松波（137）</p>\r\n<p>(99)m Tc&mdash;EHIDA肝胆显像鉴别新生儿胆道</p>\r\n<p>&nbsp;</p>\r\n<p>〖JZ〗闭锁与肝炎综合症的临床应用王松润杨波（138）</p>\r\n<p>比较布氏菌病患者血清学检验和细菌学检验的结果王博马昉（138）</p>\r\n<p>中医治疗老年骨性关节炎的效果研究王敏邢劲松（139）</p>\r\n<p>基于骨性关节炎患者的X线临床表现田其龙（139）</p>\r\n<p>思密达治疗新生儿咽下综合征的临床观察严泽勇（140）</p>\r\n<p>83例牙根纵裂的临床分析秦丽侠（140）</p>\r\n<p>消化性溃疡合并出血急诊胃镜下注射治疗的临床效果分析李强潘辉孙露李想（141）</p>\r\n<p>40例踝部骨折合并下胫腓联合分离手术临床分析郭云财温准林希龙（141）</p>\r\n<p>内分泌失调性骨质疏松症的综合治疗效果观察刘正辉（142）</p>\r\n<p>探析心力衰竭合并室性心律失常的治疗进展李夏华（142）</p>\r\n<p>临床检验中应用化学发光免疫分析技术的效果黄善忠（143）</p>\r\n<p>应用体腔热灌注系统联合奈达铂康莱特治疗恶性胸腔积液的研究姚华刘树岩盛晓琳刘彦尹凤祥张立彬（143）</p>\r\n<p>150例胆囊息肉样病变M值测定与病理类型的对照研究秦瑞峰张振翼侯钰霍浩然（144）</p>\r\n<p>对心血管系统建模的研究发展李若彤（144）</p>\r\n<p>头发交叉固定术治疗头皮裂伤的疗效观察李文（145）</p>\r\n<p>中西医结合治疗高血压脑出血患者的临床疗效观察刘彦伟刘宗江（145）</p>\r\n<p>疤痕子宫足月妊娠分娩方式临床分析欧阳新宇（146）</p>\r\n<p>血液透析治疗急性肾功能衰竭疗效观察刘宗江刘彦伟（146）</p>\r\n<p>儿童肱骨髁上骨折临床疗效观察栾法颂丁元通（147）</p>\r\n<p>64例创伤性股骨头坏死的临床观察葛明王丹李晖（147）</p>\r\n<p>肩锁关节钢板用于肩锁关节脱位临床研究葛明王丹李晖（148）</p>\r\n<p>微波治疗宫颈糜烂的临床分析高庆霞（148）</p>\r\n<p>口腔干燥症综合的临床治疗效果观察范强（149）</p>\r\n<p>42例难治性妇产科大出血临床治疗观察王志燕王纪云王燕（149）</p>\r\n<p>中西药结合治疗急性痛风性关节炎疗效观察魏红霞（150）</p>\r\n<p>生物反馈电刺激联合阴道哑铃治疗女性尿失禁疗效观察秦碧琼（150）</p>\r\n<p>不同部位留置针在新生儿输液中的效果比较丁晓毅（151）</p>\r\n<p>中西医联合治疗新生儿黄疸的临床效果分析罗红（151）</p>\r\n<p>胃肿瘤的血清肿瘤标志物在的临床观察陈岩菊（152）</p>\r\n<p>亚急性甲状腺炎误诊24例分析崔党珍陶清元苏丽（152）</p>\r\n<p>多层螺旋CT诊断前列腺疾病的临床价值研究曹伟光（153）</p>\r\n<p>异位妊娠的诊疗研究丁晓妍（153）</p>\r\n<p>&ldquo;独活寄生汤&rdquo;60例临床应用萨那&middot;加木力哈（154）</p>\r\n<p>慢性胆囊炎伴胆囊结石保守治疗效果观察金传堂（154）</p>\r\n<p>两种不同方式治疗良性急性胃十二指肠溃疡穿孔疗效观察胡安龙〖HT〗 &nbsp; 〖HTK〗〖JY。〗（155）</p>\r\n<p>一次性根管充填治疗慢性牙髓炎及根尖周炎陈晓梅（155）</p>\r\n<p>胎儿宫内窘迫65例临床分析刘春艳（156）</p>\r\n<p>呼吸内科阻塞型睡眠呼吸暂停综合症临床治疗阿卜力克木&middot;阿卜力米提1阿布都拉&middot;吐尔地巴克2（156）</p>\r\n<p>中医辨证治疗慢性肝炎的临床疗效张炎（157）</p>\r\n<p>中西医结合治疗冠心病心肌缺血效果观察周国海 凌玉国（157）</p>\r\n<p>&nbsp;超声引导下经皮肾穿刺高渗糖硬化治疗多囊肾42例 &nbsp;〖HT〗 </p>\r\n<p>〖HS2〗〖HT4&rdquo;K〗〖JZ〗李永贤 &nbsp;崔红利（158）</p>\r\n<p>64层螺旋CT曲面重建技术对面神经管的解剖学研究及临床应用 郭爱菊〖HT〗<span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>〖HTK〗〖JY。〗（159）</p>\r\n<p>微波在治疗宫颈糜烂的临床应用及分析田志刚 &nbsp;王秀娟（159）</p>\r\n<p>一次性精密过滤输液器降低静脉输液反应的临床观察晋红 &nbsp;董凤玲（160）</p>\r\n<p>红光治疗输注高渗液致静脉炎的疗效观察刘静 陈涛 吕奇 白璐璐 孙丽丽（160）</p>\r\n<p>经膀胱前列腺切除术技术改良及效果观察吴明华 &nbsp; &nbsp;阮忠勇（161）</p>\r\n<p>饮食控制缓解复发性口腔溃疡的临床研究袁艺 &nbsp;罗彦婷（161）</p>\r\n<p>慢性萎缩性胃炎与胃癌的关系研究丁万寿（162）</p>\r\n<p>社区医疗在防治骨质疏松症方面的研究厉雪飞（162）</p>\r\n<p>手足口病的中医辩证施治李金莲王晓（163）</p>\r\n<p>&nbsp;</p>\r\n<p>子宫内膜息肉的宫腔镜手术治疗及术后复发的预防效果观察肖娟（163）</p>\r\n<p>&nbsp;</p>\r\n<p>两种细菌鉴定法在临床血液检验中的应用张俊（164）</p>\r\n<p>&nbsp;</p>\r\n<p>急性杀虫脒中毒48例临床分析张俢钰（164）</p>\r\n<p>&nbsp;</p>\r\n<p>关节前交叉韧带撕裂的MRI诊断分析张艳辉 &nbsp;刘朝晖 蒋凯 （165）</p>\r\n<p>&nbsp;</p>\r\n<p>胎儿窘迫44例临床分析张元元（165）</p>\r\n<p>肾鹿角形结石的不同治疗方法的分析比较 〖HT〗 </p>\r\n<p>〖HS2〗〖HT4&rdquo;K〗〖JZ〗吴明华 阮忠永 李跃平（166）</p>\r\n<p>&nbsp;</p>\r\n<p>急性心肌梗死后发生心绞痛的临床特点研究赵瑞花王淑荣（166）</p>\r\n<p>临床免疫检验的质量控制陈素双（167）</p>\r\n<p>消化内科患者恶心呕吐的临床分析顾新红（167）</p>\r\n<p>防止腹部外科手术切口感染的临床措施李道琼侯文雁（168）</p>\r\n<p>鸡蛋内膜治疗压疮临床应用与效果观察李沸（168）</p>\r\n<p>妊娠期合并静脉曲张23例临床分析和防治措施徐中华（169）</p>\r\n<p>卵巢瘤剔除术后阴道大出血1例临床分析刘琼珊佘伊娜郑芝祥（169）</p>\r\n<p>提高肾结石B超诊断准确率的方法研究王玉荣（170）</p>\r\n<p>刺络放血治疗带状疱疹后遗神经痛50例1徐红2范亚彪3秦宇（170）</p>\r\n<p>开胸术后心律失常常见原因探讨及其应对策略李孝光李卫（171）</p>\r\n<p>加用微波热疗治疗结核性胸膜炎的疗效观察曹玉芝（171）</p>\r\n<p>抗抑郁治疗抑郁症合并糖尿病的疗效研究李凯杰（172）</p>\r\n<p>手术患者切口感染相关因素及护理方式探讨周博（172）</p>\r\n<p>三种梅毒血清学实验方法的对比王雨晴（173）</p>\r\n<p>会阴坏死性筋膜炎15例临床分析李云喜（173）</p>\r\n<p>单采血小板滤除白细胞后输注效果临床研究周立德（174）</p>\r\n<p>慢性盆腔炎临床治验蒋晓红（174）</p>\r\n<p>妇产科腹部手术切口40例脂肪液化临床治疗分析与预防李琼珠（175）</p>\r\n<p>外科急腹症病因、临床特点及治疗研究王永鸿（175）</p>\r\n<p>全自动生化分析仪检测质量控制研究李琛（176）</p>\r\n<p>针灸理疗配合穴位注射治疗40例带状疱疹疗效观察周素芬（176）</p>\r\n<p>肌壁大部切除&mdash;&mdash;子宫重建术的手术配合罗晓会&middot;王显容&middot;罗登芬*（177）</p>\r\n<p>心理干预在老年麻醉中的应用研究梁少春（177）</p>\r\n<p>急性有机磷农药中毒９０例抢救探析陈美玲郭妮（178）</p>\r\n<p>无呼吸道症状老年性肺炎患者临床治疗刘汉祥（178）</p>\r\n<p>脑分水岭梗死6例临床分析张宏菊（179）</p>\r\n<p>脑卒中发病预测模型评价研究刘铭（179）</p>\r\n<p>对 标 准 加 入 法 的 考 究朱在军1郭秀枫2（180）</p>\r\n<p>100 例分泌性中耳炎患者的临床治疗效果分析杨正莲（180）</p>\r\n<p>&nbsp;</p>\r\n<p>中西药治疗慢性妇科炎症的临床效果比对分析刘银春（181）</p>\r\n<p>手术切口子宫内膜异位症的临床观察李心研（181）</p>\r\n<p>&nbsp;</p>\r\n<p>关于老年糖尿病患者并发症的特点及治疗研究商玉芬 &nbsp; 扈爱莲 &nbsp; 牛庆玲（182）</p>\r\n<p>观察半椎体切短节融合术治疗先天性脊柱侧弯的临床疗效周君鹏（182）</p>\r\n<p>&nbsp;</p>\r\n<p>中医治疗老年膝关节骨性关节炎的效果研究邢劲松（183）</p>\r\n<p>双侧开颅去骨瓣减压术治疗重型颅脑损伤的临床研究吴昌泉 杨再兵 &nbsp;饶兴辉（183）</p>\r\n<p>鼻内镜手术治疗慢性鼻窦炎124例临床分析刘桂芹张纪全刘国庆（184）</p>\r\n<p>74例急性心肌梗死伴心源性休克患者的临床治疗杨慧娟1-4王彦欣2牛春华2李存进1 张树桥1 戚扬3 张丽娜 4（185）</p>\r\n<p>肺动脉高压临床治疗与预后的研究杨寿昌（185）</p>\r\n<p>胆囊全切术的临床效果观察 杨昌林（186）</p>\r\n<p>中医治疗骨伤后期肢体肿胀的临床疗效分析袁慧（187）</p>\r\n<p>68例老年痴呆患者早期干预的效果观察王润红（187）</p>\r\n<p>CIK细胞治疗晚期恶性肿瘤的临床观察倪志强 &nbsp;谭岩 &nbsp;方艳秋（188）</p>\r\n<p>急诊内科急性腹痛的临床诊疗探究罗文才（189）</p>\r\n<p>合并前列腺炎的良性前列腺增生症临床观察徐子俊（189）</p>\r\n<p>&nbsp;</p>\r\n<p>早期肢体功能康复对脑卒中偏瘫的临床观察彭淑荣（190）</p>\r\n<p>经尿道等离子双极电切治疗大体积前列腺增生临床探析阳雨佳（191）</p>\r\n<p>不同固定方式治疗胸腰段脊柱骨折的疗效对比孙云华（191）</p>\r\n<p>&nbsp;</p>\r\n<p>宫腔镜和腹腔镜联合治疗输卵管性不孕的临床分析陈世杰 蒋久富 杜青松（192）</p>\r\n<p>阴道镜宫颈病变活体组织检查的临床观察姜靖（193）</p>\r\n<p>&nbsp;</p>\r\n<p>腹腔镜与传统外科手术治疗胆囊结石130例临床疗效比较徐恒（193）</p>\r\n<p>针灸治疗原发性骨质疏松症研究进展孙舒雅尹宏（194）</p>\r\n<p>&nbsp;</p>\r\n<p>临床护理路径在小儿腹腔镜单纯性阑尾切除术中应用的效果比较赵小净通讯作者 王晓玲 晋玲林（195）</p>\r\n<p>&nbsp;</p>\r\n<p>吞咽治疗仪对脑卒中后吞咽障碍的疗效观察黄正标 张荣华 郭静 汪香君（195）</p>\r\n<p>56例介入治疗急性肺炎的临床分析韩庆影（196）</p>\r\n<p>帕金森病行超反射脑磁治疗及MOTOmed</p>\r\n<p>&nbsp;</p>\r\n<p>〖JZ〗智能运动训练 的康复疗效观察朱宁 刘合玉 吴睿 夏彬 朱洪山赵伟丽 （196）</p>\r\n<p>电磁脉冲辐照对大鼠心肌细胞组成成分的影响李晓娟 任东青 程颜苓 〖HT〗 〖HTK〗〖JY。〗（197）</p>\r\n<p>老年患者口腔修复临床观察探析刘莹（198）</p>\r\n<p>&nbsp;</p>\r\n<p>不同方案治疗新生儿下呼吸道感染的临床探讨简恩源〖HT〗 〖HTK〗〖JY。〗（199）</p>\r\n<p>不同肠内营养方式在老年呼吸机相关性肺炎治疗中的应用研究陈舒燕（199）</p>\r\n<p>肺癌术后并发胸腔出血原因分析及防治探讨何应芹（200）</p>\r\n<p>新生儿高胆红素血症的病因分析及干预许丽娜（201）</p>\r\n<p>用免疫放射分析法检测血清HCG中的HOOK现象颜怡君刘晓娜吴学帅（201）</p>\r\n<p>关于慢性宫颈炎的认识与临床治疗唐桂芹（202）</p>\r\n<p>72例老年慢性阻塞性肺气肿并发</p>\r\n<p>&nbsp;</p>\r\n<p>〖JZ〗自发性气胸患者临床诊断研究赵波（202）</p>\r\n<p>尿液蛋白质定性检查的评价及临床意义张金波（203）</p>\r\n<p>CT与MRI在颈椎损伤早期诊断中的应用探讨胡道锋（204）</p>\r\n<p>鼻内镜下联合泪前隐窝入路治疗上颌窦真菌病的临床分析曹靖（204）</p>\r\n<p>妇科盆腔肿瘤样病变的CT诊断探究张迪（205）</p>\r\n<p>输尿管镜气压弹道碎石治疗输尿管结石100例王溢凡（205）</p>\r\n<p>老年女性子宫腔积液的临床特点及治疗效果观察肖美丹（206）</p>\r\n<p>针灸推拿治疗神经根型颈椎病的疗效观察赵海云（207）</p>\r\n<p>老年肺心病临床研究符恒（207）</p>\r\n<p>中医针灸治疗原发性三叉神经痛65例临床观察张颖（208）</p>\r\n<p>198例药物性肝病的临床特点陈华伟（208）</p>\r\n<p>原发性高血压病人生活方式干预效果观察胡丽（209）</p>\r\n<p>中西医结合治疗功能性胃排空障碍的疗效观察高应军（210）</p>\r\n<p>人工流产术后即时放置宫内节育环临床分析王凤〖HT〗 〖HTK〗〖JY。〗（210）</p>\r\n<p>中医内科中活血化瘀的应用张勤国（211）</p>\r\n<p>肝豆状核变性患者的临床分析丰代微（211）</p>\r\n<p>60例剖宫产患者产后出血的临床处理刘海宁　黄晓燕（212）</p>\r\n<p>脑出血患者临床治疗分析宦宇（213）</p>\r\n<p>临床血液检验的质量控制王莹（213）</p>\r\n<p>智齿冠周炎60例临床治疗管宏伟 &nbsp;郑晓涛（214）</p>\r\n<p>喂养与生活方式对儿童单纯性肥胖影响的研究居燕萍（214）</p>\r\n<p>门诊注射室患者昏厥原因分析及护理措施研究曾庆莲（215）</p>\r\n<p>中西医结合治疗慢性盆腔炎疗效观察白丽霞（216）</p>\r\n<p>尿路感染临床治验陈淑华（216）</p>\r\n<p>心理干预配合骨关节伤筋油治疗急性软组织损伤442例疗效观察于振香1张丽伟2（217）</p>\r\n<p>人工全髋关节置换术治疗股骨头缺血性坏死曾军平 &nbsp;段语 &nbsp;易爱祥（217）</p>\r\n<p>经直肠超声引导前列腺穿刺活检120例吴宏匀（218）</p>\r\n<p>音乐疗法在女性输卵管绝育手术护理中的临床观察岳芳 &nbsp; 刘彩英（218）</p>\r\n<p>关于药物剂型临床使用中存在问题的探析刘云霞（219）</p>\r\n<p>高血压合并肾功能损伤患者尿液肾功能指标临床价值研究金晓霞（220）</p>\r\n<p>&nbsp;</p>\r\n<p>剖宫产腹壁切口子宫内膜异位症56例临床分析谢家豪（220）</p>\r\n<p>妇产科术后下肢静脉血栓临床分析青云（221）</p>\r\n<p>&nbsp;</p>\r\n<p>探讨中医治疗80例肠易激综合征的临床疗效任俊涛（221）</p>\r\n<p>&nbsp;</p>\r\n<p>50例急诊内科急性腹痛的临床诊疗分析张建庆〖HT〗 〖HTK〗〖JY。〗（222）</p>\r\n<p>&nbsp;</p>\r\n<p>颈椎骨折脱位脊髓损伤的急救方法研究〖HT〗</p>\r\n<p>&nbsp;〖HS2〗〖HT4&rdquo;K〗〖JZ〗赵卫龙（222）</p>\r\n<p>&nbsp;</p>\r\n<p>急性腹痛止痛治疗及对诊断影响的研究进展刘浩（223）</p>\r\n<p>&nbsp;</p>\r\n<p>综合性治疗对正常性眼压青光眼40例临床疗效观察潘丽（225）</p>\r\n<p>&nbsp;</p>\r\n<p>活血化瘀法治疗输卵管阻塞性不孕的临床观察乔春娜（225）</p>\r\n<p>&nbsp;</p>\r\n<p>150例腰-硬联合麻醉在老年患者泌尿外科微创手术中的应用任旭（226）</p>\r\n<p>免疫透射比浊法与干化学法检测血清白蛋白临床分析樊燕燕（226）</p>\r\n<p>抗精神病药物不良反应的研究进展黄苏莉（227）</p>\r\n<p>关于小儿腹泻的临床治疗分析研究李春艳（227）</p>\r\n<p>&nbsp;</p>\r\n<p>重度颅脑损伤患者EEG及TCD对颅压的监测研究宿艳 &nbsp; 戴志诚 &nbsp; 张静（228）</p>\r\n<p>&nbsp;</p>\r\n<p>尿液检验分析前质量相关因素与应对措施探析王长春（229）</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;子宫压迫缝合术在产后出血治疗中的临床应用研究王晓茜（229）</p>\r\n<p>&nbsp;</p>\r\n<p>椎弓根螺钉内固定联合椎间植骨融合治疗腰椎滑脱症疗效观察吴润福（230）</p>\r\n<p>&nbsp;</p>\r\n<p>50脊柱结核患者的临床治疗分析高树德（230）</p>\r\n<p>小骨窗显微手术血肿清除术治疗高血压脑出血的临床分析卓越（231）</p>\r\n<p>矽肺并发哮喘的临床治疗观察赵建红（231）</p>\r\n<p>腘绳肌腱双束重建前交叉韧带的临床疗效观察祖德佩许波白可李钊赵干（232）</p>\r\n<p>64例小儿弱视经综合疗法治疗后的临床效果赵锡同赛晓丽李福梅（233）</p>\r\n<p>超声波技术在肝部疾病检查诊断中的作用赵霞梁莹（233）</p>\r\n<p>经尿道前列腺等离子电切术治疗前列腺增生的临床观察赵振林郭彩增思恩（234）</p>\r\n<p>尿液潜血两种检验方法比较王曼丽（234）</p>\r\n<p>胃癌切除术临床方法研究张起宏（235）</p>\r\n<p>原发性痛风与胰岛素抵抗之间的相关性探究倪红吴宪（235）</p>\r\n<p>观察采用亚低温疗法治疗急性期脑出血患者的疗效杨茂竹（236）</p>\r\n<p>疝环填充式无张力疝修补术治疗腹股沟疝的临床研究杨晓辽（237）</p>\r\n<p>自发性气胸56例心电图分析夏晓青李振毅（237）</p>\r\n<p>老年人消化性溃疡87例的临床分析颜芳（238）</p>\r\n<p>BN脑神经介入平衡疗法治疗失眠抑郁326例临床分析叶贵姣（238）</p>\r\n<p>宫腔镜诊治子宫纵隔的临床探析屈海红（239）</p>\r\n<p>小儿慢性咳嗽内科综合治疗效果观察张郡李喜林（239）</p>\r\n<p>46例慢性鼻炎患者采用低温等离子射频消融术</p>\r\n<p>&nbsp;</p>\r\n<p>〖JZ〗配合祛风通窍方治疗的临床疗效分析古观保揭苏平肖建华（240）</p>\r\n<p>女扎术后输卵管妊娠22例临床分析郭建成（241）</p>\r\n<p>三联法治疗难治性宫缩乏力性产后出血疗效观察龙中喜（241）</p>\r\n<p>外阴阴道假丝酵母菌病在妊娠期的临床治疗探讨张勇勇（242）</p>\r\n<p>菌尿对尿液分析仪测定尿红细胞的影响昝文静（242）</p>\r\n<p>氧驱动雾化吸入与空气压缩泵雾化吸入</p>\r\n<p>&nbsp;</p>\r\n<p>〖JZ〗治疗小儿哮喘的比较分析徐丽娜（243）</p>\r\n<p>老年住院病人的心理特征及护理刘莉华（244）</p>\r\n<p>非营养性吸吮在缓解新生儿疼痛护理中的应用〖HT〗<span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span></p>\r\n<p>〖HS2〗〖HT4&rdquo;K〗〖JZ〗李敏（245）</p>\r\n<p>50例例慢性胃炎的护理干预李欣（245）</p>\r\n<p>剖宫产术后腹部切口的护理研究严虹（246）</p>\r\n<p>经尿道前列腺电切术的护理配合赵桂梅（247）</p>\r\n<p>股骨干骨折切开复位内因固定术护理对策赖青徐杨超（247）</p>\r\n<p>儿童青少年肥胖症的护理干预邓忠华闪硕（248）</p>\r\n<p>临床对胆结石患者护理中全面护理模式的应用价值贾金芳荀雷周培芳（248）</p>\r\n<p>肠梗阻的护理问题探讨及护理措施崔岩红董青李卫民（249）</p>\r\n<p>外科休克患者的护理观察冯小菊（249）</p>\r\n<p>如何加强门诊患者的心理护理的思考宋艳红（250）</p>\r\n<p>脑出血病人的护理方法与技巧曹雪峰1杨洁2（250）</p>\r\n<p>浅谈重症监护患者护理中的伦理原则黄铣明黄欢雪（251）</p>\r\n<p>老年无痛心肌梗死的临床护理体会李小林（251）</p>\r\n<p>ICU 56例外科感染性休克患者的临床监测及护理贺欣欣（252）</p>\r\n<p>ICU老年病人外科手术后精神障碍原因及护理研究贺欣欣（252）</p>\r\n<p>心肌梗死患者并发心力衰竭患者护理中的循证护理模式应用张媛（253）</p>\r\n<p>溃疡性结肠炎的护理时海英（253）</p>\r\n<p>总结妇科卵巢囊肿行腹腔镜手术的护理经验仝留平（254）</p>\r\n<p>老年慢性阻塞性肺气肿并心衰的临床护理体会李新专（254）</p>\r\n<p>50例儿科支气管肺炎的临床护理体会李志红孙三霞吴娟（255）</p>\r\n<p>外科ICU患者有创血压的监测及护理分析贺欣欣（255）</p>\r\n<p>手术室择期手术患者应用健康教育护理模式的效果观察周博（256）</p>\r\n<p>垂体瘤切除术后尿崩的护理张欢欢刘丹迪李文静（256）</p>\r\n<p>人性化护理措施在风湿患者中的应用效果观察刘慧（257）</p>\r\n<p>急诊科护理现状分析与应对策略盛红梅（257）</p>\r\n<p>妇科化疗病人静脉护理的学习和研究姚梅琦（258）</p>\r\n<p>急性胰腺炎围手术期护理体会张明翠（258）</p>\r\n<p>健康体检抽血时晕针的原因分析及护理对策王春梅赵柯王欣（259）</p>\r\n<p>精神分裂症长期住院患者的无陪护护理体会李磊马英刘定群（259）</p>\r\n<p>服用胺碘酮患者院外随访护理杨海燕刘海成（260）</p>\r\n<p>护理干预在急诊科自杀未遂患者中的临床应用张保兰（260）</p>\r\n<p>HIV感染者/AIDS患者心理问题及护理对策姜莹莹（261）</p>\r\n<p>母婴床旁护理模式在产科中的应用效果郑路梅（261）</p>\r\n<p>老年痴呆症卧床患者的综合干预护理刘美玲王丽（262）</p>\r\n<p>乳腺癌患者的心理护理刘晶惠（262）</p>\r\n<p>1例LC术后并发胆漏病人的治疗及观察护理蒲霞刘艳霞刘倩（263）</p>\r\n<p>静脉留置针输液的护理体会刘文娟（263）</p>\r\n<p>剖腹产病人的护理孙青（264）</p>\r\n<p>护理干预对慢性乙型肝炎患者主观幸福感和生存质量影响刘怡兰彦（264）</p>\r\n<p>急性左心衰的急诊护理探讨魏文君李静张静（265）</p>\r\n<p>老年高血压患者的社区护理干预王淑梅（265）</p>\r\n<p>晚期癌症病人的心理护理杨宏（266）</p>\r\n<p>关于老龄患者的骨外科护理张琳（266）</p>\r\n<p>有创血压的建立及护理吴银平（267）</p>\r\n<p>护理干预在预防颅脑损伤患者并发症中应用王丽（267）</p>\r\n<p>探讨先天性心脏病封堵术的护理叶玉霞周燕卿璐（268）</p>\r\n<p>急性心肌梗塞心血管内科治疗护理临床探析雷庆莲1谢宝珍2（268）</p>\r\n<p>PPH手术护理体会翟党红（269）</p>\r\n<p>优质护理在肝硬化并上消化道出血的应用黄爱萍（269）</p>\r\n<p>连续性血液净化治疗重症脓毒血症的护理体会周巧丽（270）</p>\r\n<p>针对妊娠合并心脏病患者护理的分析朱皎玲（270）</p>\r\n<p>老年骨质疏松性骨折的护理体会周静（271）</p>\r\n<p>减少护理纠纷提高护理人员的护患沟通技巧袁愿（271）</p>\r\n<p>&nbsp;</p>\r\n<p>临床护理路径在消化性溃疡病患者护理中的应用李玉英（272）</p>\r\n<p>浅谈骨科护理的发展现状及前景何小秀〖HT〗 &nbsp; &nbsp;〖HTK〗〖JY。〗（272）</p>\r\n<p>&nbsp;</p>\r\n<p>早产儿合并高胆红素血症一例护理体会更藏姐（273）</p>\r\n<p>&nbsp;</p>\r\n<p>探讨呼吸机相关性肺炎患者的预防措施以及护理方法贾欢欢 &nbsp;张丽娟（273）</p>\r\n<p>&nbsp;</p>\r\n<p>上消化道出血的观察及护理葛萍（274）</p>\r\n<p>&nbsp;</p>\r\n<p>谈谈带下病的辩证施护古仁惠（274）</p>\r\n<p>&nbsp;</p>\r\n<p>人性化护理对提高产妇自然分娩率的作用王晓霞（275）</p>\r\n<p>&nbsp;</p>\r\n<p>硫普罗宁致过敏反应临床观察与护理体会王兴萍（275）</p>\r\n<p>&nbsp;</p>\r\n<p>正向激励在护理管理中的应用帅永开<span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>苟洪娟（276）</p>\r\n<p>&nbsp;</p>\r\n<p>人性化在妇产科护理中的运用孙乐芹 蔡希荣 张玉梅（276）</p>\r\n<p>&nbsp;</p>\r\n<p>工伤残疾患者心理护理体会石小妹 &nbsp;陈愔（277）</p>\r\n<p>&nbsp;</p>\r\n<p>癫痫病人的护理措施与营养保健史丽丽（277）</p>\r\n<p>急性胆囊炎腹腔镜胆囊切除70例术后护理 苏英杰任桂华陈迎春孙丽艳（278）</p>\r\n<p>长效干扰素治疗慢性丙型肝炎的护理分析朱晶崔莉（278）</p>\r\n<p>小儿肺炎的护理体会王麟赟（279）</p>\r\n<p>&nbsp;</p>\r\n<p>浅谈急诊科的护理质量控制杨芳 &nbsp;王瑾 &nbsp; 张帆（279）</p>\r\n<p>浅析腰椎间盘突出症的康复护理 &nbsp; &nbsp;戚君华（280）</p>\r\n<p>&nbsp;</p>\r\n<p>气管切开的术后护理张莉（280）</p>\r\n<p>浅谈沟通在门诊护患关系中的重要性廖艳红杨小云朱丽（281）</p>\r\n<p>浅谈腰椎骨折的术后护理吕淑秀（281）</p>\r\n<p>临床护理路径应用于产褥感染护理的效果评价郝桂琴（282）</p>\r\n<p>高龄患者股骨近端骨折护理研究梁秀琴1 赵署晓2 周蓓芳3（282）</p>\r\n<p>显微外科手术治疗颈椎病的围手术期护理探讨闫妍 王梦军 王萧逸（283）</p>\r\n<p>一例硬膜下血肿并气管切开术后患者的护理陈映（283）</p>\r\n<p>&nbsp;</p>\r\n<p>多发性骨折患者的临床康复护理及心理护理体会 高春梅 陈敏（284）</p>\r\n<p>&nbsp;</p>\r\n<p>经皮肾镜碎石术40例的手术期护理黄必务（284）</p>\r\n<p>神经外科重症病人气管切开术后护理体会武颖（285）</p>\r\n<p>50例抑郁症患者的社区干预体会邓皇玉（285）</p>\r\n<p>经鼻蝶入路垂体瘤切除术后护理体会李殿荣（286）</p>\r\n<p>心理护理干预对宫外孕术后焦虑状态的影响曹平莲〖HT〗 &nbsp;〖HTK〗〖JY。〗（286）</p>\r\n<p>急性肺栓塞的临床护理观察周玉娟 王晓丽（287）</p>\r\n<p>急性腹泻病人护理分析陈丽娟〖HT〗 〖HTK〗〖JY。〗（287）</p>\r\n<p>加速康复外科护理在结肠癌腹腔镜手术中应用研究王梦军 &nbsp;闫妍 张静洁（288）</p>\r\n<p>案例分析在护理安全管理中的应用及效果王霞（288）</p>\r\n<p>风险管理在妇产科护理中的应用体会许崇岭（289）</p>\r\n<p>浅谈颅脑外伤的术后护理周艳琴（289）</p>\r\n<p>重度胎盘早剥护理分析罗旭（290）</p>\r\n<p>&nbsp;</p>\r\n<p>护理干预减轻普外科患者术后疼痛的效果分析叶爱芬（290）</p>\r\n<p>无创正压通气治疗COPD合并呼吸衰竭病人的护理特点及方法贾化侠（291）</p>\r\n<p>老年糖尿病合并脑梗死整体护理干预李慧1 史繁华2 王新斌3（291）</p>\r\n<p>整体护理干预在ICU高血压糖尿病患者中的应用体会郝凤梅 岳石星 &nbsp;刘志兰 〖HT〗 〖HTK〗〖JY。〗（292）</p>\r\n<p>新生儿窒息的原因及抢救与护理黄红艳 &nbsp; 袁艳玲 &nbsp;黄海红 （292）</p>\r\n<p>冰片加凯外敷治疗胺碘酮所致静脉炎的护理研究权喜玲（293）</p>\r\n<p>&nbsp;</p>\r\n<p>护患冲突的原因及防范策略〖HT〗</p>\r\n<p>&nbsp; 〖HS2〗〖HT4&rdquo;K〗〖JZ〗王凤荣（293）</p>\r\n<p>肥胖患者行冠状动脉搭桥手术的护理杨娜（294）</p>\r\n<p>30例糖尿病足临床护理袁艳玲 &nbsp;黄海红 &nbsp; 黄红艳（294）</p>\r\n<p>浅谈门诊输液护理工作王英 （295）</p>\r\n<p>以精神症状为主要症状的病毒性脑炎的观察和护理韦少凤 &nbsp;荣远萍 &nbsp;彭明创（295）</p>\r\n<p>如何在手术室护理中做好人性化护理严丹丹（296）</p>\r\n<p>血透室护理风险及防范对策田恬（296）</p>\r\n<p>社区护理管理对女性更年期综合症的效果分析 周润兴（297）</p>\r\n<p>待产妇产前心理护理指导的效果评价罗会琼（297）</p>\r\n<p>一例婴儿供肾儿童肾移植术后护理体会章 维（298）</p>\r\n<p>支气管哮喘急性发作急救护理效果观察 周美霞（298）</p>\r\n<p>探索中风后遗症患者在康复过程中护理干预的临床效果史建华（299）</p>\r\n<p>人性化管理理念在手术室护理管理中的应用体会张晓宁（299）</p>\r\n<p>探讨妇科急腹症手术患者的心理分析和护理乔健（300）</p>\r\n<p>浅谈糖尿病足的治疗和护理黄海红 &nbsp; 黄红艳 &nbsp;袁艳玲（300）</p>\r\n<p>关于无痛胃镜联合结肠镜检查的护理施锦绣（301）</p>\r\n<p>穴位埋线治疗COPD稳定期患者的护理体会李 靖 &nbsp;韩海涛 &nbsp;刘晓博（301）</p>\r\n<p>新生儿破伤风的护理体会杨红（302）</p>\r\n<p>介入治疗产褥期并发下肢深静脉血栓的临床护理董凤玲 &nbsp;晋红（302）</p>\r\n<p>语言技巧在临床心理护理中的作用 &nbsp;王琰（303）</p>\r\n<p>关于烧伤患者医院感染中护理措施的探讨包桂华（303）</p>\r\n<p>肿瘤患者恶性胸腔积液的护理张晓丽 邹爱玲 张春颖（304）</p>\r\n<p>慢性肾小球肾炎患者的护理周琨 &nbsp;顾琳琳（304）</p>\r\n<p>浅谈脑卒中患者居家护理朱兰芬（305）</p>\r\n<p>中医发热的临床护理体会张燕 马萍 闫清波（305）</p>\r\n<p>浅谈沟通技巧在基层医院护理工作中的应用 〖HT〗 </p>\r\n<p>〖HS2〗〖HT4&rdquo;K〗〖JZ〗梁舰丹 （306）</p>\r\n<p>子宫疤痕处妊娠难以控制大出血的急救与护理王萍华鲍建华周瑞（306）</p>\r\n<p>人性化护理在重症监护患者中的实施效果李玲（307）</p>\r\n<p>妇产科手术行硬膜外自控镇痛后并发症的观察及护理陈玉婷（307）</p>\r\n<p>病毒性心肌炎患者的护理体会冯丽钦 &nbsp;展丽元〖HT〗 〖HTK〗〖JY。〗（308）</p>\r\n<p>舒适护理模式在CCU急性心肌梗死患者中的应用体会冯丽钦 &nbsp;展丽元（308）</p>\r\n<p>无痛肠镜检查的护理配合陈文兰（309）</p>\r\n<p>碘125粒子植入患者的护理邓桂琼 &nbsp;刘正容 &nbsp;陈琼英 &nbsp;尹婷（309）</p>\r\n<p>250例内镜下结肠息肉切除术围手术期的护理张兆香张亚力通讯作者 &nbsp; &nbsp;魏晓兰 &nbsp;徐从容 &nbsp;郭峰艳（310）</p>\r\n<p>肛肠疾病手术后预防尿潴留发生的的护理对策盖赵秀 &nbsp;高桂霞 &nbsp;华晓红 &nbsp;刘 &nbsp;波 &nbsp;李雪莲 &nbsp;王如冰（310）</p>\r\n<p>直接动脉测压在婴儿心脏术后的应用护理陈丽珍1陈丽月2庄月娥3（311）</p>\r\n<p>对糖尿病患者的临床护理体会陈嫦（311）</p>\r\n<p>临终病人的心里特点及护理张文霞潘玉芳（312）</p>\r\n<p>分娩后抑郁症心理护理安小茹（312）</p>\r\n<p>肺结核合并咯血的护理吴栋美（313）</p>\r\n<p>神经内科护理的安全问题及其对策谢晓君（313）</p>\r\n<p>神经内科护理的安全隐患及对策陈红艳（314）</p>\r\n<p>手术室护理实践中个性化护理模式的应用邓芳艳（314）</p>\r\n<p>伤口护理中患者常见的心理状态及护理对策翁西卓玛（315）</p>\r\n<p>护理人员心理压力疏导研究张凤云（315）</p>\r\n<p>浅谈老年骨科患者的合理护理马春艳（316）</p>\r\n<p>浅析脑梗塞患者的护理要点王雪（316）</p>\r\n<p>急性心肌梗塞的院前急救和护理张丽霞1张萍2（317）</p>\r\n<p>心理护理对普外科术前焦虑患者的效果分析解学凤1张友丽2（317）</p>\r\n<p>婴幼儿毛细支气管炎的护理体会肖娜詹杏英（318）</p>\r\n<p>试论直肠癌手术患者术后的护理干预谢燕（318）</p>\r\n<p>关于甲亢131碘治疗患者的心理护理探讨范薇（319）</p>\r\n<p>浅谈脑血管意外病人的心理护理体会王会敏1王艳彩2（319）</p>\r\n<p>手术室清点工作中的安全问题及护理对策房丽艳（320）</p>\r\n<p>浅谈妇科护理中的有效沟通李俐朱垚（320）</p>\r\n<p>医院感染性腹泻的预防与护理符瑶熊娅蕊（321）</p>\r\n<p>浅谈白血病患者的口腔护理体会贺春霞（321）</p>\r\n<p>一例早期胃癌内镜下黏膜剥离术后肺不张的护理刘凌云（322）</p>\r\n<p>外科手术病人心理应激反应的护理高薇丽（322）</p>\r\n<p>人工单髁置换治疗膝关节单侧胫股间隙骨性关节炎的康复护理黄涛（323）</p>\r\n<p>克罗恩病住院患者临床营养护理刘凌云（323）</p>\r\n<p>糖尿病足患者的护理体会宋凌云（324）</p>\r\n<p>泌尿外科腹腔镜并发症的护理孙芳（324）</p>\r\n<p>护理人员工作压力原因分析及对策金莲花（325）</p>\r\n<p>腹腔镜下全腹膜外疝修补术的护理体会班耿郑英（325）</p>\r\n<p>妊娠合并乙型肝炎的护理李锦霞（326）</p>\r\n<p>糖尿病患者的中医护理观察李茜（326）</p>\r\n<p>手术室中整体护理分析意义李艳荣（327）</p>\r\n<p>护理查房在疗养院护理质量管理中的应用夏永莲李志娟李继铭（327）</p>\r\n<p>妇科卵巢囊肿行腹腔镜手术患者的护理体会罗嫒玉（328）</p>\r\n<p>支气管扩张合并大咯血护理体会刘天云（328）</p>\r\n<p>家庭式沟通在妇科护理中的应用效果分析倪鸣杨柳（329）</p>\r\n<p>脑梗死患者的护理体会庞永艳（329）</p>\r\n<p>急性一氧化碳中毒的院前急救及护理宋艳玲（330）</p>\r\n<p>母乳喂养自信心的护理干预对初产妇母乳喂养的影响米海莲（330）</p>\r\n<p>&nbsp;</p>\r\n<p>呼吸理疗在儿科气道护理中的应用王保梅（331）</p>\r\n<p>论桡动脉采血在新生儿护理中的应用邱雪琴（331）</p>\r\n<p>终末期心脏病心力衰竭患者的综合护理分析王文娟（332）</p>\r\n<p>&nbsp;</p>\r\n<p>老年食管癌放疗过程中的心理护理干预王泽民〖HT〗 &nbsp;〖HTK〗〖JY。〗（332）</p>\r\n<p>门诊护理医患纠纷的原因分析及措施宋福侠（333）</p>\r\n<p>毒蛇咬伤患者肢体肿胀疼痛的护理研究杨菊玉（334）</p>\r\n<p>舒适护理运用于手术室护理的探讨闫玉盼（334）</p>\r\n<p>探究儿科护理中的人性化护理体会袁华勤（335）</p>\r\n<p>健康教育干预在妇科阴道炎护理中的应用体会聂绸英卢丰（336）</p>\r\n<p>优质护理干预在妇产科护理中的应用探究秦小华〖HT〗</p>\r\n<p>]〖HTK〗〖JY。〗（336）</p>\r\n<p>个性化护理对患者需求的调查与持续改进分析唐雪敏1张蓉1王弋2余珍东2（337）</p>\r\n<p>浅谈妇产科护理发生的缺陷及措施赵青（338）</p>\r\n<p>鸟巢式护理在早产儿护理中临床效果分析贾红（338）</p>\r\n<p>浅谈胃癌患者围手术期护理的有效性于伟1于兵2*（339）</p>\r\n<p>综合社区护理及家庭护理干预对老年吸入综合征的预防作用田爱英 付立新 朱玉华 李瑜（340）</p>\r\n<p>输尿管结石患者疼痛的护理干预研究李红菊（340）</p>\r\n<p>消化内科中舒适护理的应用探讨马燕（341）</p>\r\n<p>运用中医护理提高带状疱疹的疗效冉孟洋（342）</p>\r\n<p>早期康复护理对脑出血偏瘫患者肢体运动功能的影响探析 李莉1 &nbsp; &nbsp;胥佳芳 2（342）</p>\r\n<p>腹腔镜下子宫切除术的围手术期护理李莹婷（343）</p>\r\n<p>门诊输液室心理护理在输液中的作用分析李玉娟（344）</p>\r\n<p>&nbsp;</p>\r\n<p>消毒供应室优质护理服务代晓玲（344）</p>\r\n<p>32例妇科开腹手术后急性假性肠梗阻的护理黄玲（345）</p>\r\n<p>&nbsp;</p>\r\n<p>高校学生门诊输液心理护理韩旭（346）</p>\r\n<p>&nbsp;</p>\r\n<p>80例上消化道出血患者的护理体会蔡传清（346）</p>\r\n<p>新形势下医院优质护理服务体系的科学构建与实践冯琼（347）</p>\r\n<p>&nbsp;</p>\r\n<p>肝胆术后患者肠蠕动恢复的中医护理分析 洪杰（348）</p>\r\n<p>&nbsp;</p>\r\n<p>PDCA法在护理学基础教学中的应用探讨〖HT〗</p>\r\n<p>&nbsp;〖HS2〗〖HT4&rdquo;K〗〖JZ〗李小军（348）</p>\r\n<p>院前急救护理常见隐患及防范班兰芳（349）</p>\r\n<p>&nbsp;</p>\r\n<p>42例颈椎前路手术围手术期护理分析于灵静（350）</p>\r\n<p>&nbsp;</p>\r\n<p>急性上消化道出血患者的护理分析张郁秋〖HT〗 〖HTK〗〖JY。〗（350）</p>\r\n<p>浅谈CCU综合性临床护理带教手法运用与效果赖新燕1任瑾瑾2（351）</p>\r\n<p>&nbsp;</p>\r\n<p>护理干预对慢阻肺患者生活质量的影响崔艳玲（352）</p>\r\n<p>浅谈胸外科护理不安全因素及对策胡春莉（352）</p>\r\n<p>个性化健康教育在农村肿瘤患者PICC携管居家期间的应用李晓环王英翠彭宏玲（353）</p>\r\n<p>浅谈持续腰大池引流的护理张海梅（354）</p>\r\n<p>急性胰腺炎患者临床护理杨丽芳（354）</p>\r\n<p>58例脑梗塞患者的临床护理分析刘露（355）</p>\r\n<p>妇科腹腔镜手术体位并发症的预防护理田青（355）</p>\r\n<p>护理程序在血液净化平衡疗法中应用胡怀娟（356）</p>\r\n<p>1例肾移植术后癫痫的治疗与护理马红霞（357）</p>\r\n<p>硬膜外麻醉围手术期心理护理87例疗效观察高薇丽（357）</p>\r\n<p>腰椎病小针刀术后并发症的预防和护理王瑜（358）</p>\r\n<p>ICU患者睡眠剥夺原因分析及护理对策王懿宁（358）</p>\r\n<p>低温等离子消融术治疗儿童阻塞性睡眠呼吸暂停综合征的护理陈穗珍 汤淙鸿 陆莉（359）</p>\r\n<p>社区高血压合并糖尿病患者应用人性化护理的效果评价陈玉秀（360）</p>\r\n<p>社区中医护理干预老年高血压的临床疗效观察陈玉秀（360）</p>\r\n<p>急性心肌梗死的护理诊断及护理措施田连霞（361）</p>\r\n<p>护理干预在结石性胆囊炎胆囊切除术围手术期的护理效果安丽娜（361）</p>\r\n<p>干扰素注射部位反应及护理观察张亚力 &nbsp;张兆香通讯作者 &nbsp;魏晓兰 &nbsp;徐从容 &nbsp;郭峰艳（362）</p>\r\n<p>一例妊娠期糖尿病智障病人的护理分析王丽丽（363）</p>\r\n<p>产科儿科合作对产房新生儿窒息的复苏与护理探讨吴笑棉（363）</p>\r\n<p>直肠癌Miles术后造瘘口的护理寇静（364）</p>\r\n<p>经皮激光椎间盘减压术治疗颈椎病82例临床护理观察龙海丽（364）</p>\r\n<p>改善神经肿瘤患者的护理：神经康复护理专家的基础及实践训季艳云（365）</p>\r\n<p>危重病人转科时的护理准备秦敬波（366）</p>\r\n<p>人性化护理在产科中的重要作用陈微（366）</p>\r\n<p>护理干预对老年鼻出血患者焦虑情绪的影响胡丽茎叶碧（367）</p>\r\n<p>肥胖患者下腹部皱褶处皮肤异常的护理李存珍 &nbsp;金艳 王丽（367）</p>\r\n<p>杀虫双农药中毒患者的抢救与护理黄丽 &nbsp; &nbsp;张绍红（368）</p>\r\n<p>浅谈手术室护理的安全隐患及防范措施牟婉兰 &nbsp;王钰（369）</p>\r\n<p>重症有机磷中毒的急救护理王淑芹 周文丽（369）</p>\r\n<p>糖尿病患者门诊胰岛素注射的护理体会周慧华（370）</p>\r\n<p>髋臼骨折患者的临床护理孙芳（371）</p>\r\n<p>鞍区疾病患者围手术期的观察与护理于丽慧　邢智洋（371）</p>\r\n<p>新生儿高胆红素血症的临床护理祝雨婷（372）</p>\r\n<p>感染性心内膜炎患者的临床护理体会杨光（372）</p>\r\n<p>肝硬化消化道出血病人的急救与护理李秋芳（373）</p>\r\n<p>护理路径对溃疡并发上消化道出血的影响分析 谢宜（374）</p>\r\n<p>护理干预对老年血液透析患者疗效的影响常玉兰（374）</p>\r\n<p>肺炎患者的临床护理体会蔡文香 &nbsp;张琳（375）</p>\r\n<p>骨折及关节疾病患者的护理高丽娟（375）</p>\r\n<p>缺铁性贫血患者的临床护理姜桂芹（376）</p>\r\n<p>探讨100<span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>例呼吸衰竭患者的护理分析郭秀焕（377）</p>\r\n<p>病毒性心肌炎患者的临床护理体会刘发荣（377）</p>\r\n<p>肺癌手术患者的临床护理孙立娟（378）</p>\r\n<p>冲击伤患者的救治与护理王秀丽（378）</p>\r\n<p>小儿社区获得性肺炎的护理方法王艳秀（379）</p>\r\n<p>系统性红斑狼疮肾损害的护理邢艳（380）</p>\r\n<p>妇科腹腔镜手术术后并发症的观察及临床护理蔡海静（380）</p>\r\n<p>ERCP术前心理护理干预对患者应激反应的影响沈菊（381）</p>\r\n<p>早期心理护理对老年慢性心衰患者心理状态的影响邓燕秋（381）</p>\r\n<p>护理干预对老年糖尿病患者的影响李立新（382）</p>\r\n<p>胸腔镜手术综合护理干预的临床意义姜春辉 &nbsp;邢富敏（383）</p>\r\n<p>护理干预对普外患者生活质量的影响杨学慧 &nbsp; 陶玲 王磊（383）</p>\r\n<p>老年糖尿病患者的心理问题及护理对策杨红（384）</p>\r\n<p>原发性肝癌介入治疗护理体会恽慧娟 &nbsp;王建国 &nbsp;张坚 &nbsp;孔鹏（384）</p>\r\n<p>28例直肠癌患者住院期间的护理张 &nbsp;晅（385）</p>\r\n<p>护理安全隐患原因分析及防范对策李赞〖HT〗 〖HTK〗〖JY。〗（386）</p>\r\n<p>&nbsp;</p>\r\n<p>探讨亲情护理在脑出血病人康复期的应用效果张丽娟 贾欢欢（386）</p>\r\n<p>&nbsp;</p>\r\n<p>社区老年人保健及护理分析奚业梅（387）</p>\r\n<p>&nbsp;</p>\r\n<p>剖腹产术后腹胀原因分析及护理对策潘丽（387）</p>\r\n<p>骨科下肢深静脉血栓的预防及护理张雪涛（388）</p>\r\n<p>&nbsp;</p>\r\n<p>562例宫腔镜检查在妇科手术治疗后临床护理探析庞敏（389）</p>\r\n<p>&nbsp;</p>\r\n<p>产后出血的检测与护理分析史艳艳（389）</p>\r\n<p>&nbsp;</p>\r\n<p>急救医学中血小板减少症的临床护理措施孙亚丽〖HT〗 〖HTK〗〖JY。〗（390）</p>\r\n<p>&nbsp;</p>\r\n<p>关于62例老年人肺部感染患者的护理心得王全红 &nbsp;田茂群 &nbsp;李凤云（390）</p>\r\n<p>29例重度过敏反应急救护理体会王英（391）</p>\r\n<p>&nbsp;</p>\r\n<p>内科危重病患者合并腹泻的原因构成及临床护理王亚莉 &nbsp;李晓燕王蕊周玉梅（392）</p>\r\n<p>&nbsp;</p>\r\n<p>腰椎间盘突出症患者射频脉冲治疗术后的护理及康复指导吴丽娟（392）</p>\r\n<p>&nbsp;</p>\r\n<p>ICU患者的心理特征与护理对策姜瑞花 方水秀 蔡欣（393）</p>\r\n<p>&nbsp;</p>\r\n<p>影响伤口愈合护理的若干因素探讨李瑞杰（393）</p>\r\n<p>分析细节护理在儿科患者之中的应用卓彦玲（394）</p>\r\n<p>颈椎病综合治疗的护理体会陈一萍 张相珍 刘燕燕（395）</p>\r\n<p>Wo yihui产科护理差错的防范与护理管理应用探讨赵英刘金菊（395）</p>\r\n<p>80例闭合性腹外伤的观察与护理钟孝敏（396）</p>\r\n<p>综合康复护理对老年脑梗塞患者肢体功能恢复影响的研究张灵茜金丽娜（396）</p>\r\n<p>110例胸腹部多发伤的临床护理张平英（397）</p>\r\n<p>基层医院五保户病人的心理护理张蓉（398）</p>\r\n<p>探讨86例直肠癌围手术期的护理伊丽萍（398）</p>\r\n<p>心血管神经症的现代护理进展吴春香刘俐（399）</p>\r\n<p>肺结核咯血患者的护理体会余谯梅（400）</p>\r\n<p>ICU护士为机械通气患者安全吸痰的临床观察余帅（400）</p>\r\n<p>人性化保护性约束在ICU护理中的应用任佳蓉（401）</p>\r\n<p>骨科开展优质护理服务工作体会双新秀（401）</p>\r\n<p>舒适护理应用于骨折患者的效果观察唐丽玉（402）</p>\r\n<p>对150例原发性高血压患者进行护理干预的效果观察龙弟英（403）</p>\r\n<p>150例颅内高压综合征病人的观察与护理李玉红张振美（403）</p>\r\n<p>优质护理对重症监护病房（ICU）患者非计划性拔管的效果观察刘俐吴春香（404）</p>\r\n<p>浅谈沟通技巧在临床护理工作中的应用李桂芬（404）</p>\r\n<p>6&sigma;风险管理在心内科护理中的应用孔彦霞（405）</p>\r\n<p>临床新护士护理活动自我效能的调查研究1李维英2李维红3张海霞4郭婷婷（406）</p>\r\n<p>35例I125放射性粒子植入治疗前列腺癌的护理王飞（406）</p>\r\n<p>胃镜射频治疗胃十二指肠息肉的护理刘彦君（407）</p>\r\n<p>浅谈以人为本理念在护理中的应用郑绮华陈敏（407）</p>\r\n<p>高压氧治疗中的人性化护理潘琳霞（408）</p>\r\n<p>AMI后心率失常发生的时间规律及护理对策吴闯李桂娟（409）</p>\r\n<p>小儿急性肾功能衰竭的护理温泉（409）</p>\r\n<p>综合模拟人在急救护理学教学中的应用李茜（410）</p>\r\n<p>手术室夜间护理工作质量提升的方法探讨周博（410）</p>\r\n<p>护理质量控制中的问题分析及整改措施董青崔岩红陈蕊（411）</p>\r\n<p>小夹板外固定治疗四肢骨折的护理与康复王霞（412）</p>\r\n<p>外科急腹症的临床观察与护理闫妍王梦军荀雷（412）</p>\r\n<p>优质护理在儿科临床护理的应用刘俊巧陈红苗静（413）</p>\r\n<p>优质护理干预对慢性阻塞性肺疾病患者生活质量的影响霍保利可玮胡爱娣（413）</p>\r\n<p>四肢骨折并发骨筋膜室综合症的临床观察和护理邓高琼（414）</p>\r\n<p>一例胆总管取石术后鼻胆管引起出血的病人护理董小鸯（415）</p>\r\n<p>手术室护理管理和普外科手术患者院内感染之间的关系研究靳芳（415）</p>\r\n<p>高龄患者人工全髋关节置换术后护理与康复李琴芬（416）</p>\r\n<p>开展优质护理服务在产科对孕产妇的影响屠凤明（416）</p>\r\n<p>医院社区互动糖尿病患者护理互助模式运行分析罗惠贤（417）</p>\r\n<p>试论临床护理带教把小燕（418）</p>\r\n<p>老年股骨颈骨折围手术期护理效果研究汤萌萌（418）</p>\r\n<p>人性化管理在手术室护理管理中的作用分析张光芬 赵英（420）</p>\r\n<p>三甲医院危机管理在消化内科护理管理的干预万丽 &nbsp;赵丽 卢光新 &nbsp;杜勇（420）</p>\r\n<p>卫生事业单位流动人员人事档案管理调查分析杨勇（421）</p>\r\n<p>消毒供应中心质量管理之如何行之有效的保证清洗质量丁文珍（421）</p>\r\n<p>血站加强与医院沟通的效果体会吴江亭 &nbsp; 郝丽丽（422）</p>\r\n<p>手术室医疗器械的管理体会刘梅（422）</p>\r\n<p>标准化流程在干部保健',0,10000,'default','show'),(5,'','目录<br />\r\n〖HT3XK〗| 论著 |〖HT〗<br />\r\n青岛地区慢性肾病患者晨尿尿蛋白肌酐比值与24小时尿蛋白定量的相关性分析邓华张蓉张磊（1）<br />\r\n论中药安全性及合理应用毛庭英（2）<br />\r\n浅谈急性阑尾炎的超声诊断彭光明（2）<br />\r\n高血压性脑出血继续出血相关因素的临床探讨罗勇（3）<br />\r\n中西医结合治疗原发性肾病综合征60例临床观察刘莉 （3）<br />\r\n伤寒论葛根汤加味治疗颈型颈椎病60例疗效观察周希萍（4）<br />\r\n静脉留置针输入引起静脉炎的护理研究喻佑翠（4）<br />\r\n两种滴眼液预防青少年近视眼效果的比较李培江（5）<br />\r\n纳洛酮治疗小儿重症肺炎临床观察李明（6）<br />\r\n痰热清治疗流行性腮腺炎伴脑膜脑炎的临床研究杨启丽（6）<br />\r\n手术显微镜下翼状胬肉切除联合自体角膜缘干细胞移植术治疗翼状胬肉的临床疗效观察张雅玲（7）<br />\r\n二次胆道手术治疗肝胆管结石的临床观察万维贵（8）<br />\r\n改良Devine术矫正小儿隐匿性阴茎的疗效观察胡宝利朱朝阳 李铁强 杜信毅（8）<br />\r\n肝段切除术治疗肝内结石的临床价值分析舒健（9）<br />\r\n慢性肾脏病蛋白尿的中西医治疗进展分析李睿（9）<br />\r\n口腔修复中不同修复材料的抗摩擦性能分析肖银容（10）<br />\r\n新时期高中生心理健康教育模式探究魏丽君何平廖安波 （10）<br />\r\n浅谈以人为本的护理在内科病房中的应用杨敏（11）<br />\r\n中医治疗腰椎间盘突出症200例临床疗效观察周永建（12）<br />\r\n参百蛇洗剂治疗霉菌性阴道炎96例的疗效分析张琴（12）<br />\r\n下消化道手术后不置胃肠减压40例的临床观察杨浩（13）<br />\r\n急性阑尾炎并发肠梗阻手术的临床护理分析王映红（14）<br />\r\n临床血细胞检验标本的质量控制分析郭健平（14）<br />\r\n临床护理路径在小梁切除联合虹膜周切手术病人中的应用王雁关晋英黄霞邓蓉（15）<br />\r\n脑卒中康复治疗的临床观察研究李文娟牟丽霞2蔡燕（16）<br />\r\n产科围术期周围神经损伤的原因及处理策略分析蔡燕李文娟牟丽霞（16）<br />\r\n延续性护理干预对高血压患者认知功能的改变董群彬张丽萍李勤（17）<br />\r\n护理干预对术后肺部感染率的影响张美玉闫红群（17）<br />\r\n论&ldquo;木桶效应&rdquo;与神经外科的风险管理黄宁静秦德颖（18）<br />\r\n&ldquo;五心&rdquo;服务理念在急诊患者护理工作中的应用贾晓燕（18）<br />\r\n异位妊娠关键在早诊断及正确护理王泽珕何萍邹正霖李曼何萍（19）<br />\r\n锁定加压板联合自体骨移植治疗股骨骨折髓内钉固定术后骨不连的疗效常继辉（20）<br />\r\n宫腹腔镜联合手术在输卵管性不孕中的疗效观察贾艾丽（20）<br />\r\n结肠癌并急性肠梗阻的诊断与治疗常金哲王翠萍（21）<br />\r\n甲状腺功能异常合并2型糖尿病患者的临床分析李 凯（22）<br />\r\n保守治疗体外循环心内直视术后胸骨哆开的护理体会詹会智金素廖彬（23）<br />\r\n1例肛周化脓性汗腺炎患者术后护理体会陈娟红（23）<br />\r\n〖HT3XK〗| 临床研究/实验 |〖HT〗<br />\r\n缩唇呼吸对COPD病人呼吸功能主要指征变化的观察宋应群（24）<br />\r\n临床护理路径在人工全髋关节置换术病人中的实施 叶桂芹（24）<br />\r\n癃必消胶囊治疗前列腺增生症的疗效观察 隋广涛（25）<br />\r\n盆底肌肉电刺激联合功能锻炼治疗盆底功能障碍的疗效观察苏明（25）<br />\r\n穴位贴敷治疗支气管哮喘盛艳 （26）<br />\r\n护理专业临床带教实习综合管理模式探讨宋晓敏（26）<br />\r\n重型基底节区脑出血的手术治疗及预后分析邵征宇陈丹华张燕（27）<br />\r\n子宫肌瘤的临床分析与手术治疗 黄家琴 （27）<br />\r\n外科治疗脑出血微创引流术与简易钻颅抽吸术的对比研究李梁张兆辉（28）<br />\r\n经腹腔镜逆行、次全胆囊切除手术治疗复杂胆囊结石对比观察李骏（29）<br />\r\n46例肺栓塞患者的临床症状和流行病学回顾李华朴范洙尹龙德（30）<br />\r\n前列地尔联合阿加曲班对后循环TIA患者血纤维蛋白原的影响的临床观察张霞（30）<br />\r\n功能性消化不良与肠易激综合征重叠关系的研究张启德（31）<br />\r\n疣状胃炎中医研究进展张鹏（31）<br />\r\n血府逐瘀汤加减治疗更年期综合症的临床观察支宗变（32）<br />\r\n1例泮托拉唑钠静脉滴注致过敏性休克分析戴磊（33）<br />\r\n显微镜和间接眼底镜下视网膜脱离外路手术的临床对比研究周治国孙建华（33）<br />\r\n四季抗病毒合剂治疗小儿疱疹性咽峡炎疗效观察王洪波王燕玲（34）<br />\r\n卡孕栓预防疤痕子宫剖宫产术后出血108例临床观察王芳（34）<br />\r\n98例小儿肺炎支原体感染临床表现及特征王代艳（35）<br />\r\n〖FL)〗〖FL(〗〖HJ0.95mm〗孕期不同补钙方式与婴儿骨密度等相关性临床分析 吴英（35）<br />\r\n老年戊型肝炎临床特点研究杨晓莉（36）探讨临床护理对2型糖尿病患者生命质量的影响姚艳梅（37）<br />\r\n早产并发胎膜早破临床探析陈世琼（37）<br />\r\n药品不良反应监测方法与途径初探陈英（38）<br />\r\n高血压患者血清胱抑素C测定与临床意义王军（39）<br />\r\n浅谈慢性呼吸衰竭治疗陈维（39）<br />\r\n显微血管减压术中的责任血管 陈松石松生 陈建屏 梁日生（40）<br />\r\nNF-KappaB SiRNA修饰树突状细胞对大鼠皮肤移植免疫耐受诱导的研究<br />\r\n蔡成宽袁刚汪辉杨斌（41）<br />\r\n中医辨证治疗胃及十二指肠溃疡预后分析戴朝科（42）<br />\r\n儿科抗生素的合理应用分析崔丽影（42）<br />\r\n儿童手足口病的诊治及特殊表现陈占锋（43）<br />\r\n微创穿刺术联合开颅血肿清除术治疗重型颅脑损伤并脑疝临床分析陈泉旭（44）<br />\r\n丙泊酚静脉麻醉下辅助胃镜检查的临床应用巩翠玲（44）<br />\r\n长期静脉输液患者血管的保护方法高淑琴（45）<br />\r\n糖尿病急性心肌梗死患者心脏超声特点分析何晓兰程景华郭峰（45）<br />\r\n保心包贴膜治疗老年不稳定心绞痛临床分析郭莉娟（46）<br />\r\n蒲地兰联合四联疗法根治幽门螺杆菌感染临床疗效观察蔡楠（47）<br />\r\n中西医结合治疗急性胃肠炎的临床体会卓振（47）<br />\r\n浅谈慢性乙型肝炎中草药配合治疗分析曾华彪（48）<br />\r\n以头晕为主诉的无症状性脑梗死患者焦虑状态的临床观察揭苏平古观保 郭春平（49）<br />\r\n护理干预在人工髋关节置换中的应用研究王伟风（49）<br />\r\n偏头痛相关性脑梗死的发病机制与诊断治疗体会张永昌（50）<br />\r\n辛伐他汀联合苯那普利治疗糖尿病肾病的临床疗效探讨王彦荣（50）<br />\r\n过期妊娠患者的临床治疗探析尹春梅（51）<br />\r\n冠状动脉介入治疗无复流现象使用替罗非班的临床效果孙丽蔡永臣 王占 刘伟忠 刘淼丁学亮（51）<br />\r\n神经内科护理中对脑卒中康复护理的临床研究孙晶晶 王洵（52）<br />\r\n阿德福韦酯治疗慢性乙型肝炎的效果分析施建华（52）<br />\r\n口腔正畸治疗中微型种植体支抗的临床应用观察李晓微（53）<br />\r\n探讨宫腔镜手术联合甲氨蝶呤治疗剖宫产术后子宫瘢痕妊娠的临床疗效 李淑梅（53）<br />\r\n妇科盆腔炎临床诊断及治疗分析田慧丛珊亭（54）<br />\r\n阑尾周围脓肿的临床治疗体会王波季雪莉 王秀芳（54）<br />\r\n鲑鱼降钙素联合迪巧钙治疗老年糖尿病病人并发骨质疏松的疗效观察王乐峰肖春凌（55）<br />\r\n双排螺旋CT对肝脓肿的诊断价值分析王磊 刘荣成 刘华瑞（55）<br />\r\n宫腔镜子宫纵隔剪开术治疗纵隔子宫的临床疗效王晓茜（56）<br />\r\n个性化护理对结核病治疗的临床作用吴苒澈（56）<br />\r\n异甘草酸镁治疗慢性乙型肝炎的疗效观察肖贵宝（57）<br />\r\n慢性细菌性前列腺炎合并关节炎的临床治疗方法向绪锡（57）<br />\r\n关于血液灌流抢救重症有机磷农药中毒的疗效研究薛文成（58）<br />\r\n胫骨平台骨折合理手术内固定的临床观察杨文华 蔡发奎（58）<br />\r\n糖尿病胃肠道并发症的防治杨清树郭绪英（59）<br />\r\n早期功能锻炼预防鼻咽癌放疗张口困难杨慧（59）<br />\r\n无痛性急性心肌梗死的临床特点及急诊护理观察翟园园（60）<br />\r\nB超诊断56例妇科盆腔肿块的临床观察云阿娜（60）<br />\r\n观察选择性贲门周围血管离断术治疗门静脉高压症的临床疗效袁一青（61）<br />\r\n人IIA型磷脂酶A2衍生多肽P51-67杀菌作用的研究张地（62）<br />\r\n经阴道超声联合腹部超声诊断宫外孕的分析张文婷（62）<br />\r\n注射骨瓜提取物致输液反应的临床观察及护理张 敏（63）<br />\r\n2型糖尿病患者的情志分析及心理干预的观察张凌（63）<br />\r\n尿微量白蛋白（mALB）的检测在肾病早期损害中的诊断价值张良忠韩晓红（64）<br />\r\n血液常规检验的临床分析张俊（65）<br />\r\n探讨经下腹部微小切口治疗小儿腹股沟斜疝的临床效果李志刚（65）<br />\r\n评价左炔诺孕酮片在正常人体的生物等效性郑茹（66）<br />\r\n口腔美容修复中牙体预备应遵循的原则及其应用效果赵谦（66）<br />\r\n关节镜下膝关节半月板损伤的临床治疗探析 陈云烨（67）<br />\r\n硬膜外麻醉并发症的防治研究苗慧（68）<br />\r\n中西医结合法治疗口腔溃疡的临床效果观察秦丽侠（68）<br />\r\n椿乳凝胶治疗宫颈糜烂的疗效观察尚欣（69）<br />\r\n肝硬化腹水并低钠血症患者的临床治疗观察揭苏平古观保 廖佳隆（69）<br />\r\n幽门螺杆菌感染性胃病中医药治疗预后观察钱春兰钱坤刘聿洲 （70）<br />\r\n蛋白琥珀酸铁口服液与右旋糖酐铁口服液治疗小儿缺铁性贫血的临床疗效观察王丽英（70）<br />\r\n浅谈脑梗塞的病因与治疗王海霞（71）<br />\r\n血液灌流在救治2，4-滴丁酯中毒患者临床应用王燕华何莉（71）<br />\r\n重症监护室慢性阻塞性肺疾病并肺部真菌感染的临床护理分析单利侠（72）<br />\r\n儿童气管支气管X线穿透性异物诊断应用CT的临床效果分析王新斌李慧（73）<br />\r\n80例小儿外部性脑积水的CT诊断分析及临床表现王新斌史繁华（73）<br />\r\n中医药联合拉米夫定治疗慢性乙型病毒性肝炎临床疗效分析张伟娜（74）<br />\r\n神经内科临床护理教学中几种方法的应用及体会袁晓丽（74）<br />\r\n静脉注射低温液联合体表降温在亚低温实施中的研究宋婷 李松梅（75）<br />\r\n甲状腺肿瘤手术治疗临床特点分析蔡振湘 谭政（76）<br />\r\n中西医结合治疗冠心病的临床分析吉联军（76）<br />\r\n米非司酮治疗子宫肌瘤59例疗效对比罗娜（77）<br />\r\n电温针治疗腹部非胃手术后胃瘫综合征的临床疗效观察任叔阳贺平张琦张桢张冬凤（77）<br />\r\n中药联合西药治疗胆汁反流性胃炎临床观察庞彩霞（78）<br />\r\n子痫前期的临床分析吴陈华（79）<br />\r\n氨氯地平阿托伐他汀钙治疗高血压合并冠心病的临床疗效观察孙慧（79）<br />\r\n中西医治疗脑血栓疗效比较沈韶辉（80）<br />\r\n四肢骨干开放骨折的早期治疗分析沈成林吴艳（80）<br />\r\n贺普丁治疗乙肝120例临床疗效观察朱九荣（81）<br />\r\nHPLC方法测定清洁验证中头孢克洛残留量陈莉英（81）<br />\r\n过氧化氢低温等离子灭菌器对内镜器械消毒灭菌的应用体会吴桂玲（82）<br />\r\n舒芬太尼在老年下肢关节置换术后静脉镇痛的临床应用陈本林（82）<br />\r\n抗精神病药物所致老年患者白细胞减少的治疗研究孔凡妮（83）<br />\r\n探讨临床口腔护理的研究进展状况荆进（83）<br />\r\n肿瘤相关基因蛋白肺癌中的表达及临床意义张丽英（84）<br />\r\n糖尿病合并急性脑梗塞患者的临床特点与高危因素分析李岚（85）<br />\r\n清目润珠丸治疗干眼症的临床观察张翻乔尚勇 王 杰 （85）<br />\r\n水蒸气蒸馏、超声提取与气质联用测定银翘解毒片中 (-)-薄荷酮、薄荷醇的含量林清英 谢青 缪存信李宗 （86）<br />\r\n不同根管充填材料在根管治疗术中的疗效观察尚海云（87）<br />\r\n胆道镜联合腹腔镜治疗胆道结石80例临床分析谢烽（87）<br />\r\n达克宁治疗外阴阴道念球菌病的临床效果分析宋芙蓉（88）<br />\r\n下颈椎骨折脱位的手术治疗研究王志国（88）<br />\r\n儿童支气管炎从脾胃治的临床研究王书玲 赵坤（89）<br />\r\n社区护理干预对提高糖尿病治疗依从性临床分析王素珍（90）<br />\r\n应用银丹心脑通胶囊治疗冠心病及心肌缺血的临床观察于秀莲（90）<br />\r\n肱骨近端Ⅲ、Ⅳ型骨折采用锁定钢板治疗临床观察朱树卯（91）<br />\r\n丹参川穹嗪注射液在脑血栓患者治疗中的应用分析朱廷轩（91）<br />\r\n静脉用药调配中心为平台，促进临床合理用药赵方允任晓明丁莉陈东海李翠红王洋（92）<br />\r\n肝素钠封管与正压接头封管效果的临床观察 赵娥丽 仇小娟（92）<br />\r\n新型泪道引流装置治疗泪道狭窄及泪小管断裂临床探析赵高饶（93）<br />\r\n尿干化学分析仪与尿沉渣分析仪联合使用在尿液红细胞检验张旭（93）<br />\r\n中老年骨关节病的临床护理研究张静（94）<br />\r\n中风Ⅲ号合剂治疗脑梗死临床研究吕晓洲（94）<br />\r\n300例无痛人流的临床体会沈亚飞（95）<br />\r\n孟鲁司特治疗小儿咳嗽变异型哮喘的临床效果邱耀环（95）<br />\r\n浅谈普外科手术抗生素的预防性应用秦立（96）<br />\r\n健脾清化方治疗脾虚湿热型慢性肾衰的临床观察周峥法 孙彬 王孝俊（97）<br />\r\n胰腺实性假乳头状肿瘤6例临床分析尹强 汉京彦（97）<br />\r\n234例慢性肾衰竭的临床诊治体会孙洪昌（98）<br />\r\n对临床带教实习护生的分析与思考刘月（99）<br />\r\n探讨早期高压氧综合治疗对重度颅脑外伤患者临床疗效的影响陆卫风（99）<br />\r\n恩替卡韦联合扶正化瘀胶囊治疗慢性乙型肝炎肝纤维化54例临床疗效分析万兆娟（100）<br />\r\n妊娠早期检测糖化血红蛋白的临床价值唐玉红 王伟涛（100）<br />\r\n心理护理干预对住院恶性肿瘤患者心理状况改善的临床观察王锦慧洪铭烽（101）<br />\r\n分析高危型HPV DNA杂交捕获法Ⅱ(HC2)在宫颈癌及癌前病变诊断中的预测价值王洁（101）<br />\r\n绝经后妇女尿路感染的临床表现及防治体会堵娇（102）<br />\r\n小儿肺炎支原体肺炎的临床治疗新进展 李德荣（102）<br />\r\n阿奇霉素治疗小儿支原体性肺炎临床效果评价李丹（103）<br />\r\n心理护理方面在临床实践中的运用黎海鸥戴爱平张亚蒋典（103）<br />\r\n宫颈液基细胞学检查联合人乳头瘤病毒检测应用宫颈癌筛查140例临床分析李凤秋 刘静 姜娟（104）<br />\r\n子宫内膜异位症与痛经的临床治疗李漪（104）<br />\r\n小儿急性中毒56例临床分析李秀清（105）<br />\r\n男性泌尿系统疾病日常预防探讨李珊珊 杨柳（105）<br />\r\n中医扶正解毒法治疗慢性乙型肝炎的临床疗效观察李增果（106）<br />\r\n通过肝门的管道及临床应用刘坤 （106）<br />\r\n血液净化联合血塞通注射液治疗蜂蜇伤并多器官功能障碍综合征的临床观察柳轻（107）<br />\r\n42例妇科腹腔内出血的临床急救措施郑常聪（108）肺栓塞的临床治疗体会刘勇 （108）<br />\r\n浅析营养科室在现代医院临床中的建设及其作用程亚琴（109）<br />\r\n血尿酸水平与缺血性脑卒中的关系探讨刘盈盈 王淳（110）<br />\r\n大剂量奥美拉唑治疗老年胃溃疡合并出血的临床疗效分析蒋绿英（110）<br />\r\n腹腔镜结直肠癌切除术与同期开腹结直肠癌切除术的临床对比研究郑华义（111）<br />\r\n关于心内科住院患者合并医院感染的临床特征的研究赵国全（111）<br />\r\n慢性肺心病合并心衰临床治疗体会赵连荣（112）<br />\r\n旋覆代赭汤治疗反流性食管炎的临床效果观察赵元生（112）<br />\r\n三维适形放射治疗食管癌的临床研究张帆（113）<br />\r\n依匹斯汀联合复方甘草酸苷治疗慢性湿疹临床观察张金娥（114）<br />\r\n手术治疗结肠癌致肠梗阻疗效观察张晓东赵俊（114）<br />\r\n呼吸内科慢性咳嗽症状的临床观察张有婵（115）<br />\r\n腹股沟外环的扩大对于诊断隐匿性斜疝的临床分析张震曹江平（115）<br />\r\n红霉素联合阿奇霉素治疗小儿支原体肺炎的临床疗效分析尹红青（116）<br />\r\n七氟烷在体外循环手术麻醉中心肌保护的临床研究进展邢钢王君艳（117）<br />\r\n子宫内膜癌的中西医治疗研究现状徐慧（117）<br />\r\n急性牙髓炎临床治疗分析杨静高小雪（118）<br />\r\n鼻内镜手术治疗慢性鼻窦炎鼻息肉的临床价值分析王开平（118）<br />\r\n肝病治疗仪治疗慢性乙型肝炎的临床观察与护理向红梅（119）<br />\r\n浅谈基层临床保健预防方面发展的因素韦国周（119）<br />\r\n浅析针炙治疗月经不调王兆晶（120）<br />\r\n恶性肿瘤患者外周血T淋巴细胞CD25的测定与临床检验学研究王博马昉（121）<br />\r\n兰索拉唑与蒙脱石散联合治疗顽固性反流性食道炎的诊疗体会王尽帆（121）<br />\r\n小儿复发性腹痛72例临床分析郑春生潘海龙（122）<br />\r\n临床护理路径在血液透析患者健康教育中应用效果分析王华（122）<br />\r\n关于神经内科住院患者神经眼科临床特征的研究孙洪伟（123）<br />\r\n老年尿毒症患者行血液透析诱导期护理的效果观察沈映彤（123）<br />\r\n卡维地洛联合依那普利治疗风湿性心脏病心衰的疗效分析沙本炎（124）<br />\r\n肝硬化采用中医食疗的临床护理体会谭燕平（124）<br />\r\n浅谈神经内科门诊心理障碍患者的临床诊治索静辉（125）<br />\r\n小骨窗脑血肿清除术治疗高血压脑出血临床分析罗晋泽（125）<br />\r\n医院高压氧治疗76例脑梗塞患者的护理体会廖敏（126）<br />\r\n记忆合金环抱器治疗锁骨骨骨折的临床应用刘国生（126）<br />\r\n非超声乳化下巩膜隧道小切口人工晶体植入治疗白内障的疗效分析李洪明（127）<br />\r\n中医治疗脑血栓患者临床疗效分析李柏林（127）<br />\r\n替硝唑局部用药治疗牙周炎的临床疗效观察李志辉（128）<br />\r\n注射吸毒致股动脉假性动脉瘤的临床护理李瑶（129）<br />\r\n分三型施治带状疱疹46例临床观察李忻泽（129）<br />\r\n915例新生儿窒息原因分析及临床干预研究纪晓刘聪（130）<br />\r\n中西医结合治疗复治菌阳肺结核强化期临床观察刘铁军（130）<br />\r\n小儿支气管炎临床观察分析梁贵国（131）<br />\r\n庆大霉素治疗痢疾临床观察张渝红（131）<br />\r\n高压氧治疗胎儿宫内发育迟缓的临床疗效观察周秀芳宋薇陈红（132）<br />\r\n临床护理路径对脑外伤综合征患者康复的影响研究周娟（132）<br />\r\n高敏C-反应蛋白及血清白细胞介素检查对肺炎支原体肺炎患儿的临床意义分析仲伟香（133）<br />\r\n观察中药骨疏康治疗绝经后骨质疏松症的临床疗效钟晓凤卫云（133）<br />\r\n急性胆囊炎营养辅助治疗的临床分析郑晓蕾苑艳王超（134）<br />\r\n丙种球蛋白治疗小儿支气管肺炎的临床疗效观察徐延敏张健（135）<br />\r\n利多卡因与出莨菪碱（654-2）联合用于肾绞痛治疗效果与杜冷丁治疗效果的比较熊化军（135）<br />\r\n复杂性上尿路结石微创综合治疗的临床应用分析谢猛张庆波（136）<br />\r\nVSD治疗软组织缺损的临床研究袁延光李伟夏凯（136）<br />\r\n急诊内科昏迷患者病因分析及临床治疗分析王建美（137）<br />\r\n剖宫产术腹壁高危因素皮下放置引流管临床观察王春霞（137）<br />\r\n临床护理告知程序在神经内科的成效研究汪细香（138）<br />\r\n不同给药方式治疗盆腔炎性疾病的临床观察王仙（139）<br />\r\n50例急性上呼吸道感染的临床治疗体会武士杰（139）<br />\r\n论老年性药物性肝损害的临床特点及诊治刘东（140）<br />\r\n白眉蛇毒血凝酶联合泮托拉唑治疗上消化道出血83例临床观察骆爱秀（140）<br />\r\n妇科腹腔内出血317例临床分析罗招花（141）<br />\r\n腰腹肌锻炼对于慢性腰背痛康复的临床效果分析孟宪国（141）<br />\r\n关于全身麻醉在无痛人流手术中的临床效果小议苗杨（142）<br />\r\n关节镜清理术后注射玻璃酸钠治疗骨性关节炎的临床体会刘高峰刘虹（142）<br />\r\n105例中青年脑出血患者的护理干预李海芝杨菲（143）<br />\r\n急性阑尾炎手术临床治疗分析李孝刚（143）<br />\r\n腰硬联合麻醉在剖宫产术中的临床应用研究何诗忠（144）<br />\r\n消化内科住院患者医院感染的临床调查研究解斌（144）<br />\r\n36例药物配合牵引治疗腰椎盘突出症疗效观察姜东林（145）<br />\r\n空心钉联合内外侧钢板治疗肱骨髁间骨折临床分析宫大伟毛玉峰姜春阳（145）<br />\r\nAFU与AFP联合检测对与原发性肝癌的临床诊断分析韩伟涛（146）<br />\r\n依达拉奉治疗糖尿病合并急性脑梗死的临床效果分析黄仲伦（146）<br />\r\n双肺同期大容量肺灌洗术 20例 临床体会黄锡娟（147）<br />\r\n齿槽嵴裂植骨修复后的临床研究曹丰弟（148）<br />\r\n院前急救和院内急救无缝衔接临床研究陈燕（148）<br />\r\n翼状胬肉切除联合角膜缘干细胞移植术重建眼表的临床价值分析黄强（149）<br />\r\nT型钢板内固定治疗桡骨远端不稳定骨折效果观察韩刚（149）<br />\r\n腹腔镜下疝修补术与开放式无张力疝修补术的临床价值分析胡承康（150）<br />\r\n小儿静脉留置针的临床应用和护理方法庄绪云高月玲刘敏（150）<br />\r\n醒脑静注射液治疗脑出血并发症的疗效代冬梅（151）<br />\r\n腹式深呼吸和人性化护理对减轻分娩疼痛的效果研究赵虹霞（152）<br />\r\n丹参注射液的临床新用途段丽萍（152）<br />\r\n临床路径教育在妇产科教学中的应用与效果分析高玲王高强（153）<br />\r\n腰痹通胶囊治疗腰椎间盘突出症的疗效观察古泉华（153）<br />\r\n肾炎Ⅱ号方配合西药治疗气虚血瘀型慢性肾小球肾炎疗效观察马成俊王秀霞（154）<br />\r\n手术室护士的绩效考核效果观察罗剑芳（154）<br />\r\n浅论宫颈环形电切术治疗宫颈疾病的临床疗效任金凤（155）<br />\r\n清利汤加味治疗慢性肾病蛋白尿29例的疗效观察唐合娟盛丰华刘玉光（155）<br />\r\n宫颈环形电切术治疗宫颈疾病的临床疗效张娟程云（156）<br />\r\n尿失禁患者的临床诊治研究牟丽霞蔡燕李文娟（156）<br />\r\n枯草杆菌二联活菌颗粒治疗小儿腹泻病的疗效观察李惠丽（157）<br />\r\n风湿免疫疾病中肺部并发症的预防及临床诊治观察丁振刚刘玉光徐兴国（157）<br />\r\n妊娠糖尿病临床血糖检验结果分析郑红霞（158）<br />\r\n妊娠糖尿病临床血糖检验结果分析李伟（158）<br />\r\n浅谈妇产科临床中急症子宫切除术的应用白英杰（159）<br />\r\n探讨综合干预疗法对择期经皮冠状动脉介入治疗患者术后康复的影响陈磊贡郡利纪磊（159）<br />\r\n脂肪肝临床中医中药治疗的探讨毕学凤（160）<br />\r\n唇部血管瘤平阳霉素治疗临床观察曹云周云彪唐彦峰（161）<br />\r\n经颅磁刺激治疗急性脑梗死疗效观察杨琦先梁程何乃婷（161）<br />\r\n结合案例谈体质理论在中医临床诊治中的重要性吴曙琳（162）<br />\r\n中医治疗痛风性关节炎的80例方法与临床分析赵逢春（162）<br />\r\n高频超声检测冠心病患者肱动脉血管内皮舒张功能的研究杨德荣程光荣张定萍（163）<br />\r\n静脉留置针在手术室的应用和护理的研究进展胡秀英（164）<br />\r\n腹腔镜下子宫肌瘤切除术对患者炎症水平影响的临床研究龚丽（164）<br />\r\n游离尺动脉腕上皮支为血供的一蒂双叶并联皮瓣一次性修复手部两个相邻手指创面的临床应用张国志肖泉（165）<br />\r\n舒适护理在气管插管术后的临床应用皇甫晓 （166）<br />\r\n门诊健康教育对高血压患者用药依从性及血压水平影响的临床研究周娌彬（166）<br />\r\n综合护理干预对二尖瓣置换术后患者心功能影响的临床研究尹红娟（167）<br />\r\n气道护理干预在气管切开呼吸机辅助呼吸患者中的应用价值研究王冰 （167）<br />\r\n床旁血气分析仪与生化仪测定动静脉血钾浓度差异的检测研究王秋红（168）<br />\r\n丙泊酚分别复合瑞芬太尼和地佐辛在门诊无痛胃镜中的应用汪向阳（168）<br />\r\n肠杆菌绿脓肝菌感染颌面炎症浅析彩莲（169）<br />\r\n炎琥宁辅助治疗婴幼儿轮状病毒肠炎的疗效观察朱建峰（169）<br />\r\n不同临床标本微生物检验的阳性率的分析比较沙琨（170）<br />\r\n老年胆结石手术治疗76例临床分析曲广涛鞠艳君（170）<br />\r\n赛肤润在直肠癌放射性皮炎中的应用与观察彭素姜邹舒倩詹丽君（171）<br />\r\n42例糖尿病酮症酸中毒临床治疗体会平丽贤（171）<br />\r\n小儿重症肺炎临床诊治疗效观察王敏（172）<br />\r\n急性心肌梗死患者早期康复护理干预的临床效果研究戴娜（172）<br />\r\n慢性硬膜下血肿的治疗黄涛（173）<br />\r\n血清PCT、sTREM-1及乳酸检测在重症肺炎临床诊断中的意义程兴梅（173）<br />\r\n疏肝解郁胶囊治疗缺血性卒中后抑郁64例的疗效观察赵立安武巧月（174）<br />\r\n浅析输血相关性移植物抗宿主病陈开蓉（174）<br />\r\n活血化瘀法在妇科临床治疗的几点思考何春华（175）<br />\r\n中医骨伤手法结合独活寄生汤加减治疗腰间盘突出症60例疗效观察李应（176）<br />\r\n安肺部CT检查低剂量与常规剂量的对照研究曹伟光（176）<br />\r\n肝功能血浆蛋白改变时血浆纤维结合蛋白及抗凝血酶血的水平变化及意义孟圣勇（177）<br />\r\n骨科病人神经精神异常分析李坤王玉贞（177）<br />\r\n左氧氟沙星治疗老年下呼吸道感染60例的临床体会王珊珊（178）<br />\r\n完全脱位牙再植临床体会程希兰（178）<br />\r\n钬激光治疗的泌尿系结石临床治疗护理体会闭美（179）<br />\r\n人性化带教模式在疼痛科护理带教中的效果观察赵黔英（179）<br />\r\n临床运用硝酸甘油的护理注意事项仇小娟赵娥丽（180）<br />\r\n癫痫病临床诊断及治疗分析宦宇（180）<br />\r\n药物治疗病毒性肝炎患者的临床分析韩立芳（181）<br />\r\n治疗系统性红斑狼疮脑病的临床分析丰代微（181）<br />\r\n探讨小儿支气管哮喘的治疗体会邹芙蓉（182）<br />\r\n治疗牙髓病患者的临床分析朱海燕信维（183）<br />\r\n治疗霍乱患者的临床分析赵晓芳（183）<br />\r\n牙髓炎的诊断及治疗吴春梅信维（184）<br />\r\n治疗口腔扁平苔藓患者的临床分析信维吴春梅（184）<br />\r\n腰硬联合麻醉与硬膜外麻醉在剖宫产手术中的效果观察宫献梅（185）<br />\r\n治疗根尖周病患者的临床分析张占利张喜清（186）<br />\r\n产科急症子宫切除的临床分析孟妮妮（186）<br />\r\n急性出血坏死性肠炎内科治疗张颖肖丽丽赵春娜（187）<br />\r\n动脉硬化性脑梗死治疗分析张亚娟（187）<br />\r\n耳鼻喉急性感染及术后疼痛的临床治疗探究李谨（188）<br />\r\n吻合器痔上黏膜环切术在重度痔疮手术中的临床应用李洪波（188）<br />\r\n宫瘤清片配合金刚藤胶囊治疗药物流产后卵巢囊肿临床观察汪枫红（189）<br />\r\n90例慢性呼吸衰竭患者中医临床诊断及治疗研究朱葛兰（189）<br />\r\n针灸在神经康复治疗中的临床运用周崇政（190）<br />\r\n血常规检查与临床意义邸智勇单桂荣赵淑媛（191）<br />\r\n早期药物治疗慢性呼吸衰竭合并肺性脑病临床疗效观察范向军（191）<br />\r\n普萘洛尔治疗精神疾病的临床效果观察额尔德尼达来（192）<br />\r\n现代生物技术药物制剂&mdash;基础与临床应用研究樊子东翟哲（193）<br />\r\n益气强心饮治疗充血性心力衰竭杜凤霞齐爱荣（193）<br />\r\n针刺配合中频电脑治疗腰椎间盘突出症120例临床观察高哲（194）<br />\r\n自拟扶正消癥汤对肝癌患者血管内皮生长因子水平的影响高心宇尹莲花（194）<br />\r\n临床免疫检验质量控制相关措施探析胡惠静（195）<br />\r\n无痛人工流产术前使用米索前列醇阴道用药的临床观察包庆（196）<br />\r\n急性脑血管疾病并发多器官功能衰竭综合征的临床分析韩丽（196）<br />\r\n蒙医药治疗糖尿病的临床观察何铁明金春梅田秀英（197）<br />\r\n儿科哮喘治疗中应用孟鲁司特钠的临床研究高云蕾（197）<br />\r\n临床护理路径在病毒性肝炎肝硬化并消化道出血患者中的应用高天霞杨晓艳姜红（197）<br />\r\n帕罗西汀与阿米替林治疗抑郁症的临床效果分析高慧敏王彬李宝花（198）<br />\r\n连续硬膜外麻醉在无痛分娩中的应用效果观察盖学辉吕洋（199）<br />\r\n行为干预对脑梗塞患者的预防治疗康复及预后的影响郝慧萍（199）<br />\r\n实施心理干预对癌症病人生活质量的影响观察郭晓蕊（200）<br />\r\n改良布绷带固定治疗髌骨骨折62例疗效观察贺浚洮（200）<br />\r\n美蓝试验在复杂性肝囊性包虫术后残腔并发胆漏中的应用石印青樊海宁 （201）<br />\r\n吴茱萸散涌泉穴贴敷治疗上呼吸道感染疗效观察 宋丽萍赵国玲刘晓云（201）<br />\r\n慢性肺源性心脏病急性加重期临床治疗分析曲艳宏吕斌（202）<br />\r\n腕带在临床中的应用和体会李娜（202）<br />\r\n火针治疗双膝骨性关节炎的临床疗效观察瞿广举（202）<br />\r\n小儿肺炎支原体感染肺外症状的分析张文轶（203）<br />\r\nU波倒置在冠心病诊断及预后判断中的临床作用探讨赵丽君（204）<br />\r\n化瘀利湿中药外治法治疗慢性盆腔炎的临床研究张海艳（204）<br />\r\n落枕穴、外关穴、后溪穴联合针刺治疗落枕的临床疗效观察张美淑（205）<br />\r\n中医综合治疗重症哮喘临床观察岳会杰（205）<br />\r\n认知治疗对住院精神分裂症患者治疗依从性的影响曾玲黄俐李磊（206）<br />\r\n三种剖宫产术式治疗腹腔粘连临床比较王英杰（206）<br />\r\n高锰酸钾溶液泡浴加吹氧治疗新生儿湿疹的临床应用吴勇芳 滕高菁（207）<br />\r\n硝酸咪康唑栓联合氟康唑治疗霉菌性阴道炎60例临床观察武欧魏云侠武海（207）<br />\r\n薄荷油湿热敷对妇科术后预防腹胀及促进排气的效果观察肖娟 陆建华（208）<br />\r\n原发性慢性闭角性青光眼采用复合式小梁切除术治疗分析王丽丽（208）<br />\r\n合理营养浅议蔡国华 徐吟秋（209）<br />\r\n临床常见病的刺血疗法应用曹冬梅（210）<br />\r\n输液弹力固定套在留置针保护的临床应用王婷婷 邓春林 刘会 周莹莹（210）<br />\r\n经外周置入中心静脉导管置入长度的两种体外测量方法比较研究郑红军（211）<br />\r\n绞窄性肠梗阻46例临床分析张新志（211）<br />\r\n〖HT3XK〗｜护理园地｜〖HT〗<br />\r\n鼻内镜术后鼻腔冲洗的护理进展 覃瑞珍（212）<br />\r\n脊柱转移性肿瘤患者手术康复护理干预曲晶（213）<br />\r\n重症药疹病人的护理体会邱志芬（213）<br />\r\n169例新生儿黄疸干预治疗护理体会苏占菊严兴敬 （214）<br />\r\n眼科常见季节性眼病的护理齐海峰（214）<br />\r\n早产孕妇的心理存在问题和护理措施马艳华（215）<br />\r\n舒适护理在食道癌手术患者中的应用蒙庆华夏梅王华（215）<br />\r\nVSD治疗骨科创伤及感染创面的护理体会吕红艳郑育红吴少鹏（216）<br />\r\n早期护理干预对老年股骨骨折患者便秘的影响 刘红菊刘召琼（216）<br />\r\n预防下肢骨折深静脉血栓形成的护理对策顾文彩（217）<br />\r\n基层医院急性冠脉综合征的治疗及护理胡萌培（218）<br />\r\n护理管理实施风险管理的应用刘霞（218）<br />\r\n护士长素质与护理管理技巧罗丽（219）<br />\r\nTACE术后患者的护理体会 罗洁 （219）<br />\r\n全程跟踪护理在自发性气胸护理过程中的应用吕玉芬黄伟施亚斌（220）<br />\r\n31例带膜支架在主动脉夹层病人中的应用及护理刘凤 （220）<br />\r\n如何静脉炎的预防性护理刘妙兄刘心茹 （221）<br />\r\n风险管理在NICU住院患儿皮肤护理中的应用刘翠 （221）<br />\r\n持续气道正压通气治疗阻塞性睡眠呼吸暂停综合征合并高血压的护理体会孙丹丹（222）<br />\r\n妇产科手术病人腹部切口的护理体会李鸿雁（222）<br />\r\n37例血浆置换人工肝治疗的护理体会李变丽邵稳珠杜文霞（223）<br />\r\n60例宫缩乏力性产后出血患者的护理干预 李福容（224）<br />\r\n前馈控制在危重病人护理风险管理中的运用李白霞李瑶冯丽（224）<br />\r\n一例静脉滴注氨基酸注射液引起超高热的急救护理李宏坡魏雪雪（225）<br />\r\n手术室护士要遵从护理伦理道德冷婷峰（225）<br />\r\n全程优质护理干预在骨科病房的应用刘燕南周利容姚珺侯珊（226）<br />\r\n普外科患者术后疼痛的护理干预 翟永荣（226）<br />\r\n护理程序在儿科护理中的应用张德玲（227）<br />\r\n实习生在临床护理中存在的问题与对策 吕桂华（227）<br />\r\n乳腺癌术后化疗患者的支持性护理季实红（227）<br />\r\n门诊注射病人心理状态及护理对策赵利萍（228）<br />\r\n简述优质护理服务在临床护理工作中的运用效果及评价 赵丽（229）<br />\r\n产后抑郁症发生相关因素与临床护理干预万玲（229）<br />\r\n老年股骨颈骨折髋关节置换术的护理郑华平（230）<br />\r\n支气管哮喘的临床护理体会周柒媛（230）<br />\r\n浅谈激光汽化减压术治疗腰椎间盘突出症的一例护理周丽梅（231）<br />\r\n血液透析中的护理安全隐患分析唐丽花（231）<br />\r\n疝环充填式无张力疝修补术的护理赵少辉 殷德丽（232）<br />\r\n呼吸内科重症患者的整体护理王丽霞（232）<br />\r\n突发性耳聋患者的护理汪荣华（233）<br />\r\n一例肾活检术后并迟发性肾周血肿的护理吴丽霞（233）<br />\r\n开放性骨折合并感染创面行VSD负压封闭引流患者的护理薛新敏（233）<br />\r\n护理工作中存在的风险因素分析与防范对策余薇（234）<br />\r\n护理管理者应具备的素质和能力高凤娥（235）<br />\r\n老年患者留置胃管方法及护理顾洁芳（235）<br />\r\n妊娠合并乙肝孕妇的护理探析黄海红黄红艳袁艳玲（236）<br />\r\n褥疮洗方治疗三度褥疮的护理效果观察兰玮玮姜晓东（236）<br />\r\n浅谈糖尿病护理体会刘文清（237）<br />\r\n肿瘤化疗患者应用浅静脉留置针的护理干预宋书会（237）<br />\r\n优质护理服务模式对病房红灯率的影响分析杨帆（238）<br />\r\n弥漫性肺泡出血的护理干预李好华李宁静（238）<br />\r\n优质护理服务对眼科住院病人满意度的影响陈景霞张会会（239）<br />\r\n整体护理中对老年病人健康教育评价的认知问题与解决方法孔丽梅（239）<br />\r\n浅析护理工作中不良事件发生的原因及对策曲艳玲（240）<br />\r\n浅谈急性胰腺炎患者护理体会孙中敏（241）<br />\r\n浅谈神经内科重症患者的呼吸机护理应用孙茜 王洵（241）<br />\r\n恶性肿瘤手术在手术室中无瘤操作技术的护理分析李艳荣（242）<br />\r\n循证护理在胃肠外科手术围术期的应用效果分析李艳红（242）<br />\r\n浅析护理干预对外科术后疼痛程度的影响谭红（243）<br />\r\n甲状腺腺瘤患者围手术期护理沈忠萍（244）<br />\r\n骨盆骨折的护理体会沈健（244）<br />\r\n浅谈电话回访对PCI术后出院患者家庭护理质量的作用谭新平陈爱辉（245）<br />\r\n谈急性心肌梗死病症及护理措施田文凤（245）<br />\r\n探讨颈椎骨折脱位的前路内固定术围手术期护理体会王雏风（246）<br />\r\n优质护理对直肠癌患者围手术期护理效果的影响王晶（247）<br />\r\n人性化护理服务用于糖尿病患者临床护理的疗效分析王锦环李永英 （247）<br />\r\n关于神经内科护理器具的研究王焕春王洵（248）<br />\r\n浅谈儿童流行性腮腺炎的预防及护理王立霞（248）<br />\r\n煤工尘肺患者的家庭护理干预王绍芝（249）<br />\r\n综合护理措施对降低儿童支气管哮喘复发率的意义王蕊李晓燕周喜华（249）<br />\r\n一例眼部热烧伤的护理王莹（250）<br />\r\n肿瘤切除术后并发症的护理王晓霞（250）<br />\r\n美宝治疗软组织擦挫伤及压疮的护理体会武林（251）<br />\r\n血液科患者化疗性静脉炎循证护理研究徐小丹 王聪蕊（252）<br />\r\n舒适护理在手术室全程护理中的应用观察薛玉文李艳荣 房丽艳 金萍 孙亚萍（252）<br />\r\n当前优质护理服务存在的问题分析及应对策略杨小应（253）<br />\r\n急性心肌梗死的院前急诊护理探讨翟园园（253）<br />\r\n乳腺癌患者术后化疗期中的护理风险管理应用观察张扬 （254）<br />\r\n脑卒中昏迷的急诊护理研究张亚平（254）<br />\r\n应用免疫抑制剂治疗自身免疫性肝炎的临床护理刘屹东朱耀凤 宫向欣（255）<br />\r\n细节管理在妇产科临床护理中的实施效果研究马锐（255）<br />\r\n浅谈手足口病患儿的临床护理及健康教育令狐静波（256）<br />\r\n健康教育在骨科临床护理中的应用刘桂琴东旭（257）<br />\r\n浅谈心肌梗塞病人的护理及康复指导刘莉华（257）<br />\r\n浅谈小儿难治疗性肺炎支原体肺炎在临床治疗中的护理干预刘华（258）<br />\r\n冠心病心绞痛患者心理护理疗效观察刘瑞（259）<br />\r\n妇产科手术患者腹部切口的护理体会刘同芝（259）<br />\r\n浅谈心理护理干预对骨科患者的治疗罗丽妹（260）<br />\r\n腹腔镜下胆囊切除术患者的围手术期的护理体会孟凡红（260）<br />\r\n特重烧伤患者的早期护理周安福（261）<br />\r\n浅析神经内科护理的要点马慧王洵（262）<br />\r\n老年人癌症患者住院心理护理马惠利 （262）<br />\r\n骨质疏松症患者疼痛护理分析毛海英（263）<br />\r\nEICU护生临床实习带教方法的探讨马国蓉（263）<br />\r\n神经内科护理学技能改革与探索戚福梅（264）<br />\r\n浅谈肿瘤内科护理人员如何用爱心呵护患者颜景莲（264）<br />\r\n80例小儿急性肺炎的整体护理体会赵丽（265）<br />\r\n鞘内药物输注系统治疗晚期癌痛病人的护理朱捷孙艳萍 李宁（265）<br />\r\n浅谈高原性心脏病护理董得荣（266）<br />\r\n浅谈重症医学科护理安全隐患及防范措施郭 敏（266）<br />\r\n内镜诊疗患者的安全因素及护理干预黄素君（267）<br />\r\n柔性管理理念在感染科护理管理中的运用侯志琴（267）<br />\r\n刍议急性上消化道出血患者的护理干预措施方程云（268）<br />\r\n白血病化疗的护理石利娜贺春英（269）<br />\r\nPDCA循环在压疮护理风险管理中的应用王美（269）<br />\r\n浅谈产科护理全程模式的临床应用研究吴丽娜（270）<br />\r\n断指再植术中护理与体会赵淳（270）<br />\r\n护理部联合糖尿病专科对临床护士规范化培训的管理体会张伊辉李黎李玲（271）<br />\r\n产后出血215例原因分析及护理体会黄春丽（271）<br />\r\n新式胸腔闭式引流管的护理郑美枝（272）<br />\r\n优质护理模式在手术室老年手术病人护理中的效果研究周芳兰（272）<br />\r\nII型呼吸衰竭的护理 董懂（273）<br />\r\n老年重症哮喘患者舒适护理体会朱小雯（273）<br />\r\n产后尿潴留的治疗和护理崔芹刘晓刘玉梅 （274）<br />\r\n经导管射频消融肾脏去交感神经法治疗顽固性高血压的术后护理付翠翠牛喜娟 张真真（274）<br />\r\n高血压脑出血采用中医护理方案对预后影响分析蒋祖桂（275）<br />\r\n心脏病术后低钠血症的原因分析与护理对策江丽丽（275）<br />\r\n重症颅脑损伤恢复期的护理体会梁世英（276）<br />\r\n重型闭合性颅脑损伤急性期的观察和护理体会梁世英（276）<br />\r\n骨科下肢深静脉血栓形成的护理对策 刘燕 （277）<br />\r\nEVLT治疗下肢浅静脉曲张的中医护理沈飞燕周敏 （277）<br />\r\n慢性肾炎病人的中医护理王春青（278）<br />\r\n重型颅脑损伤患者早期应用肠内营养支持的护理观察王丽（278）<br />\r\n重度骨质疏松症患者预防跌倒及再骨折的护理干预董晓娟（279）<br />\r\n脑梗塞致肢体功能障碍患者的早期康复护理体会辛兵（279）<br />\r\n浅谈结核病人的心理护理分析向晓艳 万红玉 卢永菊 张淼（280）<br />\r\n自体角膜缘干细胞移植治疗翼状胬肉的观察与护理肖宏波（281）<br />\r\n肿瘤科护士的心理压力及对策魏兰英（281）<br />\r\n浅谈神经内科中的舒适护理工作王洵（282）<br />\r\n中药熏蒸治疗颈椎病的护理体会张赤（282）<br />\r\n临床护理中人性化护患沟通的应用效果评价张存梅（283）<br />\r\n经脐单孔腹腔镜去顶减压术治疗小儿肾囊肿围术期护理曾燕李琼 （283）<br />\r\n精神病患者的接触技巧与心理护理 张波（284）<br />\r\n肝切除术后并发症的观察与处理于许善 侯强 林玲（284）<br />\r\n护理带教的体会点滴于丽香（285）<br />\r\n浅谈糖尿病足的康复护理张红（285）<br />\r\n在儿科护理中沟通技巧的应用 朱建华（285）<br />\r\n大面积烧伤病人切削痂植皮术的手术护理体会郑耀梅 王小艳（286）<br />\r\n护理干预对产妇自然分娩及产后出血的影响钟琼香（287）<br />\r\n分析分层管理在神经内科护理中的意义赵雪霜 王洵（287）<br />\r\nPDCA循环在护理质量管理中的应用及体会赵国花（288）<br />\r\n牵引配合中药熏蒸治疗椎间盘突出的观察与护理赵柯 王春梅 张静（288）<br />\r\n急性胃穿孔术后及并发症的观察与护理赵卫珍（289）<br />\r\n优质护理服务在急诊患者护理中的应用效果李曰梅（290）<br />\r\n重症监护室患者的心理护理干预策略分析李丽君（290）<br />\r\n物流系统应用和护理人力资源的合理配置张巧林（291）<br />\r\n实施人文关怀，提升护理服务质量&mdash;优质护理的理论学习与推行实践总结张霞（291）<br />\r\n急性上消化道出血患者的护理体会邹春婵（292）<br />\r\n支气管哮喘病人的护理及健康指导索仲（293）<br />\r\n急诊患者的心理护理张丽珠（293）<br />\r\n认知心理护理对精神分裂症伴强迫症状患者的疗效影响马智文 刘浩志（294）<br />\r\n小儿惊厥的护理要素吕晓静 孙伟 李雪 蔡静林 姜红 马海娇（295）<br />\r\n优质护理对妇产科手术后患者腹部切口的影响吕军（295）<br />\r\n尿道炎疾病患者的日常护理马菊（295）<br />\r\n1例引产、先天性心脏病手术患者的护理配合廖庆珍（296）<br />\r\n提高我国内科老年病心血管护理水平策略谈戚晓蓉（297）<br />\r\n颅脑外伤术后应激性溃疡出血44例的护理研究彭维（297）<br />\r\n初产妇临产时的心理状态及护理措施彭吝招（298）<br />\r\n角膜炎的发生护理预防与体会潘亚晓 李海霞 张丽敏（298）<br />\r\n探讨眼科护理中常见的缺陷及防范措施石永超（299）<br />\r\n特殊部位烧伤的早期处置及护理研究石盼利（299）<br />\r\n护理风险管理在血液科患者中的应用观察王聪蕊 徐小丹 （300）<br />\r\n儿童和青少年糖尿病患者的健康教育和护理李法玲（300）<br />\r\n外周导入中心静脉置管的护理进展李润珍（301）<br />\r\n持续质量改进在预防神经外科术后感染护理中的应用观察李果果（301）<br />\r\n急诊科浅静脉留置针的应用及护理体会刘静 姜琪（302）<br />\r\n妇科疾病护理中的隐私问题探讨刘念 李英霞（302）<br />\r\n封闭式负压引流治疗骨外科疾病合并高血压患者的临床护理刘美荣（303）<br />\r\n浅谈护生评判性思维的养成和运用郑方芳（303）<br />\r\n关于外科护理风险管理模式实践研究郑晓岚（304）<br />\r\n肠道感染相关热性惊厥小儿护理体会刘仪岩（304）<br />\r\n预防性护理对老年呼吸内科医院感染的控制效果分析周艳林（305）<br />\r\n心理护理干预对冠心病患者负性情绪的影响周艳林（305）<br />\r\n肝硬化患者凝血酶原时间和血小板检验价值分析周菊月（306）<br />\r\n浅谈高原小儿肺水肿的护理张秀英（306）<br />\r\n骨折病人舒适护理的研究与体会张春萍李静张璐靓（307）<br />\r\n谈持续质量改进在ICU监测中的应用效果杨英（307）<br />\r\n深静脉留置长期双腔透析导管在血液透析中的护理体会袁萍（308）<br />\r\n浅谈面头部灼伤处理杨秀丽（309）<br />\r\n无张力疝修补术的护理体会俞巧艳（309）<br />\r\n早期护理干预预防PICC致静脉炎的效果探讨袁小清（310）<br />\r\n人工种植牙的护理体会吴梅兰周晓云苏德禹赖美爱（310）<br />\r\n浅谈护理人员的自身职业防护徐春梅李银娟（311）<br />\r\n临床护理路径在迁延性胃炎患者治疗中的临床应用分析胥佳芳李莉（311）<br />\r\n肺性脑病毒的护理王丽霞（311）<br />\r\n探讨通过对妇科盆腔手术患者实施预防性护理措施孙玉芳丁海虹（312）<br />\r\n肝胆外科患者围手术期的心理护理分析王丽花高菲（312）<br />\r\n妇产科护理吴海玲（313）<br />\r\n尺神经损伤在骨科的护理和救治唐霞（313）<br />\r\n扁桃体切除术围手术期护理体会童秀（314）<br />\r\n优质护理服务模式在手术室护理中的应用价值分析王国珍（314）<br />\r\n浅谈外伤性昏迷患者的急诊护理宋艳玲（315）<br />\r\n临床护理路径在脑出血护理中的应用及体会史小兰（315）<br />\r\n浅述小儿支气管肺炎的治疗与护理孙广斌（316）<br />\r\n影响上消化道出血的气候因素与护理吕萍（317）<br />\r\n浅析骨科护理安全隐患及防范对策马力（317）<br />\r\n简谈产房优质护理服务马丽娜（318）<br />\r\n急诊护理中人性化护理对策研究彭婷（318）<br />\r\n手术室护理风险因素的调查分析刘永超（319）<br />\r\n急诊护理在急性心肌梗死患者中的应用分析周静（319）<br />\r\n65例上消化道出血患者的临床急救与护理张荣荣倪微高爽（320）<br />\r\n浅谈乳腺癌患者的护理康苗侠（321）<br />\r\n优质护理在神经内科护理中的应用李静张春萍肖迎春（321）<br />\r\n谈重症胰腺炎的综合治疗与护理于淑琼孙翠华于许善（322）<br />\r\n缺铁性贫血的护理李银娟徐春梅（322）<br />\r\n早产胎膜早破的预防、治疗及护理李淑萍（323）<br />\r\n脑血管支架置入术围手术期的护理体会王淼（323）<br />\r\n睾丸扭转手术期的护理体会杨小丽（324）<br />\r\n浅析护理专业人体解剖学的教学改革叶威周奕（324）<br />\r\n人性化护理在心内科实施体会陈丽萍（325）<br />\r\n腋静脉留置针在新生儿输液中的应用及护理赵俊琢（325）<br />\r\n糖尿病患者中医结合护理效果观察朱慧敏（326）<br />\r\n护理干预在预防胃肠道术后粘连性肠梗阻中的应用胡玉华（326）<br />\r\n神经外科护理危机的预防措施刘霞（327）<br />\r\n护理本科学生就业途径的研究与实践肖琼王楠楠吴润滨唐美玲（327）<br />\r\n严重创伤失血性休克患者的急诊护理及并发症防治张亚平（328）<br />\r\n良好的护患关系在整体护理中的作用谢爱萍（329）<br />\r\n分析老年颅内动脉瘤患者围术期的观察与护理颜香香（329）<br />\r\n老年糖尿病患者低血糖原因分析及护理对策王连梅（330）<br />\r\n让优质护理在一丝不苟的细节中升华魏佩娟（330）<br />\r\n情志护理在脑外伤患者心理和情感障碍康复中的应用分析吴婵（331）<br />\r\n腹腔镜阑尾切除术护理体会孙静（331）<br />\r\n培美曲塞联合顺铂治疗非小细胞肺癌的护理彭玉丽刘晓玲（332）<br />\r\n浅谈护理风险管理的研究进展钱玉玲（333）<br />\r\n老年高血压病人临床治疗的观察和护理史桃霞（333）<br />\r\n探讨预见性护理在活体肝移植手术护理配合中的应用史永红（334）<br />\r\nPICC致机械性静脉炎的预防及护理对策刘峰岚张芹张秀珍（334）<br />\r\n颅脑损伤手术中的观察与护理林胡兰（335）<br />\r\n护理干预对眩晕患者应用观察林忠（335）<br />\r\n浅谈延续护理在糖尿病治疗中的体会刘莉君蔡学凤（336）<br />\r\n紫杉醇治疗非小细胞肺癌的护理刘娟刘晓玲张艳飞彭玉丽（336）<br />\r\n消化性溃疡病人的观察及护理研究黎小玲（337）<br />\r\n探讨心理护理对治疗女性不孕不育的作用刘怡（337）<br />\r\n中医护理技术在儿科阿奇霉素胃肠道反应中的运用刘钰高乾（338）<br />\r\n浅谈护理风险与安全防范罗海英（339）<br />\r\n急性胰腺炎的心理护理冷菊（339）<br />\r\n一次性灌肠包在宫颈癌围放疗期阴道冲洗中的应用及护理体会李玉韩巧玲许克璞（340）<br />\r\n60例恢复期老年精神病患者护理体会黄菊珍（340）<br />\r\n人性化护理服务在产科术后镇痛中的临床观察黄元梅（341）<br />\r\n开展优质护理服务 有助于提高服务质量和社会满意度黄六妹（341）<br />\r\n护理干预对老年功能性消化不良患者疗效观察孔清（342）<br />\r\n血液透析导管感染的原因分析及其护理预防对策崔春莲（342）<br />\r\n老年痴呆患者临床护理干预方法研究樊金莎（343）<br />\r\n急性氨中毒的护理韩冰肖东（343）<br />\r\n细节管理在神经内科护理管理中应用的效果评龚放华（344）<br />\r\n临床路径在泌尿外科优质护理中的应用成文娟（344）<br />\r\n慢性盆腔炎的中医护理体会韩世玲强娟（345）<br />\r\n30例腹腔镜手术治疗宫外孕患者的护理方法曹超凤（345）<br />\r\n护理干预措施对重症肝炎的意义吉丽娟（346）<br />\r\n老年住院患者跌倒的危险因素与护理对策陈舒蓉（346）<br />\r\n浅析重性精神病患者的社区护理干预陈玉星（347）<br />\r\n护理干预对妇科肿瘤化疗患者生活质量的影响<br />\r\n池燕平张莹娟陈桂莲陈榕华（347）<br />\r\n老年性痴呆患者的健康教育及安全护理体会顾卫（348）<br />\r\n浅谈62例泌尿外科引流管护理分析韩建勤（349）<br />\r\n循证护理在降低股静脉置管并发症中的应用分析侯彩云（349）<br />\r\n层流重症监护室的管理黄凤（350）<br />\r\n10例急性鼻窦炎并发眶内感染的护理胡丽茎吴洁丽容钻芬（350）<br />\r\n浅谈提高我国内科老年病心血管护理水平的策略杜晓东（351）<br />\r\n骨科护理中的五常法应用高延芳路梅梅（351）<br />\r\n健康教育在脑梗塞患者护理中的临床应用高俏丽（352）<br />\r\n产后出血的原因分析及临床护理张平（352）<br />\r\n浅谈胆囊炎的护理马松岩（353）<br />\r\n卵巢肿瘤腹腔镜下剥除术的手术室护理分析乌恩吉力根（354）<br />\r\n心内科住院老年患者意外跌倒的具体原因和有效护理方法孙广霞郝军平陈维彩（354）<br />\r\n全髋关节置换术病人护理体会杨和英（355）<br />\r\n浅议眼科护理中的心理护理游飞（355）<br />\r\n骨折内固定术的术中配合及术后护理刘秀宗李学芹（356）<br />\r\n普外科伴糖尿病高龄患者围手术期的护理体会刘相荣卢佳伟（356）<br />\r\n加强口腔科门诊护理管理的体会刘敏庄绪云高月玲（357）<br />\r\n综合护理干预对乳腺癌患者康复的影响及体会陈维彩孙广霞郝军平（357）<br />\r\n护理干预对小儿腹型过敏性紫癜的护理效果分析陈素洁（358）<br />\r\n护理干预在尿毒症血液透析患者中的应用观察崔永芹厉飞飞迟庆艳（358）<br />\r\n中医护理临床路径在神经根型颈椎病患者中的应用观察迟庆艳崔永芹厉飞飞（359）<br />\r\n急性老年胸痛患者的护理措施分析高月玲刘敏庄绪云（359）<br />\r\n探讨综合护理在消化性溃疡中的应用效果郝军平陈维彩孙广霞（360）<br />\r\n健康教育护理干预对盆腔炎住院患者的护理效果分析韩桃（360）<br />\r\n健康教育在妇科优质护理示范病房中的作用分析姜华平（361）<br />\r\n浅析小儿麻醉手术窒息的抢救及护理曹旖旎（361）<br />\r\n烧伤病人的五官护理迟文芳（362）<br />\r\n短波电局泥治疗慢性盆腔炎的护理王峪张恩达（362）<br />\r\n急性脊髓炎的护理 康雪琴（363）<br />\r\n复杂型脊髓型颈椎病围手术期的护理体会雷蕾 常峥（363）<br />\r\n心脏骤停患者心肺复苏后的观察及护理姜崇丽（364）<br />\r\nPPH---痔疮围手术期护理黄品芳 （364）<br />\r\n精神科中的护理管理赵卫香仪修芹郑炜（365）<br />\r\n结肠水疗治疗慢性便秘52例的护理赵贵萍李显芝（365）<br />\r\n实施心理护理及健康教育对抑郁症病人的影响王焕芹仪修芹（366）<br />\r\n临床护理风险事件分析与对策韩梅（366）<br />\r\n人性化护理在初产妇分娩中的应用贺玲（367）<br />\r\nQQ群平台在临床护理实习带教中的应用及效果评价郭华熊小兰杨思（367）<br />\r\n护理干预对老年患者使用静脉留置针的影响分析　陈章（368）<br />\r\n舒适护理对食管癌术后的影响彭中敏（368）<br />\r\n昏迷唤醒护理在肝性脑病患者中的疗效观察虞萍周美芳（369）<br />\r\n探讨护理干预在手术室护理工作中的应用詹世春（369）<br />\r\n妇产科围手术期患者术前心理护理效果分析邵长凤潘存玲（370）<br />\r\n急性阑尾炎的临床特点及护理潘存玲邵长凤（370）<br />\r\n手术室护理中人性化护理的运用及效果探析郭慧（371）<br />\r\n阐述160例腹腔镜妇科手术的围手术护理经验晁亮 （371）<br />\r\n浅谈全麻患者苏醒期的护理王玉蓉（372）<br />\r\n老年病日常护理的方法改进探究伍国芝（372）<br />\r\n镇痛泵的临床应用与护理于阳 赵顺 （373）<br />\r\n岗位绩效考核在护理管理中的积极作用赵小莉田敏（373）<br />\r\n浅析血透患者颈内静脉长期留置双腔导管的应用及护理 赵红艳（374）<br />\r\n住院精神病人拒食的原因分析及护理郭健良（374）<br />\r\n无痛导尿在手术室护理中的应用研究鞠艳君曲广涛（375）<br />\r\n维持性血液透析患者的心理状态分析及心理干预马斌斌（375）<br />\r\n护理学专业本科课程设置的现状崔淼（376）<br />\r\n36例肛肠疾病患者的心理护理莫小飞（377）<br />\r\n妇产科围手术期感染的预防及护理分析杨璎琳（377）<br />\r\n中心静脉导管用作胸腔闭式引流的护理蔡伟（378）<br />\r\n脑卒中患者的早期康复护理探讨蔡丹（378）<br />\r\n同种异体肾移植围手术期的心理护理陈玲（379）<br />\r\n上消化道出血病人的心理分析及护理对策刘怡春（379）<br />\r\n30例护理不良事件的原因分析和防范措施刘琴阎友芬（1）<br />\r\n肝硬化门脉高压所致上消化道出血的预见性护理研究廖莉（380）<br />\r\n老年性肱骨外科颈粉碎性骨折病人的围术期护理体会梁秀琴荀雷 王宝丽（381）<br />\r\n恶性肿瘤患者的心理常见问题护理分析宁艳艳（381）<br />\r\n川崎病的护理沈雪清（382）<br />\r\n社区老年高血压患者实施护理干预的效果分析及体会沈丽红（382）<br />\r\n压疮的预防、治疗及护理王芳（383）<br />\r\n生活方式干预帮助冠心病患者建立健康生活方式的护理研究王红梅（383）<br />\r\n临床护理路径在综合救治有机磷农药中毒中的应用熊艳丽（384）<br />\r\n荨麻疹患者的临床治疗及护理心得体会谢文君张蕊（384）<br />\r\n急诊患者护理中应用人性化护理的效果观察夏英（385）<br />\r\n老年高血压患者的社区护理何翠玲裴云云盛彩虹（385）<br />\r\n围手术期对患者实施全期护理的效果研究房丽艳（386）<br />\r\n探讨内镜下食管静脉曲张套扎治疗的护理配合方法韦姿宇（386）<br />\r\n综合护理干预对气管插管患者非计划性拔管的效果观察尚郭丽（387）<br />\r\n探讨和分析康复护理在神经内科中对脑卒中的效果杨颖王陈梅汪霖（387）<br />\r\n浅析母乳喂养的护理姜小翠（388）<br />\r\n一例重度子痫前期的护理纪敏（388）<br />\r\n1例胎膜早破合并早产的个案护理何燕（389）<br />\r\n家庭病床护理心得张英（389）<br />\r\n百多邦在腹膜透析导管出口处的应用和护理杨宁（390）<br />\r\n内科老年病人的心理特点与心理护理措施研究史建华（390）<br />\r\n对于慢阻肺患者的临床护理研究陈明贞（391）<br />\r\n产科护理风险和防范王晓玲（391）<br />\r\n呼吸衰竭病人应用机械通气的心理护理程丽娜（392）<br />\r\n人性化护理对心外科患者的护理效果研究肖娴（392）<br />\r\n浅谈糖尿病患者的家庭护理王艳秀（393）<br />\r\n咯血患者的临床护理高文华（393）<br />\r\n扩张型心肌病患者的临床护理体会杨光（394）<br />\r\n肺炎球菌肺炎患者的临床护理邢智洋于丽慧（394）<br />\r\n供应室护理人员职业防护的调查与分析崔岩红董青郭艳丽（395）<br />\r\n社区恶性肿瘤患者的护理朱兰芬（396）<br />\r\n压疮的防治及护理毕双麦（396）<br />\r\n糖尿病患者药物治疗的中医护理体会戴银芳（397）<br />\r\n失血性休克的围麻醉期处理龚凤惠朱晓东（397）<br />\r\n50例急性心肌梗塞病人的护理李苏美（398）<br />\r\n预防手术室护理差错不良事件的探讨李善英（398）<br />\r\n急性心肌梗死人性化护理的效果观察胡静（399）<br />\r\n主动护理干预对2型糖尿病患者依从性的影响邓华娟（400）<br />\r\n重症监护室气管切开患者肺部感染的护理策略李丽君（400）<br />\r\n肺结核患者实施人性化护理的分析李小燕（401）<br />\r\n沟通方法在手术室护理中应用的效果评价分析厉建蕖厉建峰常明（401）<br />\r\n探究全科护理在社区护理中的应用与推广厉建峰厉建蕖常明（402）<br />\r\n解析手术室对患者实施手术全期护理的方法与体会刘光云郑梅杨青（402）<br />\r\n试析骨科外伤患者急诊手术前心理反应及护理措施马燕（403）<br />\r\n护理记录中的问题及解决方法马春艳（404）<br />\r\n66例妇产科患者术后疼痛护理探讨王兰萍（404）<br />\r\nPICC在肿瘤护理应用中的效果分析张彩滨（405）<br />\r\n术前访视在手术室护理中的应用效果的几点思考杨青刘光云郑梅（405）<br />\r\n产褥期护理与健康指导张淑萍（406）<br />\r\n门诊输液患者药物不良反应的原因分析及其护理对策张庆霞（406）<br />\r\n新生儿呕吐原因分析和合理护理张洪梅（407）<br />\r\n小儿手背静脉输液的护理体会邓发娇（407）<br />\r\n护理人员工作满意度调查分析朱茜朱存华（408）<br />\r\n舒适护理在肛门直肠疾病手术中的应用效果观察董青崔岩红陈蕊（409）<br />\r\n有关乡镇实际内科护理工作简明解析董琪（409）<br />\r\n血液透析中低血压的护理盖桂荣（410）<br />\r\n神经内科护理沟通中存在的问题和对策高微王洵（410）<br />\r\n浅谈急诊护理纠纷的原因与应对措施高书英周晓红（411）<br />\r\n眼科病人住院安全的科学管理与护理的研究郭峻峰（411）<br />\r\n手术室护理心理压力及调节对策顾焕菊（412）<br />\r\n四肢骨折后关节僵硬的临床护理体会龚青（412）<br />\r\n护理干预在支气管哮喘患儿中的应用效果观察吉淑颜李延功（413）<br />\r\n全膝关节置换术中使用电动止血带致皮肤并发症的护理干预段枫肖立（414）<br />\r\n小儿惊厥的护理体会安小茹（414）<br />\r\n膀胱炎疾病基本症状及患者护理杜守菊（415）<br />\r\n子宫肌瘤的围手术期护理体会付立杰（415）<br />\r\n探讨对肝硬化并发消化道出血患者的护理干预措施何庆梅杨淑梅张璐（416）<br />\r\n浅谈心肺复苏后伴多器官功能障碍患者的监测与护理侯芳华（417）<br />\r\n肛肠术后尿潴留预防及护理分析洪铭烽王锦慧（417）<br />\r\n护理干预对糖尿病患者戒烟的影响黄铣明梁惠玲（418）<br />\r\n急性创伤住院患者护理心理干预对其心理状况的影响 董晓娟（418）<br />\r\n护理干预对糖尿病患者依从性的影响权喜玲（419）<br />\r\n子宫肌壁间妊娠临床观察及护理干预探讨毛君妍刘彩娟 王洪蕊（419）<br />\r\n妇产科手术病人腹部切口的护理探析罗瑶（420）<br />\r\n断指再植患者的术后护理 刘淑玲（421）<br />\r\n萘普生+水合氯醛灌肠治疗小儿高热的护理李明芳 孙爱荣（421）<br />\r\n预防新生儿胎粪吸入综合征的护理李葵章（421）<br />\r\nDC&mdash;CIK细胞过继免疫治疗恶性肿瘤的护理熊永祥 王静 黄启静 康雪（422）<br />\r\n急诊护理流程在急性心肌梗死中的应用赵小兰（423）<br />\r\n健康教育路径表在颈椎病患者护理中的使用及有效性调查万小贤（423）<br />\r\n双胎妊娠经阴道分娩的产程观察与护理黄红艳袁艳玲黄海红（424）<br />\r\n我院ICU阴沟肠杆菌致肺部感染调查分析及护理防控措施张敏惠（424）<br />\r\n40例纤维支气管镜检查患者的护理袁艳玲黄海红黄红艳（425）<br />\r\n乳腺癌保乳术围手术期的护理体会徐玉兰（425）<br />\r\n护理干预对骨科患者术后疼痛的影响许雪凤（426）<br />\r\n舒适护理对肿瘤化疗患者的抑郁和焦虑效果评价分析严爱蓉 袁桂珍 钟晨玉（426）<br />\r\n老年高血压合并糖尿病的护理王文娟 胡佳 丁瑞琴（427）<br />\r\n留置气囊导尿管漏尿的原因分析及护理措施汪莹（428）<br />\r\n优质护理服务在工伤康复工作中的应用分析陈珺 王莉（428）<br />\r\n连续性血样净化治疗多脏器功能障碍综合症的护理陈冰（429）<br />\r\n颅内动脉瘤介入栓塞术的围手术期护理蔡婉霞 赖玲治（429）<br />\r\n预见性护理在抢救肝炎并肝昏迷患者中的应用体会张凤龙秀印彭英华 （430）<br />\r\nNICU存在的护理风险及对策孟丽衣娜刘娜王燕于莹（430）<br />\r\nBIPAP呼吸机治疗慢性阻塞性肺疾病合并呼吸衰竭的护理朱灵芝 朱丽鹏（431）<br />\r\n〖HT3XK〗｜医院管理｜〖HT',0,10000,'default','show'),(26,'母传利','。。。。。。',0,10000,'default','show'),(33,'应潜','。。。。。。',0,10000,'default','show');
/*!40000 ALTER TABLE `v9_special_c_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_special_content`
--

DROP TABLE IF EXISTS `v9_special_content`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_special_content` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `specialid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `cid` smallint(3) unsigned DEFAULT '0',
  `title` char(80) NOT NULL,
  `style` char(24) NOT NULL,
  `typeid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `thumb` char(100) NOT NULL,
  `keywords` char(40) NOT NULL,
  `description` char(255) NOT NULL,
  `url` char(100) NOT NULL,
  `curl` char(15) NOT NULL,
  `listorder` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `searchid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `isdata` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `videoid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` smallint(3) unsigned DEFAULT '0',
  `uploadfile` varchar(255) NOT NULL DEFAULT '',
  `writer` varchar(255) NOT NULL DEFAULT '',
  `tel` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `qq` varchar(255) NOT NULL DEFAULT '',
  `info` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `specialid` (`specialid`,`typeid`,`isdata`),
  KEY `typeid` (`typeid`,`isdata`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_special_content`
--

LOCK TABLES `v9_special_content` WRITE;
/*!40000 ALTER TABLE `v9_special_content` DISABLE KEYS */;
INSERT INTO `v9_special_content` VALUES (32,2,0,'以慢性输入段梗阻为表现的残胃癌误诊胰腺炎1例报告','',53,'','','','http://zazhi.ddecshop.com/index.php?m=special&c=index&a=show&id=32','',0,0,'',1386085978,1386085978,0,0,1,0,0,'201312/61cbfe79d7861da85d0dd35158492f.jpg','车彦鹏','13122223333','fly@163.com','医科大','89832323',''),(33,1,0,'鹰潭市第四轮全球基金结核病控制项目实施效果评价','',53,'','','','http://zazhi.ddecshop.com/index.php?m=special&c=index&a=show&id=33','',0,0,'',1386086405,1386086405,0,0,1,0,0,'201312/6c3e72166685de9b3f3a4a671aea4c.jpg','应潜','13122224444','fly@163.com','医科大','89832323',''),(4,1,0,'健康大视野杂志2013年12期目录','',57,'http://zazhi.ddecshop.com/uploadfile/zazhi/934b8cb0465a2eb805b7319b0d984626.jpg','健康 大视野 杂志','齐鲁石化地区2008～2012年生活饮用水水质监测分析刘茂强1王仁明2（1）急性重症阑尾炎采用手术方案治疗对预后的影响分析刘辉（2）移动盲...','http://zazhi.ddecshop.com/index.php?m=special&c=index&a=show&id=4','',0,1,'phpcms',1385827699,1385827730,11,0,1,0,1,'','','','','','',''),(5,1,0,'健康大视野杂志2013年13期目录','',57,'http://zazhi.ddecshop.com/uploadfile/zazhi/934b8cb0465a2eb805b7319b0d984626.jpg','健康 大视野 杂志','目录〖HT3XK〗| 论著 |〖HT〗青岛地区慢性肾病患者晨尿尿蛋白肌酐比值与24小时尿蛋白定量的相关性分析邓华张蓉张磊（1）论中药安全性及...','http://zazhi.ddecshop.com/index.php?m=special&c=index&a=show&id=5','',0,1,'phpcms',1385827770,1385827788,12,0,1,0,1,'','','','','','',''),(26,1,0,'重 型 颅 脑 损 伤 合 并 脑 梗 死 临 床 分 析','',53,'','','。。。。。。','http://zazhi.ddecshop.com/index.php?m=special&c=index&a=show&id=26','',0,0,'',1385918900,1385918900,14,0,1,0,1,'201312/ca99af9a1e7793788a722faea9a6ac.txt','母传利','13122223333','fly@163.com','yale uni','89832323','');
/*!40000 ALTER TABLE `v9_special_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_sphinx_counter`
--

DROP TABLE IF EXISTS `v9_sphinx_counter`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_sphinx_counter` (
  `counter_id` int(11) unsigned NOT NULL,
  `max_doc_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`counter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_sphinx_counter`
--

LOCK TABLES `v9_sphinx_counter` WRITE;
/*!40000 ALTER TABLE `v9_sphinx_counter` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_sphinx_counter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_sso_admin`
--

DROP TABLE IF EXISTS `v9_sso_admin`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_sso_admin` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL,
  `password` char(32) NOT NULL,
  `encrypt` char(6) DEFAULT NULL,
  `issuper` tinyint(1) DEFAULT '0',
  `lastlogin` int(10) DEFAULT NULL,
  `ip` char(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_sso_admin`
--

LOCK TABLES `v9_sso_admin` WRITE;
/*!40000 ALTER TABLE `v9_sso_admin` DISABLE KEYS */;
INSERT INTO `v9_sso_admin` VALUES (1,'phpcms','e4206b0194999e3315aade5d0fe80158','ebVcYs',1,0,'');
/*!40000 ALTER TABLE `v9_sso_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_sso_applications`
--

DROP TABLE IF EXISTS `v9_sso_applications`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_sso_applications` (
  `appid` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `type` char(16) NOT NULL DEFAULT '',
  `name` char(20) NOT NULL DEFAULT '',
  `url` char(255) NOT NULL DEFAULT '',
  `authkey` char(255) NOT NULL DEFAULT '',
  `ip` char(15) NOT NULL DEFAULT '',
  `apifilename` char(30) NOT NULL DEFAULT 'phpsso.php',
  `charset` char(8) NOT NULL DEFAULT '',
  `synlogin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`appid`),
  KEY `synlogin` (`synlogin`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_sso_applications`
--

LOCK TABLES `v9_sso_applications` WRITE;
/*!40000 ALTER TABLE `v9_sso_applications` DISABLE KEYS */;
INSERT INTO `v9_sso_applications` VALUES (1,'phpcms_v9','phpcms v9','http://zazhi.ddecshop.com/','5Ee4LB0rpyhoCzygfzL8g0UVVNhlruAB','','api.php?op=phpsso','utf-8',1);
/*!40000 ALTER TABLE `v9_sso_applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_sso_members`
--

DROP TABLE IF EXISTS `v9_sso_members`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_sso_members` (
  `uid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '',
  `password` char(32) NOT NULL DEFAULT '',
  `random` char(8) NOT NULL DEFAULT '',
  `email` char(32) NOT NULL DEFAULT '',
  `regip` char(15) NOT NULL DEFAULT '',
  `regdate` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` char(15) NOT NULL DEFAULT '0',
  `lastdate` int(10) unsigned NOT NULL DEFAULT '0',
  `appname` char(15) NOT NULL,
  `type` enum('app','connect') DEFAULT NULL,
  `avatar` tinyint(1) NOT NULL DEFAULT '0',
  `ucuserid` mediumint(8) unsigned DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `ucuserid` (`ucuserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_sso_members`
--

LOCK TABLES `v9_sso_members` WRITE;
/*!40000 ALTER TABLE `v9_sso_members` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_sso_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_sso_messagequeue`
--

DROP TABLE IF EXISTS `v9_sso_messagequeue`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_sso_messagequeue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `operation` char(32) NOT NULL,
  `succeed` tinyint(1) NOT NULL DEFAULT '0',
  `totalnum` smallint(6) unsigned NOT NULL DEFAULT '0',
  `noticedata` mediumtext NOT NULL,
  `dateline` int(10) unsigned NOT NULL DEFAULT '0',
  `appstatus` mediumtext,
  PRIMARY KEY (`id`),
  KEY `dateline` (`dateline`),
  KEY `succeed` (`succeed`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_sso_messagequeue`
--

LOCK TABLES `v9_sso_messagequeue` WRITE;
/*!40000 ALTER TABLE `v9_sso_messagequeue` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_sso_messagequeue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_sso_session`
--

DROP TABLE IF EXISTS `v9_sso_session`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_sso_session` (
  `sessionid` char(32) NOT NULL,
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL,
  `lastvisit` int(10) unsigned NOT NULL DEFAULT '0',
  `roleid` tinyint(3) unsigned DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `m` char(20) NOT NULL,
  `c` char(20) NOT NULL,
  `a` char(20) NOT NULL,
  `data` char(255) NOT NULL,
  PRIMARY KEY (`sessionid`),
  KEY `lastvisit` (`lastvisit`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_sso_session`
--

LOCK TABLES `v9_sso_session` WRITE;
/*!40000 ALTER TABLE `v9_sso_session` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_sso_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_sso_settings`
--

DROP TABLE IF EXISTS `v9_sso_settings`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_sso_settings` (
  `name` varchar(32) NOT NULL DEFAULT '',
  `data` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_sso_settings`
--

LOCK TABLES `v9_sso_settings` WRITE;
/*!40000 ALTER TABLE `v9_sso_settings` DISABLE KEYS */;
INSERT INTO `v9_sso_settings` VALUES ('denyemail',''),('denyusername',''),('creditrate',''),('sp4',''),('ucenter','');
/*!40000 ALTER TABLE `v9_sso_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_tag`
--

DROP TABLE IF EXISTS `v9_tag`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_tag` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `tag` text NOT NULL,
  `name` char(40) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `module` char(20) NOT NULL,
  `action` char(20) NOT NULL,
  `data` text NOT NULL,
  `page` char(15) NOT NULL,
  `return` char(20) NOT NULL,
  `cache` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_tag`
--

LOCK TABLES `v9_tag` WRITE;
/*!40000 ALTER TABLE `v9_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_template_bak`
--

DROP TABLE IF EXISTS `v9_template_bak`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_template_bak` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `creat_at` int(10) unsigned DEFAULT '0',
  `fileid` char(50) DEFAULT NULL,
  `userid` mediumint(8) DEFAULT NULL,
  `username` char(20) DEFAULT NULL,
  `template` text,
  PRIMARY KEY (`id`),
  KEY `fileid` (`fileid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_template_bak`
--

LOCK TABLES `v9_template_bak` WRITE;
/*!40000 ALTER TABLE `v9_template_bak` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_template_bak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_times`
--

DROP TABLE IF EXISTS `v9_times`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_times` (
  `username` char(40) NOT NULL,
  `ip` char(15) NOT NULL,
  `logintime` int(10) unsigned NOT NULL DEFAULT '0',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `times` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`,`isadmin`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_times`
--

LOCK TABLES `v9_times` WRITE;
/*!40000 ALTER TABLE `v9_times` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_times` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_type`
--

DROP TABLE IF EXISTS `v9_type`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_type` (
  `typeid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `module` char(15) NOT NULL,
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` char(30) NOT NULL,
  `parentid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typedir` char(20) NOT NULL,
  `url` char(100) NOT NULL,
  `template` char(30) NOT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`typeid`),
  KEY `module` (`module`,`parentid`,`siteid`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_type`
--

LOCK TABLES `v9_type` WRITE;
/*!40000 ALTER TABLE `v9_type` DISABLE KEYS */;
INSERT INTO `v9_type` VALUES (52,1,'search',0,'专题',0,'special','','',4,'专题'),(1,1,'search',1,'新闻',0,'','','',1,'新闻模型搜索'),(2,1,'search',2,'下载',0,'','','',3,'下载模型搜索'),(3,1,'search',3,'图片',0,'','','',2,'图片模型搜索'),(53,1,'special',0,'投稿论文',0,'html','http://zazhi.ddecshop.com/index.php?m=special&c=index&a=type&specialid=1&typeid=53','',1,''),(56,1,'special',0,'学术论文',0,'html','http://zazhi.ddecshop.com/index.php?m=special&c=index&a=type&specialid=1&typeid=56','',1,''),(57,1,'special',0,'往期目录',0,'html','http://zazhi.ddecshop.com/index.php?m=special&c=index&a=type&specialid=1&typeid=57','',1,'');
/*!40000 ALTER TABLE `v9_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_urlrule`
--

DROP TABLE IF EXISTS `v9_urlrule`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_urlrule` (
  `urlruleid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(15) NOT NULL,
  `file` varchar(20) NOT NULL,
  `ishtml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `urlrule` varchar(255) NOT NULL,
  `example` varchar(255) NOT NULL,
  PRIMARY KEY (`urlruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_urlrule`
--

LOCK TABLES `v9_urlrule` WRITE;
/*!40000 ALTER TABLE `v9_urlrule` DISABLE KEYS */;
INSERT INTO `v9_urlrule` VALUES (1,'content','category',1,'{$categorydir}{$catdir}/index.html|{$categorydir}{$catdir}/{$page}.html','news/china/1000.html'),(6,'content','category',0,'index.php?m=content&c=index&a=lists&catid={$catid}|index.php?m=content&c=index&a=lists&catid={$catid}&page={$page}','index.php?m=content&c=index&a=lists&catid=1&page=1'),(11,'content','show',1,'{$year}/{$catdir}_{$month}{$day}/{$id}.html|{$year}/{$catdir}_{$month}{$day}/{$id}_{$page}.html','2010/catdir_0720/1_2.html'),(12,'content','show',1,'{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}.html|{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}_{$page}.html','it/product/2010/0720/1_2.html'),(16,'content','show',0,'index.php?m=content&c=index&a=show&catid={$catid}&id={$id}|index.php?m=content&c=index&a=show&catid={$catid}&id={$id}&page={$page}','index.php?m=content&c=index&a=show&catid=1&id=1'),(17,'content','show',0,'show-{$catid}-{$id}-{$page}.html','show-1-2-1.html'),(18,'content','show',0,'content-{$catid}-{$id}-{$page}.html','content-1-2-1.html'),(30,'content','category',0,'list-{$catid}-{$page}.html','list-1-1.html');
/*!40000 ALTER TABLE `v9_urlrule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_video`
--

DROP TABLE IF EXISTS `v9_video`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_video` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `typeid` smallint(5) unsigned NOT NULL,
  `title` char(80) NOT NULL DEFAULT '',
  `style` char(24) NOT NULL DEFAULT '',
  `thumb` char(100) NOT NULL DEFAULT '',
  `keywords` char(40) NOT NULL DEFAULT '',
  `description` char(255) NOT NULL DEFAULT '',
  `posids` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `url` char(100) NOT NULL,
  `listorder` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `islink` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `inputtime` int(10) unsigned NOT NULL DEFAULT '0',
  `updatetime` int(10) unsigned NOT NULL DEFAULT '0',
  `vision` varchar(255) NOT NULL DEFAULT '',
  `video_category` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`status`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_video`
--

LOCK TABLES `v9_video` WRITE;
/*!40000 ALTER TABLE `v9_video` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_video` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_video_content`
--

DROP TABLE IF EXISTS `v9_video_content`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_video_content` (
  `contentid` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `videoid` int(10) unsigned NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  KEY `videoid` (`videoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_video_content`
--

LOCK TABLES `v9_video_content` WRITE;
/*!40000 ALTER TABLE `v9_video_content` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_video_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_video_data`
--

DROP TABLE IF EXISTS `v9_video_data`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_video_data` (
  `id` mediumint(8) unsigned DEFAULT '0',
  `content` text NOT NULL,
  `readpoint` smallint(5) unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint(6) NOT NULL,
  `template` varchar(30) NOT NULL,
  `paytype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) NOT NULL DEFAULT '',
  `video` tinyint(3) unsigned NOT NULL DEFAULT '0',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_video_data`
--

LOCK TABLES `v9_video_data` WRITE;
/*!40000 ALTER TABLE `v9_video_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_video_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_video_store`
--

DROP TABLE IF EXISTS `v9_video_store`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_video_store` (
  `videoid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` char(60) NOT NULL,
  `vid` char(40) NOT NULL,
  `keywords` char(40) NOT NULL,
  `description` char(255) NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT '0',
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `picpath` char(120) NOT NULL,
  `size` char(20) NOT NULL,
  `timelen` mediumint(9) NOT NULL DEFAULT '0',
  `userupload` tinyint(1) NOT NULL DEFAULT '0',
  `channelid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`videoid`),
  KEY `videoid` (`videoid`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_video_store`
--

LOCK TABLES `v9_video_store` WRITE;
/*!40000 ALTER TABLE `v9_video_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_video_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_vote_data`
--

DROP TABLE IF EXISTS `v9_vote_data`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_vote_data` (
  `userid` mediumint(8) unsigned DEFAULT '0',
  `username` char(20) NOT NULL,
  `subjectid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `ip` char(15) NOT NULL,
  `data` text NOT NULL,
  `userinfo` text NOT NULL,
  KEY `subjectid` (`subjectid`),
  KEY `userid` (`userid`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_vote_data`
--

LOCK TABLES `v9_vote_data` WRITE;
/*!40000 ALTER TABLE `v9_vote_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_vote_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_vote_option`
--

DROP TABLE IF EXISTS `v9_vote_option`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_vote_option` (
  `optionid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned DEFAULT '0',
  `subjectid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `option` varchar(255) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `listorder` tinyint(2) unsigned DEFAULT '0',
  PRIMARY KEY (`optionid`),
  KEY `subjectid` (`subjectid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_vote_option`
--

LOCK TABLES `v9_vote_option` WRITE;
/*!40000 ALTER TABLE `v9_vote_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_vote_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_vote_subject`
--

DROP TABLE IF EXISTS `v9_vote_subject`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_vote_subject` (
  `subjectid` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned DEFAULT '0',
  `subject` char(255) NOT NULL,
  `ismultiple` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ischeckbox` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `credit` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `fromdate` date NOT NULL DEFAULT '0000-00-00',
  `todate` date NOT NULL DEFAULT '0000-00-00',
  `interval` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` char(20) NOT NULL,
  `description` text NOT NULL,
  `listorder` smallint(5) unsigned NOT NULL DEFAULT '0',
  `allowguest` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `maxval` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `minval` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `allowview` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `optionnumber` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `votenumber` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`subjectid`),
  KEY `enabled` (`enabled`),
  KEY `fromdate` (`fromdate`,`todate`),
  KEY `todate` (`todate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_vote_subject`
--

LOCK TABLES `v9_vote_subject` WRITE;
/*!40000 ALTER TABLE `v9_vote_subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_vote_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_wap`
--

DROP TABLE IF EXISTS `v9_wap`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_wap` (
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '1',
  `sitename` char(30) NOT NULL,
  `logo` char(100) DEFAULT NULL,
  `domain` varchar(100) DEFAULT NULL,
  `setting` mediumtext,
  `status` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_wap`
--

LOCK TABLES `v9_wap` WRITE;
/*!40000 ALTER TABLE `v9_wap` DISABLE KEYS */;
INSERT INTO `v9_wap` VALUES (1,'PHPCMS手机门户','/statics/images/wap/wlogo.gif','','array (\n  \'listnum\' => \'10\',\n  \'thumb_w\' => \'220\',\n  \'thumb_h\' => \'0\',\n  \'c_num\' => \'1000\',\n  \'index_template\' => \'index\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n)',0);
/*!40000 ALTER TABLE `v9_wap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_wap_type`
--

DROP TABLE IF EXISTS `v9_wap_type`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_wap_type` (
  `typeid` smallint(5) NOT NULL AUTO_INCREMENT,
  `cat` smallint(5) NOT NULL,
  `parentid` smallint(5) NOT NULL,
  `typename` varchar(30) NOT NULL,
  `siteid` smallint(5) NOT NULL,
  `listorder` smallint(5) DEFAULT '0',
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_wap_type`
--

LOCK TABLES `v9_wap_type` WRITE;
/*!40000 ALTER TABLE `v9_wap_type` DISABLE KEYS */;
/*!40000 ALTER TABLE `v9_wap_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `v9_workflow`
--

DROP TABLE IF EXISTS `v9_workflow`;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
CREATE TABLE `v9_workflow` (
  `workflowid` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint(5) unsigned NOT NULL DEFAULT '0',
  `steps` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `workname` varchar(20) NOT NULL,
  `description` varchar(255) NOT NULL,
  `setting` text NOT NULL,
  `flag` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`workflowid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
SET character_set_client = @saved_cs_client;

--
-- Dumping data for table `v9_workflow`
--

LOCK TABLES `v9_workflow` WRITE;
/*!40000 ALTER TABLE `v9_workflow` DISABLE KEYS */;
INSERT INTO `v9_workflow` VALUES (1,1,1,'一级审核','审核一次','',0),(2,1,2,'二级审核','审核两次','',0),(3,1,3,'三级审核','审核三次','',0),(4,1,4,'四级审核','四级审核','',0);
/*!40000 ALTER TABLE `v9_workflow` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-12-07 15:16:04
