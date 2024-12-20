/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuanyiqingfk
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuanyiqingfk` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuanyiqingfk`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'yuanxi_types','院系',1,'院系1',NULL,NULL,'2023-04-01 11:11:06'),(2,'yuanxi_types','院系',2,'院系2',NULL,NULL,'2023-04-01 11:11:06'),(3,'guanliliuy_types','身份',1,'教师',NULL,NULL,'2023-04-01 11:11:06'),(4,'guanliliuy_types','身份',2,'学生',NULL,NULL,'2023-04-01 11:11:06'),(5,'keshou_types','有无咳嗽',1,'有',NULL,NULL,'2023-04-01 11:11:06'),(6,'keshou_types','有无咳嗽',2,'无',NULL,NULL,'2023-04-01 11:11:06'),(7,'wuaichu_types','有无外出',1,'有',NULL,NULL,'2023-04-01 11:11:06'),(8,'wuaichu_types','有无外出',2,'无',NULL,NULL,'2023-04-01 11:11:06'),(9,'binghuan_types','是否接触病患',1,'有',NULL,NULL,'2023-04-01 11:11:06'),(10,'binghuan_types','是否接触病患',2,'无',NULL,NULL,'2023-04-01 11:11:06'),(11,'gaofengxian_types','是否出入高风险区域',1,'有',NULL,NULL,'2023-04-01 11:11:06'),(12,'gaofengxian_types','是否出入高风险区域',2,'无',NULL,NULL,'2023-04-01 11:11:06'),(13,'meirixinxi_types','信息类型',1,'信息类型1',NULL,NULL,'2023-04-01 11:11:06'),(14,'meirixinxi_types','信息类型',2,'信息类型2',NULL,NULL,'2023-04-01 11:11:06'),(15,'meirixinxi_types','信息类型',3,'信息类型3',NULL,NULL,'2023-04-01 11:11:06'),(16,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-01 11:11:06'),(17,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-01 11:11:06'),(18,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2023-04-01 11:11:06'),(19,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-01 11:11:06'),(20,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-01 11:11:06'),(21,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-01 11:11:06'),(22,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-01 11:11:07');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `fudaoyuan_id` int(11) DEFAULT NULL COMMENT '辅导员',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '防疫人员',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`fudaoyuan_id`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',NULL,1,NULL,'发布内容1',442,1,'2023-04-01 11:11:16','2023-04-01 11:11:16','2023-04-01 11:11:16'),(2,'帖子标题2',NULL,1,NULL,'发布内容2',169,1,'2023-04-01 11:11:16','2023-04-01 11:11:16','2023-04-01 11:11:16'),(3,'帖子标题3',NULL,2,NULL,'发布内容3',21,1,'2023-04-01 11:11:16','2023-04-01 11:11:16','2023-04-01 11:11:16'),(4,'帖子标题4',NULL,3,NULL,'发布内容4',47,1,'2023-04-01 11:11:16','2023-04-01 11:11:16','2023-04-01 11:11:16'),(5,'帖子标题5',NULL,2,NULL,'发布内容5',57,1,'2023-04-01 11:11:16','2023-04-01 11:11:16','2023-04-01 11:11:16'),(6,'帖子标题6',NULL,3,NULL,'发布内容6',455,1,'2023-04-01 11:11:16','2023-04-01 11:11:16','2023-04-01 11:11:16'),(7,'帖子标题7',NULL,2,NULL,'发布内容7',337,1,'2023-04-01 11:11:16','2023-04-01 11:11:16','2023-04-01 11:11:16'),(8,'帖子标题8',NULL,3,NULL,'发布内容8',271,1,'2023-04-01 11:11:16','2023-04-01 11:11:16','2023-04-01 11:11:16'),(9,'帖子标题9',NULL,2,NULL,'发布内容9',236,1,'2023-04-01 11:11:16','2023-04-01 11:11:16','2023-04-01 11:11:16'),(10,'帖子标题10',NULL,2,NULL,'发布内容10',376,1,'2023-04-01 11:11:16','2023-04-01 11:11:16','2023-04-01 11:11:16'),(11,'帖子标题11',NULL,2,NULL,'发布内容11',333,1,'2023-04-01 11:11:16','2023-04-01 11:11:16','2023-04-01 11:11:16'),(12,'帖子标题12',NULL,2,NULL,'发布内容12',196,1,'2023-04-01 11:11:16','2023-04-01 11:11:16','2023-04-01 11:11:16'),(13,'帖子标题13',NULL,3,NULL,'发布内容13',427,1,'2023-04-01 11:11:16','2023-04-01 11:11:16','2023-04-01 11:11:16'),(14,'帖子标题14',NULL,3,NULL,'发布内容14',487,1,'2023-04-01 11:11:16','2023-04-01 11:11:16','2023-04-01 11:11:16'),(15,NULL,1,NULL,NULL,'11111111111111',14,2,'2023-04-01 11:27:56',NULL,'2023-04-01 11:27:56'),(16,NULL,NULL,1,NULL,'222222222222',14,2,'2023-04-01 11:29:47',NULL,'2023-04-01 11:29:47');

