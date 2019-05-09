/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.26-MariaDB : Database - eatadakimakan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`eatadakimakan` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `eatadakimakan`;

/*Table structure for table `menu` */

DROP TABLE IF EXISTS `menu`;

CREATE TABLE `menu` (
  `Resto_ID` int(11) DEFAULT NULL,
  `Menu_Nama` varchar(50) DEFAULT NULL,
  `Menu_Harga` bigint(20) DEFAULT NULL,
  KEY `Resto_ID` (`Resto_ID`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`Resto_ID`) REFERENCES `restoran` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `menu` */

/*Table structure for table `resto_tag` */

DROP TABLE IF EXISTS `resto_tag`;

CREATE TABLE `resto_tag` (
  `Resto_ID` int(11) NOT NULL,
  `Tag_ID` int(11) NOT NULL,
  KEY `Resto_ID` (`Resto_ID`),
  KEY `Tag_ID` (`Tag_ID`),
  CONSTRAINT `resto_tag_ibfk_1` FOREIGN KEY (`Resto_ID`) REFERENCES `restoran` (`ID`),
  CONSTRAINT `resto_tag_ibfk_2` FOREIGN KEY (`Tag_ID`) REFERENCES `tag` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `resto_tag` */

/*Table structure for table `restoran` */

DROP TABLE IF EXISTS `restoran`;

CREATE TABLE `restoran` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Resto_Nama` varchar(50) DEFAULT NULL,
  `Resto_Daerah` varchar(50) DEFAULT NULL,
  `Resto_Alamat` varchar(100) DEFAULT NULL,
  `Resto_Budget_Min` int(11) DEFAULT NULL,
  `Resto_Budget_Max` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `restoran` */

/*Table structure for table `tag` */

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Tag_Nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tag` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
