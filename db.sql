/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmb471b
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmb471b` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmb471b`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617860697648 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1,'2021-04-08 13:05:02',1,'宇宙银河系金星1号','金某','13823888881','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (2,'2021-04-08 13:05:02',2,'宇宙银河系木星1号','木某','13823888882','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (3,'2021-04-08 13:05:02',3,'宇宙银河系水星1号','水某','13823888883','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (4,'2021-04-08 13:05:02',4,'宇宙银河系火星1号','火某','13823888884','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (5,'2021-04-08 13:05:02',5,'宇宙银河系土星1号','土某','13823888885','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (6,'2021-04-08 13:05:02',6,'宇宙银河系月球1号','月某','13823888886','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1617859408608,'2021-04-08 13:23:28',1617859295613,'广东省梅州市梅江区江南街道梅新路105号作新小学','陈一','12312312312','是');
insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1617860697647,'2021-04-08 13:44:57',1617860656017,'广东省佛山市禅城区祖庙街道北1号商住楼','陈一','12345678912','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617860806953 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617860905112 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (91,'2021-04-08 13:05:02',1,1,'提问1','回复1',1);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (92,'2021-04-08 13:05:02',2,2,'提问2','回复2',2);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (93,'2021-04-08 13:05:02',3,3,'提问3','回复3',3);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (94,'2021-04-08 13:05:02',4,4,'提问4','回复4',4);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (95,'2021-04-08 13:05:02',5,5,'提问5','回复5',5);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (96,'2021-04-08 13:05:02',6,6,'提问6','回复6',6);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1617859466907,'2021-04-08 13:24:26',1617859295613,NULL,'请问有宠物用品吗',NULL,0);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1617859503975,'2021-04-08 13:25:03',1617859295613,1,NULL,'有',NULL);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1617860818329,'2021-04-08 13:46:58',1617860656017,NULL,'请问有宠物用品吗',NULL,0);
insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (1617860905111,'2021-04-08 13:48:24',1617860656017,1,NULL,'有的，可直接搜索',NULL);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmb471b/upload/1617858889294.jpg');
insert  into `config`(`id`,`name`,`value`) values (2,'picture2','http://localhost:8080/ssmb471b/upload/1617859163831.jpg');
insert  into `config`(`id`,`name`,`value`) values (3,'picture3','http://localhost:8080/ssmb471b/upload/1617860528155.jpg');
insert  into `config`(`id`,`name`,`value`) values (6,'homepage',NULL);

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8 COMMENT='商品信息评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (151,'2021-04-08 13:05:02',1,1,'用户名1','评论内容1','回复内容1');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (152,'2021-04-08 13:05:02',2,2,'用户名2','评论内容2','回复内容2');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (153,'2021-04-08 13:05:02',3,3,'用户名3','评论内容3','回复内容3');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (154,'2021-04-08 13:05:02',4,4,'用户名4','评论内容4','回复内容4');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (155,'2021-04-08 13:05:02',5,5,'用户名5','评论内容5','回复内容5');
insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`nickname`,`content`,`reply`) values (156,'2021-04-08 13:05:02',6,6,'用户名6','评论内容6','回复内容6');

/*Table structure for table `gongyingshang` */

DROP TABLE IF EXISTS `gongyingshang`;

CREATE TABLE `gongyingshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangbianhao` varchar(200) DEFAULT NULL COMMENT '供应商编号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `lianxiren` varchar(200) DEFAULT NULL COMMENT '联系人',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `gongyingshangdizhi` varchar(200) DEFAULT NULL COMMENT '供应商地址',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gongyingshangbianhao` (`gongyingshangbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617860436059 DEFAULT CHARSET=utf8 COMMENT='供应商';

/*Data for the table `gongyingshang` */

insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`lianxiren`,`lianxidianhua`,`gongyingshangdizhi`,`beizhu`) values (31,'2021-04-08 13:05:02','供应商编号1','供应商名称1','联系人1','13823888881','供应商地址1','备注1');
insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`lianxiren`,`lianxidianhua`,`gongyingshangdizhi`,`beizhu`) values (32,'2021-04-08 13:05:02','供应商编号2','供应商名称2','联系人2','13823888882','供应商地址2','备注2');
insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`lianxiren`,`lianxidianhua`,`gongyingshangdizhi`,`beizhu`) values (33,'2021-04-08 13:05:02','供应商编号3','供应商名称3','联系人3','13823888883','供应商地址3','备注3');
insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`lianxiren`,`lianxidianhua`,`gongyingshangdizhi`,`beizhu`) values (34,'2021-04-08 13:05:02','供应商编号4','供应商名称4','联系人4','13823888884','供应商地址4','备注4');
insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`lianxiren`,`lianxidianhua`,`gongyingshangdizhi`,`beizhu`) values (35,'2021-04-08 13:05:02','供应商编号5','供应商名称5','联系人5','13823888885','供应商地址5','备注5');
insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`lianxiren`,`lianxidianhua`,`gongyingshangdizhi`,`beizhu`) values (36,'2021-04-08 13:05:02','供应商编号6','供应商名称6','联系人6','13823888886','供应商地址6','备注6');
insert  into `gongyingshang`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`lianxiren`,`lianxidianhua`,`gongyingshangdizhi`,`beizhu`) values (1617860436058,'2021-04-08 13:40:35','1617860419751','楼上厂家','张一','12345678978','广州','');

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
) ENGINE=InnoDB AUTO_INCREMENT=1617860517792 DEFAULT CHARSET=utf8 COMMENT='商品资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (141,'2021-04-08 13:05:02','标题1','简介1','http://localhost:8080/ssmb471b/upload/1617858822844.jpg','<p>内容1</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (142,'2021-04-08 13:05:02','标题2','简介2','http://localhost:8080/ssmb471b/upload/1617858829755.jpg','<p>内容2</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (143,'2021-04-08 13:05:02','标题3','简介3','http://localhost:8080/ssmb471b/upload/1617858843536.jpg','<p>内容3</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (144,'2021-04-08 13:05:02','标题4','简介4','http://localhost:8080/ssmb471b/upload/1617858856966.jpg','<p>内容4</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (145,'2021-04-08 13:05:02','标题5','简介5','http://localhost:8080/ssmb471b/upload/1617858868266.jpg','<p>内容5</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (146,'2021-04-08 13:05:02','标题6','简介6','http://localhost:8080/ssmb471b/upload/1617858876395.jpg','<p>内容6</p>');
insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (1617860517791,'2021-04-08 13:41:57','商品优惠资讯','商品优惠','http://localhost:8080/ssmb471b/upload/1617860492950.jpg','<p>全场商品参与618优惠活动，具体详见商品详情页</p><p><img src=\"http://localhost:8080/ssmb471b/upload/1617860515915.jpg\"></p>');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `tel` varchar(200) DEFAULT NULL COMMENT '电话',
  `consignee` varchar(200) DEFAULT NULL COMMENT '收货人',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1617860836399 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`,`tel`,`consignee`) values (1617860836398,'2021-04-08 13:47:16','20214813471620223563','shangpinxinxi',1617860656017,1617860480502,'楼上芒果干','http://localhost:8080/ssmb471b/upload/1617860463706.jpg',3,39,39,117,117,1,'已完成','广东省佛山市禅城区祖庙街道北1号商住楼','12345678912','陈一');

/*Table structure for table `shangpincaigou` */

DROP TABLE IF EXISTS `shangpincaigou`;

CREATE TABLE `shangpincaigou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gongyingshangbianhao` varchar(200) DEFAULT NULL COMMENT '供应商编号',
  `gongyingshangmingcheng` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `caigoubianhao` varchar(200) DEFAULT NULL COMMENT '采购编号',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `caigoushuliang` int(11) DEFAULT NULL COMMENT '采购数量',
  `caigoujiage` int(11) DEFAULT NULL COMMENT '采购价格',
  `caigoujine` int(11) DEFAULT NULL COMMENT '采购金额',
  `caigouriqi` date DEFAULT NULL COMMENT '采购日期',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`),
  UNIQUE KEY `caigoubianhao` (`caigoubianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617860554206 DEFAULT CHARSET=utf8 COMMENT='商品采购';

/*Data for the table `shangpincaigou` */

insert  into `shangpincaigou`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`caigoubianhao`,`shangpinbianhao`,`shangpinmingcheng`,`pinpai`,`guige`,`caigoushuliang`,`caigoujiage`,`caigoujine`,`caigouriqi`,`yuangonggonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (81,'2021-04-08 13:05:02','供应商编号1','供应商名称1','采购编号1','商品编号1','商品名称1','品牌1','规格1',1,1,1,'2021-04-08','员工工号1','员工姓名1','是','');
insert  into `shangpincaigou`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`caigoubianhao`,`shangpinbianhao`,`shangpinmingcheng`,`pinpai`,`guige`,`caigoushuliang`,`caigoujiage`,`caigoujine`,`caigouriqi`,`yuangonggonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (82,'2021-04-08 13:05:02','供应商编号2','供应商名称2','采购编号2','商品编号2','商品名称2','品牌2','规格2',2,2,2,'2021-04-08','员工工号2','员工姓名2','是','');
insert  into `shangpincaigou`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`caigoubianhao`,`shangpinbianhao`,`shangpinmingcheng`,`pinpai`,`guige`,`caigoushuliang`,`caigoujiage`,`caigoujine`,`caigouriqi`,`yuangonggonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (83,'2021-04-08 13:05:02','供应商编号3','供应商名称3','采购编号3','商品编号3','商品名称3','品牌3','规格3',3,3,3,'2021-04-08','员工工号3','员工姓名3','是','');
insert  into `shangpincaigou`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`caigoubianhao`,`shangpinbianhao`,`shangpinmingcheng`,`pinpai`,`guige`,`caigoushuliang`,`caigoujiage`,`caigoujine`,`caigouriqi`,`yuangonggonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (84,'2021-04-08 13:05:02','供应商编号4','供应商名称4','采购编号4','商品编号4','商品名称4','品牌4','规格4',4,4,4,'2021-04-08','员工工号4','员工姓名4','是','');
insert  into `shangpincaigou`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`caigoubianhao`,`shangpinbianhao`,`shangpinmingcheng`,`pinpai`,`guige`,`caigoushuliang`,`caigoujiage`,`caigoujine`,`caigouriqi`,`yuangonggonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (85,'2021-04-08 13:05:02','供应商编号5','供应商名称5','采购编号5','商品编号5','商品名称5','品牌5','规格5',5,5,5,'2021-04-08','员工工号5','员工姓名5','是','');
insert  into `shangpincaigou`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`caigoubianhao`,`shangpinbianhao`,`shangpinmingcheng`,`pinpai`,`guige`,`caigoushuliang`,`caigoujiage`,`caigoujine`,`caigouriqi`,`yuangonggonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (86,'2021-04-08 13:05:02','供应商编号6','供应商名称6','采购编号6','商品编号6','商品名称6','品牌6','规格6',6,6,6,'2021-04-08','员工工号6','员工姓名6','是','');
insert  into `shangpincaigou`(`id`,`addtime`,`gongyingshangbianhao`,`gongyingshangmingcheng`,`caigoubianhao`,`shangpinbianhao`,`shangpinmingcheng`,`pinpai`,`guige`,`caigoushuliang`,`caigoujiage`,`caigoujine`,`caigouriqi`,`yuangonggonghao`,`yuangongxingming`,`sfsh`,`shhf`) values (1617860554205,'2021-04-08 13:42:34','1617860419751','楼上厂家','1617860547734','1617860446573','楼上芒果干','楼上','454g',50,25,1250,'2021-04-08','1','张明','是','ok');

/*Table structure for table `shangpinchuku` */

DROP TABLE IF EXISTS `shangpinchuku`;

CREATE TABLE `shangpinchuku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617860926926 DEFAULT CHARSET=utf8 COMMENT='商品出库';

/*Data for the table `shangpinchuku` */

insert  into `shangpinchuku`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`guige`,`shuliang`,`beizhu`,`dengjiriqi`) values (71,'2021-04-08 13:05:02','商品编号1','商品名称1','商品分类1','品牌1','规格1',1,'备注1','2021-04-08');
insert  into `shangpinchuku`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`guige`,`shuliang`,`beizhu`,`dengjiriqi`) values (72,'2021-04-08 13:05:02','商品编号2','商品名称2','商品分类2','品牌2','规格2',2,'备注2','2021-04-08');
insert  into `shangpinchuku`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`guige`,`shuliang`,`beizhu`,`dengjiriqi`) values (73,'2021-04-08 13:05:02','商品编号3','商品名称3','商品分类3','品牌3','规格3',3,'备注3','2021-04-08');
insert  into `shangpinchuku`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`guige`,`shuliang`,`beizhu`,`dengjiriqi`) values (74,'2021-04-08 13:05:02','商品编号4','商品名称4','商品分类4','品牌4','规格4',4,'备注4','2021-04-08');
insert  into `shangpinchuku`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`guige`,`shuliang`,`beizhu`,`dengjiriqi`) values (75,'2021-04-08 13:05:02','商品编号5','商品名称5','商品分类5','品牌5','规格5',5,'备注5','2021-04-08');
insert  into `shangpinchuku`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`guige`,`shuliang`,`beizhu`,`dengjiriqi`) values (76,'2021-04-08 13:05:02','商品编号6','商品名称6','商品分类6','品牌6','规格6',6,'备注6','2021-04-08');
insert  into `shangpinchuku`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`guige`,`shuliang`,`beizhu`,`dengjiriqi`) values (1617860926925,'2021-04-08 13:48:46','1617860446573','楼上芒果干','休闲食品','楼上','454g',3,'销售出库','2021-04-08');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinfenlei` (`shangpinfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1617860443811 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (41,'2021-04-08 13:05:02','商品分类1');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (42,'2021-04-08 13:05:02','商品分类2');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (43,'2021-04-08 13:05:02','商品分类3');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (44,'2021-04-08 13:05:02','商品分类4');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (45,'2021-04-08 13:05:02','商品分类5');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (46,'2021-04-08 13:05:02','商品分类6');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (1617859064066,'2021-04-08 13:17:43','休闲食品');
insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (1617860443810,'2021-04-08 13:40:43','日用品');

