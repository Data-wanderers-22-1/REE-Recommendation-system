/*
 Navicat Premium Dump SQL

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80032 (8.0.32)
 Source Host           : localhost:3306
 Source Schema         : vms

 Target Server Type    : MySQL
 Target Server Version : 80032 (8.0.32)
 File Encoding         : 65001

 Date: 05/12/2024 19:43:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `no` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '账号',
  `name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '名字',
  `password` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '密码',
  `sex` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '性别',
  `email` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `role_id` int NULL DEFAULT NULL COMMENT '角色 0超级管理员，1管理员，2普通账号',
  `isValid` varchar(4) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT 'Y' COMMENT '是否有效，有效为Y',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'sa', '超级管理员', '123', '1', '2113476467@qq.com', 0, 'Y');
INSERT INTO `user` VALUES (2, 'admin', '小明', '1234', '0', '114514@qq.com', 1, 'Y');
INSERT INTO `user` VALUES (3, 'cai', '小红', '12345', '0', '11767@163.com', 2, 'Y');
INSERT INTO `user` VALUES (4, 'wudi', '吴迪', '1234', '1', '11756@qui.com', 2, 'Y');
INSERT INTO `user` VALUES (6, '哎咿呀', '火车仔', '123456', '1', '454876@sdj.com', NULL, 'Y');
INSERT INTO `user` VALUES (7, '123', '123', '123', '1', '123', 2, 'Y');
INSERT INTO `user` VALUES (8, '12345', '123', '12345', '1', '123', 2, 'Y');
INSERT INTO `user` VALUES (9, 'hyq', '123', '123', '1', '123456', 2, 'Y');

SET FOREIGN_KEY_CHECKS = 1;
