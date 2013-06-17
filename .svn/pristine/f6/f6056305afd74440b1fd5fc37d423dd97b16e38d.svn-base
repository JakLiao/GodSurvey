/*
Navicat MySQL Data Transfer

Source Server         : Mysql56
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : jdbc

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2013-06-09 19:00:09
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `loginfo`
-- ----------------------------
DROP TABLE IF EXISTS `loginfo`;
CREATE TABLE `loginfo` (
  `userName` varchar(20) NOT NULL,
  `loginTime` varchar(30) NOT NULL,
  `logoutTime` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`userName`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of loginfo
-- ----------------------------
INSERT INTO `loginfo` VALUES ('dad', 'Fri May 31 12:06:35 CST 2013', 'Fri May 31 12:37:25 CST 2013');
INSERT INTO `loginfo` VALUES ('Jak', 'Sat Jun 08 10:53:58 CST 2013', 'Sat Jun 08 10:54:06 CST 2013');
INSERT INTO `loginfo` VALUES ('JJ', 'Sat Jun 08 10:53:37 CST 2013', 'Sat Jun 08 10:53:41 CST 2013');
INSERT INTO `loginfo` VALUES ('Miku', 'Sun Jun 09 18:14:54 CST 2013', 'Sun Jun 09 18:43:31 CST 2013');
INSERT INTO `loginfo` VALUES ('Milk', 'Fri Jun 07 11:33:44 CST 2013', 'Fri Jun 07 11:34:44 CST 2013');

-- ----------------------------
-- Table structure for `papers`
-- ----------------------------
DROP TABLE IF EXISTS `papers`;
CREATE TABLE `papers` (
  `paperId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `paperTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `paperSummary` varchar(300) CHARACTER SET utf8 DEFAULT NULL,
  `paperStartDate` datetime DEFAULT NULL,
  `paperEndDate` datetime DEFAULT NULL,
  `paperBg` varchar(40) CHARACTER SET utf8 DEFAULT 'default_bg.png',
  `paperType` int(11) DEFAULT NULL,
  `paperStatus` int(11) DEFAULT NULL,
  `paperCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`paperId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of papers
-- ----------------------------
INSERT INTO `papers` VALUES ('1', '1', '测试问卷', '测试而已!', '2013-06-01 00:00:00', '2013-06-10 00:00:00', 'default_bg.png', '1', '0', '0');
INSERT INTO `papers` VALUES ('2', '0', '你是谁', '那个号', '2013-06-07 12:00:00', '2013-07-07 00:00:00', 'default_bg.png', '1', '0', '0');
INSERT INTO `papers` VALUES ('3', '0', '你好吗', '我要', '2013-06-07 00:00:00', '2013-07-07 00:00:00', 'default_bg.png', '1', '0', '0');
INSERT INTO `papers` VALUES ('4', '0', '拉拉啦', '你好', '2013-06-07 00:00:00', '2013-07-07 00:00:00', 'default_bg.png', '4', '0', '0');
INSERT INTO `papers` VALUES ('5', '0', '今天吃饭了吗', '哈哈哈', '2013-06-07 00:00:00', '2013-07-07 00:00:00', 'default_bg.png', '3', '0', '0');
INSERT INTO `papers` VALUES ('6', '0', '如果你不见了', '我去哪里', '2013-06-07 00:00:00', '2013-07-07 00:00:00', 'default_bg.png', '3', '0', '0');
INSERT INTO `papers` VALUES ('7', '0', '你过得好吗', '问你话呢', '2013-06-07 00:12:00', '2013-07-07 00:00:00', 'default_bg.png', '4', '0', '0');
INSERT INTO `papers` VALUES ('8', '0', '我文化怎样', '很爱护', '2013-06-07 00:00:00', '2013-07-07 00:00:00', 'default_bg.png', '1', '0', '0');
INSERT INTO `papers` VALUES ('9', '0', 'dsf ', 'sdf', '2013-06-07 00:00:00', '2013-07-07 00:00:00', 'default_bg.png', '1', '0', '0');
INSERT INTO `papers` VALUES ('10', '0', 'jlkjk', 'jojo', '2013-06-08 09:46:45', '2013-07-08 09:46:45', 'default_bg.png', '1', '0', '0');
INSERT INTO `papers` VALUES ('11', '0', 'jklji', 'ouoiu', '2013-06-08 09:50:56', '2013-07-08 09:50:56', 'default_bg.png', '1', '0', '0');
INSERT INTO `papers` VALUES ('12', '2', '吃饭了没？', '好人的', '2013-06-09 17:06:11', '2013-07-09 17:06:11', 'default_bg.png', '4', '0', '0');
INSERT INTO `papers` VALUES ('13', '2', '期末考试题', '你复习了吗', '2013-06-09 18:10:55', '2013-07-09 18:10:55', 'default_bg.png', '1', '0', '0');

-- ----------------------------
-- Table structure for `questions`
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `qstId` int(11) NOT NULL AUTO_INCREMENT,
  `paperId` int(11) DEFAULT NULL,
  `qstType` int(11) DEFAULT NULL,
  `qstTitle` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `qstOption` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `qstAnswer` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`qstId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('1', '1', '1', 'First Question', 'A:廖浩杰#B:梁康华 #C:林守煌 #D:林俊杰', '7&2&3&2');
INSERT INTO `questions` VALUES ('2', '3', '1', '我是谁', '好人#坏人##', '2&1&0&0');
INSERT INTO `questions` VALUES ('3', '4', '1', '了金额', '的#飞#个#', '2&2&0&0');
INSERT INTO `questions` VALUES ('4', '5', '1', '吃了没', 'yes#no##', '1&0&0&0');
INSERT INTO `questions` VALUES ('5', '6', '1', '爱你？', '不#yes#no#是', '0&3&6&2');
INSERT INTO `questions` VALUES ('6', '6', '1', '爱你？', '不#yes#no#是', '3&1&5&1');
INSERT INTO `questions` VALUES ('7', '7', '1', '好人', '觉得#闹#的呢#么么', '1&0&1&1');
INSERT INTO `questions` VALUES ('8', '8', '1', '苏定方', '6#1#2#4', '0&0&1&0');
INSERT INTO `questions` VALUES ('9', '8', '1', '好人啊', '答复#回答#response#', '2&0&0&0');
INSERT INTO `questions` VALUES ('10', '8', '1', '换人呢', '1#2#3#4', '1&1&0&0');
INSERT INTO `questions` VALUES ('11', '9', '1', 'asdf', 'asdf#sdf#asdf#sdf', '0&0&1&0');
INSERT INTO `questions` VALUES ('12', '9', '1', '123412', '1234#1234#1234#1234', '1&0&0&0');
INSERT INTO `questions` VALUES ('13', '10', '1', 'oijio', 'jo#lkj#lkj#gug', '0&0&0&0');
INSERT INTO `questions` VALUES ('14', '11', '1', 'joij', 'juu###', '1&0&0&0');
INSERT INTO `questions` VALUES ('15', '12', '3', '身上', '1234#2#3#4', '0&1&0&0');
INSERT INTO `questions` VALUES ('16', '13', '1', '1+1', '1#2#3#4', '1&1&2&0');
INSERT INTO `questions` VALUES ('17', '13', '2', '怎么算乘法', '', '我说了算');
INSERT INTO `questions` VALUES ('18', '13', '3', '下列哪项是对的？', '1+1=2#3+2=4#2+1=9#3+2=8', '0&1&1&1');

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `userinfo` (
  `userId` int(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(20) NOT NULL DEFAULT '123456',
  `gender` varchar(4) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `type` int(1) NOT NULL DEFAULT '3',
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('1', 'Jak', '123456', '男', 'earth', '2');
INSERT INTO `userinfo` VALUES ('2', 'Miku', '123456', '男', 'asd', '1');
INSERT INTO `userinfo` VALUES ('5', 'dad', '123456', '男', 'ads', '2');
INSERT INTO `userinfo` VALUES ('8', 'JJ', '123456', '男', 'asd', '3');
INSERT INTO `userinfo` VALUES ('11', 'Milk', '123456', '男', '123', '3');

-- ----------------------------
-- Table structure for `voteitem`
-- ----------------------------
DROP TABLE IF EXISTS `voteitem`;
CREATE TABLE `voteitem` (
  `votename` varchar(20) NOT NULL,
  `votenum` int(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=gbk;

-- ----------------------------
-- Records of voteitem
-- ----------------------------