/*Table structure for table `shangpinruku` */

DROP TABLE IF EXISTS `shangpinruku`;

CREATE TABLE `shangpinruku` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `dengjiriqi` date DEFAULT NULL COMMENT '登记日期',
  `yuangonggonghao` varchar(200) DEFAULT NULL COMMENT '员工工号',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1617860598783 DEFAULT CHARSET=utf8 COMMENT='商品入库';

/*Data for the table `shangpinruku` */

insert  into `shangpinruku`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`shuliang`,`beizhu`,`dengjiriqi`,`yuangonggonghao`,`yuangongxingming`) values (61,'2021-04-08 13:05:02','商品编号1','商品名称1','商品分类1','品牌1',1,'备注1','2021-04-08','员工工号1','员工姓名1');
insert  into `shangpinruku`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`shuliang`,`beizhu`,`dengjiriqi`,`yuangonggonghao`,`yuangongxingming`) values (62,'2021-04-08 13:05:02','商品编号2','商品名称2','商品分类2','品牌2',2,'备注2','2021-04-08','员工工号2','员工姓名2');
insert  into `shangpinruku`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`shuliang`,`beizhu`,`dengjiriqi`,`yuangonggonghao`,`yuangongxingming`) values (63,'2021-04-08 13:05:02','商品编号3','商品名称3','商品分类3','品牌3',3,'备注3','2021-04-08','员工工号3','员工姓名3');
insert  into `shangpinruku`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`shuliang`,`beizhu`,`dengjiriqi`,`yuangonggonghao`,`yuangongxingming`) values (64,'2021-04-08 13:05:02','商品编号4','商品名称4','商品分类4','品牌4',4,'备注4','2021-04-08','员工工号4','员工姓名4');
insert  into `shangpinruku`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`shuliang`,`beizhu`,`dengjiriqi`,`yuangonggonghao`,`yuangongxingming`) values (65,'2021-04-08 13:05:02','商品编号5','商品名称5','商品分类5','品牌5',5,'备注5','2021-04-08','员工工号5','员工姓名5');
insert  into `shangpinruku`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`shuliang`,`beizhu`,`dengjiriqi`,`yuangonggonghao`,`yuangongxingming`) values (66,'2021-04-08 13:05:02','商品编号6','商品名称6','商品分类6','品牌6',6,'备注6','2021-04-08','员工工号6','员工姓名6');
insert  into `shangpinruku`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`pinpai`,`shuliang`,`beizhu`,`dengjiriqi`,`yuangonggonghao`,`yuangongxingming`) values (1617860598782,'2021-04-08 13:43:17','1617860446573','楼上芒果干','休闲食品','楼上',50,'采购入库','2021-04-08','1','张明');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) NOT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) NOT NULL COMMENT '商品分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `shuliang` int(11) DEFAULT NULL COMMENT '数量',
  `shangpinxiangqing` longtext COMMENT '商品详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617860480503 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`guige`,`shuliang`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`) values (51,'2021-04-08 13:05:02','商品编号1','商品名称1','商品分类1','http://localhost:8080/ssmb471b/upload/1617858726233.jpg','品牌1','规格1',1,'<p>商品详情1</p>','2021-04-08 13:11:55',2,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`guige`,`shuliang`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`) values (52,'2021-04-08 13:05:02','商品编号2','商品名称2','商品分类2','http://localhost:8080/ssmb471b/upload/1617858734493.jpg','品牌2','规格2',2,'<p>商品详情2</p>','2021-04-08 13:44:22',5,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`guige`,`shuliang`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`) values (53,'2021-04-08 13:05:02','商品编号3','商品名称3','商品分类3','http://localhost:8080/ssmb471b/upload/1617858780140.jpg','品牌3','规格3',3,'<p>商品详情3</p>','2021-04-08 13:12:33',4,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`guige`,`shuliang`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`) values (54,'2021-04-08 13:05:02','商品编号4','商品名称4','商品分类4','http://localhost:8080/ssmb471b/upload/1617858788054.jpg','品牌4','规格4',4,'<p>商品详情4</p>','2021-04-08 13:13:03',5,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`guige`,`shuliang`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`) values (55,'2021-04-08 13:05:02','商品编号5','商品名称5','商品分类5','http://localhost:8080/ssmb471b/upload/1617858803785.jpg','品牌5','规格5',5,'<p>商品详情5</p>','2021-04-08 13:46:46',15,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`guige`,`shuliang`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`) values (56,'2021-04-08 13:05:02','商品编号6','商品名称6','商品分类6','http://localhost:8080/ssmb471b/upload/1617858814721.jpg','品牌6','规格6',24,'<p>商品详情6</p>','2021-04-08 13:45:34',18,99.9);
insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`tupian`,`pinpai`,`guige`,`shuliang`,`shangpinxiangqing`,`clicktime`,`clicknum`,`price`) values (1617860480502,'2021-04-08 13:41:20','1617860446573','楼上芒果干','休闲食品','http://localhost:8080/ssmb471b/upload/1617860463706.jpg','楼上','454g',97,'<p>商品介绍</p><p><img src=\"http://localhost:8080/ssmb471b/upload/1617860478703.jpg\"></p>','2021-04-08 13:47:16',5,39);

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
) ENGINE=InnoDB AUTO_INCREMENT=1617860806805 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1617859446936,'2021-04-08 13:24:06',1617859295613,1617859109336,'shangpinxinxi','楼上芒果干','http://localhost:8080/ssmb471b/upload/1617859089391.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1617859455285,'2021-04-08 13:24:15',1617859295613,55,'shangpinxinxi','商品名称5','http://localhost:8080/ssmb471b/upload/1617858803785.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1617860770477,'2021-04-08 13:46:10',1617860656017,1617860480502,'shangpinxinxi','楼上芒果干','http://localhost:8080/ssmb471b/upload/1617860463706.jpg');
insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1617860806804,'2021-04-08 13:46:46',1617860656017,55,'shangpinxinxi','商品名称5','http://localhost:8080/ssmb471b/upload/1617858803785.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','ohqt3xoc3v4y5eixppekfjlrmh2f8qx8','2021-04-08 13:07:42','2021-04-08 14:50:02');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (2,21,'员工1','yuangong','员工','5b6sne97ny2ia2u27qog42xw8u6clrb7','2021-04-08 13:08:32','2021-04-08 14:08:33');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (3,1617859026456,'1','yuangong','员工','r3puf1l3olkeqttylo97z7kkupe6p78k','2021-04-08 13:19:45','2021-04-08 14:20:37');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (4,1617859295613,'2','yonghu','用户','6a8fkkal5q21rcsn6pnuqbpz8evay48y','2021-04-08 13:21:40','2021-04-08 14:25:53');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (5,1617860415068,'1','yuangong','员工','5m9amovy7b5qkkuwvi9q6dgow0jqo2ns','2021-04-08 13:42:16','2021-04-08 14:47:46');
insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (6,1617860656017,'2','yonghu','用户','owbzr8j0x8y8ss2c3dtprsnzeshjw4so','2021-04-08 13:44:21','2021-04-08 14:49:15');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-08 13:05:02');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1617860656018 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (11,'2021-04-08 13:05:02','用户1','123456','姓名1','http://localhost:8080/ssmb471b/upload/yonghu_touxiang1.jpg','男','13823888881',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (12,'2021-04-08 13:05:02','用户2','123456','姓名2','http://localhost:8080/ssmb471b/upload/yonghu_touxiang2.jpg','男','13823888882',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (13,'2021-04-08 13:05:02','用户3','123456','姓名3','http://localhost:8080/ssmb471b/upload/yonghu_touxiang3.jpg','男','13823888883',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (14,'2021-04-08 13:05:02','用户4','123456','姓名4','http://localhost:8080/ssmb471b/upload/yonghu_touxiang4.jpg','男','13823888884',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (15,'2021-04-08 13:05:02','用户5','123456','姓名5','http://localhost:8080/ssmb471b/upload/yonghu_touxiang5.jpg','男','13823888885',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (16,'2021-04-08 13:05:02','用户6','123456','姓名6','http://localhost:8080/ssmb471b/upload/yonghu_touxiang6.jpg','男','13823888886',100);
insert  into `yonghu`(`id`,`addtime`,`yonghuming`,`mima`,`xingming`,`touxiang`,`xingbie`,`lianxidianhua`,`money`) values (1617860656017,'2021-04-08 13:44:16','2','2','陈一','http://localhost:8080/ssmb471b/upload/1617860669535.jpg','女','12345678912',383);

