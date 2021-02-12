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

 Date: 21/12/2020 15:17:55
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `pid` int(5) NOT NULL AUTO_INCREMENT,
  `pname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pfirsttype` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `psecondtype` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pprice` decimal(10, 2) NOT NULL,
  `pnum` int(5) NOT NULL,
  `ppublisherid` int(5) NOT NULL,
  `pdate` date NOT NULL,
  `pcontent` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ppicloc` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY USING BTREE (`pid`)
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
