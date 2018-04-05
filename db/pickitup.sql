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
  `account_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL,
  `confirm_password` varchar(255) DEFAULT NULL,
  `user_hash` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `accounts` */

insert  into `accounts`(`account_id`,`username`,`email`,`PASSWORD`,`confirm_password`,`user_hash`) values 
(1,'gil','gilberto@hotmail.com','202cb962ac59075b964b07152d234b70','202cb962ac59075b964b07152d234b70','28971');

/*Table structure for table `items` */

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) DEFAULT NULL,
  `list_id` int(11) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  `done` tinyint(1) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `items` */

/*Table structure for table `lists` */

DROP TABLE IF EXISTS `lists`;

CREATE TABLE `lists` (
  `list_id` int(11) NOT NULL AUTO_INCREMENT,
  `list_name` varchar(255) DEFAULT NULL,
  `account_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`list_id`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `lists_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `lists` */

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `product_ID` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_bought` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`product_ID`),
  KEY `account_id` (`account_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `products` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
