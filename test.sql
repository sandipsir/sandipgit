/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50622
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50622
File Encoding         : 65001

Date: 2022-01-21 15:52:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for students
-- ----------------------------
DROP TABLE IF EXISTS `students`;
CREATE TABLE `students` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `First_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of students
-- ----------------------------
INSERT INTO `students` VALUES ('1', 'john', 'ghi', '2022-01-12 11:16:00');
