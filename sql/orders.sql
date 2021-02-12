/*
 Navicat Premium Data Transfer

 Source Server         : 杜尤伟的mysql
 Source Server Type    : MySQL
 Source Server Version : 50087
 Source Host           : localhost:3306
 Source Schema         : shopping

 Target Server Type    : MySQL
 Target Server Version : 50087
 File Encoding         : 65001

 Date: 21/12/2020 15:18:02
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `oid` int(5) NOT NULL AUTO_INCREMENT,
  `ouserid` int(5) NOT NULL,
  `oproductid` int(5) NOT NULL,
  `onum` int(10) NOT NULL,
  `odate` date NOT NULL,
  PRIMARY KEY USING BTREE (`oid`)
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
