/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : bohan

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-11-17 20:07:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('3', '2016_11_10_053338_create_sys_menu_table', '1');
INSERT INTO `migrations` VALUES ('4', '2016_11_14_123645_create_sys_configs_table', '2');
INSERT INTO `migrations` VALUES ('5', '2016_11_15_015708_create_sys_admins_table', '3');
INSERT INTO `migrations` VALUES ('6', '2016_11_16_022506_create_sys_auth_groups_table', '4');
INSERT INTO `migrations` VALUES ('7', '2016_11_16_072156_create_sys_auth_rules_table', '4');
INSERT INTO `migrations` VALUES ('8', '2014_11_17_052565_create_users_table', '5');
INSERT INTO `migrations` VALUES ('10', '2016_11_17_044956_create_mobile_sms_table', '6');

-- ----------------------------
-- Table structure for mobile_sms
-- ----------------------------
DROP TABLE IF EXISTS `mobile_sms`;
CREATE TABLE `mobile_sms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机',
  `code` varchar(20) NOT NULL DEFAULT '' COMMENT '手机验证码',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态',
  `category` tinyint(4) NOT NULL DEFAULT '0' COMMENT '分类',
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '短信内容',
  `created_at` timestamp NULL DEFAULT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='短信';

-- ----------------------------
-- Records of mobile_sms
-- ----------------------------
INSERT INTO `mobile_sms` VALUES ('1', '13667635645', '327515', '0', '1', '【卓杭广告】您本次验证码为：327515，如不是本人操作，请忽略', '2016-11-17 08:52:47');
INSERT INTO `mobile_sms` VALUES ('2', '13667635645', '369672', '0', '1', '【卓杭广告】您本次验证码为：369672，如不是本人操作，请忽略', '2016-11-17 09:09:02');
INSERT INTO `mobile_sms` VALUES ('3', '13667635645', '883728', '0', '1', '【卓杭广告】您本次验证码为：883728，如不是本人操作，请忽略', '2016-11-17 09:27:28');
INSERT INTO `mobile_sms` VALUES ('4', '13667635645', '171323', '1', '1', '【卓杭广告】您本次验证码为：171323，如不是本人操作，请忽略', '2016-11-17 17:33:44');
INSERT INTO `mobile_sms` VALUES ('5', '13667635645', '751109', '1', '1', '【卓杭广告】您本次验证码为：751109，如不是本人操作，请忽略', '2016-11-17 18:43:15');
INSERT INTO `mobile_sms` VALUES ('6', '17723160667', '723077', '1', '1', '【卓杭广告】您本次验证码为：723077，如不是本人操作，请忽略', '2016-11-17 19:14:51');

-- ----------------------------
-- Table structure for sys_admin
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin`;
CREATE TABLE `sys_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '昵称',
  `role_id` tinyint(4) NOT NULL DEFAULT '0' COMMENT '用户组ID',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态：-1删除，0禁用，1正常',
  `remember_token` varchar(100) DEFAULT NULL COMMENT '记住我标识',
  `reg_time` timestamp NULL DEFAULT NULL COMMENT '注册时间',
  `login_time` timestamp NULL DEFAULT NULL COMMENT '最后登录时间',
  `login_ip` char(15) NOT NULL DEFAULT '' COMMENT '最后登录ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sys_admin_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='管理员表';

-- ----------------------------
-- Records of sys_admin
-- ----------------------------
INSERT INTO `sys_admin` VALUES ('1', 'admin', '$2y$10$gcM59gn/8fF7loOVC1a.QuffmG1wM1hKl.OpBc6BdiCh2Fz1WawRa', '超管', '1', '1', 'NUpLpFBJYvFzJHS5xSLyiM51bdN5M40PLMLqBa5rGFDwTqn7FYN652F4LeCc', '2016-11-15 09:17:38', '2016-11-17 02:15:59', '127.0.0.1');
INSERT INTO `sys_admin` VALUES ('2', 'xingyonghe', '$2y$10$1gGSm8H9xJx3/butYr/KheO2.gPnmh8prxOQ0AcPaXL0AgINKxM0m', '风影', '2', '1', 'KNYnalxXCJmMIp7OTmQywx2ybHgoaFLQPR27QqRmnGrfqeqr8zFh1Jdrxcaf', '2016-11-16 03:30:16', '2016-11-17 02:16:55', '127.0.0.1');
INSERT INTO `sys_admin` VALUES ('3', 'xingyingfeng', '$2y$10$6m.iqImB7wikG6L0SVJPt.pM0kdRQvvNzMvZWq4ETHw628LNycZ6C', '永和测试', '2', '1', null, '2016-11-16 03:33:25', '2016-11-16 03:33:25', '');

-- ----------------------------
-- Table structure for sys_auth_group
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_group`;
CREATE TABLE `sys_auth_group` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `description` varchar(100) NOT NULL DEFAULT '' COMMENT '描述信息',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '用户组状态:0禁用，1正常',
  `rules` varchar(1000) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='用户组';

