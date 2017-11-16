/*
Navicat MySQL Data Transfer

Source Server         : zh
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : zaih

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-11-07 18:16:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for zh_adv
-- ----------------------------
DROP TABLE IF EXISTS `zh_adv`;
CREATE TABLE `zh_adv` (
  `adv_id` int(11) NOT NULL AUTO_INCREMENT,
  `adv_img` varchar(255) NOT NULL,
  `cate_id` int(11) NOT NULL,
  `adv_bigimg` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`adv_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_adv
-- ----------------------------
INSERT INTO `zh_adv` VALUES ('1', 'adv1.png', '2', 'adv-big1.png');
INSERT INTO `zh_adv` VALUES ('2', 'adv2.png', '3', 'adv-big2.png');
INSERT INTO `zh_adv` VALUES ('3', 'adv3.png', '4', 'adv-big3.png');

-- ----------------------------
-- Table structure for zh_advback
-- ----------------------------
DROP TABLE IF EXISTS `zh_advback`;
CREATE TABLE `zh_advback` (
  `advback_id` int(11) NOT NULL AUTO_INCREMENT,
  `advback_img` varchar(255) DEFAULT NULL,
  `status` tinyint(2) DEFAULT '0',
  `advback_href` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`advback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_advback
-- ----------------------------
INSERT INTO `zh_advback` VALUES ('1', '1509880032572101.png', '1', 'http://www.baidu.com');

-- ----------------------------
-- Table structure for zh_captcha
-- ----------------------------
DROP TABLE IF EXISTS `zh_captcha`;
CREATE TABLE `zh_captcha` (
  `cap_id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` char(11) NOT NULL,
  `code` int(4) NOT NULL,
  PRIMARY KEY (`cap_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_captcha
-- ----------------------------

-- ----------------------------
-- Table structure for zh_category
-- ----------------------------
DROP TABLE IF EXISTS `zh_category`;
CREATE TABLE `zh_category` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `level` int(1) NOT NULL DEFAULT '1',
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`cate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=181 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_category
-- ----------------------------
INSERT INTO `zh_category` VALUES ('1', '职场发展', '0', '1', '');
INSERT INTO `zh_category` VALUES ('2', '求职', '1', '2', '');
INSERT INTO `zh_category` VALUES ('3', '职场晋升', '1', '2', '');
INSERT INTO `zh_category` VALUES ('4', '职场转型', '1', '2', '');
INSERT INTO `zh_category` VALUES ('5', '职业规划', '1', '2', '');
INSERT INTO `zh_category` VALUES ('6', '职场技能', '1', '2', '');
INSERT INTO `zh_category` VALUES ('7', '经营管理', '1', '2', '');
INSERT INTO `zh_category` VALUES ('8', '项目管理', '1', '2', '');
INSERT INTO `zh_category` VALUES ('9', '全国通话', '1', '2', '');
INSERT INTO `zh_category` VALUES ('10', '面试', '2', '3', '');
INSERT INTO `zh_category` VALUES ('11', '简历', '2', '3', '');
INSERT INTO `zh_category` VALUES ('12', '演讲', '6', '3', '');
INSERT INTO `zh_category` VALUES ('13', '写作', '6', '3', '');
INSERT INTO `zh_category` VALUES ('14', '沟通', '6', '3', '');
INSERT INTO `zh_category` VALUES ('15', '人际交往', '6', '3', '');
INSERT INTO `zh_category` VALUES ('16', '个人品牌', '6', '3', '');
INSERT INTO `zh_category` VALUES ('17', '时间管理', '6', '3', '');
INSERT INTO `zh_category` VALUES ('18', '办公软件', '6', '3', '');
INSERT INTO `zh_category` VALUES ('19', '其他', '6', '3', '');
INSERT INTO `zh_category` VALUES ('20', '团队管理', '7', '3', '');
INSERT INTO `zh_category` VALUES ('21', '企业战略', '7', '3', '');
INSERT INTO `zh_category` VALUES ('22', '上市融资', '7', '3', '');
INSERT INTO `zh_category` VALUES ('23', '企业投资', '7', '3', '');
INSERT INTO `zh_category` VALUES ('24', '其他', '7', '3', '');
INSERT INTO `zh_category` VALUES ('27', '行业经验', '0', '1', '');
INSERT INTO `zh_category` VALUES ('28', '互联网+', '0', '1', '');
INSERT INTO `zh_category` VALUES ('29', '创业和投融资', '0', '1', '');
INSERT INTO `zh_category` VALUES ('30', '生活服务', '0', '1', '');
INSERT INTO `zh_category` VALUES ('31', '心理', '0', '1', '');
INSERT INTO `zh_category` VALUES ('32', '投资理财', '0', '1', '');
INSERT INTO `zh_category` VALUES ('33', '教育学习', '0', '1', '');
INSERT INTO `zh_category` VALUES ('34', '其他', '0', '1', '');
INSERT INTO `zh_category` VALUES ('36', '市场', '27', '2', '');
INSERT INTO `zh_category` VALUES ('37', '人力', '27', '2', '');
INSERT INTO `zh_category` VALUES ('38', '销售', '27', '2', '');
INSERT INTO `zh_category` VALUES ('39', '财务', '27', '2', '');
INSERT INTO `zh_category` VALUES ('40', '其他岗位', '27', '2', '');
INSERT INTO `zh_category` VALUES ('41', '金融', '27', '2', '');
INSERT INTO `zh_category` VALUES ('42', '图书出版', '27', '2', '');
INSERT INTO `zh_category` VALUES ('43', '影视', '27', '2', '');
INSERT INTO `zh_category` VALUES ('44', '传媒', '27', '2', '');
INSERT INTO `zh_category` VALUES ('45', '餐饮', '27', '2', '');
INSERT INTO `zh_category` VALUES ('46', '零售', '27', '2', '');
INSERT INTO `zh_category` VALUES ('47', '法律', '27', '2', '');
INSERT INTO `zh_category` VALUES ('48', '公益', '27', '2', '');
INSERT INTO `zh_category` VALUES ('49', '设计', '27', '2', '');
INSERT INTO `zh_category` VALUES ('50', '其他行业', '27', '2', '');
INSERT INTO `zh_category` VALUES ('51', '全国通话', '27', '2', '');
INSERT INTO `zh_category` VALUES ('52', '整合营销', '36', '3', '');
INSERT INTO `zh_category` VALUES ('53', '应用推广', '36', '3', '');
INSERT INTO `zh_category` VALUES ('54', '市场调研', '36', '3', '');
INSERT INTO `zh_category` VALUES ('55', '商业合作', '36', '3', '');
INSERT INTO `zh_category` VALUES ('56', '公关传播', '36', '3', '');
INSERT INTO `zh_category` VALUES ('57', '广告创意', '36', '3', '');
INSERT INTO `zh_category` VALUES ('58', '媒介投放', '36', '3', '');
INSERT INTO `zh_category` VALUES ('59', '新媒体运营', '36', '3', '');
INSERT INTO `zh_category` VALUES ('60', '品牌管理', '36', '3', '');
INSERT INTO `zh_category` VALUES ('61', '其他', '36', '3', '');
INSERT INTO `zh_category` VALUES ('62', '平面设计', '49', '3', '');
INSERT INTO `zh_category` VALUES ('63', '建筑设计', '49', '3', '');
INSERT INTO `zh_category` VALUES ('64', '室内设计', '49', '3', '');
INSERT INTO `zh_category` VALUES ('65', '工业设计', '49', '3', '');
INSERT INTO `zh_category` VALUES ('66', '产品', '28', '2', '');
INSERT INTO `zh_category` VALUES ('67', '研发', '28', '2', '');
INSERT INTO `zh_category` VALUES ('68', '运营', '28', '2', '');
INSERT INTO `zh_category` VALUES ('69', '市场', '28', '2', '');
INSERT INTO `zh_category` VALUES ('70', '设计', '28', '2', '');
INSERT INTO `zh_category` VALUES ('71', '数据分析', '28', '2', '');
INSERT INTO `zh_category` VALUES ('72', '行业经验', '28', '2', '');
INSERT INTO `zh_category` VALUES ('73', '全国通话', '28', '2', '');
INSERT INTO `zh_category` VALUES ('74', '直播', '28', '2', '');
INSERT INTO `zh_category` VALUES ('75', '方法论', '66', '3', '');
INSERT INTO `zh_category` VALUES ('76', '用户体验', '66', '3', '');
INSERT INTO `zh_category` VALUES ('77', '职业发展', '66', '3', '');
INSERT INTO `zh_category` VALUES ('78', '其他', '66', '3', '');
INSERT INTO `zh_category` VALUES ('79', '移动开发', '67', '3', '');
INSERT INTO `zh_category` VALUES ('80', '后端开发', '67', '3', '');
INSERT INTO `zh_category` VALUES ('81', '前端开发', '67', '3', '');
INSERT INTO `zh_category` VALUES ('82', '算法', '67', '3', '');
INSERT INTO `zh_category` VALUES ('83', '测试', '67', '3', '');
INSERT INTO `zh_category` VALUES ('84', '研发管理', '67', '3', '');
INSERT INTO `zh_category` VALUES ('85', '职业规划', '67', '3', '');
INSERT INTO `zh_category` VALUES ('86', '其他', '67', '3', '');
INSERT INTO `zh_category` VALUES ('87', '内容运营', '68', '3', '');
INSERT INTO `zh_category` VALUES ('88', '产品运营', '68', '3', '');
INSERT INTO `zh_category` VALUES ('89', '用户运营', '68', '3', '');
INSERT INTO `zh_category` VALUES ('90', '活动运营', '68', '3', '');
INSERT INTO `zh_category` VALUES ('91', '新媒体运营', '68', '3', '');
INSERT INTO `zh_category` VALUES ('92', '其他', '68', '3', '');
INSERT INTO `zh_category` VALUES ('93', '新媒体营销', '69', '3', '');
INSERT INTO `zh_category` VALUES ('94', '应用推广', '69', '3', '');
INSERT INTO `zh_category` VALUES ('95', '商业数据分析', '69', '3', '');
INSERT INTO `zh_category` VALUES ('96', '网络营销', '69', '3', '');
INSERT INTO `zh_category` VALUES ('97', '视觉设计', '70', '3', '');
INSERT INTO `zh_category` VALUES ('98', '交互体验', '70', '3', '');
INSERT INTO `zh_category` VALUES ('99', '用户体验设计', '70', '3', '');
INSERT INTO `zh_category` VALUES ('100', '工业设计', '70', '3', '');
INSERT INTO `zh_category` VALUES ('101', '电商', '72', '3', '');
INSERT INTO `zh_category` VALUES ('102', 'O2O', '72', '3', '');
INSERT INTO `zh_category` VALUES ('103', '在线教育', '72', '3', '');
INSERT INTO `zh_category` VALUES ('104', '互联网金融', '72', '3', '');
INSERT INTO `zh_category` VALUES ('105', '传统行业转型', '72', '3', '');
INSERT INTO `zh_category` VALUES ('106', '其他', '72', '3', '');
INSERT INTO `zh_category` VALUES ('107', '创业经验', '29', '2', '');
INSERT INTO `zh_category` VALUES ('108', '商业模式', '29', '2', '');
INSERT INTO `zh_category` VALUES ('109', '融资', '29', '2', '');
INSERT INTO `zh_category` VALUES ('110', '商业计划', '29', '2', '');
INSERT INTO `zh_category` VALUES ('111', '团队搭建', '29', '2', '');
INSERT INTO `zh_category` VALUES ('112', '股权分配', '29', '2', '');
INSERT INTO `zh_category` VALUES ('113', '其他', '29', '2', '');
INSERT INTO `zh_category` VALUES ('114', '全国通话', '29', '2', '');
INSERT INTO `zh_category` VALUES ('115', '个人形象', '30', '2', '');
INSERT INTO `zh_category` VALUES ('116', '摄影', '30', '2', '');
INSERT INTO `zh_category` VALUES ('117', '吃喝玩乐', '30', '2', '');
INSERT INTO `zh_category` VALUES ('118', '健身营养', '30', '2', '');
INSERT INTO `zh_category` VALUES ('119', '运动', '30', '2', '');
INSERT INTO `zh_category` VALUES ('120', '家居', '30', '2', '');
INSERT INTO `zh_category` VALUES ('121', '其他', '30', '2', '');
INSERT INTO `zh_category` VALUES ('122', '旅行', '30', '2', '');
INSERT INTO `zh_category` VALUES ('123', '母婴', '30', '2', '');
INSERT INTO `zh_category` VALUES ('124', '医疗保健', '30', '2', '');
INSERT INTO `zh_category` VALUES ('125', '全国通话', '30', '2', '');
INSERT INTO `zh_category` VALUES ('126', '法律服务', '30', '2', '');
INSERT INTO `zh_category` VALUES ('127', '发型', '115', '3', '');
INSERT INTO `zh_category` VALUES ('128', '美妆护肤', '115', '3', '');
INSERT INTO `zh_category` VALUES ('129', '整形', '115', '3', '');
INSERT INTO `zh_category` VALUES ('130', '时尚搭配', '115', '3', '');
INSERT INTO `zh_category` VALUES ('131', '音乐', '117', '3', '');
INSERT INTO `zh_category` VALUES ('132', '美术', '117', '3', '');
INSERT INTO `zh_category` VALUES ('133', '周边游', '117', '3', '');
INSERT INTO `zh_category` VALUES ('134', '其他', '117', '3', '');
INSERT INTO `zh_category` VALUES ('135', '美食', '117', '3', '');
INSERT INTO `zh_category` VALUES ('136', '营养饮食', '118', '3', '');
INSERT INTO `zh_category` VALUES ('137', '减肥健身', '118', '3', '');
INSERT INTO `zh_category` VALUES ('138', '装修', '120', '3', '');
INSERT INTO `zh_category` VALUES ('139', '整理收纳', '120', '3', '');
INSERT INTO `zh_category` VALUES ('140', '手工', '121', '3', '');
INSERT INTO `zh_category` VALUES ('141', '少儿兴趣', '121', '3', '');
INSERT INTO `zh_category` VALUES ('142', '宠物', '121', '3', '');
INSERT INTO `zh_category` VALUES ('143', '其他', '121', '3', '');
INSERT INTO `zh_category` VALUES ('144', '形体保健', '124', '3', '');
INSERT INTO `zh_category` VALUES ('145', '疾病医疗', '124', '3', '');
INSERT INTO `zh_category` VALUES ('146', '家庭关系', '31', '2', '');
INSERT INTO `zh_category` VALUES ('147', '两性关系', '31', '2', '');
INSERT INTO `zh_category` VALUES ('148', '人际关系', '31', '2', '');
INSERT INTO `zh_category` VALUES ('149', '情绪压力', '31', '2', '');
INSERT INTO `zh_category` VALUES ('150', '个人成长', '31', '2', '');
INSERT INTO `zh_category` VALUES ('151', '职场心理', '31', '2', '');
INSERT INTO `zh_category` VALUES ('152', '全国通话', '31', '2', '');
INSERT INTO `zh_category` VALUES ('153', '股票', '32', '2', '');
INSERT INTO `zh_category` VALUES ('154', '基金', '32', '2', '');
INSERT INTO `zh_category` VALUES ('155', '期货', '32', '2', '');
INSERT INTO `zh_category` VALUES ('156', '收藏', '32', '2', '');
INSERT INTO `zh_category` VALUES ('157', '房地产', '32', '2', '');
INSERT INTO `zh_category` VALUES ('158', '保险', '32', '2', '');
INSERT INTO `zh_category` VALUES ('159', 'P2P', '32', '2', '');
INSERT INTO `zh_category` VALUES ('160', '理财规划', '32', '2', '');
INSERT INTO `zh_category` VALUES ('161', '其他', '32', '2', '');
INSERT INTO `zh_category` VALUES ('162', '全国通话', '32', '2', '');
INSERT INTO `zh_category` VALUES ('163', '学前教育', '33', '2', '');
INSERT INTO `zh_category` VALUES ('164', '中小学教育', '33', '2', '');
INSERT INTO `zh_category` VALUES ('165', '高等教育', '33', '2', '');
INSERT INTO `zh_category` VALUES ('166', '职业教育', '33', '2', '');
INSERT INTO `zh_category` VALUES ('167', '家庭教育', '33', '2', '');
INSERT INTO `zh_category` VALUES ('168', '留学', '33', '2', '');
INSERT INTO `zh_category` VALUES ('169', '语言学习', '33', '2', '');
INSERT INTO `zh_category` VALUES ('170', '学习方法', '33', '2', '');
INSERT INTO `zh_category` VALUES ('171', '全国通话', '33', '2', '');
INSERT INTO `zh_category` VALUES ('172', '英语', '169', '3', '');
INSERT INTO `zh_category` VALUES ('173', '其他语言', '169', '3', '');
INSERT INTO `zh_category` VALUES ('174', '阅读', '170', '3', '');
INSERT INTO `zh_category` VALUES ('175', '思维导图', '170', '3', '');
INSERT INTO `zh_category` VALUES ('176', '知识管理', '170', '3', '');
INSERT INTO `zh_category` VALUES ('177', '记忆术', '170', '3', '');
INSERT INTO `zh_category` VALUES ('178', '移民', '34', '2', '');
INSERT INTO `zh_category` VALUES ('179', '行家专属', '34', '2', '');
INSERT INTO `zh_category` VALUES ('180', '专业学科', '34', '2', '');

-- ----------------------------
-- Table structure for zh_city
-- ----------------------------
DROP TABLE IF EXISTS `zh_city`;
CREATE TABLE `zh_city` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) NOT NULL DEFAULT '',
  `status` bit(1) NOT NULL DEFAULT b'1',
  `adv_id` int(11) NOT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_city
-- ----------------------------
INSERT INTO `zh_city` VALUES ('1', '北京', '', '1');
INSERT INTO `zh_city` VALUES ('2', '上海', '', '2');
INSERT INTO `zh_city` VALUES ('3', '广州', '', '2');
INSERT INTO `zh_city` VALUES ('4', '深圳', '', '2');
INSERT INTO `zh_city` VALUES ('5', '杭州', '', '3');
INSERT INTO `zh_city` VALUES ('6', '成都', '', '1');
INSERT INTO `zh_city` VALUES ('7', '苏州', '', '2');
INSERT INTO `zh_city` VALUES ('8', '珠海', '', '1');
INSERT INTO `zh_city` VALUES ('9', '武汉', '', '3');
INSERT INTO `zh_city` VALUES ('10', '西安', '', '1');

-- ----------------------------
-- Table structure for zh_comment
-- ----------------------------
DROP TABLE IF EXISTS `zh_comment`;
CREATE TABLE `zh_comment` (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `create_time` varchar(255) DEFAULT NULL,
  `agree_number` int(11) NOT NULL DEFAULT '0',
  `status` bit(1) NOT NULL DEFAULT b'1',
  `comment_content` text NOT NULL,
  `score` decimal(2,1) NOT NULL,
  PRIMARY KEY (`comment_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_comment
-- ----------------------------
INSERT INTO `zh_comment` VALUES ('1', '7', '8', '1223434124', '0', '', '顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶', '8.2');
INSERT INTO `zh_comment` VALUES ('2', '7', '9', '1503432143', '0', '', '顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶顶', '8.6');
INSERT INTO `zh_comment` VALUES ('3', '7', '11', '1507003506', '0', '', '超棒啊', '9.4');

-- ----------------------------
-- Table structure for zh_compute_topic
-- ----------------------------
DROP TABLE IF EXISTS `zh_compute_topic`;
CREATE TABLE `zh_compute_topic` (
  `cm_tp_id` int(11) NOT NULL AUTO_INCREMENT,
  `avg_score` decimal(2,1) NOT NULL DEFAULT '8.0',
  `meet_number` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `tutor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cm_tp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_compute_topic
-- ----------------------------
INSERT INTO `zh_compute_topic` VALUES ('1', '8.0', '0', '1', '1', '1');
INSERT INTO `zh_compute_topic` VALUES ('2', '8.0', '0', '2', '1', '2');
INSERT INTO `zh_compute_topic` VALUES ('3', '8.0', '0', '3', '1', '3');
INSERT INTO `zh_compute_topic` VALUES ('4', '8.0', '0', '4', '1', '4');
INSERT INTO `zh_compute_topic` VALUES ('5', '8.0', '0', '5', '1', '5');
INSERT INTO `zh_compute_topic` VALUES ('9', '8.2', '1', '8', '1', '10');
INSERT INTO `zh_compute_topic` VALUES ('10', '8.6', '1', '9', '1', '11');
INSERT INTO `zh_compute_topic` VALUES ('11', '8.0', '0', '10', '1', '11');
INSERT INTO `zh_compute_topic` VALUES ('12', '9.4', '1', '11', '1', '11');
INSERT INTO `zh_compute_topic` VALUES ('13', '8.0', '0', '13', '1', '12');
INSERT INTO `zh_compute_topic` VALUES ('14', '8.0', '0', '14', '1', '13');
INSERT INTO `zh_compute_topic` VALUES ('15', '8.0', '0', '15', '1', '14');
INSERT INTO `zh_compute_topic` VALUES ('16', '8.0', '0', '16', '1', '15');
INSERT INTO `zh_compute_topic` VALUES ('17', '8.0', '0', '17', '1', '16');
INSERT INTO `zh_compute_topic` VALUES ('18', '8.0', '0', '18', '1', '17');
INSERT INTO `zh_compute_topic` VALUES ('19', '8.0', '0', '19', '1', '18');
INSERT INTO `zh_compute_topic` VALUES ('20', '8.0', '0', '20', '1', '19');
INSERT INTO `zh_compute_topic` VALUES ('21', '8.0', '0', '21', '1', '20');
INSERT INTO `zh_compute_topic` VALUES ('22', '8.0', '0', '22', '1', '21');
INSERT INTO `zh_compute_topic` VALUES ('23', '8.0', '0', '23', '1', '22');
INSERT INTO `zh_compute_topic` VALUES ('24', '8.0', '0', '24', '1', '23');
INSERT INTO `zh_compute_topic` VALUES ('25', '8.0', '0', '25', '1', '24');
INSERT INTO `zh_compute_topic` VALUES ('26', '8.0', '0', '26', '1', '25');
INSERT INTO `zh_compute_topic` VALUES ('27', '8.0', '0', '27', '1', '26');
INSERT INTO `zh_compute_topic` VALUES ('28', '8.0', '0', '28', '1', '27');
INSERT INTO `zh_compute_topic` VALUES ('29', '8.0', '0', '29', '1', '28');
INSERT INTO `zh_compute_topic` VALUES ('32', '8.0', '0', '32', '1', '31');

-- ----------------------------
-- Table structure for zh_compute_tutor
-- ----------------------------
DROP TABLE IF EXISTS `zh_compute_tutor`;
CREATE TABLE `zh_compute_tutor` (
  `cm_tu_id` int(11) NOT NULL AUTO_INCREMENT,
  `tutor_id` int(11) NOT NULL,
  `total_meet` int(11) NOT NULL DEFAULT '0',
  `total_wish` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cm_tu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_compute_tutor
-- ----------------------------
INSERT INTO `zh_compute_tutor` VALUES ('1', '1', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('2', '2', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('3', '3', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('4', '4', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('5', '5', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('10', '10', '1', '1', '1');
INSERT INTO `zh_compute_tutor` VALUES ('11', '11', '2', '1', '1');
INSERT INTO `zh_compute_tutor` VALUES ('12', '12', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('13', '13', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('14', '14', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('15', '15', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('16', '16', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('17', '17', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('18', '18', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('19', '19', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('20', '20', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('21', '21', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('22', '22', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('23', '23', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('24', '24', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('25', '25', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('26', '26', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('27', '27', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('28', '28', '0', '0', '1');
INSERT INTO `zh_compute_tutor` VALUES ('31', '31', '0', '0', '1');

-- ----------------------------
-- Table structure for zh_homeback
-- ----------------------------
DROP TABLE IF EXISTS `zh_homeback`;
CREATE TABLE `zh_homeback` (
  `back_id` int(11) NOT NULL AUTO_INCREMENT,
  `back_img` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`back_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_homeback
-- ----------------------------
INSERT INTO `zh_homeback` VALUES ('2', '1509773091355357.png', '1');
INSERT INTO `zh_homeback` VALUES ('3', '1509774249520227.png', '0');
INSERT INTO `zh_homeback` VALUES ('4', '1509774655681470.png', '0');

-- ----------------------------
-- Table structure for zh_order
-- ----------------------------
DROP TABLE IF EXISTS `zh_order`;
CREATE TABLE `zh_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `tutor_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `create_time` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `question` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_order
-- ----------------------------
INSERT INTO `zh_order` VALUES ('1', '10', '8', '1506216912', '3', '回国半年，想创业了！回国半年，想创业了！回国半年，想创业了！', '7', '我目前在一家自媒体工作。我目前在一家自媒体工作。我目前在一家自媒体工作。');
INSERT INTO `zh_order` VALUES ('2', '11', '9', '1506389712', '3', 'aaaaaaaaaaaaaaaaaaaaaaaaaaa', '7', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa');
INSERT INTO `zh_order` VALUES ('3', '11', '11', '1507013117', '3', '刚毕业，想找工作了，不知道怎么写简历，救命！！！', '7', '刚毕业，想找工作了，不知道怎么写简历，救命！！！');

-- ----------------------------
-- Table structure for zh_reply
-- ----------------------------
DROP TABLE IF EXISTS `zh_reply`;
CREATE TABLE `zh_reply` (
  `reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `status` bit(1) NOT NULL DEFAULT b'1',
  `comment_id` int(11) NOT NULL,
  `reply_content` text NOT NULL,
  `create_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reply_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_reply
-- ----------------------------
INSERT INTO `zh_reply` VALUES ('1', '', '1', '好苗子', '1507003506');
INSERT INTO `zh_reply` VALUES ('2', '', '2', '好苗子', '1507003506');
INSERT INTO `zh_reply` VALUES ('3', '', '3', '很高兴见到你！', '1507003506');

-- ----------------------------
-- Table structure for zh_slider
-- ----------------------------
DROP TABLE IF EXISTS `zh_slider`;
CREATE TABLE `zh_slider` (
  `slider_id` int(11) NOT NULL AUTO_INCREMENT,
  `slider_img` varchar(255) DEFAULT NULL,
  `tutor_id` int(11) DEFAULT NULL,
  `status` tinyint(2) DEFAULT '1',
  `slider_title` text,
  `slider_summary` text,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_slider
-- ----------------------------
INSERT INTO `zh_slider` VALUES ('1', '1509790078669053.png', '1', '1', '<p>「在行是连接人与人的<br/>一万种可能。」</p>', '<p>在“有趣然而无用”大行其道的当下，<br/>在行所促成的每一次经验交谈都明确的指向“有用”。<br/>无论你的问题是“资金不足时如何创业”，<br/>还是“姐弟恋中如何扮演好姐姐”<br/>——《南方人物周刊》</p>');
INSERT INTO `zh_slider` VALUES ('2', '1509791762846974.png', '2', '1', '<p>在行是我进行“数字生存实验”<br/>的沃土。我要印证一个生命影响<br/>另一个生命的可能。</p>', '<p>萧秋水,知识管理专家。<br/>在行一对一服务已破百单。<br/>她通过在行找到了互联网时代新的生存之道。<br/>甚至通过在行开展微信私教分享课程。<br/>在将认知盈余价值最大化的同时，<br/>获得了可观的经济收益。</p>');
INSERT INTO `zh_slider` VALUES ('3', '1509791886174959.png', '3', '1', '<p>「除了社交作用,<br/>她们还是我的数据库,<br/>知道她们需要什么<br/>很重要」</p>', '<p>乔齐, <br/>女装品牌Georgette.Q创始人。<br/>作为在行上的行家,已经见过35个人<br/>大部分是科技圈的女高管,是她的目标客户</p>');

-- ----------------------------
-- Table structure for zh_topic
-- ----------------------------
DROP TABLE IF EXISTS `zh_topic`;
CREATE TABLE `zh_topic` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic_title` varchar(255) NOT NULL DEFAULT '',
  `topic_content` text,
  `tutor_id` int(11) NOT NULL DEFAULT '0',
  `cate_id` int(11) NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `duration` char(10) NOT NULL DEFAULT '1.0',
  `status` bit(1) NOT NULL DEFAULT b'1',
  `create_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`topic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_topic
-- ----------------------------
INSERT INTO `zh_topic` VALUES ('1', '职场人简历撰写及面试辅导', '<p>职业，我从不规划！\r\n\r\n简历，你是主人公！\r\n\r\n10年HR经历＋5年创业+5年猎头背景，阅简历无数，面人过千。我发现越是职场资深人士，越容易迷失职场目标，简历提炼的是即将面试的“人”，你直接或者间接为雇主产生贡献的引擎（简单理解成解决问题的能力，也不为过），请不要堆砌陈腐的职责和浅显的项目描述。\r\n\r\n职业路径具有不可逆性！每走一步都需要几年时光来验证。我所访谈的大多数案例，特别少见自我认知的浓缩，即：职业逻辑的清晰条理，甚至是目标明确和擅长职位的倾向。没有中立的提醒，你的选择基本是风险最低的那一个。错误选择一份OFFER，可能失去了职业“更美好”的另一种。\r\n\r\n在行超过100位约见中，我们会花20%时间努力识别你的优势能力、清晰职业路线，调整职业心态等；用60%时间探讨市场供需的话题，扎堆的盲从趋势会导致“供大于求”，这不会给你的竞争力带来本质的改变；诚然，我们用20%时间调整简历行文格式、优势评价和职业目标等具体的建议，对于无法改变的状况（例如工作背景一般但又想去大公司历练），则会分析如何找到引荐人脉，如何秀出自己、帮助你搭建沟搭HR&amp;Boss的路径。\r\n\r\n我长期在猎头和HR圈，接触了很多外企、TOP互联网与国企的HR圈子，最优秀的你如果就需要一个机会，我的人脉尽心尽力为你开放使用。如果你恰巧是招聘圈有意创业的人士，我必可以提出更加针对性的建议。\r\n\r\n关于面试准备、面谈、反馈和OFFER谈判，包括如何处理背景调查，只要你有兴趣，我都可以教给你更多实用和针对性的建议，因人而异。\r\n\r\nPS, \r\n\r\n最近第三次创业中，精力有限，每周最多可约3人，约谈价调整至499。见你，是我的另一次惊喜，感谢你的约见！\r\n\r\nPPS,\r\n\r\n面谈时间限：周一至周五晚18点前（朝阳区大望路）或周末下午通州区。成功预约后，请加我手机号微信确认准备时间和地点，将您的简历提前发至个人邮箱：1137974073@qq.com\r\n\r\n手把手教你撰写最受青睐简历，辅导你提高面试通过率</p>', '1', '10', '599', '2.0', '', '1505525432');
INSERT INTO `zh_topic` VALUES ('2', '定制属于你的英文面试', '英文面试早已成为很多面试者最头疼的环节，张不开口、完全表达不出自己的意思、无法如中文般展现自己的长处……都让很多面试者因为这一环节铩羽而归。\r\n\r\n在这样的情况下，英语口语有困难、面试中临场发挥不好的学员容易遭遇：\r\n\r\n复制机般单一的英文面试准备；\r\n单纯模仿别人英文面试的模板。\r\n我在跨国公司工作多年，了解不同国家的文化，和众多不同国籍的高管有过共同面试的经验。\r\n\r\n我愿意与你分享的内容包括：\r\n\r\n让你充分了解英文面试的几种不同模式和应对方法\r\n如何破解英文面试中，面试官设下的各种“陷阱”\r\n了解英文面试主要的问题及最恰当的答案\r\n正反向利用面试利器-STAR法则\r\nPS.在选择与我见面前，请把你的问题更具体化。毕竟一小时的谈话只能解决一个小问题。请把你的问题提前发给我，方便我做更精确的准备，提升见面效率。期待与你的见面。\r\n\r\n运筹帷幄你的英文面试，用另一种语言展现最好的自己', '2', '10', '299', '1.0', '', '1505525435');
INSERT INTO `zh_topic` VALUES ('3', '优化简历让求职效率翻倍', '简历优化的作用有多大？\r\n\r\n您一定关心这个话题，所以写在第一位，举例说明：\r\n\r\n一个做传统会展的，通过老可的简历优化，成功转型互联网产品经理；\r\n一个宠物护士，学了点PS设计，通过老可的简历优化，成功转型UI设计师；\r\n其他进了苹果、埃森哲、渣打、花旗、腾讯、百度、饿了么等等的简历优化就不列举了。\r\n简历究竟有多重要？\r\n\r\n简历并不仅仅是一份敲门砖，更是你的职业地图；\r\n你所有的职业规划，都写在简历中，它暴露了你所有的职业机密；\r\n简历写得好，可以让你身价倍增！\r\n90%求职者的简历有问题，自己却不知道！\r\n\r\n不知道什么是正规简历格式；\r\n不知道什么该写，什么不改写；\r\n不知道怎么写才能更吸引HR注意。\r\n简历是最好的职业规划，别走乱了！\r\n\r\n年轻人跳槽频繁，导致以后简历没法看；\r\n简历没有主线，到哪里都不会被重用；\r\n所有职业规划，最终一定要落实到简历中。\r\n包含哪些服务内容：\r\n\r\n简历问题诊断；\r\n提出简历修改建议；\r\n为您职业规划支招。\r\n对于学员有何要求：\r\n\r\n准备一份个人求职简历，要尽量详细；\r\n有诚意，对自己没要求的人不接待。\r\n \r\n诊断简历问题，提出优化方案，让求职效率翻倍！', '3', '11', '500', '1.0', '', '1505525442');
INSERT INTO `zh_topic` VALUES ('4', '设计师的面试技巧和简历撰写', '作为一名设计师，如何让你的简历在简历池中脱颖而出，让企业有进一步了解你的机会，简历的撰写结构就至关重要了。\r\n\r\n每个企业开通一个职位的招聘时，多数会在几个招聘网站上同时挂出招聘启事甚至写出内推公告，在这样的情况下你的简历又有多大概率被选出来呢？\r\n\r\n即使你有幸被约了面试，面对着各个公司的面试官如何给对方留下良好的印象，最终顺利入职，这些都不是概率事件而是应该用心准备后的结果；\r\n\r\n提升面试成功概率，让面试不在变得随机和等待后续通知，简历需要准备，面试需要技巧，让选择权掌握在自己手中。\r\n\r\n希望我在以上方面帮得到你。\r\n\r\n让面试变得相见恨晚，提升面试成功概率。', '4', '11', '390', '2.0', '', '1505525454');
INSERT INTO `zh_topic` VALUES ('5', '专业不对口如何转型互联网公司', '面试，是你与你的未来工作的企业建立关系的第一个环境，在这短短30-60分钟里，你需要充分说明自己的能力和潜力，为什么可以胜任这个岗位？ 在我近20年的职业生涯里，无论是在世界500强集团公司或是互联网企业，看过的简历应该超过了1000份简历（没具体数过），每年参与的面试将近200次。发现有不少毕业生或职场新人，缺少方法，没有做好针对性的准备，就因为专业不对口而丢失了加入互联网企业的机会。通常会有以下几个问题：\r\n\r\n1、不了解求职企业的特质，专业不对口的标准化简历容易被刷掉\r\n\r\n2、不了解互联网企业岗位设置和特点，目标职位匹配度低\r\n\r\n3、面试时，无法通过表达将个人画像呈现出来，回答不了“为什么要选择我”即使我的专业不对口\r\n\r\n我本人在500强企业工作了12年，后加入创业团队，目前是国内互联网营销科技公司-31会议的联合创始人，服务&运营副总裁。我们目前在全国有15家分子公司或办事处，拥有客户/用户近30万。基于我多年企业招聘经历的积累，愿意帮助你更好的展示、发掘自身特点，使你在众多候选者中脱颖而出。我会为您分享的内容包括：\r\n\r\n1）帮你学习如何“自视”，学会了解自己是什么样性格的人？帮助你找到你自己优势和劣势，了解自己的能力情况。\r\n\r\n2）教你如何使用“职场五力模型”描绘个人画像。五力分别为：专业能力、学习力、沟通力、耐久力和“热力”，通过这五力的展现，让面试官看清你的三生三世（过去、现在和未来）。\r\n\r\n3）了解互联网企业岗位设置，选择适合自己的岗位？如通过设置合理的职业路径达到你的目标职位。\r\n\r\n4）如何通过一份简历，可以让HR或面试官更愿意可以给你一次面试的机会\r\n\r\nPS.在选择与我见面前，请把你的问题更具体化。毕竟，1小时的谈话时间有限，把时间用在最重要的地方。请把你的问题提前发给我，方便我做更精细的准备，提升见面效率。期待与你的见面。\r\n\r\n \r\n\r\n \r\n\r\n我本人在500强企业工作了12年，从职业经理人到创业者，从央企到民企，从传统行业到互联网行业的转型，自身有着丰富的实战经验。在过去的3年中，构建了转型的能力相关性模型和实践方法，为数十位转型的职场人士提供了建议与帮助，有初入职场的年轻人成功转型产品经理，也有10余年从业经验的职业经理转型创业。再给予帮助的同时，我也收获了幸福感和众多朋友。\r\n\r\n深度剖析互联网企业岗位设置与用人原则，提升面试成功率', '5', '10', '180', '1.0', '', '1505525459');
INSERT INTO `zh_topic` VALUES ('9', '应届生专区：抓住机遇，找到好工作', '如何写出吸引HR的简历；\n500强企业面试模式和案例分析；\n面试问题回答技巧；\n商务礼仪等。有多年HR及管理从业经验, 并在多个世界500强公司工作。\n\n对500强企业校招，面试流程和模式非常了解。在过往五年的时间，已经辅导过过近50位优秀应届生及工作年限少于3年的青年求职者，通过和他们探讨职业规划，职业困惑，职场交往难题。同时可以帮助面试经验欠缺的候选人进行面试辅导，包括简历审阅，面试着装，礼仪及面试技巧的指导。', '11', '11', '299', '2.0', '', '1505525712');
INSERT INTO `zh_topic` VALUES ('8', '日企求职渠道全解与申请及面试攻略', '世界500强日企悉数入驻中国，在华的日企总数在10万家不止，仅在上海就有超过万家以上，想求职的你，即便一天面试一个公司都有数十年的机会。\n\n然而你说你不知道日企去哪找，纳尼？无数的日企HR们求贤若渴，而想进日企的你却手足无措，家人不解，自己迷茫，对已经入职日企的友人羡慕嫉妒恨.......或者你以为：好学生=好工作，资质平平＝平庸的岗位，想跳槽=天花板.....实际上没你想得那么好也没有那么糟糕，只要我们解决一个问题：\n\n求职期的信息对称性！！！\n\n简单来说，你需要让尽可能多的日企知道你，以及，你尽可能多的知道日企的求职渠道，再通过完善的申请和符合日企风格的面试，很快就能如愿进入理想的日企职场。\n\n其实，日企求职渠道远比你想象的多，如果你是学生党，我懂得你作为小白一枚，唯一的信息源很可能就是学校的黑板报和传说中的学哥学姐，相较于欧美日韩等国家，中国的大学很少有就业支持中心，这就需要我们尽可能的做到要自己支持自己，或者找专业及有经验的人士support自己，如果你是中，高级日语人才或者日企工作者，一旦拓宽拓宽求职路径，就很有可能进一步打通职业通道。那么，我能和你分享什么：\n\n日企求职渠道面面观：业内日企专用招聘网站，综合性招聘网站日企版，政府引导性招聘平台，日企工商会专场，日企官网，日企校园宣讲会，社交平台，在华人脉，在日人脉.....\n以上求职渠道各有什么特点，具体如何操作简历投放？除以上外，有哪些求职陷阱，应聘雷区要小心避免？\n根据你的个人情况，具体问题具体分析，自身特色和优劣势在哪？如何排定以上渠道的优先顺序，找到个人专属最佳求职路径？', '10', '11', '399', '1.0', '', '1505525733');
INSERT INTO `zh_topic` VALUES ('10', '让你的简历十秒点亮HR的眼球', '大家都知道，与企业交流的第一块敲门砖就是你的简历，简历的质量直接影响到你是否有机会与企业进一步沟通，获得面试机会甚至拿到他们的offer。\r\n\r\n你一定在苦恼为什么我网投了那么多简历都收不到企业回复？HR到底喜欢看什么样的简历？他们想从简历中得到什么信息？我简历的问题到底在哪里？\r\n\r\n作为人力资源总监，我想告诉你的是有一定规模的企业招聘专员通常每天要阅读100份以上的简历，工作量非常大，每份简历不会化超过10秒的时间浏览，如果你的简历没有办法在这10秒内抓住HR的眼球，无疑你就会与你心仪的企业失之交臂。\r\n\r\n在这样的情况下，应届毕业生或职场新人容易遭遇：\r\n\r\n简历中什么信息都要写，越全越好；\r\n简历越长越好；\r\n把自己认为的优势一股脑儿写进简历；\r\n只要一份简历就可以了。\r\n我拥有近20年外企人力资源管理经验的亚太区人力资源总监。我于90年代本科毕业于上海交通大学，2014年获得华东政法大学法律硕士学位。我同时也是一位国家二级心理咨询师，美国DDI咨询公司注册培训师。在我的职业生涯中，我帮助了无数应届毕业生及职场新人通过结构化面试，心理测评和职业优势分析等方法找到心仪的工作，实现职业转型，或突破职业发展瓶颈。我曾经任职于500强企业包括德国巴斯夫，美国箭牌口香糖及美国好时食品等跨国企业人力资源经理和人力资源总监职务，也是为数不多的在大学毕业后十年内升职成为亚太区人力资源总监的职业经理人之一。\r\n\r\n我愿意在本次课程中我将手把手教你：\r\n\r\n合理的简历结构应该是怎么样的\r\n如何在简历中凸显你个人优势\r\n简历的内容如何匹配企业对于岗位的要求\r\n如何避免under sell或over sell 你自己\r\nPS.在选择与我谈话之前，为了我更详尽的准备，请你提前将你的简历和希望应聘的企业，职位发给我，方便我做准备，提升我们的谈话效率和质量！期待与你的交流！\r\n\r\n用好简历抓住第一次与你心仪企业的交流机会让你事半功倍！', '11', '11', '599', '2.0', '', '1505525743');
INSERT INTO `zh_topic` VALUES ('11', '职场新人-从准备简历开始到拿下Offer', '让你的简历更有效；什么样的招聘渠道能让你更快的找到合适的岗位空缺\n面试准备及辅导；面试技巧提升\n如何谈工资；签订聘用协议，劳动合同时需要注意的事项\n如何快速融入团队，顺利通过试用期从事HR工作以来，面试人数超过千人，并处理过上百起劳动关系案例，积累了丰富的经验。', '11', '11', '299', '2.0', '', '1505525758');
INSERT INTO `zh_topic` VALUES ('13', '教你做出让HR无法拒绝的简历', '你知道吗？\r\n\r\n简历是求职的敲门砖，要想杀入关键的面试关，取决于你扔过去的是“金砖”还是“土砖”，就让我来为你展示“土砖”变“金砖”的神奇魔力，共同见证奇迹的时刻！\r\n你遇到过吗？\r\n\r\n深陷简历模版的选择综合症，到底哪一款模版最和自己来电？不，最和面试官来电？\r\n感觉每天都在重复昨天的工作，天啊，到底什么事情值得写进简历？\r\n我该怎么写简历才能吸引HR，让其无法拒绝给我打电话？\r\n辛辛苦苦写的简历，投出去却石沉大海，为什么啊为什么？\r\n我的深思践行论\r\n\r\n一份让HR无法拒绝的简历=高颜值的“面子”+有干货的“里子”\r\n在我多年的职业生涯中，我接触到了不计其数风格迥异的简历、我也有机会和很多颇有见地的管理者、HR交流切磋，希望洞悉为什么看上去差不多的候选人，有人可以一个月收到十几个offer，有人却只有几个！答案与简历直接相关！\r\n我们都非常清楚，不同人能力有高低、资历有深浅，而且能力和资历在短时间内很难发生质的改变，但是不用妄自菲薄、更不用自暴自弃，因为中华文化博大精深，通过简单语句的调整、风格的转换，就可以通过让你的简历锦上添花、改头换面，从而大大增强获取offer的概率！不要认为这是一种投机取巧或者华而不实，要知道简历从一个侧面也背书了一个人的逻辑性、条理性、表达能力和把握重点的能力！', '12', '11', '365', '1.0', '', '1507367637');
INSERT INTO `zh_topic` VALUES ('14', '写简历、聊面试-成就你理想的职业发展', '如果你在为如何撰写足够吸引面试官的简历而苦恼？\r\n如果你在为如何用一分钟的自我介绍展示自己的优势而苦苦思索？\r\n如果你在为哪个机会更适合自己而犹豫不决？\r\n如果你不能清晰地确定职业发展方向？\r\n那么，请来找我吧！\r\n\r\n一份简单明了、重点突出的简历是打开新职业旅程的钥匙。你能否让“看简历的人”在20秒之内被你的简历“锁定”，让TA愿意花20-30分钟研究“你”。\r\n\r\n一个人的职业发展路径是由一个个关键节点的选择构成的，每一个不同的选择都会构成一个不同的职业发展路径。在我接触的大量人选当中，有人因在关键时期做出了正确的选择而成为行业翘楚，也有人因为一次的盲目的选择而使职业发展一蹶不振。\r\n\r\n从生涯发展的角度，帮你分析哪个机会更适合你；\r\n透过简历和简短的自我介绍，发现你固有模式的误区，同时发掘你特有的才干和潜在优势；\r\n教你学会换位到面试官的角度，厘清如何在简历和面试中清晰呈现自己的竞争优势，以便确保拿到理想的薪资和职位；\r\n如果你的综合素质优秀，我还可以为你推荐适合的工作机会。\r\nPS.请把你的简历和困惑提前发给我，我会先从猎头和企业面试官的角度研究的简历和工作经历，相信我的咨询会帮你走得更远更好。\r\n\r\n20年企业管理＋15年创业+15年猎头，深度解读简历和面试', '13', '11', '499', '1.0', '', '1507367769');
INSERT INTO `zh_topic` VALUES ('15', '挖掘自己的优势能力，赢得面试', '你是否感到工作一直平平淡淡，没有优势？自己超喜欢的岗位，却不知道怎样得到？自己有很多经历、经验，确不知道怎样高大上的表达？ 觉得自己没有爱好、没有特长，没有好的背景，应聘不上怎么办？\r\n\r\n【我擅长】我有敏锐的洞察力，丰富的职场经验，对不同行业、不同职位的深度理解，及此职位与公司发展阶段的定位关系，从多维度、多视角打开思路，帮助你重新建构自己的优势，提升自我认知，确定恰当的面试策略。 \r\n\r\n【你收获】通过专业结构化梳理，你会发现自己的优势，会发现独特而充满能量的你，有勇气、有方法、有策略地达成自己的目标。\r\n\r\n培养优势能力，找对平台，兑现自己独特的价值', '14', '10', '499', '1.5', '', '1507367849');
INSERT INTO `zh_topic` VALUES ('16', '如何顺利通过面试拿到OFFER？', '好容易通过了简历关，获得了面试机会，但是如何给面试官一个好印象，成功拿到offer呢？\r\n\r\n许多初入职场或者有意愿跳槽的朋友就是因为在面试的环节没有表现好，即使有一定的相关工作经验，但是仍旧拿不到好的OFFER。\r\n\r\n我拥有10年以上的面试工作经验，可谓阅人无数，如果你正在被面试的问题所困扰，那么我可以在约见中给你分享一些面试技巧。\r\n\r\nPS：在选择与我见面前，请把你的问题更具体化。毕竟一小时的谈话只能解决一个小问题。请把你的问题提前发给我，方便我做更精确的准备，提升见面效率。期待与你的见面。\r\n\r\n通过10多年的面试经验教你成功拿到OFFER', '15', '10', '399', '1.0', '', '1507367941');
INSERT INTO `zh_topic` VALUES ('17', '设计师面试诊断，帮你进入BAT', '坦白讲：作为设计师，如果你有BAT或一线互联网公司的工作经验对你的职业发展肯定是一个亮点，这些年我在招聘面试过程中能感受到不少设计师都渴望能进入一线公司做设计；\r\n\r\n因为：如果你不懒惰，你在一线公司获取到的知识、经验、思维、资源等，将极大的助力你今后的职业发展；\r\n\r\n如果你想面试BAT的设计岗位，或是之前有过面试受挫的经历，那么我可以帮助你：\r\n\r\n如何打造一份有竞争力的、有针对性的求职简历；\r\n如何组织呈现一份有竞争力、有亮点的作品集；\r\n面试官最看重的一些关键点，如何应对；\r\n模拟面试，针对目标公司／业务来一次面试实战；\r\n与HR斗智斗勇进行薪酬谈判；\r\nBAT面试流程、职级、薪酬等信息；\r\n与面试相关的一切问题；\r\n适合人群：\r\n\r\n各类互联网设计师\r\n传统行业设计师转互联网设计师\r\n即将毕业求职的同学\r\n想转行做设计师的同学', '16', '10', '599', '1.5', '', '1507369561');
INSERT INTO `zh_topic` VALUES ('18', '想认清自己？让我给你来场模拟面试吧！', '简历该怎么写？面试时该如何表现？入职后要注意哪些职场潜规则？相信这是每一个“职场新鲜人”都要头痛和纠结的问题。网上面经那么多，却有一千个哈姆雷特，到底该听谁的？\r\n\r\n在这样的情况下，应届生、初入职场者容易遭遇：\r\n\r\n（1）去网上搜面经不知该信谁。\r\n（2）成功学畅销书中的一些看似溜须拍马的潜规则违背自己的处世原则，怎么办？\r\n（3）要经历痛苦的人生转变吗？\r\n\r\n我有在央企6年的面试官经验，从招聘到入职培养、职业培训、同事谈心，挖掘每个人的亮点，去寻找与他最匹配的价值认同。\r\n\r\n我愿意与你分享的内容包括：\r\n\r\n（1）一切面试技巧都是锦上添花，关键是你的“锦”在哪里？\r\n（2）一切人际关系的核心都是尊重与自尊，你做到了吗？\r\n\r\nPS.在选择与我见面前，请把你的问题更具体化。毕竟一小时的谈话只能解决一个小问题。请把你的问题提前发给我，方便我做更精确的准备，提升见面效率。期待与你的见面。\r\n\r\n不管是木桶理论还是长板理论，如何认清自己是我们永恒的课题', '17', '10', '300', '1.0', '', '1507369616');
INSERT INTO `zh_topic` VALUES ('19', '创建和维护个人品牌，在职场脱颖而出', '当在行高层邀请我成为行家，我马上问自己，我最在行是什么？我的第一答案是做品牌和企业管理（排名不分先后）。可是在一个C2C的平台上，我的在行领域应该与个人发展有关，所以我结合两者，将建立企业品牌的技巧应用在个人品牌，让你在职场上能更高效地“经营”自己，有更好的持续发展的可能性。\r\n\r\n你可能会问：我为什么要做个人品牌？我又不是商品！\r\n\r\n我的答案是，我们每一个人也是一个商品，需要赚钱过更好的生活，无论你已经是创业老板，还是企业中小领导，或是未来主人翁，个人品牌可以帮你增加你的认知度，喜好度和黏度，最终提升你的溢价能力。看看今天大家也在仰视的马云，你就知道他的成功很大程度上是他靠经营的个人品牌。\r\n\r\n要是我们有机会约谈的话，我会首先讨论你的愿景（vision），你个人的优势劣势威胁和机会 （SWOT Analysis），你的企业价值观（corporate values）和你的个人价值观、处事态度、爱好（personal values, attitude, passion），再做你的定位和定义你的品牌价值（brand values），最后建议你如何运作和维护你的品牌。\r\n\r\n为了更精准的定位和更好地利用我们的约谈时间，我会要求大家在见面前做一些功课， 如填写个人愿景， SWOT， corporate and personal values 等等交给我，我会先理解和研究你的个案，在见面会时论证及跟你钻研你的品牌定位和价值，品牌运作和维护。', '18', '3', '500', '1.0', '', '1507385341');
INSERT INTO `zh_topic` VALUES ('20', '如何从三千月薪十年做到500强高管', '从一个普通大学毕业的本科生，三千月薪看不到希望，慢慢努力，经历多次行业变化和职务变迁，最终做到500强企业高管百万年薪，朝着财务自由的生活迈进。\r\n\r\n内容包含：自身优势挖掘、职业规划、跨界、跳槽、项目管理、时间管理、效能管理、人脉搭建、打造个人名片、学习与发展、工作与生活的平衡、外企和民企的特点。\r\n\r\n讲师通过个人经历，结合大家熟知的工具和理念，分析这个多变的时代，深入浅出地讲解如何通过工作来改善自己的生活。\r\n\r\n从一个普通大学毕业的本科生，三千月薪看不到希望，慢慢努力，经历多次行业变化和职务变迁，最终做到500强企业高管百万年薪，朝着财务自由的生活迈进。\r\n\r\n分享个人经验，提供建议帮你快速晋升', '19', '3', '399', '1.5', '', '1507385560');
INSERT INTO `zh_topic` VALUES ('21', '总裁秘书（助理）的快速入门指南', '江湖上一直都有“九段秘书”的传闻，秘书，尤其是总裁秘书等公司一把手的秘书，向来是一种特别的存在。她目前的级别可能不高，薪酬可能也不高，但却往往是所有高管不能忽视的对象。一个优秀的总秘，眼观六路、耳听八方，可以拥有和领导比肩的视角，浸染高层的管理思路，最终成为老板的左膀右臂，独当一面，一段总秘的奋斗生涯对于未来的职业发展、甚至人生发展都将会有非常大的影响。\r\n\r\n总秘的光环或许靓丽，但压力和困扰也必不会少。尤其对于初入职场的新人或者是刚刚转岗成为总秘的职业人，如何快速完成入门，在磨合的过程中展现专业水平及处事能力，逐步获得老板的信任至关重要。\r\n\r\n如果你正好处于上述的两个阶段，且不仅仅把总秘看成一个后勤行政的闲职，希望能够在这个岗位上发光发热却又不知从何下手，那就来和我一起交流一下吧。', '20', '3', '380', '1.0', '', '1507385811');
INSERT INTO `zh_topic` VALUES ('22', '一年一台阶！跨行业、跨专业转型解惑', '时代瞬息万变，终身只从事一种职业的人如今已是稀有动物。智能时代新经济的浪潮，在颠覆传统产业的同时，也重构了公司组织和生产关系。专业限制、技能限制、地域限制皆可打破，建立可自动升级的底层认知系统才是关键。\r\n\r\n你是否面临以下困境：\r\n\r\n学无致用，工作只是领一份薪水敲钟度日；\r\n对工作毫无热情，却又害怕改变，沉没成本越来越高；\r\n希望进入心仪的领域或公司，但隔行如隔山，不得其门而入；\r\n年龄越来越大，职场竞争力不升反降，维持现状都难，如何突破瓶颈？\r\n我在四年时间里，从一名内部审计师成功转型为高级管理人员（COO），行业横跨保险、通信、商业地产、互联网金融，所经历的挑战极其严峻，经验教训也非常丰富。希望与你分享一些关于个人规划和职业转型的心得：\r\n\r\n如何建立普适的认知系统和超强的学习能力；\r\n如何选择前景光明的朝阳行业（风口），并找到适合自己的切入点（敲门砖）；\r\n如何抓住机遇，提升职业经历含金量；\r\n如何在最短时间内掌握陌生行业的关键要素；\r\n从执行到管理，需要做好的准备和绕过的坑。\r\nPS.在选择与我见面前，请把你的问题更具体化。毕竟一小时的谈话只能解决一个小问题。请把你的问题提前发给我，方便我做更精确的准备，提升见面效率。期待与你的见面。', '21', '3', '500', '1.0', '', '1507386001');
INSERT INTO `zh_topic` VALUES ('23', '互联网行业资深HR教你如何职场进阶', '在万众创业，全民创新的大环境下，互联网行业得以高速发展，在此大势所趋的情况下，无论是职场上的新人、老兵，或者象牙塔里的高大上人才，都会面临这些问题：\r\n\r\n如何选择自己的未来发展？\r\n如何顺应时代，投入到互联网行业去成就自己去成就企业呢？\r\n如何适应创业公司的节奏和要求\r\n如何在试用期生存下来\r\n如何让你做的事更接地气\r\n我相信这个话题一定能触动哪些身处互联网大潮或准备投入互联网行业但还在徘徊中的人们，引发他们的共鸣。欢迎与我约见。', '22', '3', '400', '1.0', '', '1507386220');
INSERT INTO `zh_topic` VALUES ('24', '你想跳槽？那我们聊聊吧', '跳槽，无疑是在企业内劳动者一方重新选择职场的一种正常行为。\r\n\r\n跳槽，也同样是绝大多数职场人士，在职业发展进程中不可避免的一种过程。\r\n\r\n在由我主编的《找到你的职场起点》一书中，曾强调选择第一份工作的重要性。而如何对待职场中的每一次跳槽，同样密切地关乎到我们在职场中每一位个体发展的进程。\r\n\r\n那么，我们如何明智地决定跳槽？在什么情况下跳槽才有利于自己职场的发展？跳槽前我们应该做哪些准备？选择什么样的行业及其企业跳槽才最合适？跳槽到新的企业后，如何开启你新的一页？\r\n\r\n以上问题都是职场人士在决定跳槽前后所要面对的较为普遍的问题。如果这些问题困扰着你，而你又迫切需要寻求相关的解，那么，作为中国中坚力量精英关怀计划的导师，作为中国人力资源研究会的主要成员，作为曾经的企业资深人力资源总监，我将可以给到你一些建议。\r\n\r\n如果你有意愿，我可以根据你的实际状况，选择如上你所感兴趣的话题，或者你内心所存的其它疑惑进行沟通，你将会由此而获得自己面临跳槽时的新思路，从而对自己下一步的行动产生积极有益的影响。\r\n\r\n跳槽，你为此准备好了吗？', '23', '3', '300', '1.0', '', '1507386406');
INSERT INTO `zh_topic` VALUES ('25', '如何更好地应对职业发展瓶颈期', '职业发展瓶颈期，是每个职场人士都会遇到的问题。在这个阶段，你会发现自己的发展空间受到了限制，或者是心有余而力不足，也或者是觉得迷茫不知道未来在哪里。\r\n\r\n而在市场高速竞争的今天，如果不能及时有效地针对这一现状做一些调整，很容易因此产生更大的焦虑和不安。\r\n\r\n知己知彼，百战不殆。 充足的准备和适当的战略调整，将是我们突破瓶颈期的利器。\r\n\r\n在一个半小时的咨询中，我会带着你更好地梳理自己的内心，了解自己的技能，并且根据自己的实际情况来更好地应对。\r\n\r\n授人以鱼不如授人以渔，学会了方法，你会更有信心地去迎接挑战。\r\n\r\n了解自己的技能与处境，走出职业瓶颈期', '24', '3', '199', '1.0', '', '1507386534');
INSERT INTO `zh_topic` VALUES ('26', '如何安全度过职业迷茫期、转型期？', '按理说，工作了五年以上的职场人士，应该都是已经找准了自己未来的发展方向，有了个人的职业规划。但在现实生活中，由于各种各样的原因，真正能安安心心、稳步推进自己职业生涯的其实并非多数派。\r\n\r\n \r\n\r\n“怎么可能会一帆风顺！波峰波谷起伏不断，这才是人生啊！”\r\n\r\n——语出知名人士歪叔\r\n\r\n \r\n\r\n你可能已遇到或者即将会遇到：\r\n\r\n身处外企、已经快触碰到天花板，岁数也慢慢增长，是继续在企业或外企圈呆着，还是寻求去民营企业的机会？但听说外企民企有着截然不同的管理风格，而担心自己不能适应；\r\n工作了好几年，但一直不温不火，公司内没有晋升机会，对外界的机会既好奇又焦虑，不确定自己是否具备外面社会的竞争力；\r\n多次跳槽，一直没有找到自己的职业发展方向和企业归属，不知自己终点在哪；\r\n在企业里面一直做着某份工作，但一直不知道这是否是自己想要的工作，也不知道自己职业的前景在哪；\r\n跟随老板创业，但随着企业的规模不断扩大，自身因年龄、经历、精力等原因，竞争力已经越来越不能与职业经理人相较，苦恼于未来自己应何去何从；\r\n即将面临“35岁”中年危机，技能已经很难提升，但企业内部竞争压力巨大，自己已经岌岌可危，甚至要考虑是否出去创业；\r\n年龄不断增长，一方面职业压力越来越大，但另外一方面时间成本越来越高，还得兼顾家庭、子女教育、身体健康、社交、学习等等，心力交瘁；\r\n作为一名女性，工作责任大，加班多，但又要兼顾照顾家人，感觉鱼和熊掌不能兼得；\r\n以及其他各种面临职场迷茫期、平台期、转型期时的问题。\r\n上面有很多都是歪叔和他的朋友们的经历，所以也有非常深刻的自身认知与他们的个人解决方案沉淀。我们可以坐下来好好剖析现状，一起干点下面的事情：\r\n\r\n分析与梳理你自己的职场核心竞争力，在正确认知自己的同时，也许会发掘出你自己都没有意识到的点；\r\n分析你基于当年工作之下的适合发展方向，是坚守现状寻求内部突破？还是寻求外界平台？并观望职场与行业前景；\r\n如果坚守内部，那如何去改善现状，提升企业内的话语权，改善上级、平级、下级关系；如果寻求外界平台，如何去快速适应新平台、新环境与新领导，这些我们都一起来探讨；\r\n如果要进入一个完全陌生的领域，应如何快速地掌握知识积累人脉；\r\n分析你目前所拥有的资源，以及围绕未来发展方向所应去拓展的资源；此外，可能性地分享我所具有的资源给你；\r\n发现与矫正你可能存在的制约个人职场前景的非职业习惯与心态。有些可能你已经意识到了，但没有勇气去面对与调整，有些可能你还完全没有意识到，让我们一起来挖掘吧；\r\n交流如何协调事业与家庭；\r\n以及其他围绕本话题的相关讨论。\r\n最后需要明确的是，交流并不能从根本上解决问题。解决的关键只有两个：一、心态；二、行动！\r\n\r\n奔三甚至奔四的年纪，转型？迷茫？中年危机？帮你谋划，别担心！', '25', '3', '599', '1.5', '', '1507388183');
INSERT INTO `zh_topic` VALUES ('27', '职场快速成长与晋升', '如何快速的学习和成长？\r\n\r\n是不断拥抱新的变化，挑战与释放自己的潜能！是实践和犯错，反思与总结，再实践和犯错的旅程。\r\n\r\n既取决于持续的自我探索，对动机的认知和洞察，也取决于个人精神与价值观持续修炼。\r\n\r\n关于个人职业规划与发展的理论和鸡汤都很多，知易行难，在每个职业发展关键点，如何选择和应对是至关重要。\r\n\r\n学习发展只有在面对逆境和选择时，才需要外力的支持和帮助。如果你目前发展不顺利有阻力， 或者纠结于选择，我愿意分享交流一个亲历者的经验和洞察，提供辅导，教练与反馈，帮助有缘的朋友。\r\n\r\n分享的内容：\r\n\r\nMentor：导师的经验，经历分享，提供分析判断的思路和建议，帮助看清问题，自己找到方法和答案。\r\nCoach：教练的支持，通过提问题，帮助当事人思考与自我觉醒，找到自己的内心的力量，并建立信心和承诺去面对困难和改变。', '26', '3', '500', '1.0', '', '1507388293');
INSERT INTO `zh_topic` VALUES ('28', '如何让财务领域的职场道路越走越宽？', '不了解财务领域工作的，可能以为就是做做帐，其实细分的财务领域职能非常多，比如：\r\n\r\n事务所外部审计，企业财务（又包括会计，财务分析，资金管理，内部审计等），金融（银行，证券，理财等），投资（PE， VC，FA等）...\r\n\r\n好的职业规划可以让你的发展道路越走越宽，也可以让你的“钱”途越走越好。无论你是职场新人，不知道何去何从，还是做了好几年财务职场“老”人，困惑不知该如何提升，如何转型。\r\n\r\n我的四大，企业与投资的工作经验和心得或许可以帮到你，愿意与你一起分享。', '27', '3', '490', '1.0', '', '1507388437');
INSERT INTO `zh_topic` VALUES ('29', '媒体人转型跳槽的路径向导', '传统媒体人往往是一名合格的“知道分子”，看起来具备广泛的“人脉资源”、独立的“记者视野”和前瞻的“传播理念”。单凭这几点，似乎就具备“天高任鸟飞”的无数可能性。转型、跳槽、跨行，成了传统媒体人时髦的选择。近几年，传统媒体人纷纷转投互联网的怀抱，企图在新的领域开疆辟土，却发现屡屡碰壁。该摔的跟头，一个也没拉下。纵观踏上互联网新征程的媒体人，都有类似的共性。找到共性、抓出通病，才能更好地稳住阵脚——\n\n媒体人转投“互联网创业”，需要突破哪些结界？\n\n跨行时需佩戴那几样“武器”可防身、可迎敌？\n\n凭借过去记者编辑生涯的积累，你能否在这个互联网+时代套现呢？\n\n本话题主要面向以下几类人群：\n\n也许你目前正处于职业的瓶颈期、迷茫期。你有些痛苦。\n也许你想了解传统媒体人转型后的生存样本，给自己一个坐标系。你有些期待。\n也许你想挑战自己，给生活来点颜色。你有些兴奋。​根据我的经验，约见中能提供如下建议：\n\n是持业、再就业，还是创业？为你的职业定位把把脉。\n深耕还是跨行，纵向重塑还是横向整合，为你量身定制。\n提供转型样本的大数据分析。\n如果你需要，我也能现场为你熬一碗鸡汤。', '28', '4', '500', '1.5', '', null);
INSERT INTO `zh_topic` VALUES ('32', '精准职业定位，为2017晋升加薪！', '<p>身边很多朋友，因为职业定位清晰而获得了很好的发展。有得从对职业没有信心而逐步自信起来，有得薪资一年涨幅超过50%，有得甚至一年连升三级获得创始人的高度信任。在行上向我咨询过的63位朋友中，有很多朋友的人生和职业发生了积极的变化，也有不少人和我成为了朋友，会一起吃吃饭，跑跑步。</p><p><br/>我有一个人生大梦：通过对知识的学习和掌握，启人心智。在我进行第二个人生十年思考的时候，我将这条设定为我的终身信条，并将践行直至生命的最后一秒。或许这个愿力是微小的，但假设有一人因此受益而让人生和生活变得美好起来我也是愿意的。<br/><br/>如果你的职业遇到问题，你不需要去踩一遍别人踩过的坑，也不用去咨询太多的人，更不需要焦虑的不能安眠。你需要和一位你信任的和能解决你问题的人进行一次彻底的对话。相信，我可以是这个人。</p><p>_______________________________________________<br/></p><p><br/></p><p>为了能解决问题，我设置了一个小门槛，我希望你：</p><p>1）有足够的学习欲望；</p><p>2）有坚持不懈做一件事的毅力。</p><p><br/>此话题，为渴望改变自己的人开启。下面是你可能遇到的问题：</p><p><br/>1）找不到职业的方向？<br/>2）不知道如何提升能力和技能？<br/>3）对自己失去信心，内心很惶恐？<br/><br/>问题出在了那里？<br/>1）是你不够努力？NO<br/>2）是你不够聪明？NO NO<br/>3）是你不惹人喜欢？NO NO NO</p><p><br/>看到这里，你应该下定决心来和我进行一次深度对话。<br/>因为，我知道你的问题在那里。</p><p><br/>不信，我问你3个问题：<br/>1）你的3个优缺点分别是什么？<br/>2）你最擅长的工作技能是什么？<br/>3）未来一年的职业打算是什么？</p><p><br/>三个问题，你都回答出来，你就不需要来见我喽！<br/>如果你回答不上来，遇见我是上天的特意安排。</p><p><br/>你的核心问题可能是：<br/>1）你不会总结过往的工作经验。<br/>2）你不知道如何挖掘自己的优势。<br/>3）你不知道如何规划自己的职业生涯。<br/>4）你还有些不自信、迷茫，不知如何变得内心强大。</p><p><br/>肯定的说，我可以帮到你什么：<br/>1）从底层帮你分析，找到你的定位。<br/>2）从技能层帮你发现，知道你会什么。<br/>3）从学习层帮你思考，明白你差什么。<br/>4）从视野层告诉你，你的职业方向。<br/>_________________________<br/>说了这么多，是时候告诉你，我是谁了：<br/>1）前葡萄创投创始合伙人，前极客学院联合创始人。<br/>2）10年从业经验：4年创业联合创始人，6年HRD、运营总监经历。<br/>3）奋斗过的地方：葡萄创投、极客学院、尚德机构、科大讯飞等。<br/>4）从0到1：第一次创业作为合伙人成功将极客学院从0做到B轮。<br/>5）带过团队：有180人、500人、820人、1200人团队不等。<br/>6）面试数量：10年面试过应聘者3000+人。</p><p><img src=\"/zh/public/static/index/img/20171105/1509861006527784.jpg\" title=\"1509861006527784.jpg\" alt=\"16.jpg\"/></p><p><br/></p>', '31', '3', '598', '3', '', null);

-- ----------------------------
-- Table structure for zh_tutor
-- ----------------------------
DROP TABLE IF EXISTS `zh_tutor`;
CREATE TABLE `zh_tutor` (
  `tutor_id` int(11) NOT NULL AUTO_INCREMENT,
  `tutor_identity` varchar(255) DEFAULT NULL,
  `tutor_lead` text,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `status` bit(1) NOT NULL DEFAULT b'1',
  `location` varchar(255) DEFAULT NULL,
  `tutor_img` varchar(255) NOT NULL,
  `tutor_name` varchar(255) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `sort` varchar(255) DEFAULT '0',
  PRIMARY KEY (`tutor_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='行家';

-- ----------------------------
-- Records of zh_tutor
-- ----------------------------
INSERT INTO `zh_tutor` VALUES ('1', '科锐国际总监，人力资源专家', '<p>THANK星球（创始人）/ 科锐国际（总监）\r\n\r\n近20年职场阅历，曾任美国上市公司软通动力（ISS）人力资源总监、创建过自己的管理咨询公司。科锐国际期间历任招聘流程外包华北、管理咨询、校园招聘和政府解决方案等业务线负责人，成功服务客户如：百度、VOLVO、华为、APPLE、南车、武汉市政府和舟山新区管委会等等。</p>', '1', '', '大望路－万达广场', '1.jpg', '邢志明', '1', '10');
INSERT INTO `zh_tutor` VALUES ('2', '英语培训师，科恩英语首席私塾先生', '<p>毕业于澳大利亚昆士兰大学。曾在国内外顶尖无线互联网公司任高管超过15年（Gameloft 中国区总经理、搜狐畅游移动事业部总经理）。主管海外业务的拓展，业务范围涉及到北美、东南亚及澳洲大部分国家、地区。</p>', '2', '', '望京 中关村', '2.jpg', '叶立江', '1', '70');
INSERT INTO `zh_tutor` VALUES ('3', '简历邦创始人', '12年互联网经验，曾供职于新浪网、微软MSN、凤凰网。在微软期间曾创办《职场人生》视频访谈，任总策划与主持人。2012年创办北京优可为管理咨询有限公司，致力于帮助职场人更好的发展，让每个人能 You Can Do！此后创建旗下网站简历邦，为求职者提供简历优化、职业规划、面试辅导等服务。', '3', '', '北苑', '3.jpg', '老可', '1', '20');
INSERT INTO `zh_tutor` VALUES ('4', '拉手网UED负责人', '我是石成禹，现在任拉手网担任UED部门负责人。\r\n\r\n从事设计工作有8年的时间了，从一个实习生到一个互联网公司UED部门负责人我用自己的热爱和付出实现了短暂的职业目标，我也在继续努力的路上，喜欢和有梦想的人一起交流学习。', '4', '', '望京', '4.jpg', '石成禹', '1', '100');
INSERT INTO `zh_tutor` VALUES ('5', '31会议副总裁，社群运营教练', '本科毕业于上海科技大学数学系，后获得上海交通大学工程硕士学位。一个典型的理工男，却对烧脑、营销、策划情有独钟。 1999年加入COSCO Group（世界500强企业）工作了10余年，担任IT 服务运营总监。2013年，终于没能压抑住内心的躁动，加入一个创业团队31会议。现在31会议已经成长为国内领先的营销科技公司，尤其是在泛Event领域。目前我是公司副总裁，负责Marketing Operation 和 Service delivery板块，完成了团队组建、营销体系搭建以及全国服务交付体系建设。', '5', '', '中山公园 世纪大道 陆家嘴', '5.jpg', '吴一中', '2', '0');
INSERT INTO `zh_tutor` VALUES ('11', '知名外企人力资源总监', '我是Swan，西南科技大学经济学本科；同济大学MBA。拥有超过15年人力资源领域经验，目前在一家瑞士生物技术实验室仪器公司担任亚太区人力资源总监职位。我分别在世界500强企业，如美国箭牌糖果，瑞士诺华制药，美国陶氏化学等公司担任过薪酬福利专家，人力资源业务伙伴和全国招聘经理等职位，在人力资源领域积累了丰富的经验招聘与选拔：校园招聘项目的规划，执行；Assessment Center（甄选中心）方案设计和评估，如无领导小组讨论，压力面试， Role Play （角色扮演）等；\r\n员工关系管理：评估、改善及优', '8', '', '陆家嘴，世纪大道，上海浦东', '1506678765130758.jpeg', 'chow', '2', '0');
INSERT INTO `zh_tutor` VALUES ('10', '欧姆龙自动化中国前市场及战略企划', '高考免试保送进入重点大学学习日语，大学期间高分通过最高级-日语国际能力一级考试\r\n曾在省级外事办公室国际交流处实习，对体制内的日专岗位有所了解\r\n目前在攻读中国人民大学传播学在职研究生，自媒体创业中大学毕业后拿到了悉尼大学的Conditional Offer，没想到机缘巧合的来到上海，然后又很幸运的在一周之内就进入了大型跨国日企-欧姆龙自动化（中国）有限公司，在陆家嘴CBD区一待N年，从市场部部长助理做起，陆续任职市场专员，产品PMM（类似欧美产品经理）和战略企划。和中/日方同事共同工作的多年间，了解了日', '6', '', '张江科技谷 陆家嘴', '1506657284620653.jpeg', 'json', '2', '0');
INSERT INTO `zh_tutor` VALUES ('12', '前腾讯高级项目经理&全球软件峰会主讲', '互联网/IT从业10+载、拥有1000+人、10+亿合同额超大项目治理经验、200+人公司经营经验，前腾讯高级项目经理、曾任某创业分公司总经理。TOP100SUMMIT（全球软件案例研究峰会）演讲嘉宾、罗友霸王课、职前辈、随时随课、PM大咖秀等平台公益分享讲师。\r\n\r\n近年来，我致力于企业的战略管理、团队管理和经营管理，个人的思维管理、时间管理、职场规划等领域的深度研究和践行。咨询培训受众10000+人次，既走进过北京大学、北京理工大学等知名高校，又走进过EMC、FESCO、腾讯、人人网等知名企业，帮助高校老师、在校大学生、职场人士构建积极成长的人生。\r\n\r\n个人微信公众号88busy（ID：i88busy）沉淀了我一路来的所思、所试和所得，愿我的双脚就是你的双脚，带你走向积极成长的人生', '10', '', '清河', '6.jpg', '丰志强', '1', '0');
INSERT INTO `zh_tutor` VALUES ('13', '德威嘉业猎头创始人', '能够以我15年的猎头经验、20年的管理经验帮你发现自身优势的盲点，并有效地梳理职业发展定位和中长期的职业发展路径。可为求职者简历撰写与优化、职业发展定位、新职业的选择、职业发展规划等咨询，为企业招聘者提供招聘渠道的有效利用、如何使猎头服务更有效等与招聘工作相关的咨询。 \r\n\r\n发现问题其实比解决问题更重要，希望我的经验能够帮到你。\r\n\r\n北京师范大学 数学学士 北京航空航天大学管理学院 系统工程与管理工程硕士 北京大学光华管理学院 EMBA\r\n\r\n15年猎头经验、20年管理经验。\r\n\r\n曾任职于SONY子公司、英资医药公司和国有企业集团，历任管理部经理、人力资源总监、总裁助理等职务。于2002年创立德威嘉业猎头公司，至今已有15年。致力于房地产、IT、通信、互联网、消费品、商业零售、传媒、工业制造、金融投资、生物医药等行业的猎头服务。 为国际国内知名企业提供高级管理与技术人才，与大量的优秀候选人和企业管理者进行过深入的沟通与交流。见证了很多企业从小到大的蜕变过程和职业经理人的快速成长历程。\r\n\r\n长期服务于龙湖集团、绿城集团、万达集团、恒大集团、阳光城集团等百强地产客户和联想、百度、富士通、欧莱雅、优衣库、Kappa等知名企业。熟悉国际国内知名企业的用人理念和招聘标准。 \r\n\r\n2005年 德威嘉业创始人任军先生入选《英才》杂志评选的“中国猎头50人”。\r\n\r\n2009年 德威嘉业猎头荣获“中国猎头业二十家精英品牌机构”称号。\r\n\r\n2009年 德威嘉业创始人任军先生荣获“2009中国猎头精英顾问”称号。\r\n\r\n2013年 德威嘉业猎头荣获世茂集团“优秀猎头合作伙伴”称号。', '11', '', '海淀 西城', '7.jpg', '德威嘉业猎头创始人', '1', '0');
INSERT INTO `zh_tutor` VALUES ('14', '生涯咨询师', '我从事人力资源工作十余年，并任职公司高管十余年，曾在机关、商业地产运营、汽车技术研发等多元化集团公司工作，人力一线出身的我有机会亲自面试万余人，选拔、培训、培养人才近千名。理学学士，工商管理硕士、以及生涯咨询师的教育和培训经历，让我工作中对问题的洞察更强，思路更开阔，并且我会结合过往企业变革管理、战略、运营、企业脱胎换骨式的管理与经营升级的经验，为不同年龄、不同领域的职场人士提供个性化的生涯咨询和能力提升培训。\r\n\r\n希望我2年多的生涯咨询和20年的职场经验可以给你更多帮助，我会从挖掘你的特性梳理你的问题、从结合你特有的优势出发、结合你所处的情景，解决你职场中的种种困惑，专业而独特，结果落地可行。在我们的互动中，照见你看不见的或不愿意看的，唤醒你遗忘的或忽略的，展示你每次选择时的思维模式，帮助你增加生活的高度、深度、宽度和温度，悦纳而快乐。', '12', '', '不限', '8.jpg', '杨瑜茹', '1', '0');
INSERT INTO `zh_tutor` VALUES ('15', '微软在线人力资源总监', '我是王硕，毕业于新西兰梅西大学，在海外生活多年，目前就职于微软在线人力资源部，任职人力资源总监，熟悉人力资源的各个模块，尤其擅长薪酬设计、短期和长期激励、面试技巧。\r\n\r\n我是互联网里面的老兵，2006年加入MSN中国，就职于人力资源部，任职人力资源总监，搭建了整体的人力资源体系，包括薪酬、培训、面试、绩效等。我喜欢跟年轻人一起分享我的经验，也愿意倾听他们的想法，希望可以在职场上帮助更多的人。', '13', '', '不限', '9.jpg', '王硕', '1', '0');
INSERT INTO `zh_tutor` VALUES ('16', '新浪移动设计经理，前腾讯资深设计师', 'hello，我是郑炜，你可以叫我deep；\r\n\r\n目前是新浪移动用户体验部设计经理，负责3款移动客户端：新浪新闻、新浪体育、新浪财经，以及手机新浪网的用户体验及交互设计团队的管理工作；\r\n\r\n前腾讯资深交互设计师，参与腾讯微博/QQ/盒子等若干产品的用户体验设计工作。\r\n\r\n曾经的工作还包括有视觉设计师、页面构建、产品经理；\r\n\r\n过往项目经验包括有移动社交、资讯、垂直门户、电商、TV、O2O等不同类型产品的用户体验设计工作，也为一些创业公司和咨询公司提供过用户体验培训和专家顾问服务；\r\n\r\n作为交互设计师的我善于分析和推导，同理心强，并跨界用户研究、视觉设计、动效设计等方向，关注设计在驱动产品成功方面的价值体现，同时也高度关注竞品、渠道、及行业生态链。\r\n\r\n作为一个背包客，摄影和旅行是我的最爱，近年一直在藏区游历，拍了风光片无数，如果你有兴趣，也可以聊一聊；\r\n\r\n希望通过我的经验和方法来帮助你解决问题。', '14', '', '海淀', '10.jpg', '郑炜', '1', '0');
INSERT INTO `zh_tutor` VALUES ('17', '中国建筑设计院院办主任', '本科毕业于中央财经大学投资经济系，研究生毕业于北京大学城环学院，现就职于中国建筑设计院有限公司建筑院办公室，从事人力资源及行政管理工作。具备五年300人以上建筑设计公司管理经验。 作为人力负责人亲手经历150余人的招聘面试、入职、晋升、培养、职称评定、离职谈判等工作，连续五年进行职称申报材料填报审核工作，通过率达90%以上。 作为行政负责人主管五年300人规模年会，举办策划国际建筑大师讲座十余场，积累了丰富的项目活动策划、组织经验。\r\n\r\n个性活泼、热情开朗，喜欢尝试一切。业余组织“小伙伴大讲堂”公益活动，已坚持14期（每月一期），每期20-30人参加。爱好管饭，但在文字、诗词歌赋上较普通人有特长。 三观周正，相信这世界和人心均存在着我们所未探索到的巨大未知，坚信努力、坚持、自立才是所有难题最好的解决办法。热爱一切聪明而又善良的人们。', '15', '', '德胜门外', '11.jpg', '贾濛', '1', '0');
INSERT INTO `zh_tutor` VALUES ('18', '奥美等国际4A广告公司前董事总经理', 'Arthur Yu 余沛怡\r\n\r\n# 香港人，在1998 年回归祖国，现居上海。精通英语，普通话和粤语。\r\n\r\n# 历任国际4A广告公司董事总经理，包括奥美，JWT，麦肯，李奥贝纳等。拥有30+年为客户建立品牌，创造销售的经验。\r\n\r\n# 现任国际企业管理咨询公司首席顾问和行政教练，为客户提供领导力，沟通力和营销的咨询和培训。\r\n\r\n# 同时兼任HKU SPACE香港大学中国商业学院整合营销传播学系研究生班讲师。', '16', '', '市区为主，若在北京/广州/深圳视约见人定', '12.jpg', '余沛怡', '2', '0');
INSERT INTO `zh_tutor` VALUES ('19', '前万达人力资源总监，迪士尼培训师', '云老师Cloud，曾任万达集团总部人力资源管理中心总监，负责企业高管招聘及业务伙伴方面的工作，行业涉及商业地产海外项目、文化娱乐体育和互联网金融等。\r\n\r\n此前还曾担任华特迪士尼公司、上海迪士尼度假区企业资深讲师，经历上海迪士尼度假区谈判、设计、建设、开发和运营阶段，见证公司从8个人扩增至1万人的规模，对迪士尼的公司文化、企业愿景、业务板块构成、产品线等有着深入理解。负责迪士尼入职培训和领导力培训，培训员工数上千人，受众人群从公司高管到基层员工。\r\n\r\n目前为企业和个人提供各类培训课程和相关服务，包括：职业生涯规划、沟通技巧、魅力演讲、跨文化沟通、建立个人信誉、驱动变革、培训师培训课程、理财类课程等。客户企业包括：万达、迪士尼、西门子、耐克、中宏保险、联合利华等；客户学校包括：新东方、环球雅思、交大昂立、光华教育、上海交大附中、成都七中等。', '17', '', 'Shanghai', '13.jpg', '贺靖', '2', '0');
INSERT INTO `zh_tutor` VALUES ('20', '阳光七星媒体集团全球COO执行助理', '我是史文君，现任阳光七星媒体集团全球COO执行助理。在房地产、艺术投资行业从业超过10年，其中超过5年担任公司一把手秘书/助理。 曾担任：\r\n\r\n九龙云天集团组织管理中心人事经理\r\n上海喜玛拉雅美术馆创始馆长助理\r\n上海佘山国际高尔夫俱乐部有限公司董事长/总裁秘书\r\n因为机缘巧合成为总裁秘书，面对老板，从一开始的诚惶诚恐到应对自如，这个期间得到了很多的历练和收获。这段工作当中的不断摸索让我迅速成长，并在之后的工作中有了更全面的思维角度，更高的视野；帮助我接触到了更多闪光的人物（包括马云、王中军、郭广昌、周成建、范敏等优秀的企业家）和志同道合的朋友。可以说，做总秘的生涯或许短暂，但其对于整个职业发展和人生发展的影响却是一直存在的。\r\n\r\n做总秘，你能学到的不只是如何订机票。希望我的经验能够帮到你。', '18', '', '徐家汇、人民广场', '14.jpg', '史文君', '2', '0');
INSERT INTO `zh_tutor` VALUES ('21', '上海外滩网信互联网金融 COO', '处女座完美主义者，2002年复旦毕业后，混迹金融、科技圈15年，横跨风险管理、内控/审计/合规、流程优化、综合运营、战略管理等领域，具备清晰严谨的逻辑思维，眼光敏锐，表达流畅，擅长对各个发展阶段的企业进行诊断、制定解决方案。\r\n\r\n职业经历：\r\n\r\n2015年起任上海外滩网信互联网金融COO，分管产品、运营、技术、市场，兼管内控与风险管理。开拓供应链金融、消费金融新业务模式，全面提升交易规模与盈利水平，推行基于数据分析的绩效评估与组织变革，帮助公司向科技金融转型。\r\n\r\n2014~2015年，任麦子金服CEO高级助理兼审计合规总监。帮助CEO确定年度战略目标、设计分解实施路径，协调各条线负责人按计划推进，保证各项战略落地； 主导完成平台类资产证券化、银行资金存管、保险渠道合作、A轮融资发布会等公司级项目；联合业务部门完成电商渠道支付嵌入、校园O2O、消费金融、APP导流互换等合作项目；联合后台部门完成公司健康检查、产品线研发与扩展、现金流监控模型、全面预算与投入产出分析、IT项目管理机制建立等内部管理项目；运用六西格玛工具推行流程优化、变革与再造，取得贷款审批效率提高86%、操作合规率提高20%、技术Bug问题解决速度提高100%、短信成本降低50%、支付中止率降低40%等成果； 统一业务/财务数据源，建立数据应用与管理制度，实现各业务线收入、成本细分，出具管理会计（真实损益）报告，建立基于个人用户的贡献/成本核算体系，推动建立大数据分析与预测（BI）系统。\r\n\r\n2013~2014年，任红星美凯龙内控合规副总监。从无到有建立起覆盖全国所有分支机构的内控检查与评价体系；建立制度流程全生命周期闭环管理体系；作为核心成员推行集团ERP系统，达成基础数据准确率高于99%、系统主要流程固化、系统主要功能实现与持续优化等目标；作为核心成员推行集团“服务口碑”建设项目，聚焦顾客服务业务链，组织5大模块梳理业务事项与问题，编写SOP管理规定20份、关键岗位手册11份，开发、审核岗位培训课件（含学员手册）7份，并落实试行、优化和检查考核等配套工作，通过标准化服务管理提升服务口碑、打造核心竞争力与盈利能力；主导推行集团“基础管理提升”项目，牵头成立内控、法务、行政、财务联合项目组，通过实地调研、制订制度、细化流程、试点推行、固化系统一系列步骤，全面提升集团合同、档案、印章等基础管理水平，达成外部审计目标，为上市合规提供重要保障。\r\n\r\n2011~2013年，任华为公司高级内控与风险管理经理，派驻俄罗斯大区，全面负责俄罗斯、乌克兰、白俄罗斯、亚美尼亚等国家的所有业务/流程的内控建设、落地、评估与提升工作。从无到有建立起区域内控责任体系（KPI指标与责任矩阵），落实内控考核、述职和问责；制订、发布区域内控管理手册（方法论白皮书），以及十余份配套管理制度；建立10个主要业务流程的内控管理小组，覆盖销售线索、合同评审与履行、工程交付、工程与行政采购、供应链管理（订单履行与逆向）、行政后勤服务、财经管理（资金、税务、应收账款、销售融资、信用管理）全过程； 通过挖掘问题、分析根因并制定、落实改进计划，2年累计改进TOP问题30项，挽回及预防经济损失逾500万美元；通过优化高风险流程KCP与遵从性测试程序，复核测试结果，提高区域月度测试准确率30%； 梳理子公司税务、外汇、劳工、海关、法律等遵从性风险共35项，明确风险等级、解决方案和外部关系人，指定责任人定期跟踪维护，保证各项风险控制在可接受范围内，预防潜在损失至少300万美元。\r\n\r\n2002~2011年，任中国太平洋保险（集团）高级审计师。制定年度审计计划与相应的审计方案、审计程序；担任审计项目经理，带队实施各类审计项目，9年累计实施超过100个审计项目，包括内控/流程审计、经济责任审计、业务专项审计、非现场审计等，覆盖寿险子公司、全国37家分公司及下辖200余家分支机构，内容涵盖公司财务制度制订与执行、业务合规性/真实性、日常运作规范性及各项内控制度的健全性、合理性、有效性与执行情况等，出具审计报告约100份，提出审计建议超过1000条，带来整改收益至少1000万元； 通过确认与咨询业务增加企业价值，为组织目标的实现提供合理保证； 独立实施子公司关联交易调查，并出具集团上市合规相关报告。', '19', '', '上海', '15.jpg', '张文洁', '2', '0');
INSERT INTO `zh_tutor` VALUES ('22', '资深人力资源副总裁，行业资深专家', '拥有世界500强企业（如3M、IBM、Oracle、德勤等）丰富的工作经验，全面负责国内以及海外机构的人力资源管理工作，有近7年的自主创业经历，为中小创业企业提供人力资源咨询以及解决方案的业务，近几年在知名互联网企业以及智能硬件企业的从业经历，担任人力资源副总裁职务。在国内最有影响力的HR专业组织担任主要角色，例如人力资源研究协会，智享会，CHO俱乐部，HR沙龙，招聘兄弟会等组织。', '20', '', '上海', '16.jpg', '武京国', '2', '0');
INSERT INTO `zh_tutor` VALUES ('23', '上海交通大学产业人力资源研究所副所长', '上海交通大学产业园区人力资源研究所副所长(2016年10月迄今)\r\n上海中富投资控股公司副总经理（1998年10月-2016年7月）\r\n中富所属中新合资苏州嘉瑞酒店管理公司法人总经理（2014年6月-2016年9月兼任）\r\n中国华源地产事业部人力资源总监兼销售总监（93年春-98年秋）\r\n上海天厦物业发展有限公司总经理（96年初-98年9月兼任）\r\n中国人力资源研究副会长(2011年2月迄今)\r\n中国中坚力量职业精英关怀计划导师（2015年上海第一财金等发起）\r\n公益机构青海教育救助会理事会高级顾问（2011年夏迄今）\r\n加拿大人力资源协会中国分会理事\\加拿大HRMA认证会员(1016年10月迄今)\r\n由谢万弟主编出版发行的书籍及主要报刊撰文的有: 《绩效管理实务》，《找到你的职场起点》等中国劳动保障报人力资源案例专栏作者 几十年在民企，现代国企和中外合资企业的实践，使我既具备了大型集团企业的宏观指导能力；又具备了中小型企业，尤其是民营企业具体运作的实战经验。\r\n\r\n擅长：以市场及战略为驱动的企业人力资源绩效体系的设计及过程管理。以绩效产出为导向的企业人力资源开发、培养、激励和薪酬设计及落地等。曾为上海、山东、贵州等企业提供绩效提升及人力资源咨询服务；曾为包括IBM、特劳特、陆道股份等在内的诸多人力资源高管个人提供职场咨询。在华源及中富的工作实践中，陆续培养出一批服务于不同企业的职业经理人，包括总经理，副总，总监及部门经理等。\r\n\r\n曾连续六期担任上海房地产行业人才交流中心高级人才培训特约讲师，行业受训高层管理对象合计600多人。在国内首创互动式面试法，为精准、高效甄别人才提供了独特的方法。曾亲自前往青藏高原牧区了解需求，为中国著名公益组织格桑花西部教育救助会重新制定组织战略及全程培训，由此格桑花被秘书长洪波赞誉为:我身边的德鲁克。', '21', '', '上海静安区', '17.jpg', '谢万弟', '2', '0');
INSERT INTO `zh_tutor` VALUES ('24', '知名500强外资公司人力资源战略伙伴', '很高兴在在行与各位见面。我目前就职于某金融外资公司，从事人力资源管理工作。\r\n\r\n我的工作就是从人力资源的角度帮助业务部门更好地管理团队。平时也会基于员工的问题提供专业的职业发展建议，提升员工的工作动力，也帮助他们更有针对性地提升自己业务能力。\r\n\r\n在此之前，我有近五年的Top药企从业经验。从事过招聘，员工管理以及运营的工作，积累了大量的人力资源经验，能从全局的角度提供更有战略性的建议，帮助你更好地准备自己，迎接未来的挑战。\r\n\r\n站在巨人肩膀上的高起点带了我更广阔的视野，而接受过的专业咨询培训课程也能为你提供更有深度广度的咨询。能够一针见血地发现问题并且帮助你一起解决问题。希望在成长的路上，一起前行！', '22', '', '浦东新区', '18.jpg', '周慧', '2', '0');
INSERT INTO `zh_tutor` VALUES ('25', '互联网教育独角兽企业 副总裁', '互联网教育独角兽企业高管、江湖人送外号“歪叔”——因为谈吐幽默，积极乐观，为人热情，老不正经。\r\n\r\n5年TCL、10年互联网教育独角兽企业，我的职场经历简单但不肤浅：\r\n\r\n经历过传统制造型企业，也经历过新型互联网企业，深知传统企业与互联网企业的不同与兼容点；\r\n从小区创业起步，发展到全国知名的互联网企业，克服了无数的坑，也见过不少创业企业没能趟过；\r\n15年职场经历，从职场小兵成长为市值近百亿元互联网新贵的高管，有职场成功的心得，也有职场沉沦的切肤之痛；\r\n当过车间工人、门店营业员、分析师，干过广告销售、商务BD、图书出版、品牌公关、网络运营、企业高管；\r\n与上千人打过交道，见过很多不优秀的人把握住机遇、成为人生赢家，也有很多优秀的人才慢慢被企业所淘汰。\r\n众多岗位的经历与职场阅历，让我可以分享自己的沉淀的经验与观点给你。\r\n\r\n所获部分荣誉：\r\n\r\n2014年 《经理人》杂志 中国最具商业价值职业经理人TOP30；\r\n2014年 《品牌观察》杂志 中国年度品牌策划人；\r\n2015年 上海市社会建设青年人才协会理事；\r\n2016年 共青团上海市张江高科技园区工作委员会委员；\r\n2017年 格局商学院特聘企业家导师。', '23', '', '世纪公园', '19.jpg', '徐华', '2', '0');
INSERT INTO `zh_tutor` VALUES ('26', '教练-前外资大中华高级总监', '对生活与世界充满好奇心和激情，喜欢思考，乐于分享！探索边界与可能，追求洞见与智慧，创造价值与意义。\r\n\r\n【工作经验】\r\n\r\n深圳百事可乐饮料有限公司：工作四年半的时间，从市场拓展代表做起，成长为区域拓展经理\r\n\r\n箭牌糖果（中国）有限公司：服务近十三年, 曾担任过全国销售发展经理，高级区域经理，高级大区运作经理，高级大区经理等岗位。非常有幸的前后与12位不同领导风格的上级经理共事，最后担任岗位是区域总经理，超过20亿人民币的业务，管理超过2000人的多功能团队。\r\n\r\n好时（中国）投资管理有限公司，就职一年半：出任大中华区高级销售总监，负责全国销售团队与渠道管理，领导收购品牌的销售整合项目。\r\n\r\n【教育背景】\r\n\r\n南京东南大学, 路桥工程专业学士学位，\r\n\r\n美国明尼苏达大学卡尔森学院的MBA学位\r\n\r\n香港大学创新营销和组织变革的研究生文凭\r\n\r\n澳洲ECCP的Executive Coach Certification专业高管教练认证\r\n\r\n职业生涯规划师', '24', '', '上海/广州/多伦多', '20.jpg', '孙嘉彬', '2', '0');
INSERT INTO `zh_tutor` VALUES ('27', '500强外企财务高管', '我叫Carrie，是个爱好广泛、有趣、有干货，看上去不像财务的资深财务和并购专家。\r\n\r\n教育背景：\r\n\r\n同济大学管理学院本科，全额奖学金获得者，高考数学、物理接近满分\r\n中欧国际工商学院MBA，欧盟全额奖学金赴西班牙IESE商学院交换\r\n注册会计师CPA，并拥有上交所独立董事和董秘资质\r\n2011年入选瑞典政府资助的20位中国企业社会责任领导之一。\r\n工作背景：\r\n\r\n拥有15年的从业经验，成长于普华永道会计事务所，做过审计，后成功内转到兼并收购部做财务尽调和估值，之后8年一直在外企担任财务高管，谙熟内部控制、财务分析、兼并收购、投资模型、企业财务和战略规划。\r\n\r\n经历过外企与民企的并购整合与财务规范、以及公司及其下属企业在香港和新三板的上市筹备。涉猎行业包括：快消零售、地产、农业和影视行业。\r\n\r\n机缘巧合从2006年起，开始兼职做培训讲师，教授过的课程包括AICPA（美国注册会计师）、理财师，汇报与演讲技巧、沟通、兼并收购、估值、财务分析等课程。课程非常受欢迎，所以也因此收获了不少粉丝，有的成了朋友，有的后来甚至成了我的下属和同事。 通过这个平台，可以和你分享从“学渣到学霸”的自创学习方法，也可以和你聊聊并购案例或我的财务职业经验与心得\r\n\r\n业余爱好：\r\n\r\n旅游达人、跑步健将、骑马游泳也爱。从小就喜欢音乐爱唱歌，在小荧星和市少年宫合唱团唱过，然后就一路唱，同济校园十大歌手，中欧好声音，目前和几个校友有个乐队，有相同爱好的朋友也可以一起交流交流。', '25', '', '不限', '21.jpg', '肖琦', '2', '0');
INSERT INTO `zh_tutor` VALUES ('28', '开始众筹项目总监，前媒体人', '曾有2年智能硬件创业经历，经历了初创企业从“0”到“1”的各个环节，横扫组织架构、产品研发、市场运营、财务控制等多个模块；6年电视媒体经验，曾供职浙江电视台，担任记者、制片人、新闻部副主任等岗位，擅长深度报道和现场直播。中国传媒大学新闻传播学硕士。标准大龄文艺女青年，是对生活一直竖着中指的女愤青，是一名优秀的摇滚老炮，是极限运动的拥趸，是智能硬件重度发烧友。若你对传播、创业、智能硬件、音乐、运动有任何沾亲带故的喜欢，我们都会成为好朋友。', '26', '', '梦想小镇', '1507560210788090.jpeg', 'yami', '5', '0');
INSERT INTO `zh_tutor` VALUES ('31', '前 葡萄创投创始合伙人', '<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\">生而为人，与众不同<br/>我相信每一位来到在行的朋友，都为了寻求经验和帮助、探寻进步与改变、热爱真知和学习的人。</p><p><img src=\"/zh/public/static/index/img/20171105/1509860869100862.jpg\" title=\"1509860869100862.jpg\" alt=\"13.jpg\"/></p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\">1.我是这样一个人：</p><ul style=\"box-sizing: inherit; margin-bottom: 22px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); list-style-position: initial; list-style-image: initial; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\" class=\" list-paddingleft-2\"><li><p>1）4年创业经历，前葡萄创投创始合伙人，前极客学院联合创始人。</p></li><li><p>2）10年从业经历，创业前曾担任互联网公司、上市公司、千人以上集团公司总监级别管理者。</p></li><li><p>3）连续创业者，作为合伙人身份参与的两家公司分别拿到2200万美金B轮和数百万RMB天使轮。</p></li><li><p>4）资深运营者，从0到1搭建9-120人创业团队，落地组织机制、运营节奏设计，实现用户0-100万。</p></li><li><p>5）终身学习者，每年有价值阅读经典书籍不低于50本，每周1本，2017年春节阅读并做笔记18本书。</p></li><li><p>6）宏观视野开阔，善于通过大时间周期、空间-时间-成本、结构框架分析等高阶模型透视底层规律并运用。</p></li><li><p>7）内在动机驱动者，拥有健康有效的系统学习习惯和知识管理模型，对源头知识及工具使用小有心得。</p></li><li><p>8）知识分享者，每周1文，开设“自慢先生”公众号，脉脉单文最高6.2万阅读，今日头条单文28.6万阅读。</p></li><li><p>9）简单生活习惯，6点起床，每天打坐15-30分钟，每天毛笔手抄《中庸》，每周跑步不低于20公里。</p></li><li><p>10）我的性格，理性、逻辑、坦荡、率性、自律，重朋友、重义气，相信灵魂寻找自己的伴侣。</p></li></ul><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\"><img src=\"/zh/public/static/index/img/20171105/1509860895125476.jpg\" title=\"1509860895125476.jpg\" alt=\"14.jpg\"/></p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\">2.我擅长的</p><ul style=\"box-sizing: inherit; margin-bottom: 22px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); list-style-position: initial; list-style-image: initial; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\" class=\" list-paddingleft-2\"><li><p>职业困惑解疑，透过现象解构职业、人生困惑，以内隐方法论和经验技巧「授人以鱼」。</p></li><li><p>内在动机训练，通过行为模式、职业动机的解读，为你走向内在动机驱动寻找方法。</p></li><li><p>职业规划，通过学习习惯和知识系统的构建，搭建不同的人生通道以慢胜快。</p></li><li><p>创业与融资，我还擅长运营体系搭建、组织经营管理、企业商业模式分析等。</p></li></ul><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\">3.我的观点</p><ul style=\"box-sizing: inherit; margin-bottom: 22px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); list-style-position: initial; list-style-image: initial; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\" class=\" list-paddingleft-2\"><li><p>成功的关键：追随「人生导师」+良好的学习习惯系统+十年如一日的践行。</p></li><li><p>优秀人特质：内在动机驱动、不偏不倚的自我认知、对知识无止境的追求。</p></li><li><p>简单的生活：五音令人耳聋；五味令人口爽；驰骋田猎，令人心发狂。</p></li></ul><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\">4.我的足迹</p><ul style=\"box-sizing: inherit; margin-bottom: 22px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); list-style-position: initial; list-style-image: initial; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\" class=\" list-paddingleft-2\"><li><p>微信：geeksean（格式，姓名-在行）</p></li><li><p>公众号：自慢先生，zhiye51</p></li><li><p>今日头条认证号：自慢先生</p></li><li><p>微博：http://weibo.com/sean0413</p></li></ul><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\">5.部分推荐书单（爱书之人可单独联系）</p><ul style=\"box-sizing: inherit; margin-bottom: 22px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); list-style-position: initial; list-style-image: initial; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\" class=\" list-paddingleft-2\"><li><p>林达《如彗星划过夜空》</p></li><li><p>侯世达：哥德尔、埃舍尔、巴赫</p></li><li><p>孙皓晖：《大秦帝国》共9本</p></li><li><p>盐野七生：《罗马人的故事》共15本</p></li><li><p>南怀瑾：南怀瑾全集10卷</p></li><li><p>查理芒格：《查理·芒格传》</p></li><li><p>迈克尔·波特《竞争战略》</p></li><li><p>阿西莫夫：《基地》共7本</p></li></ul><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\">&nbsp;</p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\">灵魂，寻找自己的伴侣。</p><p><br/></p><p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">我有一个人生大梦：通过对知识的学习和掌握，启人心智。在我进行第二个人生十年思考的时候，我将这条设定为终身的信条，并将践行直至生命的最后一秒。或许，这个愿力是微小的，但假设有一人因此受益而让人生和生活变得美好起来我也是愿意的。</span></p><p><img src=\"/zh/public/static/index/img/20171105/1509860910911025.jpg\" title=\"1509860910911025.jpg\" alt=\"12.jpg\"/></p>', '30', '', '中关村、奥运村星巴克', '1509860919271156.jpeg', '王鑫', '1', '0');

-- ----------------------------
-- Table structure for zh_tutor_info
-- ----------------------------
DROP TABLE IF EXISTS `zh_tutor_info`;
CREATE TABLE `zh_tutor_info` (
  `tutor_info_id` int(11) NOT NULL AUTO_INCREMENT,
  `realname` varchar(255) NOT NULL,
  `city` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `industry` varchar(255) NOT NULL,
  `working_years` char(10) NOT NULL,
  `studio` varchar(255) NOT NULL,
  `occupation` varchar(255) NOT NULL,
  `education` text NOT NULL,
  `experience` text NOT NULL,
  `project` text NOT NULL,
  `media_reports` text NOT NULL,
  `introduction` text NOT NULL,
  `awards` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tutor_info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_tutor_info
-- ----------------------------
INSERT INTO `zh_tutor_info` VALUES ('1', '123', '2', '123', '3', '2', '123', '123', '333333333333333333333', '88888888888888888', '', '', '		66666666666666666666			', '', '2', 'index/betutor/img/1506580845795401.jpeg', '1');
INSERT INTO `zh_tutor_info` VALUES ('2', 'json', '2', '张江科技谷 陆家嘴', '1', '1', '欧姆龙自动化中国', '前市场及战略企划', '高考免试保送进入重点大学学习日语，大学期间高分通过最高级-日语国际能力一级考试\r\n曾在省级外事办公室国际交流处实习，对体制内的日专岗位有所了解\r\n目前在攻读中国人民大学传播学在职研究生，自媒体创业中', '大学毕业后拿到了悉尼大学的Conditional Offer，没想到机缘巧合的来到上海，然后又很幸运的在一周之内就进入了大型跨国日企-欧姆龙自动化（中国）有限公司，在陆家嘴CBD区一待N年，从市场部部长助理做起，陆续任职市场专员，产品PMM（类似欧美产品经理）和战略企划。和中/日方同事共同工作的多年间，了解了日企风格，养成了日式思维，对职场中的岗位尤其是市场部门，产品部门，销售部门和战略企划部门的岗位职能有清晰的认识，对日企中的上升路径和工作要领都深有体会。可以说，日本文化和职场中很多价值观和方法论给我的人生带来了很多正面的影响，这是最大的收获。', '', '', '除了我的直接经验，还有很多同学朋友间接经验也愿意分享给你，日本就职的学霸，日本高校博士毕业的牛人，日企的HR经理，公务员系统的日中交流“老干部”,当然，远嫁日本，或者定居日本的朋友更是不少，你要感兴趣，也可知无不言\r\n职场外，读书写作，电影评论，人文艺术，潜水和瑜伽，和现在最热门的自媒体及“斜杠青年”，我们都可以聊聊\r\n我的Icon-特斯拉的埃隆.马斯克说，“我的理想是在火星上退休”，而我的终极梦想是在火星上见证他退休，你看，生活总是令人兴奋，围绕着你的专业，职业和人生，也充满一切可能！', '', '6', 'index/betutor/img/1506657284620653.jpeg', '1');
INSERT INTO `zh_tutor_info` VALUES ('3', 'chow', '2', '陆家嘴，世纪大道，上海浦东', '1', '1', '知名外企', '人力资源总监', '我是Swan，西南科技大学经济学本科；同济大学MBA。拥有超过15年人力资源领域经验，目前在一家瑞士生物技术实验室仪器公司担任亚太区人力资源总监职位。我分别在世界500强企业，如美国箭牌糖果，瑞士诺华制药，美国陶氏化学等公司担任过薪酬福利专家，人力资源业务伙伴和全国招聘经理等职位，在人力资源领域积累了丰富的经验', '招聘与选拔：校园招聘项目的规划，执行；Assessment Center（甄选中心）方案设计和评估，如无领导小组讨论，压力面试， Role Play （角色扮演）等；\r\n员工关系管理：评估、改善及优化人力资源员工关系管理体系及流程，构建健康的企业文化；确保公司政策制度符合国家及地区的相关劳动法律法规；\r\n薪酬福利：岗位设计与评估；薪酬福利规划；薪酬市场调研等。', '', '', '在过去的职业生涯中，我遇到过很多年轻，优秀的求职者。他们满怀抱负，也有很好的专业技能，但是因为不懂如何通过简历体现自己的优势；或者在面试，甄选的流程中，没有做好准备，不能呈现出自己满足岗位需求的特质，导致错失了良好的职业发展机会，甚至对自己未来的发展丧失了信心。', '', '8', 'index/betutor/img/1506678765130758.jpeg', '1');
INSERT INTO `zh_tutor_info` VALUES ('4', 'yami', '5', '梦想小镇', '1', '2', '开始众筹', '项目总监，前媒体人', '曾有2年智能硬件创业经历，经历了初创企业从“0”到“1”的各个环节，横扫组织架构、产品研发、市场运营、财务控制等多个模块；', '6年电视媒体经验，曾供职浙江电视台，担任记者、制片人、新闻部副主任等岗位，擅长深度报道和现场直播。中国传媒大学新闻传播学硕士。', '', '', '标准大龄文艺女青年，是对生活一直竖着中指的女愤青，是一名优秀的摇滚老炮，是极限运动的拥趸，是智能硬件重度发烧友。若你对传播、创业、智能硬件、音乐、运动有任何沾亲带故的喜欢，我们都会成为好朋友。', '', '26', 'index/betutor/img/1507560210788090.jpeg', '1');
INSERT INTO `zh_tutor_info` VALUES ('13', '王鑫', '1', '中关村、奥运村星巴克', '1', '3', '前 葡萄创投创始', '合伙人', '<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\">生而为人，与众不同<br/>我相信每一位来到在行的朋友，都为了寻求经验和帮助、探寻进步与改变、热爱真知和学习的人。</p><p><img src=\"/zh/public/img/20171105/1509860869100862.jpg\" title=\"1509860869100862.jpg\" alt=\"13.jpg\"/></p>', '<p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\">1.我是这样一个人：</p><ul style=\"box-sizing: inherit; margin-bottom: 22px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); list-style-position: initial; list-style-image: initial; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\" class=\" list-paddingleft-2\"><li><p>1）4年创业经历，前葡萄创投创始合伙人，前极客学院联合创始人。</p></li><li><p>2）10年从业经历，创业前曾担任互联网公司、上市公司、千人以上集团公司总监级别管理者。</p></li><li><p>3）连续创业者，作为合伙人身份参与的两家公司分别拿到2200万美金B轮和数百万RMB天使轮。</p></li><li><p>4）资深运营者，从0到1搭建9-120人创业团队，落地组织机制、运营节奏设计，实现用户0-100万。</p></li><li><p>5）终身学习者，每年有价值阅读经典书籍不低于50本，每周1本，2017年春节阅读并做笔记18本书。</p></li><li><p>6）宏观视野开阔，善于通过大时间周期、空间-时间-成本、结构框架分析等高阶模型透视底层规律并运用。</p></li><li><p>7）内在动机驱动者，拥有健康有效的系统学习习惯和知识管理模型，对源头知识及工具使用小有心得。</p></li><li><p>8）知识分享者，每周1文，开设“自慢先生”公众号，脉脉单文最高6.2万阅读，今日头条单文28.6万阅读。</p></li><li><p>9）简单生活习惯，6点起床，每天打坐15-30分钟，每天毛笔手抄《中庸》，每周跑步不低于20公里。</p></li><li><p>10）我的性格，理性、逻辑、坦荡、率性、自律，重朋友、重义气，相信灵魂寻找自己的伴侣。</p></li></ul><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\"><img src=\"/zh/public/img/20171105/1509860895125476.jpg\" title=\"1509860895125476.jpg\" alt=\"14.jpg\"/></p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\">2.我擅长的</p><ul style=\"box-sizing: inherit; margin-bottom: 22px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); list-style-position: initial; list-style-image: initial; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\" class=\" list-paddingleft-2\"><li><p>职业困惑解疑，透过现象解构职业、人生困惑，以内隐方法论和经验技巧「授人以鱼」。</p></li><li><p>内在动机训练，通过行为模式、职业动机的解读，为你走向内在动机驱动寻找方法。</p></li><li><p>职业规划，通过学习习惯和知识系统的构建，搭建不同的人生通道以慢胜快。</p></li><li><p>创业与融资，我还擅长运营体系搭建、组织经营管理、企业商业模式分析等。</p></li></ul><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\">3.我的观点</p><ul style=\"box-sizing: inherit; margin-bottom: 22px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); list-style-position: initial; list-style-image: initial; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\" class=\" list-paddingleft-2\"><li><p>成功的关键：追随「人生导师」+良好的学习习惯系统+十年如一日的践行。</p></li><li><p>优秀人特质：内在动机驱动、不偏不倚的自我认知、对知识无止境的追求。</p></li><li><p>简单的生活：五音令人耳聋；五味令人口爽；驰骋田猎，令人心发狂。</p></li></ul><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\">4.我的足迹</p><ul style=\"box-sizing: inherit; margin-bottom: 22px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); list-style-position: initial; list-style-image: initial; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\" class=\" list-paddingleft-2\"><li><p>微信：geeksean（格式，姓名-在行）</p></li><li><p>公众号：自慢先生，zhiye51</p></li><li><p>今日头条认证号：自慢先生</p></li><li><p>微博：http://weibo.com/sean0413</p></li></ul><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\">5.部分推荐书单（爱书之人可单独联系）</p><ul style=\"box-sizing: inherit; margin-bottom: 22px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); list-style-position: initial; list-style-image: initial; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\" class=\" list-paddingleft-2\"><li><p>林达《如彗星划过夜空》</p></li><li><p>侯世达：哥德尔、埃舍尔、巴赫</p></li><li><p>孙皓晖：《大秦帝国》共9本</p></li><li><p>盐野七生：《罗马人的故事》共15本</p></li><li><p>南怀瑾：南怀瑾全集10卷</p></li><li><p>查理芒格：《查理·芒格传》</p></li><li><p>迈克尔·波特《竞争战略》</p></li><li><p>阿西莫夫：《基地》共7本</p></li></ul><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\">&nbsp;</p><p style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 10px; padding: 0px; border: 0px; font-size: 14px; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; text-align: justify; white-space: normal;\">灵魂，寻找自己的伴侣。</p><p><br/></p>', '', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: &quot;Hiragino Sans GB&quot;, &quot;Microsoft YaHei&quot;, &quot;WenQuanYi Micro Hei&quot;, Arial, Helvetica, sans-serif; font-size: 14px; text-align: justify; background-color: rgb(255, 255, 255);\">我有一个人生大梦：通过对知识的学习和掌握，启人心智。在我进行第二个人生十年思考的时候，我将这条设定为终身的信条，并将践行直至生命的最后一秒。或许，这个愿力是微小的，但假设有一人因此受益而让人生和生活变得美好起来我也是愿意的。</span></p><p><img src=\"/zh/public/img/20171105/1509860910911025.jpg\" title=\"1509860910911025.jpg\" alt=\"12.jpg\"/></p>', '', '30', '1509860919271156.jpeg', '1');
INSERT INTO `zh_tutor_info` VALUES ('14', '胡晓妃', '1', '朝阳区', '1', '2', '经哲教育CEO，原集团公司', '副总', '<p style=\"box-sizing: inherit; margin: 0px 0px 10px; padding: 0px; border: 0px; font-size: 14px; font-weight: 400; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: \">【现任】经哲教育CEO</p><ul style=\"list-style-type: disc;\" class=\" list-paddingleft-2\"><li><p>10年投资经验，更能站在投资的角度帮助人才审视自己，任何企业雇佣我们都是在“投资自己”，不仅分享给您怎么把工作做得更好，更重要的是告诉您“如何让自己更值钱”，企业购买你的价值在哪里？应该如何挖掘自己身上的宝藏？在哪些方面投入时间、精力和金钱去充实自己。</p></li><li><p>10年职场一线，提炼了职场生存之术、如何从职场小白变得有影响力，当您处于学校、学历、专业正在白日化竞争的时代，如何通过重塑思维改造自己的命运？是我们倾注心血要做的事业！如何通过树立正确的职业价值观、职业思考力、解决问题的能力，塑造职场“性感的你”！</p></li><li><p style=\"box-sizing: inherit; margin: 0px 0px 10px; padding: 0px; border: 0px; font-size: 14px; font-weight: 400; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: \">【曾任】东旭集团 副总经理</p></li><li><p style=\"box-sizing: inherit; margin: 0px 0px 10px; padding: 0px; border: 0px; font-size: 14px; font-weight: 400; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: \">一、投资并购部</p></li><li><p>1、参与西安银行收购；2、参与上市公司的收购，对20间以上企业进行市场调研、投资分析； 3、投资者关系维护；&nbsp;4、参与某上市公司95亿定向增发。</p></li><li><p style=\"box-sizing: inherit; margin: 0px 0px 10px; padding: 0px; border: 0px; font-size: 14px; font-weight: 400; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: \">二、项目管理</p></li><li><p>&nbsp;1、负责10GW（100亿规模）以上光伏电站项目管理、评估、跨20个部门沟通的工作； 2、20人团队的管理工作。</p></li><li><p style=\"box-sizing: inherit; margin: 0px 0px 10px; padding: 0px; border: 0px; font-size: 14px; font-weight: 400; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: \">【曾任】诚力智扬集团 基金管理公司 总经理</p></li><li><p>1、负责旧城改造2亿基金募集、管理； 2、房地产基金LP业务开拓； 3、配合房地产项目开发、建设业务。</p></li><li><p style=\"box-sizing: inherit; margin: 0px 0px 10px; padding: 0px; border: 0px; font-size: 14px; font-weight: 400; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: \">【曾任】香港致富资本集团 北京办事处首席代表</p></li><li><p>&nbsp;1、海外上市业务拓展，国内净利润3000万以上企业项目开发谈判； 2、华北区投资人开拓，对接人民币PE和美元基金； 3、商业计划书编写； 4、参与5个项目的海外上市、融资业务； 5、与国内百家以上投资人建立联系，取得投资意向； 6、对VIE结构的理解； 7、对香港和美国资本市场的深入了解； 8、掌握海外上市操作核心要素。</p></li></ul><p><br/></p>', '<p style=\"box-sizing: inherit; margin: 0px 0px 10px; padding: 0px; border: 0px; font-size: 14px; font-weight: 400; vertical-align: baseline; background: 0px 0px rgb(255, 255, 255); line-height: 22px; color: rgb(102, 102, 102); font-family: \">【小结】 艺术生如何跨界到金融？又转战创业做教育？ 我06年艺术学院毕业，08年进入香港投行...在投融资领域从业10年，现在创业做教育，算是跨专业典型... 以下分别介绍我的特长和优势：</p><ul style=\"list-style-type: disc;\" class=\" list-paddingleft-2\"><li><p>《跨界思维——帮你跳出职场同质化竞争》跨界已然成为趋势，格力空调跨界手机，康师傅跨界瓶装咖啡，招商银行跨界做券商...企业为了长足发展都在跨界，最直接的就是对跨界人才的需求！又因当初填报专业的盲目，以及对个人兴趣的逐步了解，随着互联网➕、智能时代的到来，传统产业的迭代更新，对有些朋友来讲，不得不去考虑跨行、跨专业就业！最近职场新人及大学生经常会问到我，我想换专业？我不喜欢现在的专业！我的单一专业没有竞争优势，如何紧随公司业务发展？如何跨专业就业？能否顺利转型？都需要做哪些准备？等等... 我，一个艺术生如何跨界到投行？草根学校如何进入上市公司收购团队？又如何放弃前景工作和竞争力的薪水，从零开始创业？无不是跨界思维在引导着我...因为，我想主宰自己的人生，想通过自由、创造，获得幸福！</p></li><li><p>《职场中的攻心营销——如何销售自己》我曾在第二份工作薪水是毕业初的25倍，职场中如何销售自己，“把自己卖个好价钱”？让企业看到自己的现在价值、潜在价值、未来价值？如何有技巧的做好自我营销？尽在攻心营销！</p></li><li><p>《上级管理之术》，实践证明我走过几家公司，都能与老板或直接上司成为“朋友”，并成为其信任的下属，并且擅长与企业里高层管理者交流，消除因岗位级别造成的距离感，大大提高自己的工作效率和晋升加薪机会。这是思维方式、工作方法、沟通技巧的运用，让自己成为职场中上级管理的达人。</p></li><li><p>《如何成为自己人生的CEO》在智商、情商面前更加考验我们的是“逆商”。如何以退为进，掌握生命绽放的主动权？如何从现在开始规划自己，不仅是事业、还有家庭、更是下一代的培养...我愿意用真实的自己实际案例与您分享，这是一个曾经六岁即离开父母开始独立的女孩，一个曾经身无分文交学费的大学生，一个曾经只身闯北京的求职者...如何通过“决策”“判断”“选择”“放弃”...成为主宰自己人生的CEO的。故事都是我自己！</p></li></ul><p><br/></p>', '', '', '<p><span style=\"color: rgb(102, 102, 102); font-family: \">我热爱艺术，闲暇时作画、写书法，热爱跑步，每天五点一刻是“跑步”唤醒我那沉睡心灵的一刻，每月至少跑步完成100公里；同样是一个积极正能量的小宇宙，在我的人生清单中没有困难、没有无助、没有困惑。更是一个对生活投入无限热情的斜杠青年！希望结识同样的你！</span></p>', '', '29', '1509878039287561.jpeg', '0');

-- ----------------------------
-- Table structure for zh_tutor_topic
-- ----------------------------
DROP TABLE IF EXISTS `zh_tutor_topic`;
CREATE TABLE `zh_tutor_topic` (
  `tutor_topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `topic` varchar(255) NOT NULL,
  `duration` char(10) NOT NULL,
  `price` int(11) NOT NULL,
  `topic_introduction` text NOT NULL,
  `topic_achievement` text NOT NULL,
  `summary` text NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `cate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`tutor_topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_tutor_topic
-- ----------------------------
INSERT INTO `zh_tutor_topic` VALUES ('1', '123', '1.0', '123', '123333333333333333333333333', '3333333333333333333333333', '', '2', '1', null);
INSERT INTO `zh_tutor_topic` VALUES ('2', '日企求职渠道全解与申请及面试攻略', '1.0', '399', '世界500强日企悉数入驻中国，在华的日企总数在10万家不止，仅在上海就有超过万家以上，想求职的你，即便一天面试一个公司都有数十年的机会。\n\n然而你说你不知道日企去哪找，纳尼？无数的日企HR们求贤若渴，而想进日企的你却手足无措，家人不解，自己迷茫，对已经入职日企的友人羡慕嫉妒恨.......或者你以为：好学生=好工作，资质平平＝平庸的岗位，想跳槽=天花板.....实际上没你想得那么好也没有那么糟糕，只要我们解决一个问题：\n\n求职期的信息对称性！！！\n\n简单来说，你需要让尽可能多的日企知道你，以及，你尽可能多的知道日企的求职渠道，再通过完善的申请和符合日企风格的面试，很快就能如愿进入理想的日企职场。\n\n其实，日企求职渠道远比你想象的多，如果你是学生党，我懂得你作为小白一枚，唯一的信息源很可能就是学校的黑板报和传说中的学哥学姐，相较于欧美日韩等国家，中国的大学很少有就业支持中心，这就需要我们尽可能的做到要自己支持自己，或者找专业及有经验的人士support自己，如果你是中，高级日语人才或者日企工作者，一旦拓宽拓宽求职路径，就很有可能进一步打通职业通道。', '那么，我能和你分享什么：\n\n日企求职渠道面面观：业内日企专用招聘网站，综合性招聘网站日企版，政府引导性招聘平台，日企工商会专场，日企官网，日企校园宣讲会，社交平台，在华人脉，在日人脉.....\n以上求职渠道各有什么特点，具体如何操作简历投放？除以上外，有哪些求职陷阱，应聘雷区要小心避免？\n根据你的个人情况，具体问题具体分析，自身特色和优劣势在哪？如何排定以上渠道的优先顺序，找到个人专属最佳求职路径？', '', '6', '1', null);
INSERT INTO `zh_tutor_topic` VALUES ('3', '应届生专区：抓住机遇，找到好工作', '2.0', '299', '如何写出吸引HR的简历；\n500强企业面试模式和案例分析；\n面试问题回答技巧；\n商务礼仪等。', '有多年HR及管理从业经验, 并在多个世界500强公司工作。\n\n对500强企业校招，面试流程和模式非常了解。在过往五年的时间，已经辅导过过近50位优秀应届生及工作年限少于3年的青年求职者，通过和他们探讨职业规划，职业困惑，职场交往难题。同时可以帮助面试经验欠缺的候选人进行面试辅导，包括简历审阅，面试着装，礼仪及面试技巧的指导。', '', '8', '1', null);
INSERT INTO `zh_tutor_topic` VALUES ('4', '媒体人转型跳槽的路径向导', '1.5', '500', '传统媒体人往往是一名合格的“知道分子”，看起来具备广泛的“人脉资源”、独立的“记者视野”和前瞻的“传播理念”。单凭这几点，似乎就具备“天高任鸟飞”的无数可能性。转型、跳槽、跨行，成了传统媒体人时髦的选择。近几年，传统媒体人纷纷转投互联网的怀抱，企图在新的领域开疆辟土，却发现屡屡碰壁。该摔的跟头，一个也没拉下。纵观踏上互联网新征程的媒体人，都有类似的共性。找到共性、抓出通病，才能更好地稳住阵脚——\n\n媒体人转投“互联网创业”，需要突破哪些结界？\n\n跨行时需佩戴那几样“武器”可防身、可迎敌？\n\n凭借过去记者编辑生涯的积累，你能否在这个互联网+时代套现呢？\n\n本话题主要面向以下几类人群：\n\n也许你目前正处于职业的瓶颈期、迷茫期。你有些痛苦。\n也许你想了解传统媒体人转型后的生存样本，给自己一个坐标系。你有些期待。\n也许你想挑战自己，给生活来点颜色。你有些兴奋。', '​根据我的经验，约见中能提供如下建议：\n\n是持业、再就业，还是创业？为你的职业定位把把脉。\n深耕还是跨行，纵向重塑还是横向整合，为你量身定制。\n提供转型样本的大数据分析。\n如果你需要，我也能现场为你熬一碗鸡汤。', '', '26', '1', '4');
INSERT INTO `zh_tutor_topic` VALUES ('7', '精准职业定位，为2017晋升加薪！', '3', '598', '<p>身边很多朋友，因为职业定位清晰而获得了很好的发展。有得从对职业没有信心而逐步自信起来，有得薪资一年涨幅超过50%，有得甚至一年连升三级获得创始人的高度信任。在行上向我咨询过的63位朋友中，有很多朋友的人生和职业发生了积极的变化，也有不少人和我成为了朋友，会一起吃吃饭，跑跑步。</p><p><br/>我有一个人生大梦：通过对知识的学习和掌握，启人心智。在我进行第二个人生十年思考的时候，我将这条设定为我的终身信条，并将践行直至生命的最后一秒。或许这个愿力是微小的，但假设有一人因此受益而让人生和生活变得美好起来我也是愿意的。<br/><br/>如果你的职业遇到问题，你不需要去踩一遍别人踩过的坑，也不用去咨询太多的人，更不需要焦虑的不能安眠。你需要和一位你信任的和能解决你问题的人进行一次彻底的对话。相信，我可以是这个人。</p><p>_______________________________________________<br/></p><p><br/></p>', '<p>为了能解决问题，我设置了一个小门槛，我希望你：</p><p>1）有足够的学习欲望；</p><p>2）有坚持不懈做一件事的毅力。</p><p><br/>此话题，为渴望改变自己的人开启。下面是你可能遇到的问题：</p><p><br/>1）找不到职业的方向？<br/>2）不知道如何提升能力和技能？<br/>3）对自己失去信心，内心很惶恐？<br/><br/>问题出在了那里？<br/>1）是你不够努力？NO<br/>2）是你不够聪明？NO NO<br/>3）是你不惹人喜欢？NO NO NO</p><p><br/>看到这里，你应该下定决心来和我进行一次深度对话。<br/>因为，我知道你的问题在那里。</p><p><br/>不信，我问你3个问题：<br/>1）你的3个优缺点分别是什么？<br/>2）你最擅长的工作技能是什么？<br/>3）未来一年的职业打算是什么？</p><p><br/>三个问题，你都回答出来，你就不需要来见我喽！<br/>如果你回答不上来，遇见我是上天的特意安排。</p><p><br/>你的核心问题可能是：<br/>1）你不会总结过往的工作经验。<br/>2）你不知道如何挖掘自己的优势。<br/>3）你不知道如何规划自己的职业生涯。<br/>4）你还有些不自信、迷茫，不知如何变得内心强大。</p><p><br/>肯定的说，我可以帮到你什么：<br/>1）从底层帮你分析，找到你的定位。<br/>2）从技能层帮你发现，知道你会什么。<br/>3）从学习层帮你思考，明白你差什么。<br/>4）从视野层告诉你，你的职业方向。<br/>_________________________<br/>说了这么多，是时候告诉你，我是谁了：<br/>1）前葡萄创投创始合伙人，前极客学院联合创始人。<br/>2）10年从业经验：4年创业联合创始人，6年HRD、运营总监经历。<br/>3）奋斗过的地方：葡萄创投、极客学院、尚德机构、科大讯飞等。<br/>4）从0到1：第一次创业作为合伙人成功将极客学院从0做到B轮。<br/>5）带过团队：有180人、500人、820人、1200人团队不等。<br/>6）面试数量：10年面试过应聘者3000+人。</p><p><img src=\"/zh/public/img/20171105/1509861006527784.jpg\" title=\"1509861006527784.jpg\" alt=\"16.jpg\"/></p><p><br/></p>', '', '30', '1', '3');

-- ----------------------------
-- Table structure for zh_user
-- ----------------------------
DROP TABLE IF EXISTS `zh_user`;
CREATE TABLE `zh_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_realname` varchar(255) DEFAULT NULL,
  `user_introduction` text,
  `city_id` int(11) NOT NULL,
  `user_img` varchar(255) DEFAULT NULL,
  `user_phone` char(11) DEFAULT NULL,
  `user_pwd` varchar(255) NOT NULL DEFAULT '',
  `user_nickname` varchar(255) DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_user
-- ----------------------------
INSERT INTO `zh_user` VALUES ('1', '邢志明', '', '1', 'default_avatar.jpg', '156221', '123', '邢志明', '3');
INSERT INTO `zh_user` VALUES ('2', '叶立江', null, '1', 'default_avatar.jpg', '156222', '123', '叶立江', '3');
INSERT INTO `zh_user` VALUES ('3', '老可', null, '1', 'default_avatar.jpg', '156223', '123', '老可', '3');
INSERT INTO `zh_user` VALUES ('4', '石成禹', null, '1', 'default_avatar.jpg', '156224', '123', '石成禹', '3');
INSERT INTO `zh_user` VALUES ('5', '吴一中', null, '2', 'default_avatar.jpg', '156225', '123', '吴一中', '3');
INSERT INTO `zh_user` VALUES ('6', 'json', null, '2', 'default_avatar.jpg', '156226', '123', 'json', '3');
INSERT INTO `zh_user` VALUES ('7', null, null, '0', 'default_avatar.jpg', '156227', '123', 'tomy', '1');
INSERT INTO `zh_user` VALUES ('8', 'chow', null, '2', '1506832520751563.png', '156228', '123', 'chow', '3');
INSERT INTO `zh_user` VALUES ('10', '丰志强', null, '1', 'default_avatar.jpg', '156229', '123', '丰志强', '3');
INSERT INTO `zh_user` VALUES ('11', '任军', null, '1', 'default_avatar.jpg', '156230', '123', '任军', '3');
INSERT INTO `zh_user` VALUES ('12', '杨瑜茹', null, '1', 'default_avatar.jpg', '156231', '123', '杨瑜茹', '3');
INSERT INTO `zh_user` VALUES ('13', '王硕', null, '1', 'default_avatar.jpg', '156232', '123', '王硕', '3');
INSERT INTO `zh_user` VALUES ('14', '郑炜', null, '1', 'default_avatar.jpg', '156233', '123', '郑炜', '3');
INSERT INTO `zh_user` VALUES ('15', '贾濛', null, '1', 'default_avatar.jpg', '156234', '123', '贾濛', '3');
INSERT INTO `zh_user` VALUES ('16', '余沛怡', null, '2', 'default_avatar.jpg', '156235', '123', '余沛怡', '3');
INSERT INTO `zh_user` VALUES ('17', '贺靖', null, '2', 'default_avatar.jpg', '156236', '123', '贺靖', '3');
INSERT INTO `zh_user` VALUES ('18', '史文君', null, '2', 'default_avatar.jpg', '156237', '123', '史文君', '3');
INSERT INTO `zh_user` VALUES ('19', '张文洁', null, '2', 'default_avatar.jpg', '156238', '123', '张文洁', '3');
INSERT INTO `zh_user` VALUES ('20', '武京国', null, '2', 'default_avatar.jpg', '156239', '123', '武京国', '3');
INSERT INTO `zh_user` VALUES ('21', '谢万弟', null, '2', 'default_avatar.jpg', '156240', '123', '谢万弟', '3');
INSERT INTO `zh_user` VALUES ('22', '周慧', null, '2', 'default_avatar.jpg', '156241', '123', '周慧', '3');
INSERT INTO `zh_user` VALUES ('23', '徐华', null, '2', ' default_avatar.jpg', '156242', '123', '徐华', '3');
INSERT INTO `zh_user` VALUES ('24', '孙嘉彬', null, '2', 'default_avatar.jpg', '156243', '123', '孙嘉彬', '3');
INSERT INTO `zh_user` VALUES ('25', '肖琦', null, '2', 'default_avatar.jpg', '156244', '123', '肖琦', '3');
INSERT INTO `zh_user` VALUES ('26', '亚米', null, '0', 'default_avatar.jpg', '156551', '123', 'yami', '3');
INSERT INTO `zh_user` VALUES ('28', null, null, '0', 'default_avatar.jpg', '15622150164', '123', 'gaiya', '1');
INSERT INTO `zh_user` VALUES ('29', 'nuoa', null, '0', 'default_avatar.jpg', '15622150163', '123', 'nuoa', '1');
INSERT INTO `zh_user` VALUES ('30', 'kaka', null, '0', 'default_avatar.jpg', '15622111111', '123', 'kaka', '3');

-- ----------------------------
-- Table structure for zh_verify
-- ----------------------------
DROP TABLE IF EXISTS `zh_verify`;
CREATE TABLE `zh_verify` (
  `v_id` int(11) NOT NULL AUTO_INCREMENT,
  `realname` varchar(255) NOT NULL,
  `ID` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`v_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_verify
-- ----------------------------
INSERT INTO `zh_verify` VALUES ('1', '123', '123', '1', '6');
INSERT INTO `zh_verify` VALUES ('2', 'chow', '123', '1', '8');
INSERT INTO `zh_verify` VALUES ('3', 'tomy', '123', '1', '7');
INSERT INTO `zh_verify` VALUES ('4', '亚米', '44152', '1', '26');
INSERT INTO `zh_verify` VALUES ('5', '亚米', '44152', '1', '26');
INSERT INTO `zh_verify` VALUES ('6', '亚米', '44152', '1', '26');
INSERT INTO `zh_verify` VALUES ('7', 'kaka', '123', '1', '30');
INSERT INTO `zh_verify` VALUES ('8', 'nuoa', '123', '1', '29');

-- ----------------------------
-- Table structure for zh_wish
-- ----------------------------
DROP TABLE IF EXISTS `zh_wish`;
CREATE TABLE `zh_wish` (
  `wish_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `tutor_id` int(11) NOT NULL DEFAULT '0',
  `create_time` varchar(255) DEFAULT '',
  `status` bit(1) NOT NULL DEFAULT b'1',
  PRIMARY KEY (`wish_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of zh_wish
-- ----------------------------
INSERT INTO `zh_wish` VALUES ('1', '7', '10', '1505525712', '');
INSERT INTO `zh_wish` VALUES ('2', '7', '11', '1505525712', '');
