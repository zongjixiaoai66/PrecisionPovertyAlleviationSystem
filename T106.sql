/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t106`;
CREATE DATABASE IF NOT EXISTS `t106` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t106`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootsudk0/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootsudk0/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootsudk0/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `messages`;
CREATE TABLE IF NOT EXISTS `messages` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708053415520 DEFAULT CHARSET=utf8mb3 COMMENT='留言板';

DELETE FROM `messages`;
INSERT INTO `messages` (`id`, `addtime`, `userid`, `username`, `content`, `reply`) VALUES
	(81, '2021-05-07 01:32:39', 1, '用户名1', '留言内容1', '回复内容1'),
	(82, '2021-05-07 01:32:39', 2, '用户名2', '留言内容2', '回复内容2'),
	(83, '2021-05-07 01:32:39', 3, '用户名3', '留言内容3', '回复内容3'),
	(84, '2021-05-07 01:32:39', 4, '用户名4', '留言内容4', '回复内容4'),
	(85, '2021-05-07 01:32:39', 5, '用户名5', '留言内容5', '回复内容5'),
	(86, '2021-05-07 01:32:39', 6, '用户名6', '留言内容6', '回复内容6'),
	(1708053415519, '2024-02-16 03:16:54', 11, '用户1', '666', NULL);