-- ----------------------------
-- Records of sys_auth_group
-- ----------------------------
INSERT INTO `sys_auth_group` VALUES ('1', '超级管理员', '拥有网站所有权限', '1', '');
INSERT INTO `sys_auth_group` VALUES ('2', '用户组1', '用户组1', '1', '[\"1\",\"13\",\"15\",\"41\",\"16\",\"17\",\"18\",\"12\",\"11\",\"19\",\"42\",\"43\",\"45\",\"46\",\"47\",\"20\",\"54\"]');
INSERT INTO `sys_auth_group` VALUES ('3', '用户组2', '用户组2', '1', '[\"1\",\"13\",\"15\",\"41\",\"16\",\"17\",\"18\",\"12\",\"11\",\"19\",\"42\",\"43\",\"45\",\"46\",\"47\",\"20\",\"54\"]');

-- ----------------------------
-- Table structure for sys_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_rule`;
CREATE TABLE `sys_auth_rule` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识,url',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '类型:1url，2主菜单',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COMMENT='权限规则';

-- ----------------------------
-- Records of sys_auth_rule
-- ----------------------------
INSERT INTO `sys_auth_rule` VALUES ('1', '首页', 'admin.index.index', '2');
INSERT INTO `sys_auth_rule` VALUES ('2', '新增', 'admin.warden.create', '1');
INSERT INTO `sys_auth_rule` VALUES ('3', '添加', 'admin.warden.add', '1');
INSERT INTO `sys_auth_rule` VALUES ('4', '修改', 'admin.warden.edit', '1');
INSERT INTO `sys_auth_rule` VALUES ('5', '更新', 'admin.warden.update', '1');
INSERT INTO `sys_auth_rule` VALUES ('6', '禁用', 'admin.warden.forbid', '1');
INSERT INTO `sys_auth_rule` VALUES ('7', '启用', 'admin.warden.resume', '1');
INSERT INTO `sys_auth_rule` VALUES ('8', '删除', 'admin.warden.destroy', '1');
INSERT INTO `sys_auth_rule` VALUES ('9', '重置密码', 'admin.warden.resetpass', '1');
INSERT INTO `sys_auth_rule` VALUES ('10', '更新密码', 'admin.warden.change', '1');
INSERT INTO `sys_auth_rule` VALUES ('11', '批量更新', 'admin.menu.submit', '1');
INSERT INTO `sys_auth_rule` VALUES ('12', '批量新增', 'admin.menu.batch', '1');
INSERT INTO `sys_auth_rule` VALUES ('13', '系统', 'admin.menu.index', '2');
INSERT INTO `sys_auth_rule` VALUES ('14', '用户', 'admin.warden.index', '2');
INSERT INTO `sys_auth_rule` VALUES ('15', '菜单管理', 'admin.menu.index', '1');
INSERT INTO `sys_auth_rule` VALUES ('16', '新增', 'admin.menu.create', '1');
INSERT INTO `sys_auth_rule` VALUES ('17', '编辑', 'admin.menu.edit', '1');
INSERT INTO `sys_auth_rule` VALUES ('18', '更新', 'admin.menu.update', '1');
INSERT INTO `sys_auth_rule` VALUES ('19', '网站配置', 'admin.config.index', '1');
INSERT INTO `sys_auth_rule` VALUES ('20', '网站设置', 'admin.config.setting', '1');
INSERT INTO `sys_auth_rule` VALUES ('21', '管理员', 'admin.warden.index', '1');
INSERT INTO `sys_auth_rule` VALUES ('22', '用户组', 'admin.group.index', '1');
INSERT INTO `sys_auth_rule` VALUES ('23', '新增', 'admin.group.create', '1');
INSERT INTO `sys_auth_rule` VALUES ('24', '修改', 'admin.group.edit', '1');
INSERT INTO `sys_auth_rule` VALUES ('25', '更新', 'admin.group.update', '1');
INSERT INTO `sys_auth_rule` VALUES ('26', '删除', 'admin.group.destroy', '1');
INSERT INTO `sys_auth_rule` VALUES ('27', '用户授权', 'admin.group.access', '1');
INSERT INTO `sys_auth_rule` VALUES ('28', '更新权限', 'admin.group.write', '1');
INSERT INTO `sys_auth_rule` VALUES ('41', '删除', 'admin.menu.destroy', '1');
INSERT INTO `sys_auth_rule` VALUES ('42', '新增', 'admin.config.create', '1');
INSERT INTO `sys_auth_rule` VALUES ('43', '修改', 'admin.config.edit', '1');
INSERT INTO `sys_auth_rule` VALUES ('45', '更新', 'admin.config.update', '1');
INSERT INTO `sys_auth_rule` VALUES ('46', '排序', 'admin.config.sort', '1');
INSERT INTO `sys_auth_rule` VALUES ('47', '更新排序', 'admin.config.order', '1');
INSERT INTO `sys_auth_rule` VALUES ('54', '更新', 'admin.config.post', '1');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '配置标题',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '配置名称',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '配置类型:0数字，1字符，2文本，3数组，4枚举，5图片',
  `group` tinyint(4) NOT NULL DEFAULT '0' COMMENT '配置分组:0基本设置，1SEO优化',
  `value` varchar(300) NOT NULL DEFAULT '' COMMENT '配置值',
  `extra` varchar(300) NOT NULL DEFAULT '' COMMENT '配置项',
  `remark` varchar(150) NOT NULL DEFAULT '' COMMENT '配置说明',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COMMENT='网站配置';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '配置类型列表', 'CONFIG_TYPE_LIST', '0', '3', '1', '1:数字\r\n2:字符\r\n3:文本\r\n4:枚举\r\n5:图片', '', '主要用于数据解析和页面表单的生成', '2016-11-14 13:32:11', '2016-11-14 13:41:33');
INSERT INTO `sys_config` VALUES ('2', '配置分组', 'CONFIG_GROUP_LIST', '0', '3', '1', '1:基本\r\n2:系统\r\n3:内容\r\n4:用户', '', '配置分组', '2016-11-14 13:40:43', '2016-11-14 13:41:45');
INSERT INTO `sys_config` VALUES ('3', '后台系统列表页数目', 'SYSTEM_LIST_LIMIT', '0', '1', '1', '10', '', '后台非模块部分列表页数目', '2016-11-14 13:48:10', '2016-11-17 03:33:00');
INSERT INTO `sys_config` VALUES ('4', '网站LOGO', 'WEB_SITE_LOGO', '0', '5', '2', '', '', '网站LOGO', '2016-11-14 13:49:36', '2016-11-14 13:49:36');
INSERT INTO `sys_config` VALUES ('5', '网站域名地址', 'WEB_SITE_URL', '0', '2', '2', 'http://www.bohan.com', '', '网站域名地址', '2016-11-14 13:50:27', '2016-11-14 13:50:27');
INSERT INTO `sys_config` VALUES ('6', '网站名称', 'WEB_SITE_TITLE', '0', '2', '2', 'BoHanCMS', '', '网站标题前台显示标题', '2016-11-17 02:27:55', '2016-11-17 02:28:05');
INSERT INTO `sys_config` VALUES ('7', '是否开启会员注册', 'WEB_REGISTER_ALLOW', '0', '4', '4', '1', '0:不允许\r\n1:允许', '是否开启网站会员注册功能', '2016-11-17 02:30:04', '2016-11-17 02:30:04');
INSERT INTO `sys_config` VALUES ('8', '注册是否需要审核', 'WEB_REGISTER_VERIFY', '0', '4', '4', '0', '0:不需要\r\n1:需要', '网站会员注册是否需要审核', '2016-11-17 02:30:48', '2016-11-17 02:30:48');
INSERT INTO `sys_config` VALUES ('9', '自媒体是否需要审核', 'USER_MEDIA_VERIFY', '0', '4', '4', '0', '0:不需要\r\n1:需要', '新增自媒体是否需要后台管理员审核', '2016-11-17 02:31:48', '2016-11-17 02:31:48');
INSERT INTO `sys_config` VALUES ('10', '网站会员角色', 'WEB_SITE_MEMBER', '0', '3', '4', '1:自媒体\r\n2:广告主', '', '网站会员可以注册的角色', '2016-11-17 03:34:35', '2016-11-17 03:34:35');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `pid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `url` varchar(50) NOT NULL DEFAULT '' COMMENT '链接名称',
  `hide` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏:0显示，1隐藏',
  `icon` varchar(50) NOT NULL DEFAULT '' COMMENT 'class样式名称',
  `group` varchar(50) NOT NULL DEFAULT '' COMMENT '分组',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COMMENT='系统菜单';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '首页', '0', '0', 'admin.index.index', '0', 'icon-home', '');
