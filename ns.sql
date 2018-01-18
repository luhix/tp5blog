/*
Navicat MySQL Data Transfer

Source Server         : luhix
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : ns

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-01-18 18:23:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for ns_articles
-- ----------------------------
DROP TABLE IF EXISTS `ns_articles`;
CREATE TABLE `ns_articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文章内容主键',
  `author` varchar(50) NOT NULL DEFAULT '' COMMENT '作者',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '文章标题',
  `content` text COMMENT '文章内容',
  `location` varchar(30) NOT NULL DEFAULT '' COMMENT '发表地点',
  `item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属栏目',
  `tag_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属标签',
  `create_time` int(10) unsigned DEFAULT NULL,
  `update_time` int(10) unsigned DEFAULT NULL COMMENT '更新时间',
  `num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '阅读量',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序',
  `img_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '图片路径id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ns_articles
-- ----------------------------

-- ----------------------------
-- Table structure for ns_banners
-- ----------------------------
DROP TABLE IF EXISTS `ns_banners`;
CREATE TABLE `ns_banners` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '首页Banner主键',
  `img_url` varchar(255) NOT NULL DEFAULT '',
  `sort` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '图片排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1--启用    0--不启用',
  `create_time` int(10) unsigned DEFAULT NULL,
  `update_time` int(10) unsigned DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ns_banners
-- ----------------------------

-- ----------------------------
-- Table structure for ns_imgs
-- ----------------------------
DROP TABLE IF EXISTS `ns_imgs`;
CREATE TABLE `ns_imgs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '图片主键',
  `img_url` varchar(255) DEFAULT '' COMMENT '图片地址',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ns_imgs
-- ----------------------------

-- ----------------------------
-- Table structure for ns_notices
-- ----------------------------
DROP TABLE IF EXISTS `ns_notices`;
CREATE TABLE `ns_notices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '通知表主键',
  `name` varchar(150) NOT NULL DEFAULT '' COMMENT '通知内容',
  `create_time` int(11) DEFAULT NULL COMMENT '创建时间',
  `update_time` int(11) DEFAULT NULL COMMENT '更新状态',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '是否开启',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ns_notices
-- ----------------------------

-- ----------------------------
-- Table structure for ns_tags
-- ----------------------------
DROP TABLE IF EXISTS `ns_tags`;
CREATE TABLE `ns_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '标签主键',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '标签名',
  `create_time` int(11) DEFAULT NULL,
  `delete_time` int(11) DEFAULT NULL,
  `item_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '所属栏目',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of ns_tags
-- ----------------------------
