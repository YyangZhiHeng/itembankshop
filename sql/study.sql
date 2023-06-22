/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.6.22-log : Database - study
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`study` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `study`;

/*Table structure for table `bank` */

DROP TABLE IF EXISTS `bank`;

CREATE TABLE `bank` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `content` varchar(5000) COLLATE utf8_bin NOT NULL,
  `code` int(5) NOT NULL,
  `name` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `bank` */

insert  into `bank`(`id`,`content`,`code`,`name`) values 
(2,'你认为一个优秀的教师应该具备哪些素质',1,'教师资格面试题'),
(3,'你认为如何才能做好班主任工作',1,'教师资格面试题'),
(4,'请你谈谈对教师的主要职责的理解',1,'教师资格面试题'),
(5,'教师这个职业有发展前途吗',1,'教师资格面试题'),
(6,'如果你正在上课的时候,发现有个同学趴在桌子上哭泣,你怎么办',1,'教师资格面试题'),
(7,'有一天,你上课的时候,学生向你提出了一个你也不知道怎么解答的问题,你将如处理',1,'教师资格面试题'),
(8,'假如你正在讲课突然两位同学在课堂上打起架来,作为教师的你会怎么办',1,'教师资格面试题'),
(9,'作为一名班主任,你会如何处理班上发生的偷窃事件',1,'教师资格面试题'),
(12,'程序应该必须包含的部分是',2,'C++面试题'),
(14,'请说说面向对象程序设计的主要特征',2,'C++面试题'),
(15,'C++程序的执行总是从哪里开始的',2,'C++面试题'),
(16,'对象之间的相互作用和通信是通过消息,下列哪项不是消息的组成部分',2,'C++面试题'),
(17,'字符型数据在内存中的存储形式是',2,'C++面试题'),
(18,'下列运算符中,运算对象必须是整型的是',2,'C++面试题'),
(19,'如有int a-11,则表达式(a++*1/3)的值是',2,'C++面试题'),
(20,'表达式91-10的值为',2,'C++面试题'),
(21,'常用的图像空间',3,'图像处理算法工程师'),
(22,'上衣纯色,裙子花色,怎样做区分',3,'图像处理算法工程师'),
(23,'简述你熟悉的聚类算法并说明其优缺点',3,'图像处理算法工程师'),
(24,'请描述以下任一概念:SIFT/SURF LDA/PCA',3,'图像处理算法工程师'),
(25,'请说出使用过的分类器和实现原理',3,'图像处理算法工程师'),
(26,'Random Forest的随机性表现在哪里',3,'图像处理算法工程师'),
(27,'Graph-cut的基本原理和应用',3,'图像处理算法工程师'),
(28,'GMM的基本原理和应用',3,'图像处理算法工程师'),
(29,'用具体算法举例说明监督学习和非监督学习的区别',3,'图像处理算法工程师'),
(30,'怎样判断一张广告图片中是否有文字信息?是否用到OCR技术,怎样应用',3,'图像处理算法工程师'),
(31,'建工城建专业工程师面试',4,'建工城建专业工程师面试题'),
(32,'说出建筑安装工程的分部工程的名称',4,'建工城建专业工程师面试题'),
(33,'施工场地总平面布置图的主要内容是什么',4,'建工城建专业工程师面试题'),
(34,'工地文明施工的保证项目有哪六项',4,'建工城建专业工程师面试题'),
(35,'如何理解民用建筑节能',4,'建工城建专业工程师面试题'),
(36,'建设工程质量管理条例第四章规定,工程项目部的那三者负质量责任制, b建筑施工企业进行安全生产考核的三类人员指哪些人员',4,'建工城建专业工程师面试题'),
(37,'试述单位工程质量验收合格的条件',4,'建工城建专业工程师面试题'),
(38,'建设工程在保修范围和保修期限内发生质量问题，施工单位有何青任',4,'建工城建专业工程师面试题'),
(39,'单位工程施工组织设计包括哪些内容',4,'建工城建专业工程师面试题'),
(40,'建筑施工安全检查标准（JGJ59-99)的十项内容是什么',4,'建工城建专业工程师面试题'),
(41,'为何要报考公务员',5,'公务员面试题'),
(42,'如果这次你没有被录取怎么办',5,'公务员面试题'),
(43,'能谈谈你的优点和缺点吗',5,'公务员面试题'),
(44,'你认为你有哪些优点，你认为你比较适合做哪些工作',5,'公务员面试题'),
(45,'假如你是乡镇党委秘书，让你组织会议，你如何进行',5,'公务员面试题'),
(46,'你是新上任的副镇长,根据镇政府的决议给下属安排工作,在会上同时有几个下属提出理由不能执行,使你很难堪你该怎么办',5,'公务员面试题'),
(47,'你作为领导干部在工作中碰到上级的某一批示精神与本地实际情况不一致、发生矛盾时,你将如何处理',5,'公务员面试题'),
(48,'古人云‘疑人不用,用人不疑你在使用下属干部时,是否采用‘用人不疑’的观点',5,'公务员面试题'),
(49,'作为副职,在和主要领导研究问题时,你认为自己的意见正确,提出后却不被采纳,面对这种情况,你如何处理',5,'公务员面试题'),
(50,'为什么有的单位能‘三个臭皮匠赛过一个诸葛亮,而有的单位则是‘三个和尚没水喝’,对待后一种情况,如果你去上任,该怎样处理',5,'公务员面试题'),
(51,'什么是Java虚拟机,为什么Java被称作是“平台无关的编程语言”',6,'java面试题'),
(52,'JDK和JRE的区别是什么',6,'java面试题'),
(53,'”static”关键字是什么意思？Java中是否可以覆盖(override)一个private或者是static的方法',6,'java面试题'),
(54,'是否可以在static环境中访问非static变量',6,'java面试题'),
(55,'Java支持的数据类型有哪些,什么是自动拆装箱？',6,'java面试题'),
(56,'(Overriding)和方法重载(Overloading)是什么意思',6,'java面试题'),
(57,'Java中，什么是构造函数,什么是构造函数重载？什么是复制构造函数',6,'java面试题'),
(58,'Java支持多继承么',6,'java面试题'),
(59,'aaaaaaaaaaa',7,'cccccc');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `customer` */

insert  into `customer`(`id`,`username`,`password`) values 
(1,'laowang','123'),
(2,'kobe','424'),
(3,'james','623'),
(34,'33','33'),
(48,'aa','aa');

/*Table structure for table `sc` */

DROP TABLE IF EXISTS `sc`;

CREATE TABLE `sc` (
  `sno1` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `cno` int(11) NOT NULL,
  `grade` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `sc` */

insert  into `sc`(`sno1`,`cno`,`grade`) values 
('1',1,22),
('1',2,66),
('1',3,77),
('1',4,88),
('1',6,50),
('9',1,77);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8_bin NOT NULL,
  `password` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user` */

insert  into `user`(`id`,`username`,`password`) values 
(1,'admin','666');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
