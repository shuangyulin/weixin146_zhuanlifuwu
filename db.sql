/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssma2kb6
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssma2kb6` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssma2kb6`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssma2kb6/upload/picture1.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssma2kb6/upload/picture2.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssma2kb6/upload/picture3.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `fenleihao` */

DROP TABLE IF EXISTS `fenleihao`;

CREATE TABLE `fenleihao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `fenleihao` varchar(200) DEFAULT NULL COMMENT '分类号',
  `fenleishuoming` longtext COMMENT '分类说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='分类号';

/*Data for the table `fenleihao` */

insert  into `fenleihao`(`id`,`addtime`,`fenleihao`,`fenleishuoming`) values (31,'2021-04-26 14:01:47','分类号1','分类说明1');
insert  into `fenleihao`(`id`,`addtime`,`fenleihao`,`fenleishuoming`) values (32,'2021-04-26 14:01:47','分类号2','分类说明2');
insert  into `fenleihao`(`id`,`addtime`,`fenleihao`,`fenleishuoming`) values (33,'2021-04-26 14:01:47','分类号3','分类说明3');
insert  into `fenleihao`(`id`,`addtime`,`fenleihao`,`fenleishuoming`) values (34,'2021-04-26 14:01:47','分类号4','分类说明4');
insert  into `fenleihao`(`id`,`addtime`,`fenleihao`,`fenleishuoming`) values (35,'2021-04-26 14:01:47','分类号5','分类说明5');
insert  into `fenleihao`(`id`,`addtime`,`fenleihao`,`fenleishuoming`) values (36,'2021-04-26 14:01:47','分类号6','分类说明6');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='专利资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (81,'2021-04-26 14:01:47','标题1','简介1','http://localhost:8080/ssma2kb6/upload/news_picture1.jpg','内容1');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (82,'2021-04-26 14:01:47','标题2','简介2','http://localhost:8080/ssma2kb6/upload/news_picture2.jpg','内容2');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (83,'2021-04-26 14:01:47','标题3','简介3','http://localhost:8080/ssma2kb6/upload/news_picture3.jpg','内容3');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (84,'2021-04-26 14:01:47','标题4','简介4','http://localhost:8080/ssma2kb6/upload/news_picture4.jpg','内容4');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (85,'2021-04-26 14:01:47','标题5','简介5','http://localhost:8080/ssma2kb6/upload/news_picture5.jpg','内容5');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (86,'2021-04-26 14:01:47','标题6','简介6','http://localhost:8080/ssma2kb6/upload/news_picture6.jpg','内容6');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-26 14:01:47');

/*Table structure for table `yewuzhidaoxinxi` */

DROP TABLE IF EXISTS `yewuzhidaoxinxi`;

CREATE TABLE `yewuzhidaoxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `neirong` longtext COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='业务指导信息';

/*Data for the table `yewuzhidaoxinxi` */

insert  into `yewuzhidaoxinxi`(`id`,`addtime`,`biaoti`,`tupian`,`neirong`) values (61,'2021-04-26 14:01:47','标题1','http://localhost:8080/ssma2kb6/upload/yewuzhidaoxinxi_tupian1.jpg','内容1');
insert  into `yewuzhidaoxinxi`(`id`,`addtime`,`biaoti`,`tupian`,`neirong`) values (62,'2021-04-26 14:01:47','标题2','http://localhost:8080/ssma2kb6/upload/yewuzhidaoxinxi_tupian2.jpg','内容2');
insert  into `yewuzhidaoxinxi`(`id`,`addtime`,`biaoti`,`tupian`,`neirong`) values (63,'2021-04-26 14:01:47','标题3','http://localhost:8080/ssma2kb6/upload/yewuzhidaoxinxi_tupian3.jpg','内容3');
insert  into `yewuzhidaoxinxi`(`id`,`addtime`,`biaoti`,`tupian`,`neirong`) values (64,'2021-04-26 14:01:47','标题4','http://localhost:8080/ssma2kb6/upload/yewuzhidaoxinxi_tupian4.jpg','内容4');
insert  into `yewuzhidaoxinxi`(`id`,`addtime`,`biaoti`,`tupian`,`neirong`) values (65,'2021-04-26 14:01:47','标题5','http://localhost:8080/ssma2kb6/upload/yewuzhidaoxinxi_tupian5.jpg','内容5');
insert  into `yewuzhidaoxinxi`(`id`,`addtime`,`biaoti`,`tupian`,`neirong`) values (66,'2021-04-26 14:01:47','标题6','http://localhost:8080/ssma2kb6/upload/yewuzhidaoxinxi_tupian6.jpg','内容6');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (11,'2021-04-26 14:01:47','用户1','123456','姓名1','男',1,'13823888881','773890001@qq.com','http://localhost:8080/ssma2kb6/upload/yonghu_touxiang1.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (12,'2021-04-26 14:01:47','用户2','123456','姓名2','男',2,'13823888882','773890002@qq.com','http://localhost:8080/ssma2kb6/upload/yonghu_touxiang2.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (13,'2021-04-26 14:01:47','用户3','123456','姓名3','男',3,'13823888883','773890003@qq.com','http://localhost:8080/ssma2kb6/upload/yonghu_touxiang3.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (14,'2021-04-26 14:01:47','用户4','123456','姓名4','男',4,'13823888884','773890004@qq.com','http://localhost:8080/ssma2kb6/upload/yonghu_touxiang4.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (15,'2021-04-26 14:01:47','用户5','123456','姓名5','男',5,'13823888885','773890005@qq.com','http://localhost:8080/ssma2kb6/upload/yonghu_touxiang5.jpg');
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`xingbie`,`nianling`,`shouji`,`youxiang`,`touxiang`) values (16,'2021-04-26 14:01:47','用户6','123456','姓名6','男',6,'13823888886','773890006@qq.com','http://localhost:8080/ssma2kb6/upload/yonghu_touxiang6.jpg');

