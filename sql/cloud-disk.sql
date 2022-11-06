/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 80031 (8.0.31)
 Source Host           : localhost:3306
 Source Schema         : cloud-disk

 Target Server Type    : MySQL
 Target Server Version : 80031 (8.0.31)
 File Encoding         : 65001

 Date: 06/11/2022 10:56:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for repository_pool
-- ----------------------------
DROP TABLE IF EXISTS `repository_pool`;
CREATE TABLE `repository_pool` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identity` varchar(36) DEFAULT NULL,
  `hash` varchar(32) DEFAULT NULL COMMENT '文件的唯一标识',
  `name` varchar(255) DEFAULT NULL,
  `ext` varchar(30) DEFAULT NULL COMMENT '文件扩展名',
  `size` double DEFAULT NULL COMMENT '文件大小',
  `path` varchar(255) DEFAULT NULL COMMENT '文件路径',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for share_basic
-- ----------------------------
DROP TABLE IF EXISTS `share_basic`;
CREATE TABLE `share_basic` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identity` varchar(36) DEFAULT NULL,
  `user_identity` varchar(36) DEFAULT NULL,
  `repository_identity` varchar(36) DEFAULT NULL,
  `expired_time` int DEFAULT NULL COMMENT '失效时间/s，0表示永不失效',
  `click_num` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for user_basic
-- ----------------------------
DROP TABLE IF EXISTS `user_basic`;
CREATE TABLE `user_basic` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identity` varchar(36) DEFAULT NULL,
  `name` varchar(60) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Table structure for user_repository
-- ----------------------------
DROP TABLE IF EXISTS `user_repository`;
CREATE TABLE `user_repository` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `identity` varchar(36) DEFAULT NULL,
  `user_identity` varchar(36) DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `repository_identity` varchar(36) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL COMMENT '文件或文件夹标识',
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;

SET FOREIGN_KEY_CHECKS = 1;