/*Table structure for table `yuangong` */

DROP TABLE IF EXISTS `yuangong`;

CREATE TABLE `yuangong` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yuangonggonghao` varchar(200) NOT NULL COMMENT '员工工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yuangongxingming` varchar(200) DEFAULT NULL COMMENT '员工姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yuangonggonghao` (`yuangonggonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1617860415069 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yuangong` */

insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`touxiang`,`shouji`,`shenfenzheng`,`money`) values (21,'2021-04-08 13:05:02','员工1','123456','员工姓名1','男','http://localhost:8080/ssmb471b/upload/yuangong_touxiang1.jpg','13823888881','440300199101010001',100);
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`touxiang`,`shouji`,`shenfenzheng`,`money`) values (22,'2021-04-08 13:05:02','员工2','123456','员工姓名2','男','http://localhost:8080/ssmb471b/upload/yuangong_touxiang2.jpg','13823888882','440300199202020002',100);
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`touxiang`,`shouji`,`shenfenzheng`,`money`) values (23,'2021-04-08 13:05:02','员工3','123456','员工姓名3','男','http://localhost:8080/ssmb471b/upload/yuangong_touxiang3.jpg','13823888883','440300199303030003',100);
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`touxiang`,`shouji`,`shenfenzheng`,`money`) values (24,'2021-04-08 13:05:02','员工4','123456','员工姓名4','男','http://localhost:8080/ssmb471b/upload/yuangong_touxiang4.jpg','13823888884','440300199404040004',100);
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`touxiang`,`shouji`,`shenfenzheng`,`money`) values (25,'2021-04-08 13:05:02','员工5','123456','员工姓名5','男','http://localhost:8080/ssmb471b/upload/yuangong_touxiang5.jpg','13823888885','440300199505050005',100);
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`touxiang`,`shouji`,`shenfenzheng`,`money`) values (26,'2021-04-08 13:05:02','员工6','123456','员工姓名6','男','http://localhost:8080/ssmb471b/upload/yuangong_touxiang6.jpg','13823888886','440300199606060006',100);
insert  into `yuangong`(`id`,`addtime`,`yuangonggonghao`,`mima`,`yuangongxingming`,`xingbie`,`touxiang`,`shouji`,`shenfenzheng`,`money`) values (1617860415068,'2021-04-08 13:40:15','1','11','张明','男','http://localhost:8080/ssmb471b/upload/1617860406253.jpg','12312312312','123456789789456123',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
