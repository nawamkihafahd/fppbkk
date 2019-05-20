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
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Resto_ID` int(11) DEFAULT NULL,
  `Menu_Nama` varchar(50) DEFAULT NULL,
  `Menu_Harga` bigint(20) DEFAULT NULL,
  `Menu_Image_Path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Resto_ID` (`Resto_ID`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`Resto_ID`) REFERENCES `restoran` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `menu` */

insert  into `menu`(`ID`,`Resto_ID`,`Menu_Nama`,`Menu_Harga`,`Menu_Image_Path`) values (1,1,'Pecel',10000,'/resources/img/gado-item.jpg'),(2,1,'Rawon',11000,'/resources/img/gado-item.jpg'),(3,2,'Nasi Goreng',13000,'/resources/img/gado-item.jpg'),(4,2,'Mi Goreng',13000,'/resources/img/gado-item.jpg'),(5,1,'asd',12356,NULL);

/*Table structure for table `resto_tag` */

DROP TABLE IF EXISTS `resto_tag`;

CREATE TABLE `resto_tag` (
  `Resto_ID` int(11) NOT NULL,
  `Tag_ID` int(11) NOT NULL,
  KEY `Resto_ID` (`Resto_ID`),
  KEY `Tag_ID` (`Tag_ID`),
  CONSTRAINT `resto_tag_ibfk_1` FOREIGN KEY (`Resto_ID`) REFERENCES `restoran` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `resto_tag_ibfk_2` FOREIGN KEY (`Tag_ID`) REFERENCES `tag` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `resto_tag` */

insert  into `resto_tag`(`Resto_ID`,`Tag_ID`) values (1,1),(1,2),(2,1),(1,1);

/*Table structure for table `restoran` */

DROP TABLE IF EXISTS `restoran`;

CREATE TABLE `restoran` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Resto_Nama` varchar(50) DEFAULT NULL,
  `Resto_Daerah` varchar(50) DEFAULT NULL,
  `Resto_Alamat` varchar(100) DEFAULT NULL,
  `Resto_Budget_Min` int(11) DEFAULT NULL,
  `Resto_Budget_Max` int(11) DEFAULT NULL,
  `Resto_Image_Path` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `restoran` */

insert  into `restoran`(`ID`,`Resto_Nama`,`Resto_Daerah`,`Resto_Alamat`,`Resto_Budget_Min`,`Resto_Budget_Max`,`Resto_Image_Path`) values (1,'Pecel Cak Tikno','Keputih','Pertigaan Keputih',7000,50000,'/resources/img/pecel-long.jpg'),(2,'Nasi Goreng Bonek','Mulyosari','Depan McD mulyos',15000,100000,'/resources/img/gado-item.jpg');

/*Table structure for table `tag` */

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Tag_Nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `tag` */

insert  into `tag`(`ID`,`Tag_Nama`) values (1,'Indonesian'),(2,'Editor\'s Choice'),(3,'Enak'),(4,'Manis'),(5,'Lembut'),(6,'monkaOMEGA');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