/*Table structure for table `fudaoyuan` */

DROP TABLE IF EXISTS `fudaoyuan`;

CREATE TABLE `fudaoyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `fudaoyuan_name` varchar(200) DEFAULT NULL COMMENT '辅导员名称 Search111 ',
  `fudaoyuan_phone` varchar(200) DEFAULT NULL COMMENT '辅导员手机号',
  `fudaoyuan_id_number` varchar(200) DEFAULT NULL COMMENT '辅导员身份证号',
  `fudaoyuan_photo` varchar(200) DEFAULT NULL COMMENT '辅导员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `fudaoyuan_email` varchar(200) DEFAULT NULL COMMENT '辅导员邮箱',
  `fudaoyuan_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='辅导员';

/*Data for the table `fudaoyuan` */

insert  into `fudaoyuan`(`id`,`username`,`password`,`fudaoyuan_name`,`fudaoyuan_phone`,`fudaoyuan_id_number`,`fudaoyuan_photo`,`sex_types`,`fudaoyuan_email`,`fudaoyuan_delete`,`insert_time`,`create_time`) values (1,'a1','123456','辅导员名称1','17703786901','410224199010102001','upload/fudaoyuan1.jpg',2,'1@qq.com',1,'2023-04-01 11:11:16','2023-04-01 11:11:16'),(2,'a2','123456','辅导员名称2','17703786902','410224199010102002','upload/fudaoyuan2.jpg',1,'2@qq.com',1,'2023-04-01 11:11:16','2023-04-01 11:11:16'),(3,'a3','123456','辅导员名称3','17703786903','410224199010102003','upload/fudaoyuan3.jpg',1,'3@qq.com',1,'2023-04-01 11:11:16','2023-04-01 11:11:16');

/*Table structure for table `guanliliuy` */

DROP TABLE IF EXISTS `guanliliuy`;

CREATE TABLE `guanliliuy` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '防疫人员',
  `guanliliuy_name` varchar(200) DEFAULT NULL COMMENT '姓名  Search111 ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `guanliliuy_types` int(200) DEFAULT NULL COMMENT '身份  Search111 ',
  `yuanxi_types` int(200) DEFAULT NULL COMMENT '院系  Search111 ',
  `guanliliuy_tiwen` decimal(10,2) DEFAULT NULL COMMENT '当天体温',
  `keshou_types` int(200) DEFAULT NULL COMMENT '有无咳嗽',
  `wuaichu_types` int(200) DEFAULT NULL COMMENT '有无外出',
  `guanliliuy_didian` varchar(200) DEFAULT NULL COMMENT '外出地点',
  `binghuan_types` int(200) DEFAULT NULL COMMENT '是否接触病患',
  `gaofengxian_types` int(200) DEFAULT NULL COMMENT '是否出入高风险区域',
  `guanliliuy_content` longtext COMMENT '健康情况详情 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='师生健康';

/*Data for the table `guanliliuy` */

