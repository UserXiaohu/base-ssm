/*
Navicat MySQL Data Transfer

Source Server         : user
Source Server Version : 50723
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50723
File Encoding         : 65001

Date: 2018-12-12 19:44:15
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_type`
-- ----------------------------
DROP TABLE IF EXISTS `tb_type`;
CREATE TABLE `tb_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_type
-- ----------------------------
INSERT INTO `tb_type` VALUES ('1', '普通用户');
INSERT INTO `tb_type` VALUES ('2', '高级用户');
INSERT INTO `tb_type` VALUES ('3', '管理员');

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `brithday` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `typeid` (`typeid`),
  CONSTRAINT `tb_user_ibfk_1` FOREIGN KEY (`typeid`) REFERENCES `tb_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '张三', '1999-01-01', '19', '1');
INSERT INTO `tb_user` VALUES ('2', '李四', '1990-01-01', '28', '2');
INSERT INTO `tb_user` VALUES ('3', '王五', '1992-01-01', '26', '3');
INSERT INTO `tb_user` VALUES ('4', '赵六', '1994-01-01', '24', '1');
