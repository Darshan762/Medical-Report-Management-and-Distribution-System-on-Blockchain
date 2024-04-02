/*
SQLyog Enterprise - MySQL GUI v6.56
MySQL - 5.5.5-10.4.21-MariaDB : Database - healthcare
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`healthcare` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `healthcare`;

/*Table structure for table `doc_reg` */

DROP TABLE IF EXISTS `doc_reg`;

CREATE TABLE `doc_reg` (
  `Id` int(200) NOT NULL AUTO_INCREMENT,
  `DoctorName` varchar(200) DEFAULT NULL,
  `Department` varchar(200) DEFAULT NULL,
  `DoctorNumber` varchar(200) DEFAULT NULL,
  `DoctorEmail` varchar(200) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `doc_reg` */

insert  into `doc_reg`(`Id`,`DoctorName`,`Department`,`DoctorNumber`,`DoctorEmail`,`Address`,`Password`) values (1,'doctor','X-ray','4326876354','doc@gmail.com','Nellore','123');

/*Table structure for table `patients` */

DROP TABLE IF EXISTS `patients`;

CREATE TABLE `patients` (
  `Id` int(200) NOT NULL AUTO_INCREMENT,
  `Name` varchar(200) DEFAULT NULL,
  `Age` varchar(200) DEFAULT NULL,
  `Contact` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Symptoms` varchar(200) DEFAULT NULL,
  `Department` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `Date` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `patients` */

insert  into `patients`(`Id`,`Name`,`Age`,`Contact`,`Email`,`Address`,`Symptoms`,`Department`,`Password`,`Date`) values (1,'patient','40','9848526541','patient@gmail.com','Kadapa','bone fracture','X-ray','123','2021-10-29 19:05:07.908803');

/*Table structure for table `reception` */

DROP TABLE IF EXISTS `reception`;

CREATE TABLE `reception` (
  `Id` int(200) NOT NULL AUTO_INCREMENT,
  `ReceptionistName` varchar(200) DEFAULT NULL,
  `Number` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `reception` */

insert  into `reception`(`Id`,`ReceptionistName`,`Number`,`Email`,`Address`,`Password`) values (1,'recep','4326876354','reception@gmail.com','Mumbai','321');

/*Table structure for table `reports` */

DROP TABLE IF EXISTS `reports`;

CREATE TABLE `reports` (
  `Id` int(200) NOT NULL AUTO_INCREMENT,
  `slno` int(200) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `Symptoms` varchar(200) DEFAULT NULL,
  `Filedata` longblob DEFAULT NULL,
  `HashA` varchar(200) DEFAULT NULL,
  `HashB` varchar(200) DEFAULT NULL,
  `StartDate` varchar(200) DEFAULT NULL,
  `EndDate` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

/*Data for the table `reports` */

insert  into `reports`(`Id`,`slno`,`Name`,`Symptoms`,`Filedata`,`HashA`,`HashB`,`StartDate`,`EndDate`) values (1,1,'patient','bone fracture','‚ý\Z h—t>g<yTý×x‡4ëž×\\0Ó‹ìæÂ','3f69a365892079d68a5e6bb0e3cd801d61fe1ed9','7883b79819c120bcfb0eae74e10004ad3cd24ed0','2021-10-29 19:05:07.908803','2021-10-29');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