insert  into `guanliliuy`(`id`,`yonghu_id`,`guanliliuy_name`,`sex_types`,`guanliliuy_types`,`yuanxi_types`,`guanliliuy_tiwen`,`keshou_types`,`wuaichu_types`,`guanliliuy_didian`,`binghuan_types`,`gaofengxian_types`,`guanliliuy_content`,`insert_time`,`create_time`) values (1,2,'姓名1',2,2,2,'890.94',1,2,'外出地点1',2,2,'健康情况详情1','2023-04-01 11:11:16','2023-04-01 11:11:16'),(2,1,'姓名2',1,1,1,'436.45',1,1,'外出地点2',1,1,'健康情况详情2','2023-04-01 11:11:16','2023-04-01 11:11:16'),(3,1,'姓名3',2,1,1,'515.17',1,2,'外出地点3',2,1,'健康情况详情3','2023-04-01 11:11:16','2023-04-01 11:11:16'),(4,3,'姓名4',2,1,1,'447.15',2,2,'外出地点4',1,1,'健康情况详情4','2023-04-01 11:11:16','2023-04-01 11:11:16'),(5,1,'姓名5',2,2,1,'774.54',1,2,'外出地点5',1,2,'健康情况详情5','2023-04-01 11:11:16','2023-04-01 11:11:16'),(6,2,'姓名6',1,2,2,'147.34',1,1,'外出地点6',1,1,'健康情况详情6','2023-04-01 11:11:16','2023-04-01 11:11:16'),(7,2,'姓名7',1,1,1,'827.25',2,2,'外出地点7',2,2,'健康情况详情7','2023-04-01 11:11:16','2023-04-01 11:11:16'),(8,2,'姓名8',2,2,2,'221.43',2,2,'外出地点8',2,2,'健康情况详情8','2023-04-01 11:11:16','2023-04-01 11:11:16'),(9,2,'姓名9',1,2,2,'800.11',2,2,'外出地点9',1,2,'健康情况详情9','2023-04-01 11:11:16','2023-04-01 11:11:16'),(10,3,'姓名10',1,2,2,'921.06',2,1,'外出地点10',1,1,'健康情况详情10','2023-04-01 11:11:16','2023-04-01 11:11:16'),(11,2,'姓名11',2,1,1,'272.60',1,2,'外出地点11',2,1,'健康情况详情11','2023-04-01 11:11:16','2023-04-01 11:11:16'),(12,2,'姓名12',2,1,2,'734.61',2,1,'外出地点12',2,1,'健康情况详情12','2023-04-01 11:11:16','2023-04-01 11:11:16'),(13,3,'姓名13',1,1,1,'783.25',1,1,'外出地点13',1,2,'健康情况详情13','2023-04-01 11:11:16','2023-04-01 11:11:16'),(14,3,'姓名14',1,2,2,'635.05',1,1,'外出地点14',2,2,'健康情况详情14','2023-04-01 11:11:16','2023-04-01 11:11:16'),(15,1,'张三',2,1,1,'36.80',1,2,'无',1,2,'正常','2023-04-01 11:30:24','2023-04-01 11:30:24');

/*Table structure for table `meirixinxi` */

DROP TABLE IF EXISTS `meirixinxi`;

