/*
SQLyog Professional v12.08 (64 bit)
MySQL - 5.6.17 : Database - cars
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`cars` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `cars`;

/*Table structure for table `carinfo` */

DROP TABLE IF EXISTS `carinfo`;

CREATE TABLE `carinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modal` char(20) DEFAULT NULL COMMENT '品牌',
  `registeryear` int(11) DEFAULT NULL COMMENT '注册年份',
  `mileage` int(11) DEFAULT NULL COMMENT '里程',
  `power` char(20) DEFAULT NULL COMMENT '马力',
  `seat` int(11) DEFAULT NULL COMMENT '车座数量',
  `color` char(20) DEFAULT NULL COMMENT '车子颜色',
  `airbags` int(11) DEFAULT NULL COMMENT '安全气囊数目',
  `damage` char(20) DEFAULT NULL COMMENT '损伤程度',
  `picture` char(20) DEFAULT NULL COMMENT '汽车图片',
  `price` int(11) DEFAULT NULL COMMENT '汽车价格',
  `area` char(20) DEFAULT NULL COMMENT '车长X车宽',
  `stock` int(11) DEFAULT NULL COMMENT '库存',
  `saled` int(11) DEFAULT NULL COMMENT '已售',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `carinfo` */

insert  into `carinfo`(`id`,`modal`,`registeryear`,`mileage`,`power`,`seat`,`color`,`airbags`,`damage`,`picture`,`price`,`area`,`stock`,`saled`) values (1,'宝马',1997,50000,'230',4,'蓝',2,'none','car1.jpg',66666,'1.9X3.1',39,61),(2,'奥迪',2000,36000,'220',4,'红',2,'none','car1.jpg',60000,'1.9X3.0',96,4),(3,'宝马',2008,88888,'260',2,'黑',2,'little','car1.jpg',1111111,'1.8X2.9',85,15),(4,'奥迪',2008,18888,'180',4,'灰',2,'little','car4.jpg',47777,'1.7X2.7',94,6),(5,'别克',2010,19999,'188',4,'白',4,'little','car2.jpg',55555,'1.9X2.6',81,19),(8,'凯迪拉克',2009,18888,'190',4,'白',2,'little','car2.jpg',88888,'1.9X2.8',96,4),(10,'法拉利',2008,33333,'290',3,'红',1,'none','car3.jpg',258888,'1.7X2.7',99,1),(11,'劳斯莱斯',2008,18888,'300',3,'黑',1,'none','car4.jpg',388888,'1.7X2.7',100,0);

/*Table structure for table `messageinfo` */

DROP TABLE IF EXISTS `messageinfo`;

CREATE TABLE `messageinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) DEFAULT NULL,
  `email` char(20) DEFAULT NULL,
  `subject` char(20) DEFAULT NULL,
  `message` char(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `messageinfo` */

insert  into `messageinfo`(`id`,`name`,`email`,`subject`,`message`) values (1,'范冰冰','123@qq.com','没有主题','无建议无建议无建议无建议无建议无建议无建议无建议无建议'),(2,'往大陆','110@qq.com','安全问题','你的网页很安全你的网页很安全你的网页很安全你的网页很安全你的网页很安全你的网页很安全你的网页很安全你的网页很安全你的网页很安全你的网页很安全你的网页很安全你的网页很安全');

/*Table structure for table `modalinfo` */

DROP TABLE IF EXISTS `modalinfo`;

CREATE TABLE `modalinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `modalname` char(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `modalinfo` */

insert  into `modalinfo`(`id`,`modalname`) values (1,'奥迪'),(2,'宝马'),(3,'凯迪拉克'),(4,'福特'),(5,'别克'),(6,'现代'),(8,'五菱宏光'),(9,'法拉利'),(10,'劳斯莱斯');

/*Table structure for table `orderinfo` */

DROP TABLE IF EXISTS `orderinfo`;

CREATE TABLE `orderinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `username` char(20) DEFAULT NULL,
  `carid` int(11) DEFAULT NULL,
  `carmodal` char(20) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL COMMENT '价格',
  `station` int(11) DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

/*Data for the table `orderinfo` */

insert  into `orderinfo`(`id`,`userid`,`username`,`carid`,`carmodal`,`number`,`price`,`station`) values (1,2,'bbb',1,'宝马',1,66666,1),(2,2,'bbb',3,'宝马',1,1111111,1),(3,2,'bbb',4,'奥迪',1,47777,1),(4,2,'bbb',4,'奥迪',1,47777,1),(5,7,'ccc',8,'凯迪拉克',2,177776,1),(6,7,'ccc',2,'奥迪',1,60000,1),(7,7,'ccc',1,'宝马',2,133332,1),(8,7,'ccc',1,'宝马',1,66666,1),(9,7,'ccc',8,'凯迪拉克',1,88888,1),(10,7,'ccc',3,'宝马',1,1111111,1),(11,7,'ccc',1,'宝马',1,66666,1),(12,7,'ccc',5,'别克',1,55555,1),(13,7,'ccc',2,'奥迪',1,60000,1),(14,7,'ccc',10,'法拉利',1,258888,1),(15,2,'bbb',5,'别克',3,166665,1),(16,2,'bbb',1,'宝马',1,66666,1),(17,2,'bbb',3,'宝马',1,1111111,1),(18,9,'eee',3,'宝马',2,2222222,1),(19,9,'eee',4,'奥迪',1,47777,1),(20,9,'eee',2,'奥迪',1,60000,1),(21,9,'eee',8,'凯迪拉克',1,88888,1);

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(20) DEFAULT NULL,
  `password` char(20) DEFAULT NULL,
  `name` char(20) DEFAULT NULL,
  `phone` char(20) DEFAULT NULL,
  `address` char(20) DEFAULT NULL,
  `limition` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Data for the table `userinfo` */

insert  into `userinfo`(`id`,`username`,`password`,`name`,`phone`,`address`,`limition`) values (1,'aaa','aaa','大大','13113113111','here',1),(2,'bbb','bbb','BBB','13213213211','there',0),(7,'ccc','ccc','CCC','13113113111','福州',0),(8,'ddd','ddd','DDD','13213213212','厦门',0),(9,'eee','eee','EEE','13960844174','福州',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