DROP TABLE IF EXISTS `pinkunhu`;
CREATE TABLE IF NOT EXISTS `pinkunhu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `bianhao` varchar(200) DEFAULT NULL COMMENT '编号',
  `jiatingchengyuan` varchar(200) DEFAULT NULL COMMENT '家庭成员',
  `chengyuanrenshu` int DEFAULT NULL COMMENT '成员人数',
  `jiatingzhuzhi` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `jiatingzhuangkuang` longtext COMMENT '家庭状况',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `renjunshouru` int DEFAULT NULL COMMENT '人均收入',
  `xiangxijieshao` longtext COMMENT '详细介绍',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bianhao` (`bianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='贫困户';

DELETE FROM `pinkunhu`;
INSERT INTO `pinkunhu` (`id`, `addtime`, `bianhao`, `jiatingchengyuan`, `chengyuanrenshu`, `jiatingzhuzhi`, `jiatingzhuangkuang`, `fengmian`, `renjunshouru`, `xiangxijieshao`, `zhanghao`, `xingming`, `sfsh`, `shhf`, `clicktime`, `clicknum`) VALUES
	(21, '2021-05-07 01:32:39', '编号1', '家庭成员1', 1, '家庭住址1', '家庭状况1', 'http://localhost:8080/springbootsudk0/upload/pinkunhu_fengmian1.jpg', 1, '详细介绍1', '账号1', '姓名1', '是', '', '2024-02-16 11:13:50', 2),
	(22, '2021-05-07 01:32:39', '编号2', '家庭成员2', 2, '家庭住址2', '家庭状况2', 'http://localhost:8080/springbootsudk0/upload/pinkunhu_fengmian2.jpg', 2, '详细介绍2', '账号2', '姓名2', '是', '', '2024-02-16 10:57:18', 4),
	(23, '2021-05-07 01:32:39', '编号3', '家庭成员3', 3, '家庭住址3', '家庭状况3', 'http://localhost:8080/springbootsudk0/upload/pinkunhu_fengmian3.jpg', 3, '详细介绍3', '账号3', '姓名3', '是', '', '2024-02-16 11:16:38', 4),
	(24, '2021-05-07 01:32:39', '编号4', '家庭成员4', 4, '家庭住址4', '家庭状况4', 'http://localhost:8080/springbootsudk0/upload/pinkunhu_fengmian4.jpg', 4, '详细介绍4', '账号4', '姓名4', '是', '', '2021-05-07 09:32:39', 4),
	(25, '2021-05-07 01:32:39', '编号5', '家庭成员5', 5, '家庭住址5', '家庭状况5', 'http://localhost:8080/springbootsudk0/upload/pinkunhu_fengmian5.jpg', 5, '详细介绍5', '账号5', '姓名5', '是', '', '2021-05-07 09:33:47', 6),
	(26, '2021-05-07 01:32:39', '编号6', '家庭成员6', 6, '家庭住址6', '家庭状况6', 'http://localhost:8080/springbootsudk0/upload/pinkunhu_fengmian6.jpg', 6, '详细介绍6', '账号6', '姓名6', '是', '', '2024-02-16 11:15:35', 7);

DROP TABLE IF EXISTS `remenxinwen`;
CREATE TABLE IF NOT EXISTS `remenxinwen` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `xinwenleixing` varchar(200) DEFAULT NULL COMMENT '新闻类型',
  `neirong` longtext COMMENT '内容',
  `fabushijian` date DEFAULT NULL COMMENT '发布时间',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='热门新闻';

DELETE FROM `remenxinwen`;
INSERT INTO `remenxinwen` (`id`, `addtime`, `biaoti`, `xinwenleixing`, `neirong`, `fabushijian`, `fengmian`, `clicktime`, `clicknum`) VALUES
	(31, '2021-05-07 01:32:39', '标题1', '新闻类型1', '内容1', '2021-05-07', 'http://localhost:8080/springbootsudk0/upload/remenxinwen_fengmian1.jpg', '2021-05-07 09:32:39', 1),
	(32, '2021-05-07 01:32:39', '标题2', '新闻类型2', '内容2', '2021-05-07', 'http://localhost:8080/springbootsudk0/upload/remenxinwen_fengmian2.jpg', '2021-05-07 09:32:39', 2),
	(33, '2021-05-07 01:32:39', '标题3', '新闻类型3', '内容3', '2021-05-07', 'http://localhost:8080/springbootsudk0/upload/remenxinwen_fengmian3.jpg', '2021-05-07 09:32:39', 3),
	(34, '2021-05-07 01:32:39', '标题4', '新闻类型4', '内容4', '2021-05-07', 'http://localhost:8080/springbootsudk0/upload/remenxinwen_fengmian4.jpg', '2024-02-16 11:16:44', 6),
	(35, '2021-05-07 01:32:39', '标题5', '新闻类型5', '内容5', '2021-05-07', 'http://localhost:8080/springbootsudk0/upload/remenxinwen_fengmian5.jpg', '2024-02-16 11:15:41', 6),
	(36, '2021-05-07 01:32:39', '标题6', '新闻类型6', '内容6', '2021-05-07', 'http://localhost:8080/springbootsudk0/upload/remenxinwen_fengmian6.jpg', '2021-05-07 09:32:39', 6);

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708053410867 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1708053410866, '2024-02-16 03:16:50', 11, 54, 'zhiyuanzhezhaopin', '招聘标题4', 'http://localhost:8080/springbootsudk0/upload/zhiyuanzhezhaopin_tupian4.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'pxr1yxk2qetery8duxo51mqw09lyboxe', '2024-02-16 02:55:49', '2024-02-16 04:15:24'),
	(2, 11, '用户1', 'yonghu', '用户', 'as0cit1sgsx0oeqenn8xjt8xzb1gbmbv', '2024-02-16 02:57:33', '2024-02-16 04:16:26');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-07 01:32:39');

DROP TABLE IF EXISTS `xinwenleixing`;
CREATE TABLE IF NOT EXISTS `xinwenleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xinwenleixing` varchar(200) DEFAULT NULL COMMENT '新闻类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='新闻类型';

DELETE FROM `xinwenleixing`;
INSERT INTO `xinwenleixing` (`id`, `addtime`, `xinwenleixing`) VALUES
	(41, '2021-05-07 01:32:39', '新闻类型1'),
	(42, '2021-05-07 01:32:39', '新闻类型2'),
	(43, '2021-05-07 01:32:39', '新闻类型3'),
	(44, '2021-05-07 01:32:39', '新闻类型4'),
	(45, '2021-05-07 01:32:39', '新闻类型5'),
	(46, '2021-05-07 01:32:39', '新闻类型6');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `nianling` varchar(200) NOT NULL COMMENT '年龄',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) NOT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `zhanghao`, `mima`, `xingming`, `nianling`, `xingbie`, `shouji`, `youxiang`, `zhaopian`) VALUES
	(11, '2021-05-07 01:32:39', '用户1', '123456', '姓名1', '年龄1', '男', '13823888881', '773890001@qq.com', 'http://localhost:8080/springbootsudk0/upload/yonghu_zhaopian1.jpg'),
	(12, '2021-05-07 01:32:39', '用户2', '123456', '姓名2', '年龄2', '男', '13823888882', '773890002@qq.com', 'http://localhost:8080/springbootsudk0/upload/yonghu_zhaopian2.jpg'),
	(13, '2021-05-07 01:32:39', '用户3', '123456', '姓名3', '年龄3', '男', '13823888883', '773890003@qq.com', 'http://localhost:8080/springbootsudk0/upload/yonghu_zhaopian3.jpg'),
	(14, '2021-05-07 01:32:39', '用户4', '123456', '姓名4', '年龄4', '男', '13823888884', '773890004@qq.com', 'http://localhost:8080/springbootsudk0/upload/yonghu_zhaopian4.jpg'),
	(15, '2021-05-07 01:32:39', '用户5', '123456', '姓名5', '年龄5', '男', '13823888885', '773890005@qq.com', 'http://localhost:8080/springbootsudk0/upload/yonghu_zhaopian5.jpg'),
	(16, '2021-05-07 01:32:39', '用户6', '123456', '姓名6', '年龄6', '男', '13823888886', '773890006@qq.com', 'http://localhost:8080/springbootsudk0/upload/yonghu_zhaopian6.jpg');

DROP TABLE IF EXISTS `yonghuyingpin`;
CREATE TABLE IF NOT EXISTS `yonghuyingpin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaopinbiaoti` varchar(200) DEFAULT NULL COMMENT '招聘标题',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `shifouyingpin` varchar(200) DEFAULT NULL COMMENT '是否应聘',
  `yingpinyuanyin` longtext COMMENT '应聘原因',
  `yingpinshijian` date DEFAULT NULL COMMENT '应聘时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='用户应聘';

DELETE FROM `yonghuyingpin`;
INSERT INTO `yonghuyingpin` (`id`, `addtime`, `zhaopinbiaoti`, `zhiwei`, `shifouyingpin`, `yingpinyuanyin`, `yingpinshijian`, `zhanghao`, `xingming`, `shouji`, `sfsh`, `shhf`) VALUES
	(61, '2021-05-07 01:32:39', '招聘标题1', '职位1', '是', '应聘原因1', '2021-05-07', '账号1', '姓名1', '手机1', '是', ''),
	(62, '2021-05-07 01:32:39', '招聘标题2', '职位2', '是', '应聘原因2', '2021-05-07', '账号2', '姓名2', '手机2', '是', ''),
	(63, '2021-05-07 01:32:39', '招聘标题3', '职位3', '是', '应聘原因3', '2021-05-07', '账号3', '姓名3', '手机3', '是', ''),
	(64, '2021-05-07 01:32:39', '招聘标题4', '职位4', '是', '应聘原因4', '2021-05-07', '账号4', '姓名4', '手机4', '是', ''),
	(65, '2021-05-07 01:32:39', '招聘标题5', '职位5', '是', '应聘原因5', '2021-05-07', '账号5', '姓名5', '手机5', '是', ''),
	(66, '2021-05-07 01:32:39', '招聘标题6', '职位6', '是', '应聘原因6', '2021-05-07', '账号6', '姓名6', '手机6', '是', '');

DROP TABLE IF EXISTS `zhiyuanzhezhaopin`;
CREATE TABLE IF NOT EXISTS `zhiyuanzhezhaopin` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhaopinbiaoti` varchar(200) DEFAULT NULL COMMENT '招聘标题',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `zhaopinyaoqiu` longtext COMMENT '招聘要求',
  `gongzidaiyu` varchar(200) DEFAULT NULL COMMENT '工资待遇',
  `gongzuodidian` varchar(200) DEFAULT NULL COMMENT '工作地点',
  `gongzuoshijian` varchar(200) DEFAULT NULL COMMENT '工作时间',
  `zhaopinrenshu` int DEFAULT NULL COMMENT '招聘人数',
  `zhaopinshijian` date DEFAULT NULL COMMENT '招聘时间',
  `jiezhishijian` date DEFAULT NULL COMMENT '截止时间',
  `fuzeren` varchar(200) DEFAULT NULL COMMENT '负责人',
  `lianxifangshi` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `faburiqi` date DEFAULT NULL COMMENT '发布日期',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='志愿者招聘';

DELETE FROM `zhiyuanzhezhaopin`;
INSERT INTO `zhiyuanzhezhaopin` (`id`, `addtime`, `zhaopinbiaoti`, `zhiwei`, `zhaopinyaoqiu`, `gongzidaiyu`, `gongzuodidian`, `gongzuoshijian`, `zhaopinrenshu`, `zhaopinshijian`, `jiezhishijian`, `fuzeren`, `lianxifangshi`, `tupian`, `faburiqi`, `clicktime`, `clicknum`) VALUES
	(51, '2021-05-07 01:32:39', '招聘标题1', '职位1', '招聘要求1', '工资待遇1', '工作地点1', '工作时间1', 1, '2021-05-07', '2021-05-07', '负责人1', '联系方式1', 'http://localhost:8080/springbootsudk0/upload/zhiyuanzhezhaopin_tupian1.jpg', '2021-05-07', '2021-05-07 09:32:39', 1),
	(52, '2021-05-07 01:32:39', '招聘标题2', '职位2', '招聘要求2', '工资待遇2', '工作地点2', '工作时间2', 2, '2021-05-07', '2021-05-07', '负责人2', '联系方式2', 'http://localhost:8080/springbootsudk0/upload/zhiyuanzhezhaopin_tupian2.jpg', '2021-05-07', '2021-05-07 09:32:39', 2),
	(53, '2021-05-07 01:32:39', '招聘标题3', '职位3', '招聘要求3', '工资待遇3', '工作地点3', '工作时间3', 3, '2021-05-07', '2021-05-07', '负责人3', '联系方式3', 'http://localhost:8080/springbootsudk0/upload/zhiyuanzhezhaopin_tupian3.jpg', '2021-05-07', '2021-05-07 09:33:45', 4),
	(54, '2021-05-07 01:32:39', '招聘标题4', '职位4', '招聘要求4', '工资待遇4', '工作地点4', '工作时间4', 4, '2021-05-07', '2021-05-07', '负责人4', '联系方式4', 'http://localhost:8080/springbootsudk0/upload/zhiyuanzhezhaopin_tupian4.jpg', '2021-05-07', '2024-02-16 11:16:52', 8),
	(55, '2021-05-07 01:32:39', '招聘标题5', '职位5', '招聘要求5', '工资待遇5', '工作地点5', '工作时间5', 5, '2021-05-07', '2021-05-07', '负责人5', '联系方式5', 'http://localhost:8080/springbootsudk0/upload/zhiyuanzhezhaopin_tupian5.jpg', '2021-05-07', '2021-05-07 09:32:39', 5),
	(56, '2021-05-07 01:32:39', '招聘标题6', '职位6', '招聘要求6', '工资待遇6', '工作地点6', '工作时间6', 6, '2021-05-07', '2021-05-07', '负责人6', '联系方式6', 'http://localhost:8080/springbootsudk0/upload/zhiyuanzhezhaopin_tupian6.jpg', '2021-05-07', '2021-05-07 09:32:39', 6);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
