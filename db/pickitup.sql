/*
SQLyog Professional v12.5.0 (64 bit)
MySQL - 5.7.20-log : Database - pickitup
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `accounts` */

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `confirm_password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `accounts` */

insert  into `accounts`(`ID`,`username`,`email`,`password`,`confirm_password`) values 
(1,'John','john@example.com','',''),
(2,'jose','jose@hotmail.com','123','123'),
(3,'gil','jose@hotmail.com','123','123'),
(4,'giltest','providenttesting@gmail.com','blabla','blabla'),
(5,'patrick','patrick@hotmail.com','123','123'),
(6,'test3','test3@gmail.com','123','123'),
(7,'adonis','adonis@gmail.com','123','1234'),
(8,'adonis','adonis@gmail.com','45','4534345'),
(9,'rodgers','rogders@gmail.com','123','123'),
(10,'blablabla','blabla@hotmail.com','123','123'),
(11,'blablabla2','blabla@hotmail.com','1234','1234');

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `product_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_bought` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`product_ID`),
  KEY `ID` (`ID`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `accounts` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `products` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
