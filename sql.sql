/*
Navicat MySQL Data Transfer

Source Server         : 本地
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : bohan

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2016-12-27 21:54:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `catid` int(11) NOT NULL DEFAULT '0' COMMENT '分类ID',
  `descrition` varchar(300) NOT NULL DEFAULT '' COMMENT '描述',
  `view` int(11) NOT NULL DEFAULT '0' COMMENT '浏览',
  `author` varchar(50) NOT NULL DEFAULT '' COMMENT '作者',
  `quote` varchar(255) NOT NULL DEFAULT '' COMMENT '来源',
  `content` text NOT NULL COMMENT '内容',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态:-1删除、1正常',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='文章';

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES ('1', '是打发打发', '1', '啊撒旦范德萨发生的事...', '0', '撒地方', '撒地方', '<p>啊撒旦范德萨发生的事<br/></p>', '1', '2016-11-18 14:00:28', '2016-11-18 14:34:50');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '分类名称',
  `pid` int(11) NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `model` varchar(30) NOT NULL DEFAULT '' COMMENT '模块分组',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COMMENT='分类';

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '国外新闻', '0', '0', 'article', '2016-11-18 12:00:19', '2016-11-18 16:23:38');
INSERT INTO `category` VALUES ('2', '国内新闻', '0', '0', 'article', '2016-11-18 12:00:30', '2016-11-18 16:23:27');
INSERT INTO `category` VALUES ('5', '撒地方', '1', '0', 'article', '2016-11-18 13:38:17', '2016-11-18 13:38:17');
INSERT INTO `category` VALUES ('6', '萨芬', '2', '0', 'article', '2016-11-18 13:38:25', '2016-11-18 13:38:25');
INSERT INTO `category` VALUES ('7', '电商', '0', '0', 'star', '2016-12-24 16:09:26', '2016-12-24 16:09:26');
INSERT INTO `category` VALUES ('8', 'APP', '0', '0', 'star', '2016-12-24 16:09:38', '2016-12-24 16:09:38');
INSERT INTO `category` VALUES ('9', '游戏', '0', '0', 'star', '2016-12-24 16:09:45', '2016-12-24 16:09:45');
INSERT INTO `category` VALUES ('10', '品牌', '0', '0', 'star', '2016-12-24 16:09:52', '2016-12-24 16:09:52');
INSERT INTO `category` VALUES ('11', '男装', '7', '0', 'star', '2016-12-24 16:10:12', '2016-12-24 16:10:12');
INSERT INTO `category` VALUES ('12', '女装', '7', '0', 'star', '2016-12-24 16:11:22', '2016-12-24 16:11:22');
INSERT INTO `category` VALUES ('13', '美容', '7', '0', 'star', '2016-12-24 16:11:46', '2016-12-24 16:11:46');
INSERT INTO `category` VALUES ('14', '整形', '7', '0', 'star', '2016-12-24 16:11:54', '2016-12-24 16:11:54');
INSERT INTO `category` VALUES ('15', '时尚购物', '8', '0', 'star', '2016-12-24 16:12:16', '2016-12-24 16:12:16');
INSERT INTO `category` VALUES ('16', '医疗健康', '8', '0', 'star', '2016-12-24 16:12:28', '2016-12-24 16:12:28');
INSERT INTO `category` VALUES ('17', '页游', '9', '0', 'star', '2016-12-24 16:12:55', '2016-12-24 16:12:55');
INSERT INTO `category` VALUES ('18', '端游', '9', '0', 'star', '2016-12-24 16:13:07', '2016-12-24 16:13:07');
INSERT INTO `category` VALUES ('19', '手游', '9', '0', 'star', '2016-12-24 16:13:18', '2016-12-24 16:13:18');
INSERT INTO `category` VALUES ('20', '手表饰品', '10', '0', 'star', '2016-12-24 16:13:28', '2016-12-24 16:13:28');
INSERT INTO `category` VALUES ('21', '汽车品牌', '10', '0', 'star', '2016-12-24 16:13:40', '2016-12-24 16:13:40');
INSERT INTO `category` VALUES ('22', '产品发布会', '10', '0', 'star', '2016-12-24 16:13:49', '2016-12-24 16:13:49');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

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
INSERT INTO `migrations` VALUES ('11', '2016_11_18_173404_create_articles_table', '7');
INSERT INTO `migrations` VALUES ('14', '2016_11_18_173899_create_categories_table', '8');
INSERT INTO `migrations` VALUES ('15', '2016_11_18_122814_create_sys_channels_table', '9');
INSERT INTO `migrations` VALUES ('16', '2016_11_22_103438_create_seos_table', '10');
INSERT INTO `migrations` VALUES ('17', '2016_11_22_112910_create_seo_names_table', '11');
INSERT INTO `migrations` VALUES ('18', '2016_11_23_164620_create_user_accounts_table', '12');
INSERT INTO `migrations` VALUES ('19', '2016_11_24_194547_create_user_ads_tasks_table', '13');
INSERT INTO `migrations` VALUES ('20', '2016_10_01_221315_create_pictures_table', '14');

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COMMENT='短信';

-- ----------------------------
-- Records of mobile_sms
-- ----------------------------
INSERT INTO `mobile_sms` VALUES ('1', '13667635645', '327515', '0', '1', '【卓杭广告】您本次验证码为：327515，如不是本人操作，请忽略', '2016-11-17 08:52:47');
INSERT INTO `mobile_sms` VALUES ('2', '13667635645', '369672', '0', '1', '【卓杭广告】您本次验证码为：369672，如不是本人操作，请忽略', '2016-11-17 09:09:02');
INSERT INTO `mobile_sms` VALUES ('3', '13667635645', '883728', '0', '1', '【卓杭广告】您本次验证码为：883728，如不是本人操作，请忽略', '2016-11-17 09:27:28');
INSERT INTO `mobile_sms` VALUES ('4', '13667635645', '171323', '1', '1', '【卓杭广告】您本次验证码为：171323，如不是本人操作，请忽略', '2016-11-17 17:33:44');
INSERT INTO `mobile_sms` VALUES ('5', '13667635645', '751109', '1', '1', '【卓杭广告】您本次验证码为：751109，如不是本人操作，请忽略', '2016-11-17 18:43:15');
INSERT INTO `mobile_sms` VALUES ('6', '17723160667', '723077', '1', '1', '【卓杭广告】您本次验证码为：723077，如不是本人操作，请忽略', '2016-11-17 19:14:51');
INSERT INTO `mobile_sms` VALUES ('7', '13667635645', '485196', '0', '1', '【卓杭广告】您本次验证码为：485196，如不是本人操作，请忽略', '2016-11-22 18:22:49');
INSERT INTO `mobile_sms` VALUES ('8', '13667635645', '365297', '1', '1', '【卓杭广告】您本次验证码为：365297，如不是本人操作，请忽略', '2016-11-22 18:36:15');
INSERT INTO `mobile_sms` VALUES ('9', '13667635645', '593958', '1', '1', '【卓杭广告】您本次验证码为：593958，如不是本人操作，请忽略', '2016-12-09 23:22:11');
INSERT INTO `mobile_sms` VALUES ('10', '13667635645', '763808', '1', '1', '【卓杭广告】您本次验证码为：763808，如不是本人操作，请忽略', '2016-12-09 23:33:31');
INSERT INTO `mobile_sms` VALUES ('11', '13667635645', '276995', '1', '1', '【卓杭广告】您本次验证码为：276995，如不是本人操作，请忽略', '2016-12-09 23:38:36');
INSERT INTO `mobile_sms` VALUES ('12', '13667635645', '943464', '1', '1', '【卓杭广告】您本次验证码为：943464，如不是本人操作，请忽略', '2016-12-10 00:21:48');
INSERT INTO `mobile_sms` VALUES ('13', '17723160667', '507434', '1', '1', '【卓杭广告】您本次验证码为：507434，如不是本人操作，请忽略', '2016-12-10 08:58:32');

-- ----------------------------
-- Table structure for picture
-- ----------------------------
DROP TABLE IF EXISTS `picture`;
CREATE TABLE `picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL DEFAULT '' COMMENT '路径',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '图片链接',
  `md5` char(32) NOT NULL DEFAULT '' COMMENT '文件md5',
  `sha1` char(40) NOT NULL DEFAULT '' COMMENT '文件sha1编码',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COMMENT='图片表';

-- ----------------------------
-- Records of picture
-- ----------------------------
INSERT INTO `picture` VALUES ('18', '/uploads/picture/2016-12-24/585df088b8414.jpg', 'http://www.bohan.com', '420c86a37967febec207f219993a86d6', 'dbc4746acc76b3571901a863353c797794204730', '2016-12-24 11:50:32');
INSERT INTO `picture` VALUES ('19', '/uploads/picture/2016-12-24/585dfde4e3bf3.jpg', 'http://www.bohan.com', 'c28d6868f823f5e6a69ab757d9a8e204', 'e4e0e0ffc2bdea62bd5259ea8fbedf62b768097b', '2016-12-24 12:47:32');
INSERT INTO `picture` VALUES ('20', '/uploads/picture/2016-12-24/585e03d934af8.jpg', 'http://www.bohan.com', '04047141e6b50ef3c779fefe8ad809aa', '440de9a34ff86c87bff14d69b96ccfb4c8d49404', '2016-12-24 13:12:57');
INSERT INTO `picture` VALUES ('21', '/uploads/picture/2016-12-24/585e03efd02f2.jpg', 'http://www.bohan.com', '5cec4808a4ce8b83ca67d18ed60e90a5', '36506876f4090b3b87891a84ff002f1f86017b90', '2016-12-24 13:13:19');
INSERT INTO `picture` VALUES ('22', '/uploads/picture/2016-12-24/585e04005df29.jpg', 'http://www.bohan.com', '17b355e6e5055f66ef962d913af1aaa0', '6ce1f9a6a49b267412b6d3bc19e27dd120659a5b', '2016-12-24 13:13:36');
INSERT INTO `picture` VALUES ('23', '/uploads/picture/2016-12-24/585e041613240.jpg', 'http://www.bohan.com', '7ac720fb1667d704e518db87188b7636', 'b08b598163d896f7282752632559d8b89746f502', '2016-12-24 13:13:58');
INSERT INTO `picture` VALUES ('24', '/uploads/picture/2016-12-24/585e04455f1ed.jpg', 'http://www.bohan.com', 'dfdba3e4352a431d6307f0f18368c770', '48da54f9aa1d1395245adea91398fd93bcd7dd80', '2016-12-24 13:14:45');
INSERT INTO `picture` VALUES ('25', '/uploads/picture/2016-12-24/585e045bd62a6.jpg', 'http://www.bohan.com', '653857aa48727b5c64612e72a7e5fcfa', '87a90ae44abca5c5bdc282af98198b806e95865f', '2016-12-24 13:15:07');
INSERT INTO `picture` VALUES ('26', '/uploads/picture/2016-12-24/585e0465557d0.jpg', 'http://www.bohan.com', '847b587c172016cad1d180ef4343ed27', 'ab6e168b4d7042ab8ce349e9b7f810dafa11946f', '2016-12-24 13:15:17');
INSERT INTO `picture` VALUES ('27', '/uploads/picture/2016-12-24/585e04806bc9e.jpg', 'http://www.bohan.com', '3a489cbfe8f5168aa53a86790770996e', '80c2d30fb5b87c05329178ee3bed9b9bfbaa3763', '2016-12-24 13:15:44');
INSERT INTO `picture` VALUES ('28', '/uploads/picture/2016-12-24/585e0495c5992.jpg', 'http://www.bohan.com', '752606a499d4164f8e5ee3495818ee2a', '309d648ac891331f0ca8661930d7f63bcfc44b55', '2016-12-24 13:16:05');
INSERT INTO `picture` VALUES ('29', '/uploads/picture/2016-12-24/585e04a4c0ce2.jpg', 'http://www.bohan.com', '00b04fa4eb271f96228a99e34d7c660b', '17df0b620a358456f89b015db2a938f0e2fad227', '2016-12-24 13:16:20');
INSERT INTO `picture` VALUES ('30', '/uploads/picture/2016-12-24/585e04b5787e2.jpg', 'http://www.bohan.com', 'cfc871e09468642ade08c6b4f787cc9a', 'cc67d3426cbc33ee105a04889aad2b051ff72e08', '2016-12-24 13:16:37');
INSERT INTO `picture` VALUES ('31', '/uploads/picture/2016-12-24/585e862ed54bc.png', 'http://www.bohan.com', '50668f18de7efff60795e29647bb5c91', '31f80ee89657f9d33dfd3d0689510fbfbdf920a1', '2016-12-24 22:29:02');
INSERT INTO `picture` VALUES ('32', '/uploads/picture/2016-12-24/585e86885f901.png', 'http://www.bohan.com', 'e6f74525fecf65a9785b490c3d5f9a48', '81161f3fea1f0c8b87c0b48dfc8c508ad2b8cb71', '2016-12-24 22:30:32');
INSERT INTO `picture` VALUES ('33', '/uploads/picture/2016-12-24/585e868b3d7ba.png', 'http://www.bohan.com', '5c48d4e1a697275e9ef7e0cc2f09c725', '74e622e4132e397a476aed498bd1cbb88a3eaaf3', '2016-12-24 22:30:35');
INSERT INTO `picture` VALUES ('34', '/uploads/picture/2016-12-25/585f20f4410a7.jpg', 'http://www.bohan.com', 'e87a76650049c27eec42d44a606b45c0', 'b411e1d6de5067b60b05c12f0e3176bafda337f2', '2016-12-25 09:29:24');
INSERT INTO `picture` VALUES ('35', '/uploads/picture/2016-12-25/585f259c0d7b8.jpg', 'http://www.bohan.com', '1aee968062cc0a442a8994bc255dda01', '20edcffd90be39c02a09b455a8d48fe04cfad570', '2016-12-25 09:49:16');
INSERT INTO `picture` VALUES ('36', '/uploads/picture/2016-12-25/585f2ec1198a2.jpg', 'http://www.bohan.com', '60ceef97c2085f88fea7982e95666fef', 'a81514a59536bcc584b8614838f37321be69fb04', '2016-12-25 10:28:17');
INSERT INTO `picture` VALUES ('37', '/uploads/picture/2016-12-25/585f3201c8abc.jpg', 'http://www.bohan.com', '14ce0eaf3ec6de687af9c68644346346', '3007f0b65d16ddb527e4628f8847be835ed5b95a', '2016-12-25 10:42:09');
INSERT INTO `picture` VALUES ('38', '/uploads/picture/2016-12-25/585f332bafc6d.jpg', 'http://www.bohan.com', '733c298e8122459a0d1d8c810639db06', '25c18973744c374177611e539e976c672f672f3e', '2016-12-25 10:47:07');
INSERT INTO `picture` VALUES ('39', '/uploads/picture/2016-12-25/585f343175346.jpg', 'http://www.bohan.com', '11e799b594ce3157c0fe004e943df8b8', 'e8eec4f89c8f2797efa4a0ecdf75589ccc9cf8f3', '2016-12-25 10:51:29');
INSERT INTO `picture` VALUES ('40', '/uploads/picture/2016-12-25/585f6da5e7a5f.jpg', 'http://www.bohan.com', '0ee40422d62103efc0d119f8b4020656', 'd1e6f9f4fd59f0c37449e8885268efc428c33c1f', '2016-12-25 14:56:37');
INSERT INTO `picture` VALUES ('41', '/uploads/picture/2016-12-27/586227d12bebf.jpg', 'http://www.bohan.com', '7204de355e615e69ab06039e83381c99', 'a18aee2851a40e3ecfd239d564565406dc8b2c4f', '2016-12-27 16:35:29');
INSERT INTO `picture` VALUES ('42', '/uploads/picture/2016-12-27/586264a65bab7.jpg', 'http://www.bohan.com', '69f313b7d4dadd659949819129713712', 'a3805b80f9d666bb0832a8397ccbe248c9c41c9d', '2016-12-27 20:55:02');

-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS `region`;
CREATE TABLE `region` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '行政代码',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '名称',
  `parent_id` int(11) NOT NULL COMMENT '父id',
  `first_letter` varchar(10) NOT NULL DEFAULT '' COMMENT '首字母',
  `level` int(11) NOT NULL COMMENT '城市等级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3186 DEFAULT CHARSET=utf8mb4 COMMENT='地区';

-- ----------------------------
-- Records of region
-- ----------------------------
INSERT INTO `region` VALUES ('1', '110000', '北京市', '0', 'B', '0');
INSERT INTO `region` VALUES ('2', '120000', '天津市', '0', 'T', '0');
INSERT INTO `region` VALUES ('3', '130000', '河北省', '0', 'H', '0');
INSERT INTO `region` VALUES ('4', '140000', '山西省', '0', 'S', '0');
INSERT INTO `region` VALUES ('5', '150000', '内蒙古自治区', '0', 'N', '0');
INSERT INTO `region` VALUES ('6', '210000', '辽宁省', '0', 'L', '0');
INSERT INTO `region` VALUES ('7', '220000', '吉林省', '0', 'J', '0');
INSERT INTO `region` VALUES ('8', '230000', '黑龙江省', '0', 'H', '0');
INSERT INTO `region` VALUES ('9', '310000', '上海市', '0', 'S', '0');
INSERT INTO `region` VALUES ('10', '320000', '江苏省', '0', 'J', '0');
INSERT INTO `region` VALUES ('11', '330000', '浙江省', '0', 'Z', '0');
INSERT INTO `region` VALUES ('12', '340000', '安徽省', '0', 'A', '0');
INSERT INTO `region` VALUES ('13', '350000', '福建省', '0', 'F', '0');
INSERT INTO `region` VALUES ('14', '360000', '江西省', '0', 'J', '0');
INSERT INTO `region` VALUES ('15', '370000', '山东省', '0', 'S', '0');
INSERT INTO `region` VALUES ('16', '410000', '河南省', '0', 'H', '0');
INSERT INTO `region` VALUES ('17', '420000', '湖北省', '0', 'H', '0');
INSERT INTO `region` VALUES ('18', '430000', '湖南省', '0', 'H', '0');
INSERT INTO `region` VALUES ('19', '440000', '广东省', '0', 'G', '0');
INSERT INTO `region` VALUES ('20', '450000', '广西壮族自治区', '0', 'G', '0');
INSERT INTO `region` VALUES ('21', '460000', '海南省', '0', 'H', '0');
INSERT INTO `region` VALUES ('22', '500000', '重庆市', '0', 'Z', '0');
INSERT INTO `region` VALUES ('23', '510000', '四川省', '0', 'S', '0');
INSERT INTO `region` VALUES ('24', '520000', '贵州省', '0', 'G', '0');
INSERT INTO `region` VALUES ('25', '530000', '云南省', '0', 'Y', '0');
INSERT INTO `region` VALUES ('26', '540000', '西藏自治区', '0', 'X', '0');
INSERT INTO `region` VALUES ('27', '610000', '陕西省', '0', 'S', '0');
INSERT INTO `region` VALUES ('28', '620000', '甘肃省', '0', 'G', '0');
INSERT INTO `region` VALUES ('29', '630000', '青海省', '0', 'Q', '0');
INSERT INTO `region` VALUES ('30', '640000', '宁夏回族自治区', '0', 'N', '0');
INSERT INTO `region` VALUES ('31', '650000', '新疆维吾尔自治区', '0', 'X', '0');
INSERT INTO `region` VALUES ('32', '710000', '台湾省', '0', 'T', '0');
INSERT INTO `region` VALUES ('33', '810000', '香港特别行政区', '0', 'X', '0');
INSERT INTO `region` VALUES ('34', '820000', '澳门特别行政区', '0', 'A', '0');
INSERT INTO `region` VALUES ('35', '110100', '北京市', '1', 'B', '1');
INSERT INTO `region` VALUES ('36', '110200', '北京县', '1', 'B', '1');
INSERT INTO `region` VALUES ('37', '120100', '天津市', '2', 'T', '1');
INSERT INTO `region` VALUES ('38', '120200', '天津县', '2', 'T', '1');
INSERT INTO `region` VALUES ('39', '130100', '石家庄市', '3', 'S', '1');
INSERT INTO `region` VALUES ('40', '130200', '唐山市', '3', 'T', '1');
INSERT INTO `region` VALUES ('41', '130300', '秦皇岛市', '3', 'Q', '1');
INSERT INTO `region` VALUES ('42', '130400', '邯郸市', '3', 'H', '1');
INSERT INTO `region` VALUES ('43', '130500', '邢台市', '3', 'X', '1');
INSERT INTO `region` VALUES ('44', '130600', '保定市', '3', 'B', '1');
INSERT INTO `region` VALUES ('45', '130700', '张家口市', '3', 'Z', '1');
INSERT INTO `region` VALUES ('46', '130800', '承德市', '3', 'C', '1');
INSERT INTO `region` VALUES ('47', '130900', '沧州市', '3', 'C', '1');
INSERT INTO `region` VALUES ('48', '131000', '廊坊市', '3', 'L', '1');
INSERT INTO `region` VALUES ('49', '131100', '衡水市', '3', 'H', '1');
INSERT INTO `region` VALUES ('50', '140100', '太原市', '4', 'T', '1');
INSERT INTO `region` VALUES ('51', '140200', '大同市', '4', 'D', '1');
INSERT INTO `region` VALUES ('52', '140300', '阳泉市', '4', 'Y', '1');
INSERT INTO `region` VALUES ('53', '140400', '长治市', '4', 'C', '1');
INSERT INTO `region` VALUES ('54', '140500', '晋城市', '4', 'J', '1');
INSERT INTO `region` VALUES ('55', '140600', '朔州市', '4', 'S', '1');
INSERT INTO `region` VALUES ('56', '140700', '晋中市', '4', 'J', '1');
INSERT INTO `region` VALUES ('57', '140800', '运城市', '4', 'Y', '1');
INSERT INTO `region` VALUES ('58', '140900', '忻州市', '4', 'X', '1');
INSERT INTO `region` VALUES ('59', '141000', '临汾市', '4', 'L', '1');
INSERT INTO `region` VALUES ('60', '141100', '吕梁市', '4', 'L', '1');
INSERT INTO `region` VALUES ('61', '150100', '呼和浩特市', '5', 'H', '1');
INSERT INTO `region` VALUES ('62', '150200', '包头市', '5', 'B', '1');
INSERT INTO `region` VALUES ('63', '150300', '乌海市', '5', 'W', '1');
INSERT INTO `region` VALUES ('64', '150400', '赤峰市', '5', 'C', '1');
INSERT INTO `region` VALUES ('65', '150500', '通辽市', '5', 'T', '1');
INSERT INTO `region` VALUES ('66', '150600', '鄂尔多斯市', '5', 'E', '1');
INSERT INTO `region` VALUES ('67', '150700', '呼伦贝尔市', '5', 'H', '1');
INSERT INTO `region` VALUES ('68', '150800', '巴彦淖尔市', '5', 'B', '1');
INSERT INTO `region` VALUES ('69', '150900', '乌兰察布市', '5', 'W', '1');
INSERT INTO `region` VALUES ('70', '152200', '兴安盟', '5', 'X', '1');
INSERT INTO `region` VALUES ('71', '152500', '锡林郭勒盟', '5', 'X', '1');
INSERT INTO `region` VALUES ('72', '152900', '阿拉善盟', '5', 'A', '1');
INSERT INTO `region` VALUES ('73', '210100', '沈阳市', '6', 'S', '1');
INSERT INTO `region` VALUES ('74', '210200', '大连市', '6', 'D', '1');
INSERT INTO `region` VALUES ('75', '210300', '鞍山市', '6', 'A', '1');
INSERT INTO `region` VALUES ('76', '210400', '抚顺市', '6', 'F', '1');
INSERT INTO `region` VALUES ('77', '210500', '本溪市', '6', 'B', '1');
INSERT INTO `region` VALUES ('78', '210600', '丹东市', '6', 'D', '1');
INSERT INTO `region` VALUES ('79', '210700', '锦州市', '6', 'J', '1');
INSERT INTO `region` VALUES ('80', '210800', '营口市', '6', 'Y', '1');
INSERT INTO `region` VALUES ('81', '210900', '阜新市', '6', 'F', '1');
INSERT INTO `region` VALUES ('82', '211000', '辽阳市', '6', 'L', '1');
INSERT INTO `region` VALUES ('83', '211100', '盘锦市', '6', 'P', '1');
INSERT INTO `region` VALUES ('84', '211200', '铁岭市', '6', 'T', '1');
INSERT INTO `region` VALUES ('85', '211300', '朝阳市', '6', 'C', '1');
INSERT INTO `region` VALUES ('86', '211400', '葫芦岛市', '6', 'H', '1');
INSERT INTO `region` VALUES ('87', '220100', '长春市', '7', 'C', '1');
INSERT INTO `region` VALUES ('88', '220200', '吉林市', '7', 'J', '1');
INSERT INTO `region` VALUES ('89', '220300', '四平市', '7', 'S', '1');
INSERT INTO `region` VALUES ('90', '220400', '辽源市', '7', 'L', '1');
INSERT INTO `region` VALUES ('91', '220500', '通化市', '7', 'T', '1');
INSERT INTO `region` VALUES ('92', '220600', '白山市', '7', 'B', '1');
INSERT INTO `region` VALUES ('93', '220700', '松原市', '7', 'S', '1');
INSERT INTO `region` VALUES ('94', '220800', '白城市', '7', 'B', '1');
INSERT INTO `region` VALUES ('95', '222400', '延边朝鲜族自治州', '7', 'Y', '1');
INSERT INTO `region` VALUES ('96', '230100', '哈尔滨市', '8', 'H', '1');
INSERT INTO `region` VALUES ('97', '230200', '齐齐哈尔市', '8', 'Q', '1');
INSERT INTO `region` VALUES ('98', '230300', '鸡西市', '8', 'J', '1');
INSERT INTO `region` VALUES ('99', '230400', '鹤岗市', '8', 'H', '1');
INSERT INTO `region` VALUES ('100', '230500', '双鸭山市', '8', 'S', '1');
INSERT INTO `region` VALUES ('101', '230600', '大庆市', '8', 'D', '1');
INSERT INTO `region` VALUES ('102', '230700', '伊春市', '8', 'Y', '1');
INSERT INTO `region` VALUES ('103', '230800', '佳木斯市', '8', 'J', '1');
INSERT INTO `region` VALUES ('104', '230900', '七台河市', '8', 'Q', '1');
INSERT INTO `region` VALUES ('105', '231000', '牡丹江市', '8', 'M', '1');
INSERT INTO `region` VALUES ('106', '231100', '黑河市', '8', 'H', '1');
INSERT INTO `region` VALUES ('107', '231200', '绥化市', '8', 'S', '1');
INSERT INTO `region` VALUES ('108', '232700', '大兴安岭地区', '8', 'D', '1');
INSERT INTO `region` VALUES ('109', '310100', '上海市', '9', 'S', '1');
INSERT INTO `region` VALUES ('110', '310200', '上海县', '9', 'S', '1');
INSERT INTO `region` VALUES ('111', '320100', '南京市', '10', 'N', '1');
INSERT INTO `region` VALUES ('112', '320200', '无锡市', '10', 'W', '1');
INSERT INTO `region` VALUES ('113', '320300', '徐州市', '10', 'X', '1');
INSERT INTO `region` VALUES ('114', '320400', '常州市', '10', 'C', '1');
INSERT INTO `region` VALUES ('115', '320500', '苏州市', '10', 'S', '1');
INSERT INTO `region` VALUES ('116', '320600', '南通市', '10', 'N', '1');
INSERT INTO `region` VALUES ('117', '320700', '连云港市', '10', 'L', '1');
INSERT INTO `region` VALUES ('118', '320800', '淮安市', '10', 'H', '1');
INSERT INTO `region` VALUES ('119', '320900', '盐城市', '10', 'Y', '1');
INSERT INTO `region` VALUES ('120', '321000', '扬州市', '10', 'Y', '1');
INSERT INTO `region` VALUES ('121', '321100', '镇江市', '10', 'Z', '1');
INSERT INTO `region` VALUES ('122', '321200', '泰州市', '10', 'T', '1');
INSERT INTO `region` VALUES ('123', '321300', '宿迁市', '10', 'S', '1');
INSERT INTO `region` VALUES ('124', '330100', '杭州市', '11', 'H', '1');
INSERT INTO `region` VALUES ('125', '330200', '宁波市', '11', 'N', '1');
INSERT INTO `region` VALUES ('126', '330300', '温州市', '11', 'W', '1');
INSERT INTO `region` VALUES ('127', '330400', '嘉兴市', '11', 'J', '1');
INSERT INTO `region` VALUES ('128', '330500', '湖州市', '11', 'H', '1');
INSERT INTO `region` VALUES ('129', '330600', '绍兴市', '11', 'S', '1');
INSERT INTO `region` VALUES ('130', '330700', '金华市', '11', 'J', '1');
INSERT INTO `region` VALUES ('131', '330800', '衢州市', '11', 'Q', '1');
INSERT INTO `region` VALUES ('132', '330900', '舟山市', '11', 'Z', '1');
INSERT INTO `region` VALUES ('133', '331000', '台州市', '11', 'T', '1');
INSERT INTO `region` VALUES ('134', '331100', '丽水市', '11', 'L', '1');
INSERT INTO `region` VALUES ('135', '340100', '合肥市', '12', 'H', '1');
INSERT INTO `region` VALUES ('136', '340200', '芜湖市', '12', 'W', '1');
INSERT INTO `region` VALUES ('137', '340300', '蚌埠市', '12', 'B', '1');
INSERT INTO `region` VALUES ('138', '340400', '淮南市', '12', 'H', '1');
INSERT INTO `region` VALUES ('139', '340500', '马鞍山市', '12', 'M', '1');
INSERT INTO `region` VALUES ('140', '340600', '淮北市', '12', 'H', '1');
INSERT INTO `region` VALUES ('141', '340700', '铜陵市', '12', 'T', '1');
INSERT INTO `region` VALUES ('142', '340800', '安庆市', '12', 'A', '1');
INSERT INTO `region` VALUES ('143', '341000', '黄山市', '12', 'H', '1');
INSERT INTO `region` VALUES ('144', '341100', '滁州市', '12', 'C', '1');
INSERT INTO `region` VALUES ('145', '341200', '阜阳市', '12', 'F', '1');
INSERT INTO `region` VALUES ('146', '341300', '宿州市', '12', 'S', '1');
INSERT INTO `region` VALUES ('147', '341500', '六安市', '12', 'L', '1');
INSERT INTO `region` VALUES ('148', '341600', '亳州市', '12', 'B', '1');
INSERT INTO `region` VALUES ('149', '341700', '池州市', '12', 'C', '1');
INSERT INTO `region` VALUES ('150', '341800', '宣城市', '12', 'X', '1');
INSERT INTO `region` VALUES ('151', '350100', '福州市', '13', 'F', '1');
INSERT INTO `region` VALUES ('152', '350200', '厦门市', '13', 'X', '1');
INSERT INTO `region` VALUES ('153', '350300', '莆田市', '13', 'P', '1');
INSERT INTO `region` VALUES ('154', '350400', '三明市', '13', 'S', '1');
INSERT INTO `region` VALUES ('155', '350500', '泉州市', '13', 'Q', '1');
INSERT INTO `region` VALUES ('156', '350600', '漳州市', '13', 'Z', '1');
INSERT INTO `region` VALUES ('157', '350700', '南平市', '13', 'N', '1');
INSERT INTO `region` VALUES ('158', '350800', '龙岩市', '13', 'L', '1');
INSERT INTO `region` VALUES ('159', '350900', '宁德市', '13', 'N', '1');
INSERT INTO `region` VALUES ('160', '360100', '南昌市', '14', 'N', '1');
INSERT INTO `region` VALUES ('161', '360200', '景德镇市', '14', 'J', '1');
INSERT INTO `region` VALUES ('162', '360300', '萍乡市', '14', 'P', '1');
INSERT INTO `region` VALUES ('163', '360400', '九江市', '14', 'J', '1');
INSERT INTO `region` VALUES ('164', '360500', '新余市', '14', 'X', '1');
INSERT INTO `region` VALUES ('165', '360600', '鹰潭市', '14', 'Y', '1');
INSERT INTO `region` VALUES ('166', '360700', '赣州市', '14', 'G', '1');
INSERT INTO `region` VALUES ('167', '360800', '吉安市', '14', 'J', '1');
INSERT INTO `region` VALUES ('168', '360900', '宜春市', '14', 'Y', '1');
INSERT INTO `region` VALUES ('169', '361000', '抚州市', '14', 'F', '1');
INSERT INTO `region` VALUES ('170', '361100', '上饶市', '14', 'S', '1');
INSERT INTO `region` VALUES ('171', '370100', '济南市', '15', 'J', '1');
INSERT INTO `region` VALUES ('172', '370200', '青岛市', '15', 'Q', '1');
INSERT INTO `region` VALUES ('173', '370300', '淄博市', '15', 'Z', '1');
INSERT INTO `region` VALUES ('174', '370400', '枣庄市', '15', 'Z', '1');
INSERT INTO `region` VALUES ('175', '370500', '东营市', '15', 'D', '1');
INSERT INTO `region` VALUES ('176', '370600', '烟台市', '15', 'Y', '1');
INSERT INTO `region` VALUES ('177', '370700', '潍坊市', '15', 'W', '1');
INSERT INTO `region` VALUES ('178', '370800', '济宁市', '15', 'J', '1');
INSERT INTO `region` VALUES ('179', '370900', '泰安市', '15', 'T', '1');
INSERT INTO `region` VALUES ('180', '371000', '威海市', '15', 'W', '1');
INSERT INTO `region` VALUES ('181', '371100', '日照市', '15', 'R', '1');
INSERT INTO `region` VALUES ('182', '371200', '莱芜市', '15', 'L', '1');
INSERT INTO `region` VALUES ('183', '371300', '临沂市', '15', 'L', '1');
INSERT INTO `region` VALUES ('184', '371400', '德州市', '15', 'D', '1');
INSERT INTO `region` VALUES ('185', '371500', '聊城市', '15', 'L', '1');
INSERT INTO `region` VALUES ('186', '371600', '滨州市', '15', 'B', '1');
INSERT INTO `region` VALUES ('187', '371700', '菏泽市', '15', 'H', '1');
INSERT INTO `region` VALUES ('188', '410100', '郑州市', '16', 'Z', '1');
INSERT INTO `region` VALUES ('189', '410200', '开封市', '16', 'K', '1');
INSERT INTO `region` VALUES ('190', '410300', '洛阳市', '16', 'L', '1');
INSERT INTO `region` VALUES ('191', '410400', '平顶山市', '16', 'P', '1');
INSERT INTO `region` VALUES ('192', '410500', '安阳市', '16', 'A', '1');
INSERT INTO `region` VALUES ('193', '410600', '鹤壁市', '16', 'H', '1');
INSERT INTO `region` VALUES ('194', '410700', '新乡市', '16', 'X', '1');
INSERT INTO `region` VALUES ('195', '410800', '焦作市', '16', 'J', '1');
INSERT INTO `region` VALUES ('196', '410900', '濮阳市', '16', 'P', '1');
INSERT INTO `region` VALUES ('197', '411000', '许昌市', '16', 'X', '1');
INSERT INTO `region` VALUES ('198', '411100', '漯河市', '16', 'L', '1');
INSERT INTO `region` VALUES ('199', '411200', '三门峡市', '16', 'S', '1');
INSERT INTO `region` VALUES ('200', '411300', '南阳市', '16', 'N', '1');
INSERT INTO `region` VALUES ('201', '411400', '商丘市', '16', 'S', '1');
INSERT INTO `region` VALUES ('202', '411500', '信阳市', '16', 'X', '1');
INSERT INTO `region` VALUES ('203', '411600', '周口市', '16', 'Z', '1');
INSERT INTO `region` VALUES ('204', '411700', '驻马店市', '16', 'Z', '1');
INSERT INTO `region` VALUES ('205', '419000', '省直辖县级行政区划', '16', 'S', '1');
INSERT INTO `region` VALUES ('206', '420100', '武汉市', '17', 'W', '1');
INSERT INTO `region` VALUES ('207', '420200', '黄石市', '17', 'H', '1');
INSERT INTO `region` VALUES ('208', '420300', '十堰市', '17', 'S', '1');
INSERT INTO `region` VALUES ('209', '420500', '宜昌市', '17', 'Y', '1');
INSERT INTO `region` VALUES ('210', '420600', '襄阳市', '17', 'X', '1');
INSERT INTO `region` VALUES ('211', '420700', '鄂州市', '17', 'E', '1');
INSERT INTO `region` VALUES ('212', '420800', '荆门市', '17', 'J', '1');
INSERT INTO `region` VALUES ('213', '420900', '孝感市', '17', 'X', '1');
INSERT INTO `region` VALUES ('214', '421000', '荆州市', '17', 'J', '1');
INSERT INTO `region` VALUES ('215', '421100', '黄冈市', '17', 'H', '1');
INSERT INTO `region` VALUES ('216', '421200', '咸宁市', '17', 'X', '1');
INSERT INTO `region` VALUES ('217', '421300', '随州市', '17', 'S', '1');
INSERT INTO `region` VALUES ('218', '422800', '恩施土家族苗族自治州', '17', 'E', '1');
INSERT INTO `region` VALUES ('219', '429000', '省直辖县级行政区划', '17', 'S', '1');
INSERT INTO `region` VALUES ('220', '430100', '长沙市', '18', 'C', '1');
INSERT INTO `region` VALUES ('221', '430200', '株洲市', '18', 'Z', '1');
INSERT INTO `region` VALUES ('222', '430300', '湘潭市', '18', 'X', '1');
INSERT INTO `region` VALUES ('223', '430400', '衡阳市', '18', 'H', '1');
INSERT INTO `region` VALUES ('224', '430500', '邵阳市', '18', 'S', '1');
INSERT INTO `region` VALUES ('225', '430600', '岳阳市', '18', 'Y', '1');
INSERT INTO `region` VALUES ('226', '430700', '常德市', '18', 'C', '1');
INSERT INTO `region` VALUES ('227', '430800', '张家界市', '18', 'Z', '1');
INSERT INTO `region` VALUES ('228', '430900', '益阳市', '18', 'Y', '1');
INSERT INTO `region` VALUES ('229', '431000', '郴州市', '18', 'C', '1');
INSERT INTO `region` VALUES ('230', '431100', '永州市', '18', 'Y', '1');
INSERT INTO `region` VALUES ('231', '431200', '怀化市', '18', 'H', '1');
INSERT INTO `region` VALUES ('232', '431300', '娄底市', '18', 'L', '1');
INSERT INTO `region` VALUES ('233', '433100', '湘西土家族苗族自治州', '18', 'X', '1');
INSERT INTO `region` VALUES ('234', '440100', '广州市', '19', 'G', '1');
INSERT INTO `region` VALUES ('235', '440200', '韶关市', '19', 'S', '1');
INSERT INTO `region` VALUES ('236', '440300', '深圳市', '19', 'S', '1');
INSERT INTO `region` VALUES ('237', '440400', '珠海市', '19', 'Z', '1');
INSERT INTO `region` VALUES ('238', '440500', '汕头市', '19', 'S', '1');
INSERT INTO `region` VALUES ('239', '440600', '佛山市', '19', 'F', '1');
INSERT INTO `region` VALUES ('240', '440700', '江门市', '19', 'J', '1');
INSERT INTO `region` VALUES ('241', '440800', '湛江市', '19', 'Z', '1');
INSERT INTO `region` VALUES ('242', '440900', '茂名市', '19', 'M', '1');
INSERT INTO `region` VALUES ('243', '441200', '肇庆市', '19', 'Z', '1');
INSERT INTO `region` VALUES ('244', '441300', '惠州市', '19', 'H', '1');
INSERT INTO `region` VALUES ('245', '441400', '梅州市', '19', 'M', '1');
INSERT INTO `region` VALUES ('246', '441500', '汕尾市', '19', 'S', '1');
INSERT INTO `region` VALUES ('247', '441600', '河源市', '19', 'H', '1');
INSERT INTO `region` VALUES ('248', '441700', '阳江市', '19', 'Y', '1');
INSERT INTO `region` VALUES ('249', '441800', '清远市', '19', 'Q', '1');
INSERT INTO `region` VALUES ('250', '441900', '东莞市', '19', 'D', '1');
INSERT INTO `region` VALUES ('251', '442000', '中山市', '19', 'Z', '1');
INSERT INTO `region` VALUES ('252', '445100', '潮州市', '19', 'C', '1');
INSERT INTO `region` VALUES ('253', '445200', '揭阳市', '19', 'J', '1');
INSERT INTO `region` VALUES ('254', '445300', '云浮市', '19', 'Y', '1');
INSERT INTO `region` VALUES ('255', '450100', '南宁市', '20', 'N', '1');
INSERT INTO `region` VALUES ('256', '450200', '柳州市', '20', 'L', '1');
INSERT INTO `region` VALUES ('257', '450300', '桂林市', '20', 'G', '1');
INSERT INTO `region` VALUES ('258', '450400', '梧州市', '20', 'W', '1');
INSERT INTO `region` VALUES ('259', '450500', '北海市', '20', 'B', '1');
INSERT INTO `region` VALUES ('260', '450600', '防城港市', '20', 'F', '1');
INSERT INTO `region` VALUES ('261', '450700', '钦州市', '20', 'Q', '1');
INSERT INTO `region` VALUES ('262', '450800', '贵港市', '20', 'G', '1');
INSERT INTO `region` VALUES ('263', '450900', '玉林市', '20', 'Y', '1');
INSERT INTO `region` VALUES ('264', '451000', '百色市', '20', 'B', '1');
INSERT INTO `region` VALUES ('265', '451100', '贺州市', '20', 'H', '1');
INSERT INTO `region` VALUES ('266', '451200', '河池市', '20', 'H', '1');
INSERT INTO `region` VALUES ('267', '451300', '来宾市', '20', 'L', '1');
INSERT INTO `region` VALUES ('268', '451400', '崇左市', '20', 'C', '1');
INSERT INTO `region` VALUES ('269', '460100', '海口市', '21', 'H', '1');
INSERT INTO `region` VALUES ('270', '460200', '三亚市', '21', 'S', '1');
INSERT INTO `region` VALUES ('271', '460300', '三沙市', '21', 'S', '1');
INSERT INTO `region` VALUES ('272', '469000', '省直辖县级行政区划', '21', 'S', '1');
INSERT INTO `region` VALUES ('273', '500100', '重庆市', '22', 'C', '1');
INSERT INTO `region` VALUES ('274', '500200', '重庆县', '22', 'C', '1');
INSERT INTO `region` VALUES ('275', '510100', '成都市', '23', 'C', '1');
INSERT INTO `region` VALUES ('276', '510300', '自贡市', '23', 'Z', '1');
INSERT INTO `region` VALUES ('277', '510400', '攀枝花市', '23', 'P', '1');
INSERT INTO `region` VALUES ('278', '510500', '泸州市', '23', 'L', '1');
INSERT INTO `region` VALUES ('279', '510600', '德阳市', '23', 'D', '1');
INSERT INTO `region` VALUES ('280', '510700', '绵阳市', '23', 'M', '1');
INSERT INTO `region` VALUES ('281', '510800', '广元市', '23', 'G', '1');
INSERT INTO `region` VALUES ('282', '510900', '遂宁市', '23', 'S', '1');
INSERT INTO `region` VALUES ('283', '511000', '内江市', '23', 'N', '1');
INSERT INTO `region` VALUES ('284', '511100', '乐山市', '23', 'L', '1');
INSERT INTO `region` VALUES ('285', '511300', '南充市', '23', 'N', '1');
INSERT INTO `region` VALUES ('286', '511400', '眉山市', '23', 'M', '1');
INSERT INTO `region` VALUES ('287', '511500', '宜宾市', '23', 'Y', '1');
INSERT INTO `region` VALUES ('288', '511600', '广安市', '23', 'G', '1');
INSERT INTO `region` VALUES ('289', '511700', '达州市', '23', 'D', '1');
INSERT INTO `region` VALUES ('290', '511800', '雅安市', '23', 'Y', '1');
INSERT INTO `region` VALUES ('291', '511900', '巴中市', '23', 'B', '1');
INSERT INTO `region` VALUES ('292', '512000', '资阳市', '23', 'Z', '1');
INSERT INTO `region` VALUES ('293', '513200', '阿坝藏族羌族自治州', '23', 'A', '1');
INSERT INTO `region` VALUES ('294', '513300', '甘孜藏族自治州', '23', 'G', '1');
INSERT INTO `region` VALUES ('295', '513400', '凉山彝族自治州', '23', 'L', '1');
INSERT INTO `region` VALUES ('296', '520100', '贵阳市', '24', 'G', '1');
INSERT INTO `region` VALUES ('297', '520200', '六盘水市', '24', 'L', '1');
INSERT INTO `region` VALUES ('298', '520300', '遵义市', '24', 'Z', '1');
INSERT INTO `region` VALUES ('299', '520400', '安顺市', '24', 'A', '1');
INSERT INTO `region` VALUES ('300', '520500', '毕节市', '24', 'B', '1');
INSERT INTO `region` VALUES ('301', '520600', '铜仁市', '24', 'T', '1');
INSERT INTO `region` VALUES ('302', '522300', '黔西南布依族苗族自治州', '24', 'Q', '1');
INSERT INTO `region` VALUES ('303', '522600', '黔东南苗族侗族自治州', '24', 'Q', '1');
INSERT INTO `region` VALUES ('304', '522700', '黔南布依族苗族自治州', '24', 'Q', '1');
INSERT INTO `region` VALUES ('305', '530100', '昆明市', '25', 'K', '1');
INSERT INTO `region` VALUES ('306', '530300', '曲靖市', '25', 'Q', '1');
INSERT INTO `region` VALUES ('307', '530400', '玉溪市', '25', 'Y', '1');
INSERT INTO `region` VALUES ('308', '530500', '保山市', '25', 'B', '1');
INSERT INTO `region` VALUES ('309', '530600', '昭通市', '25', 'Z', '1');
INSERT INTO `region` VALUES ('310', '530700', '丽江市', '25', 'L', '1');
INSERT INTO `region` VALUES ('311', '530800', '普洱市', '25', 'P', '1');
INSERT INTO `region` VALUES ('312', '530900', '临沧市', '25', 'L', '1');
INSERT INTO `region` VALUES ('313', '532300', '楚雄彝族自治州', '25', 'C', '1');
INSERT INTO `region` VALUES ('314', '532500', '红河哈尼族彝族自治州', '25', 'H', '1');
INSERT INTO `region` VALUES ('315', '532600', '文山壮族苗族自治州', '25', 'W', '1');
INSERT INTO `region` VALUES ('316', '532800', '西双版纳傣族自治州', '25', 'X', '1');
INSERT INTO `region` VALUES ('317', '532900', '大理白族自治州', '25', 'D', '1');
INSERT INTO `region` VALUES ('318', '533100', '德宏傣族景颇族自治州', '25', 'D', '1');
INSERT INTO `region` VALUES ('319', '533300', '怒江傈僳族自治州', '25', 'N', '1');
INSERT INTO `region` VALUES ('320', '533400', '迪庆藏族自治州', '25', 'D', '1');
INSERT INTO `region` VALUES ('321', '540100', '拉萨市', '26', 'L', '1');
INSERT INTO `region` VALUES ('322', '540200', '日喀则市', '26', 'R', '1');
INSERT INTO `region` VALUES ('323', '542100', '昌都地区', '26', 'C', '1');
INSERT INTO `region` VALUES ('324', '542200', '山南地区', '26', 'S', '1');
INSERT INTO `region` VALUES ('325', '542400', '那曲地区', '26', 'N', '1');
INSERT INTO `region` VALUES ('326', '542500', '阿里地区', '26', 'A', '1');
INSERT INTO `region` VALUES ('327', '542600', '林芝地区', '26', 'L', '1');
INSERT INTO `region` VALUES ('328', '610100', '西安市', '27', 'X', '1');
INSERT INTO `region` VALUES ('329', '610200', '铜川市', '27', 'T', '1');
INSERT INTO `region` VALUES ('330', '610300', '宝鸡市', '27', 'B', '1');
INSERT INTO `region` VALUES ('331', '610400', '咸阳市', '27', 'X', '1');
INSERT INTO `region` VALUES ('332', '610500', '渭南市', '27', 'W', '1');
INSERT INTO `region` VALUES ('333', '610600', '延安市', '27', 'Y', '1');
INSERT INTO `region` VALUES ('334', '610700', '汉中市', '27', 'H', '1');
INSERT INTO `region` VALUES ('335', '610800', '榆林市', '27', 'Y', '1');
INSERT INTO `region` VALUES ('336', '610900', '安康市', '27', 'A', '1');
INSERT INTO `region` VALUES ('337', '611000', '商洛市', '27', 'S', '1');
INSERT INTO `region` VALUES ('338', '620100', '兰州市', '28', 'L', '1');
INSERT INTO `region` VALUES ('339', '620200', '嘉峪关市', '28', 'J', '1');
INSERT INTO `region` VALUES ('340', '620300', '金昌市', '28', 'J', '1');
INSERT INTO `region` VALUES ('341', '620400', '白银市', '28', 'B', '1');
INSERT INTO `region` VALUES ('342', '620500', '天水市', '28', 'T', '1');
INSERT INTO `region` VALUES ('343', '620600', '武威市', '28', 'W', '1');
INSERT INTO `region` VALUES ('344', '620700', '张掖市', '28', 'Z', '1');
INSERT INTO `region` VALUES ('345', '620800', '平凉市', '28', 'P', '1');
INSERT INTO `region` VALUES ('346', '620900', '酒泉市', '28', 'J', '1');
INSERT INTO `region` VALUES ('347', '621000', '庆阳市', '28', 'Q', '1');
INSERT INTO `region` VALUES ('348', '621100', '定西市', '28', 'D', '1');
INSERT INTO `region` VALUES ('349', '621200', '陇南市', '28', 'L', '1');
INSERT INTO `region` VALUES ('350', '622900', '临夏回族自治州', '28', 'L', '1');
INSERT INTO `region` VALUES ('351', '623000', '甘南藏族自治州', '28', 'G', '1');
INSERT INTO `region` VALUES ('352', '630100', '西宁市', '29', 'X', '1');
INSERT INTO `region` VALUES ('353', '630200', '海东市', '29', 'H', '1');
INSERT INTO `region` VALUES ('354', '632200', '海北藏族自治州', '29', 'H', '1');
INSERT INTO `region` VALUES ('355', '632300', '黄南藏族自治州', '29', 'H', '1');
INSERT INTO `region` VALUES ('356', '632500', '海南藏族自治州', '29', 'H', '1');
INSERT INTO `region` VALUES ('357', '632600', '果洛藏族自治州', '29', 'G', '1');
INSERT INTO `region` VALUES ('358', '632700', '玉树藏族自治州', '29', 'Y', '1');
INSERT INTO `region` VALUES ('359', '632800', '海西蒙古族藏族自治州', '29', 'H', '1');
INSERT INTO `region` VALUES ('360', '640100', '银川市', '30', 'Y', '1');
INSERT INTO `region` VALUES ('361', '640200', '石嘴山市', '30', 'S', '1');
INSERT INTO `region` VALUES ('362', '640300', '吴忠市', '30', 'W', '1');
INSERT INTO `region` VALUES ('363', '640400', '固原市', '30', 'G', '1');
INSERT INTO `region` VALUES ('364', '640500', '中卫市', '30', 'Z', '1');
INSERT INTO `region` VALUES ('365', '650100', '乌鲁木齐市', '31', 'W', '1');
INSERT INTO `region` VALUES ('366', '650200', '克拉玛依市', '31', 'K', '1');
INSERT INTO `region` VALUES ('367', '652100', '吐鲁番地区', '31', 'T', '1');
INSERT INTO `region` VALUES ('368', '652200', '哈密地区', '31', 'H', '1');
INSERT INTO `region` VALUES ('369', '652300', '昌吉回族自治州', '31', 'C', '1');
INSERT INTO `region` VALUES ('370', '652700', '博尔塔拉蒙古自治州', '31', 'B', '1');
INSERT INTO `region` VALUES ('371', '652800', '巴音郭楞蒙古自治州', '31', 'B', '1');
INSERT INTO `region` VALUES ('372', '652900', '阿克苏地区', '31', 'A', '1');
INSERT INTO `region` VALUES ('373', '653000', '克孜勒苏柯尔克孜自治州', '31', 'K', '1');
INSERT INTO `region` VALUES ('374', '653100', '喀什地区', '31', 'K', '1');
INSERT INTO `region` VALUES ('375', '653200', '和田地区', '31', 'H', '1');
INSERT INTO `region` VALUES ('376', '654000', '伊犁哈萨克自治州', '31', 'Y', '1');
INSERT INTO `region` VALUES ('377', '654200', '塔城地区', '31', 'T', '1');
INSERT INTO `region` VALUES ('378', '654300', '阿勒泰地区', '31', 'A', '1');
INSERT INTO `region` VALUES ('379', '659000', '自治区直辖县级行政区划', '31', 'Z', '1');
INSERT INTO `region` VALUES ('380', '110101', '东城区', '35', 'D', '2');
INSERT INTO `region` VALUES ('381', '110102', '西城区', '35', 'X', '2');
INSERT INTO `region` VALUES ('382', '110105', '朝阳区', '35', 'C', '2');
INSERT INTO `region` VALUES ('383', '110106', '丰台区', '35', 'F', '2');
INSERT INTO `region` VALUES ('384', '110107', '石景山区', '35', 'S', '2');
INSERT INTO `region` VALUES ('385', '110108', '海淀区', '35', 'H', '2');
INSERT INTO `region` VALUES ('386', '110109', '门头沟区', '35', 'M', '2');
INSERT INTO `region` VALUES ('387', '110111', '房山区', '35', 'F', '2');
INSERT INTO `region` VALUES ('388', '110112', '通州区', '35', 'T', '2');
INSERT INTO `region` VALUES ('389', '110113', '顺义区', '35', 'S', '2');
INSERT INTO `region` VALUES ('390', '110114', '昌平区', '35', 'C', '2');
INSERT INTO `region` VALUES ('391', '110115', '大兴区', '35', 'D', '2');
INSERT INTO `region` VALUES ('392', '110116', '怀柔区', '35', 'H', '2');
INSERT INTO `region` VALUES ('393', '110117', '平谷区', '35', 'P', '2');
INSERT INTO `region` VALUES ('394', '110228', '密云县', '36', 'M', '2');
INSERT INTO `region` VALUES ('395', '110229', '延庆县', '36', 'Y', '2');
INSERT INTO `region` VALUES ('396', '120101', '和平区', '37', 'H', '2');
INSERT INTO `region` VALUES ('397', '120102', '河东区', '37', 'H', '2');
INSERT INTO `region` VALUES ('398', '120103', '河西区', '37', 'H', '2');
INSERT INTO `region` VALUES ('399', '120104', '南开区', '37', 'N', '2');
INSERT INTO `region` VALUES ('400', '120105', '河北区', '37', 'H', '2');
INSERT INTO `region` VALUES ('401', '120106', '红桥区', '37', 'H', '2');
INSERT INTO `region` VALUES ('402', '120110', '东丽区', '37', 'D', '2');
INSERT INTO `region` VALUES ('403', '120111', '西青区', '37', 'X', '2');
INSERT INTO `region` VALUES ('404', '120112', '津南区', '37', 'J', '2');
INSERT INTO `region` VALUES ('405', '120113', '北辰区', '37', 'B', '2');
INSERT INTO `region` VALUES ('406', '120114', '武清区', '37', 'W', '2');
INSERT INTO `region` VALUES ('407', '120115', '宝坻区', '37', 'B', '2');
INSERT INTO `region` VALUES ('408', '120116', '滨海新区', '37', 'B', '2');
INSERT INTO `region` VALUES ('409', '120221', '宁河县', '38', 'N', '2');
INSERT INTO `region` VALUES ('410', '120223', '静海县', '38', 'J', '2');
INSERT INTO `region` VALUES ('411', '120225', '蓟县', '38', 'J', '2');
INSERT INTO `region` VALUES ('413', '130102', '长安区', '39', 'C', '2');
INSERT INTO `region` VALUES ('414', '130104', '桥西区', '39', 'Q', '2');
INSERT INTO `region` VALUES ('415', '130123', '正定县', '39', 'Z', '2');
INSERT INTO `region` VALUES ('416', '130125', '行唐县', '39', 'X', '2');
INSERT INTO `region` VALUES ('417', '130126', '灵寿县', '39', 'L', '2');
INSERT INTO `region` VALUES ('418', '130127', '高邑县', '39', 'G', '2');
INSERT INTO `region` VALUES ('419', '130181', '辛集市', '39', 'X', '2');
INSERT INTO `region` VALUES ('420', '130183', '晋州市', '39', 'J', '2');
INSERT INTO `region` VALUES ('421', '130184', '新乐市', '39', 'X', '2');
INSERT INTO `region` VALUES ('422', '130202', '路南区', '40', 'L', '2');
INSERT INTO `region` VALUES ('423', '130203', '路北区', '40', 'L', '2');
INSERT INTO `region` VALUES ('424', '130204', '古冶区', '40', 'G', '2');
INSERT INTO `region` VALUES ('425', '130205', '开平区', '40', 'K', '2');
INSERT INTO `region` VALUES ('426', '130207', '丰南区', '40', 'F', '2');
INSERT INTO `region` VALUES ('427', '130208', '丰润区', '40', 'F', '2');
INSERT INTO `region` VALUES ('428', '130209', '曹妃甸区', '40', 'C', '2');
INSERT INTO `region` VALUES ('429', '130223', '滦县', '40', 'L', '2');
INSERT INTO `region` VALUES ('430', '130224', '滦南县', '40', 'L', '2');
INSERT INTO `region` VALUES ('431', '130225', '乐亭县', '40', 'L', '2');
INSERT INTO `region` VALUES ('432', '130227', '迁西县', '40', 'Q', '2');
INSERT INTO `region` VALUES ('433', '130229', '玉田县', '40', 'Y', '2');
INSERT INTO `region` VALUES ('434', '130281', '遵化市', '40', 'Z', '2');
INSERT INTO `region` VALUES ('435', '130283', '迁安市', '40', 'Q', '2');
INSERT INTO `region` VALUES ('436', '130302', '海港区', '41', 'H', '2');
INSERT INTO `region` VALUES ('437', '130303', '山海关区', '41', 'S', '2');
INSERT INTO `region` VALUES ('438', '130304', '北戴河区', '41', 'B', '2');
INSERT INTO `region` VALUES ('439', '130321', '青龙满族自治县', '41', 'Q', '2');
INSERT INTO `region` VALUES ('440', '130322', '昌黎县', '41', 'C', '2');
INSERT INTO `region` VALUES ('441', '130323', '抚宁县', '41', 'F', '2');
INSERT INTO `region` VALUES ('442', '130324', '卢龙县', '41', 'L', '2');
INSERT INTO `region` VALUES ('443', '130402', '邯山区', '42', 'H', '2');
INSERT INTO `region` VALUES ('444', '130403', '丛台区', '42', 'C', '2');
INSERT INTO `region` VALUES ('445', '130404', '复兴区', '42', 'F', '2');
INSERT INTO `region` VALUES ('446', '130406', '峰峰矿区', '42', 'F', '2');
INSERT INTO `region` VALUES ('447', '130421', '邯郸县', '42', 'H', '2');
INSERT INTO `region` VALUES ('448', '130423', '临漳县', '42', 'L', '2');
INSERT INTO `region` VALUES ('449', '130424', '成安县', '42', 'C', '2');
INSERT INTO `region` VALUES ('450', '130425', '大名县', '42', 'D', '2');
INSERT INTO `region` VALUES ('451', '130426', '涉县', '42', 'S', '2');
INSERT INTO `region` VALUES ('452', '130427', '磁县', '42', 'C', '2');
INSERT INTO `region` VALUES ('453', '130428', '肥乡县', '42', 'F', '2');
INSERT INTO `region` VALUES ('454', '130429', '永年县', '42', 'Y', '2');
INSERT INTO `region` VALUES ('455', '130430', '邱县', '42', 'Q', '2');
INSERT INTO `region` VALUES ('456', '130431', '鸡泽县', '42', 'J', '2');
INSERT INTO `region` VALUES ('457', '130432', '广平县', '42', 'G', '2');
INSERT INTO `region` VALUES ('458', '130433', '馆陶县', '42', 'G', '2');
INSERT INTO `region` VALUES ('459', '130434', '魏县', '42', 'W', '2');
INSERT INTO `region` VALUES ('460', '130435', '曲周县', '42', 'Q', '2');
INSERT INTO `region` VALUES ('461', '130481', '武安市', '42', 'W', '2');
INSERT INTO `region` VALUES ('462', '130502', '桥东区', '43', 'Q', '2');
INSERT INTO `region` VALUES ('463', '130521', '邢台县', '43', 'X', '2');
INSERT INTO `region` VALUES ('464', '130522', '临城县', '43', 'L', '2');
INSERT INTO `region` VALUES ('465', '130523', '内丘县', '43', 'N', '2');
INSERT INTO `region` VALUES ('466', '130524', '柏乡县', '43', 'B', '2');
INSERT INTO `region` VALUES ('467', '130525', '隆尧县', '43', 'L', '2');
INSERT INTO `region` VALUES ('468', '130526', '任县', '43', 'R', '2');
INSERT INTO `region` VALUES ('469', '130527', '南和县', '43', 'N', '2');
INSERT INTO `region` VALUES ('470', '130528', '宁晋县', '43', 'N', '2');
INSERT INTO `region` VALUES ('471', '130529', '巨鹿县', '43', 'J', '2');
INSERT INTO `region` VALUES ('472', '130530', '新河县', '43', 'X', '2');
INSERT INTO `region` VALUES ('473', '130531', '广宗县', '43', 'G', '2');
INSERT INTO `region` VALUES ('474', '130532', '平乡县', '43', 'P', '2');
INSERT INTO `region` VALUES ('475', '130533', '威县', '43', 'W', '2');
INSERT INTO `region` VALUES ('476', '130534', '清河县', '43', 'Q', '2');
INSERT INTO `region` VALUES ('477', '130535', '临西县', '43', 'L', '2');
INSERT INTO `region` VALUES ('478', '130581', '南宫市', '43', 'N', '2');
INSERT INTO `region` VALUES ('479', '130582', '沙河市', '43', 'S', '2');
INSERT INTO `region` VALUES ('480', '130602', '新市区', '44', 'X', '2');
INSERT INTO `region` VALUES ('481', '130603', '北市区', '44', 'B', '2');
INSERT INTO `region` VALUES ('482', '130604', '南市区', '44', 'N', '2');
INSERT INTO `region` VALUES ('483', '130621', '满城县', '44', 'M', '2');
INSERT INTO `region` VALUES ('484', '130622', '清苑县', '44', 'Q', '2');
INSERT INTO `region` VALUES ('485', '130623', '涞水县', '44', 'L', '2');
INSERT INTO `region` VALUES ('486', '130624', '阜平县', '44', 'F', '2');
INSERT INTO `region` VALUES ('487', '130625', '徐水县', '44', 'X', '2');
INSERT INTO `region` VALUES ('488', '130626', '定兴县', '44', 'D', '2');
INSERT INTO `region` VALUES ('489', '130627', '唐县', '44', 'T', '2');
INSERT INTO `region` VALUES ('490', '130628', '高阳县', '44', 'G', '2');
INSERT INTO `region` VALUES ('491', '130629', '容城县', '44', 'R', '2');
INSERT INTO `region` VALUES ('492', '130630', '涞源县', '44', 'L', '2');
INSERT INTO `region` VALUES ('493', '130631', '望都县', '44', 'W', '2');
INSERT INTO `region` VALUES ('494', '130632', '安新县', '44', 'A', '2');
INSERT INTO `region` VALUES ('495', '130633', '易县', '44', 'Y', '2');
INSERT INTO `region` VALUES ('496', '130634', '曲阳县', '44', 'Q', '2');
INSERT INTO `region` VALUES ('497', '130635', '蠡县', '44', 'L', '2');
INSERT INTO `region` VALUES ('498', '130636', '顺平县', '44', 'S', '2');
INSERT INTO `region` VALUES ('499', '130637', '博野县', '44', 'B', '2');
INSERT INTO `region` VALUES ('500', '130638', '雄县', '44', 'X', '2');
INSERT INTO `region` VALUES ('501', '130681', '涿州市', '44', 'Z', '2');
INSERT INTO `region` VALUES ('502', '130682', '定州市', '44', 'D', '2');
INSERT INTO `region` VALUES ('503', '130683', '安国市', '44', 'A', '2');
INSERT INTO `region` VALUES ('504', '130684', '高碑店市', '44', 'G', '2');
INSERT INTO `region` VALUES ('505', '130705', '宣化区', '45', 'X', '2');
INSERT INTO `region` VALUES ('506', '130706', '下花园区', '45', 'X', '2');
INSERT INTO `region` VALUES ('507', '130721', '宣化县', '45', 'X', '2');
INSERT INTO `region` VALUES ('508', '130722', '张北县', '45', 'Z', '2');
INSERT INTO `region` VALUES ('509', '130723', '康保县', '45', 'K', '2');
INSERT INTO `region` VALUES ('510', '130724', '沽源县', '45', 'G', '2');
INSERT INTO `region` VALUES ('511', '130725', '尚义县', '45', 'S', '2');
INSERT INTO `region` VALUES ('512', '130726', '蔚县', '45', 'W', '2');
INSERT INTO `region` VALUES ('513', '130727', '阳原县', '45', 'Y', '2');
INSERT INTO `region` VALUES ('514', '130728', '怀安县', '45', 'H', '2');
INSERT INTO `region` VALUES ('515', '130729', '万全县', '45', 'W', '2');
INSERT INTO `region` VALUES ('516', '130730', '怀来县', '45', 'H', '2');
INSERT INTO `region` VALUES ('517', '130731', '涿鹿县', '45', 'Z', '2');
INSERT INTO `region` VALUES ('518', '130732', '赤城县', '45', 'C', '2');
INSERT INTO `region` VALUES ('519', '130733', '崇礼县', '45', 'C', '2');
INSERT INTO `region` VALUES ('520', '130802', '双桥区', '46', 'S', '2');
INSERT INTO `region` VALUES ('521', '130803', '双滦区', '46', 'S', '2');
INSERT INTO `region` VALUES ('522', '130804', '鹰手营子矿区', '46', 'Y', '2');
INSERT INTO `region` VALUES ('523', '130821', '承德县', '46', 'C', '2');
INSERT INTO `region` VALUES ('524', '130822', '兴隆县', '46', 'X', '2');
INSERT INTO `region` VALUES ('525', '130823', '平泉县', '46', 'P', '2');
INSERT INTO `region` VALUES ('526', '130824', '滦平县', '46', 'L', '2');
INSERT INTO `region` VALUES ('527', '130825', '隆化县', '46', 'L', '2');
INSERT INTO `region` VALUES ('528', '130826', '丰宁满族自治县', '46', 'F', '2');
INSERT INTO `region` VALUES ('529', '130827', '宽城满族自治县', '46', 'K', '2');
INSERT INTO `region` VALUES ('530', '130828', '围场满族蒙古族自治县', '46', 'W', '2');
INSERT INTO `region` VALUES ('531', '130903', '运河区', '47', 'Y', '2');
INSERT INTO `region` VALUES ('532', '130921', '沧县', '47', 'C', '2');
INSERT INTO `region` VALUES ('533', '130922', '青县', '47', 'Q', '2');
INSERT INTO `region` VALUES ('534', '130923', '东光县', '47', 'D', '2');
INSERT INTO `region` VALUES ('535', '130924', '海兴县', '47', 'H', '2');
INSERT INTO `region` VALUES ('536', '130925', '盐山县', '47', 'Y', '2');
INSERT INTO `region` VALUES ('537', '130926', '肃宁县', '47', 'S', '2');
INSERT INTO `region` VALUES ('538', '130927', '南皮县', '47', 'N', '2');
INSERT INTO `region` VALUES ('539', '130928', '吴桥县', '47', 'W', '2');
INSERT INTO `region` VALUES ('540', '130929', '献县', '47', 'X', '2');
INSERT INTO `region` VALUES ('541', '130930', '孟村回族自治县', '47', 'M', '2');
INSERT INTO `region` VALUES ('542', '130981', '泊头市', '47', 'B', '2');
INSERT INTO `region` VALUES ('543', '130982', '任丘市', '47', 'R', '2');
INSERT INTO `region` VALUES ('544', '130983', '黄骅市', '47', 'H', '2');
INSERT INTO `region` VALUES ('545', '130984', '河间市', '47', 'H', '2');
INSERT INTO `region` VALUES ('546', '131002', '安次区', '48', 'A', '2');
INSERT INTO `region` VALUES ('547', '131003', '广阳区', '48', 'G', '2');
INSERT INTO `region` VALUES ('548', '131022', '固安县', '48', 'G', '2');
INSERT INTO `region` VALUES ('549', '131023', '永清县', '48', 'Y', '2');
INSERT INTO `region` VALUES ('550', '131024', '香河县', '48', 'X', '2');
INSERT INTO `region` VALUES ('551', '131025', '大城县', '48', 'D', '2');
INSERT INTO `region` VALUES ('552', '131026', '文安县', '48', 'W', '2');
INSERT INTO `region` VALUES ('553', '131028', '大厂回族自治县', '48', 'D', '2');
INSERT INTO `region` VALUES ('554', '131081', '霸州市', '48', 'B', '2');
INSERT INTO `region` VALUES ('555', '131082', '三河市', '48', 'S', '2');
INSERT INTO `region` VALUES ('556', '131102', '桃城区', '49', 'T', '2');
INSERT INTO `region` VALUES ('557', '131121', '枣强县', '49', 'Z', '2');
INSERT INTO `region` VALUES ('558', '131122', '武邑县', '49', 'W', '2');
INSERT INTO `region` VALUES ('559', '131123', '武强县', '49', 'W', '2');
INSERT INTO `region` VALUES ('560', '131124', '饶阳县', '49', 'R', '2');
INSERT INTO `region` VALUES ('561', '131125', '安平县', '49', 'A', '2');
INSERT INTO `region` VALUES ('562', '131126', '故城县', '49', 'G', '2');
INSERT INTO `region` VALUES ('563', '131127', '景县', '49', 'J', '2');
INSERT INTO `region` VALUES ('564', '131128', '阜城县', '49', 'F', '2');
INSERT INTO `region` VALUES ('565', '131181', '冀州市', '49', 'J', '2');
INSERT INTO `region` VALUES ('566', '131182', '深州市', '49', 'S', '2');
INSERT INTO `region` VALUES ('567', '140105', '小店区', '50', 'X', '2');
INSERT INTO `region` VALUES ('568', '140106', '迎泽区', '50', 'Y', '2');
INSERT INTO `region` VALUES ('569', '140107', '杏花岭区', '50', 'X', '2');
INSERT INTO `region` VALUES ('570', '140108', '尖草坪区', '50', 'J', '2');
INSERT INTO `region` VALUES ('571', '140109', '万柏林区', '50', 'W', '2');
INSERT INTO `region` VALUES ('572', '140110', '晋源区', '50', 'J', '2');
INSERT INTO `region` VALUES ('573', '140121', '清徐县', '50', 'Q', '2');
INSERT INTO `region` VALUES ('574', '140122', '阳曲县', '50', 'Y', '2');
INSERT INTO `region` VALUES ('575', '140123', '娄烦县', '50', 'L', '2');
INSERT INTO `region` VALUES ('576', '140181', '古交市', '50', 'G', '2');
INSERT INTO `region` VALUES ('577', '140202', '城区', '51', 'C', '2');
INSERT INTO `region` VALUES ('578', '140203', '矿区', '51', 'K', '2');
INSERT INTO `region` VALUES ('579', '140211', '南郊区', '51', 'N', '2');
INSERT INTO `region` VALUES ('580', '140212', '新荣区', '51', 'X', '2');
INSERT INTO `region` VALUES ('581', '140221', '阳高县', '51', 'Y', '2');
INSERT INTO `region` VALUES ('582', '140222', '天镇县', '51', 'T', '2');
INSERT INTO `region` VALUES ('583', '140223', '广灵县', '51', 'G', '2');
INSERT INTO `region` VALUES ('584', '140224', '灵丘县', '51', 'L', '2');
INSERT INTO `region` VALUES ('585', '140225', '浑源县', '51', 'H', '2');
INSERT INTO `region` VALUES ('586', '140226', '左云县', '51', 'Z', '2');
INSERT INTO `region` VALUES ('587', '140227', '大同县', '51', 'D', '2');
INSERT INTO `region` VALUES ('588', '140311', '郊区', '52', 'J', '2');
INSERT INTO `region` VALUES ('589', '140321', '平定县', '52', 'P', '2');
INSERT INTO `region` VALUES ('590', '140322', '盂县', '52', 'Y', '2');
INSERT INTO `region` VALUES ('591', '140421', '长治县', '53', 'C', '2');
INSERT INTO `region` VALUES ('592', '140423', '襄垣县', '53', 'X', '2');
INSERT INTO `region` VALUES ('593', '140424', '屯留县', '53', 'T', '2');
INSERT INTO `region` VALUES ('594', '140425', '平顺县', '53', 'P', '2');
INSERT INTO `region` VALUES ('595', '140426', '黎城县', '53', 'L', '2');
INSERT INTO `region` VALUES ('596', '140427', '壶关县', '53', 'H', '2');
INSERT INTO `region` VALUES ('597', '140428', '长子县', '53', 'C', '2');
INSERT INTO `region` VALUES ('598', '140429', '武乡县', '53', 'W', '2');
INSERT INTO `region` VALUES ('599', '140430', '沁县', '53', 'Q', '2');
INSERT INTO `region` VALUES ('600', '140431', '沁源县', '53', 'Q', '2');
INSERT INTO `region` VALUES ('601', '140481', '潞城市', '53', 'L', '2');
INSERT INTO `region` VALUES ('602', '140521', '沁水县', '54', 'Q', '2');
INSERT INTO `region` VALUES ('603', '140522', '阳城县', '54', 'Y', '2');
INSERT INTO `region` VALUES ('604', '140524', '陵川县', '54', 'L', '2');
INSERT INTO `region` VALUES ('605', '140525', '泽州县', '54', 'Z', '2');
INSERT INTO `region` VALUES ('606', '140581', '高平市', '54', 'G', '2');
INSERT INTO `region` VALUES ('607', '140602', '朔城区', '55', 'S', '2');
INSERT INTO `region` VALUES ('608', '140603', '平鲁区', '55', 'P', '2');
INSERT INTO `region` VALUES ('609', '140621', '山阴县', '55', 'S', '2');
INSERT INTO `region` VALUES ('610', '140622', '应县', '55', 'Y', '2');
INSERT INTO `region` VALUES ('611', '140623', '右玉县', '55', 'Y', '2');
INSERT INTO `region` VALUES ('612', '140624', '怀仁县', '55', 'H', '2');
INSERT INTO `region` VALUES ('613', '140702', '榆次区', '56', 'Y', '2');
INSERT INTO `region` VALUES ('614', '140721', '榆社县', '56', 'Y', '2');
INSERT INTO `region` VALUES ('615', '140722', '左权县', '56', 'Z', '2');
INSERT INTO `region` VALUES ('616', '140723', '和顺县', '56', 'H', '2');
INSERT INTO `region` VALUES ('617', '140724', '昔阳县', '56', 'X', '2');
INSERT INTO `region` VALUES ('618', '140725', '寿阳县', '56', 'S', '2');
INSERT INTO `region` VALUES ('619', '140726', '太谷县', '56', 'T', '2');
INSERT INTO `region` VALUES ('620', '140727', '祁县', '56', 'Q', '2');
INSERT INTO `region` VALUES ('621', '140728', '平遥县', '56', 'P', '2');
INSERT INTO `region` VALUES ('622', '140729', '灵石县', '56', 'L', '2');
INSERT INTO `region` VALUES ('623', '140781', '介休市', '56', 'J', '2');
INSERT INTO `region` VALUES ('624', '140802', '盐湖区', '57', 'Y', '2');
INSERT INTO `region` VALUES ('625', '140821', '临猗县', '57', 'L', '2');
INSERT INTO `region` VALUES ('626', '140822', '万荣县', '57', 'W', '2');
INSERT INTO `region` VALUES ('627', '140823', '闻喜县', '57', 'W', '2');
INSERT INTO `region` VALUES ('628', '140824', '稷山县', '57', 'J', '2');
INSERT INTO `region` VALUES ('629', '140825', '新绛县', '57', 'X', '2');
INSERT INTO `region` VALUES ('630', '140826', '绛县', '57', 'J', '2');
INSERT INTO `region` VALUES ('631', '140827', '垣曲县', '57', 'Y', '2');
INSERT INTO `region` VALUES ('632', '140828', '夏县', '57', 'X', '2');
INSERT INTO `region` VALUES ('633', '140829', '平陆县', '57', 'P', '2');
INSERT INTO `region` VALUES ('634', '140830', '芮城县', '57', 'R', '2');
INSERT INTO `region` VALUES ('635', '140881', '永济市', '57', 'Y', '2');
INSERT INTO `region` VALUES ('636', '140882', '河津市', '57', 'H', '2');
INSERT INTO `region` VALUES ('637', '140902', '忻府区', '58', 'X', '2');
INSERT INTO `region` VALUES ('638', '140921', '定襄县', '58', 'D', '2');
INSERT INTO `region` VALUES ('639', '140922', '五台县', '58', 'W', '2');
INSERT INTO `region` VALUES ('640', '140923', '代县', '58', 'D', '2');
INSERT INTO `region` VALUES ('641', '140924', '繁峙县', '58', 'F', '2');
INSERT INTO `region` VALUES ('642', '140925', '宁武县', '58', 'N', '2');
INSERT INTO `region` VALUES ('643', '140926', '静乐县', '58', 'J', '2');
INSERT INTO `region` VALUES ('644', '140927', '神池县', '58', 'S', '2');
INSERT INTO `region` VALUES ('645', '140928', '五寨县', '58', 'W', '2');
INSERT INTO `region` VALUES ('646', '140929', '岢岚县', '58', 'K', '2');
INSERT INTO `region` VALUES ('647', '140930', '河曲县', '58', 'H', '2');
INSERT INTO `region` VALUES ('648', '140931', '保德县', '58', 'B', '2');
INSERT INTO `region` VALUES ('649', '140932', '偏关县', '58', 'P', '2');
INSERT INTO `region` VALUES ('650', '140981', '原平市', '58', 'Y', '2');
INSERT INTO `region` VALUES ('651', '141002', '尧都区', '59', 'Y', '2');
INSERT INTO `region` VALUES ('652', '141021', '曲沃县', '59', 'Q', '2');
INSERT INTO `region` VALUES ('653', '141022', '翼城县', '59', 'Y', '2');
INSERT INTO `region` VALUES ('654', '141023', '襄汾县', '59', 'X', '2');
INSERT INTO `region` VALUES ('655', '141024', '洪洞县', '59', 'H', '2');
INSERT INTO `region` VALUES ('656', '141025', '古县', '59', 'G', '2');
INSERT INTO `region` VALUES ('657', '141026', '安泽县', '59', 'A', '2');
INSERT INTO `region` VALUES ('658', '141027', '浮山县', '59', 'F', '2');
INSERT INTO `region` VALUES ('659', '141028', '吉县', '59', 'J', '2');
INSERT INTO `region` VALUES ('660', '141029', '乡宁县', '59', 'X', '2');
INSERT INTO `region` VALUES ('661', '141030', '大宁县', '59', 'D', '2');
INSERT INTO `region` VALUES ('662', '141031', '隰县', '59', 'X', '2');
INSERT INTO `region` VALUES ('663', '141032', '永和县', '59', 'Y', '2');
INSERT INTO `region` VALUES ('664', '141033', '蒲县', '59', 'P', '2');
INSERT INTO `region` VALUES ('665', '141034', '汾西县', '59', 'F', '2');
INSERT INTO `region` VALUES ('666', '141081', '侯马市', '59', 'H', '2');
INSERT INTO `region` VALUES ('667', '141082', '霍州市', '59', 'H', '2');
INSERT INTO `region` VALUES ('668', '141102', '离石区', '60', 'L', '2');
INSERT INTO `region` VALUES ('669', '141121', '文水县', '60', 'W', '2');
INSERT INTO `region` VALUES ('670', '141122', '交城县', '60', 'J', '2');
INSERT INTO `region` VALUES ('671', '141123', '兴县', '60', 'X', '2');
INSERT INTO `region` VALUES ('672', '141124', '临县', '60', 'L', '2');
INSERT INTO `region` VALUES ('673', '141125', '柳林县', '60', 'L', '2');
INSERT INTO `region` VALUES ('674', '141126', '石楼县', '60', 'S', '2');
INSERT INTO `region` VALUES ('675', '141127', '岚县', '60', 'L', '2');
INSERT INTO `region` VALUES ('676', '141128', '方山县', '60', 'F', '2');
INSERT INTO `region` VALUES ('677', '141129', '中阳县', '60', 'Z', '2');
INSERT INTO `region` VALUES ('678', '141130', '交口县', '60', 'J', '2');
INSERT INTO `region` VALUES ('679', '141181', '孝义市', '60', 'X', '2');
INSERT INTO `region` VALUES ('680', '141182', '汾阳市', '60', 'F', '2');
INSERT INTO `region` VALUES ('681', '150102', '新城区', '61', 'X', '2');
INSERT INTO `region` VALUES ('682', '150103', '回民区', '61', 'H', '2');
INSERT INTO `region` VALUES ('683', '150104', '玉泉区', '61', 'Y', '2');
INSERT INTO `region` VALUES ('684', '150105', '赛罕区', '61', 'S', '2');
INSERT INTO `region` VALUES ('685', '150121', '土默特左旗', '61', 'T', '2');
INSERT INTO `region` VALUES ('686', '150122', '托克托县', '61', 'T', '2');
INSERT INTO `region` VALUES ('687', '150123', '和林格尔县', '61', 'H', '2');
INSERT INTO `region` VALUES ('688', '150124', '清水河县', '61', 'Q', '2');
INSERT INTO `region` VALUES ('689', '150125', '武川县', '61', 'W', '2');
INSERT INTO `region` VALUES ('690', '150202', '东河区', '62', 'D', '2');
INSERT INTO `region` VALUES ('691', '150203', '昆都仑区', '62', 'K', '2');
INSERT INTO `region` VALUES ('692', '150204', '青山区', '62', 'Q', '2');
INSERT INTO `region` VALUES ('693', '150205', '石拐区', '62', 'S', '2');
INSERT INTO `region` VALUES ('694', '150206', '白云鄂博矿区', '62', 'B', '2');
INSERT INTO `region` VALUES ('695', '150207', '九原区', '62', 'J', '2');
INSERT INTO `region` VALUES ('696', '150221', '土默特右旗', '62', 'T', '2');
INSERT INTO `region` VALUES ('697', '150222', '固阳县', '62', 'G', '2');
INSERT INTO `region` VALUES ('698', '150223', '达尔罕茂明安联合旗', '62', 'D', '2');
INSERT INTO `region` VALUES ('699', '150302', '海勃湾区', '63', 'H', '2');
INSERT INTO `region` VALUES ('700', '150303', '海南区', '63', 'H', '2');
INSERT INTO `region` VALUES ('701', '150304', '乌达区', '63', 'W', '2');
INSERT INTO `region` VALUES ('702', '150402', '红山区', '64', 'H', '2');
INSERT INTO `region` VALUES ('703', '150403', '元宝山区', '64', 'Y', '2');
INSERT INTO `region` VALUES ('704', '150404', '松山区', '64', 'S', '2');
INSERT INTO `region` VALUES ('705', '150421', '阿鲁科尔沁旗', '64', 'A', '2');
INSERT INTO `region` VALUES ('706', '150422', '巴林左旗', '64', 'B', '2');
INSERT INTO `region` VALUES ('707', '150423', '巴林右旗', '64', 'B', '2');
INSERT INTO `region` VALUES ('708', '150424', '林西县', '64', 'L', '2');
INSERT INTO `region` VALUES ('709', '150425', '克什克腾旗', '64', 'K', '2');
INSERT INTO `region` VALUES ('710', '150426', '翁牛特旗', '64', 'W', '2');
INSERT INTO `region` VALUES ('711', '150428', '喀喇沁旗', '64', 'K', '2');
INSERT INTO `region` VALUES ('712', '150429', '宁城县', '64', 'N', '2');
INSERT INTO `region` VALUES ('713', '150430', '敖汉旗', '64', 'A', '2');
INSERT INTO `region` VALUES ('714', '150502', '科尔沁区', '65', 'K', '2');
INSERT INTO `region` VALUES ('715', '150521', '科尔沁左翼中旗', '65', 'K', '2');
INSERT INTO `region` VALUES ('716', '150522', '科尔沁左翼后旗', '65', 'K', '2');
INSERT INTO `region` VALUES ('717', '150523', '开鲁县', '65', 'K', '2');
INSERT INTO `region` VALUES ('718', '150524', '库伦旗', '65', 'K', '2');
INSERT INTO `region` VALUES ('719', '150525', '奈曼旗', '65', 'N', '2');
INSERT INTO `region` VALUES ('720', '150526', '扎鲁特旗', '65', 'Z', '2');
INSERT INTO `region` VALUES ('721', '150581', '霍林郭勒市', '65', 'H', '2');
INSERT INTO `region` VALUES ('722', '150602', '东胜区', '66', 'D', '2');
INSERT INTO `region` VALUES ('723', '150621', '达拉特旗', '66', 'D', '2');
INSERT INTO `region` VALUES ('724', '150622', '准格尔旗', '66', 'Z', '2');
INSERT INTO `region` VALUES ('725', '150623', '鄂托克前旗', '66', 'E', '2');
INSERT INTO `region` VALUES ('726', '150624', '鄂托克旗', '66', 'E', '2');
INSERT INTO `region` VALUES ('727', '150625', '杭锦旗', '66', 'H', '2');
INSERT INTO `region` VALUES ('728', '150626', '乌审旗', '66', 'W', '2');
INSERT INTO `region` VALUES ('729', '150627', '伊金霍洛旗', '66', 'Y', '2');
INSERT INTO `region` VALUES ('730', '150702', '海拉尔区', '67', 'H', '2');
INSERT INTO `region` VALUES ('731', '150703', '扎赉诺尔区', '67', 'Z', '2');
INSERT INTO `region` VALUES ('732', '150721', '阿荣旗', '67', 'A', '2');
INSERT INTO `region` VALUES ('733', '150722', '莫力达瓦达斡尔族自治旗', '67', 'M', '2');
INSERT INTO `region` VALUES ('734', '150723', '鄂伦春自治旗', '67', 'E', '2');
INSERT INTO `region` VALUES ('735', '150724', '鄂温克族自治旗', '67', 'E', '2');
INSERT INTO `region` VALUES ('736', '150725', '陈巴尔虎旗', '67', 'C', '2');
INSERT INTO `region` VALUES ('737', '150726', '新巴尔虎左旗', '67', 'X', '2');
INSERT INTO `region` VALUES ('738', '150727', '新巴尔虎右旗', '67', 'X', '2');
INSERT INTO `region` VALUES ('739', '150781', '满洲里市', '67', 'M', '2');
INSERT INTO `region` VALUES ('740', '150782', '牙克石市', '67', 'Y', '2');
INSERT INTO `region` VALUES ('741', '150783', '扎兰屯市', '67', 'Z', '2');
INSERT INTO `region` VALUES ('742', '150784', '额尔古纳市', '67', 'E', '2');
INSERT INTO `region` VALUES ('743', '150785', '根河市', '67', 'G', '2');
INSERT INTO `region` VALUES ('744', '150802', '临河区', '68', 'L', '2');
INSERT INTO `region` VALUES ('745', '150821', '五原县', '68', 'W', '2');
INSERT INTO `region` VALUES ('746', '150822', '磴口县', '68', 'D', '2');
INSERT INTO `region` VALUES ('747', '150823', '乌拉特前旗', '68', 'W', '2');
INSERT INTO `region` VALUES ('748', '150824', '乌拉特中旗', '68', 'W', '2');
INSERT INTO `region` VALUES ('749', '150825', '乌拉特后旗', '68', 'W', '2');
INSERT INTO `region` VALUES ('750', '150826', '杭锦后旗', '68', 'H', '2');
INSERT INTO `region` VALUES ('751', '150902', '集宁区', '69', 'J', '2');
INSERT INTO `region` VALUES ('752', '150921', '卓资县', '69', 'Z', '2');
INSERT INTO `region` VALUES ('753', '150922', '化德县', '69', 'H', '2');
INSERT INTO `region` VALUES ('754', '150923', '商都县', '69', 'S', '2');
INSERT INTO `region` VALUES ('755', '150924', '兴和县', '69', 'X', '2');
INSERT INTO `region` VALUES ('756', '150925', '凉城县', '69', 'L', '2');
INSERT INTO `region` VALUES ('757', '150926', '察哈尔右翼前旗', '69', 'C', '2');
INSERT INTO `region` VALUES ('758', '150927', '察哈尔右翼中旗', '69', 'C', '2');
INSERT INTO `region` VALUES ('759', '150928', '察哈尔右翼后旗', '69', 'C', '2');
INSERT INTO `region` VALUES ('760', '150929', '四子王旗', '69', 'S', '2');
INSERT INTO `region` VALUES ('761', '150981', '丰镇市', '69', 'F', '2');
INSERT INTO `region` VALUES ('762', '152201', '乌兰浩特市', '70', 'W', '2');
INSERT INTO `region` VALUES ('763', '152202', '阿尔山市', '70', 'A', '2');
INSERT INTO `region` VALUES ('764', '152221', '科尔沁右翼前旗', '70', 'K', '2');
INSERT INTO `region` VALUES ('765', '152222', '科尔沁右翼中旗', '70', 'K', '2');
INSERT INTO `region` VALUES ('766', '152223', '扎赉特旗', '70', 'Z', '2');
INSERT INTO `region` VALUES ('767', '152224', '突泉县', '70', 'T', '2');
INSERT INTO `region` VALUES ('768', '152501', '二连浩特市', '71', 'E', '2');
INSERT INTO `region` VALUES ('769', '152502', '锡林浩特市', '71', 'X', '2');
INSERT INTO `region` VALUES ('770', '152522', '阿巴嘎旗', '71', 'A', '2');
INSERT INTO `region` VALUES ('771', '152523', '苏尼特左旗', '71', 'S', '2');
INSERT INTO `region` VALUES ('772', '152524', '苏尼特右旗', '71', 'S', '2');
INSERT INTO `region` VALUES ('773', '152525', '东乌珠穆沁旗', '71', 'D', '2');
INSERT INTO `region` VALUES ('774', '152526', '西乌珠穆沁旗', '71', 'X', '2');
INSERT INTO `region` VALUES ('775', '152527', '太仆寺旗', '71', 'T', '2');
INSERT INTO `region` VALUES ('776', '152528', '镶黄旗', '71', 'X', '2');
INSERT INTO `region` VALUES ('777', '152529', '正镶白旗', '71', 'Z', '2');
INSERT INTO `region` VALUES ('778', '152530', '正蓝旗', '71', 'Z', '2');
INSERT INTO `region` VALUES ('779', '152531', '多伦县', '71', 'D', '2');
INSERT INTO `region` VALUES ('780', '152921', '阿拉善左旗', '72', 'A', '2');
INSERT INTO `region` VALUES ('781', '152922', '阿拉善右旗', '72', 'A', '2');
INSERT INTO `region` VALUES ('782', '152923', '额济纳旗', '72', 'E', '2');
INSERT INTO `region` VALUES ('783', '210103', '沈河区', '73', 'S', '2');
INSERT INTO `region` VALUES ('784', '210104', '大东区', '73', 'D', '2');
INSERT INTO `region` VALUES ('785', '210105', '皇姑区', '73', 'H', '2');
INSERT INTO `region` VALUES ('786', '210106', '铁西区', '73', 'T', '2');
INSERT INTO `region` VALUES ('787', '210111', '苏家屯区', '73', 'S', '2');
INSERT INTO `region` VALUES ('788', '210112', '浑南区', '73', 'H', '2');
INSERT INTO `region` VALUES ('789', '210113', '沈北新区', '73', 'S', '2');
INSERT INTO `region` VALUES ('790', '210114', '于洪区', '73', 'Y', '2');
INSERT INTO `region` VALUES ('791', '210122', '辽中县', '73', 'L', '2');
INSERT INTO `region` VALUES ('792', '210123', '康平县', '73', 'K', '2');
INSERT INTO `region` VALUES ('793', '210124', '法库县', '73', 'F', '2');
INSERT INTO `region` VALUES ('794', '210181', '新民市', '73', 'X', '2');
INSERT INTO `region` VALUES ('795', '210202', '中山区', '74', 'Z', '2');
INSERT INTO `region` VALUES ('796', '210203', '西岗区', '74', 'X', '2');
INSERT INTO `region` VALUES ('797', '210204', '沙河口区', '74', 'S', '2');
INSERT INTO `region` VALUES ('798', '210211', '甘井子区', '74', 'G', '2');
INSERT INTO `region` VALUES ('799', '210212', '旅顺口区', '74', 'L', '2');
INSERT INTO `region` VALUES ('800', '210213', '金州区', '74', 'J', '2');
INSERT INTO `region` VALUES ('801', '210224', '长海县', '74', 'C', '2');
INSERT INTO `region` VALUES ('802', '210281', '瓦房店市', '74', 'W', '2');
INSERT INTO `region` VALUES ('803', '210282', '普兰店市', '74', 'P', '2');
INSERT INTO `region` VALUES ('804', '210283', '庄河市', '74', 'Z', '2');
INSERT INTO `region` VALUES ('805', '210302', '铁东区', '75', 'T', '2');
INSERT INTO `region` VALUES ('806', '210304', '立山区', '75', 'L', '2');
INSERT INTO `region` VALUES ('807', '210311', '千山区', '75', 'Q', '2');
INSERT INTO `region` VALUES ('808', '210321', '台安县', '75', 'T', '2');
INSERT INTO `region` VALUES ('809', '210323', '岫岩满族自治县', '75', 'X', '2');
INSERT INTO `region` VALUES ('810', '210381', '海城市', '75', 'H', '2');
INSERT INTO `region` VALUES ('811', '210402', '新抚区', '76', 'X', '2');
INSERT INTO `region` VALUES ('812', '210403', '东洲区', '76', 'D', '2');
INSERT INTO `region` VALUES ('813', '210404', '望花区', '76', 'W', '2');
INSERT INTO `region` VALUES ('814', '210411', '顺城区', '76', 'S', '2');
INSERT INTO `region` VALUES ('815', '210421', '抚顺县', '76', 'F', '2');
INSERT INTO `region` VALUES ('816', '210422', '新宾满族自治县', '76', 'X', '2');
INSERT INTO `region` VALUES ('817', '210423', '清原满族自治县', '76', 'Q', '2');
INSERT INTO `region` VALUES ('818', '210502', '平山区', '77', 'P', '2');
INSERT INTO `region` VALUES ('819', '210503', '溪湖区', '77', 'X', '2');
INSERT INTO `region` VALUES ('820', '210504', '明山区', '77', 'M', '2');
INSERT INTO `region` VALUES ('821', '210505', '南芬区', '77', 'N', '2');
INSERT INTO `region` VALUES ('822', '210521', '本溪满族自治县', '77', 'B', '2');
INSERT INTO `region` VALUES ('823', '210522', '桓仁满族自治县', '77', 'H', '2');
INSERT INTO `region` VALUES ('824', '210602', '元宝区', '78', 'Y', '2');
INSERT INTO `region` VALUES ('825', '210603', '振兴区', '78', 'Z', '2');
INSERT INTO `region` VALUES ('826', '210604', '振安区', '78', 'Z', '2');
INSERT INTO `region` VALUES ('827', '210624', '宽甸满族自治县', '78', 'K', '2');
INSERT INTO `region` VALUES ('828', '210681', '东港市', '78', 'D', '2');
INSERT INTO `region` VALUES ('829', '210682', '凤城市', '78', 'F', '2');
INSERT INTO `region` VALUES ('830', '210702', '古塔区', '79', 'G', '2');
INSERT INTO `region` VALUES ('831', '210703', '凌河区', '79', 'L', '2');
INSERT INTO `region` VALUES ('832', '210711', '太和区', '79', 'T', '2');
INSERT INTO `region` VALUES ('833', '210726', '黑山县', '79', 'H', '2');
INSERT INTO `region` VALUES ('834', '210727', '义县', '79', 'Y', '2');
INSERT INTO `region` VALUES ('835', '210781', '凌海市', '79', 'L', '2');
INSERT INTO `region` VALUES ('836', '210782', '北镇市', '79', 'B', '2');
INSERT INTO `region` VALUES ('837', '210802', '站前区', '80', 'Z', '2');
INSERT INTO `region` VALUES ('838', '210803', '西市区', '80', 'X', '2');
INSERT INTO `region` VALUES ('839', '210804', '鲅鱼圈区', '80', 'B', '2');
INSERT INTO `region` VALUES ('840', '210811', '老边区', '80', 'L', '2');
INSERT INTO `region` VALUES ('841', '210881', '盖州市', '80', 'G', '2');
INSERT INTO `region` VALUES ('842', '210882', '大石桥市', '80', 'D', '2');
INSERT INTO `region` VALUES ('843', '210902', '海州区', '81', 'H', '2');
INSERT INTO `region` VALUES ('844', '210903', '新邱区', '81', 'X', '2');
INSERT INTO `region` VALUES ('845', '210904', '太平区', '81', 'T', '2');
INSERT INTO `region` VALUES ('846', '210905', '清河门区', '81', 'Q', '2');
INSERT INTO `region` VALUES ('847', '210911', '细河区', '81', 'X', '2');
INSERT INTO `region` VALUES ('848', '210921', '阜新蒙古族自治县', '81', 'F', '2');
INSERT INTO `region` VALUES ('849', '210922', '彰武县', '81', 'Z', '2');
INSERT INTO `region` VALUES ('850', '211002', '白塔区', '82', 'B', '2');
INSERT INTO `region` VALUES ('851', '211003', '文圣区', '82', 'W', '2');
INSERT INTO `region` VALUES ('852', '211004', '宏伟区', '82', 'H', '2');
INSERT INTO `region` VALUES ('853', '211005', '弓长岭区', '82', 'G', '2');
INSERT INTO `region` VALUES ('854', '211011', '太子河区', '82', 'T', '2');
INSERT INTO `region` VALUES ('855', '211021', '辽阳县', '82', 'L', '2');
INSERT INTO `region` VALUES ('856', '211081', '灯塔市', '82', 'D', '2');
INSERT INTO `region` VALUES ('858', '211102', '双台子区', '83', 'S', '2');
INSERT INTO `region` VALUES ('859', '211103', '兴隆台区', '83', 'X', '2');
INSERT INTO `region` VALUES ('860', '211121', '大洼县', '83', 'D', '2');
INSERT INTO `region` VALUES ('861', '211122', '盘山县', '83', 'P', '2');
INSERT INTO `region` VALUES ('862', '211202', '银州区', '84', 'Y', '2');
INSERT INTO `region` VALUES ('863', '211204', '清河区', '84', 'Q', '2');
INSERT INTO `region` VALUES ('864', '211221', '铁岭县', '84', 'T', '2');
INSERT INTO `region` VALUES ('865', '211223', '西丰县', '84', 'X', '2');
INSERT INTO `region` VALUES ('866', '211224', '昌图县', '84', 'C', '2');
INSERT INTO `region` VALUES ('867', '211281', '调兵山市', '84', 'D', '2');
INSERT INTO `region` VALUES ('868', '211282', '开原市', '84', 'K', '2');
INSERT INTO `region` VALUES ('869', '211302', '双塔区', '85', 'S', '2');
INSERT INTO `region` VALUES ('870', '211303', '龙城区', '85', 'L', '2');
INSERT INTO `region` VALUES ('871', '211321', '朝阳县', '85', 'C', '2');
INSERT INTO `region` VALUES ('872', '211322', '建平县', '85', 'J', '2');
INSERT INTO `region` VALUES ('873', '211324', '喀喇沁左翼蒙古族自治县', '85', 'K', '2');
INSERT INTO `region` VALUES ('874', '211381', '北票市', '85', 'B', '2');
INSERT INTO `region` VALUES ('875', '211382', '凌源市', '85', 'L', '2');
INSERT INTO `region` VALUES ('876', '211402', '连山区', '86', 'L', '2');
INSERT INTO `region` VALUES ('877', '211403', '龙港区', '86', 'L', '2');
INSERT INTO `region` VALUES ('878', '211404', '南票区', '86', 'N', '2');
INSERT INTO `region` VALUES ('879', '211421', '绥中县', '86', 'S', '2');
INSERT INTO `region` VALUES ('880', '211422', '建昌县', '86', 'J', '2');
INSERT INTO `region` VALUES ('881', '211481', '兴城市', '86', 'X', '2');
INSERT INTO `region` VALUES ('882', '220102', '南关区', '87', 'N', '2');
INSERT INTO `region` VALUES ('883', '220103', '宽城区', '87', 'K', '2');
INSERT INTO `region` VALUES ('884', '220105', '二道区', '87', 'E', '2');
INSERT INTO `region` VALUES ('885', '220106', '绿园区', '87', 'L', '2');
INSERT INTO `region` VALUES ('886', '220112', '双阳区', '87', 'S', '2');
INSERT INTO `region` VALUES ('887', '220113', '九台区', '87', 'J', '2');
INSERT INTO `region` VALUES ('888', '220122', '农安县', '87', 'N', '2');
INSERT INTO `region` VALUES ('889', '220182', '榆树市', '87', 'Y', '2');
INSERT INTO `region` VALUES ('890', '220183', '德惠市', '87', 'D', '2');
INSERT INTO `region` VALUES ('891', '220202', '昌邑区', '88', 'C', '2');
INSERT INTO `region` VALUES ('892', '220203', '龙潭区', '88', 'L', '2');
INSERT INTO `region` VALUES ('893', '220204', '船营区', '88', 'C', '2');
INSERT INTO `region` VALUES ('894', '220211', '丰满区', '88', 'F', '2');
INSERT INTO `region` VALUES ('895', '220221', '永吉县', '88', 'Y', '2');
INSERT INTO `region` VALUES ('896', '220281', '蛟河市', '88', 'J', '2');
INSERT INTO `region` VALUES ('897', '220282', '桦甸市', '88', 'H', '2');
INSERT INTO `region` VALUES ('898', '220283', '舒兰市', '88', 'S', '2');
INSERT INTO `region` VALUES ('899', '220284', '磐石市', '88', 'P', '2');
INSERT INTO `region` VALUES ('900', '220322', '梨树县', '89', 'L', '2');
INSERT INTO `region` VALUES ('901', '220323', '伊通满族自治县', '89', 'Y', '2');
INSERT INTO `region` VALUES ('902', '220381', '公主岭市', '89', 'G', '2');
INSERT INTO `region` VALUES ('903', '220382', '双辽市', '89', 'S', '2');
INSERT INTO `region` VALUES ('904', '220402', '龙山区', '90', 'L', '2');
INSERT INTO `region` VALUES ('905', '220403', '西安区', '90', 'X', '2');
INSERT INTO `region` VALUES ('906', '220421', '东丰县', '90', 'D', '2');
INSERT INTO `region` VALUES ('907', '220422', '东辽县', '90', 'D', '2');
INSERT INTO `region` VALUES ('908', '220502', '东昌区', '91', 'D', '2');
INSERT INTO `region` VALUES ('909', '220503', '二道江区', '91', 'E', '2');
INSERT INTO `region` VALUES ('910', '220521', '通化县', '91', 'T', '2');
INSERT INTO `region` VALUES ('911', '220523', '辉南县', '91', 'H', '2');
INSERT INTO `region` VALUES ('912', '220524', '柳河县', '91', 'L', '2');
INSERT INTO `region` VALUES ('913', '220581', '梅河口市', '91', 'M', '2');
INSERT INTO `region` VALUES ('914', '220582', '集安市', '91', 'J', '2');
INSERT INTO `region` VALUES ('915', '220602', '浑江区', '92', 'H', '2');
INSERT INTO `region` VALUES ('916', '220605', '江源区', '92', 'J', '2');
INSERT INTO `region` VALUES ('917', '220621', '抚松县', '92', 'F', '2');
INSERT INTO `region` VALUES ('918', '220622', '靖宇县', '92', 'J', '2');
INSERT INTO `region` VALUES ('919', '220623', '长白朝鲜族自治县', '92', 'C', '2');
INSERT INTO `region` VALUES ('920', '220681', '临江市', '92', 'L', '2');
INSERT INTO `region` VALUES ('921', '220702', '宁江区', '93', 'N', '2');
INSERT INTO `region` VALUES ('922', '220721', '前郭尔罗斯蒙古族自治县', '93', 'Q', '2');
INSERT INTO `region` VALUES ('923', '220722', '长岭县', '93', 'C', '2');
INSERT INTO `region` VALUES ('924', '220723', '乾安县', '93', 'Q', '2');
INSERT INTO `region` VALUES ('925', '220781', '扶余市', '93', 'F', '2');
INSERT INTO `region` VALUES ('926', '220802', '洮北区', '94', 'T', '2');
INSERT INTO `region` VALUES ('927', '220821', '镇赉县', '94', 'Z', '2');
INSERT INTO `region` VALUES ('928', '220822', '通榆县', '94', 'T', '2');
INSERT INTO `region` VALUES ('929', '220881', '洮南市', '94', 'T', '2');
INSERT INTO `region` VALUES ('930', '220882', '大安市', '94', 'D', '2');
INSERT INTO `region` VALUES ('931', '222401', '延吉市', '95', 'Y', '2');
INSERT INTO `region` VALUES ('932', '222402', '图们市', '95', 'T', '2');
INSERT INTO `region` VALUES ('933', '222403', '敦化市', '95', 'D', '2');
INSERT INTO `region` VALUES ('934', '222404', '珲春市', '95', 'H', '2');
INSERT INTO `region` VALUES ('935', '222405', '龙井市', '95', 'L', '2');
INSERT INTO `region` VALUES ('936', '222406', '和龙市', '95', 'H', '2');
INSERT INTO `region` VALUES ('937', '222424', '汪清县', '95', 'W', '2');
INSERT INTO `region` VALUES ('938', '222426', '安图县', '95', 'A', '2');
INSERT INTO `region` VALUES ('939', '230102', '道里区', '96', 'D', '2');
INSERT INTO `region` VALUES ('940', '230103', '南岗区', '96', 'N', '2');
INSERT INTO `region` VALUES ('941', '230104', '道外区', '96', 'D', '2');
INSERT INTO `region` VALUES ('942', '230108', '平房区', '96', 'P', '2');
INSERT INTO `region` VALUES ('943', '230109', '松北区', '96', 'S', '2');
INSERT INTO `region` VALUES ('944', '230110', '香坊区', '96', 'X', '2');
INSERT INTO `region` VALUES ('945', '230111', '呼兰区', '96', 'H', '2');
INSERT INTO `region` VALUES ('946', '230112', '阿城区', '96', 'A', '2');
INSERT INTO `region` VALUES ('947', '230123', '依兰县', '96', 'Y', '2');
INSERT INTO `region` VALUES ('948', '230124', '方正县', '96', 'F', '2');
INSERT INTO `region` VALUES ('949', '230125', '宾县', '96', 'B', '2');
INSERT INTO `region` VALUES ('950', '230126', '巴彦县', '96', 'B', '2');
INSERT INTO `region` VALUES ('951', '230127', '木兰县', '96', 'M', '2');
INSERT INTO `region` VALUES ('952', '230128', '通河县', '96', 'T', '2');
INSERT INTO `region` VALUES ('953', '230129', '延寿县', '96', 'Y', '2');
INSERT INTO `region` VALUES ('954', '230182', '双城市', '96', 'S', '2');
INSERT INTO `region` VALUES ('955', '230183', '尚志市', '96', 'S', '2');
INSERT INTO `region` VALUES ('956', '230184', '五常市', '96', 'W', '2');
INSERT INTO `region` VALUES ('957', '230202', '龙沙区', '97', 'L', '2');
INSERT INTO `region` VALUES ('958', '230203', '建华区', '97', 'J', '2');
INSERT INTO `region` VALUES ('959', '230204', '铁锋区', '97', 'T', '2');
INSERT INTO `region` VALUES ('960', '230205', '昂昂溪区', '97', 'A', '2');
INSERT INTO `region` VALUES ('961', '230206', '富拉尔基区', '97', 'F', '2');
INSERT INTO `region` VALUES ('962', '230207', '碾子山区', '97', 'N', '2');
INSERT INTO `region` VALUES ('963', '230208', '梅里斯达斡尔族区', '97', 'M', '2');
INSERT INTO `region` VALUES ('964', '230221', '龙江县', '97', 'L', '2');
INSERT INTO `region` VALUES ('965', '230223', '依安县', '97', 'Y', '2');
INSERT INTO `region` VALUES ('966', '230224', '泰来县', '97', 'T', '2');
INSERT INTO `region` VALUES ('967', '230225', '甘南县', '97', 'G', '2');
INSERT INTO `region` VALUES ('968', '230227', '富裕县', '97', 'F', '2');
INSERT INTO `region` VALUES ('969', '230229', '克山县', '97', 'K', '2');
INSERT INTO `region` VALUES ('970', '230230', '克东县', '97', 'K', '2');
INSERT INTO `region` VALUES ('971', '230231', '拜泉县', '97', 'B', '2');
INSERT INTO `region` VALUES ('972', '230281', '讷河市', '97', 'N', '2');
INSERT INTO `region` VALUES ('973', '230302', '鸡冠区', '98', 'J', '2');
INSERT INTO `region` VALUES ('974', '230303', '恒山区', '98', 'H', '2');
INSERT INTO `region` VALUES ('975', '230304', '滴道区', '98', 'D', '2');
INSERT INTO `region` VALUES ('976', '230305', '梨树区', '98', 'L', '2');
INSERT INTO `region` VALUES ('977', '230306', '城子河区', '98', 'C', '2');
INSERT INTO `region` VALUES ('978', '230307', '麻山区', '98', 'M', '2');
INSERT INTO `region` VALUES ('979', '230321', '鸡东县', '98', 'J', '2');
INSERT INTO `region` VALUES ('980', '230381', '虎林市', '98', 'H', '2');
INSERT INTO `region` VALUES ('981', '230382', '密山市', '98', 'M', '2');
INSERT INTO `region` VALUES ('982', '230402', '向阳区', '99', 'X', '2');
INSERT INTO `region` VALUES ('983', '230403', '工农区', '99', 'G', '2');
INSERT INTO `region` VALUES ('984', '230404', '南山区', '99', 'N', '2');
INSERT INTO `region` VALUES ('985', '230405', '兴安区', '99', 'X', '2');
INSERT INTO `region` VALUES ('986', '230406', '东山区', '99', 'D', '2');
INSERT INTO `region` VALUES ('987', '230407', '兴山区', '99', 'X', '2');
INSERT INTO `region` VALUES ('988', '230421', '萝北县', '99', 'L', '2');
INSERT INTO `region` VALUES ('989', '230422', '绥滨县', '99', 'S', '2');
INSERT INTO `region` VALUES ('990', '230502', '尖山区', '100', 'J', '2');
INSERT INTO `region` VALUES ('991', '230503', '岭东区', '100', 'L', '2');
INSERT INTO `region` VALUES ('992', '230505', '四方台区', '100', 'S', '2');
INSERT INTO `region` VALUES ('993', '230506', '宝山区', '100', 'B', '2');
INSERT INTO `region` VALUES ('994', '230521', '集贤县', '100', 'J', '2');
INSERT INTO `region` VALUES ('995', '230522', '友谊县', '100', 'Y', '2');
INSERT INTO `region` VALUES ('996', '230523', '宝清县', '100', 'B', '2');
INSERT INTO `region` VALUES ('997', '230524', '饶河县', '100', 'R', '2');
INSERT INTO `region` VALUES ('998', '230602', '萨尔图区', '101', 'S', '2');
INSERT INTO `region` VALUES ('999', '230603', '龙凤区', '101', 'L', '2');
INSERT INTO `region` VALUES ('1000', '230604', '让胡路区', '101', 'R', '2');
INSERT INTO `region` VALUES ('1001', '230605', '红岗区', '101', 'H', '2');
INSERT INTO `region` VALUES ('1002', '230606', '大同区', '101', 'D', '2');
INSERT INTO `region` VALUES ('1003', '230621', '肇州县', '101', 'Z', '2');
INSERT INTO `region` VALUES ('1004', '230622', '肇源县', '101', 'Z', '2');
INSERT INTO `region` VALUES ('1005', '230623', '林甸县', '101', 'L', '2');
INSERT INTO `region` VALUES ('1006', '230624', '杜尔伯特蒙古族自治县', '101', 'D', '2');
INSERT INTO `region` VALUES ('1007', '230702', '伊春区', '102', 'Y', '2');
INSERT INTO `region` VALUES ('1008', '230703', '南岔区', '102', 'N', '2');
INSERT INTO `region` VALUES ('1009', '230704', '友好区', '102', 'Y', '2');
INSERT INTO `region` VALUES ('1010', '230705', '西林区', '102', 'X', '2');
INSERT INTO `region` VALUES ('1011', '230706', '翠峦区', '102', 'C', '2');
INSERT INTO `region` VALUES ('1012', '230707', '新青区', '102', 'X', '2');
INSERT INTO `region` VALUES ('1013', '230708', '美溪区', '102', 'M', '2');
INSERT INTO `region` VALUES ('1014', '230709', '金山屯区', '102', 'J', '2');
INSERT INTO `region` VALUES ('1015', '230710', '五营区', '102', 'W', '2');
INSERT INTO `region` VALUES ('1016', '230711', '乌马河区', '102', 'W', '2');
INSERT INTO `region` VALUES ('1017', '230712', '汤旺河区', '102', 'T', '2');
INSERT INTO `region` VALUES ('1018', '230713', '带岭区', '102', 'D', '2');
INSERT INTO `region` VALUES ('1019', '230714', '乌伊岭区', '102', 'W', '2');
INSERT INTO `region` VALUES ('1020', '230715', '红星区', '102', 'H', '2');
INSERT INTO `region` VALUES ('1021', '230716', '上甘岭区', '102', 'S', '2');
INSERT INTO `region` VALUES ('1022', '230722', '嘉荫县', '102', 'J', '2');
INSERT INTO `region` VALUES ('1023', '230781', '铁力市', '102', 'T', '2');
INSERT INTO `region` VALUES ('1024', '230804', '前进区', '103', 'Q', '2');
INSERT INTO `region` VALUES ('1025', '230805', '东风区', '103', 'D', '2');
INSERT INTO `region` VALUES ('1026', '230822', '桦南县', '103', 'H', '2');
INSERT INTO `region` VALUES ('1027', '230826', '桦川县', '103', 'H', '2');
INSERT INTO `region` VALUES ('1028', '230828', '汤原县', '103', 'T', '2');
INSERT INTO `region` VALUES ('1029', '230833', '抚远县', '103', 'F', '2');
INSERT INTO `region` VALUES ('1030', '230881', '同江市', '103', 'T', '2');
INSERT INTO `region` VALUES ('1031', '230882', '富锦市', '103', 'F', '2');
INSERT INTO `region` VALUES ('1032', '230902', '新兴区', '104', 'X', '2');
INSERT INTO `region` VALUES ('1033', '230903', '桃山区', '104', 'T', '2');
INSERT INTO `region` VALUES ('1034', '230904', '茄子河区', '104', 'Q', '2');
INSERT INTO `region` VALUES ('1035', '230921', '勃利县', '104', 'B', '2');
INSERT INTO `region` VALUES ('1036', '231002', '东安区', '105', 'D', '2');
INSERT INTO `region` VALUES ('1037', '231003', '阳明区', '105', 'Y', '2');
INSERT INTO `region` VALUES ('1038', '231004', '爱民区', '105', 'A', '2');
INSERT INTO `region` VALUES ('1039', '231024', '东宁县', '105', 'D', '2');
INSERT INTO `region` VALUES ('1040', '231025', '林口县', '105', 'L', '2');
INSERT INTO `region` VALUES ('1041', '231081', '绥芬河市', '105', 'S', '2');
INSERT INTO `region` VALUES ('1042', '231083', '海林市', '105', 'H', '2');
INSERT INTO `region` VALUES ('1043', '231084', '宁安市', '105', 'N', '2');
INSERT INTO `region` VALUES ('1044', '231085', '穆棱市', '105', 'M', '2');
INSERT INTO `region` VALUES ('1045', '231102', '爱辉区', '106', 'A', '2');
INSERT INTO `region` VALUES ('1046', '231121', '嫩江县', '106', 'N', '2');
INSERT INTO `region` VALUES ('1047', '231123', '逊克县', '106', 'X', '2');
INSERT INTO `region` VALUES ('1048', '231124', '孙吴县', '106', 'S', '2');
INSERT INTO `region` VALUES ('1049', '231181', '北安市', '106', 'B', '2');
INSERT INTO `region` VALUES ('1050', '231182', '五大连池市', '106', 'W', '2');
INSERT INTO `region` VALUES ('1051', '231202', '北林区', '107', 'B', '2');
INSERT INTO `region` VALUES ('1052', '231221', '望奎县', '107', 'W', '2');
INSERT INTO `region` VALUES ('1053', '231222', '兰西县', '107', 'L', '2');
INSERT INTO `region` VALUES ('1054', '231223', '青冈县', '107', 'Q', '2');
INSERT INTO `region` VALUES ('1055', '231224', '庆安县', '107', 'Q', '2');
INSERT INTO `region` VALUES ('1056', '231225', '明水县', '107', 'M', '2');
INSERT INTO `region` VALUES ('1057', '231226', '绥棱县', '107', 'S', '2');
INSERT INTO `region` VALUES ('1058', '231281', '安达市', '107', 'A', '2');
INSERT INTO `region` VALUES ('1059', '231282', '肇东市', '107', 'Z', '2');
INSERT INTO `region` VALUES ('1060', '231283', '海伦市', '107', 'H', '2');
INSERT INTO `region` VALUES ('1061', '232721', '呼玛县', '108', 'H', '2');
INSERT INTO `region` VALUES ('1062', '232722', '塔河县', '108', 'T', '2');
INSERT INTO `region` VALUES ('1063', '232723', '漠河县', '108', 'M', '2');
INSERT INTO `region` VALUES ('1064', '310101', '黄浦区', '109', 'H', '2');
INSERT INTO `region` VALUES ('1065', '310104', '徐汇区', '109', 'X', '2');
INSERT INTO `region` VALUES ('1066', '310105', '长宁区', '109', 'C', '2');
INSERT INTO `region` VALUES ('1067', '310106', '静安区', '109', 'J', '2');
INSERT INTO `region` VALUES ('1068', '310107', '普陀区', '109', 'P', '2');
INSERT INTO `region` VALUES ('1069', '310108', '闸北区', '109', 'Z', '2');
INSERT INTO `region` VALUES ('1070', '310109', '虹口区', '109', 'H', '2');
INSERT INTO `region` VALUES ('1071', '310110', '杨浦区', '109', 'Y', '2');
INSERT INTO `region` VALUES ('1072', '310112', '闵行区', '109', 'M', '2');
INSERT INTO `region` VALUES ('1073', '310114', '嘉定区', '109', 'J', '2');
INSERT INTO `region` VALUES ('1074', '310115', '浦东新区', '109', 'P', '2');
INSERT INTO `region` VALUES ('1075', '310116', '金山区', '109', 'J', '2');
INSERT INTO `region` VALUES ('1076', '310117', '松江区', '109', 'S', '2');
INSERT INTO `region` VALUES ('1077', '310118', '青浦区', '109', 'Q', '2');
INSERT INTO `region` VALUES ('1078', '310120', '奉贤区', '109', 'F', '2');
INSERT INTO `region` VALUES ('1079', '310230', '崇明县', '110', 'C', '2');
INSERT INTO `region` VALUES ('1080', '320102', '玄武区', '111', 'X', '2');
INSERT INTO `region` VALUES ('1081', '320104', '秦淮区', '111', 'Q', '2');
INSERT INTO `region` VALUES ('1082', '320105', '建邺区', '111', 'J', '2');
INSERT INTO `region` VALUES ('1083', '320106', '鼓楼区', '111', 'G', '2');
INSERT INTO `region` VALUES ('1084', '320111', '浦口区', '111', 'P', '2');
INSERT INTO `region` VALUES ('1085', '320113', '栖霞区', '111', 'Q', '2');
INSERT INTO `region` VALUES ('1086', '320114', '雨花台区', '111', 'Y', '2');
INSERT INTO `region` VALUES ('1087', '320115', '江宁区', '111', 'J', '2');
INSERT INTO `region` VALUES ('1088', '320116', '六合区', '111', 'L', '2');
INSERT INTO `region` VALUES ('1089', '320117', '溧水区', '111', 'L', '2');
INSERT INTO `region` VALUES ('1090', '320118', '高淳区', '111', 'G', '2');
INSERT INTO `region` VALUES ('1091', '320202', '崇安区', '112', 'C', '2');
INSERT INTO `region` VALUES ('1092', '320203', '南长区', '112', 'N', '2');
INSERT INTO `region` VALUES ('1093', '320204', '北塘区', '112', 'B', '2');
INSERT INTO `region` VALUES ('1094', '320205', '锡山区', '112', 'X', '2');
INSERT INTO `region` VALUES ('1095', '320206', '惠山区', '112', 'H', '2');
INSERT INTO `region` VALUES ('1096', '320211', '滨湖区', '112', 'B', '2');
INSERT INTO `region` VALUES ('1097', '320281', '江阴市', '112', 'J', '2');
INSERT INTO `region` VALUES ('1098', '320282', '宜兴市', '112', 'Y', '2');
INSERT INTO `region` VALUES ('1099', '320303', '云龙区', '113', 'Y', '2');
INSERT INTO `region` VALUES ('1100', '320305', '贾汪区', '113', 'J', '2');
INSERT INTO `region` VALUES ('1101', '320311', '泉山区', '113', 'Q', '2');
INSERT INTO `region` VALUES ('1102', '320312', '铜山区', '113', 'T', '2');
INSERT INTO `region` VALUES ('1103', '320321', '丰县', '113', 'F', '2');
INSERT INTO `region` VALUES ('1104', '320322', '沛县', '113', 'P', '2');
INSERT INTO `region` VALUES ('1105', '320324', '睢宁县', '113', 'S', '2');
INSERT INTO `region` VALUES ('1106', '320381', '新沂市', '113', 'X', '2');
INSERT INTO `region` VALUES ('1107', '320382', '邳州市', '113', 'P', '2');
INSERT INTO `region` VALUES ('1108', '320402', '天宁区', '114', 'T', '2');
INSERT INTO `region` VALUES ('1109', '320404', '钟楼区', '114', 'Z', '2');
INSERT INTO `region` VALUES ('1110', '320405', '戚墅堰区', '114', 'Q', '2');
INSERT INTO `region` VALUES ('1111', '320411', '新北区', '114', 'X', '2');
INSERT INTO `region` VALUES ('1112', '320412', '武进区', '114', 'W', '2');
INSERT INTO `region` VALUES ('1113', '320481', '溧阳市', '114', 'L', '2');
INSERT INTO `region` VALUES ('1114', '320482', '金坛市', '114', 'J', '2');
INSERT INTO `region` VALUES ('1115', '320505', '虎丘区', '115', 'H', '2');
INSERT INTO `region` VALUES ('1116', '320506', '吴中区', '115', 'W', '2');
INSERT INTO `region` VALUES ('1117', '320507', '相城区', '115', 'X', '2');
INSERT INTO `region` VALUES ('1118', '320508', '姑苏区', '115', 'G', '2');
INSERT INTO `region` VALUES ('1119', '320509', '吴江区', '115', 'W', '2');
INSERT INTO `region` VALUES ('1120', '320581', '常熟市', '115', 'C', '2');
INSERT INTO `region` VALUES ('1121', '320582', '张家港市', '115', 'Z', '2');
INSERT INTO `region` VALUES ('1122', '320583', '昆山市', '115', 'K', '2');
INSERT INTO `region` VALUES ('1123', '320585', '太仓市', '115', 'T', '2');
INSERT INTO `region` VALUES ('1124', '320602', '崇川区', '116', 'C', '2');
INSERT INTO `region` VALUES ('1125', '320611', '港闸区', '116', 'G', '2');
INSERT INTO `region` VALUES ('1126', '320612', '通州区', '116', 'T', '2');
INSERT INTO `region` VALUES ('1127', '320621', '海安县', '116', 'H', '2');
INSERT INTO `region` VALUES ('1128', '320623', '如东县', '116', 'R', '2');
INSERT INTO `region` VALUES ('1129', '320681', '启东市', '116', 'Q', '2');
INSERT INTO `region` VALUES ('1130', '320682', '如皋市', '116', 'R', '2');
INSERT INTO `region` VALUES ('1131', '320684', '海门市', '116', 'H', '2');
INSERT INTO `region` VALUES ('1132', '320703', '连云区', '117', 'L', '2');
INSERT INTO `region` VALUES ('1133', '320707', '赣榆区', '117', 'G', '2');
INSERT INTO `region` VALUES ('1134', '320722', '东海县', '117', 'D', '2');
INSERT INTO `region` VALUES ('1135', '320723', '灌云县', '117', 'G', '2');
INSERT INTO `region` VALUES ('1136', '320724', '灌南县', '117', 'G', '2');
INSERT INTO `region` VALUES ('1137', '320803', '淮安区', '118', 'H', '2');
INSERT INTO `region` VALUES ('1138', '320804', '淮阴区', '118', 'H', '2');
INSERT INTO `region` VALUES ('1139', '320811', '清浦区', '118', 'Q', '2');
INSERT INTO `region` VALUES ('1140', '320826', '涟水县', '118', 'L', '2');
INSERT INTO `region` VALUES ('1141', '320829', '洪泽县', '118', 'H', '2');
INSERT INTO `region` VALUES ('1142', '320830', '盱眙县', '118', 'X', '2');
INSERT INTO `region` VALUES ('1143', '320831', '金湖县', '118', 'J', '2');
INSERT INTO `region` VALUES ('1144', '320902', '亭湖区', '119', 'T', '2');
INSERT INTO `region` VALUES ('1145', '320903', '盐都区', '119', 'Y', '2');
INSERT INTO `region` VALUES ('1146', '320921', '响水县', '119', 'X', '2');
INSERT INTO `region` VALUES ('1147', '320922', '滨海县', '119', 'B', '2');
INSERT INTO `region` VALUES ('1148', '320923', '阜宁县', '119', 'F', '2');
INSERT INTO `region` VALUES ('1149', '320924', '射阳县', '119', 'S', '2');
INSERT INTO `region` VALUES ('1150', '320925', '建湖县', '119', 'J', '2');
INSERT INTO `region` VALUES ('1151', '320981', '东台市', '119', 'D', '2');
INSERT INTO `region` VALUES ('1152', '320982', '大丰市', '119', 'D', '2');
INSERT INTO `region` VALUES ('1153', '321002', '广陵区', '120', 'G', '2');
INSERT INTO `region` VALUES ('1154', '321003', '邗江区', '120', 'H', '2');
INSERT INTO `region` VALUES ('1155', '321012', '江都区', '120', 'J', '2');
INSERT INTO `region` VALUES ('1156', '321023', '宝应县', '120', 'B', '2');
INSERT INTO `region` VALUES ('1157', '321081', '仪征市', '120', 'Y', '2');
INSERT INTO `region` VALUES ('1158', '321084', '高邮市', '120', 'G', '2');
INSERT INTO `region` VALUES ('1159', '321102', '京口区', '121', 'J', '2');
INSERT INTO `region` VALUES ('1160', '321111', '润州区', '121', 'R', '2');
INSERT INTO `region` VALUES ('1161', '321112', '丹徒区', '121', 'D', '2');
INSERT INTO `region` VALUES ('1162', '321181', '丹阳市', '121', 'D', '2');
INSERT INTO `region` VALUES ('1163', '321182', '扬中市', '121', 'Y', '2');
INSERT INTO `region` VALUES ('1164', '321183', '句容市', '121', 'J', '2');
INSERT INTO `region` VALUES ('1165', '321202', '海陵区', '122', 'H', '2');
INSERT INTO `region` VALUES ('1166', '321203', '高港区', '122', 'G', '2');
INSERT INTO `region` VALUES ('1167', '321204', '姜堰区', '122', 'J', '2');
INSERT INTO `region` VALUES ('1168', '321281', '兴化市', '122', 'X', '2');
INSERT INTO `region` VALUES ('1169', '321282', '靖江市', '122', 'J', '2');
INSERT INTO `region` VALUES ('1170', '321283', '泰兴市', '122', 'T', '2');
INSERT INTO `region` VALUES ('1171', '321302', '宿城区', '123', 'S', '2');
INSERT INTO `region` VALUES ('1172', '321311', '宿豫区', '123', 'S', '2');
INSERT INTO `region` VALUES ('1173', '321322', '沭阳县', '123', 'S', '2');
INSERT INTO `region` VALUES ('1174', '321323', '泗阳县', '123', 'S', '2');
INSERT INTO `region` VALUES ('1175', '321324', '泗洪县', '123', 'S', '2');
INSERT INTO `region` VALUES ('1176', '330102', '上城区', '124', 'S', '2');
INSERT INTO `region` VALUES ('1177', '330103', '下城区', '124', 'X', '2');
INSERT INTO `region` VALUES ('1178', '330104', '江干区', '124', 'J', '2');
INSERT INTO `region` VALUES ('1179', '330105', '拱墅区', '124', 'G', '2');
INSERT INTO `region` VALUES ('1180', '330106', '西湖区', '124', 'X', '2');
INSERT INTO `region` VALUES ('1181', '330108', '滨江区', '124', 'B', '2');
INSERT INTO `region` VALUES ('1182', '330109', '萧山区', '124', 'X', '2');
INSERT INTO `region` VALUES ('1183', '330110', '余杭区', '124', 'Y', '2');
INSERT INTO `region` VALUES ('1184', '330122', '桐庐县', '124', 'T', '2');
INSERT INTO `region` VALUES ('1185', '330127', '淳安县', '124', 'C', '2');
INSERT INTO `region` VALUES ('1186', '330182', '建德市', '124', 'J', '2');
INSERT INTO `region` VALUES ('1187', '330183', '富阳市', '124', 'F', '2');
INSERT INTO `region` VALUES ('1188', '330185', '临安市', '124', 'L', '2');
INSERT INTO `region` VALUES ('1189', '330203', '海曙区', '125', 'H', '2');
INSERT INTO `region` VALUES ('1190', '330204', '江东区', '125', 'J', '2');
INSERT INTO `region` VALUES ('1191', '330205', '江北区', '125', 'J', '2');
INSERT INTO `region` VALUES ('1192', '330206', '北仑区', '125', 'B', '2');
INSERT INTO `region` VALUES ('1193', '330211', '镇海区', '125', 'Z', '2');
INSERT INTO `region` VALUES ('1194', '330212', '鄞州区', '125', 'Y', '2');
INSERT INTO `region` VALUES ('1195', '330225', '象山县', '125', 'X', '2');
INSERT INTO `region` VALUES ('1196', '330226', '宁海县', '125', 'N', '2');
INSERT INTO `region` VALUES ('1197', '330281', '余姚市', '125', 'Y', '2');
INSERT INTO `region` VALUES ('1198', '330282', '慈溪市', '125', 'C', '2');
INSERT INTO `region` VALUES ('1199', '330283', '奉化市', '125', 'F', '2');
INSERT INTO `region` VALUES ('1200', '330302', '鹿城区', '126', 'L', '2');
INSERT INTO `region` VALUES ('1201', '330303', '龙湾区', '126', 'L', '2');
INSERT INTO `region` VALUES ('1202', '330304', '瓯海区', '126', 'O', '2');
INSERT INTO `region` VALUES ('1203', '330322', '洞头县', '126', 'D', '2');
INSERT INTO `region` VALUES ('1204', '330324', '永嘉县', '126', 'Y', '2');
INSERT INTO `region` VALUES ('1205', '330326', '平阳县', '126', 'P', '2');
INSERT INTO `region` VALUES ('1206', '330327', '苍南县', '126', 'C', '2');
INSERT INTO `region` VALUES ('1207', '330328', '文成县', '126', 'W', '2');
INSERT INTO `region` VALUES ('1208', '330329', '泰顺县', '126', 'T', '2');
INSERT INTO `region` VALUES ('1209', '330381', '瑞安市', '126', 'R', '2');
INSERT INTO `region` VALUES ('1210', '330382', '乐清市', '126', 'L', '2');
INSERT INTO `region` VALUES ('1211', '330402', '南湖区', '127', 'N', '2');
INSERT INTO `region` VALUES ('1212', '330411', '秀洲区', '127', 'X', '2');
INSERT INTO `region` VALUES ('1213', '330421', '嘉善县', '127', 'J', '2');
INSERT INTO `region` VALUES ('1214', '330424', '海盐县', '127', 'H', '2');
INSERT INTO `region` VALUES ('1215', '330481', '海宁市', '127', 'H', '2');
INSERT INTO `region` VALUES ('1216', '330482', '平湖市', '127', 'P', '2');
INSERT INTO `region` VALUES ('1217', '330483', '桐乡市', '127', 'T', '2');
INSERT INTO `region` VALUES ('1218', '330502', '吴兴区', '128', 'W', '2');
INSERT INTO `region` VALUES ('1219', '330503', '南浔区', '128', 'N', '2');
INSERT INTO `region` VALUES ('1220', '330521', '德清县', '128', 'D', '2');
INSERT INTO `region` VALUES ('1221', '330522', '长兴县', '128', 'C', '2');
INSERT INTO `region` VALUES ('1222', '330523', '安吉县', '128', 'A', '2');
INSERT INTO `region` VALUES ('1223', '330602', '越城区', '129', 'Y', '2');
INSERT INTO `region` VALUES ('1224', '330603', '柯桥区', '129', 'K', '2');
INSERT INTO `region` VALUES ('1225', '330604', '上虞区', '129', 'S', '2');
INSERT INTO `region` VALUES ('1226', '330624', '新昌县', '129', 'X', '2');
INSERT INTO `region` VALUES ('1227', '330681', '诸暨市', '129', 'Z', '2');
INSERT INTO `region` VALUES ('1228', '330683', '嵊州市', '129', 'S', '2');
INSERT INTO `region` VALUES ('1229', '330702', '婺城区', '130', 'W', '2');
INSERT INTO `region` VALUES ('1230', '330703', '金东区', '130', 'J', '2');
INSERT INTO `region` VALUES ('1231', '330723', '武义县', '130', 'W', '2');
INSERT INTO `region` VALUES ('1232', '330726', '浦江县', '130', 'P', '2');
INSERT INTO `region` VALUES ('1233', '330727', '磐安县', '130', 'P', '2');
INSERT INTO `region` VALUES ('1234', '330781', '兰溪市', '130', 'L', '2');
INSERT INTO `region` VALUES ('1235', '330782', '义乌市', '130', 'Y', '2');
INSERT INTO `region` VALUES ('1236', '330783', '东阳市', '130', 'D', '2');
INSERT INTO `region` VALUES ('1237', '330784', '永康市', '130', 'Y', '2');
INSERT INTO `region` VALUES ('1238', '330802', '柯城区', '131', 'K', '2');
INSERT INTO `region` VALUES ('1239', '330803', '衢江区', '131', 'Q', '2');
INSERT INTO `region` VALUES ('1240', '330822', '常山县', '131', 'C', '2');
INSERT INTO `region` VALUES ('1241', '330824', '开化县', '131', 'K', '2');
INSERT INTO `region` VALUES ('1242', '330825', '龙游县', '131', 'L', '2');
INSERT INTO `region` VALUES ('1243', '330881', '江山市', '131', 'J', '2');
INSERT INTO `region` VALUES ('1244', '330902', '定海区', '132', 'D', '2');
INSERT INTO `region` VALUES ('1245', '330921', '岱山县', '132', 'D', '2');
INSERT INTO `region` VALUES ('1246', '330922', '嵊泗县', '132', 'S', '2');
INSERT INTO `region` VALUES ('1247', '331002', '椒江区', '133', 'J', '2');
INSERT INTO `region` VALUES ('1248', '331003', '黄岩区', '133', 'H', '2');
INSERT INTO `region` VALUES ('1249', '331004', '路桥区', '133', 'L', '2');
INSERT INTO `region` VALUES ('1250', '331021', '玉环县', '133', 'Y', '2');
INSERT INTO `region` VALUES ('1251', '331022', '三门县', '133', 'S', '2');
INSERT INTO `region` VALUES ('1252', '331023', '天台县', '133', 'T', '2');
INSERT INTO `region` VALUES ('1253', '331024', '仙居县', '133', 'X', '2');
INSERT INTO `region` VALUES ('1254', '331081', '温岭市', '133', 'W', '2');
INSERT INTO `region` VALUES ('1255', '331082', '临海市', '133', 'L', '2');
INSERT INTO `region` VALUES ('1256', '331102', '莲都区', '134', 'L', '2');
INSERT INTO `region` VALUES ('1257', '331121', '青田县', '134', 'Q', '2');
INSERT INTO `region` VALUES ('1258', '331122', '缙云县', '134', 'J', '2');
INSERT INTO `region` VALUES ('1259', '331123', '遂昌县', '134', 'S', '2');
INSERT INTO `region` VALUES ('1260', '331124', '松阳县', '134', 'S', '2');
INSERT INTO `region` VALUES ('1261', '331125', '云和县', '134', 'Y', '2');
INSERT INTO `region` VALUES ('1262', '331126', '庆元县', '134', 'Q', '2');
INSERT INTO `region` VALUES ('1263', '331127', '景宁畲族自治县', '134', 'J', '2');
INSERT INTO `region` VALUES ('1264', '331181', '龙泉市', '134', 'L', '2');
INSERT INTO `region` VALUES ('1265', '340102', '瑶海区', '135', 'Y', '2');
INSERT INTO `region` VALUES ('1266', '340103', '庐阳区', '135', 'L', '2');
INSERT INTO `region` VALUES ('1267', '340104', '蜀山区', '135', 'S', '2');
INSERT INTO `region` VALUES ('1268', '340111', '包河区', '135', 'B', '2');
INSERT INTO `region` VALUES ('1269', '340121', '长丰县', '135', 'C', '2');
INSERT INTO `region` VALUES ('1270', '340122', '肥东县', '135', 'F', '2');
INSERT INTO `region` VALUES ('1271', '340123', '肥西县', '135', 'F', '2');
INSERT INTO `region` VALUES ('1272', '340124', '庐江县', '135', 'L', '2');
INSERT INTO `region` VALUES ('1273', '340181', '巢湖市', '135', 'C', '2');
INSERT INTO `region` VALUES ('1274', '340202', '镜湖区', '136', 'J', '2');
INSERT INTO `region` VALUES ('1275', '340203', '弋江区', '136', 'Y', '2');
INSERT INTO `region` VALUES ('1276', '340207', '鸠江区', '136', 'J', '2');
INSERT INTO `region` VALUES ('1277', '340208', '三山区', '136', 'S', '2');
INSERT INTO `region` VALUES ('1278', '340221', '芜湖县', '136', 'W', '2');
INSERT INTO `region` VALUES ('1279', '340222', '繁昌县', '136', 'F', '2');
INSERT INTO `region` VALUES ('1280', '340223', '南陵县', '136', 'N', '2');
INSERT INTO `region` VALUES ('1281', '340225', '无为县', '136', 'W', '2');
INSERT INTO `region` VALUES ('1282', '340302', '龙子湖区', '137', 'L', '2');
INSERT INTO `region` VALUES ('1283', '340303', '蚌山区', '137', 'B', '2');
INSERT INTO `region` VALUES ('1284', '340304', '禹会区', '137', 'Y', '2');
INSERT INTO `region` VALUES ('1285', '340311', '淮上区', '137', 'H', '2');
INSERT INTO `region` VALUES ('1286', '340321', '怀远县', '137', 'H', '2');
INSERT INTO `region` VALUES ('1287', '340322', '五河县', '137', 'W', '2');
INSERT INTO `region` VALUES ('1288', '340323', '固镇县', '137', 'G', '2');
INSERT INTO `region` VALUES ('1289', '340402', '大通区', '138', 'D', '2');
INSERT INTO `region` VALUES ('1290', '340403', '田家庵区', '138', 'T', '2');
INSERT INTO `region` VALUES ('1291', '340404', '谢家集区', '138', 'X', '2');
INSERT INTO `region` VALUES ('1292', '340405', '八公山区', '138', 'B', '2');
INSERT INTO `region` VALUES ('1293', '340406', '潘集区', '138', 'P', '2');
INSERT INTO `region` VALUES ('1294', '340421', '凤台县', '138', 'F', '2');
INSERT INTO `region` VALUES ('1295', '340503', '花山区', '139', 'H', '2');
INSERT INTO `region` VALUES ('1296', '340504', '雨山区', '139', 'Y', '2');
INSERT INTO `region` VALUES ('1297', '340506', '博望区', '139', 'B', '2');
INSERT INTO `region` VALUES ('1298', '340521', '当涂县', '139', 'D', '2');
INSERT INTO `region` VALUES ('1299', '340522', '含山县', '139', 'H', '2');
INSERT INTO `region` VALUES ('1300', '340523', '和县', '139', 'H', '2');
INSERT INTO `region` VALUES ('1301', '340602', '杜集区', '140', 'D', '2');
INSERT INTO `region` VALUES ('1302', '340603', '相山区', '140', 'X', '2');
INSERT INTO `region` VALUES ('1303', '340604', '烈山区', '140', 'L', '2');
INSERT INTO `region` VALUES ('1304', '340621', '濉溪县', '140', 'S', '2');
INSERT INTO `region` VALUES ('1305', '340702', '铜官山区', '141', 'T', '2');
INSERT INTO `region` VALUES ('1306', '340703', '狮子山区', '141', 'S', '2');
INSERT INTO `region` VALUES ('1307', '340721', '铜陵县', '141', 'T', '2');
INSERT INTO `region` VALUES ('1308', '340802', '迎江区', '142', 'Y', '2');
INSERT INTO `region` VALUES ('1309', '340803', '大观区', '142', 'D', '2');
INSERT INTO `region` VALUES ('1310', '340811', '宜秀区', '142', 'Y', '2');
INSERT INTO `region` VALUES ('1311', '340822', '怀宁县', '142', 'H', '2');
INSERT INTO `region` VALUES ('1312', '340823', '枞阳县', '142', 'C', '2');
INSERT INTO `region` VALUES ('1313', '340824', '潜山县', '142', 'Q', '2');
INSERT INTO `region` VALUES ('1314', '340825', '太湖县', '142', 'T', '2');
INSERT INTO `region` VALUES ('1315', '340826', '宿松县', '142', 'S', '2');
INSERT INTO `region` VALUES ('1316', '340827', '望江县', '142', 'W', '2');
INSERT INTO `region` VALUES ('1317', '340828', '岳西县', '142', 'Y', '2');
INSERT INTO `region` VALUES ('1318', '340881', '桐城市', '142', 'T', '2');
INSERT INTO `region` VALUES ('1319', '341002', '屯溪区', '143', 'T', '2');
INSERT INTO `region` VALUES ('1320', '341003', '黄山区', '143', 'H', '2');
INSERT INTO `region` VALUES ('1321', '341004', '徽州区', '143', 'H', '2');
INSERT INTO `region` VALUES ('1322', '341021', '歙县', '143', 'X', '2');
INSERT INTO `region` VALUES ('1323', '341022', '休宁县', '143', 'X', '2');
INSERT INTO `region` VALUES ('1324', '341023', '黟县', '143', 'Y', '2');
INSERT INTO `region` VALUES ('1325', '341024', '祁门县', '143', 'Q', '2');
INSERT INTO `region` VALUES ('1326', '341102', '琅琊区', '144', 'L', '2');
INSERT INTO `region` VALUES ('1327', '341103', '南谯区', '144', 'N', '2');
INSERT INTO `region` VALUES ('1328', '341122', '来安县', '144', 'L', '2');
INSERT INTO `region` VALUES ('1329', '341124', '全椒县', '144', 'Q', '2');
INSERT INTO `region` VALUES ('1330', '341125', '定远县', '144', 'D', '2');
INSERT INTO `region` VALUES ('1331', '341126', '凤阳县', '144', 'F', '2');
INSERT INTO `region` VALUES ('1332', '341181', '天长市', '144', 'T', '2');
INSERT INTO `region` VALUES ('1333', '341182', '明光市', '144', 'M', '2');
INSERT INTO `region` VALUES ('1334', '341202', '颍州区', '145', 'Y', '2');
INSERT INTO `region` VALUES ('1335', '341203', '颍东区', '145', 'Y', '2');
INSERT INTO `region` VALUES ('1336', '341204', '颍泉区', '145', 'Y', '2');
INSERT INTO `region` VALUES ('1337', '341221', '临泉县', '145', 'L', '2');
INSERT INTO `region` VALUES ('1338', '341222', '太和县', '145', 'T', '2');
INSERT INTO `region` VALUES ('1339', '341225', '阜南县', '145', 'F', '2');
INSERT INTO `region` VALUES ('1340', '341226', '颍上县', '145', 'Y', '2');
INSERT INTO `region` VALUES ('1341', '341282', '界首市', '145', 'J', '2');
INSERT INTO `region` VALUES ('1342', '341302', '埇桥区', '146', 'Y', '2');
INSERT INTO `region` VALUES ('1343', '341321', '砀山县', '146', 'D', '2');
INSERT INTO `region` VALUES ('1344', '341322', '萧县', '146', 'X', '2');
INSERT INTO `region` VALUES ('1345', '341323', '灵璧县', '146', 'L', '2');
INSERT INTO `region` VALUES ('1346', '341324', '泗县', '146', 'S', '2');
INSERT INTO `region` VALUES ('1347', '341502', '金安区', '147', 'J', '2');
INSERT INTO `region` VALUES ('1348', '341503', '裕安区', '147', 'Y', '2');
INSERT INTO `region` VALUES ('1349', '341521', '寿县', '147', 'S', '2');
INSERT INTO `region` VALUES ('1350', '341522', '霍邱县', '147', 'H', '2');
INSERT INTO `region` VALUES ('1351', '341523', '舒城县', '147', 'S', '2');
INSERT INTO `region` VALUES ('1352', '341524', '金寨县', '147', 'J', '2');
INSERT INTO `region` VALUES ('1353', '341525', '霍山县', '147', 'H', '2');
INSERT INTO `region` VALUES ('1354', '341602', '谯城区', '148', 'Q', '2');
INSERT INTO `region` VALUES ('1355', '341621', '涡阳县', '148', 'W', '2');
INSERT INTO `region` VALUES ('1356', '341622', '蒙城县', '148', 'M', '2');
INSERT INTO `region` VALUES ('1357', '341623', '利辛县', '148', 'L', '2');
INSERT INTO `region` VALUES ('1358', '341702', '贵池区', '149', 'G', '2');
INSERT INTO `region` VALUES ('1359', '341721', '东至县', '149', 'D', '2');
INSERT INTO `region` VALUES ('1360', '341722', '石台县', '149', 'S', '2');
INSERT INTO `region` VALUES ('1361', '341723', '青阳县', '149', 'Q', '2');
INSERT INTO `region` VALUES ('1362', '341802', '宣州区', '150', 'X', '2');
INSERT INTO `region` VALUES ('1363', '341821', '郎溪县', '150', 'L', '2');
INSERT INTO `region` VALUES ('1364', '341822', '广德县', '150', 'G', '2');
INSERT INTO `region` VALUES ('1365', '341823', '泾县', '150', 'J', '2');
INSERT INTO `region` VALUES ('1366', '341824', '绩溪县', '150', 'J', '2');
INSERT INTO `region` VALUES ('1367', '341825', '旌德县', '150', 'J', '2');
INSERT INTO `region` VALUES ('1368', '341881', '宁国市', '150', 'N', '2');
INSERT INTO `region` VALUES ('1369', '350103', '台江区', '151', 'T', '2');
INSERT INTO `region` VALUES ('1370', '350104', '仓山区', '151', 'C', '2');
INSERT INTO `region` VALUES ('1371', '350105', '马尾区', '151', 'M', '2');
INSERT INTO `region` VALUES ('1372', '350111', '晋安区', '151', 'J', '2');
INSERT INTO `region` VALUES ('1373', '350121', '闽侯县', '151', 'M', '2');
INSERT INTO `region` VALUES ('1374', '350122', '连江县', '151', 'L', '2');
INSERT INTO `region` VALUES ('1375', '350123', '罗源县', '151', 'L', '2');
INSERT INTO `region` VALUES ('1376', '350124', '闽清县', '151', 'M', '2');
INSERT INTO `region` VALUES ('1377', '350125', '永泰县', '151', 'Y', '2');
INSERT INTO `region` VALUES ('1378', '350128', '平潭县', '151', 'P', '2');
INSERT INTO `region` VALUES ('1379', '350181', '福清市', '151', 'F', '2');
INSERT INTO `region` VALUES ('1380', '350182', '长乐市', '151', 'C', '2');
INSERT INTO `region` VALUES ('1381', '350203', '思明区', '152', 'S', '2');
INSERT INTO `region` VALUES ('1382', '350205', '海沧区', '152', 'H', '2');
INSERT INTO `region` VALUES ('1383', '350206', '湖里区', '152', 'H', '2');
INSERT INTO `region` VALUES ('1384', '350211', '集美区', '152', 'J', '2');
INSERT INTO `region` VALUES ('1385', '350212', '同安区', '152', 'T', '2');
INSERT INTO `region` VALUES ('1386', '350213', '翔安区', '152', 'X', '2');
INSERT INTO `region` VALUES ('1387', '350302', '城厢区', '153', 'C', '2');
INSERT INTO `region` VALUES ('1388', '350303', '涵江区', '153', 'H', '2');
INSERT INTO `region` VALUES ('1389', '350304', '荔城区', '153', 'L', '2');
INSERT INTO `region` VALUES ('1390', '350305', '秀屿区', '153', 'X', '2');
INSERT INTO `region` VALUES ('1391', '350322', '仙游县', '153', 'X', '2');
INSERT INTO `region` VALUES ('1392', '350402', '梅列区', '154', 'M', '2');
INSERT INTO `region` VALUES ('1393', '350403', '三元区', '154', 'S', '2');
INSERT INTO `region` VALUES ('1394', '350421', '明溪县', '154', 'M', '2');
INSERT INTO `region` VALUES ('1395', '350423', '清流县', '154', 'Q', '2');
INSERT INTO `region` VALUES ('1396', '350424', '宁化县', '154', 'N', '2');
INSERT INTO `region` VALUES ('1397', '350425', '大田县', '154', 'D', '2');
INSERT INTO `region` VALUES ('1398', '350426', '尤溪县', '154', 'Y', '2');
INSERT INTO `region` VALUES ('1399', '350427', '沙县', '154', 'S', '2');
INSERT INTO `region` VALUES ('1400', '350428', '将乐县', '154', 'J', '2');
INSERT INTO `region` VALUES ('1401', '350429', '泰宁县', '154', 'T', '2');
INSERT INTO `region` VALUES ('1402', '350430', '建宁县', '154', 'J', '2');
INSERT INTO `region` VALUES ('1403', '350481', '永安市', '154', 'Y', '2');
INSERT INTO `region` VALUES ('1404', '350502', '鲤城区', '155', 'L', '2');
INSERT INTO `region` VALUES ('1405', '350503', '丰泽区', '155', 'F', '2');
INSERT INTO `region` VALUES ('1406', '350504', '洛江区', '155', 'L', '2');
INSERT INTO `region` VALUES ('1407', '350505', '泉港区', '155', 'Q', '2');
INSERT INTO `region` VALUES ('1408', '350521', '惠安县', '155', 'H', '2');
INSERT INTO `region` VALUES ('1409', '350524', '安溪县', '155', 'A', '2');
INSERT INTO `region` VALUES ('1410', '350525', '永春县', '155', 'Y', '2');
INSERT INTO `region` VALUES ('1411', '350526', '德化县', '155', 'D', '2');
INSERT INTO `region` VALUES ('1412', '350527', '金门县', '155', 'J', '2');
INSERT INTO `region` VALUES ('1413', '350581', '石狮市', '155', 'S', '2');
INSERT INTO `region` VALUES ('1414', '350582', '晋江市', '155', 'J', '2');
INSERT INTO `region` VALUES ('1415', '350583', '南安市', '155', 'N', '2');
INSERT INTO `region` VALUES ('1416', '350602', '芗城区', '156', 'X', '2');
INSERT INTO `region` VALUES ('1417', '350603', '龙文区', '156', 'L', '2');
INSERT INTO `region` VALUES ('1418', '350622', '云霄县', '156', 'Y', '2');
INSERT INTO `region` VALUES ('1419', '350623', '漳浦县', '156', 'Z', '2');
INSERT INTO `region` VALUES ('1420', '350624', '诏安县', '156', 'Z', '2');
INSERT INTO `region` VALUES ('1421', '350625', '长泰县', '156', 'C', '2');
INSERT INTO `region` VALUES ('1422', '350626', '东山县', '156', 'D', '2');
INSERT INTO `region` VALUES ('1423', '350627', '南靖县', '156', 'N', '2');
INSERT INTO `region` VALUES ('1424', '350628', '平和县', '156', 'P', '2');
INSERT INTO `region` VALUES ('1425', '350629', '华安县', '156', 'H', '2');
INSERT INTO `region` VALUES ('1426', '350681', '龙海市', '156', 'L', '2');
INSERT INTO `region` VALUES ('1427', '350702', '延平区', '157', 'Y', '2');
INSERT INTO `region` VALUES ('1428', '350721', '顺昌县', '157', 'S', '2');
INSERT INTO `region` VALUES ('1429', '350722', '浦城县', '157', 'P', '2');
INSERT INTO `region` VALUES ('1430', '350723', '光泽县', '157', 'G', '2');
INSERT INTO `region` VALUES ('1431', '350724', '松溪县', '157', 'S', '2');
INSERT INTO `region` VALUES ('1432', '350725', '政和县', '157', 'Z', '2');
INSERT INTO `region` VALUES ('1433', '350781', '邵武市', '157', 'S', '2');
INSERT INTO `region` VALUES ('1434', '350782', '武夷山市', '157', 'W', '2');
INSERT INTO `region` VALUES ('1435', '350783', '建瓯市', '157', 'J', '2');
INSERT INTO `region` VALUES ('1436', '350784', '建阳市', '157', 'J', '2');
INSERT INTO `region` VALUES ('1437', '350802', '新罗区', '158', 'X', '2');
INSERT INTO `region` VALUES ('1438', '350821', '长汀县', '158', 'C', '2');
INSERT INTO `region` VALUES ('1439', '350822', '永定县', '158', 'Y', '2');
INSERT INTO `region` VALUES ('1440', '350823', '上杭县', '158', 'S', '2');
INSERT INTO `region` VALUES ('1441', '350824', '武平县', '158', 'W', '2');
INSERT INTO `region` VALUES ('1442', '350825', '连城县', '158', 'L', '2');
INSERT INTO `region` VALUES ('1443', '350881', '漳平市', '158', 'Z', '2');
INSERT INTO `region` VALUES ('1444', '350902', '蕉城区', '159', 'J', '2');
INSERT INTO `region` VALUES ('1445', '350921', '霞浦县', '159', 'X', '2');
INSERT INTO `region` VALUES ('1446', '350922', '古田县', '159', 'G', '2');
INSERT INTO `region` VALUES ('1447', '350923', '屏南县', '159', 'P', '2');
INSERT INTO `region` VALUES ('1448', '350924', '寿宁县', '159', 'S', '2');
INSERT INTO `region` VALUES ('1449', '350925', '周宁县', '159', 'Z', '2');
INSERT INTO `region` VALUES ('1450', '350926', '柘荣县', '159', 'Z', '2');
INSERT INTO `region` VALUES ('1451', '350981', '福安市', '159', 'F', '2');
INSERT INTO `region` VALUES ('1452', '350982', '福鼎市', '159', 'F', '2');
INSERT INTO `region` VALUES ('1453', '360102', '东湖区', '160', 'D', '2');
INSERT INTO `region` VALUES ('1454', '360104', '青云谱区', '160', 'Q', '2');
INSERT INTO `region` VALUES ('1455', '360105', '湾里区', '160', 'W', '2');
INSERT INTO `region` VALUES ('1456', '360111', '青山湖区', '160', 'Q', '2');
INSERT INTO `region` VALUES ('1457', '360121', '南昌县', '160', 'N', '2');
INSERT INTO `region` VALUES ('1458', '360122', '新建县', '160', 'X', '2');
INSERT INTO `region` VALUES ('1459', '360123', '安义县', '160', 'A', '2');
INSERT INTO `region` VALUES ('1460', '360124', '进贤县', '160', 'J', '2');
INSERT INTO `region` VALUES ('1461', '360202', '昌江区', '161', 'C', '2');
INSERT INTO `region` VALUES ('1462', '360203', '珠山区', '161', 'Z', '2');
INSERT INTO `region` VALUES ('1463', '360222', '浮梁县', '161', 'F', '2');
INSERT INTO `region` VALUES ('1464', '360281', '乐平市', '161', 'L', '2');
INSERT INTO `region` VALUES ('1465', '360302', '安源区', '162', 'A', '2');
INSERT INTO `region` VALUES ('1466', '360313', '湘东区', '162', 'X', '2');
INSERT INTO `region` VALUES ('1467', '360321', '莲花县', '162', 'L', '2');
INSERT INTO `region` VALUES ('1468', '360322', '上栗县', '162', 'S', '2');
INSERT INTO `region` VALUES ('1469', '360323', '芦溪县', '162', 'L', '2');
INSERT INTO `region` VALUES ('1470', '360402', '庐山区', '163', 'L', '2');
INSERT INTO `region` VALUES ('1471', '360403', '浔阳区', '163', 'X', '2');
INSERT INTO `region` VALUES ('1472', '360421', '九江县', '163', 'J', '2');
INSERT INTO `region` VALUES ('1473', '360423', '武宁县', '163', 'W', '2');
INSERT INTO `region` VALUES ('1474', '360424', '修水县', '163', 'X', '2');
INSERT INTO `region` VALUES ('1475', '360425', '永修县', '163', 'Y', '2');
INSERT INTO `region` VALUES ('1476', '360426', '德安县', '163', 'D', '2');
INSERT INTO `region` VALUES ('1477', '360427', '星子县', '163', 'X', '2');
INSERT INTO `region` VALUES ('1478', '360428', '都昌县', '163', 'D', '2');
INSERT INTO `region` VALUES ('1479', '360429', '湖口县', '163', 'H', '2');
INSERT INTO `region` VALUES ('1480', '360430', '彭泽县', '163', 'P', '2');
INSERT INTO `region` VALUES ('1481', '360481', '瑞昌市', '163', 'R', '2');
INSERT INTO `region` VALUES ('1482', '360482', '共青城市', '163', 'G', '2');
INSERT INTO `region` VALUES ('1483', '360502', '渝水区', '164', 'Y', '2');
INSERT INTO `region` VALUES ('1484', '360521', '分宜县', '164', 'F', '2');
INSERT INTO `region` VALUES ('1485', '360602', '月湖区', '165', 'Y', '2');
INSERT INTO `region` VALUES ('1486', '360622', '余江县', '165', 'Y', '2');
INSERT INTO `region` VALUES ('1487', '360681', '贵溪市', '165', 'G', '2');
INSERT INTO `region` VALUES ('1488', '360702', '章贡区', '166', 'Z', '2');
INSERT INTO `region` VALUES ('1489', '360703', '南康区', '166', 'N', '2');
INSERT INTO `region` VALUES ('1490', '360721', '赣县', '166', 'G', '2');
INSERT INTO `region` VALUES ('1491', '360722', '信丰县', '166', 'X', '2');
INSERT INTO `region` VALUES ('1492', '360723', '大余县', '166', 'D', '2');
INSERT INTO `region` VALUES ('1493', '360724', '上犹县', '166', 'S', '2');
INSERT INTO `region` VALUES ('1494', '360725', '崇义县', '166', 'C', '2');
INSERT INTO `region` VALUES ('1495', '360726', '安远县', '166', 'A', '2');
INSERT INTO `region` VALUES ('1496', '360727', '龙南县', '166', 'L', '2');
INSERT INTO `region` VALUES ('1497', '360728', '定南县', '166', 'D', '2');
INSERT INTO `region` VALUES ('1498', '360729', '全南县', '166', 'Q', '2');
INSERT INTO `region` VALUES ('1499', '360730', '宁都县', '166', 'N', '2');
INSERT INTO `region` VALUES ('1500', '360731', '于都县', '166', 'Y', '2');
INSERT INTO `region` VALUES ('1501', '360732', '兴国县', '166', 'X', '2');
INSERT INTO `region` VALUES ('1502', '360733', '会昌县', '166', 'H', '2');
INSERT INTO `region` VALUES ('1503', '360734', '寻乌县', '166', 'X', '2');
INSERT INTO `region` VALUES ('1504', '360735', '石城县', '166', 'S', '2');
INSERT INTO `region` VALUES ('1505', '360781', '瑞金市', '166', 'R', '2');
INSERT INTO `region` VALUES ('1506', '360802', '吉州区', '167', 'J', '2');
INSERT INTO `region` VALUES ('1507', '360803', '青原区', '167', 'Q', '2');
INSERT INTO `region` VALUES ('1508', '360821', '吉安县', '167', 'J', '2');
INSERT INTO `region` VALUES ('1509', '360822', '吉水县', '167', 'J', '2');
INSERT INTO `region` VALUES ('1510', '360823', '峡江县', '167', 'X', '2');
INSERT INTO `region` VALUES ('1511', '360824', '新干县', '167', 'X', '2');
INSERT INTO `region` VALUES ('1512', '360825', '永丰县', '167', 'Y', '2');
INSERT INTO `region` VALUES ('1513', '360826', '泰和县', '167', 'T', '2');
INSERT INTO `region` VALUES ('1514', '360827', '遂川县', '167', 'S', '2');
INSERT INTO `region` VALUES ('1515', '360828', '万安县', '167', 'W', '2');
INSERT INTO `region` VALUES ('1516', '360829', '安福县', '167', 'A', '2');
INSERT INTO `region` VALUES ('1517', '360830', '永新县', '167', 'Y', '2');
INSERT INTO `region` VALUES ('1518', '360881', '井冈山市', '167', 'J', '2');
INSERT INTO `region` VALUES ('1519', '360902', '袁州区', '168', 'Y', '2');
INSERT INTO `region` VALUES ('1520', '360921', '奉新县', '168', 'F', '2');
INSERT INTO `region` VALUES ('1521', '360922', '万载县', '168', 'W', '2');
INSERT INTO `region` VALUES ('1522', '360923', '上高县', '168', 'S', '2');
INSERT INTO `region` VALUES ('1523', '360924', '宜丰县', '168', 'Y', '2');
INSERT INTO `region` VALUES ('1524', '360925', '靖安县', '168', 'J', '2');
INSERT INTO `region` VALUES ('1525', '360926', '铜鼓县', '168', 'T', '2');
INSERT INTO `region` VALUES ('1526', '360981', '丰城市', '168', 'F', '2');
INSERT INTO `region` VALUES ('1527', '360982', '樟树市', '168', 'Z', '2');
INSERT INTO `region` VALUES ('1528', '360983', '高安市', '168', 'G', '2');
INSERT INTO `region` VALUES ('1529', '361002', '临川区', '169', 'L', '2');
INSERT INTO `region` VALUES ('1530', '361021', '南城县', '169', 'N', '2');
INSERT INTO `region` VALUES ('1531', '361022', '黎川县', '169', 'L', '2');
INSERT INTO `region` VALUES ('1532', '361023', '南丰县', '169', 'N', '2');
INSERT INTO `region` VALUES ('1533', '361024', '崇仁县', '169', 'C', '2');
INSERT INTO `region` VALUES ('1534', '361025', '乐安县', '169', 'L', '2');
INSERT INTO `region` VALUES ('1535', '361026', '宜黄县', '169', 'Y', '2');
INSERT INTO `region` VALUES ('1536', '361027', '金溪县', '169', 'J', '2');
INSERT INTO `region` VALUES ('1537', '361028', '资溪县', '169', 'Z', '2');
INSERT INTO `region` VALUES ('1538', '361029', '东乡县', '169', 'D', '2');
INSERT INTO `region` VALUES ('1539', '361030', '广昌县', '169', 'G', '2');
INSERT INTO `region` VALUES ('1540', '361102', '信州区', '170', 'X', '2');
INSERT INTO `region` VALUES ('1541', '361121', '上饶县', '170', 'S', '2');
INSERT INTO `region` VALUES ('1542', '361122', '广丰县', '170', 'G', '2');
INSERT INTO `region` VALUES ('1543', '361123', '玉山县', '170', 'Y', '2');
INSERT INTO `region` VALUES ('1544', '361124', '铅山县', '170', 'Q', '2');
INSERT INTO `region` VALUES ('1545', '361125', '横峰县', '170', 'H', '2');
INSERT INTO `region` VALUES ('1546', '361126', '弋阳县', '170', 'Y', '2');
INSERT INTO `region` VALUES ('1547', '361127', '余干县', '170', 'Y', '2');
INSERT INTO `region` VALUES ('1548', '361128', '鄱阳县', '170', 'P', '2');
INSERT INTO `region` VALUES ('1549', '361129', '万年县', '170', 'W', '2');
INSERT INTO `region` VALUES ('1550', '361130', '婺源县', '170', 'W', '2');
INSERT INTO `region` VALUES ('1551', '361181', '德兴市', '170', 'D', '2');
INSERT INTO `region` VALUES ('1552', '370102', '历下区', '171', 'L', '2');
INSERT INTO `region` VALUES ('1553', '370103', '市中区', '171', 'S', '2');
INSERT INTO `region` VALUES ('1554', '370104', '槐荫区', '171', 'H', '2');
INSERT INTO `region` VALUES ('1555', '370105', '天桥区', '171', 'T', '2');
INSERT INTO `region` VALUES ('1556', '370112', '历城区', '171', 'L', '2');
INSERT INTO `region` VALUES ('1557', '370113', '长清区', '171', 'C', '2');
INSERT INTO `region` VALUES ('1558', '370124', '平阴县', '171', 'P', '2');
INSERT INTO `region` VALUES ('1559', '370125', '济阳县', '171', 'J', '2');
INSERT INTO `region` VALUES ('1560', '370126', '商河县', '171', 'S', '2');
INSERT INTO `region` VALUES ('1561', '370181', '章丘市', '171', 'Z', '2');
INSERT INTO `region` VALUES ('1562', '370202', '市南区', '172', 'S', '2');
INSERT INTO `region` VALUES ('1563', '370203', '市北区', '172', 'S', '2');
INSERT INTO `region` VALUES ('1564', '370211', '黄岛区', '172', 'H', '2');
INSERT INTO `region` VALUES ('1565', '370212', '崂山区', '172', 'L', '2');
INSERT INTO `region` VALUES ('1566', '370213', '李沧区', '172', 'L', '2');
INSERT INTO `region` VALUES ('1567', '370214', '城阳区', '172', 'C', '2');
INSERT INTO `region` VALUES ('1568', '370281', '胶州市', '172', 'J', '2');
INSERT INTO `region` VALUES ('1569', '370282', '即墨市', '172', 'J', '2');
INSERT INTO `region` VALUES ('1570', '370283', '平度市', '172', 'P', '2');
INSERT INTO `region` VALUES ('1571', '370285', '莱西市', '172', 'L', '2');
INSERT INTO `region` VALUES ('1572', '370302', '淄川区', '173', 'Z', '2');
INSERT INTO `region` VALUES ('1573', '370303', '张店区', '173', 'Z', '2');
INSERT INTO `region` VALUES ('1574', '370304', '博山区', '173', 'B', '2');
INSERT INTO `region` VALUES ('1575', '370305', '临淄区', '173', 'L', '2');
INSERT INTO `region` VALUES ('1576', '370306', '周村区', '173', 'Z', '2');
INSERT INTO `region` VALUES ('1577', '370321', '桓台县', '173', 'H', '2');
INSERT INTO `region` VALUES ('1578', '370322', '高青县', '173', 'G', '2');
INSERT INTO `region` VALUES ('1579', '370323', '沂源县', '173', 'Y', '2');
INSERT INTO `region` VALUES ('1580', '370403', '薛城区', '174', 'X', '2');
INSERT INTO `region` VALUES ('1581', '370404', '峄城区', '174', 'Y', '2');
INSERT INTO `region` VALUES ('1582', '370405', '台儿庄区', '174', 'T', '2');
INSERT INTO `region` VALUES ('1583', '370406', '山亭区', '174', 'S', '2');
INSERT INTO `region` VALUES ('1584', '370481', '滕州市', '174', 'T', '2');
INSERT INTO `region` VALUES ('1585', '370502', '东营区', '175', 'D', '2');
INSERT INTO `region` VALUES ('1586', '370503', '河口区', '175', 'H', '2');
INSERT INTO `region` VALUES ('1587', '370521', '垦利县', '175', 'K', '2');
INSERT INTO `region` VALUES ('1588', '370522', '利津县', '175', 'L', '2');
INSERT INTO `region` VALUES ('1589', '370523', '广饶县', '175', 'G', '2');
INSERT INTO `region` VALUES ('1590', '370602', '芝罘区', '176', 'Z', '2');
INSERT INTO `region` VALUES ('1591', '370611', '福山区', '176', 'F', '2');
INSERT INTO `region` VALUES ('1592', '370612', '牟平区', '176', 'M', '2');
INSERT INTO `region` VALUES ('1593', '370613', '莱山区', '176', 'L', '2');
INSERT INTO `region` VALUES ('1594', '370634', '长岛县', '176', 'C', '2');
INSERT INTO `region` VALUES ('1595', '370681', '龙口市', '176', 'L', '2');
INSERT INTO `region` VALUES ('1596', '370682', '莱阳市', '176', 'L', '2');
INSERT INTO `region` VALUES ('1597', '370683', '莱州市', '176', 'L', '2');
INSERT INTO `region` VALUES ('1598', '370684', '蓬莱市', '176', 'P', '2');
INSERT INTO `region` VALUES ('1599', '370685', '招远市', '176', 'Z', '2');
INSERT INTO `region` VALUES ('1600', '370686', '栖霞市', '176', 'Q', '2');
INSERT INTO `region` VALUES ('1601', '370687', '海阳市', '176', 'H', '2');
INSERT INTO `region` VALUES ('1602', '370702', '潍城区', '177', 'W', '2');
INSERT INTO `region` VALUES ('1603', '370703', '寒亭区', '177', 'H', '2');
INSERT INTO `region` VALUES ('1604', '370704', '坊子区', '177', 'F', '2');
INSERT INTO `region` VALUES ('1605', '370705', '奎文区', '177', 'K', '2');
INSERT INTO `region` VALUES ('1606', '370724', '临朐县', '177', 'L', '2');
INSERT INTO `region` VALUES ('1607', '370725', '昌乐县', '177', 'C', '2');
INSERT INTO `region` VALUES ('1608', '370781', '青州市', '177', 'Q', '2');
INSERT INTO `region` VALUES ('1609', '370782', '诸城市', '177', 'Z', '2');
INSERT INTO `region` VALUES ('1610', '370783', '寿光市', '177', 'S', '2');
INSERT INTO `region` VALUES ('1611', '370784', '安丘市', '177', 'A', '2');
INSERT INTO `region` VALUES ('1612', '370785', '高密市', '177', 'G', '2');
INSERT INTO `region` VALUES ('1613', '370786', '昌邑市', '177', 'C', '2');
INSERT INTO `region` VALUES ('1614', '370811', '任城区', '178', 'R', '2');
INSERT INTO `region` VALUES ('1615', '370812', '兖州区', '178', 'Y', '2');
INSERT INTO `region` VALUES ('1616', '370826', '微山县', '178', 'W', '2');
INSERT INTO `region` VALUES ('1617', '370827', '鱼台县', '178', 'Y', '2');
INSERT INTO `region` VALUES ('1618', '370828', '金乡县', '178', 'J', '2');
INSERT INTO `region` VALUES ('1619', '370829', '嘉祥县', '178', 'J', '2');
INSERT INTO `region` VALUES ('1620', '370830', '汶上县', '178', 'W', '2');
INSERT INTO `region` VALUES ('1621', '370831', '泗水县', '178', 'S', '2');
INSERT INTO `region` VALUES ('1622', '370832', '梁山县', '178', 'L', '2');
INSERT INTO `region` VALUES ('1623', '370881', '曲阜市', '178', 'Q', '2');
INSERT INTO `region` VALUES ('1624', '370883', '邹城市', '178', 'Z', '2');
INSERT INTO `region` VALUES ('1625', '370902', '泰山区', '179', 'T', '2');
INSERT INTO `region` VALUES ('1626', '370911', '岱岳区', '179', 'D', '2');
INSERT INTO `region` VALUES ('1627', '370921', '宁阳县', '179', 'N', '2');
INSERT INTO `region` VALUES ('1628', '370923', '东平县', '179', 'D', '2');
INSERT INTO `region` VALUES ('1629', '370982', '新泰市', '179', 'X', '2');
INSERT INTO `region` VALUES ('1630', '370983', '肥城市', '179', 'F', '2');
INSERT INTO `region` VALUES ('1631', '371002', '环翠区', '180', 'H', '2');
INSERT INTO `region` VALUES ('1632', '371003', '文登区', '180', 'W', '2');
INSERT INTO `region` VALUES ('1633', '371082', '荣成市', '180', 'R', '2');
INSERT INTO `region` VALUES ('1634', '371083', '乳山市', '180', 'R', '2');
INSERT INTO `region` VALUES ('1635', '371102', '东港区', '181', 'D', '2');
INSERT INTO `region` VALUES ('1636', '371103', '岚山区', '181', 'L', '2');
INSERT INTO `region` VALUES ('1637', '371121', '五莲县', '181', 'W', '2');
INSERT INTO `region` VALUES ('1638', '371122', '莒县', '181', 'J', '2');
INSERT INTO `region` VALUES ('1639', '371202', '莱城区', '182', 'L', '2');
INSERT INTO `region` VALUES ('1640', '371203', '钢城区', '182', 'G', '2');
INSERT INTO `region` VALUES ('1641', '371302', '兰山区', '183', 'L', '2');
INSERT INTO `region` VALUES ('1642', '371311', '罗庄区', '183', 'L', '2');
INSERT INTO `region` VALUES ('1643', '371321', '沂南县', '183', 'Y', '2');
INSERT INTO `region` VALUES ('1644', '371322', '郯城县', '183', 'T', '2');
INSERT INTO `region` VALUES ('1645', '371323', '沂水县', '183', 'Y', '2');
INSERT INTO `region` VALUES ('1646', '371324', '兰陵县', '183', 'L', '2');
INSERT INTO `region` VALUES ('1647', '371325', '费县', '183', 'F', '2');
INSERT INTO `region` VALUES ('1648', '371326', '平邑县', '183', 'P', '2');
INSERT INTO `region` VALUES ('1649', '371327', '莒南县', '183', 'J', '2');
INSERT INTO `region` VALUES ('1650', '371328', '蒙阴县', '183', 'M', '2');
INSERT INTO `region` VALUES ('1651', '371329', '临沭县', '183', 'L', '2');
INSERT INTO `region` VALUES ('1652', '371402', '德城区', '184', 'D', '2');
INSERT INTO `region` VALUES ('1653', '371403', '陵城区', '184', 'L', '2');
INSERT INTO `region` VALUES ('1654', '371422', '宁津县', '184', 'N', '2');
INSERT INTO `region` VALUES ('1655', '371423', '庆云县', '184', 'Q', '2');
INSERT INTO `region` VALUES ('1656', '371424', '临邑县', '184', 'L', '2');
INSERT INTO `region` VALUES ('1657', '371425', '齐河县', '184', 'Q', '2');
INSERT INTO `region` VALUES ('1658', '371426', '平原县', '184', 'P', '2');
INSERT INTO `region` VALUES ('1659', '371427', '夏津县', '184', 'X', '2');
INSERT INTO `region` VALUES ('1660', '371428', '武城县', '184', 'W', '2');
INSERT INTO `region` VALUES ('1661', '371481', '乐陵市', '184', 'L', '2');
INSERT INTO `region` VALUES ('1662', '371482', '禹城市', '184', 'Y', '2');
INSERT INTO `region` VALUES ('1663', '371502', '东昌府区', '185', 'D', '2');
INSERT INTO `region` VALUES ('1664', '371521', '阳谷县', '185', 'Y', '2');
INSERT INTO `region` VALUES ('1665', '371522', '莘县', '185', 'X', '2');
INSERT INTO `region` VALUES ('1666', '371523', '茌平县', '185', 'C', '2');
INSERT INTO `region` VALUES ('1667', '371524', '东阿县', '185', 'D', '2');
INSERT INTO `region` VALUES ('1668', '371525', '冠县', '185', 'G', '2');
INSERT INTO `region` VALUES ('1669', '371526', '高唐县', '185', 'G', '2');
INSERT INTO `region` VALUES ('1670', '371581', '临清市', '185', 'L', '2');
INSERT INTO `region` VALUES ('1671', '371602', '滨城区', '186', 'B', '2');
INSERT INTO `region` VALUES ('1672', '371603', '沾化区', '186', 'Z', '2');
INSERT INTO `region` VALUES ('1673', '371621', '惠民县', '186', 'H', '2');
INSERT INTO `region` VALUES ('1674', '371622', '阳信县', '186', 'Y', '2');
INSERT INTO `region` VALUES ('1675', '371623', '无棣县', '186', 'W', '2');
INSERT INTO `region` VALUES ('1676', '371625', '博兴县', '186', 'B', '2');
INSERT INTO `region` VALUES ('1677', '371626', '邹平县', '186', 'Z', '2');
INSERT INTO `region` VALUES ('1678', '371702', '牡丹区', '187', 'M', '2');
INSERT INTO `region` VALUES ('1679', '371721', '曹县', '187', 'C', '2');
INSERT INTO `region` VALUES ('1680', '371722', '单县', '187', 'D', '2');
INSERT INTO `region` VALUES ('1681', '371723', '成武县', '187', 'C', '2');
INSERT INTO `region` VALUES ('1682', '371724', '巨野县', '187', 'J', '2');
INSERT INTO `region` VALUES ('1683', '371725', '郓城县', '187', 'Y', '2');
INSERT INTO `region` VALUES ('1684', '371726', '鄄城县', '187', 'J', '2');
INSERT INTO `region` VALUES ('1685', '371727', '定陶县', '187', 'D', '2');
INSERT INTO `region` VALUES ('1686', '371728', '东明县', '187', 'D', '2');
INSERT INTO `region` VALUES ('1687', '410102', '中原区', '188', 'Z', '2');
INSERT INTO `region` VALUES ('1688', '410103', '二七区', '188', 'E', '2');
INSERT INTO `region` VALUES ('1689', '410104', '管城回族区', '188', 'G', '2');
INSERT INTO `region` VALUES ('1690', '410105', '金水区', '188', 'J', '2');
INSERT INTO `region` VALUES ('1691', '410106', '上街区', '188', 'S', '2');
INSERT INTO `region` VALUES ('1692', '410108', '惠济区', '188', 'H', '2');
INSERT INTO `region` VALUES ('1693', '410122', '中牟县', '188', 'Z', '2');
INSERT INTO `region` VALUES ('1694', '410181', '巩义市', '188', 'G', '2');
INSERT INTO `region` VALUES ('1695', '410182', '荥阳市', '188', 'Y', '2');
INSERT INTO `region` VALUES ('1696', '410183', '新密市', '188', 'X', '2');
INSERT INTO `region` VALUES ('1697', '410184', '新郑市', '188', 'X', '2');
INSERT INTO `region` VALUES ('1698', '410185', '登封市', '188', 'D', '2');
INSERT INTO `region` VALUES ('1699', '410202', '龙亭区', '189', 'L', '2');
INSERT INTO `region` VALUES ('1700', '410203', '顺河回族区', '189', 'S', '2');
INSERT INTO `region` VALUES ('1701', '410205', '禹王台区', '189', 'Y', '2');
INSERT INTO `region` VALUES ('1702', '410211', '金明区', '189', 'J', '2');
INSERT INTO `region` VALUES ('1703', '410221', '杞县', '189', 'Q', '2');
INSERT INTO `region` VALUES ('1704', '410222', '通许县', '189', 'T', '2');
INSERT INTO `region` VALUES ('1705', '410223', '尉氏县', '189', 'W', '2');
INSERT INTO `region` VALUES ('1706', '410224', '开封县', '189', 'K', '2');
INSERT INTO `region` VALUES ('1707', '410225', '兰考县', '189', 'L', '2');
INSERT INTO `region` VALUES ('1708', '410302', '老城区', '190', 'L', '2');
INSERT INTO `region` VALUES ('1709', '410303', '西工区', '190', 'X', '2');
INSERT INTO `region` VALUES ('1710', '410304', '瀍河回族区', '190', 'C', '2');
INSERT INTO `region` VALUES ('1711', '410305', '涧西区', '190', 'J', '2');
INSERT INTO `region` VALUES ('1712', '410306', '吉利区', '190', 'J', '2');
INSERT INTO `region` VALUES ('1713', '410311', '洛龙区', '190', 'L', '2');
INSERT INTO `region` VALUES ('1714', '410322', '孟津县', '190', 'M', '2');
INSERT INTO `region` VALUES ('1715', '410323', '新安县', '190', 'X', '2');
INSERT INTO `region` VALUES ('1716', '410324', '栾川县', '190', 'L', '2');
INSERT INTO `region` VALUES ('1717', '410325', '嵩县', '190', 'S', '2');
INSERT INTO `region` VALUES ('1718', '410326', '汝阳县', '190', 'R', '2');
INSERT INTO `region` VALUES ('1719', '410327', '宜阳县', '190', 'Y', '2');
INSERT INTO `region` VALUES ('1720', '410328', '洛宁县', '190', 'L', '2');
INSERT INTO `region` VALUES ('1721', '410329', '伊川县', '190', 'Y', '2');
INSERT INTO `region` VALUES ('1722', '410381', '偃师市', '190', 'Y', '2');
INSERT INTO `region` VALUES ('1723', '410403', '卫东区', '191', 'W', '2');
INSERT INTO `region` VALUES ('1724', '410404', '石龙区', '191', 'S', '2');
INSERT INTO `region` VALUES ('1725', '410411', '湛河区', '191', 'Z', '2');
INSERT INTO `region` VALUES ('1726', '410421', '宝丰县', '191', 'B', '2');
INSERT INTO `region` VALUES ('1727', '410422', '叶县', '191', 'Y', '2');
INSERT INTO `region` VALUES ('1728', '410423', '鲁山县', '191', 'L', '2');
INSERT INTO `region` VALUES ('1729', '410425', '郏县', '191', 'J', '2');
INSERT INTO `region` VALUES ('1730', '410481', '舞钢市', '191', 'W', '2');
INSERT INTO `region` VALUES ('1731', '410482', '汝州市', '191', 'R', '2');
INSERT INTO `region` VALUES ('1732', '410502', '文峰区', '192', 'W', '2');
INSERT INTO `region` VALUES ('1733', '410503', '北关区', '192', 'B', '2');
INSERT INTO `region` VALUES ('1734', '410505', '殷都区', '192', 'Y', '2');
INSERT INTO `region` VALUES ('1735', '410506', '龙安区', '192', 'L', '2');
INSERT INTO `region` VALUES ('1736', '410522', '安阳县', '192', 'A', '2');
INSERT INTO `region` VALUES ('1737', '410523', '汤阴县', '192', 'T', '2');
INSERT INTO `region` VALUES ('1738', '410526', '滑县', '192', 'H', '2');
INSERT INTO `region` VALUES ('1739', '410527', '内黄县', '192', 'N', '2');
INSERT INTO `region` VALUES ('1740', '410581', '林州市', '192', 'L', '2');
INSERT INTO `region` VALUES ('1741', '410602', '鹤山区', '193', 'H', '2');
INSERT INTO `region` VALUES ('1742', '410603', '山城区', '193', 'S', '2');
INSERT INTO `region` VALUES ('1743', '410611', '淇滨区', '193', 'Q', '2');
INSERT INTO `region` VALUES ('1744', '410621', '浚县', '193', 'J', '2');
INSERT INTO `region` VALUES ('1745', '410622', '淇县', '193', 'Q', '2');
INSERT INTO `region` VALUES ('1746', '410702', '红旗区', '194', 'H', '2');
INSERT INTO `region` VALUES ('1747', '410703', '卫滨区', '194', 'W', '2');
INSERT INTO `region` VALUES ('1748', '410704', '凤泉区', '194', 'F', '2');
INSERT INTO `region` VALUES ('1749', '410711', '牧野区', '194', 'M', '2');
INSERT INTO `region` VALUES ('1750', '410721', '新乡县', '194', 'X', '2');
INSERT INTO `region` VALUES ('1751', '410724', '获嘉县', '194', 'H', '2');
INSERT INTO `region` VALUES ('1752', '410725', '原阳县', '194', 'Y', '2');
INSERT INTO `region` VALUES ('1753', '410726', '延津县', '194', 'Y', '2');
INSERT INTO `region` VALUES ('1754', '410727', '封丘县', '194', 'F', '2');
INSERT INTO `region` VALUES ('1755', '410728', '长垣县', '194', 'C', '2');
INSERT INTO `region` VALUES ('1756', '410781', '卫辉市', '194', 'W', '2');
INSERT INTO `region` VALUES ('1757', '410782', '辉县市', '194', 'H', '2');
INSERT INTO `region` VALUES ('1758', '410802', '解放区', '195', 'J', '2');
INSERT INTO `region` VALUES ('1759', '410803', '中站区', '195', 'Z', '2');
INSERT INTO `region` VALUES ('1760', '410804', '马村区', '195', 'M', '2');
INSERT INTO `region` VALUES ('1761', '410811', '山阳区', '195', 'S', '2');
INSERT INTO `region` VALUES ('1762', '410821', '修武县', '195', 'X', '2');
INSERT INTO `region` VALUES ('1763', '410822', '博爱县', '195', 'B', '2');
INSERT INTO `region` VALUES ('1764', '410823', '武陟县', '195', 'W', '2');
INSERT INTO `region` VALUES ('1765', '410825', '温县', '195', 'W', '2');
INSERT INTO `region` VALUES ('1766', '410882', '沁阳市', '195', 'Q', '2');
INSERT INTO `region` VALUES ('1767', '410883', '孟州市', '195', 'M', '2');
INSERT INTO `region` VALUES ('1768', '410902', '华龙区', '196', 'H', '2');
INSERT INTO `region` VALUES ('1769', '410922', '清丰县', '196', 'Q', '2');
INSERT INTO `region` VALUES ('1770', '410923', '南乐县', '196', 'N', '2');
INSERT INTO `region` VALUES ('1771', '410926', '范县', '196', 'F', '2');
INSERT INTO `region` VALUES ('1772', '410927', '台前县', '196', 'T', '2');
INSERT INTO `region` VALUES ('1773', '410928', '濮阳县', '196', 'P', '2');
INSERT INTO `region` VALUES ('1774', '411002', '魏都区', '197', 'W', '2');
INSERT INTO `region` VALUES ('1775', '411023', '许昌县', '197', 'X', '2');
INSERT INTO `region` VALUES ('1776', '411024', '鄢陵县', '197', 'Y', '2');
INSERT INTO `region` VALUES ('1777', '411025', '襄城县', '197', 'X', '2');
INSERT INTO `region` VALUES ('1778', '411081', '禹州市', '197', 'Y', '2');
INSERT INTO `region` VALUES ('1779', '411082', '长葛市', '197', 'C', '2');
INSERT INTO `region` VALUES ('1781', '411102', '源汇区', '198', 'Y', '2');
INSERT INTO `region` VALUES ('1782', '411103', '郾城区', '198', 'Y', '2');
INSERT INTO `region` VALUES ('1783', '411104', '召陵区', '198', 'Z', '2');
INSERT INTO `region` VALUES ('1784', '411121', '舞阳县', '198', 'W', '2');
INSERT INTO `region` VALUES ('1785', '411122', '临颍县', '198', 'L', '2');
INSERT INTO `region` VALUES ('1786', '411202', '湖滨区', '199', 'H', '2');
INSERT INTO `region` VALUES ('1787', '411221', '渑池县', '199', 'S', '2');
INSERT INTO `region` VALUES ('1788', '411222', '陕县', '199', 'S', '2');
INSERT INTO `region` VALUES ('1789', '411224', '卢氏县', '199', 'L', '2');
INSERT INTO `region` VALUES ('1790', '411281', '义马市', '199', 'Y', '2');
INSERT INTO `region` VALUES ('1791', '411282', '灵宝市', '199', 'L', '2');
INSERT INTO `region` VALUES ('1792', '411302', '宛城区', '200', 'W', '2');
INSERT INTO `region` VALUES ('1793', '411303', '卧龙区', '200', 'W', '2');
INSERT INTO `region` VALUES ('1794', '411321', '南召县', '200', 'N', '2');
INSERT INTO `region` VALUES ('1795', '411322', '方城县', '200', 'F', '2');
INSERT INTO `region` VALUES ('1796', '411323', '西峡县', '200', 'X', '2');
INSERT INTO `region` VALUES ('1797', '411324', '镇平县', '200', 'Z', '2');
INSERT INTO `region` VALUES ('1798', '411325', '内乡县', '200', 'N', '2');
INSERT INTO `region` VALUES ('1799', '411326', '淅川县', '200', 'X', '2');
INSERT INTO `region` VALUES ('1800', '411327', '社旗县', '200', 'S', '2');
INSERT INTO `region` VALUES ('1801', '411328', '唐河县', '200', 'T', '2');
INSERT INTO `region` VALUES ('1802', '411329', '新野县', '200', 'X', '2');
INSERT INTO `region` VALUES ('1803', '411330', '桐柏县', '200', 'T', '2');
INSERT INTO `region` VALUES ('1804', '411381', '邓州市', '200', 'D', '2');
INSERT INTO `region` VALUES ('1805', '411402', '梁园区', '201', 'L', '2');
INSERT INTO `region` VALUES ('1806', '411403', '睢阳区', '201', 'S', '2');
INSERT INTO `region` VALUES ('1807', '411421', '民权县', '201', 'M', '2');
INSERT INTO `region` VALUES ('1808', '411422', '睢县', '201', 'S', '2');
INSERT INTO `region` VALUES ('1809', '411423', '宁陵县', '201', 'N', '2');
INSERT INTO `region` VALUES ('1810', '411424', '柘城县', '201', 'Z', '2');
INSERT INTO `region` VALUES ('1811', '411425', '虞城县', '201', 'Y', '2');
INSERT INTO `region` VALUES ('1812', '411426', '夏邑县', '201', 'X', '2');
INSERT INTO `region` VALUES ('1813', '411481', '永城市', '201', 'Y', '2');
INSERT INTO `region` VALUES ('1814', '411502', '浉河区', '202', 'S', '2');
INSERT INTO `region` VALUES ('1815', '411503', '平桥区', '202', 'P', '2');
INSERT INTO `region` VALUES ('1816', '411521', '罗山县', '202', 'L', '2');
INSERT INTO `region` VALUES ('1817', '411522', '光山县', '202', 'G', '2');
INSERT INTO `region` VALUES ('1818', '411523', '新县', '202', 'X', '2');
INSERT INTO `region` VALUES ('1819', '411524', '商城县', '202', 'S', '2');
INSERT INTO `region` VALUES ('1820', '411525', '固始县', '202', 'G', '2');
INSERT INTO `region` VALUES ('1821', '411526', '潢川县', '202', 'H', '2');
INSERT INTO `region` VALUES ('1822', '411527', '淮滨县', '202', 'H', '2');
INSERT INTO `region` VALUES ('1823', '411528', '息县', '202', 'X', '2');
INSERT INTO `region` VALUES ('1824', '411602', '川汇区', '203', 'C', '2');
INSERT INTO `region` VALUES ('1825', '411621', '扶沟县', '203', 'F', '2');
INSERT INTO `region` VALUES ('1826', '411622', '西华县', '203', 'X', '2');
INSERT INTO `region` VALUES ('1827', '411623', '商水县', '203', 'S', '2');
INSERT INTO `region` VALUES ('1828', '411624', '沈丘县', '203', 'S', '2');
INSERT INTO `region` VALUES ('1829', '411625', '郸城县', '203', 'D', '2');
INSERT INTO `region` VALUES ('1830', '411626', '淮阳县', '203', 'H', '2');
INSERT INTO `region` VALUES ('1831', '411627', '太康县', '203', 'T', '2');
INSERT INTO `region` VALUES ('1832', '411628', '鹿邑县', '203', 'L', '2');
INSERT INTO `region` VALUES ('1833', '411681', '项城市', '203', 'X', '2');
INSERT INTO `region` VALUES ('1834', '411702', '驿城区', '204', 'Y', '2');
INSERT INTO `region` VALUES ('1835', '411721', '西平县', '204', 'X', '2');
INSERT INTO `region` VALUES ('1836', '411722', '上蔡县', '204', 'S', '2');
INSERT INTO `region` VALUES ('1837', '411723', '平舆县', '204', 'P', '2');
INSERT INTO `region` VALUES ('1838', '411724', '正阳县', '204', 'Z', '2');
INSERT INTO `region` VALUES ('1839', '411725', '确山县', '204', 'Q', '2');
INSERT INTO `region` VALUES ('1840', '411726', '泌阳县', '204', 'M', '2');
INSERT INTO `region` VALUES ('1841', '411727', '汝南县', '204', 'R', '2');
INSERT INTO `region` VALUES ('1842', '411728', '遂平县', '204', 'S', '2');
INSERT INTO `region` VALUES ('1843', '411729', '新蔡县', '204', 'X', '2');
INSERT INTO `region` VALUES ('1844', '419001', '济源市', '205', 'J', '2');
INSERT INTO `region` VALUES ('1845', '420102', '江岸区', '206', 'J', '2');
INSERT INTO `region` VALUES ('1846', '420103', '江汉区', '206', 'J', '2');
INSERT INTO `region` VALUES ('1847', '420104', '硚口区', '206', 'Q', '2');
INSERT INTO `region` VALUES ('1848', '420105', '汉阳区', '206', 'H', '2');
INSERT INTO `region` VALUES ('1849', '420106', '武昌区', '206', 'W', '2');
INSERT INTO `region` VALUES ('1850', '420111', '洪山区', '206', 'H', '2');
INSERT INTO `region` VALUES ('1851', '420112', '东西湖区', '206', 'D', '2');
INSERT INTO `region` VALUES ('1852', '420113', '汉南区', '206', 'H', '2');
INSERT INTO `region` VALUES ('1853', '420114', '蔡甸区', '206', 'C', '2');
INSERT INTO `region` VALUES ('1854', '420115', '江夏区', '206', 'J', '2');
INSERT INTO `region` VALUES ('1855', '420116', '黄陂区', '206', 'H', '2');
INSERT INTO `region` VALUES ('1856', '420117', '新洲区', '206', 'X', '2');
INSERT INTO `region` VALUES ('1857', '420202', '黄石港区', '207', 'H', '2');
INSERT INTO `region` VALUES ('1858', '420203', '西塞山区', '207', 'X', '2');
INSERT INTO `region` VALUES ('1859', '420204', '下陆区', '207', 'X', '2');
INSERT INTO `region` VALUES ('1860', '420205', '铁山区', '207', 'T', '2');
INSERT INTO `region` VALUES ('1861', '420222', '阳新县', '207', 'Y', '2');
INSERT INTO `region` VALUES ('1862', '420281', '大冶市', '207', 'D', '2');
INSERT INTO `region` VALUES ('1863', '420302', '茅箭区', '208', 'M', '2');
INSERT INTO `region` VALUES ('1864', '420303', '张湾区', '208', 'Z', '2');
INSERT INTO `region` VALUES ('1865', '420304', '郧阳区', '208', 'Y', '2');
INSERT INTO `region` VALUES ('1866', '420322', '郧西县', '208', 'Y', '2');
INSERT INTO `region` VALUES ('1867', '420323', '竹山县', '208', 'Z', '2');
INSERT INTO `region` VALUES ('1868', '420324', '竹溪县', '208', 'Z', '2');
INSERT INTO `region` VALUES ('1869', '420325', '房县', '208', 'F', '2');
INSERT INTO `region` VALUES ('1870', '420381', '丹江口市', '208', 'D', '2');
INSERT INTO `region` VALUES ('1871', '420502', '西陵区', '209', 'X', '2');
INSERT INTO `region` VALUES ('1872', '420503', '伍家岗区', '209', 'W', '2');
INSERT INTO `region` VALUES ('1873', '420504', '点军区', '209', 'D', '2');
INSERT INTO `region` VALUES ('1874', '420505', '猇亭区', '209', 'X', '2');
INSERT INTO `region` VALUES ('1875', '420506', '夷陵区', '209', 'Y', '2');
INSERT INTO `region` VALUES ('1876', '420525', '远安县', '209', 'Y', '2');
INSERT INTO `region` VALUES ('1877', '420526', '兴山县', '209', 'X', '2');
INSERT INTO `region` VALUES ('1878', '420527', '秭归县', '209', 'Z', '2');
INSERT INTO `region` VALUES ('1879', '420528', '长阳土家族自治县', '209', 'C', '2');
INSERT INTO `region` VALUES ('1880', '420529', '五峰土家族自治县', '209', 'W', '2');
INSERT INTO `region` VALUES ('1881', '420581', '宜都市', '209', 'Y', '2');
INSERT INTO `region` VALUES ('1882', '420582', '当阳市', '209', 'D', '2');
INSERT INTO `region` VALUES ('1883', '420583', '枝江市', '209', 'Z', '2');
INSERT INTO `region` VALUES ('1884', '420602', '襄城区', '210', 'X', '2');
INSERT INTO `region` VALUES ('1885', '420606', '樊城区', '210', 'F', '2');
INSERT INTO `region` VALUES ('1886', '420607', '襄州区', '210', 'X', '2');
INSERT INTO `region` VALUES ('1887', '420624', '南漳县', '210', 'N', '2');
INSERT INTO `region` VALUES ('1888', '420625', '谷城县', '210', 'G', '2');
INSERT INTO `region` VALUES ('1889', '420626', '保康县', '210', 'B', '2');
INSERT INTO `region` VALUES ('1890', '420682', '老河口市', '210', 'L', '2');
INSERT INTO `region` VALUES ('1891', '420683', '枣阳市', '210', 'Z', '2');
INSERT INTO `region` VALUES ('1892', '420684', '宜城市', '210', 'Y', '2');
INSERT INTO `region` VALUES ('1893', '420702', '梁子湖区', '211', 'L', '2');
INSERT INTO `region` VALUES ('1894', '420703', '华容区', '211', 'H', '2');
INSERT INTO `region` VALUES ('1895', '420704', '鄂城区', '211', 'E', '2');
INSERT INTO `region` VALUES ('1896', '420802', '东宝区', '212', 'D', '2');
INSERT INTO `region` VALUES ('1897', '420804', '掇刀区', '212', 'D', '2');
INSERT INTO `region` VALUES ('1898', '420821', '京山县', '212', 'J', '2');
INSERT INTO `region` VALUES ('1899', '420822', '沙洋县', '212', 'S', '2');
INSERT INTO `region` VALUES ('1900', '420881', '钟祥市', '212', 'Z', '2');
INSERT INTO `region` VALUES ('1901', '420902', '孝南区', '213', 'X', '2');
INSERT INTO `region` VALUES ('1902', '420921', '孝昌县', '213', 'X', '2');
INSERT INTO `region` VALUES ('1903', '420922', '大悟县', '213', 'D', '2');
INSERT INTO `region` VALUES ('1904', '420923', '云梦县', '213', 'Y', '2');
INSERT INTO `region` VALUES ('1905', '420981', '应城市', '213', 'Y', '2');
INSERT INTO `region` VALUES ('1906', '420982', '安陆市', '213', 'A', '2');
INSERT INTO `region` VALUES ('1907', '420984', '汉川市', '213', 'H', '2');
INSERT INTO `region` VALUES ('1908', '421002', '沙市区', '214', 'S', '2');
INSERT INTO `region` VALUES ('1909', '421003', '荆州区', '214', 'J', '2');
INSERT INTO `region` VALUES ('1910', '421022', '公安县', '214', 'G', '2');
INSERT INTO `region` VALUES ('1911', '421023', '监利县', '214', 'J', '2');
INSERT INTO `region` VALUES ('1912', '421024', '江陵县', '214', 'J', '2');
INSERT INTO `region` VALUES ('1913', '421081', '石首市', '214', 'S', '2');
INSERT INTO `region` VALUES ('1914', '421083', '洪湖市', '214', 'H', '2');
INSERT INTO `region` VALUES ('1915', '421087', '松滋市', '214', 'S', '2');
INSERT INTO `region` VALUES ('1916', '421102', '黄州区', '215', 'H', '2');
INSERT INTO `region` VALUES ('1917', '421121', '团风县', '215', 'T', '2');
INSERT INTO `region` VALUES ('1918', '421122', '红安县', '215', 'H', '2');
INSERT INTO `region` VALUES ('1919', '421123', '罗田县', '215', 'L', '2');
INSERT INTO `region` VALUES ('1920', '421124', '英山县', '215', 'Y', '2');
INSERT INTO `region` VALUES ('1921', '421125', '浠水县', '215', 'X', '2');
INSERT INTO `region` VALUES ('1922', '421126', '蕲春县', '215', 'Q', '2');
INSERT INTO `region` VALUES ('1923', '421127', '黄梅县', '215', 'H', '2');
INSERT INTO `region` VALUES ('1924', '421181', '麻城市', '215', 'M', '2');
INSERT INTO `region` VALUES ('1925', '421182', '武穴市', '215', 'W', '2');
INSERT INTO `region` VALUES ('1926', '421202', '咸安区', '216', 'X', '2');
INSERT INTO `region` VALUES ('1927', '421221', '嘉鱼县', '216', 'J', '2');
INSERT INTO `region` VALUES ('1928', '421222', '通城县', '216', 'T', '2');
INSERT INTO `region` VALUES ('1929', '421223', '崇阳县', '216', 'C', '2');
INSERT INTO `region` VALUES ('1930', '421224', '通山县', '216', 'T', '2');
INSERT INTO `region` VALUES ('1931', '421281', '赤壁市', '216', 'C', '2');
INSERT INTO `region` VALUES ('1932', '421303', '曾都区', '217', 'Z', '2');
INSERT INTO `region` VALUES ('1933', '421321', '随县', '217', 'S', '2');
INSERT INTO `region` VALUES ('1934', '421381', '广水市', '217', 'G', '2');
INSERT INTO `region` VALUES ('1935', '422801', '恩施市', '218', 'E', '2');
INSERT INTO `region` VALUES ('1936', '422802', '利川市', '218', 'L', '2');
INSERT INTO `region` VALUES ('1937', '422822', '建始县', '218', 'J', '2');
INSERT INTO `region` VALUES ('1938', '422823', '巴东县', '218', 'B', '2');
INSERT INTO `region` VALUES ('1939', '422825', '宣恩县', '218', 'X', '2');
INSERT INTO `region` VALUES ('1940', '422826', '咸丰县', '218', 'X', '2');
INSERT INTO `region` VALUES ('1941', '422827', '来凤县', '218', 'L', '2');
INSERT INTO `region` VALUES ('1942', '422828', '鹤峰县', '218', 'H', '2');
INSERT INTO `region` VALUES ('1943', '429004', '仙桃市', '219', 'X', '2');
INSERT INTO `region` VALUES ('1944', '429005', '潜江市', '219', 'Q', '2');
INSERT INTO `region` VALUES ('1945', '429006', '天门市', '219', 'T', '2');
INSERT INTO `region` VALUES ('1946', '429021', '神农架林区', '219', 'S', '2');
INSERT INTO `region` VALUES ('1947', '430102', '芙蓉区', '220', 'F', '2');
INSERT INTO `region` VALUES ('1948', '430103', '天心区', '220', 'T', '2');
INSERT INTO `region` VALUES ('1949', '430104', '岳麓区', '220', 'Y', '2');
INSERT INTO `region` VALUES ('1950', '430105', '开福区', '220', 'K', '2');
INSERT INTO `region` VALUES ('1951', '430111', '雨花区', '220', 'Y', '2');
INSERT INTO `region` VALUES ('1952', '430112', '望城区', '220', 'W', '2');
INSERT INTO `region` VALUES ('1953', '430121', '长沙县', '220', 'C', '2');
INSERT INTO `region` VALUES ('1954', '430124', '宁乡县', '220', 'N', '2');
INSERT INTO `region` VALUES ('1955', '430181', '浏阳市', '220', 'L', '2');
INSERT INTO `region` VALUES ('1956', '430202', '荷塘区', '221', 'H', '2');
INSERT INTO `region` VALUES ('1957', '430203', '芦淞区', '221', 'L', '2');
INSERT INTO `region` VALUES ('1958', '430204', '石峰区', '221', 'S', '2');
INSERT INTO `region` VALUES ('1959', '430211', '天元区', '221', 'T', '2');
INSERT INTO `region` VALUES ('1960', '430221', '株洲县', '221', 'Z', '2');
INSERT INTO `region` VALUES ('1961', '430223', '攸县', '221', 'Y', '2');
INSERT INTO `region` VALUES ('1962', '430224', '茶陵县', '221', 'C', '2');
INSERT INTO `region` VALUES ('1963', '430225', '炎陵县', '221', 'Y', '2');
INSERT INTO `region` VALUES ('1964', '430281', '醴陵市', '221', 'L', '2');
INSERT INTO `region` VALUES ('1965', '430302', '雨湖区', '222', 'Y', '2');
INSERT INTO `region` VALUES ('1966', '430304', '岳塘区', '222', 'Y', '2');
INSERT INTO `region` VALUES ('1967', '430321', '湘潭县', '222', 'X', '2');
INSERT INTO `region` VALUES ('1968', '430381', '湘乡市', '222', 'X', '2');
INSERT INTO `region` VALUES ('1969', '430382', '韶山市', '222', 'S', '2');
INSERT INTO `region` VALUES ('1970', '430405', '珠晖区', '223', 'Z', '2');
INSERT INTO `region` VALUES ('1971', '430406', '雁峰区', '223', 'Y', '2');
INSERT INTO `region` VALUES ('1972', '430407', '石鼓区', '223', 'S', '2');
INSERT INTO `region` VALUES ('1973', '430408', '蒸湘区', '223', 'Z', '2');
INSERT INTO `region` VALUES ('1974', '430412', '南岳区', '223', 'N', '2');
INSERT INTO `region` VALUES ('1975', '430421', '衡阳县', '223', 'H', '2');
INSERT INTO `region` VALUES ('1976', '430422', '衡南县', '223', 'H', '2');
INSERT INTO `region` VALUES ('1977', '430423', '衡山县', '223', 'H', '2');
INSERT INTO `region` VALUES ('1978', '430424', '衡东县', '223', 'H', '2');
INSERT INTO `region` VALUES ('1979', '430426', '祁东县', '223', 'Q', '2');
INSERT INTO `region` VALUES ('1980', '430481', '耒阳市', '223', 'L', '2');
INSERT INTO `region` VALUES ('1981', '430482', '常宁市', '223', 'C', '2');
INSERT INTO `region` VALUES ('1982', '430502', '双清区', '224', 'S', '2');
INSERT INTO `region` VALUES ('1983', '430503', '大祥区', '224', 'D', '2');
INSERT INTO `region` VALUES ('1984', '430511', '北塔区', '224', 'B', '2');
INSERT INTO `region` VALUES ('1985', '430521', '邵东县', '224', 'S', '2');
INSERT INTO `region` VALUES ('1986', '430522', '新邵县', '224', 'X', '2');
INSERT INTO `region` VALUES ('1987', '430523', '邵阳县', '224', 'S', '2');
INSERT INTO `region` VALUES ('1988', '430524', '隆回县', '224', 'L', '2');
INSERT INTO `region` VALUES ('1989', '430525', '洞口县', '224', 'D', '2');
INSERT INTO `region` VALUES ('1990', '430527', '绥宁县', '224', 'S', '2');
INSERT INTO `region` VALUES ('1991', '430528', '新宁县', '224', 'X', '2');
INSERT INTO `region` VALUES ('1992', '430529', '城步苗族自治县', '224', 'C', '2');
INSERT INTO `region` VALUES ('1993', '430581', '武冈市', '224', 'W', '2');
INSERT INTO `region` VALUES ('1994', '430602', '岳阳楼区', '225', 'Y', '2');
INSERT INTO `region` VALUES ('1995', '430603', '云溪区', '225', 'Y', '2');
INSERT INTO `region` VALUES ('1996', '430611', '君山区', '225', 'J', '2');
INSERT INTO `region` VALUES ('1997', '430621', '岳阳县', '225', 'Y', '2');
INSERT INTO `region` VALUES ('1998', '430623', '华容县', '225', 'H', '2');
INSERT INTO `region` VALUES ('1999', '430624', '湘阴县', '225', 'X', '2');
INSERT INTO `region` VALUES ('2000', '430626', '平江县', '225', 'P', '2');
INSERT INTO `region` VALUES ('2001', '430681', '汨罗市', '225', 'M', '2');
INSERT INTO `region` VALUES ('2002', '430682', '临湘市', '225', 'L', '2');
INSERT INTO `region` VALUES ('2003', '430702', '武陵区', '226', 'W', '2');
INSERT INTO `region` VALUES ('2004', '430703', '鼎城区', '226', 'D', '2');
INSERT INTO `region` VALUES ('2005', '430721', '安乡县', '226', 'A', '2');
INSERT INTO `region` VALUES ('2006', '430722', '汉寿县', '226', 'H', '2');
INSERT INTO `region` VALUES ('2007', '430723', '澧县', '226', 'L', '2');
INSERT INTO `region` VALUES ('2008', '430724', '临澧县', '226', 'L', '2');
INSERT INTO `region` VALUES ('2009', '430725', '桃源县', '226', 'T', '2');
INSERT INTO `region` VALUES ('2010', '430726', '石门县', '226', 'S', '2');
INSERT INTO `region` VALUES ('2011', '430781', '津市市', '226', 'J', '2');
INSERT INTO `region` VALUES ('2012', '430802', '永定区', '227', 'Y', '2');
INSERT INTO `region` VALUES ('2013', '430811', '武陵源区', '227', 'W', '2');
INSERT INTO `region` VALUES ('2014', '430821', '慈利县', '227', 'C', '2');
INSERT INTO `region` VALUES ('2015', '430822', '桑植县', '227', 'S', '2');
INSERT INTO `region` VALUES ('2016', '430902', '资阳区', '228', 'Z', '2');
INSERT INTO `region` VALUES ('2017', '430903', '赫山区', '228', 'H', '2');
INSERT INTO `region` VALUES ('2018', '430921', '南县', '228', 'N', '2');
INSERT INTO `region` VALUES ('2019', '430922', '桃江县', '228', 'T', '2');
INSERT INTO `region` VALUES ('2020', '430923', '安化县', '228', 'A', '2');
INSERT INTO `region` VALUES ('2021', '430981', '沅江市', '228', 'Y', '2');
INSERT INTO `region` VALUES ('2022', '431002', '北湖区', '229', 'B', '2');
INSERT INTO `region` VALUES ('2023', '431003', '苏仙区', '229', 'S', '2');
INSERT INTO `region` VALUES ('2024', '431021', '桂阳县', '229', 'G', '2');
INSERT INTO `region` VALUES ('2025', '431022', '宜章县', '229', 'Y', '2');
INSERT INTO `region` VALUES ('2026', '431023', '永兴县', '229', 'Y', '2');
INSERT INTO `region` VALUES ('2027', '431024', '嘉禾县', '229', 'J', '2');
INSERT INTO `region` VALUES ('2028', '431025', '临武县', '229', 'L', '2');
INSERT INTO `region` VALUES ('2029', '431026', '汝城县', '229', 'R', '2');
INSERT INTO `region` VALUES ('2030', '431027', '桂东县', '229', 'G', '2');
INSERT INTO `region` VALUES ('2031', '431028', '安仁县', '229', 'A', '2');
INSERT INTO `region` VALUES ('2032', '431081', '资兴市', '229', 'Z', '2');
INSERT INTO `region` VALUES ('2033', '431102', '零陵区', '230', 'L', '2');
INSERT INTO `region` VALUES ('2034', '431103', '冷水滩区', '230', 'L', '2');
INSERT INTO `region` VALUES ('2035', '431121', '祁阳县', '230', 'Q', '2');
INSERT INTO `region` VALUES ('2036', '431122', '东安县', '230', 'D', '2');
INSERT INTO `region` VALUES ('2037', '431123', '双牌县', '230', 'S', '2');
INSERT INTO `region` VALUES ('2038', '431124', '道县', '230', 'D', '2');
INSERT INTO `region` VALUES ('2039', '431125', '江永县', '230', 'J', '2');
INSERT INTO `region` VALUES ('2040', '431126', '宁远县', '230', 'N', '2');
INSERT INTO `region` VALUES ('2041', '431127', '蓝山县', '230', 'L', '2');
INSERT INTO `region` VALUES ('2042', '431128', '新田县', '230', 'X', '2');
INSERT INTO `region` VALUES ('2043', '431129', '江华瑶族自治县', '230', 'J', '2');
INSERT INTO `region` VALUES ('2044', '431202', '鹤城区', '231', 'H', '2');
INSERT INTO `region` VALUES ('2045', '431221', '中方县', '231', 'Z', '2');
INSERT INTO `region` VALUES ('2046', '431222', '沅陵县', '231', 'Y', '2');
INSERT INTO `region` VALUES ('2047', '431223', '辰溪县', '231', 'C', '2');
INSERT INTO `region` VALUES ('2048', '431224', '溆浦县', '231', 'X', '2');
INSERT INTO `region` VALUES ('2049', '431225', '会同县', '231', 'H', '2');
INSERT INTO `region` VALUES ('2050', '431226', '麻阳苗族自治县', '231', 'M', '2');
INSERT INTO `region` VALUES ('2051', '431227', '新晃侗族自治县', '231', 'X', '2');
INSERT INTO `region` VALUES ('2052', '431228', '芷江侗族自治县', '231', 'Z', '2');
INSERT INTO `region` VALUES ('2053', '431229', '靖州苗族侗族自治县', '231', 'J', '2');
INSERT INTO `region` VALUES ('2054', '431230', '通道侗族自治县', '231', 'T', '2');
INSERT INTO `region` VALUES ('2055', '431281', '洪江市', '231', 'H', '2');
INSERT INTO `region` VALUES ('2056', '431302', '娄星区', '232', 'L', '2');
INSERT INTO `region` VALUES ('2057', '431321', '双峰县', '232', 'S', '2');
INSERT INTO `region` VALUES ('2058', '431322', '新化县', '232', 'X', '2');
INSERT INTO `region` VALUES ('2059', '431381', '冷水江市', '232', 'L', '2');
INSERT INTO `region` VALUES ('2060', '431382', '涟源市', '232', 'L', '2');
INSERT INTO `region` VALUES ('2061', '433101', '吉首市', '233', 'J', '2');
INSERT INTO `region` VALUES ('2062', '433122', '泸溪县', '233', 'L', '2');
INSERT INTO `region` VALUES ('2063', '433123', '凤凰县', '233', 'F', '2');
INSERT INTO `region` VALUES ('2064', '433124', '花垣县', '233', 'H', '2');
INSERT INTO `region` VALUES ('2065', '433125', '保靖县', '233', 'B', '2');
INSERT INTO `region` VALUES ('2066', '433126', '古丈县', '233', 'G', '2');
INSERT INTO `region` VALUES ('2067', '433127', '永顺县', '233', 'Y', '2');
INSERT INTO `region` VALUES ('2068', '433130', '龙山县', '233', 'L', '2');
INSERT INTO `region` VALUES ('2069', '440103', '荔湾区', '234', 'L', '2');
INSERT INTO `region` VALUES ('2070', '440104', '越秀区', '234', 'Y', '2');
INSERT INTO `region` VALUES ('2071', '440105', '海珠区', '234', 'H', '2');
INSERT INTO `region` VALUES ('2072', '440106', '天河区', '234', 'T', '2');
INSERT INTO `region` VALUES ('2073', '440111', '白云区', '234', 'B', '2');
INSERT INTO `region` VALUES ('2074', '440112', '黄埔区', '234', 'H', '2');
INSERT INTO `region` VALUES ('2075', '440113', '番禺区', '234', 'F', '2');
INSERT INTO `region` VALUES ('2076', '440114', '花都区', '234', 'H', '2');
INSERT INTO `region` VALUES ('2077', '440115', '南沙区', '234', 'N', '2');
INSERT INTO `region` VALUES ('2078', '440116', '萝岗区', '234', 'L', '2');
INSERT INTO `region` VALUES ('2079', '440117', '从化区', '234', 'C', '2');
INSERT INTO `region` VALUES ('2080', '440118', '增城区', '234', 'Z', '2');
INSERT INTO `region` VALUES ('2081', '440203', '武江区', '235', 'W', '2');
INSERT INTO `region` VALUES ('2082', '440204', '浈江区', '235', 'Z', '2');
INSERT INTO `region` VALUES ('2083', '440205', '曲江区', '235', 'Q', '2');
INSERT INTO `region` VALUES ('2084', '440222', '始兴县', '235', 'S', '2');
INSERT INTO `region` VALUES ('2085', '440224', '仁化县', '235', 'R', '2');
INSERT INTO `region` VALUES ('2086', '440229', '翁源县', '235', 'W', '2');
INSERT INTO `region` VALUES ('2087', '440232', '乳源瑶族自治县', '235', 'R', '2');
INSERT INTO `region` VALUES ('2088', '440233', '新丰县', '235', 'X', '2');
INSERT INTO `region` VALUES ('2089', '440281', '乐昌市', '235', 'L', '2');
INSERT INTO `region` VALUES ('2090', '440282', '南雄市', '235', 'N', '2');
INSERT INTO `region` VALUES ('2091', '440303', '罗湖区', '236', 'L', '2');
INSERT INTO `region` VALUES ('2092', '440304', '福田区', '236', 'F', '2');
INSERT INTO `region` VALUES ('2093', '440306', '宝安区', '236', 'B', '2');
INSERT INTO `region` VALUES ('2094', '440307', '龙岗区', '236', 'L', '2');
INSERT INTO `region` VALUES ('2095', '440308', '盐田区', '236', 'Y', '2');
INSERT INTO `region` VALUES ('2096', '440402', '香洲区', '237', 'X', '2');
INSERT INTO `region` VALUES ('2097', '440403', '斗门区', '237', 'D', '2');
INSERT INTO `region` VALUES ('2098', '440404', '金湾区', '237', 'J', '2');
INSERT INTO `region` VALUES ('2099', '440507', '龙湖区', '238', 'L', '2');
INSERT INTO `region` VALUES ('2100', '440511', '金平区', '238', 'J', '2');
INSERT INTO `region` VALUES ('2101', '440512', '濠江区', '238', 'H', '2');
INSERT INTO `region` VALUES ('2102', '440513', '潮阳区', '238', 'C', '2');
INSERT INTO `region` VALUES ('2103', '440514', '潮南区', '238', 'C', '2');
INSERT INTO `region` VALUES ('2104', '440515', '澄海区', '238', 'C', '2');
INSERT INTO `region` VALUES ('2105', '440523', '南澳县', '238', 'N', '2');
INSERT INTO `region` VALUES ('2106', '440604', '禅城区', '239', 'C', '2');
INSERT INTO `region` VALUES ('2107', '440605', '南海区', '239', 'N', '2');
INSERT INTO `region` VALUES ('2108', '440606', '顺德区', '239', 'S', '2');
INSERT INTO `region` VALUES ('2109', '440607', '三水区', '239', 'S', '2');
INSERT INTO `region` VALUES ('2110', '440608', '高明区', '239', 'G', '2');
INSERT INTO `region` VALUES ('2111', '440703', '蓬江区', '240', 'P', '2');
INSERT INTO `region` VALUES ('2112', '440704', '江海区', '240', 'J', '2');
INSERT INTO `region` VALUES ('2113', '440705', '新会区', '240', 'X', '2');
INSERT INTO `region` VALUES ('2114', '440781', '台山市', '240', 'T', '2');
INSERT INTO `region` VALUES ('2115', '440783', '开平市', '240', 'K', '2');
INSERT INTO `region` VALUES ('2116', '440784', '鹤山市', '240', 'H', '2');
INSERT INTO `region` VALUES ('2117', '440785', '恩平市', '240', 'E', '2');
INSERT INTO `region` VALUES ('2118', '440802', '赤坎区', '241', 'C', '2');
INSERT INTO `region` VALUES ('2119', '440803', '霞山区', '241', 'X', '2');
INSERT INTO `region` VALUES ('2120', '440804', '坡头区', '241', 'P', '2');
INSERT INTO `region` VALUES ('2121', '440811', '麻章区', '241', 'M', '2');
INSERT INTO `region` VALUES ('2122', '440823', '遂溪县', '241', 'S', '2');
INSERT INTO `region` VALUES ('2123', '440825', '徐闻县', '241', 'X', '2');
INSERT INTO `region` VALUES ('2124', '440881', '廉江市', '241', 'L', '2');
INSERT INTO `region` VALUES ('2125', '440882', '雷州市', '241', 'L', '2');
INSERT INTO `region` VALUES ('2126', '440883', '吴川市', '241', 'W', '2');
INSERT INTO `region` VALUES ('2127', '440902', '茂南区', '242', 'M', '2');
INSERT INTO `region` VALUES ('2128', '440904', '电白区', '242', 'D', '2');
INSERT INTO `region` VALUES ('2129', '440981', '高州市', '242', 'G', '2');
INSERT INTO `region` VALUES ('2130', '440982', '化州市', '242', 'H', '2');
INSERT INTO `region` VALUES ('2131', '440983', '信宜市', '242', 'X', '2');
INSERT INTO `region` VALUES ('2132', '441202', '端州区', '243', 'D', '2');
INSERT INTO `region` VALUES ('2133', '441203', '鼎湖区', '243', 'D', '2');
INSERT INTO `region` VALUES ('2134', '441223', '广宁县', '243', 'G', '2');
INSERT INTO `region` VALUES ('2135', '441224', '怀集县', '243', 'H', '2');
INSERT INTO `region` VALUES ('2136', '441225', '封开县', '243', 'F', '2');
INSERT INTO `region` VALUES ('2137', '441226', '德庆县', '243', 'D', '2');
INSERT INTO `region` VALUES ('2138', '441283', '高要市', '243', 'G', '2');
INSERT INTO `region` VALUES ('2139', '441284', '四会市', '243', 'S', '2');
INSERT INTO `region` VALUES ('2140', '441302', '惠城区', '244', 'H', '2');
INSERT INTO `region` VALUES ('2141', '441303', '惠阳区', '244', 'H', '2');
INSERT INTO `region` VALUES ('2142', '441322', '博罗县', '244', 'B', '2');
INSERT INTO `region` VALUES ('2143', '441323', '惠东县', '244', 'H', '2');
INSERT INTO `region` VALUES ('2144', '441324', '龙门县', '244', 'L', '2');
INSERT INTO `region` VALUES ('2145', '441402', '梅江区', '245', 'M', '2');
INSERT INTO `region` VALUES ('2146', '441403', '梅县区', '245', 'M', '2');
INSERT INTO `region` VALUES ('2147', '441422', '大埔县', '245', 'D', '2');
INSERT INTO `region` VALUES ('2148', '441423', '丰顺县', '245', 'F', '2');
INSERT INTO `region` VALUES ('2149', '441424', '五华县', '245', 'W', '2');
INSERT INTO `region` VALUES ('2150', '441426', '平远县', '245', 'P', '2');
INSERT INTO `region` VALUES ('2151', '441427', '蕉岭县', '245', 'J', '2');
INSERT INTO `region` VALUES ('2152', '441481', '兴宁市', '245', 'X', '2');
INSERT INTO `region` VALUES ('2153', '441521', '海丰县', '246', 'H', '2');
INSERT INTO `region` VALUES ('2154', '441523', '陆河县', '246', 'L', '2');
INSERT INTO `region` VALUES ('2155', '441581', '陆丰市', '246', 'L', '2');
INSERT INTO `region` VALUES ('2156', '441602', '源城区', '247', 'Y', '2');
INSERT INTO `region` VALUES ('2157', '441621', '紫金县', '247', 'Z', '2');
INSERT INTO `region` VALUES ('2158', '441622', '龙川县', '247', 'L', '2');
INSERT INTO `region` VALUES ('2159', '441623', '连平县', '247', 'L', '2');
INSERT INTO `region` VALUES ('2160', '441624', '和平县', '247', 'H', '2');
INSERT INTO `region` VALUES ('2161', '441625', '东源县', '247', 'D', '2');
INSERT INTO `region` VALUES ('2162', '441702', '江城区', '248', 'J', '2');
INSERT INTO `region` VALUES ('2163', '441721', '阳西县', '248', 'Y', '2');
INSERT INTO `region` VALUES ('2164', '441723', '阳东县', '248', 'Y', '2');
INSERT INTO `region` VALUES ('2165', '441781', '阳春市', '248', 'Y', '2');
INSERT INTO `region` VALUES ('2166', '441802', '清城区', '249', 'Q', '2');
INSERT INTO `region` VALUES ('2167', '441803', '清新区', '249', 'Q', '2');
INSERT INTO `region` VALUES ('2168', '441821', '佛冈县', '249', 'F', '2');
INSERT INTO `region` VALUES ('2169', '441823', '阳山县', '249', 'Y', '2');
INSERT INTO `region` VALUES ('2170', '441825', '连山壮族瑶族自治县', '249', 'L', '2');
INSERT INTO `region` VALUES ('2171', '441826', '连南瑶族自治县', '249', 'L', '2');
INSERT INTO `region` VALUES ('2172', '441881', '英德市', '249', 'Y', '2');
INSERT INTO `region` VALUES ('2173', '441882', '连州市', '249', 'L', '2');
INSERT INTO `region` VALUES ('2174', '445102', '湘桥区', '252', 'X', '2');
INSERT INTO `region` VALUES ('2175', '445103', '潮安区', '252', 'C', '2');
INSERT INTO `region` VALUES ('2176', '445122', '饶平县', '252', 'R', '2');
INSERT INTO `region` VALUES ('2177', '445202', '榕城区', '253', 'R', '2');
INSERT INTO `region` VALUES ('2178', '445203', '揭东区', '253', 'J', '2');
INSERT INTO `region` VALUES ('2179', '445222', '揭西县', '253', 'J', '2');
INSERT INTO `region` VALUES ('2180', '445224', '惠来县', '253', 'H', '2');
INSERT INTO `region` VALUES ('2181', '445281', '普宁市', '253', 'P', '2');
INSERT INTO `region` VALUES ('2182', '445302', '云城区', '254', 'Y', '2');
INSERT INTO `region` VALUES ('2183', '445303', '云安区', '254', 'Y', '2');
INSERT INTO `region` VALUES ('2184', '445321', '新兴县', '254', 'X', '2');
INSERT INTO `region` VALUES ('2185', '445322', '郁南县', '254', 'Y', '2');
INSERT INTO `region` VALUES ('2186', '445381', '罗定市', '254', 'L', '2');
INSERT INTO `region` VALUES ('2187', '450102', '兴宁区', '255', 'X', '2');
INSERT INTO `region` VALUES ('2188', '450103', '青秀区', '255', 'Q', '2');
INSERT INTO `region` VALUES ('2189', '450105', '江南区', '255', 'J', '2');
INSERT INTO `region` VALUES ('2190', '450107', '西乡塘区', '255', 'X', '2');
INSERT INTO `region` VALUES ('2191', '450108', '良庆区', '255', 'L', '2');
INSERT INTO `region` VALUES ('2192', '450109', '邕宁区', '255', 'Y', '2');
INSERT INTO `region` VALUES ('2193', '450122', '武鸣县', '255', 'W', '2');
INSERT INTO `region` VALUES ('2194', '450123', '隆安县', '255', 'L', '2');
INSERT INTO `region` VALUES ('2195', '450124', '马山县', '255', 'M', '2');
INSERT INTO `region` VALUES ('2196', '450125', '上林县', '255', 'S', '2');
INSERT INTO `region` VALUES ('2197', '450126', '宾阳县', '255', 'B', '2');
INSERT INTO `region` VALUES ('2198', '450127', '横县', '255', 'H', '2');
INSERT INTO `region` VALUES ('2199', '450202', '城中区', '256', 'C', '2');
INSERT INTO `region` VALUES ('2200', '450203', '鱼峰区', '256', 'Y', '2');
INSERT INTO `region` VALUES ('2201', '450204', '柳南区', '256', 'L', '2');
INSERT INTO `region` VALUES ('2202', '450205', '柳北区', '256', 'L', '2');
INSERT INTO `region` VALUES ('2203', '450221', '柳江县', '256', 'L', '2');
INSERT INTO `region` VALUES ('2204', '450222', '柳城县', '256', 'L', '2');
INSERT INTO `region` VALUES ('2205', '450223', '鹿寨县', '256', 'L', '2');
INSERT INTO `region` VALUES ('2206', '450224', '融安县', '256', 'R', '2');
INSERT INTO `region` VALUES ('2207', '450225', '融水苗族自治县', '256', 'R', '2');
INSERT INTO `region` VALUES ('2208', '450226', '三江侗族自治县', '256', 'S', '2');
INSERT INTO `region` VALUES ('2209', '450302', '秀峰区', '257', 'X', '2');
INSERT INTO `region` VALUES ('2210', '450303', '叠彩区', '257', 'D', '2');
INSERT INTO `region` VALUES ('2211', '450304', '象山区', '257', 'X', '2');
INSERT INTO `region` VALUES ('2212', '450305', '七星区', '257', 'Q', '2');
INSERT INTO `region` VALUES ('2213', '450311', '雁山区', '257', 'Y', '2');
INSERT INTO `region` VALUES ('2214', '450312', '临桂区', '257', 'L', '2');
INSERT INTO `region` VALUES ('2215', '450321', '阳朔县', '257', 'Y', '2');
INSERT INTO `region` VALUES ('2216', '450323', '灵川县', '257', 'L', '2');
INSERT INTO `region` VALUES ('2217', '450324', '全州县', '257', 'Q', '2');
INSERT INTO `region` VALUES ('2218', '450325', '兴安县', '257', 'X', '2');
INSERT INTO `region` VALUES ('2219', '450326', '永福县', '257', 'Y', '2');
INSERT INTO `region` VALUES ('2220', '450327', '灌阳县', '257', 'G', '2');
INSERT INTO `region` VALUES ('2221', '450328', '龙胜各族自治县', '257', 'L', '2');
INSERT INTO `region` VALUES ('2222', '450329', '资源县', '257', 'Z', '2');
INSERT INTO `region` VALUES ('2223', '450330', '平乐县', '257', 'P', '2');
INSERT INTO `region` VALUES ('2224', '450331', '荔浦县', '257', 'L', '2');
INSERT INTO `region` VALUES ('2225', '450332', '恭城瑶族自治县', '257', 'G', '2');
INSERT INTO `region` VALUES ('2226', '450403', '万秀区', '258', 'W', '2');
INSERT INTO `region` VALUES ('2227', '450405', '长洲区', '258', 'C', '2');
INSERT INTO `region` VALUES ('2228', '450406', '龙圩区', '258', 'L', '2');
INSERT INTO `region` VALUES ('2229', '450421', '苍梧县', '258', 'C', '2');
INSERT INTO `region` VALUES ('2230', '450422', '藤县', '258', 'T', '2');
INSERT INTO `region` VALUES ('2231', '450423', '蒙山县', '258', 'M', '2');
INSERT INTO `region` VALUES ('2232', '450481', '岑溪市', '258', 'C', '2');
INSERT INTO `region` VALUES ('2233', '450502', '海城区', '259', 'H', '2');
INSERT INTO `region` VALUES ('2234', '450503', '银海区', '259', 'Y', '2');
INSERT INTO `region` VALUES ('2235', '450512', '铁山港区', '259', 'T', '2');
INSERT INTO `region` VALUES ('2236', '450521', '合浦县', '259', 'H', '2');
INSERT INTO `region` VALUES ('2237', '450602', '港口区', '260', 'G', '2');
INSERT INTO `region` VALUES ('2238', '450603', '防城区', '260', 'F', '2');
INSERT INTO `region` VALUES ('2239', '450621', '上思县', '260', 'S', '2');
INSERT INTO `region` VALUES ('2240', '450681', '东兴市', '260', 'D', '2');
INSERT INTO `region` VALUES ('2241', '450702', '钦南区', '261', 'Q', '2');
INSERT INTO `region` VALUES ('2242', '450703', '钦北区', '261', 'Q', '2');
INSERT INTO `region` VALUES ('2243', '450721', '灵山县', '261', 'L', '2');
INSERT INTO `region` VALUES ('2244', '450722', '浦北县', '261', 'P', '2');
INSERT INTO `region` VALUES ('2245', '450802', '港北区', '262', 'G', '2');
INSERT INTO `region` VALUES ('2246', '450803', '港南区', '262', 'G', '2');
INSERT INTO `region` VALUES ('2247', '450804', '覃塘区', '262', 'T', '2');
INSERT INTO `region` VALUES ('2248', '450821', '平南县', '262', 'P', '2');
INSERT INTO `region` VALUES ('2249', '450881', '桂平市', '262', 'G', '2');
INSERT INTO `region` VALUES ('2250', '450902', '玉州区', '263', 'Y', '2');
INSERT INTO `region` VALUES ('2251', '450903', '福绵区', '263', 'F', '2');
INSERT INTO `region` VALUES ('2252', '450921', '容县', '263', 'R', '2');
INSERT INTO `region` VALUES ('2253', '450922', '陆川县', '263', 'L', '2');
INSERT INTO `region` VALUES ('2254', '450923', '博白县', '263', 'B', '2');
INSERT INTO `region` VALUES ('2255', '450924', '兴业县', '263', 'X', '2');
INSERT INTO `region` VALUES ('2256', '450981', '北流市', '263', 'B', '2');
INSERT INTO `region` VALUES ('2257', '451002', '右江区', '264', 'Y', '2');
INSERT INTO `region` VALUES ('2258', '451021', '田阳县', '264', 'T', '2');
INSERT INTO `region` VALUES ('2259', '451022', '田东县', '264', 'T', '2');
INSERT INTO `region` VALUES ('2260', '451023', '平果县', '264', 'P', '2');
INSERT INTO `region` VALUES ('2261', '451024', '德保县', '264', 'D', '2');
INSERT INTO `region` VALUES ('2262', '451025', '靖西县', '264', 'J', '2');
INSERT INTO `region` VALUES ('2263', '451026', '那坡县', '264', 'N', '2');
INSERT INTO `region` VALUES ('2264', '451027', '凌云县', '264', 'L', '2');
INSERT INTO `region` VALUES ('2265', '451028', '乐业县', '264', 'L', '2');
INSERT INTO `region` VALUES ('2266', '451029', '田林县', '264', 'T', '2');
INSERT INTO `region` VALUES ('2267', '451030', '西林县', '264', 'X', '2');
INSERT INTO `region` VALUES ('2268', '451031', '隆林各族自治县', '264', 'L', '2');
INSERT INTO `region` VALUES ('2269', '451102', '八步区', '265', 'B', '2');
INSERT INTO `region` VALUES ('2270', '451121', '昭平县', '265', 'Z', '2');
INSERT INTO `region` VALUES ('2271', '451122', '钟山县', '265', 'Z', '2');
INSERT INTO `region` VALUES ('2272', '451123', '富川瑶族自治县', '265', 'F', '2');
INSERT INTO `region` VALUES ('2273', '451202', '金城江区', '266', 'J', '2');
INSERT INTO `region` VALUES ('2274', '451221', '南丹县', '266', 'N', '2');
INSERT INTO `region` VALUES ('2275', '451222', '天峨县', '266', 'T', '2');
INSERT INTO `region` VALUES ('2276', '451223', '凤山县', '266', 'F', '2');
INSERT INTO `region` VALUES ('2277', '451224', '东兰县', '266', 'D', '2');
INSERT INTO `region` VALUES ('2278', '451225', '罗城仫佬族自治县', '266', 'L', '2');
INSERT INTO `region` VALUES ('2279', '451226', '环江毛南族自治县', '266', 'H', '2');
INSERT INTO `region` VALUES ('2280', '451227', '巴马瑶族自治县', '266', 'B', '2');
INSERT INTO `region` VALUES ('2281', '451228', '都安瑶族自治县', '266', 'D', '2');
INSERT INTO `region` VALUES ('2282', '451229', '大化瑶族自治县', '266', 'D', '2');
INSERT INTO `region` VALUES ('2283', '451281', '宜州市', '266', 'Y', '2');
INSERT INTO `region` VALUES ('2284', '451302', '兴宾区', '267', 'X', '2');
INSERT INTO `region` VALUES ('2285', '451321', '忻城县', '267', 'X', '2');
INSERT INTO `region` VALUES ('2286', '451322', '象州县', '267', 'X', '2');
INSERT INTO `region` VALUES ('2287', '451323', '武宣县', '267', 'W', '2');
INSERT INTO `region` VALUES ('2288', '451324', '金秀瑶族自治县', '267', 'J', '2');
INSERT INTO `region` VALUES ('2289', '451381', '合山市', '267', 'H', '2');
INSERT INTO `region` VALUES ('2290', '451402', '江州区', '268', 'J', '2');
INSERT INTO `region` VALUES ('2291', '451421', '扶绥县', '268', 'F', '2');
INSERT INTO `region` VALUES ('2292', '451422', '宁明县', '268', 'N', '2');
INSERT INTO `region` VALUES ('2293', '451423', '龙州县', '268', 'L', '2');
INSERT INTO `region` VALUES ('2294', '451424', '大新县', '268', 'D', '2');
INSERT INTO `region` VALUES ('2295', '451425', '天等县', '268', 'T', '2');
INSERT INTO `region` VALUES ('2296', '451481', '凭祥市', '268', 'P', '2');
INSERT INTO `region` VALUES ('2297', '460105', '秀英区', '269', 'X', '2');
INSERT INTO `region` VALUES ('2298', '460106', '龙华区', '269', 'L', '2');
INSERT INTO `region` VALUES ('2299', '460107', '琼山区', '269', 'Q', '2');
INSERT INTO `region` VALUES ('2300', '460108', '美兰区', '269', 'M', '2');
INSERT INTO `region` VALUES ('2301', '460202', '海棠区', '270', 'H', '2');
INSERT INTO `region` VALUES ('2302', '460203', '吉阳区', '270', 'J', '2');
INSERT INTO `region` VALUES ('2303', '460204', '天涯区', '270', 'T', '2');
INSERT INTO `region` VALUES ('2304', '460205', '崖州区', '270', 'Y', '2');
INSERT INTO `region` VALUES ('2305', '469001', '五指山市', '272', 'W', '2');
INSERT INTO `region` VALUES ('2306', '469002', '琼海市', '272', 'Q', '2');
INSERT INTO `region` VALUES ('2307', '469003', '儋州市', '272', 'D', '2');
INSERT INTO `region` VALUES ('2308', '469005', '文昌市', '272', 'W', '2');
INSERT INTO `region` VALUES ('2309', '469006', '万宁市', '272', 'W', '2');
INSERT INTO `region` VALUES ('2310', '469007', '东方市', '272', 'D', '2');
INSERT INTO `region` VALUES ('2311', '469021', '定安县', '272', 'D', '2');
INSERT INTO `region` VALUES ('2312', '469022', '屯昌县', '272', 'T', '2');
INSERT INTO `region` VALUES ('2313', '469023', '澄迈县', '272', 'C', '2');
INSERT INTO `region` VALUES ('2314', '469024', '临高县', '272', 'L', '2');
INSERT INTO `region` VALUES ('2315', '469025', '白沙黎族自治县', '272', 'B', '2');
INSERT INTO `region` VALUES ('2316', '469026', '昌江黎族自治县', '272', 'C', '2');
INSERT INTO `region` VALUES ('2317', '469027', '乐东黎族自治县', '272', 'L', '2');
INSERT INTO `region` VALUES ('2318', '469028', '陵水黎族自治县', '272', 'L', '2');
INSERT INTO `region` VALUES ('2319', '469029', '保亭黎族苗族自治县', '272', 'B', '2');
INSERT INTO `region` VALUES ('2320', '469030', '琼中黎族苗族自治县', '272', 'Q', '2');
INSERT INTO `region` VALUES ('2321', '500101', '万州区', '273', 'W', '2');
INSERT INTO `region` VALUES ('2322', '500102', '涪陵区', '273', 'F', '2');
INSERT INTO `region` VALUES ('2323', '500103', '渝中区', '273', 'Y', '2');
INSERT INTO `region` VALUES ('2324', '500104', '大渡口区', '273', 'D', '2');
INSERT INTO `region` VALUES ('2325', '500106', '沙坪坝区', '273', 'S', '2');
INSERT INTO `region` VALUES ('2326', '500107', '九龙坡区', '273', 'J', '2');
INSERT INTO `region` VALUES ('2327', '500108', '南岸区', '273', 'N', '2');
INSERT INTO `region` VALUES ('2328', '500109', '北碚区', '273', 'B', '2');
INSERT INTO `region` VALUES ('2329', '500110', '綦江区', '273', 'Q', '2');
INSERT INTO `region` VALUES ('2330', '500111', '大足区', '273', 'D', '2');
INSERT INTO `region` VALUES ('2331', '500112', '渝北区', '273', 'Y', '2');
INSERT INTO `region` VALUES ('2332', '500113', '巴南区', '273', 'B', '2');
INSERT INTO `region` VALUES ('2333', '500114', '黔江区', '273', 'Q', '2');
INSERT INTO `region` VALUES ('2334', '500115', '长寿区', '273', 'C', '2');
INSERT INTO `region` VALUES ('2335', '500116', '江津区', '273', 'J', '2');
INSERT INTO `region` VALUES ('2336', '500117', '合川区', '273', 'H', '2');
INSERT INTO `region` VALUES ('2337', '500118', '永川区', '273', 'Y', '2');
INSERT INTO `region` VALUES ('2338', '500119', '南川区', '273', 'N', '2');
INSERT INTO `region` VALUES ('2339', '500120', '璧山区', '273', 'B', '2');
INSERT INTO `region` VALUES ('2340', '500151', '铜梁区', '273', 'T', '2');
INSERT INTO `region` VALUES ('2341', '500223', '潼南县', '274', 'T', '2');
INSERT INTO `region` VALUES ('2342', '500226', '荣昌县', '274', 'R', '2');
INSERT INTO `region` VALUES ('2343', '500228', '梁平县', '274', 'L', '2');
INSERT INTO `region` VALUES ('2344', '500229', '城口县', '274', 'C', '2');
INSERT INTO `region` VALUES ('2345', '500230', '丰都县', '274', 'F', '2');
INSERT INTO `region` VALUES ('2346', '500231', '垫江县', '274', 'D', '2');
INSERT INTO `region` VALUES ('2347', '500232', '武隆县', '274', 'W', '2');
INSERT INTO `region` VALUES ('2348', '500233', '忠县', '274', 'Z', '2');
INSERT INTO `region` VALUES ('2349', '500234', '开县', '274', 'K', '2');
INSERT INTO `region` VALUES ('2350', '500235', '云阳县', '274', 'Y', '2');
INSERT INTO `region` VALUES ('2351', '500236', '奉节县', '274', 'F', '2');
INSERT INTO `region` VALUES ('2352', '500237', '巫山县', '274', 'W', '2');
INSERT INTO `region` VALUES ('2353', '500238', '巫溪县', '274', 'W', '2');
INSERT INTO `region` VALUES ('2354', '500240', '石柱土家族自治县', '274', 'S', '2');
INSERT INTO `region` VALUES ('2355', '500241', '秀山土家族苗族自治县', '274', 'X', '2');
INSERT INTO `region` VALUES ('2356', '500242', '酉阳土家族苗族自治县', '274', 'Y', '2');
INSERT INTO `region` VALUES ('2357', '500243', '彭水苗族土家族自治县', '274', 'P', '2');
INSERT INTO `region` VALUES ('2358', '510104', '锦江区', '275', 'J', '2');
INSERT INTO `region` VALUES ('2359', '510105', '青羊区', '275', 'Q', '2');
INSERT INTO `region` VALUES ('2360', '510106', '金牛区', '275', 'J', '2');
INSERT INTO `region` VALUES ('2361', '510107', '武侯区', '275', 'W', '2');
INSERT INTO `region` VALUES ('2362', '510108', '成华区', '275', 'C', '2');
INSERT INTO `region` VALUES ('2363', '510112', '龙泉驿区', '275', 'L', '2');
INSERT INTO `region` VALUES ('2364', '510113', '青白江区', '275', 'Q', '2');
INSERT INTO `region` VALUES ('2365', '510114', '新都区', '275', 'X', '2');
INSERT INTO `region` VALUES ('2366', '510115', '温江区', '275', 'W', '2');
INSERT INTO `region` VALUES ('2367', '510121', '金堂县', '275', 'J', '2');
INSERT INTO `region` VALUES ('2368', '510122', '双流县', '275', 'S', '2');
INSERT INTO `region` VALUES ('2369', '510124', '郫县', '275', 'P', '2');
INSERT INTO `region` VALUES ('2370', '510129', '大邑县', '275', 'D', '2');
INSERT INTO `region` VALUES ('2371', '510131', '蒲江县', '275', 'P', '2');
INSERT INTO `region` VALUES ('2372', '510132', '新津县', '275', 'X', '2');
INSERT INTO `region` VALUES ('2373', '510181', '都江堰市', '275', 'D', '2');
INSERT INTO `region` VALUES ('2374', '510182', '彭州市', '275', 'P', '2');
INSERT INTO `region` VALUES ('2375', '510183', '邛崃市', '275', 'Q', '2');
INSERT INTO `region` VALUES ('2376', '510184', '崇州市', '275', 'C', '2');
INSERT INTO `region` VALUES ('2377', '510302', '自流井区', '276', 'Z', '2');
INSERT INTO `region` VALUES ('2378', '510303', '贡井区', '276', 'G', '2');
INSERT INTO `region` VALUES ('2379', '510304', '大安区', '276', 'D', '2');
INSERT INTO `region` VALUES ('2380', '510311', '沿滩区', '276', 'Y', '2');
INSERT INTO `region` VALUES ('2381', '510321', '荣县', '276', 'R', '2');
INSERT INTO `region` VALUES ('2382', '510322', '富顺县', '276', 'F', '2');
INSERT INTO `region` VALUES ('2383', '510402', '东区', '277', 'D', '2');
INSERT INTO `region` VALUES ('2384', '510403', '西区', '277', 'X', '2');
INSERT INTO `region` VALUES ('2385', '510411', '仁和区', '277', 'R', '2');
INSERT INTO `region` VALUES ('2386', '510421', '米易县', '277', 'M', '2');
INSERT INTO `region` VALUES ('2387', '510422', '盐边县', '277', 'Y', '2');
INSERT INTO `region` VALUES ('2388', '510502', '江阳区', '278', 'J', '2');
INSERT INTO `region` VALUES ('2389', '510503', '纳溪区', '278', 'N', '2');
INSERT INTO `region` VALUES ('2390', '510504', '龙马潭区', '278', 'L', '2');
INSERT INTO `region` VALUES ('2391', '510521', '泸县', '278', 'L', '2');
INSERT INTO `region` VALUES ('2392', '510522', '合江县', '278', 'H', '2');
INSERT INTO `region` VALUES ('2393', '510524', '叙永县', '278', 'X', '2');
INSERT INTO `region` VALUES ('2394', '510525', '古蔺县', '278', 'G', '2');
INSERT INTO `region` VALUES ('2395', '510603', '旌阳区', '279', 'J', '2');
INSERT INTO `region` VALUES ('2396', '510623', '中江县', '279', 'Z', '2');
INSERT INTO `region` VALUES ('2397', '510626', '罗江县', '279', 'L', '2');
INSERT INTO `region` VALUES ('2398', '510681', '广汉市', '279', 'G', '2');
INSERT INTO `region` VALUES ('2399', '510682', '什邡市', '279', 'S', '2');
INSERT INTO `region` VALUES ('2400', '510683', '绵竹市', '279', 'M', '2');
INSERT INTO `region` VALUES ('2401', '510703', '涪城区', '280', 'F', '2');
INSERT INTO `region` VALUES ('2402', '510704', '游仙区', '280', 'Y', '2');
INSERT INTO `region` VALUES ('2403', '510722', '三台县', '280', 'S', '2');
INSERT INTO `region` VALUES ('2404', '510723', '盐亭县', '280', 'Y', '2');
INSERT INTO `region` VALUES ('2405', '510724', '安县', '280', 'A', '2');
INSERT INTO `region` VALUES ('2406', '510725', '梓潼县', '280', 'Z', '2');
INSERT INTO `region` VALUES ('2407', '510726', '北川羌族自治县', '280', 'B', '2');
INSERT INTO `region` VALUES ('2408', '510727', '平武县', '280', 'P', '2');
INSERT INTO `region` VALUES ('2409', '510781', '江油市', '280', 'J', '2');
INSERT INTO `region` VALUES ('2410', '510802', '利州区', '281', 'L', '2');
INSERT INTO `region` VALUES ('2411', '510811', '昭化区', '281', 'Z', '2');
INSERT INTO `region` VALUES ('2412', '510812', '朝天区', '281', 'C', '2');
INSERT INTO `region` VALUES ('2413', '510821', '旺苍县', '281', 'W', '2');
INSERT INTO `region` VALUES ('2414', '510822', '青川县', '281', 'Q', '2');
INSERT INTO `region` VALUES ('2415', '510823', '剑阁县', '281', 'J', '2');
INSERT INTO `region` VALUES ('2416', '510824', '苍溪县', '281', 'C', '2');
INSERT INTO `region` VALUES ('2417', '510903', '船山区', '282', 'C', '2');
INSERT INTO `region` VALUES ('2418', '510904', '安居区', '282', 'A', '2');
INSERT INTO `region` VALUES ('2419', '510921', '蓬溪县', '282', 'P', '2');
INSERT INTO `region` VALUES ('2420', '510922', '射洪县', '282', 'S', '2');
INSERT INTO `region` VALUES ('2421', '510923', '大英县', '282', 'D', '2');
INSERT INTO `region` VALUES ('2422', '511011', '东兴区', '283', 'D', '2');
INSERT INTO `region` VALUES ('2423', '511024', '威远县', '283', 'W', '2');
INSERT INTO `region` VALUES ('2424', '511025', '资中县', '283', 'Z', '2');
INSERT INTO `region` VALUES ('2425', '511028', '隆昌县', '283', 'L', '2');
INSERT INTO `region` VALUES ('2427', '511102', '市中区', '284', 'S', '2');
INSERT INTO `region` VALUES ('2428', '511111', '沙湾区', '284', 'S', '2');
INSERT INTO `region` VALUES ('2429', '511112', '五通桥区', '284', 'W', '2');
INSERT INTO `region` VALUES ('2430', '511113', '金口河区', '284', 'J', '2');
INSERT INTO `region` VALUES ('2431', '511123', '犍为县', '284', 'J', '2');
INSERT INTO `region` VALUES ('2432', '511124', '井研县', '284', 'J', '2');
INSERT INTO `region` VALUES ('2433', '511126', '夹江县', '284', 'J', '2');
INSERT INTO `region` VALUES ('2434', '511129', '沐川县', '284', 'M', '2');
INSERT INTO `region` VALUES ('2435', '511132', '峨边彝族自治县', '284', 'E', '2');
INSERT INTO `region` VALUES ('2436', '511133', '马边彝族自治县', '284', 'M', '2');
INSERT INTO `region` VALUES ('2437', '511181', '峨眉山市', '284', 'E', '2');
INSERT INTO `region` VALUES ('2438', '511302', '顺庆区', '285', 'S', '2');
INSERT INTO `region` VALUES ('2439', '511303', '高坪区', '285', 'G', '2');
INSERT INTO `region` VALUES ('2440', '511304', '嘉陵区', '285', 'J', '2');
INSERT INTO `region` VALUES ('2441', '511321', '南部县', '285', 'N', '2');
INSERT INTO `region` VALUES ('2442', '511322', '营山县', '285', 'Y', '2');
INSERT INTO `region` VALUES ('2443', '511323', '蓬安县', '285', 'P', '2');
INSERT INTO `region` VALUES ('2444', '511324', '仪陇县', '285', 'Y', '2');
INSERT INTO `region` VALUES ('2445', '511325', '西充县', '285', 'X', '2');
INSERT INTO `region` VALUES ('2446', '511381', '阆中市', '285', 'L', '2');
INSERT INTO `region` VALUES ('2447', '511402', '东坡区', '286', 'D', '2');
INSERT INTO `region` VALUES ('2448', '511421', '仁寿县', '286', 'R', '2');
INSERT INTO `region` VALUES ('2449', '511422', '彭山县', '286', 'P', '2');
INSERT INTO `region` VALUES ('2450', '511423', '洪雅县', '286', 'H', '2');
INSERT INTO `region` VALUES ('2451', '511424', '丹棱县', '286', 'D', '2');
INSERT INTO `region` VALUES ('2452', '511425', '青神县', '286', 'Q', '2');
INSERT INTO `region` VALUES ('2453', '511502', '翠屏区', '287', 'C', '2');
INSERT INTO `region` VALUES ('2454', '511503', '南溪区', '287', 'N', '2');
INSERT INTO `region` VALUES ('2455', '511521', '宜宾县', '287', 'Y', '2');
INSERT INTO `region` VALUES ('2456', '511523', '江安县', '287', 'J', '2');
INSERT INTO `region` VALUES ('2457', '511524', '长宁县', '287', 'C', '2');
INSERT INTO `region` VALUES ('2458', '511525', '高县', '287', 'G', '2');
INSERT INTO `region` VALUES ('2459', '511526', '珙县', '287', 'G', '2');
INSERT INTO `region` VALUES ('2460', '511527', '筠连县', '287', 'J', '2');
INSERT INTO `region` VALUES ('2461', '511528', '兴文县', '287', 'X', '2');
INSERT INTO `region` VALUES ('2462', '511529', '屏山县', '287', 'P', '2');
INSERT INTO `region` VALUES ('2463', '511602', '广安区', '288', 'G', '2');
INSERT INTO `region` VALUES ('2464', '511603', '前锋区', '288', 'Q', '2');
INSERT INTO `region` VALUES ('2465', '511621', '岳池县', '288', 'Y', '2');
INSERT INTO `region` VALUES ('2466', '511622', '武胜县', '288', 'W', '2');
INSERT INTO `region` VALUES ('2467', '511623', '邻水县', '288', 'L', '2');
INSERT INTO `region` VALUES ('2468', '511681', '华蓥市', '288', 'H', '2');
INSERT INTO `region` VALUES ('2469', '511702', '通川区', '289', 'T', '2');
INSERT INTO `region` VALUES ('2470', '511703', '达川区', '289', 'D', '2');
INSERT INTO `region` VALUES ('2471', '511722', '宣汉县', '289', 'X', '2');
INSERT INTO `region` VALUES ('2472', '511723', '开江县', '289', 'K', '2');
INSERT INTO `region` VALUES ('2473', '511724', '大竹县', '289', 'D', '2');
INSERT INTO `region` VALUES ('2474', '511725', '渠县', '289', 'Q', '2');
INSERT INTO `region` VALUES ('2475', '511781', '万源市', '289', 'W', '2');
INSERT INTO `region` VALUES ('2476', '511802', '雨城区', '290', 'Y', '2');
INSERT INTO `region` VALUES ('2477', '511803', '名山区', '290', 'M', '2');
INSERT INTO `region` VALUES ('2478', '511822', '荥经县', '290', 'Y', '2');
INSERT INTO `region` VALUES ('2479', '511823', '汉源县', '290', 'H', '2');
INSERT INTO `region` VALUES ('2480', '511824', '石棉县', '290', 'S', '2');
INSERT INTO `region` VALUES ('2481', '511825', '天全县', '290', 'T', '2');
INSERT INTO `region` VALUES ('2482', '511826', '芦山县', '290', 'L', '2');
INSERT INTO `region` VALUES ('2483', '511827', '宝兴县', '290', 'B', '2');
INSERT INTO `region` VALUES ('2484', '511902', '巴州区', '291', 'B', '2');
INSERT INTO `region` VALUES ('2485', '511903', '恩阳区', '291', 'E', '2');
INSERT INTO `region` VALUES ('2486', '511921', '通江县', '291', 'T', '2');
INSERT INTO `region` VALUES ('2487', '511922', '南江县', '291', 'N', '2');
INSERT INTO `region` VALUES ('2488', '511923', '平昌县', '291', 'P', '2');
INSERT INTO `region` VALUES ('2489', '512002', '雁江区', '292', 'Y', '2');
INSERT INTO `region` VALUES ('2490', '512021', '安岳县', '292', 'A', '2');
INSERT INTO `region` VALUES ('2491', '512022', '乐至县', '292', 'L', '2');
INSERT INTO `region` VALUES ('2492', '512081', '简阳市', '292', 'J', '2');
INSERT INTO `region` VALUES ('2493', '513221', '汶川县', '293', 'W', '2');
INSERT INTO `region` VALUES ('2494', '513222', '理县', '293', 'L', '2');
INSERT INTO `region` VALUES ('2495', '513223', '茂县', '293', 'M', '2');
INSERT INTO `region` VALUES ('2496', '513224', '松潘县', '293', 'S', '2');
INSERT INTO `region` VALUES ('2497', '513225', '九寨沟县', '293', 'J', '2');
INSERT INTO `region` VALUES ('2498', '513226', '金川县', '293', 'J', '2');
INSERT INTO `region` VALUES ('2499', '513227', '小金县', '293', 'X', '2');
INSERT INTO `region` VALUES ('2500', '513228', '黑水县', '293', 'H', '2');
INSERT INTO `region` VALUES ('2501', '513229', '马尔康县', '293', 'M', '2');
INSERT INTO `region` VALUES ('2502', '513230', '壤塘县', '293', 'R', '2');
INSERT INTO `region` VALUES ('2503', '513231', '阿坝县', '293', 'A', '2');
INSERT INTO `region` VALUES ('2504', '513232', '若尔盖县', '293', 'R', '2');
INSERT INTO `region` VALUES ('2505', '513233', '红原县', '293', 'H', '2');
INSERT INTO `region` VALUES ('2506', '513321', '康定县', '294', 'K', '2');
INSERT INTO `region` VALUES ('2507', '513322', '泸定县', '294', 'L', '2');
INSERT INTO `region` VALUES ('2508', '513323', '丹巴县', '294', 'D', '2');
INSERT INTO `region` VALUES ('2509', '513324', '九龙县', '294', 'J', '2');
INSERT INTO `region` VALUES ('2510', '513325', '雅江县', '294', 'Y', '2');
INSERT INTO `region` VALUES ('2511', '513326', '道孚县', '294', 'D', '2');
INSERT INTO `region` VALUES ('2512', '513327', '炉霍县', '294', 'L', '2');
INSERT INTO `region` VALUES ('2513', '513328', '甘孜县', '294', 'G', '2');
INSERT INTO `region` VALUES ('2514', '513329', '新龙县', '294', 'X', '2');
INSERT INTO `region` VALUES ('2515', '513330', '德格县', '294', 'D', '2');
INSERT INTO `region` VALUES ('2516', '513331', '白玉县', '294', 'B', '2');
INSERT INTO `region` VALUES ('2517', '513332', '石渠县', '294', 'S', '2');
INSERT INTO `region` VALUES ('2518', '513333', '色达县', '294', 'S', '2');
INSERT INTO `region` VALUES ('2519', '513334', '理塘县', '294', 'L', '2');
INSERT INTO `region` VALUES ('2520', '513335', '巴塘县', '294', 'B', '2');
INSERT INTO `region` VALUES ('2521', '513336', '乡城县', '294', 'X', '2');
INSERT INTO `region` VALUES ('2522', '513337', '稻城县', '294', 'D', '2');
INSERT INTO `region` VALUES ('2523', '513338', '得荣县', '294', 'D', '2');
INSERT INTO `region` VALUES ('2524', '513401', '西昌市', '295', 'X', '2');
INSERT INTO `region` VALUES ('2525', '513422', '木里藏族自治县', '295', 'M', '2');
INSERT INTO `region` VALUES ('2526', '513423', '盐源县', '295', 'Y', '2');
INSERT INTO `region` VALUES ('2527', '513424', '德昌县', '295', 'D', '2');
INSERT INTO `region` VALUES ('2528', '513425', '会理县', '295', 'H', '2');
INSERT INTO `region` VALUES ('2529', '513426', '会东县', '295', 'H', '2');
INSERT INTO `region` VALUES ('2530', '513427', '宁南县', '295', 'N', '2');
INSERT INTO `region` VALUES ('2531', '513428', '普格县', '295', 'P', '2');
INSERT INTO `region` VALUES ('2532', '513429', '布拖县', '295', 'B', '2');
INSERT INTO `region` VALUES ('2533', '513430', '金阳县', '295', 'J', '2');
INSERT INTO `region` VALUES ('2534', '513431', '昭觉县', '295', 'Z', '2');
INSERT INTO `region` VALUES ('2535', '513432', '喜德县', '295', 'X', '2');
INSERT INTO `region` VALUES ('2536', '513433', '冕宁县', '295', 'M', '2');
INSERT INTO `region` VALUES ('2537', '513434', '越西县', '295', 'Y', '2');
INSERT INTO `region` VALUES ('2538', '513435', '甘洛县', '295', 'G', '2');
INSERT INTO `region` VALUES ('2539', '513436', '美姑县', '295', 'M', '2');
INSERT INTO `region` VALUES ('2540', '513437', '雷波县', '295', 'L', '2');
INSERT INTO `region` VALUES ('2541', '520102', '南明区', '296', 'N', '2');
INSERT INTO `region` VALUES ('2542', '520103', '云岩区', '296', 'Y', '2');
INSERT INTO `region` VALUES ('2543', '520111', '花溪区', '296', 'H', '2');
INSERT INTO `region` VALUES ('2544', '520112', '乌当区', '296', 'W', '2');
INSERT INTO `region` VALUES ('2545', '520113', '白云区', '296', 'B', '2');
INSERT INTO `region` VALUES ('2546', '520115', '观山湖区', '296', 'G', '2');
INSERT INTO `region` VALUES ('2547', '520121', '开阳县', '296', 'K', '2');
INSERT INTO `region` VALUES ('2548', '520122', '息烽县', '296', 'X', '2');
INSERT INTO `region` VALUES ('2549', '520123', '修文县', '296', 'X', '2');
INSERT INTO `region` VALUES ('2550', '520181', '清镇市', '296', 'Q', '2');
INSERT INTO `region` VALUES ('2551', '520201', '钟山区', '297', 'Z', '2');
INSERT INTO `region` VALUES ('2552', '520203', '六枝特区', '297', 'L', '2');
INSERT INTO `region` VALUES ('2553', '520221', '水城县', '297', 'S', '2');
INSERT INTO `region` VALUES ('2554', '520222', '盘县', '297', 'P', '2');
INSERT INTO `region` VALUES ('2555', '520302', '红花岗区', '298', 'H', '2');
INSERT INTO `region` VALUES ('2556', '520303', '汇川区', '298', 'H', '2');
INSERT INTO `region` VALUES ('2557', '520321', '遵义县', '298', 'Z', '2');
INSERT INTO `region` VALUES ('2558', '520322', '桐梓县', '298', 'T', '2');
INSERT INTO `region` VALUES ('2559', '520323', '绥阳县', '298', 'S', '2');
INSERT INTO `region` VALUES ('2560', '520324', '正安县', '298', 'Z', '2');
INSERT INTO `region` VALUES ('2561', '520325', '道真仡佬族苗族自治县', '298', 'D', '2');
INSERT INTO `region` VALUES ('2562', '520326', '务川仡佬族苗族自治县', '298', 'W', '2');
INSERT INTO `region` VALUES ('2563', '520327', '凤冈县', '298', 'F', '2');
INSERT INTO `region` VALUES ('2564', '520328', '湄潭县', '298', 'M', '2');
INSERT INTO `region` VALUES ('2565', '520329', '余庆县', '298', 'Y', '2');
INSERT INTO `region` VALUES ('2566', '520330', '习水县', '298', 'X', '2');
INSERT INTO `region` VALUES ('2567', '520381', '赤水市', '298', 'C', '2');
INSERT INTO `region` VALUES ('2568', '520382', '仁怀市', '298', 'R', '2');
INSERT INTO `region` VALUES ('2569', '520402', '西秀区', '299', 'X', '2');
INSERT INTO `region` VALUES ('2570', '520421', '平坝县', '299', 'P', '2');
INSERT INTO `region` VALUES ('2571', '520422', '普定县', '299', 'P', '2');
INSERT INTO `region` VALUES ('2572', '520423', '镇宁布依族苗族自治县', '299', 'Z', '2');
INSERT INTO `region` VALUES ('2573', '520424', '关岭布依族苗族自治县', '299', 'G', '2');
INSERT INTO `region` VALUES ('2574', '520425', '紫云苗族布依族自治县', '299', 'Z', '2');
INSERT INTO `region` VALUES ('2575', '520502', '七星关区', '300', 'Q', '2');
INSERT INTO `region` VALUES ('2576', '520521', '大方县', '300', 'D', '2');
INSERT INTO `region` VALUES ('2577', '520522', '黔西县', '300', 'Q', '2');
INSERT INTO `region` VALUES ('2578', '520523', '金沙县', '300', 'J', '2');
INSERT INTO `region` VALUES ('2579', '520524', '织金县', '300', 'Z', '2');
INSERT INTO `region` VALUES ('2580', '520525', '纳雍县', '300', 'N', '2');
INSERT INTO `region` VALUES ('2581', '520526', '威宁彝族回族苗族自治县', '300', 'W', '2');
INSERT INTO `region` VALUES ('2582', '520527', '赫章县', '300', 'H', '2');
INSERT INTO `region` VALUES ('2583', '520602', '碧江区', '301', 'B', '2');
INSERT INTO `region` VALUES ('2584', '520603', '万山区', '301', 'W', '2');
INSERT INTO `region` VALUES ('2585', '520621', '江口县', '301', 'J', '2');
INSERT INTO `region` VALUES ('2586', '520622', '玉屏侗族自治县', '301', 'Y', '2');
INSERT INTO `region` VALUES ('2587', '520623', '石阡县', '301', 'S', '2');
INSERT INTO `region` VALUES ('2588', '520624', '思南县', '301', 'S', '2');
INSERT INTO `region` VALUES ('2589', '520625', '印江土家族苗族自治县', '301', 'Y', '2');
INSERT INTO `region` VALUES ('2590', '520626', '德江县', '301', 'D', '2');
INSERT INTO `region` VALUES ('2591', '520627', '沿河土家族自治县', '301', 'Y', '2');
INSERT INTO `region` VALUES ('2592', '520628', '松桃苗族自治县', '301', 'S', '2');
INSERT INTO `region` VALUES ('2593', '522301', '兴义市', '302', 'X', '2');
INSERT INTO `region` VALUES ('2594', '522322', '兴仁县', '302', 'X', '2');
INSERT INTO `region` VALUES ('2595', '522323', '普安县', '302', 'P', '2');
INSERT INTO `region` VALUES ('2596', '522324', '晴隆县', '302', 'Q', '2');
INSERT INTO `region` VALUES ('2597', '522325', '贞丰县', '302', 'Z', '2');
INSERT INTO `region` VALUES ('2598', '522326', '望谟县', '302', 'W', '2');
INSERT INTO `region` VALUES ('2599', '522327', '册亨县', '302', 'C', '2');
INSERT INTO `region` VALUES ('2600', '522328', '安龙县', '302', 'A', '2');
INSERT INTO `region` VALUES ('2601', '522601', '凯里市', '303', 'K', '2');
INSERT INTO `region` VALUES ('2602', '522622', '黄平县', '303', 'H', '2');
INSERT INTO `region` VALUES ('2603', '522623', '施秉县', '303', 'S', '2');
INSERT INTO `region` VALUES ('2604', '522624', '三穗县', '303', 'S', '2');
INSERT INTO `region` VALUES ('2605', '522625', '镇远县', '303', 'Z', '2');
INSERT INTO `region` VALUES ('2606', '522626', '岑巩县', '303', 'C', '2');
INSERT INTO `region` VALUES ('2607', '522627', '天柱县', '303', 'T', '2');
INSERT INTO `region` VALUES ('2608', '522628', '锦屏县', '303', 'J', '2');
INSERT INTO `region` VALUES ('2609', '522629', '剑河县', '303', 'J', '2');
INSERT INTO `region` VALUES ('2610', '522630', '台江县', '303', 'T', '2');
INSERT INTO `region` VALUES ('2611', '522631', '黎平县', '303', 'L', '2');
INSERT INTO `region` VALUES ('2612', '522632', '榕江县', '303', 'R', '2');
INSERT INTO `region` VALUES ('2613', '522633', '从江县', '303', 'C', '2');
INSERT INTO `region` VALUES ('2614', '522634', '雷山县', '303', 'L', '2');
INSERT INTO `region` VALUES ('2615', '522635', '麻江县', '303', 'M', '2');
INSERT INTO `region` VALUES ('2616', '522636', '丹寨县', '303', 'D', '2');
INSERT INTO `region` VALUES ('2617', '522701', '都匀市', '304', 'D', '2');
INSERT INTO `region` VALUES ('2618', '522702', '福泉市', '304', 'F', '2');
INSERT INTO `region` VALUES ('2619', '522722', '荔波县', '304', 'L', '2');
INSERT INTO `region` VALUES ('2620', '522723', '贵定县', '304', 'G', '2');
INSERT INTO `region` VALUES ('2621', '522725', '瓮安县', '304', 'W', '2');
INSERT INTO `region` VALUES ('2622', '522726', '独山县', '304', 'D', '2');
INSERT INTO `region` VALUES ('2623', '522727', '平塘县', '304', 'P', '2');
INSERT INTO `region` VALUES ('2624', '522728', '罗甸县', '304', 'L', '2');
INSERT INTO `region` VALUES ('2625', '522729', '长顺县', '304', 'C', '2');
INSERT INTO `region` VALUES ('2626', '522730', '龙里县', '304', 'L', '2');
INSERT INTO `region` VALUES ('2627', '522731', '惠水县', '304', 'H', '2');
INSERT INTO `region` VALUES ('2628', '522732', '三都水族自治县', '304', 'S', '2');
INSERT INTO `region` VALUES ('2629', '530102', '五华区', '305', 'W', '2');
INSERT INTO `region` VALUES ('2630', '530103', '盘龙区', '305', 'P', '2');
INSERT INTO `region` VALUES ('2631', '530111', '官渡区', '305', 'G', '2');
INSERT INTO `region` VALUES ('2632', '530112', '西山区', '305', 'X', '2');
INSERT INTO `region` VALUES ('2633', '530113', '东川区', '305', 'D', '2');
INSERT INTO `region` VALUES ('2634', '530114', '呈贡区', '305', 'C', '2');
INSERT INTO `region` VALUES ('2635', '530122', '晋宁县', '305', 'J', '2');
INSERT INTO `region` VALUES ('2636', '530124', '富民县', '305', 'F', '2');
INSERT INTO `region` VALUES ('2637', '530125', '宜良县', '305', 'Y', '2');
INSERT INTO `region` VALUES ('2638', '530126', '石林彝族自治县', '305', 'S', '2');
INSERT INTO `region` VALUES ('2639', '530127', '嵩明县', '305', 'S', '2');
INSERT INTO `region` VALUES ('2640', '530128', '禄劝彝族苗族自治县', '305', 'L', '2');
INSERT INTO `region` VALUES ('2641', '530129', '寻甸回族彝族自治县', '305', 'X', '2');
INSERT INTO `region` VALUES ('2642', '530181', '安宁市', '305', 'A', '2');
INSERT INTO `region` VALUES ('2643', '530302', '麒麟区', '306', 'Q', '2');
INSERT INTO `region` VALUES ('2644', '530321', '马龙县', '306', 'M', '2');
INSERT INTO `region` VALUES ('2645', '530322', '陆良县', '306', 'L', '2');
INSERT INTO `region` VALUES ('2646', '530323', '师宗县', '306', 'S', '2');
INSERT INTO `region` VALUES ('2647', '530324', '罗平县', '306', 'L', '2');
INSERT INTO `region` VALUES ('2648', '530325', '富源县', '306', 'F', '2');
INSERT INTO `region` VALUES ('2649', '530326', '会泽县', '306', 'H', '2');
INSERT INTO `region` VALUES ('2650', '530328', '沾益县', '306', 'Z', '2');
INSERT INTO `region` VALUES ('2651', '530381', '宣威市', '306', 'X', '2');
INSERT INTO `region` VALUES ('2652', '530402', '红塔区', '307', 'H', '2');
INSERT INTO `region` VALUES ('2653', '530421', '江川县', '307', 'J', '2');
INSERT INTO `region` VALUES ('2654', '530422', '澄江县', '307', 'C', '2');
INSERT INTO `region` VALUES ('2655', '530423', '通海县', '307', 'T', '2');
INSERT INTO `region` VALUES ('2656', '530424', '华宁县', '307', 'H', '2');
INSERT INTO `region` VALUES ('2657', '530425', '易门县', '307', 'Y', '2');
INSERT INTO `region` VALUES ('2658', '530426', '峨山彝族自治县', '307', 'E', '2');
INSERT INTO `region` VALUES ('2659', '530427', '新平彝族傣族自治县', '307', 'X', '2');
INSERT INTO `region` VALUES ('2660', '530428', '元江哈尼族彝族傣族自治县', '307', 'Y', '2');
INSERT INTO `region` VALUES ('2661', '530502', '隆阳区', '308', 'L', '2');
INSERT INTO `region` VALUES ('2662', '530521', '施甸县', '308', 'S', '2');
INSERT INTO `region` VALUES ('2663', '530522', '腾冲县', '308', 'T', '2');
INSERT INTO `region` VALUES ('2664', '530523', '龙陵县', '308', 'L', '2');
INSERT INTO `region` VALUES ('2665', '530524', '昌宁县', '308', 'C', '2');
INSERT INTO `region` VALUES ('2666', '530602', '昭阳区', '309', 'Z', '2');
INSERT INTO `region` VALUES ('2667', '530621', '鲁甸县', '309', 'L', '2');
INSERT INTO `region` VALUES ('2668', '530622', '巧家县', '309', 'Q', '2');
INSERT INTO `region` VALUES ('2669', '530623', '盐津县', '309', 'Y', '2');
INSERT INTO `region` VALUES ('2670', '530624', '大关县', '309', 'D', '2');
INSERT INTO `region` VALUES ('2671', '530625', '永善县', '309', 'Y', '2');
INSERT INTO `region` VALUES ('2672', '530626', '绥江县', '309', 'S', '2');
INSERT INTO `region` VALUES ('2673', '530627', '镇雄县', '309', 'Z', '2');
INSERT INTO `region` VALUES ('2674', '530628', '彝良县', '309', 'Y', '2');
INSERT INTO `region` VALUES ('2675', '530629', '威信县', '309', 'W', '2');
INSERT INTO `region` VALUES ('2676', '530630', '水富县', '309', 'S', '2');
INSERT INTO `region` VALUES ('2677', '530702', '古城区', '310', 'G', '2');
INSERT INTO `region` VALUES ('2678', '530721', '玉龙纳西族自治县', '310', 'Y', '2');
INSERT INTO `region` VALUES ('2679', '530722', '永胜县', '310', 'Y', '2');
INSERT INTO `region` VALUES ('2680', '530723', '华坪县', '310', 'H', '2');
INSERT INTO `region` VALUES ('2681', '530724', '宁蒗彝族自治县', '310', 'N', '2');
INSERT INTO `region` VALUES ('2682', '530802', '思茅区', '311', 'S', '2');
INSERT INTO `region` VALUES ('2683', '530821', '宁洱哈尼族彝族自治县', '311', 'N', '2');
INSERT INTO `region` VALUES ('2684', '530822', '墨江哈尼族自治县', '311', 'M', '2');
INSERT INTO `region` VALUES ('2685', '530823', '景东彝族自治县', '311', 'J', '2');
INSERT INTO `region` VALUES ('2686', '530824', '景谷傣族彝族自治县', '311', 'J', '2');
INSERT INTO `region` VALUES ('2687', '530825', '镇沅彝族哈尼族拉祜族自治县', '311', 'Z', '2');
INSERT INTO `region` VALUES ('2688', '530826', '江城哈尼族彝族自治县', '311', 'J', '2');
INSERT INTO `region` VALUES ('2689', '530827', '孟连傣族拉祜族佤族自治县', '311', 'M', '2');
INSERT INTO `region` VALUES ('2690', '530828', '澜沧拉祜族自治县', '311', 'L', '2');
INSERT INTO `region` VALUES ('2691', '530829', '西盟佤族自治县', '311', 'X', '2');
INSERT INTO `region` VALUES ('2692', '530902', '临翔区', '312', 'L', '2');
INSERT INTO `region` VALUES ('2693', '530921', '凤庆县', '312', 'F', '2');
INSERT INTO `region` VALUES ('2694', '530922', '云县', '312', 'Y', '2');
INSERT INTO `region` VALUES ('2695', '530923', '永德县', '312', 'Y', '2');
INSERT INTO `region` VALUES ('2696', '530924', '镇康县', '312', 'Z', '2');
INSERT INTO `region` VALUES ('2697', '530925', '双江拉祜族佤族布朗族傣族自治县', '312', 'S', '2');
INSERT INTO `region` VALUES ('2698', '530926', '耿马傣族佤族自治县', '312', 'G', '2');
INSERT INTO `region` VALUES ('2699', '530927', '沧源佤族自治县', '312', 'C', '2');
INSERT INTO `region` VALUES ('2700', '532301', '楚雄市', '313', 'C', '2');
INSERT INTO `region` VALUES ('2701', '532322', '双柏县', '313', 'S', '2');
INSERT INTO `region` VALUES ('2702', '532323', '牟定县', '313', 'M', '2');
INSERT INTO `region` VALUES ('2703', '532324', '南华县', '313', 'N', '2');
INSERT INTO `region` VALUES ('2704', '532325', '姚安县', '313', 'Y', '2');
INSERT INTO `region` VALUES ('2705', '532326', '大姚县', '313', 'D', '2');
INSERT INTO `region` VALUES ('2706', '532327', '永仁县', '313', 'Y', '2');
INSERT INTO `region` VALUES ('2707', '532328', '元谋县', '313', 'Y', '2');
INSERT INTO `region` VALUES ('2708', '532329', '武定县', '313', 'W', '2');
INSERT INTO `region` VALUES ('2709', '532331', '禄丰县', '313', 'L', '2');
INSERT INTO `region` VALUES ('2710', '532501', '个旧市', '314', 'G', '2');
INSERT INTO `region` VALUES ('2711', '532502', '开远市', '314', 'K', '2');
INSERT INTO `region` VALUES ('2712', '532503', '蒙自市', '314', 'M', '2');
INSERT INTO `region` VALUES ('2713', '532504', '弥勒市', '314', 'M', '2');
INSERT INTO `region` VALUES ('2714', '532523', '屏边苗族自治县', '314', 'P', '2');
INSERT INTO `region` VALUES ('2715', '532524', '建水县', '314', 'J', '2');
INSERT INTO `region` VALUES ('2716', '532525', '石屏县', '314', 'S', '2');
INSERT INTO `region` VALUES ('2717', '532527', '泸西县', '314', 'L', '2');
INSERT INTO `region` VALUES ('2718', '532528', '元阳县', '314', 'Y', '2');
INSERT INTO `region` VALUES ('2719', '532529', '红河县', '314', 'H', '2');
INSERT INTO `region` VALUES ('2720', '532530', '金平苗族瑶族傣族自治县', '314', 'J', '2');
INSERT INTO `region` VALUES ('2721', '532531', '绿春县', '314', 'L', '2');
INSERT INTO `region` VALUES ('2722', '532532', '河口瑶族自治县', '314', 'H', '2');
INSERT INTO `region` VALUES ('2723', '532601', '文山市', '315', 'W', '2');
INSERT INTO `region` VALUES ('2724', '532622', '砚山县', '315', 'Y', '2');
INSERT INTO `region` VALUES ('2725', '532623', '西畴县', '315', 'X', '2');
INSERT INTO `region` VALUES ('2726', '532624', '麻栗坡县', '315', 'M', '2');
INSERT INTO `region` VALUES ('2727', '532625', '马关县', '315', 'M', '2');
INSERT INTO `region` VALUES ('2728', '532626', '丘北县', '315', 'Q', '2');
INSERT INTO `region` VALUES ('2729', '532627', '广南县', '315', 'G', '2');
INSERT INTO `region` VALUES ('2730', '532628', '富宁县', '315', 'F', '2');
INSERT INTO `region` VALUES ('2731', '532801', '景洪市', '316', 'J', '2');
INSERT INTO `region` VALUES ('2732', '532822', '勐海县', '316', 'M', '2');
INSERT INTO `region` VALUES ('2733', '532823', '勐腊县', '316', 'M', '2');
INSERT INTO `region` VALUES ('2734', '532901', '大理市', '317', 'D', '2');
INSERT INTO `region` VALUES ('2735', '532922', '漾濞彝族自治县', '317', 'Y', '2');
INSERT INTO `region` VALUES ('2736', '532923', '祥云县', '317', 'X', '2');
INSERT INTO `region` VALUES ('2737', '532924', '宾川县', '317', 'B', '2');
INSERT INTO `region` VALUES ('2738', '532925', '弥渡县', '317', 'M', '2');
INSERT INTO `region` VALUES ('2739', '532926', '南涧彝族自治县', '317', 'N', '2');
INSERT INTO `region` VALUES ('2740', '532927', '巍山彝族回族自治县', '317', 'W', '2');
INSERT INTO `region` VALUES ('2741', '532928', '永平县', '317', 'Y', '2');
INSERT INTO `region` VALUES ('2742', '532929', '云龙县', '317', 'Y', '2');
INSERT INTO `region` VALUES ('2743', '532930', '洱源县', '317', 'E', '2');
INSERT INTO `region` VALUES ('2744', '532931', '剑川县', '317', 'J', '2');
INSERT INTO `region` VALUES ('2745', '532932', '鹤庆县', '317', 'H', '2');
INSERT INTO `region` VALUES ('2746', '533102', '瑞丽市', '318', 'R', '2');
INSERT INTO `region` VALUES ('2747', '533103', '芒市', '318', 'M', '2');
INSERT INTO `region` VALUES ('2748', '533122', '梁河县', '318', 'L', '2');
INSERT INTO `region` VALUES ('2749', '533123', '盈江县', '318', 'Y', '2');
INSERT INTO `region` VALUES ('2750', '533124', '陇川县', '318', 'L', '2');
INSERT INTO `region` VALUES ('2751', '533321', '泸水县', '319', 'L', '2');
INSERT INTO `region` VALUES ('2752', '533323', '福贡县', '319', 'F', '2');
INSERT INTO `region` VALUES ('2753', '533324', '贡山独龙族怒族自治县', '319', 'G', '2');
INSERT INTO `region` VALUES ('2754', '533325', '兰坪白族普米族自治县', '319', 'L', '2');
INSERT INTO `region` VALUES ('2755', '533421', '香格里拉县', '320', 'X', '2');
INSERT INTO `region` VALUES ('2756', '533422', '德钦县', '320', 'D', '2');
INSERT INTO `region` VALUES ('2757', '533423', '维西傈僳族自治县', '320', 'W', '2');
INSERT INTO `region` VALUES ('2758', '540102', '城关区', '321', 'C', '2');
INSERT INTO `region` VALUES ('2759', '540121', '林周县', '321', 'L', '2');
INSERT INTO `region` VALUES ('2760', '540122', '当雄县', '321', 'D', '2');
INSERT INTO `region` VALUES ('2761', '540123', '尼木县', '321', 'N', '2');
INSERT INTO `region` VALUES ('2762', '540124', '曲水县', '321', 'Q', '2');
INSERT INTO `region` VALUES ('2763', '540125', '堆龙德庆县', '321', 'D', '2');
INSERT INTO `region` VALUES ('2764', '540126', '达孜县', '321', 'D', '2');
INSERT INTO `region` VALUES ('2765', '540127', '墨竹工卡县', '321', 'M', '2');
INSERT INTO `region` VALUES ('2766', '540202', '桑珠孜区', '322', 'S', '2');
INSERT INTO `region` VALUES ('2767', '540221', '南木林县', '322', 'N', '2');
INSERT INTO `region` VALUES ('2768', '540222', '江孜县', '322', 'J', '2');
INSERT INTO `region` VALUES ('2769', '540223', '定日县', '322', 'D', '2');
INSERT INTO `region` VALUES ('2770', '540224', '萨迦县', '322', 'S', '2');
INSERT INTO `region` VALUES ('2771', '540225', '拉孜县', '322', 'L', '2');
INSERT INTO `region` VALUES ('2772', '540226', '昂仁县', '322', 'A', '2');
INSERT INTO `region` VALUES ('2773', '540227', '谢通门县', '322', 'X', '2');
INSERT INTO `region` VALUES ('2774', '540228', '白朗县', '322', 'B', '2');
INSERT INTO `region` VALUES ('2775', '540229', '仁布县', '322', 'R', '2');
INSERT INTO `region` VALUES ('2776', '540230', '康马县', '322', 'K', '2');
INSERT INTO `region` VALUES ('2777', '540231', '定结县', '322', 'D', '2');
INSERT INTO `region` VALUES ('2778', '540232', '仲巴县', '322', 'Z', '2');
INSERT INTO `region` VALUES ('2779', '540233', '亚东县', '322', 'Y', '2');
INSERT INTO `region` VALUES ('2780', '540234', '吉隆县', '322', 'J', '2');
INSERT INTO `region` VALUES ('2781', '540235', '聂拉木县', '322', 'N', '2');
INSERT INTO `region` VALUES ('2782', '540236', '萨嘎县', '322', 'S', '2');
INSERT INTO `region` VALUES ('2783', '540237', '岗巴县', '322', 'G', '2');
INSERT INTO `region` VALUES ('2784', '542121', '昌都县', '323', 'C', '2');
INSERT INTO `region` VALUES ('2785', '542122', '江达县', '323', 'J', '2');
INSERT INTO `region` VALUES ('2786', '542123', '贡觉县', '323', 'G', '2');
INSERT INTO `region` VALUES ('2787', '542124', '类乌齐县', '323', 'L', '2');
INSERT INTO `region` VALUES ('2788', '542125', '丁青县', '323', 'D', '2');
INSERT INTO `region` VALUES ('2789', '542126', '察雅县', '323', 'C', '2');
INSERT INTO `region` VALUES ('2790', '542127', '八宿县', '323', 'B', '2');
INSERT INTO `region` VALUES ('2791', '542128', '左贡县', '323', 'Z', '2');
INSERT INTO `region` VALUES ('2792', '542129', '芒康县', '323', 'M', '2');
INSERT INTO `region` VALUES ('2793', '542132', '洛隆县', '323', 'L', '2');
INSERT INTO `region` VALUES ('2794', '542133', '边坝县', '323', 'B', '2');
INSERT INTO `region` VALUES ('2795', '542221', '乃东县', '324', 'N', '2');
INSERT INTO `region` VALUES ('2796', '542222', '扎囊县', '324', 'Z', '2');
INSERT INTO `region` VALUES ('2797', '542223', '贡嘎县', '324', 'G', '2');
INSERT INTO `region` VALUES ('2798', '542224', '桑日县', '324', 'S', '2');
INSERT INTO `region` VALUES ('2799', '542225', '琼结县', '324', 'Q', '2');
INSERT INTO `region` VALUES ('2800', '542226', '曲松县', '324', 'Q', '2');
INSERT INTO `region` VALUES ('2801', '542227', '措美县', '324', 'C', '2');
INSERT INTO `region` VALUES ('2802', '542228', '洛扎县', '324', 'L', '2');
INSERT INTO `region` VALUES ('2803', '542229', '加查县', '324', 'J', '2');
INSERT INTO `region` VALUES ('2804', '542231', '隆子县', '324', 'L', '2');
INSERT INTO `region` VALUES ('2805', '542232', '错那县', '324', 'C', '2');
INSERT INTO `region` VALUES ('2806', '542233', '浪卡子县', '324', 'L', '2');
INSERT INTO `region` VALUES ('2807', '542421', '那曲县', '325', 'N', '2');
INSERT INTO `region` VALUES ('2808', '542422', '嘉黎县', '325', 'J', '2');
INSERT INTO `region` VALUES ('2809', '542423', '比如县', '325', 'B', '2');
INSERT INTO `region` VALUES ('2810', '542424', '聂荣县', '325', 'N', '2');
INSERT INTO `region` VALUES ('2811', '542425', '安多县', '325', 'A', '2');
INSERT INTO `region` VALUES ('2812', '542426', '申扎县', '325', 'S', '2');
INSERT INTO `region` VALUES ('2813', '542427', '索县', '325', 'S', '2');
INSERT INTO `region` VALUES ('2814', '542428', '班戈县', '325', 'B', '2');
INSERT INTO `region` VALUES ('2815', '542429', '巴青县', '325', 'B', '2');
INSERT INTO `region` VALUES ('2816', '542430', '尼玛县', '325', 'N', '2');
INSERT INTO `region` VALUES ('2817', '542431', '双湖县', '325', 'S', '2');
INSERT INTO `region` VALUES ('2818', '542521', '普兰县', '326', 'P', '2');
INSERT INTO `region` VALUES ('2819', '542522', '札达县', '326', 'Z', '2');
INSERT INTO `region` VALUES ('2820', '542523', '噶尔县', '326', 'G', '2');
INSERT INTO `region` VALUES ('2821', '542524', '日土县', '326', 'R', '2');
INSERT INTO `region` VALUES ('2822', '542525', '革吉县', '326', 'G', '2');
INSERT INTO `region` VALUES ('2823', '542526', '改则县', '326', 'G', '2');
INSERT INTO `region` VALUES ('2824', '542527', '措勤县', '326', 'C', '2');
INSERT INTO `region` VALUES ('2825', '542621', '林芝县', '327', 'L', '2');
INSERT INTO `region` VALUES ('2826', '542622', '工布江达县', '327', 'G', '2');
INSERT INTO `region` VALUES ('2827', '542623', '米林县', '327', 'M', '2');
INSERT INTO `region` VALUES ('2828', '542624', '墨脱县', '327', 'M', '2');
INSERT INTO `region` VALUES ('2829', '542625', '波密县', '327', 'B', '2');
INSERT INTO `region` VALUES ('2830', '542626', '察隅县', '327', 'C', '2');
INSERT INTO `region` VALUES ('2831', '542627', '朗县', '327', 'L', '2');
INSERT INTO `region` VALUES ('2832', '610103', '碑林区', '328', 'B', '2');
INSERT INTO `region` VALUES ('2833', '610104', '莲湖区', '328', 'L', '2');
INSERT INTO `region` VALUES ('2834', '610111', '灞桥区', '328', 'B', '2');
INSERT INTO `region` VALUES ('2835', '610112', '未央区', '328', 'W', '2');
INSERT INTO `region` VALUES ('2836', '610113', '雁塔区', '328', 'Y', '2');
INSERT INTO `region` VALUES ('2837', '610114', '阎良区', '328', 'Y', '2');
INSERT INTO `region` VALUES ('2838', '610115', '临潼区', '328', 'L', '2');
INSERT INTO `region` VALUES ('2839', '610122', '蓝田县', '328', 'L', '2');
INSERT INTO `region` VALUES ('2840', '610124', '周至县', '328', 'Z', '2');
INSERT INTO `region` VALUES ('2841', '610125', '户县', '328', 'H', '2');
INSERT INTO `region` VALUES ('2842', '610126', '高陵县', '328', 'G', '2');
INSERT INTO `region` VALUES ('2843', '610202', '王益区', '329', 'W', '2');
INSERT INTO `region` VALUES ('2844', '610203', '印台区', '329', 'Y', '2');
INSERT INTO `region` VALUES ('2845', '610204', '耀州区', '329', 'Y', '2');
INSERT INTO `region` VALUES ('2846', '610222', '宜君县', '329', 'Y', '2');
INSERT INTO `region` VALUES ('2847', '610302', '渭滨区', '330', 'W', '2');
INSERT INTO `region` VALUES ('2848', '610303', '金台区', '330', 'J', '2');
INSERT INTO `region` VALUES ('2849', '610304', '陈仓区', '330', 'C', '2');
INSERT INTO `region` VALUES ('2850', '610322', '凤翔县', '330', 'F', '2');
INSERT INTO `region` VALUES ('2851', '610323', '岐山县', '330', 'Q', '2');
INSERT INTO `region` VALUES ('2852', '610324', '扶风县', '330', 'F', '2');
INSERT INTO `region` VALUES ('2853', '610326', '眉县', '330', 'M', '2');
INSERT INTO `region` VALUES ('2854', '610327', '陇县', '330', 'L', '2');
INSERT INTO `region` VALUES ('2855', '610328', '千阳县', '330', 'Q', '2');
INSERT INTO `region` VALUES ('2856', '610329', '麟游县', '330', 'L', '2');
INSERT INTO `region` VALUES ('2857', '610330', '凤县', '330', 'F', '2');
INSERT INTO `region` VALUES ('2858', '610331', '太白县', '330', 'T', '2');
INSERT INTO `region` VALUES ('2859', '610402', '秦都区', '331', 'Q', '2');
INSERT INTO `region` VALUES ('2860', '610403', '杨陵区', '331', 'Y', '2');
INSERT INTO `region` VALUES ('2861', '610404', '渭城区', '331', 'W', '2');
INSERT INTO `region` VALUES ('2862', '610422', '三原县', '331', 'S', '2');
INSERT INTO `region` VALUES ('2863', '610423', '泾阳县', '331', 'J', '2');
INSERT INTO `region` VALUES ('2864', '610424', '乾县', '331', 'Q', '2');
INSERT INTO `region` VALUES ('2865', '610425', '礼泉县', '331', 'L', '2');
INSERT INTO `region` VALUES ('2866', '610426', '永寿县', '331', 'Y', '2');
INSERT INTO `region` VALUES ('2867', '610427', '彬县', '331', 'B', '2');
INSERT INTO `region` VALUES ('2868', '610428', '长武县', '331', 'C', '2');
INSERT INTO `region` VALUES ('2869', '610429', '旬邑县', '331', 'X', '2');
INSERT INTO `region` VALUES ('2870', '610430', '淳化县', '331', 'C', '2');
INSERT INTO `region` VALUES ('2871', '610431', '武功县', '331', 'W', '2');
INSERT INTO `region` VALUES ('2872', '610481', '兴平市', '331', 'X', '2');
INSERT INTO `region` VALUES ('2873', '610502', '临渭区', '332', 'L', '2');
INSERT INTO `region` VALUES ('2874', '610521', '华县', '332', 'H', '2');
INSERT INTO `region` VALUES ('2875', '610522', '潼关县', '332', 'T', '2');
INSERT INTO `region` VALUES ('2876', '610523', '大荔县', '332', 'D', '2');
INSERT INTO `region` VALUES ('2877', '610524', '合阳县', '332', 'H', '2');
INSERT INTO `region` VALUES ('2878', '610525', '澄城县', '332', 'C', '2');
INSERT INTO `region` VALUES ('2879', '610526', '蒲城县', '332', 'P', '2');
INSERT INTO `region` VALUES ('2880', '610527', '白水县', '332', 'B', '2');
INSERT INTO `region` VALUES ('2881', '610528', '富平县', '332', 'F', '2');
INSERT INTO `region` VALUES ('2882', '610581', '韩城市', '332', 'H', '2');
INSERT INTO `region` VALUES ('2883', '610582', '华阴市', '332', 'H', '2');
INSERT INTO `region` VALUES ('2884', '610602', '宝塔区', '333', 'B', '2');
INSERT INTO `region` VALUES ('2885', '610621', '延长县', '333', 'Y', '2');
INSERT INTO `region` VALUES ('2886', '610622', '延川县', '333', 'Y', '2');
INSERT INTO `region` VALUES ('2887', '610623', '子长县', '333', 'Z', '2');
INSERT INTO `region` VALUES ('2888', '610624', '安塞县', '333', 'A', '2');
INSERT INTO `region` VALUES ('2889', '610625', '志丹县', '333', 'Z', '2');
INSERT INTO `region` VALUES ('2890', '610626', '吴起县', '333', 'W', '2');
INSERT INTO `region` VALUES ('2891', '610627', '甘泉县', '333', 'G', '2');
INSERT INTO `region` VALUES ('2892', '610628', '富县', '333', 'F', '2');
INSERT INTO `region` VALUES ('2893', '610629', '洛川县', '333', 'L', '2');
INSERT INTO `region` VALUES ('2894', '610630', '宜川县', '333', 'Y', '2');
INSERT INTO `region` VALUES ('2895', '610631', '黄龙县', '333', 'H', '2');
INSERT INTO `region` VALUES ('2896', '610632', '黄陵县', '333', 'H', '2');
INSERT INTO `region` VALUES ('2897', '610702', '汉台区', '334', 'H', '2');
INSERT INTO `region` VALUES ('2898', '610721', '南郑县', '334', 'N', '2');
INSERT INTO `region` VALUES ('2899', '610722', '城固县', '334', 'C', '2');
INSERT INTO `region` VALUES ('2900', '610723', '洋县', '334', 'Y', '2');
INSERT INTO `region` VALUES ('2901', '610724', '西乡县', '334', 'X', '2');
INSERT INTO `region` VALUES ('2902', '610725', '勉县', '334', 'M', '2');
INSERT INTO `region` VALUES ('2903', '610726', '宁强县', '334', 'N', '2');
INSERT INTO `region` VALUES ('2904', '610727', '略阳县', '334', 'L', '2');
INSERT INTO `region` VALUES ('2905', '610728', '镇巴县', '334', 'Z', '2');
INSERT INTO `region` VALUES ('2906', '610729', '留坝县', '334', 'L', '2');
INSERT INTO `region` VALUES ('2907', '610730', '佛坪县', '334', 'F', '2');
INSERT INTO `region` VALUES ('2908', '610802', '榆阳区', '335', 'Y', '2');
INSERT INTO `region` VALUES ('2909', '610821', '神木县', '335', 'S', '2');
INSERT INTO `region` VALUES ('2910', '610822', '府谷县', '335', 'F', '2');
INSERT INTO `region` VALUES ('2911', '610823', '横山县', '335', 'H', '2');
INSERT INTO `region` VALUES ('2912', '610824', '靖边县', '335', 'J', '2');
INSERT INTO `region` VALUES ('2913', '610825', '定边县', '335', 'D', '2');
INSERT INTO `region` VALUES ('2914', '610826', '绥德县', '335', 'S', '2');
INSERT INTO `region` VALUES ('2915', '610827', '米脂县', '335', 'M', '2');
INSERT INTO `region` VALUES ('2916', '610828', '佳县', '335', 'J', '2');
INSERT INTO `region` VALUES ('2917', '610829', '吴堡县', '335', 'W', '2');
INSERT INTO `region` VALUES ('2918', '610830', '清涧县', '335', 'Q', '2');
INSERT INTO `region` VALUES ('2919', '610831', '子洲县', '335', 'Z', '2');
INSERT INTO `region` VALUES ('2920', '610902', '汉滨区', '336', 'H', '2');
INSERT INTO `region` VALUES ('2921', '610921', '汉阴县', '336', 'H', '2');
INSERT INTO `region` VALUES ('2922', '610922', '石泉县', '336', 'S', '2');
INSERT INTO `region` VALUES ('2923', '610923', '宁陕县', '336', 'N', '2');
INSERT INTO `region` VALUES ('2924', '610924', '紫阳县', '336', 'Z', '2');
INSERT INTO `region` VALUES ('2925', '610925', '岚皋县', '336', 'L', '2');
INSERT INTO `region` VALUES ('2926', '610926', '平利县', '336', 'P', '2');
INSERT INTO `region` VALUES ('2927', '610927', '镇坪县', '336', 'Z', '2');
INSERT INTO `region` VALUES ('2928', '610928', '旬阳县', '336', 'X', '2');
INSERT INTO `region` VALUES ('2929', '610929', '白河县', '336', 'B', '2');
INSERT INTO `region` VALUES ('2930', '611002', '商州区', '337', 'S', '2');
INSERT INTO `region` VALUES ('2931', '611021', '洛南县', '337', 'L', '2');
INSERT INTO `region` VALUES ('2932', '611022', '丹凤县', '337', 'D', '2');
INSERT INTO `region` VALUES ('2933', '611023', '商南县', '337', 'S', '2');
INSERT INTO `region` VALUES ('2934', '611024', '山阳县', '337', 'S', '2');
INSERT INTO `region` VALUES ('2935', '611025', '镇安县', '337', 'Z', '2');
INSERT INTO `region` VALUES ('2936', '611026', '柞水县', '337', 'Z', '2');
INSERT INTO `region` VALUES ('2937', '620103', '七里河区', '338', 'Q', '2');
INSERT INTO `region` VALUES ('2938', '620104', '西固区', '338', 'X', '2');
INSERT INTO `region` VALUES ('2939', '620105', '安宁区', '338', 'A', '2');
INSERT INTO `region` VALUES ('2940', '620111', '红古区', '338', 'H', '2');
INSERT INTO `region` VALUES ('2941', '620121', '永登县', '338', 'Y', '2');
INSERT INTO `region` VALUES ('2942', '620122', '皋兰县', '338', 'G', '2');
INSERT INTO `region` VALUES ('2943', '620123', '榆中县', '338', 'Y', '2');
INSERT INTO `region` VALUES ('2944', '620302', '金川区', '340', 'J', '2');
INSERT INTO `region` VALUES ('2945', '620321', '永昌县', '340', 'Y', '2');
INSERT INTO `region` VALUES ('2946', '620402', '白银区', '341', 'B', '2');
INSERT INTO `region` VALUES ('2947', '620403', '平川区', '341', 'P', '2');
INSERT INTO `region` VALUES ('2948', '620421', '靖远县', '341', 'J', '2');
INSERT INTO `region` VALUES ('2949', '620422', '会宁县', '341', 'H', '2');
INSERT INTO `region` VALUES ('2950', '620423', '景泰县', '341', 'J', '2');
INSERT INTO `region` VALUES ('2951', '620502', '秦州区', '342', 'Q', '2');
INSERT INTO `region` VALUES ('2952', '620503', '麦积区', '342', 'M', '2');
INSERT INTO `region` VALUES ('2953', '620521', '清水县', '342', 'Q', '2');
INSERT INTO `region` VALUES ('2954', '620522', '秦安县', '342', 'Q', '2');
INSERT INTO `region` VALUES ('2955', '620523', '甘谷县', '342', 'G', '2');
INSERT INTO `region` VALUES ('2956', '620524', '武山县', '342', 'W', '2');
INSERT INTO `region` VALUES ('2957', '620525', '张家川回族自治县', '342', 'Z', '2');
INSERT INTO `region` VALUES ('2958', '620602', '凉州区', '343', 'L', '2');
INSERT INTO `region` VALUES ('2959', '620621', '民勤县', '343', 'M', '2');
INSERT INTO `region` VALUES ('2960', '620622', '古浪县', '343', 'G', '2');
INSERT INTO `region` VALUES ('2961', '620623', '天祝藏族自治县', '343', 'T', '2');
INSERT INTO `region` VALUES ('2962', '620702', '甘州区', '344', 'G', '2');
INSERT INTO `region` VALUES ('2963', '620721', '肃南裕固族自治县', '344', 'S', '2');
INSERT INTO `region` VALUES ('2964', '620722', '民乐县', '344', 'M', '2');
INSERT INTO `region` VALUES ('2965', '620723', '临泽县', '344', 'L', '2');
INSERT INTO `region` VALUES ('2966', '620724', '高台县', '344', 'G', '2');
INSERT INTO `region` VALUES ('2967', '620725', '山丹县', '344', 'S', '2');
INSERT INTO `region` VALUES ('2968', '620802', '崆峒区', '345', 'K', '2');
INSERT INTO `region` VALUES ('2969', '620821', '泾川县', '345', 'J', '2');
INSERT INTO `region` VALUES ('2970', '620822', '灵台县', '345', 'L', '2');
INSERT INTO `region` VALUES ('2971', '620823', '崇信县', '345', 'C', '2');
INSERT INTO `region` VALUES ('2972', '620824', '华亭县', '345', 'H', '2');
INSERT INTO `region` VALUES ('2973', '620825', '庄浪县', '345', 'Z', '2');
INSERT INTO `region` VALUES ('2974', '620826', '静宁县', '345', 'J', '2');
INSERT INTO `region` VALUES ('2975', '620902', '肃州区', '346', 'S', '2');
INSERT INTO `region` VALUES ('2976', '620921', '金塔县', '346', 'J', '2');
INSERT INTO `region` VALUES ('2977', '620922', '瓜州县', '346', 'G', '2');
INSERT INTO `region` VALUES ('2978', '620923', '肃北蒙古族自治县', '346', 'S', '2');
INSERT INTO `region` VALUES ('2979', '620924', '阿克塞哈萨克族自治县', '346', 'A', '2');
INSERT INTO `region` VALUES ('2980', '620981', '玉门市', '346', 'Y', '2');
INSERT INTO `region` VALUES ('2981', '620982', '敦煌市', '346', 'D', '2');
INSERT INTO `region` VALUES ('2982', '621002', '西峰区', '347', 'X', '2');
INSERT INTO `region` VALUES ('2983', '621021', '庆城县', '347', 'Q', '2');
INSERT INTO `region` VALUES ('2984', '621022', '环县', '347', 'H', '2');
INSERT INTO `region` VALUES ('2985', '621023', '华池县', '347', 'H', '2');
INSERT INTO `region` VALUES ('2986', '621024', '合水县', '347', 'H', '2');
INSERT INTO `region` VALUES ('2987', '621025', '正宁县', '347', 'Z', '2');
INSERT INTO `region` VALUES ('2988', '621026', '宁县', '347', 'N', '2');
INSERT INTO `region` VALUES ('2989', '621027', '镇原县', '347', 'Z', '2');
INSERT INTO `region` VALUES ('2990', '621102', '安定区', '348', 'A', '2');
INSERT INTO `region` VALUES ('2991', '621121', '通渭县', '348', 'T', '2');
INSERT INTO `region` VALUES ('2992', '621122', '陇西县', '348', 'L', '2');
INSERT INTO `region` VALUES ('2993', '621123', '渭源县', '348', 'W', '2');
INSERT INTO `region` VALUES ('2994', '621124', '临洮县', '348', 'L', '2');
INSERT INTO `region` VALUES ('2995', '621125', '漳县', '348', 'Z', '2');
INSERT INTO `region` VALUES ('2996', '621126', '岷县', '348', 'M', '2');
INSERT INTO `region` VALUES ('2997', '621202', '武都区', '349', 'W', '2');
INSERT INTO `region` VALUES ('2998', '621221', '成县', '349', 'C', '2');
INSERT INTO `region` VALUES ('2999', '621222', '文县', '349', 'W', '2');
INSERT INTO `region` VALUES ('3000', '621223', '宕昌县', '349', 'D', '2');
INSERT INTO `region` VALUES ('3001', '621224', '康县', '349', 'K', '2');
INSERT INTO `region` VALUES ('3002', '621225', '西和县', '349', 'X', '2');
INSERT INTO `region` VALUES ('3003', '621226', '礼县', '349', 'L', '2');
INSERT INTO `region` VALUES ('3004', '621227', '徽县', '349', 'H', '2');
INSERT INTO `region` VALUES ('3005', '621228', '两当县', '349', 'L', '2');
INSERT INTO `region` VALUES ('3006', '622901', '临夏市', '350', 'L', '2');
INSERT INTO `region` VALUES ('3007', '622921', '临夏县', '350', 'L', '2');
INSERT INTO `region` VALUES ('3008', '622922', '康乐县', '350', 'K', '2');
INSERT INTO `region` VALUES ('3009', '622923', '永靖县', '350', 'Y', '2');
INSERT INTO `region` VALUES ('3010', '622924', '广河县', '350', 'G', '2');
INSERT INTO `region` VALUES ('3011', '622925', '和政县', '350', 'H', '2');
INSERT INTO `region` VALUES ('3012', '622926', '东乡族自治县', '350', 'D', '2');
INSERT INTO `region` VALUES ('3013', '622927', '积石山保安族东乡族撒拉族自治县', '350', 'J', '2');
INSERT INTO `region` VALUES ('3014', '623001', '合作市', '351', 'H', '2');
INSERT INTO `region` VALUES ('3015', '623021', '临潭县', '351', 'L', '2');
INSERT INTO `region` VALUES ('3016', '623022', '卓尼县', '351', 'Z', '2');
INSERT INTO `region` VALUES ('3017', '623023', '舟曲县', '351', 'Z', '2');
INSERT INTO `region` VALUES ('3018', '623024', '迭部县', '351', 'D', '2');
INSERT INTO `region` VALUES ('3019', '623025', '玛曲县', '351', 'M', '2');
INSERT INTO `region` VALUES ('3020', '623026', '碌曲县', '351', 'L', '2');
INSERT INTO `region` VALUES ('3021', '623027', '夏河县', '351', 'X', '2');
INSERT INTO `region` VALUES ('3022', '630102', '城东区', '352', 'C', '2');
INSERT INTO `region` VALUES ('3023', '630104', '城西区', '352', 'C', '2');
INSERT INTO `region` VALUES ('3024', '630105', '城北区', '352', 'C', '2');
INSERT INTO `region` VALUES ('3025', '630121', '大通回族土族自治县', '352', 'D', '2');
INSERT INTO `region` VALUES ('3026', '630122', '湟中县', '352', 'H', '2');
INSERT INTO `region` VALUES ('3027', '630123', '湟源县', '352', 'H', '2');
INSERT INTO `region` VALUES ('3028', '630202', '乐都区', '353', 'L', '2');
INSERT INTO `region` VALUES ('3029', '630221', '平安县', '353', 'P', '2');
INSERT INTO `region` VALUES ('3030', '630222', '民和回族土族自治县', '353', 'M', '2');
INSERT INTO `region` VALUES ('3031', '630223', '互助土族自治县', '353', 'H', '2');
INSERT INTO `region` VALUES ('3032', '630224', '化隆回族自治县', '353', 'H', '2');
INSERT INTO `region` VALUES ('3033', '630225', '循化撒拉族自治县', '353', 'X', '2');
INSERT INTO `region` VALUES ('3034', '632221', '门源回族自治县', '354', 'M', '2');
INSERT INTO `region` VALUES ('3035', '632222', '祁连县', '354', 'Q', '2');
INSERT INTO `region` VALUES ('3036', '632223', '海晏县', '354', 'H', '2');
INSERT INTO `region` VALUES ('3037', '632224', '刚察县', '354', 'G', '2');
INSERT INTO `region` VALUES ('3038', '632321', '同仁县', '355', 'T', '2');
INSERT INTO `region` VALUES ('3039', '632322', '尖扎县', '355', 'J', '2');
INSERT INTO `region` VALUES ('3040', '632323', '泽库县', '355', 'Z', '2');
INSERT INTO `region` VALUES ('3041', '632324', '河南蒙古族自治县', '355', 'H', '2');
INSERT INTO `region` VALUES ('3042', '632521', '共和县', '356', 'G', '2');
INSERT INTO `region` VALUES ('3043', '632522', '同德县', '356', 'T', '2');
INSERT INTO `region` VALUES ('3044', '632523', '贵德县', '356', 'G', '2');
INSERT INTO `region` VALUES ('3045', '632524', '兴海县', '356', 'X', '2');
INSERT INTO `region` VALUES ('3046', '632525', '贵南县', '356', 'G', '2');
INSERT INTO `region` VALUES ('3047', '632621', '玛沁县', '357', 'M', '2');
INSERT INTO `region` VALUES ('3048', '632622', '班玛县', '357', 'B', '2');
INSERT INTO `region` VALUES ('3049', '632623', '甘德县', '357', 'G', '2');
INSERT INTO `region` VALUES ('3050', '632624', '达日县', '357', 'D', '2');
INSERT INTO `region` VALUES ('3051', '632625', '久治县', '357', 'J', '2');
INSERT INTO `region` VALUES ('3052', '632626', '玛多县', '357', 'M', '2');
INSERT INTO `region` VALUES ('3053', '632701', '玉树市', '358', 'Y', '2');
INSERT INTO `region` VALUES ('3054', '632722', '杂多县', '358', 'Z', '2');
INSERT INTO `region` VALUES ('3055', '632723', '称多县', '358', 'C', '2');
INSERT INTO `region` VALUES ('3056', '632724', '治多县', '358', 'Z', '2');
INSERT INTO `region` VALUES ('3057', '632725', '囊谦县', '358', 'N', '2');
INSERT INTO `region` VALUES ('3058', '632726', '曲麻莱县', '358', 'Q', '2');
INSERT INTO `region` VALUES ('3059', '632801', '格尔木市', '359', 'G', '2');
INSERT INTO `region` VALUES ('3060', '632802', '德令哈市', '359', 'D', '2');
INSERT INTO `region` VALUES ('3061', '632821', '乌兰县', '359', 'W', '2');
INSERT INTO `region` VALUES ('3062', '632822', '都兰县', '359', 'D', '2');
INSERT INTO `region` VALUES ('3063', '632823', '天峻县', '359', 'T', '2');
INSERT INTO `region` VALUES ('3064', '640104', '兴庆区', '360', 'X', '2');
INSERT INTO `region` VALUES ('3065', '640105', '西夏区', '360', 'X', '2');
INSERT INTO `region` VALUES ('3066', '640106', '金凤区', '360', 'J', '2');
INSERT INTO `region` VALUES ('3067', '640121', '永宁县', '360', 'Y', '2');
INSERT INTO `region` VALUES ('3068', '640122', '贺兰县', '360', 'H', '2');
INSERT INTO `region` VALUES ('3069', '640181', '灵武市', '360', 'L', '2');
INSERT INTO `region` VALUES ('3070', '640202', '大武口区', '361', 'D', '2');
INSERT INTO `region` VALUES ('3071', '640205', '惠农区', '361', 'H', '2');
INSERT INTO `region` VALUES ('3072', '640221', '平罗县', '361', 'P', '2');
INSERT INTO `region` VALUES ('3073', '640302', '利通区', '362', 'L', '2');
INSERT INTO `region` VALUES ('3074', '640303', '红寺堡区', '362', 'H', '2');
INSERT INTO `region` VALUES ('3075', '640323', '盐池县', '362', 'Y', '2');
INSERT INTO `region` VALUES ('3076', '640324', '同心县', '362', 'T', '2');
INSERT INTO `region` VALUES ('3077', '640381', '青铜峡市', '362', 'Q', '2');
INSERT INTO `region` VALUES ('3078', '640402', '原州区', '363', 'Y', '2');
INSERT INTO `region` VALUES ('3079', '640422', '西吉县', '363', 'X', '2');
INSERT INTO `region` VALUES ('3080', '640423', '隆德县', '363', 'L', '2');
INSERT INTO `region` VALUES ('3081', '640424', '泾源县', '363', 'J', '2');
INSERT INTO `region` VALUES ('3082', '640425', '彭阳县', '363', 'P', '2');
INSERT INTO `region` VALUES ('3083', '640502', '沙坡头区', '364', 'S', '2');
INSERT INTO `region` VALUES ('3084', '640521', '中宁县', '364', 'Z', '2');
INSERT INTO `region` VALUES ('3085', '640522', '海原县', '364', 'H', '2');
INSERT INTO `region` VALUES ('3086', '650102', '天山区', '365', 'T', '2');
INSERT INTO `region` VALUES ('3087', '650103', '沙依巴克区', '365', 'S', '2');
INSERT INTO `region` VALUES ('3088', '650105', '水磨沟区', '365', 'S', '2');
INSERT INTO `region` VALUES ('3089', '650106', '头屯河区', '365', 'T', '2');
INSERT INTO `region` VALUES ('3090', '650107', '达坂城区', '365', 'D', '2');
INSERT INTO `region` VALUES ('3091', '650109', '米东区', '365', 'M', '2');
INSERT INTO `region` VALUES ('3092', '650121', '乌鲁木齐县', '365', 'W', '2');
INSERT INTO `region` VALUES ('3093', '650202', '独山子区', '366', 'D', '2');
INSERT INTO `region` VALUES ('3094', '650203', '克拉玛依区', '366', 'K', '2');
INSERT INTO `region` VALUES ('3095', '650204', '白碱滩区', '366', 'B', '2');
INSERT INTO `region` VALUES ('3096', '650205', '乌尔禾区', '366', 'W', '2');
INSERT INTO `region` VALUES ('3097', '652101', '吐鲁番市', '367', 'T', '2');
INSERT INTO `region` VALUES ('3098', '652122', '鄯善县', '367', 'S', '2');
INSERT INTO `region` VALUES ('3099', '652123', '托克逊县', '367', 'T', '2');
INSERT INTO `region` VALUES ('3100', '652201', '哈密市', '368', 'H', '2');
INSERT INTO `region` VALUES ('3101', '652222', '巴里坤哈萨克自治县', '368', 'B', '2');
INSERT INTO `region` VALUES ('3102', '652223', '伊吾县', '368', 'Y', '2');
INSERT INTO `region` VALUES ('3103', '652301', '昌吉市', '369', 'C', '2');
INSERT INTO `region` VALUES ('3104', '652302', '阜康市', '369', 'F', '2');
INSERT INTO `region` VALUES ('3105', '652323', '呼图壁县', '369', 'H', '2');
INSERT INTO `region` VALUES ('3106', '652324', '玛纳斯县', '369', 'M', '2');
INSERT INTO `region` VALUES ('3107', '652325', '奇台县', '369', 'Q', '2');
INSERT INTO `region` VALUES ('3108', '652327', '吉木萨尔县', '369', 'J', '2');
INSERT INTO `region` VALUES ('3109', '652328', '木垒哈萨克自治县', '369', 'M', '2');
INSERT INTO `region` VALUES ('3110', '652701', '博乐市', '370', 'B', '2');
INSERT INTO `region` VALUES ('3111', '652702', '阿拉山口市', '370', 'A', '2');
INSERT INTO `region` VALUES ('3112', '652722', '精河县', '370', 'J', '2');
INSERT INTO `region` VALUES ('3113', '652723', '温泉县', '370', 'W', '2');
INSERT INTO `region` VALUES ('3114', '652801', '库尔勒市', '371', 'K', '2');
INSERT INTO `region` VALUES ('3115', '652822', '轮台县', '371', 'L', '2');
INSERT INTO `region` VALUES ('3116', '652823', '尉犁县', '371', 'W', '2');
INSERT INTO `region` VALUES ('3117', '652824', '若羌县', '371', 'R', '2');
INSERT INTO `region` VALUES ('3118', '652825', '且末县', '371', 'Q', '2');
INSERT INTO `region` VALUES ('3119', '652826', '焉耆回族自治县', '371', 'Y', '2');
INSERT INTO `region` VALUES ('3120', '652827', '和静县', '371', 'H', '2');
INSERT INTO `region` VALUES ('3121', '652828', '和硕县', '371', 'H', '2');
INSERT INTO `region` VALUES ('3122', '652829', '博湖县', '371', 'B', '2');
INSERT INTO `region` VALUES ('3123', '652901', '阿克苏市', '372', 'A', '2');
INSERT INTO `region` VALUES ('3124', '652922', '温宿县', '372', 'W', '2');
INSERT INTO `region` VALUES ('3125', '652923', '库车县', '372', 'K', '2');
INSERT INTO `region` VALUES ('3126', '652924', '沙雅县', '372', 'S', '2');
INSERT INTO `region` VALUES ('3127', '652925', '新和县', '372', 'X', '2');
INSERT INTO `region` VALUES ('3128', '652926', '拜城县', '372', 'B', '2');
INSERT INTO `region` VALUES ('3129', '652927', '乌什县', '372', 'W', '2');
INSERT INTO `region` VALUES ('3130', '652928', '阿瓦提县', '372', 'A', '2');
INSERT INTO `region` VALUES ('3131', '652929', '柯坪县', '372', 'K', '2');
INSERT INTO `region` VALUES ('3132', '653001', '阿图什市', '373', 'A', '2');
INSERT INTO `region` VALUES ('3133', '653022', '阿克陶县', '373', 'A', '2');
INSERT INTO `region` VALUES ('3134', '653023', '阿合奇县', '373', 'A', '2');
INSERT INTO `region` VALUES ('3135', '653024', '乌恰县', '373', 'W', '2');
INSERT INTO `region` VALUES ('3136', '653101', '喀什市', '374', 'K', '2');
INSERT INTO `region` VALUES ('3137', '653121', '疏附县', '374', 'S', '2');
INSERT INTO `region` VALUES ('3138', '653122', '疏勒县', '374', 'S', '2');
INSERT INTO `region` VALUES ('3139', '653123', '英吉沙县', '374', 'Y', '2');
INSERT INTO `region` VALUES ('3140', '653124', '泽普县', '374', 'Z', '2');
INSERT INTO `region` VALUES ('3141', '653125', '莎车县', '374', 'S', '2');
INSERT INTO `region` VALUES ('3142', '653126', '叶城县', '374', 'Y', '2');
INSERT INTO `region` VALUES ('3143', '653127', '麦盖提县', '374', 'M', '2');
INSERT INTO `region` VALUES ('3144', '653128', '岳普湖县', '374', 'Y', '2');
INSERT INTO `region` VALUES ('3145', '653129', '伽师县', '374', 'G', '2');
INSERT INTO `region` VALUES ('3146', '653130', '巴楚县', '374', 'B', '2');
INSERT INTO `region` VALUES ('3147', '653131', '塔什库尔干塔吉克自治县', '374', 'T', '2');
INSERT INTO `region` VALUES ('3148', '653201', '和田市', '375', 'H', '2');
INSERT INTO `region` VALUES ('3149', '653221', '和田县', '375', 'H', '2');
INSERT INTO `region` VALUES ('3150', '653222', '墨玉县', '375', 'M', '2');
INSERT INTO `region` VALUES ('3151', '653223', '皮山县', '375', 'P', '2');
INSERT INTO `region` VALUES ('3152', '653224', '洛浦县', '375', 'L', '2');
INSERT INTO `region` VALUES ('3153', '653225', '策勒县', '375', 'C', '2');
INSERT INTO `region` VALUES ('3154', '653226', '于田县', '375', 'Y', '2');
INSERT INTO `region` VALUES ('3155', '653227', '民丰县', '375', 'M', '2');
INSERT INTO `region` VALUES ('3156', '654002', '伊宁市', '376', 'Y', '2');
INSERT INTO `region` VALUES ('3157', '654003', '奎屯市', '376', 'K', '2');
INSERT INTO `region` VALUES ('3158', '654021', '伊宁县', '376', 'Y', '2');
INSERT INTO `region` VALUES ('3159', '654022', '察布查尔锡伯自治县', '376', 'C', '2');
INSERT INTO `region` VALUES ('3160', '654023', '霍城县', '376', 'H', '2');
INSERT INTO `region` VALUES ('3161', '654024', '巩留县', '376', 'G', '2');
INSERT INTO `region` VALUES ('3162', '654025', '新源县', '376', 'X', '2');
INSERT INTO `region` VALUES ('3163', '654026', '昭苏县', '376', 'Z', '2');
INSERT INTO `region` VALUES ('3164', '654027', '特克斯县', '376', 'T', '2');
INSERT INTO `region` VALUES ('3165', '654028', '尼勒克县', '376', 'N', '2');
INSERT INTO `region` VALUES ('3166', '654201', '塔城市', '377', 'T', '2');
INSERT INTO `region` VALUES ('3167', '654202', '乌苏市', '377', 'W', '2');
INSERT INTO `region` VALUES ('3168', '654221', '额敏县', '377', 'E', '2');
INSERT INTO `region` VALUES ('3169', '654223', '沙湾县', '377', 'S', '2');
INSERT INTO `region` VALUES ('3170', '654224', '托里县', '377', 'T', '2');
INSERT INTO `region` VALUES ('3171', '654225', '裕民县', '377', 'Y', '2');
INSERT INTO `region` VALUES ('3172', '654226', '和布克赛尔蒙古自治县', '377', 'H', '2');
INSERT INTO `region` VALUES ('3173', '654301', '阿勒泰市', '378', 'A', '2');
INSERT INTO `region` VALUES ('3174', '654321', '布尔津县', '378', 'B', '2');
INSERT INTO `region` VALUES ('3175', '654322', '富蕴县', '378', 'F', '2');
INSERT INTO `region` VALUES ('3176', '654323', '福海县', '378', 'F', '2');
INSERT INTO `region` VALUES ('3177', '654324', '哈巴河县', '378', 'H', '2');
INSERT INTO `region` VALUES ('3178', '654325', '青河县', '378', 'Q', '2');
INSERT INTO `region` VALUES ('3179', '654326', '吉木乃县', '378', 'J', '2');
INSERT INTO `region` VALUES ('3180', '659001', '石河子市', '379', 'S', '2');
INSERT INTO `region` VALUES ('3181', '659002', '阿拉尔市', '379', 'A', '2');
INSERT INTO `region` VALUES ('3182', '659003', '图木舒克市', '379', 'T', '2');
INSERT INTO `region` VALUES ('3183', '659004', '五家渠市', '379', 'W', '2');
INSERT INTO `region` VALUES ('3184', '440305', '南山区', '236', 'N', '2');
INSERT INTO `region` VALUES ('3185', '441502', '城区', '246', 'C', '2');

-- ----------------------------
-- Table structure for sys_admin
-- ----------------------------
DROP TABLE IF EXISTS `sys_admin`;
CREATE TABLE `sys_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(255) NOT NULL DEFAULT '' COMMENT '密码',
  `nickname` varchar(100) NOT NULL DEFAULT '' COMMENT '昵称',
  `type` tinyint(4) DEFAULT '1' COMMENT '管理员分类：1系统管理员2网红管理员3广告主管理员',
  `qq` varchar(30) DEFAULT '' COMMENT '客服QQ',
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
INSERT INTO `sys_admin` VALUES ('1', 'admin', '$2y$10$gcM59gn/8fF7loOVC1a.QuffmG1wM1hKl.OpBc6BdiCh2Fz1WawRa', '超管', '1', '', '1', '1', 'NUpLpFBJYvFzJHS5xSLyiM51bdN5M40PLMLqBa5rGFDwTqn7FYN652F4LeCc', '2016-11-15 09:17:38', '2016-12-27 16:24:43', '127.0.0.1');
INSERT INTO `sys_admin` VALUES ('2', 'xingyonghe', '$2y$10$1gGSm8H9xJx3/butYr/KheO2.gPnmh8prxOQ0AcPaXL0AgINKxM0m', '风影', '3', '365754061', '2', '1', 'KNYnalxXCJmMIp7OTmQywx2ybHgoaFLQPR27QqRmnGrfqeqr8zFh1Jdrxcaf', '2016-11-16 03:30:16', '2016-11-17 02:16:55', '127.0.0.1');
INSERT INTO `sys_admin` VALUES ('3', 'xingyingfeng', '$2y$10$6m.iqImB7wikG6L0SVJPt.pM0kdRQvvNzMvZWq4ETHw628LNycZ6C', '永和测试', '1', '1342234898', '2', '1', null, '2016-11-16 03:33:25', '2016-11-16 03:33:25', '');

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
INSERT INTO `sys_auth_group` VALUES ('2', '市场部', '市场部', '1', '[\"1\",\"13\",\"15\",\"41\",\"16\",\"17\",\"18\",\"12\",\"11\",\"19\",\"42\",\"43\",\"45\",\"46\",\"47\",\"20\",\"54\"]');
INSERT INTO `sys_auth_group` VALUES ('3', '技术部', '技术部', '1', '[\"1\",\"13\",\"15\",\"41\",\"16\",\"17\",\"18\",\"12\",\"11\",\"19\",\"42\",\"43\",\"45\",\"46\",\"47\",\"20\",\"54\"]');

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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COMMENT='权限规则';

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
INSERT INTO `sys_auth_rule` VALUES ('47', '审核', 'admin.ads.verify', '1');
INSERT INTO `sys_auth_rule` VALUES ('48', '更新', 'admin.config.post', '1');
INSERT INTO `sys_auth_rule` VALUES ('49', '更新排序', 'admin.config.order', '1');
INSERT INTO `sys_auth_rule` VALUES ('50', '新增', 'article.category.create', '1');
INSERT INTO `sys_auth_rule` VALUES ('51', '修改', 'article.category.edit', '1');
INSERT INTO `sys_auth_rule` VALUES ('52', '详情', 'admin.ads.show', '1');
INSERT INTO `sys_auth_rule` VALUES ('53', '审核', 'admin.netred.verify', '1');
INSERT INTO `sys_auth_rule` VALUES ('54', '详情', 'admin.netred.show', '1');
INSERT INTO `sys_auth_rule` VALUES ('55', '排序', 'admin.menu.sort', '1');
INSERT INTO `sys_auth_rule` VALUES ('56', '更新', 'article.setting.update', '1');
INSERT INTO `sys_auth_rule` VALUES ('57', '删除', 'admin.article.destroy', '1');
INSERT INTO `sys_auth_rule` VALUES ('58', '更新', 'admin.article.update', '1');
INSERT INTO `sys_auth_rule` VALUES ('59', '修改', 'admin.article.edit', '1');
INSERT INTO `sys_auth_rule` VALUES ('60', '删除', 'article.category.destroy', '1');
INSERT INTO `sys_auth_rule` VALUES ('61', '更新', 'article.category.update', '1');
INSERT INTO `sys_auth_rule` VALUES ('62', '更新排序', 'admin.menu.order', '1');
INSERT INTO `sys_auth_rule` VALUES ('63', '网红列表', 'admin.netred.index', '1');
INSERT INTO `sys_auth_rule` VALUES ('64', '分类管理', 'article.category.index', '1');
INSERT INTO `sys_auth_rule` VALUES ('65', '广告主列表', 'admin.ads.index', '1');
INSERT INTO `sys_auth_rule` VALUES ('66', '模块配置', 'article.setting.index', '1');
INSERT INTO `sys_auth_rule` VALUES ('67', '内容', 'admin.article.index', '2');
INSERT INTO `sys_auth_rule` VALUES ('68', '新增内容', 'admin.article.create', '1');
INSERT INTO `sys_auth_rule` VALUES ('69', '导航管理', 'admin.channel.index', '1');
INSERT INTO `sys_auth_rule` VALUES ('70', '内容信息', 'admin.article.index', '1');
INSERT INTO `sys_auth_rule` VALUES ('71', '回收站', 'admin.article.recycle', '1');

-- ----------------------------
-- Table structure for sys_channel
-- ----------------------------
DROP TABLE IF EXISTS `sys_channel`;
CREATE TABLE `sys_channel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '导航标题',
  `url` varchar(150) NOT NULL DEFAULT '' COMMENT '导航链接',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '排序',
  `status` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否隐藏:1显示，0隐藏',
  `target` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否新窗口打开:0否，1是',
  `remark` varchar(150) NOT NULL DEFAULT '' COMMENT '导航备注',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COMMENT='导航';

-- ----------------------------
-- Records of sys_channel
-- ----------------------------
INSERT INTO `sys_channel` VALUES ('1', '首页', 'home.index.index', '1', '1', '0', '', '2016-11-21 17:55:18', '2016-11-22 10:58:55');
INSERT INTO `sys_channel` VALUES ('2', '网红推荐', 'home.rednet.index', '2', '1', '0', '', '2016-11-21 17:55:41', '2016-12-08 12:49:28');
INSERT INTO `sys_channel` VALUES ('3', '客户案例', 'home.case.index', '3', '1', '0', '', '2016-11-22 15:43:43', '2016-12-08 12:49:52');
INSERT INTO `sys_channel` VALUES ('4', '广告主', 'home.ads.index', '4', '1', '0', '', '2016-11-22 15:44:05', '2016-12-08 12:49:58');
INSERT INTO `sys_channel` VALUES ('6', '网红入驻', 'home.enter.index', '5', '1', '0', '', '2016-11-22 15:45:15', '2016-12-08 12:50:06');

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
  `module` varchar(20) NOT NULL DEFAULT '' COMMENT '所属模块',
  `value` varchar(300) NOT NULL DEFAULT '' COMMENT '配置值',
  `extra` varchar(300) NOT NULL DEFAULT '' COMMENT '配置项',
  `remark` varchar(150) NOT NULL DEFAULT '' COMMENT '配置说明',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COMMENT='网站配置';

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES ('1', '配置类型列表', 'CONFIG_TYPE_LIST', '0', '3', '1', 'system', '1:数字\r\n2:字符\r\n3:文本\r\n4:枚举\r\n5:图片', '', '主要用于数据解析和页面表单的生成', '2016-11-14 13:32:11', '2016-11-14 13:41:33');
INSERT INTO `sys_config` VALUES ('2', '配置分组', 'CONFIG_GROUP_LIST', '0', '3', '1', 'system', '1:基本\r\n2:系统\r\n3:模块', '', '配置分组', '2016-11-14 13:40:43', '2016-11-18 11:52:16');
INSERT INTO `sys_config` VALUES ('3', '后台系统列表页数目', 'SYSTEM_LIST_LIMIT', '0', '1', '1', 'system', '10', '', '后台非模块部分列表页数目', '2016-11-14 13:48:10', '2016-11-17 03:33:00');
INSERT INTO `sys_config` VALUES ('4', '网站LOGO', 'WEB_SITE_LOGO', '0', '5', '2', 'system', '', '', '网站LOGO', '2016-11-14 13:49:36', '2016-11-14 13:49:36');
INSERT INTO `sys_config` VALUES ('5', '网站域名地址', 'WEB_SITE_URL', '0', '2', '2', 'system', 'http://www.bohan.com', '', '网站域名地址', '2016-11-14 13:50:27', '2016-11-14 13:50:27');
INSERT INTO `sys_config` VALUES ('6', '网站名称', 'WEB_SITE_TITLE', '0', '2', '2', 'system', '策推互动', '', '网站标题前台显示标题', '2016-11-17 02:27:55', '2016-12-08 08:59:03');
INSERT INTO `sys_config` VALUES ('9', '资源审核', 'USER_MEDIA_VERIFY', '0', '4', '3', 'star', '1', '0:不需要\r\n1:需要', '新增自媒体是否需要后台管理员审核', '2016-11-17 02:31:48', '2016-12-27 20:35:29');
INSERT INTO `sys_config` VALUES ('11', '网站模块', 'CONFIG_MODULE_LIST', '0', '3', '1', 'system', 'system:系统\r\narticle:内容\r\nuser:会员\r\nstar:资源', '', '网站主要模块，用于网站模块设置', '2016-11-18 11:32:04', '2016-12-24 16:09:01');
INSERT INTO `sys_config` VALUES ('12', '前台分页数量', 'ARTICLE_PAGE_NUM', '0', '1', '3', 'article', '10', '', '前台列表分页数量', '2016-11-18 16:56:37', '2016-11-18 17:06:25');
INSERT INTO `sys_config` VALUES ('15', '资源风格', 'NETRED_STYLE', '0', '3', '3', 'star', '1:明星/名人\r\n2:段子手\r\n3:娱乐搞笑\r\n4:时尚搭配\r\n5:美容美妆\r\n6:游戏/动漫     \r\n7:影视/音乐\r\n8:体育/健身\r\n9:美食\r\n10:户外/旅行\r\n11:母婴/育儿\r\n12:汽车\r\n13:摄影\r\n14:金融/理财\r\n15:教育\r\n16:其他', '', '', '2016-12-24 13:58:08', '2016-12-24 18:18:36');
INSERT INTO `sys_config` VALUES ('16', '活动广告类型', 'ADS_TASK_TYPE', '0', '3', '3', 'star', '1:电商\r\n2:APP\r\n3:游戏\r\n4:金融\r\n5:品牌推广\r\n6:发布会', '', '', '2016-12-27 16:27:49', '2016-12-27 20:38:13');
INSERT INTO `sys_config` VALUES ('17', '资源类型', 'NETRED_TYPE', '0', '3', '3', 'star', '1:直播\r\n2:短视频', '', '资源类型和广告投放类型都要用到', '2016-12-27 20:34:01', '2016-12-27 20:34:01');
INSERT INTO `sys_config` VALUES ('18', '活动审核', 'ADS_TASK_VERIFY', '0', '4', '3', 'star', '1', '不需要\r\n需要', '', '2016-12-27 20:36:52', '2016-12-27 20:36:52');

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
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COMMENT='系统菜单';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '首页', '0', '1', 'admin.index.index', '0', 'icon-home', '');
INSERT INTO `sys_menu` VALUES ('2', '系统', '0', '5', 'admin.menu.index', '0', 'icon-cogs', '');
INSERT INTO `sys_menu` VALUES ('3', '用户', '0', '2', 'admin.netred.index', '0', 'icon-user', '');
INSERT INTO `sys_menu` VALUES ('4', '菜单管理', '2', '1', 'admin.menu.index', '0', '', '系统设置');
INSERT INTO `sys_menu` VALUES ('5', '新增', '4', '0', 'admin.menu.create', '1', '', '系统设置');
INSERT INTO `sys_menu` VALUES ('6', '编辑', '4', '0', 'admin.menu.edit', '1', '', '系统设置');
INSERT INTO `sys_menu` VALUES ('7', '更新', '4', '0', 'admin.menu.update', '1', '', '系统设置');
INSERT INTO `sys_menu` VALUES ('8', '网站配置', '2', '2', 'admin.config.index', '0', '', '系统设置');
INSERT INTO `sys_menu` VALUES ('9', '网站设置', '2', '3', 'admin.config.setting', '0', '', '系统设置');
INSERT INTO `sys_menu` VALUES ('10', '管理员', '3', '4', 'admin.warden.index', '0', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('11', '批量新增', '4', '0', 'admin.menu.batch', '1', '', '系统设置');
INSERT INTO `sys_menu` VALUES ('12', '批量更新', '4', '0', 'admin.menu.submit', '1', '', '系统设置');
INSERT INTO `sys_menu` VALUES ('13', '新增', '10', '0', 'admin.warden.create', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('14', '添加', '10', '0', 'admin.warden.add', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('15', '修改', '10', '0', 'admin.warden.edit', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('16', '更新', '10', '0', 'admin.warden.update', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('17', '禁用', '10', '0', 'admin.warden.forbid', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('18', '启用', '10', '0', 'admin.warden.resume', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('19', '删除', '10', '0', 'admin.warden.destroy', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('20', '重置密码', '10', '0', 'admin.warden.resetpass', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('21', '更新密码', '10', '0', 'admin.warden.change', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('22', '用户组', '3', '5', 'admin.group.index', '0', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('23', '新增', '22', '0', 'admin.group.create', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('24', '修改', '22', '0', 'admin.group.edit', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('25', '更新', '22', '0', 'admin.group.update', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('26', '删除', '22', '0', 'admin.group.destroy', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('27', '用户授权', '22', '0', 'admin.group.access', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('28', '更新权限', '22', '0', 'admin.group.write', '1', '', '权限管理');
INSERT INTO `sys_menu` VALUES ('29', '删除', '4', '0', 'admin.menu.destroy', '1', '', '系统设置');
INSERT INTO `sys_menu` VALUES ('30', '新增', '8', '0', 'admin.config.create', '0', '', '系统设置');
INSERT INTO `sys_menu` VALUES ('31', '修改', '8', '0', 'admin.config.edit', '1', '', '系统设置');
INSERT INTO `sys_menu` VALUES ('32', '更新', '8', '0', 'admin.config.update', '1', '', '系统设置');
INSERT INTO `sys_menu` VALUES ('33', '排序', '8', '0', 'admin.config.sort', '1', '', '系统设置');
INSERT INTO `sys_menu` VALUES ('34', '更新排序', '8', '0', 'admin.config.order', '1', '', '系统设置');
INSERT INTO `sys_menu` VALUES ('35', '更新', '9', '0', 'admin.config.post', '1', '', '系统设置');
INSERT INTO `sys_menu` VALUES ('36', '内容', '0', '4', 'admin.article.index', '0', 'icon-file', '');
INSERT INTO `sys_menu` VALUES ('37', '分类管理', '36', '1', 'article.category.index', '0', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('38', '模块配置', '36', '2', 'article.setting.index', '0', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('39', '新增内容', '36', '3', 'admin.article.create', '0', '', '内容管理');
INSERT INTO `sys_menu` VALUES ('40', '内容信息', '36', '4', 'admin.article.index', '0', '', '内容管理');
INSERT INTO `sys_menu` VALUES ('41', '回收站', '36', '5', 'admin.article.recycle', '0', '', '内容管理');
INSERT INTO `sys_menu` VALUES ('58', '新增', '37', '0', 'article.category.create', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('59', '修改', '37', '0', 'article.category.edit', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('60', '更新', '37', '0', 'article.category.update', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('61', '删除', '37', '0', 'article.category.destroy', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('63', '修改', '40', '0', 'admin.article.edit', '0', '', '内容管理');
INSERT INTO `sys_menu` VALUES ('64', '更新', '40', '0', 'admin.article.update', '0', '', '内容管理');
INSERT INTO `sys_menu` VALUES ('65', '删除', '40', '0', 'admin.article.destroy', '0', '', '内容管理');
INSERT INTO `sys_menu` VALUES ('67', '更新', '38', '0', 'article.setting.update', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('68', '排序', '4', '0', 'admin.menu.sort', '1', '', '系统设置');
INSERT INTO `sys_menu` VALUES ('69', '更新排序', '4', '0', 'admin.menu.order', '1', '', '系统设置');
INSERT INTO `sys_menu` VALUES ('70', '导航管理', '2', '4', 'admin.channel.index', '0', '', '系统设置');
INSERT INTO `sys_menu` VALUES ('82', '网红列表', '3', '2', 'admin.netred.index', '0', '', '用户管理');
INSERT INTO `sys_menu` VALUES ('83', '详情', '82', '0', 'admin.netred.show', '1', '', '用户管理');
INSERT INTO `sys_menu` VALUES ('84', '审核', '82', '0', 'admin.netred.verify', '1', '', '用户管理');
INSERT INTO `sys_menu` VALUES ('85', '广告主列表', '3', '3', 'admin.ads.index', '0', '', '用户管理');
INSERT INTO `sys_menu` VALUES ('86', '详情', '85', '0', 'admin.ads.show', '1', '', '用户管理');
INSERT INTO `sys_menu` VALUES ('87', '审核', '85', '0', 'admin.ads.verify', '1', '', '用户管理');
INSERT INTO `sys_menu` VALUES ('88', '平台管理', '96', '3', 'admin.platform.index', '0', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('89', '新增', '88', '0', 'admin.platform.create', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('90', '编辑', '88', '0', 'admin.platform.edit', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('91', '更新', '88', '0', 'admin.platform.update', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('92', '删除', '88', '0', 'admin.platform.destroy', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('93', '排序', '88', '0', 'admin.platform.sort', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('94', '更新排序', '88', '0', 'admin.platform.order', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('95', '模块配置', '3', '0', 'user.setting.index', '0', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('96', '资源', '0', '3', 'admin.star.index', '0', 'icon-star', '');
INSERT INTO `sys_menu` VALUES ('97', '分类管理', '96', '2', 'star.category.index', '0', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('98', '模块配置', '96', '1', 'star.setting.index', '0', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('99', '资源列表', '96', '5', 'admin.star.index', '0', '', '资源管理');
INSERT INTO `sys_menu` VALUES ('100', '等待审核', '96', '6', 'admin.star.verify', '0', '', '资源管理');
INSERT INTO `sys_menu` VALUES ('101', '回收站', '96', '7', 'admin.star.recycle', '0', '', '资源管理');
INSERT INTO `sys_menu` VALUES ('102', '新增', '97', '0', 'star.category.create', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('103', '修改', '97', '0', 'star.category.edit', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('104', '更新', '97', '0', 'star.category.update', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('105', '删除', '97', '0', 'star.category.destroy', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('106', '更新', '98', '0', 'star.setting.update', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('107', '新增', '99', '0', 'admin.star.index', '0', '', '资源管理');
INSERT INTO `sys_menu` VALUES ('108', '修改', '99', '0', 'admin.star.edit', '0', '', '资源管理');
INSERT INTO `sys_menu` VALUES ('109', '更新', '99', '0', 'admin.star.update', '0', '', '资源管理');
INSERT INTO `sys_menu` VALUES ('110', '删除', '99', '0', 'admin.star.destroy', '0', '', '资源管理');
INSERT INTO `sys_menu` VALUES ('111', '审核', '100', '0', 'admin.star.show', '0', '', '资源管理');
INSERT INTO `sys_menu` VALUES ('112', '通过', '100', '0', 'admin.star.pass', '0', '', '资源管理');
INSERT INTO `sys_menu` VALUES ('113', '拒绝', '100', '0', 'admin.star.refuse', '0', '', '资源管理');
INSERT INTO `sys_menu` VALUES ('114', '广告形式', '96', '4', 'admin.adform.index', '0', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('115', '新增', '114', '0', 'admin.adform.create', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('116', '修改', '114', '0', 'admin.adform.edit', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('117', '更新', '114', '0', 'admin.adform.update', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('118', '删除', '114', '0', 'admin.adform.destroy', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('119', '排序', '114', '0', 'admin.adform.sort', '1', '', '模块设置');
INSERT INTO `sys_menu` VALUES ('120', '更新排序', '114', '0', 'admin.adform.order', '1', '', '模块设置');

-- ----------------------------
-- Table structure for sys_seo
-- ----------------------------
DROP TABLE IF EXISTS `sys_seo`;
CREATE TABLE `sys_seo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '名称',
  `key` varchar(50) NOT NULL DEFAULT '' COMMENT '标识',
  `title` varchar(200) NOT NULL DEFAULT '' COMMENT '网站title',
  `keywords` varchar(500) NOT NULL DEFAULT '' COMMENT '网站keywords',
  `description` varchar(1000) NOT NULL DEFAULT '' COMMENT '网站description',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='SEO设置';

-- ----------------------------
-- Records of sys_seo
-- ----------------------------
INSERT INTO `sys_seo` VALUES ('1', '网站首页', 'WEB_INDEX', '{sitename}', '{sitename},{sitemedia},{siteads}', '{sitename}汇集超过1000万{sitemedia}供您挑选，欢迎{siteads}、{sitemedia}加入{sitename}营销平台', '2016-11-22 11:21:16', '2016-11-22 11:21:16');

-- ----------------------------
-- Table structure for sys_seo_name
-- ----------------------------
DROP TABLE IF EXISTS `sys_seo_name`;
CREATE TABLE `sys_seo_name` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '名称',
  `variable` varchar(100) NOT NULL COMMENT '变量',
  `confines` varchar(255) NOT NULL COMMENT '应用范围',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='SEO变量';

-- ----------------------------
-- Records of sys_seo_name
-- ----------------------------
INSERT INTO `sys_seo_name` VALUES ('1', '站点名称', '{sitename}', '全站', '2016-11-22 11:47:15', '2016-11-22 11:47:15');
INSERT INTO `sys_seo_name` VALUES ('2', '自媒体', '{sitemedia}', '全站', '2016-11-22 11:47:56', '2016-11-22 11:47:56');
INSERT INTO `sys_seo_name` VALUES ('3', '广告主', '{siteads}', '全站', '2016-11-22 11:48:44', '2016-11-22 11:48:44');

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
INSERT INTO `user` VALUES ('2', '13667635645', '$2y$10$D6JkE5X1i.ShnE5igAaNVOt//HKWHEke1f4ApUS8znYYP24MIDR/K', '2WitdgH0jSICzADOGI6isDVRShRZjotBl6dTUIQHtUfZ5jRPPuZQidYsUHPu', '邢永和', '1', '1', '1342234898', 'sdfddd', '0.00', '0.00', '', '3', '永和测试', '1', 'asdfasd@qq.com', '2016-11-17 18:46:49', '127.0.0.1', '2016-12-27 21:12:27', '127.0.0.1');
INSERT INTO `user` VALUES ('3', '17723160667', '$2y$10$55bR8O6QHIFe6X70fM0nn.FeyC07/KGZmvBpt4LtWYZ0FelBBx48S', 'Bap70KsObpnZO2MsKHeAtQR33H3y3bT8sao2M2cM95OLNj5qZe9LVewoCKyg', '形影楓', '1', '2', '123123123', '', '0.00', '0.00', '重庆问问我科技', '3', '永和测试', '1', '', '2016-11-17 19:15:14', '127.0.0.1', '2016-12-27 16:24:13', '127.0.0.1');

-- ----------------------------
-- Table structure for user_account
-- ----------------------------
DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `order_id` varchar(20) NOT NULL DEFAULT '' COMMENT '流水号',
  `money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '金额',
  `type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '状态:1收入、2支出',
  `ip` varchar(45) NOT NULL DEFAULT '' COMMENT 'IP地址',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态:0初始值、1成功',
  `crteated_at` timestamp NULL DEFAULT NULL COMMENT '记录时间',
  `mark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COMMENT='用户账户信息记录';

-- ----------------------------
-- Records of user_account
-- ----------------------------
INSERT INTO `user_account` VALUES ('1', '2', 'ZHB2453144124213', '0.01', '1', '127.0.0.1', '1', '2016-11-24 10:05:44', '用户充值，充值金额：0.01');
INSERT INTO `user_account` VALUES ('2', '2', 'ZHB2455595928903', '0.01', '2', '127.0.0.1', '1', '2016-11-24 10:46:35', '用户充值，充值金额：0.01');
INSERT INTO `user_account` VALUES ('3', '2', 'ZHB2455771480664', '0.01', '1', '127.0.0.1', '0', '2016-11-24 10:49:31', '用户充值，充值金额：0.01');
INSERT INTO `user_account` VALUES ('4', '2', 'ZHB2457116870454', '0.01', '1', '127.0.0.1', '0', '2016-11-24 11:11:56', '用户充值，充值金额：0.01');
INSERT INTO `user_account` VALUES ('5', '2', 'ZHB2457834560605', '0.01', '1', '127.0.0.1', '0', '2016-11-24 11:23:54', '用户充值，充值金额：0.01');
INSERT INTO `user_account` VALUES ('6', '2', 'ZHB2458173439323', '0.01', '2', '127.0.0.1', '1', '2016-11-24 11:29:33', '用户充值，充值金额：0.01');
INSERT INTO `user_account` VALUES ('7', '2', 'ZHB2458497010201', '0.01', '1', '127.0.0.1', '0', '2016-11-24 11:34:57', '用户充值，充值金额：0.01');
INSERT INTO `user_account` VALUES ('8', '2', 'ZHB2459081956666', '0.01', '2', '127.0.0.1', '1', '2016-11-24 11:44:41', '用户充值，充值金额：0.01');
INSERT INTO `user_account` VALUES ('9', '2', 'ZHB2459198187830', '0.01', '2', '127.0.0.1', '1', '2016-11-24 11:46:38', '用户充值，充值金额：0.01');
INSERT INTO `user_account` VALUES ('10', '2', 'ZHB2463670188629', '0.01', '1', '127.0.0.1', '0', '2016-11-24 13:01:10', '用户充值，充值金额：0.01');
INSERT INTO `user_account` VALUES ('11', '2', 'ZHB2464942000533', '0.01', '1', '127.0.0.1', '1', '2016-11-24 13:22:22', '用户充值，充值金额：0.01');
INSERT INTO `user_account` VALUES ('12', '2', 'ZHB2466256686185', '0.01', '1', '127.0.0.1', '0', '2016-11-24 13:44:16', '用户充值，充值金额：0.01');
INSERT INTO `user_account` VALUES ('13', '2', 'ZHB2466293251845', '0.01', '1', '127.0.0.1', '1', '2016-11-24 13:44:53', '用户充值，充值金额：0.01');
INSERT INTO `user_account` VALUES ('14', '2', 'ZHB2466657408022', '0.01', '1', '127.0.0.1', '0', '2016-11-24 13:50:57', '用户充值，充值金额：0.01');
INSERT INTO `user_account` VALUES ('15', '2', 'ZHB2466734887454', '0.01', '1', '127.0.0.1', '0', '2016-11-24 13:52:14', '用户充值，充值金额：0.01');
INSERT INTO `user_account` VALUES ('16', '2', 'ZHB2466943703381', '0.01', '1', '127.0.0.1', '0', '2016-11-24 13:55:43', '用户充值，充值金额：0.01');
INSERT INTO `user_account` VALUES ('17', '2', 'ZHB2467119358491', '0.01', '1', '127.0.0.1', '0', '2016-11-24 13:58:39', '用户充值，充值金额：0.01');
INSERT INTO `user_account` VALUES ('18', '2', 'ZHB2467189254670', '0.01', '1', '127.0.0.1', '0', '2016-11-24 13:59:49', '用户充值，充值金额：0.01');
INSERT INTO `user_account` VALUES ('19', '2', 'ZHB2467727191806', '0.01', '1', '127.0.0.1', '0', '2016-11-24 14:08:47', '用户充值，充值金额：0.01');

-- ----------------------------
-- Table structure for user_adform
-- ----------------------------
DROP TABLE IF EXISTS `user_adform`;
CREATE TABLE `user_adform` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '广告形式id',
  `name` varchar(100) DEFAULT '' COMMENT '广告形式名称',
  `category` tinyint(2) DEFAULT '1' COMMENT '广告形式类别：1直播2短视频',
  `sort` tinyint(2) DEFAULT '0' COMMENT '排序',
  `explain` varchar(500) DEFAULT '' COMMENT '说明',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='广告形式';

-- ----------------------------
-- Records of user_adform
-- ----------------------------
INSERT INTO `user_adform` VALUES ('1', '品牌植入', '1', '1', '', '2016-12-24 18:11:50', '2016-12-24 18:14:43');
INSERT INTO `user_adform` VALUES ('2', '专场口播', '1', '2', '', '2016-12-24 18:12:01', '2016-12-24 18:14:43');
INSERT INTO `user_adform` VALUES ('3', '线下驻场', '1', '3', '', '2016-12-24 18:12:07', '2016-12-24 18:14:43');
INSERT INTO `user_adform` VALUES ('4', '品牌植入', '2', '4', '', '2016-12-24 18:12:15', '2016-12-24 18:14:43');
INSERT INTO `user_adform` VALUES ('5', '专场口播', '2', '5', '', '2016-12-24 18:12:24', '2016-12-24 18:14:43');
INSERT INTO `user_adform` VALUES ('6', '片头展示', '2', '6', '', '2016-12-24 18:12:33', '2016-12-24 18:14:43');
INSERT INTO `user_adform` VALUES ('7', '片尾展示', '2', '7', '', '2016-12-24 18:12:42', '2016-12-24 18:14:43');
INSERT INTO `user_adform` VALUES ('8', '线下驻场', '2', '8', '', '2016-12-24 18:12:50', '2016-12-24 18:14:43');

-- ----------------------------
-- Table structure for user_ads_task
-- ----------------------------
DROP TABLE IF EXISTS `user_ads_task`;
CREATE TABLE `user_ads_task` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '状态:-1删除、1正常、2等待审核、3审核未通过、4活动结束、5活动过期、6发布未完成',
  `userid` int(11) NOT NULL DEFAULT '0' COMMENT '广告主用户ID',
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '活动名称',
  `logo` varchar(255) DEFAULT '' COMMENT '推广logo',
  `money` decimal(12,2) NOT NULL DEFAULT '0.00' COMMENT '总预算',
  `type` tinyint(2) DEFAULT '1' COMMENT '投放类型：1直播2短视频',
  `num` tinyint(4) NOT NULL DEFAULT '0' COMMENT '需要资源的个数',
  `start_time` timestamp NULL DEFAULT NULL COMMENT '投放开始时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '投放结束时间',
  `dead_time` timestamp NULL DEFAULT NULL COMMENT '截至时间',
  `shape` varchar(255) NOT NULL DEFAULT '' COMMENT '广告形式',
  `demand` varchar(2000) NOT NULL DEFAULT '' COMMENT '网红需求',
  `notes` varchar(2000) NOT NULL DEFAULT '' COMMENT '活动要求',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='广告主任务';

-- ----------------------------
-- Records of user_ads_task
-- ----------------------------
INSERT INTO `user_ads_task` VALUES ('1', '1', '3', '重庆第一届网红大赛', '/uploads/picture/2016-12-27/586264a65bab7.jpg', '56200.00', '2', '4', '2016-12-29 00:00:00', '2016-12-31 00:00:00', '2016-12-28 00:00:00', '4', '穿戴整洁、装扮时髦', '啊士大夫士大夫的', '2016-11-25 13:59:47', '2016-12-27 21:08:28');
INSERT INTO `user_ads_task` VALUES ('2', '1', '3', '活动测试1001', '/uploads/picture/2016-12-25/585f20f4410a7.jpg', '1233.00', '1', '12', '2016-12-29 00:00:00', '2016-12-30 00:00:00', '2016-11-29 00:00:00', '3', '活动测试1001活动测试1001活动测试1001活动测试1001活动测试1001活动测试1001活动测试1001活动测试1001活动测试1001活动测试1001', '活动测试1001活动测试1001活动测试1001活动测试1001活动测试1001活动测试1001活动测试1001活动测试1001活动测试1001活动测试1001活动测试1001活动测试1001', '2016-12-27 19:57:59', '2016-12-27 19:57:59');

-- ----------------------------
-- Table structure for user_netred_star
-- ----------------------------
DROP TABLE IF EXISTS `user_netred_star`;
CREATE TABLE `user_netred_star` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '资源ID',
  `userid` int(10) DEFAULT NULL COMMENT '网红ID',
  `status` tinyint(4) DEFAULT '1' COMMENT '状态:-1删除1正常2待审核3审核未通过',
  `avatar` varchar(255) DEFAULT '' COMMENT '头像',
  `stage_name` varchar(255) DEFAULT '' COMMENT '艺名',
  `sex` tinyint(2) DEFAULT '1' COMMENT '1男2女',
  `province` int(10) DEFAULT '0' COMMENT '省份ID',
  `city` int(10) DEFAULT '0' COMMENT '城市ID',
  `district` int(10) DEFAULT '0' COMMENT '地区ID',
  `area` varchar(100) DEFAULT '' COMMENT '地区字符',
  `type` tinyint(2) DEFAULT '1' COMMENT '资源分类：1直播2短视频',
  `fans` int(12) DEFAULT '0' COMMENT '粉丝数量',
  `platform` tinyint(4) DEFAULT '0' COMMENT '所属平台',
  `platform_id` varchar(100) DEFAULT '' COMMENT '平台ID',
  `average_num` int(10) DEFAULT '0' COMMENT '平均观看人数',
  `max_num` int(10) DEFAULT '0' COMMENT '最高观看人数',
  `style` varchar(255) DEFAULT '' COMMENT '风格',
  `catids` varchar(255) DEFAULT '' COMMENT '广告类型',
  `form_price` varchar(255) DEFAULT '' COMMENT '广告形式及价格',
  `min_money` decimal(10,2) DEFAULT '0.00' COMMENT '最低价格',
  `max_money` decimal(10,2) DEFAULT '0.00' COMMENT '最大价格',
  `note` varchar(2000) DEFAULT '' COMMENT '备注',
  `advantage` varchar(2000) DEFAULT '' COMMENT '优势',
  `introduce` varchar(2000) DEFAULT '' COMMENT '介绍',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user_netred_star
-- ----------------------------
INSERT INTO `user_netred_star` VALUES ('1', '2', '1', '/uploads/picture/2016-12-25/585f2ec1198a2.jpg', '皮皮酱紫', '2', '7', '90', '906', '吉林省,辽源市,东丰县', '2', '4552841', '9', '455454_id23', '1233', '0', '[\"style_1\",\"style_6\",\"style_7\",\"style_9\",\"style_10\",\"style_13\",\"style_14\"]', '[\"catid_11\",\"catid_14\",\"catid_15\",\"catid_16\",\"catid_19\",\"catid_21\",\"catid_22\"]', '{\"5\":\"12212\",\"6\":\"3222\"}', '3222.00', '12212.00', '接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注', '资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势', '案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍', '2016-12-25 10:41:23', '2016-12-25 13:52:49');
INSERT INTO `user_netred_star` VALUES ('2', '2', '-1', '/uploads/picture/2016-12-25/585f3201c8abc.jpg', '酱紫皮皮', '2', '8', '99', '984', '黑龙江省,鹤岗市,南山区', '2', '4552889', '9', '455454_id24', '0', '0', '[\"style_1\",\"style_3\",\"style_4\",\"style_6\",\"style_7\",\"style_9\",\"style_10\",\"style_11\"]', '[\"catid_11\",\"catid_12\",\"catid_16\",\"catid_17\",\"catid_19\",\"catid_20\",\"catid_22\"]', '', '5268.00', '68478.00', '接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注', '资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资', '案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍', '2016-12-25 10:43:12', '2016-12-25 13:52:21');
INSERT INTO `user_netred_star` VALUES ('3', '2', '-1', '/uploads/picture/2016-12-25/585f3201c8abc.jpg', '酱紫皮皮', '2', '8', '99', '984', '黑龙江省,鹤岗市,南山区', '2', '4552889', '9', '455454_id24', '0', '0', '[\"style_1\",\"style_3\",\"style_4\",\"style_6\",\"style_7\",\"style_9\",\"style_10\",\"style_11\"]', '[\"catid_11\",\"catid_12\",\"catid_16\",\"catid_17\",\"catid_19\",\"catid_20\",\"catid_22\"]', '', '5268.00', '68478.00', '接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注', '资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资', '案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍', '2016-12-25 10:43:30', '2016-12-25 13:50:13');
INSERT INTO `user_netred_star` VALUES ('4', '2', '1', '/uploads/picture/2016-12-25/585f332bafc6d.jpg', '大师傅撒', '1', '6', '76', '814', '辽宁省,抚顺市,顺城区', '2', '123123123', '9', 'dddddd', '44221', '0', '[\"style_2\",\"style_11\"]', '[\"catid_14\",\"catid_16\",\"catid_17\",\"catid_20\"]', '{\"4\":\"34242\"}', '34242.00', '34242.00', '接单备注接单备注接单备注接单备注接单备注接单备注接单备注', '接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注', '接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注', '2016-12-25 10:47:45', '2016-12-25 13:48:04');
INSERT INTO `user_netred_star` VALUES ('5', '2', '1', '/uploads/picture/2016-12-25/585f332bafc6d.jpg', '大师傅撒', '1', '6', '76', '814', '辽宁省,抚顺市,顺城区', '2', '123123123', '9', 'dddddd', '123123', '0', '[\"style_2\",\"style_11\"]', '[\"catid_14\",\"catid_16\",\"catid_17\",\"catid_20\"]', '{\"4\":\"123123\",\"7\":\"65433\",\"8\":\"32212\"}', '32212.00', '123123.00', '接单备注接单备注接单备注接单备注接单备注接单备注接单备注', '接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注', '接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注', '2016-12-25 10:47:58', '2016-12-25 13:47:41');
INSERT INTO `user_netred_star` VALUES ('6', '2', '1', '/uploads/picture/2016-12-25/585f343175346.jpg', '个个股纷纷', '1', '3', '44', '485', '河北省,保定市,涞水县', '2', '12312312', '9', '阿道夫', '123123', '0', '[\"style_1\",\"style_9\",\"style_10\"]', '[\"catid_11\",\"catid_16\",\"catid_19\"]', '{\"4\":\"123123\",\"5\":\"32323\",\"8\":\"44444\"}', '32323.00', '123123.00', '士大夫发射点发射点发射点发射点发', '资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势', '案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍', '2016-12-25 10:52:07', '2016-12-25 13:41:01');
INSERT INTO `user_netred_star` VALUES ('7', '2', '1', '/uploads/picture/2016-12-25/585f20f4410a7.jpg', '多发点撒', '1', '4', '54', '606', '山西省,晋城市,高平市', '2', '12313123', '9', 'dddd_123', '5623', '0', '[\"style_1\",\"style_2\",\"style_3\",\"style_11\"]', '[\"catid_11\",\"catid_15\",\"catid_17\",\"catid_20\"]', '{\"5\":\"12212\",\"6\":\"23334\",\"7\":\"25633\"}', '12212.00', '25633.00', '接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注', '接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注', '接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注', '2016-12-25 11:03:26', '2016-12-25 13:47:15');
INSERT INTO `user_netred_star` VALUES ('8', '2', '1', '/uploads/picture/2016-12-25/585f3201c8abc.jpg', '熊猫TV杀手', '2', '4', '53', '596', '山西省,长治市,壶关县', '1', '52655', '3', '熊猫BB', '21332', '2222223', '[\"style_1\",\"style_4\",\"style_9\",\"style_12\",\"style_13\"]', '[\"catid_14\",\"catid_16\",\"catid_17\",\"catid_21\"]', '{\"2\":\"2568\",\"3\":\"95687\"}', '2568.00', '95687.00', '接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注', '资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势', '案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍', '2016-12-25 14:38:20', '2016-12-25 14:40:12');
INSERT INTO `user_netred_star` VALUES ('9', '2', '2', '/uploads/picture/2016-12-25/585f6da5e7a5f.jpg', '顶顶顶 ', '1', '7', '94', '929', '吉林省,白城市,洮南市', '2', '123', '12', '21312312', '123123', '0', '[\"style_1\",\"style_9\",\"style_10\"]', '[\"catid_11\",\"catid_15\",\"catid_17\",\"catid_20\"]', '{\"4\":\"123321\",\"6\":\"1221\",\"7\":\"324234\"}', '1221.00', '324234.00', '接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注接单备注', '资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势资源优势', '案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍案例介绍', '2016-12-25 14:57:14', '2016-12-25 14:57:14');

-- ----------------------------
-- Table structure for user_platform
-- ----------------------------
DROP TABLE IF EXISTS `user_platform`;
CREATE TABLE `user_platform` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '平台id',
  `name` varchar(100) DEFAULT '' COMMENT '平台名称',
  `icon` varchar(255) DEFAULT '' COMMENT '平台图标',
  `category` tinyint(2) DEFAULT '1' COMMENT '平台分类：1直播2短视频',
  `sort` tinyint(2) DEFAULT '0' COMMENT '排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COMMENT='平台';

-- ----------------------------
-- Records of user_platform
-- ----------------------------
INSERT INTO `user_platform` VALUES ('1', '花椒', '/uploads/picture/2016-12-24/585dfde4e3bf3.jpg', '1', '1', '2016-12-24 13:06:57', '2016-12-24 13:26:34');
INSERT INTO `user_platform` VALUES ('2', '一直播', '/uploads/picture/2016-12-24/585e03d934af8.jpg', '1', '2', '2016-12-24 13:12:59', '2016-12-24 18:13:15');
INSERT INTO `user_platform` VALUES ('3', '熊猫TV', '/uploads/picture/2016-12-24/585e03efd02f2.jpg', '1', '3', '2016-12-24 13:13:21', '2016-12-24 18:13:15');
INSERT INTO `user_platform` VALUES ('4', '映客', '/uploads/picture/2016-12-24/585e04005df29.jpg', '1', '4', '2016-12-24 13:13:37', '2016-12-24 18:13:15');
INSERT INTO `user_platform` VALUES ('5', '斗鱼', '/uploads/picture/2016-12-24/585e041613240.jpg', '1', '5', '2016-12-24 13:13:59', '2016-12-24 18:13:15');
INSERT INTO `user_platform` VALUES ('6', '快手 ', '/uploads/picture/2016-12-24/585e04455f1ed.jpg', '2', '6', '2016-12-24 13:14:47', '2016-12-24 18:13:15');
INSERT INTO `user_platform` VALUES ('7', '秒拍', '/uploads/picture/2016-12-24/585e045bd62a6.jpg', '2', '7', '2016-12-24 13:15:09', '2016-12-24 18:13:15');
INSERT INTO `user_platform` VALUES ('8', '美拍', '/uploads/picture/2016-12-24/585e0465557d0.jpg', '2', '8', '2016-12-24 13:15:29', '2016-12-24 18:13:15');
INSERT INTO `user_platform` VALUES ('9', '微拍', '/uploads/picture/2016-12-24/585e04806bc9e.jpg', '2', '4', '2016-12-24 13:15:45', '2016-12-24 13:26:34');
INSERT INTO `user_platform` VALUES ('10', '爱拍', '/uploads/picture/2016-12-24/585e0495c5992.jpg', '2', '3', '2016-12-24 13:16:06', '2016-12-24 13:26:34');
INSERT INTO `user_platform` VALUES ('11', '小咖秀', '/uploads/picture/2016-12-24/585e04a4c0ce2.jpg', '2', '2', '2016-12-24 13:16:21', '2016-12-24 13:26:34');
INSERT INTO `user_platform` VALUES ('12', '小影', '/uploads/picture/2016-12-24/585e04b5787e2.jpg', '2', '12', '2016-12-24 13:16:38', '2016-12-24 13:26:34');