/*Table structure for table `zengzhifuwu` */

DROP TABLE IF EXISTS `zengzhifuwu`;

CREATE TABLE `zengzhifuwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenqingbianhao` varchar(200) DEFAULT NULL COMMENT '申请编号',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `fuwu` varchar(200) DEFAULT NULL COMMENT '服务',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='增值服务';

/*Data for the table `zengzhifuwu` */

insert  into `zengzhifuwu`(`id`,`addtime`,`shenqingbianhao`,`yonghuming`,`xingming`,`fuwu`,`beizhu`,`sfsh`,`shhf`,`userid`) values (51,'2021-04-26 14:01:47','申请编号1','用户名1','姓名1','著录项目变更','备注1','是','',1);
insert  into `zengzhifuwu`(`id`,`addtime`,`shenqingbianhao`,`yonghuming`,`xingming`,`fuwu`,`beizhu`,`sfsh`,`shhf`,`userid`) values (52,'2021-04-26 14:01:47','申请编号2','用户名2','姓名2','著录项目变更','备注2','是','',2);
insert  into `zengzhifuwu`(`id`,`addtime`,`shenqingbianhao`,`yonghuming`,`xingming`,`fuwu`,`beizhu`,`sfsh`,`shhf`,`userid`) values (53,'2021-04-26 14:01:47','申请编号3','用户名3','姓名3','著录项目变更','备注3','是','',3);
insert  into `zengzhifuwu`(`id`,`addtime`,`shenqingbianhao`,`yonghuming`,`xingming`,`fuwu`,`beizhu`,`sfsh`,`shhf`,`userid`) values (54,'2021-04-26 14:01:47','申请编号4','用户名4','姓名4','著录项目变更','备注4','是','',4);
insert  into `zengzhifuwu`(`id`,`addtime`,`shenqingbianhao`,`yonghuming`,`xingming`,`fuwu`,`beizhu`,`sfsh`,`shhf`,`userid`) values (55,'2021-04-26 14:01:47','申请编号5','用户名5','姓名5','著录项目变更','备注5','是','',5);
insert  into `zengzhifuwu`(`id`,`addtime`,`shenqingbianhao`,`yonghuming`,`xingming`,`fuwu`,`beizhu`,`sfsh`,`shhf`,`userid`) values (56,'2021-04-26 14:01:47','申请编号6','用户名6','姓名6','著录项目变更','备注6','是','',6);

/*Table structure for table `zhuanli` */

DROP TABLE IF EXISTS `zhuanli`;

