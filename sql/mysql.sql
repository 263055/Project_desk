/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.19 : Database - desk
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`desk` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `desk`;

/*Table structure for table `file_detail` */

DROP TABLE IF EXISTS `file_detail`;

CREATE TABLE `file_detail` (
                               `id` varchar(32) NOT NULL COMMENT '文件id',
                               `url` varchar(512) NOT NULL COMMENT '文件访问地址',
                               `size` bigint(20) DEFAULT NULL COMMENT '文件大小，单位字节',
                               `filename` varchar(256) DEFAULT NULL COMMENT '文件名称',
                               `original_filename` varchar(256) DEFAULT NULL COMMENT '原始文件名',
                               `base_path` varchar(256) DEFAULT NULL COMMENT '基础存储路径',
                               `path` varchar(256) DEFAULT NULL COMMENT '存储路径',
                               `ext` varchar(32) DEFAULT NULL COMMENT '文件扩展名',
                               `content_type` varchar(32) DEFAULT NULL COMMENT 'MIME类型',
                               `platform` varchar(32) DEFAULT NULL COMMENT '存储平台',
                               `th_url` varchar(512) DEFAULT NULL COMMENT '缩略图访问路径',
                               `th_filename` varchar(256) DEFAULT NULL COMMENT '缩略图名称',
                               `th_size` bigint(20) DEFAULT NULL COMMENT '缩略图大小，单位字节',
                               `th_content_type` varchar(32) DEFAULT NULL COMMENT '缩略图MIME类型',
                               `object_id` varchar(32) DEFAULT NULL COMMENT '文件所属对象id',
                               `object_type` varchar(32) DEFAULT NULL COMMENT '文件所属对象类型，例如用户头像，评价图片',
                               `attr` text COMMENT '附加属性',
                               `create_time` datetime DEFAULT NULL COMMENT '创建时间',
                               PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文件记录表';

/*Data for the table `file_detail` */

insert  into `file_detail`(`id`,`url`,`size`,`filename`,`original_filename`,`base_path`,`path`,`ext`,`content_type`,`platform`,`th_url`,`th_filename`,`th_size`,`th_content_type`,`object_id`,`object_type`,`attr`,`create_time`) values ('1640720085169152001','6422f745f3b65e3e78993afb.png',1258550,'6422f745f3b65e3e78993afb.png','11.png','D:/Temp/test/','','png','image/png','local-1',NULL,NULL,0,NULL,NULL,NULL,'{}','2023-03-28 22:18:45');
insert  into `file_detail`(`id`,`url`,`size`,`filename`,`original_filename`,`base_path`,`path`,`ext`,`content_type`,`platform`,`th_url`,`th_filename`,`th_size`,`th_content_type`,`object_id`,`object_type`,`attr`,`create_time`) values ('1640720119193346049','6422f74ef3b65e3e78993afc.png',534473,'6422f74ef3b65e3e78993afc.png','22.png','D:/Temp/test/','','png','image/png','local-1',NULL,NULL,0,NULL,NULL,NULL,'{}','2023-03-28 22:18:54');
insert  into `file_detail`(`id`,`url`,`size`,`filename`,`original_filename`,`base_path`,`path`,`ext`,`content_type`,`platform`,`th_url`,`th_filename`,`th_size`,`th_content_type`,`object_id`,`object_type`,`attr`,`create_time`) values ('1640720140693348353','6422f753f3b65e3e78993afd.png',1131302,'6422f753f3b65e3e78993afd.png','33.png','D:/Temp/test/','','png','image/png','local-1',NULL,NULL,0,NULL,NULL,NULL,'{}','2023-03-28 22:18:59');
insert  into `file_detail`(`id`,`url`,`size`,`filename`,`original_filename`,`base_path`,`path`,`ext`,`content_type`,`platform`,`th_url`,`th_filename`,`th_size`,`th_content_type`,`object_id`,`object_type`,`attr`,`create_time`) values ('1640720159903260674','6422f757f3b65e3e78993afe.png',721935,'6422f757f3b65e3e78993afe.png','44.png','D:/Temp/test/','','png','image/png','local-1',NULL,NULL,0,NULL,NULL,NULL,'{}','2023-03-28 22:19:03');
insert  into `file_detail`(`id`,`url`,`size`,`filename`,`original_filename`,`base_path`,`path`,`ext`,`content_type`,`platform`,`th_url`,`th_filename`,`th_size`,`th_content_type`,`object_id`,`object_type`,`attr`,`create_time`) values ('1640720182183403521','6422f75df3b65e3e78993aff.png',1466703,'6422f75df3b65e3e78993aff.png','55.png','D:/Temp/test/','','png','image/png','local-1',NULL,NULL,0,NULL,NULL,NULL,'{}','2023-03-28 22:19:09');

/*Table structure for table `send_message` */

DROP TABLE IF EXISTS `send_message`;

CREATE TABLE `send_message` (
                                `content` varchar(50) DEFAULT NULL,
                                `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `send_message` */

insert  into `send_message`(`content`,`time`) values ('好好听课','2023-03-25 11:19:05');
insert  into `send_message`(`content`,`time`) values ('集中注意力','2023-03-22 12:40:08');
insert  into `send_message`(`content`,`time`) values ('不要走神','2023-03-23 12:41:23');
insert  into `send_message`(`content`,`time`) values ('12312312','2023-03-27 13:49:54');
insert  into `send_message`(`content`,`time`) values ('456456456','2023-03-27 13:50:28');
insert  into `send_message`(`content`,`time`) values ('杨伦终于把照片给我传上来了，哦吼吼吼吼吼吼吼吼','2023-03-27 13:56:10');
insert  into `send_message`(`content`,`time`) values ('123','2023-03-27 14:05:02');
insert  into `send_message`(`content`,`time`) values ('45645678','2023-03-27 14:05:29');
insert  into `send_message`(`content`,`time`) values ('ttttt','2023-03-27 14:05:36');
insert  into `send_message`(`content`,`time`) values ('asfasfasf','2023-03-27 14:21:50');
insert  into `send_message`(`content`,`time`) values ('asygwayqwaysdghasdhsadhdsahasd','2023-03-27 14:21:54');
insert  into `send_message`(`content`,`time`) values ('测试案例','2023-03-27 16:42:10');
insert  into `send_message`(`content`,`time`) values ('测试案例1','2023-03-27 19:33:25');
insert  into `send_message`(`content`,`time`) values ('测试案例2','2023-03-27 19:33:34');
insert  into `send_message`(`content`,`time`) values ('测试案例3','2023-03-27 19:33:37');
insert  into `send_message`(`content`,`time`) values ('测试案例4','2023-03-27 19:33:39');
insert  into `send_message`(`content`,`time`) values ('测试案例5','2023-03-27 19:33:41');
insert  into `send_message`(`content`,`time`) values ('测试案例6','2023-03-27 19:33:43');
insert  into `send_message`(`content`,`time`) values ('测试案例7','2023-03-27 19:33:45');
insert  into `send_message`(`content`,`time`) values ('测试案例8','2023-03-27 19:33:49');
insert  into `send_message`(`content`,`time`) values ('测试案例9','2023-03-27 19:33:53');
insert  into `send_message`(`content`,`time`) values ('测试案例10','2023-03-27 19:33:56');
insert  into `send_message`(`content`,`time`) values ('测试案例11','2023-03-27 19:39:28');
insert  into `send_message`(`content`,`time`) values ('测试案例12','2023-03-27 19:40:51');
insert  into `send_message`(`content`,`time`) values ('123','2023-03-28 10:59:29');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
                           `status` int(11) DEFAULT NULL,
                           `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`status`,`time`) values (0,'2023-03-25 11:19:38');
insert  into `student`(`status`,`time`) values (1,'2023-03-08 12:38:56');
insert  into `student`(`status`,`time`) values (1,'2023-03-16 12:39:00');
insert  into `student`(`status`,`time`) values (0,'2023-03-24 12:41:10');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
                        `user_name` varchar(50) DEFAULT NULL,
                        `pass_word` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`user_name`,`pass_word`) values ('15038139295','123456');
insert  into `user`(`user_name`,`pass_word`) values ('1','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