CREATE TABLE `meirixinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `meirixinxi_name` varchar(200) DEFAULT NULL COMMENT '信息标题  Search111 ',
  `meirixinxi_types` int(11) DEFAULT NULL COMMENT '信息类型  Search111 ',
  `meirixinxi_photo` varchar(200) DEFAULT NULL COMMENT '信息图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `meirixinxi_content` longtext COMMENT '信息详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='每日信息';

/*Data for the table `meirixinxi` */

insert  into `meirixinxi`(`id`,`meirixinxi_name`,`meirixinxi_types`,`meirixinxi_photo`,`insert_time`,`meirixinxi_content`,`create_time`) values (1,'信息标题1',3,'upload/meirixinxi1.jpg','2023-04-01 11:11:16','信息详情1','2023-04-01 11:11:16'),(2,'信息标题2',3,'upload/meirixinxi2.jpg','2023-04-01 11:11:16','信息详情2','2023-04-01 11:11:16'),(3,'信息标题3',2,'upload/meirixinxi3.jpg','2023-04-01 11:11:16','信息详情3','2023-04-01 11:11:16'),(4,'信息标题4',1,'upload/meirixinxi4.jpg','2023-04-01 11:11:16','信息详情4','2023-04-01 11:11:16'),(5,'信息标题5',2,'upload/meirixinxi5.jpg','2023-04-01 11:11:16','信息详情5','2023-04-01 11:11:16'),(6,'信息标题6',3,'upload/meirixinxi6.jpg','2023-04-01 11:11:16','信息详情6','2023-04-01 11:11:16'),(7,'信息标题7',3,'upload/meirixinxi7.jpg','2023-04-01 11:11:16','信息详情7','2023-04-01 11:11:16'),(8,'信息标题8',1,'upload/meirixinxi8.jpg','2023-04-01 11:11:16','信息详情8','2023-04-01 11:11:16'),(9,'信息标题9',2,'upload/meirixinxi9.jpg','2023-04-01 11:11:16','信息详情9','2023-04-01 11:11:16'),(10,'信息标题10',2,'upload/meirixinxi10.jpg','2023-04-01 11:11:16','信息详情10','2023-04-01 11:11:16'),(11,'信息标题11',2,'upload/meirixinxi11.jpg','2023-04-01 11:11:16','信息详情11','2023-04-01 11:11:16'),(12,'信息标题12',3,'upload/meirixinxi12.jpg','2023-04-01 11:11:16','信息详情12','2023-04-01 11:11:16'),(13,'信息标题13',2,'upload/meirixinxi13.jpg','2023-04-01 11:11:16','信息详情13','2023-04-01 11:11:16'),(14,'信息标题14',3,'upload/meirixinxi14.jpg','2023-04-01 11:11:16','信息详情14','2023-04-01 11:11:16');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'upload/news1.jpg','2023-04-01 11:11:16','公告详情1','2023-04-01 11:11:16'),(2,'公告标题2',1,'upload/news2.jpg','2023-04-01 11:11:16','公告详情2','2023-04-01 11:11:16'),(3,'公告标题3',3,'upload/news3.jpg','2023-04-01 11:11:16','公告详情3','2023-04-01 11:11:16'),(4,'公告标题4',1,'upload/news4.jpg','2023-04-01 11:11:16','公告详情4','2023-04-01 11:11:16'),(5,'公告标题5',1,'upload/news5.jpg','2023-04-01 11:11:16','公告详情5','2023-04-01 11:11:16'),(6,'公告标题6',2,'upload/news6.jpg','2023-04-01 11:11:16','公告详情6','2023-04-01 11:11:16'),(7,'公告标题7',3,'upload/news7.jpg','2023-04-01 11:11:16','公告详情7','2023-04-01 11:11:16'),(8,'公告标题8',1,'upload/news8.jpg','2023-04-01 11:11:16','公告详情8','2023-04-01 11:11:16'),(9,'公告标题9',3,'upload/news9.jpg','2023-04-01 11:11:16','公告详情9','2023-04-01 11:11:16'),(10,'公告标题10',1,'upload/news10.jpg','2023-04-01 11:11:16','公告详情10','2023-04-01 11:11:16'),(11,'公告标题11',1,'upload/news11.jpg','2023-04-01 11:11:16','公告详情11','2023-04-01 11:11:16'),(12,'公告标题12',3,'upload/news12.jpg','2023-04-01 11:11:16','公告详情12','2023-04-01 11:11:16'),(13,'公告标题13',2,'upload/news13.jpg','2023-04-01 11:11:16','公告详情13','2023-04-01 11:11:16'),(14,'公告标题14',1,'upload/news14.jpg','2023-04-01 11:11:16','公告详情14','2023-04-01 11:11:16');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '管理id',
  `username` varchar(100) NOT NULL COMMENT '管理名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','r9trz06hbgs91v4k9tj9bw2ogh604yt3','2023-04-01 11:23:43','2023-04-01 12:32:45'),(2,1,'a1','yonghu','防疫人员','iz4us4pffnzp0le8tce74tt6xab7tuhh','2023-04-01 11:26:03','2023-04-01 12:29:22'),(3,1,'a1','fudaoyuan','辅导员','z8eix6u8p12ahqztbgl5tuu84q626i3s','2023-04-01 11:26:47','2023-04-01 12:26:48');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '医院名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-01 11:11:06');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '防疫人员名称 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '防疫人员手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '防疫人员身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '防疫人员头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '防疫人员邮箱',
  `yonghu_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='防疫人员';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','防疫人员名称1','17703786901','410224199010102001','upload/yonghu1.jpg',1,'1@qq.com',1,'2023-04-01 11:11:16','2023-04-01 11:11:16'),(2,'a2','123456','防疫人员名称2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com',1,'2023-04-01 11:11:16','2023-04-01 11:11:16'),(3,'a3','123456','防疫人员名称3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com',1,'2023-04-01 11:11:16','2023-04-01 11:11:16');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