CREATE TABLE `zhuanli` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhuanlihao` varchar(200) DEFAULT NULL COMMENT '专利号',
  `zhuanlimingcheng` varchar(200) DEFAULT NULL COMMENT '专利名称',
  `shenqingren` varchar(200) DEFAULT NULL COMMENT '申请人',
  `xietongzuozhe` varchar(200) DEFAULT NULL COMMENT '协同作者',
  `zhuanlileixing` varchar(200) DEFAULT NULL COMMENT '专利类型',
  `shenqingleixing` varchar(200) DEFAULT NULL COMMENT '申请类型',
  `fenleihao` varchar(200) DEFAULT NULL COMMENT '分类号',
  `guanjianci` varchar(200) DEFAULT NULL COMMENT '关键词',
  `shuomingshu` varchar(200) DEFAULT NULL COMMENT '说明书',
  `zhuanlitupian` varchar(200) DEFAULT NULL COMMENT '专利图片',
  `riqi` date DEFAULT NULL COMMENT '日期',
  `zhuanlibeizhu` longtext COMMENT '专利备注',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhuanlihao` (`zhuanlihao`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='专利';

/*Data for the table `zhuanli` */

insert  into `zhuanli`(`id`,`addtime`,`zhuanlihao`,`zhuanlimingcheng`,`shenqingren`,`xietongzuozhe`,`zhuanlileixing`,`shenqingleixing`,`fenleihao`,`guanjianci`,`shuomingshu`,`zhuanlitupian`,`riqi`,`zhuanlibeizhu`,`sfsh`,`shhf`,`userid`) values (41,'2021-04-26 14:01:47','专利号1','专利名称1','申请人1','协同作者1','发明专利','国内专利','分类号1','关键词1','','http://localhost:8080/ssma2kb6/upload/zhuanli_zhuanlitupian1.jpg','2021-04-26','专利备注1','是','',1);
insert  into `zhuanli`(`id`,`addtime`,`zhuanlihao`,`zhuanlimingcheng`,`shenqingren`,`xietongzuozhe`,`zhuanlileixing`,`shenqingleixing`,`fenleihao`,`guanjianci`,`shuomingshu`,`zhuanlitupian`,`riqi`,`zhuanlibeizhu`,`sfsh`,`shhf`,`userid`) values (42,'2021-04-26 14:01:47','专利号2','专利名称2','申请人2','协同作者2','发明专利','国内专利','分类号2','关键词2','','http://localhost:8080/ssma2kb6/upload/zhuanli_zhuanlitupian2.jpg','2021-04-26','专利备注2','是','',2);
insert  into `zhuanli`(`id`,`addtime`,`zhuanlihao`,`zhuanlimingcheng`,`shenqingren`,`xietongzuozhe`,`zhuanlileixing`,`shenqingleixing`,`fenleihao`,`guanjianci`,`shuomingshu`,`zhuanlitupian`,`riqi`,`zhuanlibeizhu`,`sfsh`,`shhf`,`userid`) values (43,'2021-04-26 14:01:47','专利号3','专利名称3','申请人3','协同作者3','发明专利','国内专利','分类号3','关键词3','','http://localhost:8080/ssma2kb6/upload/zhuanli_zhuanlitupian3.jpg','2021-04-26','专利备注3','是','',3);
insert  into `zhuanli`(`id`,`addtime`,`zhuanlihao`,`zhuanlimingcheng`,`shenqingren`,`xietongzuozhe`,`zhuanlileixing`,`shenqingleixing`,`fenleihao`,`guanjianci`,`shuomingshu`,`zhuanlitupian`,`riqi`,`zhuanlibeizhu`,`sfsh`,`shhf`,`userid`) values (44,'2021-04-26 14:01:47','专利号4','专利名称4','申请人4','协同作者4','发明专利','国内专利','分类号4','关键词4','','http://localhost:8080/ssma2kb6/upload/zhuanli_zhuanlitupian4.jpg','2021-04-26','专利备注4','是','',4);
insert  into `zhuanli`(`id`,`addtime`,`zhuanlihao`,`zhuanlimingcheng`,`shenqingren`,`xietongzuozhe`,`zhuanlileixing`,`shenqingleixing`,`fenleihao`,`guanjianci`,`shuomingshu`,`zhuanlitupian`,`riqi`,`zhuanlibeizhu`,`sfsh`,`shhf`,`userid`) values (45,'2021-04-26 14:01:47','专利号5','专利名称5','申请人5','协同作者5','发明专利','国内专利','分类号5','关键词5','','http://localhost:8080/ssma2kb6/upload/zhuanli_zhuanlitupian5.jpg','2021-04-26','专利备注5','是','',5);
insert  into `zhuanli`(`id`,`addtime`,`zhuanlihao`,`zhuanlimingcheng`,`shenqingren`,`xietongzuozhe`,`zhuanlileixing`,`shenqingleixing`,`fenleihao`,`guanjianci`,`shuomingshu`,`zhuanlitupian`,`riqi`,`zhuanlibeizhu`,`sfsh`,`shhf`,`userid`) values (46,'2021-04-26 14:01:47','专利号6','专利名称6','申请人6','协同作者6','发明专利','国内专利','分类号6','关键词6','','http://localhost:8080/ssma2kb6/upload/zhuanli_zhuanlitupian6.jpg','2021-04-26','专利备注6','是','',6);

/*Table structure for table `zhuanlishenqing` */

DROP TABLE IF EXISTS `zhuanlishenqing`;

CREATE TABLE `zhuanlishenqing` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shenqingbianhao` varchar(200) DEFAULT NULL COMMENT '申请编号',
  `zhuanlimingcheng` varchar(200) DEFAULT NULL COMMENT '专利名称',
  `shenqingren` varchar(200) DEFAULT NULL COMMENT '申请人',
  `xietongzuozhe` varchar(200) DEFAULT NULL COMMENT '协同作者',
  `zhuanlileixing` varchar(200) DEFAULT NULL COMMENT '专利类型',
  `shenqingleixing` varchar(200) DEFAULT NULL COMMENT '申请类型',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `fenleihao` varchar(200) DEFAULT NULL COMMENT '分类号',
  `guanjianci` varchar(200) DEFAULT NULL COMMENT '关键词',
  `shuomingshu` varchar(200) DEFAULT NULL COMMENT '说明书',
  `zhuanlitupian` varchar(200) DEFAULT NULL COMMENT '专利图片',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `userid` bigint(20) DEFAULT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shenqingbianhao` (`shenqingbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='专利申请';

/*Data for the table `zhuanlishenqing` */

insert  into `zhuanlishenqing`(`id`,`addtime`,`shenqingbianhao`,`zhuanlimingcheng`,`shenqingren`,`xietongzuozhe`,`zhuanlileixing`,`shenqingleixing`,`beizhu`,`fenleihao`,`guanjianci`,`shuomingshu`,`zhuanlitupian`,`yonghuming`,`sfsh`,`shhf`,`userid`) values (21,'2021-04-26 14:01:47','申请编号1','专利名称1','申请人1','协同作者1','发明专利','国内专利','备注1','分类号1','关键词1','','http://localhost:8080/ssma2kb6/upload/zhuanlishenqing_zhuanlitupian1.jpg','用户名1','是','',1);
insert  into `zhuanlishenqing`(`id`,`addtime`,`shenqingbianhao`,`zhuanlimingcheng`,`shenqingren`,`xietongzuozhe`,`zhuanlileixing`,`shenqingleixing`,`beizhu`,`fenleihao`,`guanjianci`,`shuomingshu`,`zhuanlitupian`,`yonghuming`,`sfsh`,`shhf`,`userid`) values (22,'2021-04-26 14:01:47','申请编号2','专利名称2','申请人2','协同作者2','发明专利','国内专利','备注2','分类号2','关键词2','','http://localhost:8080/ssma2kb6/upload/zhuanlishenqing_zhuanlitupian2.jpg','用户名2','是','',2);
insert  into `zhuanlishenqing`(`id`,`addtime`,`shenqingbianhao`,`zhuanlimingcheng`,`shenqingren`,`xietongzuozhe`,`zhuanlileixing`,`shenqingleixing`,`beizhu`,`fenleihao`,`guanjianci`,`shuomingshu`,`zhuanlitupian`,`yonghuming`,`sfsh`,`shhf`,`userid`) values (23,'2021-04-26 14:01:47','申请编号3','专利名称3','申请人3','协同作者3','发明专利','国内专利','备注3','分类号3','关键词3','','http://localhost:8080/ssma2kb6/upload/zhuanlishenqing_zhuanlitupian3.jpg','用户名3','是','',3);
insert  into `zhuanlishenqing`(`id`,`addtime`,`shenqingbianhao`,`zhuanlimingcheng`,`shenqingren`,`xietongzuozhe`,`zhuanlileixing`,`shenqingleixing`,`beizhu`,`fenleihao`,`guanjianci`,`shuomingshu`,`zhuanlitupian`,`yonghuming`,`sfsh`,`shhf`,`userid`) values (24,'2021-04-26 14:01:47','申请编号4','专利名称4','申请人4','协同作者4','发明专利','国内专利','备注4','分类号4','关键词4','','http://localhost:8080/ssma2kb6/upload/zhuanlishenqing_zhuanlitupian4.jpg','用户名4','是','',4);
insert  into `zhuanlishenqing`(`id`,`addtime`,`shenqingbianhao`,`zhuanlimingcheng`,`shenqingren`,`xietongzuozhe`,`zhuanlileixing`,`shenqingleixing`,`beizhu`,`fenleihao`,`guanjianci`,`shuomingshu`,`zhuanlitupian`,`yonghuming`,`sfsh`,`shhf`,`userid`) values (25,'2021-04-26 14:01:47','申请编号5','专利名称5','申请人5','协同作者5','发明专利','国内专利','备注5','分类号5','关键词5','','http://localhost:8080/ssma2kb6/upload/zhuanlishenqing_zhuanlitupian5.jpg','用户名5','是','',5);
insert  into `zhuanlishenqing`(`id`,`addtime`,`shenqingbianhao`,`zhuanlimingcheng`,`shenqingren`,`xietongzuozhe`,`zhuanlileixing`,`shenqingleixing`,`beizhu`,`fenleihao`,`guanjianci`,`shuomingshu`,`zhuanlitupian`,`yonghuming`,`sfsh`,`shhf`,`userid`) values (26,'2021-04-26 14:01:47','申请编号6','专利名称6','申请人6','协同作者6','发明专利','国内专利','备注6','分类号6','关键词6','','http://localhost:8080/ssma2kb6/upload/zhuanlishenqing_zhuanlitupian6.jpg','用户名6','是','',6);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
