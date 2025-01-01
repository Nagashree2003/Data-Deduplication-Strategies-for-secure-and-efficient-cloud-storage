# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                 127.0.0.1
# Database:             cloudstorage
# Server version:       5.0.17-nt
# Server OS:            Win32
# Target-Compatibility: Standard ANSI SQL
# HeidiSQL version:     3.2 Revision: 1129
# --------------------------------------------------------

/*!40100 SET CHARACTER SET latin1;*/
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'cloudstorage'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "cloudstorage" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "cloudstorage";


#
# Table structure for table 'filedetails'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "filedetails" (
  "fname" varchar(50) NOT NULL,
  "ftype" varchar(50) NOT NULL,
  "fsize" int(11) NOT NULL default '0',
  "frequency" int(11) NOT NULL default '0',
  "rank" int(11) NOT NULL default '0',
  "storage" varchar(50) NOT NULL default '0',
  "lastaccess" varchar(50) default NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'filedetails'
#

LOCK TABLES "filedetails" WRITE;
/*!40000 ALTER TABLE "filedetails" DISABLE KEYS;*/
REPLACE INTO "filedetails" ("fname", "ftype", "fsize", "frequency", "rank", "storage", "lastaccess") VALUES
	('phishing url.txt','txt',1910,2,2,'STORAGE1','18-07-2021 11:00:18');
REPLACE INTO "filedetails" ("fname", "ftype", "fsize", "frequency", "rank", "storage", "lastaccess") VALUES
	('alphanum.java','java',651,3,1,'STORAGE2','24-03-2022 19:13:29');
REPLACE INTO "filedetails" ("fname", "ftype", "fsize", "frequency", "rank", "storage", "lastaccess") VALUES
	('checknum.java','java',759,3,1,'STORAGE3','24-03-2022 19:21:40');
REPLACE INTO "filedetails" ("fname", "ftype", "fsize", "frequency", "rank", "storage", "lastaccess") VALUES
	('Bandicam.lnk','lnk',834,1,3,'STORAGE2','14-12-2024 11:38:46');
/*!40000 ALTER TABLE "filedetails" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'sharedetails'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "sharedetails" (
  "uname" varchar(50) default NULL,
  "fname" varchar(50) default NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'sharedetails'
#

LOCK TABLES "sharedetails" WRITE;
/*!40000 ALTER TABLE "sharedetails" DISABLE KEYS;*/
REPLACE INTO "sharedetails" ("uname", "fname") VALUES
	('aaa','phishing url.txt');
REPLACE INTO "sharedetails" ("uname", "fname") VALUES
	('aaa','alphanum.java');
REPLACE INTO "sharedetails" ("uname", "fname") VALUES
	('bbb','checknum.java');
REPLACE INTO "sharedetails" ("uname", "fname") VALUES
	('bbb','alphanum.java');
REPLACE INTO "sharedetails" ("uname", "fname") VALUES
	('xyz','checknum.java');
REPLACE INTO "sharedetails" ("uname", "fname") VALUES
	('aaa','Bandicam.lnk');
/*!40000 ALTER TABLE "sharedetails" ENABLE KEYS;*/
UNLOCK TABLES;


#
# Table structure for table 'user'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "user" (
  "uname" varchar(20) NOT NULL,
  "pass" varchar(20) NOT NULL,
  "email" varchar(100) NOT NULL
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'user'
#

LOCK TABLES "user" WRITE;
/*!40000 ALTER TABLE "user" DISABLE KEYS;*/
REPLACE INTO "user" ("uname", "pass", "email") VALUES
	('aaa','aaa','codebigtechnologies@gmail.com');
REPLACE INTO "user" ("uname", "pass", "email") VALUES
	('bbb','bbb','codebigtechnologies@gmail.com');
REPLACE INTO "user" ("uname", "pass", "email") VALUES
	('ccc','ccc','codebigtechnologies@gmail.com');
REPLACE INTO "user" ("uname", "pass", "email") VALUES
	('xyz','xyzxyz','xyz@gmail.com');
/*!40000 ALTER TABLE "user" ENABLE KEYS;*/
UNLOCK TABLES;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/
