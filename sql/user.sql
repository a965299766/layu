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

 Date: 21/12/2020 15:16:31
*/

SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `uid` int(5) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uemail` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uphone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `upassword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `uaddress` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY USING BTREE (`uid`)
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
