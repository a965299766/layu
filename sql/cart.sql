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

 Date: 21/12/2020 15:18:08
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `cid` int(5) NOT NULL AUTO_INCREMENT,
  `cuserid` int(5) NULL DEFAULT NULL,
  `cproductid` int(5) NULL DEFAULT NULL,
  `cnum` int(10) NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`cid`)
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
