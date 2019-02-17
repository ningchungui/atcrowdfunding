/*
Navicat MySQL Data Transfer

Source Server         : 本机数据库
Source Server Version : 50613
Source Host           : localhost:3306
Source Database       : atcrowdfunding

Target Server Type    : MYSQL
Target Server Version : 50613
File Encoding         : 65001

Date: 2019-02-17 23:27:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_permission`;
CREATE TABLE `t_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `open` int(11) DEFAULT NULL,
  `checked` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `children` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_permission
-- ----------------------------
INSERT INTO `t_permission` VALUES ('1', '系统菜单', null, '0', null, null, null, '');
INSERT INTO `t_permission` VALUES ('2', '控制面板', null, '1', null, null, null, null);
INSERT INTO `t_permission` VALUES ('3', '权限管理', null, '1', null, null, null, null);
INSERT INTO `t_permission` VALUES ('4', '用户维护', '/user/index', '3', null, null, null, null);
INSERT INTO `t_permission` VALUES ('5', '角色维护', '/role/index', '3', null, null, null, null);
INSERT INTO `t_permission` VALUES ('6', '许可维护', '/permission/index', '3', null, null, null, null);

-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO `t_role` VALUES ('1', '超级管理员');
INSERT INTO `t_role` VALUES ('2', 'PG-程序员');
INSERT INTO `t_role` VALUES ('3', 'SE-软件工程师');
INSERT INTO `t_role` VALUES ('4', 'TL-组长');
INSERT INTO `t_role` VALUES ('5', 'PM-项目经理');

-- ----------------------------
-- Table structure for t_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `t_role_permission`;
CREATE TABLE `t_role_permission` (
  `id` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  `permissionid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role_permission
-- ----------------------------
INSERT INTO `t_role_permission` VALUES ('1', '3', '1');
INSERT INTO `t_role_permission` VALUES ('2', '3', '3');
INSERT INTO `t_role_permission` VALUES ('3', '3', '5');
INSERT INTO `t_role_permission` VALUES ('4', '3', '6');
INSERT INTO `t_role_permission` VALUES ('5', '1', '1');
INSERT INTO `t_role_permission` VALUES ('6', '1', '2');
INSERT INTO `t_role_permission` VALUES ('7', '1', '3');
INSERT INTO `t_role_permission` VALUES ('8', '1', '4');
INSERT INTO `t_role_permission` VALUES ('9', '1', '5');
INSERT INTO `t_role_permission` VALUES ('10', '1', '6');
INSERT INTO `t_role_permission` VALUES ('11', '3', '2');
INSERT INTO `t_role_permission` VALUES ('12', '3', '4');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `loginacct` varchar(255) DEFAULT NULL,
  `userpswd` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'admin', 'admin', 'admin', null, '2019-02-16 23:09:15');
INSERT INTO `t_user` VALUES ('2', 'zhangsan', 'zhangsan', 'zhangsan', 'zhangsan@test.com', '2019-02-16 23:09:17');

-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `id` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user_role
-- ----------------------------
INSERT INTO `t_user_role` VALUES ('1', '1', '1');
INSERT INTO `t_user_role` VALUES ('2', '2', '3');
