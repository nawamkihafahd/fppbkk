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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `menu` */

insert  into `menu`(`ID`,`Resto_ID`,`Menu_Nama`,`Menu_Harga`,`Menu_Image_Path`) values (1,1,'Pecel',10000,'/resources/img/pecel-long.jpg'),(2,1,'Rawon',11000,'/resources/img/pecel-cak-tikno-menu2.jpg'),(3,2,'Nasi Goreng',13000,'/resources/img/nasgor-item.jpg'),(4,2,'Mi Goreng',13000,'/resources/img/gado-item.jpg'),(5,3,'Ayam Goreng',20000,'/resources/img/laziza-keputih-menu1.jpg'),(6,4,'Ayam Goreng',8000,'/resources/img/laziza-keputih-menu1.jpg'),(7,5,'Nasi Campur',10000,'/resources/img/nasi-campur.jpg'),(8,5,'Ayam Geprek',12000,'/resources/img/geprek-item.jpg');

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

insert  into `resto_tag`(`Resto_ID`,`Tag_ID`) values (2,4),(1,2),(2,1),(2,4),(2,3),(3,3),(3,5),(4,5),(5,2),(5,6);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `restoran` */

insert  into `restoran`(`ID`,`Resto_Nama`,`Resto_Daerah`,`Resto_Alamat`,`Resto_Budget_Min`,`Resto_Budget_Max`,`Resto_Image_Path`) values (1,'Pecel Cak Tikno','Keputih','Pertigaan Keputih',7000,100000,'/resources/img/pecel-cak-tikno-resto.jpg'),(2,'Nasi Goreng Bonek','Mulyosari','Depan McD mulyos',15000,100000,'/resources/img/nasgor-bonek-resto.jpg'),(3,'KFC Mulyosari','Mulyosari','Sebelah McD Mulyos',30000,100000,'/resources/img/kfc-mulyos.jpg'),(4,'Laziza','Keputih','Atas Sakinah',12000,100000,'/resources/img/laziza-keputih-resto.jpg'),(5,'J-1','ITS','Blok-J-1',10000,100000,'/resources/img/jone-resto.jpg');

/*Table structure for table `tag` */

DROP TABLE IF EXISTS `tag`;

CREATE TABLE `tag` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `Tag_Nama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tag` */

insert  into `tag`(`ID`,`Tag_Nama`) values (1,'Indonesian'),(2,'Editor\'s Choice'),(3,'Enak'),(4,'Pedas'),(5,'FastFood'),(6,'Warteg'),(7,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
