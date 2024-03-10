/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - gaoxiaodangfeishoujiao
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gaoxiaodangfeishoujiao` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `gaoxiaodangfeishoujiao`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/gaoxiaodangfeishoujiao/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/gaoxiaodangfeishoujiao/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/gaoxiaodangfeishoujiao/upload/config3.jpg');

/*Table structure for table `dangfeishoujiao` */

DROP TABLE IF EXISTS `dangfeishoujiao`;

CREATE TABLE `dangfeishoujiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dangfeishoujiao_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `dangfeishoujiao_file` varchar(200) DEFAULT NULL COMMENT '党费文件',
  `dangfeishoujiao_types` int(11) DEFAULT NULL COMMENT '缴费状态 Search111',
  `dangfeishoujiao_money` decimal(10,2) DEFAULT NULL COMMENT '缴纳金额',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='党费收缴';

/*Data for the table `dangfeishoujiao` */

insert  into `dangfeishoujiao`(`id`,`dangfeishoujiao_name`,`dangfeishoujiao_file`,`dangfeishoujiao_types`,`dangfeishoujiao_money`,`yonghu_id`,`insert_time`,`create_time`) values (1,'标题1','http://localhost:8080/gaoxiaodangfeishoujiao/upload/file.rar',1,'144.03',1,'2022-04-27 17:09:28','2022-04-27 17:09:28'),(2,'标题2','http://localhost:8080/gaoxiaodangfeishoujiao/upload/file.rar',1,'188.95',1,'2022-04-27 17:09:28','2022-04-27 17:09:28'),(3,'标题3','http://localhost:8080/gaoxiaodangfeishoujiao/upload/file.rar',1,'663.34',1,'2022-04-27 17:09:28','2022-04-27 17:09:28'),(4,'标题4','http://localhost:8080/gaoxiaodangfeishoujiao/upload/file.rar',1,'737.95',1,'2022-04-27 17:09:28','2022-04-27 17:09:28'),(5,'标题5','http://localhost:8080/gaoxiaodangfeishoujiao/upload/file.rar',2,'76.67',1,'2022-04-27 17:09:28','2022-04-27 17:09:28');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'dangfeishoujiao_types','缴费状态',1,'未缴费',NULL,NULL,'2022-04-27 17:09:20'),(2,'dangfeishoujiao_types','缴费状态',2,'已缴费',NULL,NULL,'2022-04-27 17:09:20'),(3,'news_types','新闻类型',1,'新闻类型1',NULL,NULL,'2022-04-27 17:09:20'),(4,'news_types','新闻类型',2,'新闻类型2',NULL,NULL,'2022-04-27 17:09:20'),(5,'news_types','新闻类型',3,'新闻类型3',NULL,NULL,'2022-04-27 17:09:20'),(6,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-27 17:09:20'),(7,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-27 17:09:20'),(8,'sex_types','性别',1,'男',NULL,NULL,'2022-04-27 17:09:20'),(9,'sex_types','性别',2,'女',NULL,NULL,'2022-04-27 17:09:20'),(10,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-27 17:09:20'),(11,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-27 17:09:20');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛信息';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',NULL,1,'2022-04-27 17:09:28','2022-04-27 17:09:28','2022-04-27 17:09:28'),(2,'帖子标题2',1,NULL,'发布内容2',NULL,1,'2022-04-27 17:09:28','2022-04-27 17:09:28','2022-04-27 17:09:28'),(3,'帖子标题3',1,NULL,'发布内容3',NULL,1,'2022-04-27 17:09:28','2022-04-27 17:09:28','2022-04-27 17:09:28'),(4,'帖子标题4',2,NULL,'发布内容4',NULL,1,'2022-04-27 17:09:28','2022-04-27 17:09:28','2022-04-27 17:09:28'),(5,'帖子标题5',3,NULL,'发布内容5',NULL,1,'2022-04-27 17:09:28','2022-04-27 17:09:28','2022-04-27 17:09:28'),(6,NULL,NULL,1,'123',5,2,'2022-04-27 17:59:25',NULL,'2022-04-27 17:59:25'),(7,NULL,1,NULL,'321',5,2,'2022-04-27 19:11:24',NULL,'2022-04-27 19:11:24');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','http://localhost:8080/gaoxiaodangfeishoujiao/upload/gonggao1.jpg',1,'2022-04-27 17:09:28','公告详情1','2022-04-27 17:09:28'),(2,'公告名称2','http://localhost:8080/gaoxiaodangfeishoujiao/upload/gonggao2.jpg',2,'2022-04-27 17:09:28','公告详情2','2022-04-27 17:09:28'),(3,'公告名称3','http://localhost:8080/gaoxiaodangfeishoujiao/upload/gonggao3.jpg',1,'2022-04-27 17:09:28','公告详情3','2022-04-27 17:09:28'),(4,'公告名称4','http://localhost:8080/gaoxiaodangfeishoujiao/upload/gonggao4.jpg',1,'2022-04-27 17:09:28','公告详情4','2022-04-27 17:09:28'),(5,'公告名称5','http://localhost:8080/gaoxiaodangfeishoujiao/upload/gonggao5.jpg',2,'2022-04-27 17:09:28','公告详情5','2022-04-27 17:09:28');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='新闻动态';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'新闻标题1',1,'http://localhost:8080/gaoxiaodangfeishoujiao/upload/news1.jpg','2022-04-27 17:09:28','新闻详情1','2022-04-27 17:09:28'),(2,'新闻标题2',1,'http://localhost:8080/gaoxiaodangfeishoujiao/upload/news2.jpg','2022-04-27 17:09:28','新闻详情2','2022-04-27 17:09:28'),(3,'新闻标题3',2,'http://localhost:8080/gaoxiaodangfeishoujiao/upload/news3.jpg','2022-04-27 17:09:28','新闻详情3','2022-04-27 17:09:28'),(4,'新闻标题4',2,'http://localhost:8080/gaoxiaodangfeishoujiao/upload/news4.jpg','2022-04-27 17:09:28','新闻详情4','2022-04-27 17:09:28'),(5,'新闻标题5',2,'http://localhost:8080/gaoxiaodangfeishoujiao/upload/news5.jpg','2022-04-27 17:09:28','新闻详情5','2022-04-27 17:09:28');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','s2luz6z7e4ze7caizdmhbxawh2dxpc0o','2022-04-27 17:29:23','2022-05-23 15:34:04'),(2,1,'admin','users','管理员','0u6p5im0tl8mo7l291aw9s2u1viu6h4m','2022-04-27 17:56:56','2022-05-23 15:37:16');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_email`,`new_money`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/gaoxiaodangfeishoujiao/upload/yonghu1.jpg',2,'17703786901','1@qq.com','100.00',1,'2022-04-27 17:09:28','2022-04-27 17:09:28'),(2,'a2','123456','用户姓名2','http://localhost:8080/gaoxiaodangfeishoujiao/upload/yonghu2.jpg',1,'17703786902','2@qq.com','999.00',1,'2022-04-27 17:09:28','2022-04-27 17:09:28'),(3,'a3','123456','用户姓名3','http://localhost:8080/gaoxiaodangfeishoujiao/upload/yonghu3.jpg',1,'17703786903','3@qq.com','9999.00',1,'2022-04-27 17:09:28','2022-04-27 17:09:28');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