INSERT INTO `sys_menu` VALUES ('2', '系统', '0', '0', 'admin.menu.index', '0', 'icon-cogs', '');
INSERT INTO `sys_menu` VALUES ('3', '用户', '0', '0', 'admin.warden.index', '0', 'icon-user', '');
INSERT INTO `sys_menu` VALUES ('4', '菜单管理', '2', '0', 'admin.menu.index', '0', ' icon-list', '系统设置:icon-cogs');
INSERT INTO `sys_menu` VALUES ('5', '新增', '4', '0', 'admin.menu.create', '1', '', '系统设置:icon-cogs');
INSERT INTO `sys_menu` VALUES ('6', '编辑', '4', '0', 'admin.menu.edit', '1', '', '系统设置:icon-cogs');
INSERT INTO `sys_menu` VALUES ('7', '更新', '4', '0', 'admin.menu.update', '1', '', '系统设置:icon-cogs');
INSERT INTO `sys_menu` VALUES ('8', '网站配置', '2', '0', 'admin.config.index', '0', 'icon-cog', '系统设置:icon-cogs');
INSERT INTO `sys_menu` VALUES ('9', '网站设置', '2', '0', 'admin.config.setting', '0', 'icon-wrench', '系统设置:icon-cogs');
INSERT INTO `sys_menu` VALUES ('10', '管理员', '3', '0', 'admin.warden.index', '0', 'icon-male', '权限管理:icon-qrcode');
INSERT INTO `sys_menu` VALUES ('11', '批量新增', '4', '0', 'admin.menu.batch', '1', '', '系统设置:icon-cogs');
INSERT INTO `sys_menu` VALUES ('12', '批量更新', '4', '0', 'admin.menu.submit', '1', '', '系统设置:icon-cogs');
INSERT INTO `sys_menu` VALUES ('13', '新增', '10', '0', 'admin.warden.create', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('14', '添加', '10', '0', 'admin.warden.add', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('15', '修改', '10', '0', 'admin.warden.edit', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('16', '更新', '10', '0', 'admin.warden.update', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('17', '禁用', '10', '0', 'admin.warden.forbid', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('18', '启用', '10', '0', 'admin.warden.resume', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('19', '删除', '10', '0', 'admin.warden.destroy', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('20', '重置密码', '10', '0', 'admin.warden.resetpass', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('21', '更新密码', '10', '0', 'admin.warden.change', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('22', '用户组', '3', '0', 'admin.group.index', '0', 'icon-shield', '权限管理:icon-qrcode');
INSERT INTO `sys_menu` VALUES ('23', '新增', '22', '0', 'admin.group.create', '1', '', '权限管理:icon-qrcode');
INSERT INTO `sys_menu` VALUES ('24', '修改', '22', '0', 'admin.group.edit', '1', '', '权限管理:icon-qrcode');
INSERT INTO `sys_menu` VALUES ('25', '更新', '22', '0', 'admin.group.update', '1', '', '权限管理:icon-qrcode');
INSERT INTO `sys_menu` VALUES ('26', '删除', '22', '0', 'admin.group.destroy', '1', '', '权限管理:icon-qrcode');
INSERT INTO `sys_menu` VALUES ('27', '用户授权', '22', '0', 'admin.group.access', '1', '', '权限管理:icon-qrcode');
INSERT INTO `sys_menu` VALUES ('28', '更新权限', '22', '0', 'admin.group.write', '1', '', '权限管理:icon-qrcode');
INSERT INTO `sys_menu` VALUES ('29', '删除', '4', '0', 'admin.menu.destroy', '1', '', '系统设置:icon-cogs');
INSERT INTO `sys_menu` VALUES ('30', '新增', '8', '0', 'admin.config.create', '0', '', '系统设置:icon-cogs');
INSERT INTO `sys_menu` VALUES ('31', '修改', '8', '0', 'admin.config.edit', '1', '', '系统设置:icon-cogs');
INSERT INTO `sys_menu` VALUES ('32', '更新', '8', '0', 'admin.config.update', '1', '', '系统设置:icon-cogs');
INSERT INTO `sys_menu` VALUES ('33', '排序', '8', '0', 'admin.config.sort', '1', '', '系统设置:icon-cogs');
INSERT INTO `sys_menu` VALUES ('34', '更新排序', '8', '0', 'admin.config.order', '1', '', '系统设置:icon-cogs');
INSERT INTO `sys_menu` VALUES ('35', '更新', '9', '0', 'admin.config.post', '1', '', '系统设置:icon-cogs');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL COMMENT '用户名:手机号',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `remember_token` varchar(100) DEFAULT NULL COMMENT '记住我',
  `nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '联系人',
  `is_auth` tinyint(4) NOT NULL DEFAULT '0' COMMENT '手机号是否认证通过:1已认证，0未认证',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '用户类型:1普通2广告主',
  `qq` varchar(20) NOT NULL DEFAULT '' COMMENT 'QQ',
  `weixin` varchar(150) NOT NULL DEFAULT '' COMMENT '微信',
  `freeze` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '冻结金额',
  `balance` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '余额',
  `company` varchar(255) NOT NULL DEFAULT '0' COMMENT '公司名称',
  `custom_id` int(11) NOT NULL DEFAULT '0' COMMENT '客服ID',
  `custom_name` varchar(150) NOT NULL DEFAULT '' COMMENT '客服名称',
  `status` tinyint(4) NOT NULL DEFAULT '2' COMMENT '状态:-1删除、0锁定、1正常、2待审核',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `reg_time` timestamp NULL DEFAULT NULL COMMENT '注册时间',
  `reg_ip` varchar(45) NOT NULL DEFAULT '' COMMENT '注册IP',
  `login_time` timestamp NULL DEFAULT NULL COMMENT '最后登录时间',
  `login_ip` varchar(45) NOT NULL DEFAULT '' COMMENT '最后登录IP',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='用户基本信息';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('2', '13667635645', '$2y$10$968a2DNce1ev3N0QTuhwRe97xFGCqaQMguMyURA.UBJziRx5sB3Pm', 'eVSXsKM6KJcLsrcngHhGNFIgrQDgVtRNykXsfMSLpbVtogwxEGf4NRa552ag', '邢永和', '1', '1', '1342234898', '', '0.00', '0.00', '', '3', '永和测试', '1', '', '2016-11-17 18:46:49', '127.0.0.1', '2016-11-17 19:42:21', '127.0.0.1');
INSERT INTO `user` VALUES ('3', '17723160667', '$2y$10$55bR8O6QHIFe6X70fM0nn.FeyC07/KGZmvBpt4LtWYZ0FelBBx48S', null, '形影楓', '1', '2', '', '', '0.00', '0.00', '重庆问问我科技', '3', '永和测试', '1', '', '2016-11-17 19:15:14', '127.0.0.1', null, '');

-- ----------------------------
-- Table structure for user_ads
-- ----------------------------
DROP TABLE IF EXISTS `user_ads`;
CREATE TABLE `user_ads` (
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `wait_account` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '待结算金额',
  `finish_account` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '已结算金额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='广告主用户扩展信息';

-- ----------------------------
-- Records of user_ads
-- ----------------------------
INSERT INTO `user_ads` VALUES ('3', '0.00', '0.00');

-- ----------------------------
-- Table structure for user_media
-- ----------------------------
DROP TABLE IF EXISTS `user_media`;
CREATE TABLE `user_media` (
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `medias` int(11) NOT NULL DEFAULT '0' COMMENT '媒体资源数量',
  `wait_account` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '待结算金额',
  `finish_account` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '已结算金额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='自媒体用户扩展信息';

-- ----------------------------
-- Records of user_media
-- ----------------------------
INSERT INTO `user_media` VALUES ('2', '0', '0.00', '0.00');
