/*
 Navicat Premium Data Transfer

 Source Server         : demo
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : mysql

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 21/03/2019 14:19:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for Tb
-- ----------------------------
DROP TABLE IF EXISTS `Tb`;
CREATE TABLE `Tb`  (
  `Idx` int(255) NULL DEFAULT NULL,
  `Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `CreateTime` datetime(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of Tb
-- ----------------------------
INSERT INTO `Tb` VALUES (1, 'aa', '2019-03-21 11:23:42');
INSERT INTO `Tb` VALUES (2, 'bb', '2019-03-21 11:23:51');

SET FOREIGN_KEY_CHECKS = 1;
