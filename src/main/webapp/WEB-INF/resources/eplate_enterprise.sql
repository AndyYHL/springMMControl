/*
Navicat MySQL Data Transfer

Source Server         : 192.168.31.41_3306
Source Server Version : 50712
Source Host           : 192.168.31.41:3306
Source Database       : eplate_enterprise

Target Server Type    : MYSQL
Target Server Version : 50712
File Encoding         : 65001

Date: 2017-12-22 13:20:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for car_postion_record
-- ----------------------------
DROP TABLE IF EXISTS `car_postion_record`;
CREATE TABLE `car_postion_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `piont_detail_name` varchar(255) DEFAULT NULL,
  `piont_pname` varchar(255) DEFAULT NULL,
  `piont_cityname` varchar(255) DEFAULT NULL,
  `piont_adname` varchar(255) DEFAULT NULL,
  `piont_lng` varchar(255) DEFAULT NULL,
  `piont_lat` varchar(255) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `car_id` int(50) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL COMMENT '时间',
  `extend1` varchar(20) DEFAULT NULL COMMENT '扩展1',
  `extend2` int(11) DEFAULT NULL COMMENT '扩展2',
  `reader_id` int(11) DEFAULT NULL,
  `car_number` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of car_postion_record
-- ----------------------------
INSERT INTO `car_postion_record` VALUES ('31', '成都锦江区', '成都', '成都', '成都', '123213.12312123', '123123123.1123123', '成都锦江区东风路二段', '295', '2017-12-13 10:36:16', null, null, '1', '川A');

-- ----------------------------
-- Table structure for eplate_car
-- ----------------------------
DROP TABLE IF EXISTS `eplate_car`;
CREATE TABLE `eplate_car` (
  `car_id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `car_type_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `car_company` varchar(200) NOT NULL,
  `car_number` varchar(50) NOT NULL,
  `car_eplate_number` varchar(50) NOT NULL,
  `car_createtime` datetime DEFAULT NULL,
  `car_group_id` int(50) NOT NULL,
  `car_rail_state` int(20) DEFAULT '0',
  `car_add_grouptime` datetime DEFAULT NULL,
  `car_state` int(10) DEFAULT '0',
  `phone` varchar(20) DEFAULT NULL,
  `isdelete` int(11) DEFAULT '1',
  `car_model` varchar(20) DEFAULT NULL COMMENT '车辆型号',
  `car_nature` varchar(20) DEFAULT NULL COMMENT '车辆性质',
  `manned_count` int(10) DEFAULT NULL COMMENT '准载人数',
  `register_time` datetime DEFAULT NULL COMMENT '注册时间',
  `strong_insurance` varchar(20) DEFAULT NULL COMMENT '交强险',
  `have_name` varchar(50) DEFAULT NULL COMMENT '所有人',
  `eplate_car` varchar(5) DEFAULT NULL COMMENT '电子车牌',
  `car_color` varchar(10) DEFAULT NULL COMMENT '车辆颜色',
  `emission_standard` varchar(20) DEFAULT NULL COMMENT '排放标准',
  `car_allowLoad` varchar(10) DEFAULT NULL COMMENT '车辆准载重量',
  `year_inspect_time` datetime DEFAULT NULL COMMENT '年检时间',
  `scrap_time` datetime DEFAULT NULL COMMENT '报废时间',
  `businessIns` varchar(50) DEFAULT NULL COMMENT '商业险',
  `urance` varchar(50) DEFAULT NULL COMMENT '保险',
  `add_card_time` datetime DEFAULT NULL COMMENT '电子车牌上牌时间',
  `carsize` varchar(255) DEFAULT NULL COMMENT '车辆尺寸',
  PRIMARY KEY (`car_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='车辆信息表';

-- ----------------------------
-- Records of eplate_car
-- ----------------------------
INSERT INTO `eplate_car` VALUES ('1', '1', '1', '江南化工', '川A00001', 'A000000000000001', '2017-09-01 00:00:00', '1', '2', '2017-10-10 11:03:42', '1', '13800138000', '1', '奥迪A1', '公用', '3', '2017-06-05 11:32:22', '机动车交通事故责任强制保险', '李亦玉', '已绑定', '红色', 'v1.1', '300kg', '2017-08-14 11:45:35', '2017-12-03 11:45:43', '太平洋车险', '太平洋车险', '2017-06-11 11:46:12', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('2', '1', '1', '湘电股份股份有限公司', '川A00002', 'A000000000000002', '2017-09-01 00:00:00', '1', '0', '2017-10-10 11:03:46', '1', '13258511166', '1', '宝马i3', '公用', '3', '2016-12-01 14:09:51', '机动车交通事故责任强制保险', '李亦玉', '已绑定', '白色', 'v1.1', '300kg', '2017-06-19 14:09:05', '2017-11-13 14:09:14', '紫金保险', '紫金保险', '2017-02-06 14:09:19', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('3', '2', '2', '烟台万华股份有限公司', '川A00003', 'A000000000000003', '2017-08-08 00:00:00', '7', '0', '2017-10-10 11:03:49', '1', '13822452222', '1', '宝骏310W', '公用', '5', '2016-01-07 14:19:09', '浙商保险', '何向珊', '已绑定', '黑色', 'v1.1', '350kg', '2017-02-01 14:19:57', '2017-11-14 14:19:52', '浙商保险', '浙商保险', '2016-06-07 14:19:43', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('4', '3', '3', '科陆电子', '川B00004', 'A000000000000004', '2016-01-02 00:00:00', '8', '0', '2017-10-10 11:03:52', '1', '13925214512', '1', '标致-TRAVELLER', '公用', '3', '2015-02-01 14:24:09', '永安保险', '刘忆香', '已绑定', '白色', 'v1.1', '600kg', '2016-01-01 14:25:44', '2017-09-11 14:25:55', '永安保险', '永安保险', '2016-03-07 14:32:58', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('5', '1', '4', '新希望集团', '川A55424', 'A000000000000005', '2015-05-15 14:15:23', '3', '0', '2017-10-10 11:03:55', '1', '17654422852', '1', '俊风CV03', '公用', '3', '2015-02-07 14:30:28', '天安保险', '孙萍', '已绑定', '黑色', 'v1.1', '300kg', '2016-02-01 14:32:24', '2017-10-30 14:32:32', '天安保险', '天安保险', '2016-07-01 14:33:05', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('6', '2', '4', '蓝天科技', '川B4D245', 'Ac496256598595265', '2017-10-18 09:45:55', '0', '0', '2017-10-24 09:46:21', '0', '15952436233', '1', '江淮iEV6E', '公用', '5', '2016-07-07 14:36:22', '中华联合', '孙萍', '已绑定', '蓝色', 'v1.1', '350kg', '2017-06-12 14:36:12', '2017-10-02 14:35:54', '中华联合', '中华联合', '2017-01-01 14:35:41', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('7', '2', '4', '蓝天科技', '川B4A879', 'B554986516845225', '2017-10-20 09:47:03', '4', '0', '2017-10-24 09:47:13', '1', '15831685263', '1', '瑞风S2mini', '公用', '5', '2015-11-07 14:39:02', '中国大地', '孙萍', '已绑定', '黑色', 'v1.1', '360kg', '2016-11-01 14:39:32', '2017-06-07 14:39:45', '中国大地', '中国大地', '2016-12-07 14:39:58', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('8', '2', '4', '蓝天科技', '川B65856', 'C853165416516515', '2017-10-21 09:47:46', '0', '0', '2017-10-24 09:47:53', '1', '13784151492', '1', '瑞风SC-9', '公用', '5', '2014-02-07 14:41:26', '中国平安', '孙萍', '已绑定', '白色', 'v1.1', '350kg', '2015-02-07 14:41:47', '2017-02-07 14:42:01', '中国平安', '中国平安', '2015-07-07 14:42:10', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('281', '1', '3', '航空动力', '豫F93791', 'KL35562270784', '2017-10-24 10:00:20', '6', '0', '2017-10-24 10:00:20', '1', '15462352323', '1', '浙江卡尔森', '公用', '3', '2016-02-07 14:44:04', '浙商保险', '刘忆香', '已绑定', '红色', 'v1.1', '300kg', '2017-07-07 14:44:28', '2017-10-03 14:44:41', '浙商保险', '浙商保险', '2016-10-07 14:44:50', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('282', '3', '3', '天磊速迅', '豫F45517', 'KL2239357449', '2017-10-24 10:03:03', '5', '0', '2017-10-24 10:03:03', '1', '15973879982', '1', '陆风X7', '公用', '3', '2015-07-07 14:45:55', '中银保险', '刘忆香', '已绑定', '黑色', 'v1.1', '300kg', '2017-06-07 14:46:33', '2017-10-11 14:46:40', '中银保险', '中银保险', '2016-01-01 14:46:50', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('283', '1', '1', '江南化工', '川A12454', 'S5465421311', '2017-10-24 14:51:29', '2', '0', '2017-10-24 14:51:29', '1', '13598454', '1', 'MELKUS', '公用', '4', '2016-02-07 15:04:00', '安邦保险', '李亦玉', '已绑定', '红色', 'v1.1', '300kg', '2017-02-07 15:06:26', '2017-11-07 15:06:32', '安邦保险', '安邦保险', '2016-06-07 15:06:43', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('284', '1', '1', '江南化工', '川A22331', 'S5465421311', '2017-10-24 14:54:13', '0', '0', '2017-10-24 14:54:13', '1', '1231545787', '1', '奥迪A1', '公用', '3', '2017-06-05 11:32:22', '机动车交通事故责任强制保险', '李亦玉', '已绑定', '白色', 'v1.1', '300kg', '2017-08-14 11:45:35', '2017-12-03 11:45:43', '太平洋车险', '太平洋车险', '2017-06-11 11:46:12', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('286', '1', '1', '江南化工', '川B33221', 'S5465421311', '2017-10-24 14:56:40', '2', '0', '2017-10-24 14:56:40', '0', '135487847', '1', '宝马i3', '公用', '3', '2016-12-01 14:09:51', '机动车交通事故责任强制保险', '李亦玉', '已绑定', '黑色', 'v1.1', '300kg', '2017-06-19 14:09:05', '2017-11-13 14:09:14', '紫金保险', '紫金保险', '2017-02-06 14:09:19', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('287', '2', '1', '湘电股份股份有限公司', '川A88888', 'S5465421311', '2017-10-26 09:54:12', '0', '0', '2017-10-26 09:54:12', '1', '1111', '1', '宝骏310W', '公用', '5', '2016-01-07 14:19:09', '浙商保险', '李亦玉', '已绑定', '白色', 'v1.1', '350kg', '2017-02-01 14:19:57', '2017-11-14 14:19:52', '浙商保险', '浙商保险', '2016-06-07 14:19:43', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('288', '2', '1', '湘电股份股份有限公司', '川B11111', 'S5465421311', '2017-10-26 09:56:28', '1', '0', '2017-10-26 09:56:28', '0', '15882485612', '1', '标致-TRAVELLER', '公用', '3', '2015-02-01 14:24:09', '永安保险', '李亦玉', '已绑定', '黑色', 'v1.1', '600kg', '2016-01-01 14:25:44', '2017-09-11 14:25:55', '永安保险', '永安保险', '2016-03-07 14:32:58', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('290', '4', '1', '新希望集团', '川F12789', 'S5465421311', '2017-10-26 10:49:05', '0', '0', '2017-10-26 10:49:05', '1', '15874544524', '1', '俊风CV03', '公用', '3', '2015-02-07 14:30:28', '天安保险', '李亦玉', '已绑定', '蓝色', 'v1.1', '300kg', '2016-02-01 14:32:24', '2017-10-30 14:32:32', '天安保险', '天安保险', '2016-07-01 14:33:05', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('291', '4', '1', '天磊速迅', '川Q1A215', 'S5465421311', '2017-10-26 11:00:58', '5', '0', '2017-10-26 11:00:58', '0', '18785521422', '1', '江淮iEV6E', '公用', '5', '2016-07-07 14:36:22', '中华联合', '李亦玉', '已绑定', '黑色', 'v1.1', '350kg', '2017-06-12 14:36:12', '2017-10-02 14:35:54', '中华联合', '中华联合', '2017-01-01 14:35:41', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('292', '4', '1', '天磊速迅', '川Q12445', 'S5465421311', '2017-10-26 11:05:06', '5', '0', '2017-10-26 11:05:06', '1', '17845422535', '1', '瑞风S2mini', '公用', '5', '2015-11-07 14:39:02', '中国大地', '李亦玉', '已绑定', '白色', 'v1.1', '360kg', '2016-11-01 14:39:32', '2017-06-07 14:39:45', '中国大地', '中国大地', '2016-12-07 14:39:58', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('293', '4', '1', '天磊速迅', '川Q98754', 'S5465421311', '2017-10-26 11:11:56', '5', '0', '2017-10-26 11:11:56', '0', '17445454855', '1', '瑞风SC-9', '公用', '5', '2014-02-07 14:41:26', '中国平安', '李亦玉', '已绑定', '红色', 'v1.1', '350kg', '2015-02-07 14:41:47', '2017-02-07 14:42:01', '中国平安', '中国平安', '2015-07-07 14:42:10', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('294', '4', '1', '天磊速迅', '川P1P223', 'S5465421311', '2017-10-26 11:55:27', '5', '0', '2017-10-26 11:55:27', '1', '125545659563', '1', '浙江卡尔森', '公用', '3', '2016-02-07 14:44:04', '浙商保险', '李亦玉', '已绑定', '黑色', 'v1.1', '300kg', '2017-07-07 14:44:28', '2017-10-03 14:44:41', '浙商保险', '浙商保险', '2016-10-07 14:44:50', '4886×1810×1470');
INSERT INTO `eplate_car` VALUES ('295', '4', '1', '江南化工', '川A', 'S5465421311', '2017-10-27 09:56:17', '2', '0', '2017-10-27 09:56:17', '0', '12345678978', '1', '陆风X7', '公用', '3', '2015-07-07 14:45:55', '中银保险', '李亦玉', '已绑定', '黑色', 'v1.1', '300kg', '2017-06-07 14:46:33', '2017-10-11 14:46:40', '中银保险', '中银保险', '2016-01-01 14:46:50', '4886×1810×1470');

-- ----------------------------
-- Table structure for eplate_car_group
-- ----------------------------
DROP TABLE IF EXISTS `eplate_car_group`;
CREATE TABLE `eplate_car_group` (
  `car_group_id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `car_group_type` varchar(100) NOT NULL,
  `car_group_createtime` datetime DEFAULT NULL,
  `car_total` int(50) DEFAULT '0',
  `rail_id` int(255) DEFAULT NULL,
  `car_group_railstate` int(50) DEFAULT '1',
  `company_manager` varchar(255) DEFAULT NULL,
  `manager_phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT '' COMMENT '所属公司',
  PRIMARY KEY (`car_group_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='车辆分组表';

-- ----------------------------
-- Records of eplate_car_group
-- ----------------------------
INSERT INTO `eplate_car_group` VALUES ('1', '华西建设', '2017-09-26 12:48:15', '3', '1', '1', '李青青', '150211295861', '成都市', '华西建设');
INSERT INTO `eplate_car_group` VALUES ('2', '江南化工', '2017-09-26 12:48:17', '5', '1', '1', '李四', '158721225223', '锦江区', '江南化工');
INSERT INTO `eplate_car_group` VALUES ('3', '新希望集团', '2017-09-26 12:48:20', '2', '1', '1', '王五', '176532465323', '高新区', '新希望集团');
INSERT INTO `eplate_car_group` VALUES ('4', '蓝天科技', '2017-09-26 12:48:20', '3', '2', '1', '马六', '159721222454', '金牛区', '蓝天科技');
INSERT INTO `eplate_car_group` VALUES ('5', '天磊速迅', '2017-10-24 10:54:42', '5', '10', '1', '马奇', '159721222481', '龙泉驿', '天磊速迅');
INSERT INTO `eplate_car_group` VALUES ('6', '航空动力', '2017-10-24 10:55:50', '1', '2', '1', '黄日', '158721225855', '武侯区', '航空动力');
INSERT INTO `eplate_car_group` VALUES ('7', '烟台万华股份有限公司', '2017-10-24 10:58:13', '1', '2', '1', '吖吖', '165451255527', '皮都区', '烟台万华股份有限公司');
INSERT INTO `eplate_car_group` VALUES ('8', '科陆电子', '2017-10-24 10:59:32', '1', '10', '1', '花萼', '185425865523', '双流区', '科陆电子');
INSERT INTO `eplate_car_group` VALUES ('19', 'ghghggggggg', '2017-10-26 10:19:31', '0', '1', '1', 'ghghgh', '13265687', '青羊区', 'ghghggggggg');
INSERT INTO `eplate_car_group` VALUES ('20', 'ghghggggggg', '2017-10-26 10:19:37', '0', '1', '1', 'ghghgh', '13912345678', '金堂', 'ghghggggggg');
INSERT INTO `eplate_car_group` VALUES ('21', '未设置分组', '2017-10-24 09:07:38', '8', '0', '1', null, null, '简阳', '未设置分组');
INSERT INTO `eplate_car_group` VALUES ('22', '华南建设', null, '0', null, '1', null, null, '对对对', '华南建设');

-- ----------------------------
-- Table structure for eplate_car_parameter
-- ----------------------------
DROP TABLE IF EXISTS `eplate_car_parameter`;
CREATE TABLE `eplate_car_parameter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carmodel` varchar(50) DEFAULT NULL,
  `cartype` varchar(50) DEFAULT NULL,
  `carsize` varchar(50) DEFAULT NULL,
  `allowweight` varchar(50) DEFAULT NULL,
  `extend1` varchar(20) DEFAULT NULL COMMENT '扩展1',
  `extend2` int(11) DEFAULT NULL COMMENT '扩展2',
  `addtime` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eplate_car_parameter
-- ----------------------------

-- ----------------------------
-- Table structure for eplate_car_rail
-- ----------------------------
DROP TABLE IF EXISTS `eplate_car_rail`;
CREATE TABLE `eplate_car_rail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `car_id` int(11) DEFAULT '0',
  `rail_id` int(255) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of eplate_car_rail
-- ----------------------------
INSERT INTO `eplate_car_rail` VALUES ('1', '1', '1');
INSERT INTO `eplate_car_rail` VALUES ('2', '1', '2');
INSERT INTO `eplate_car_rail` VALUES ('3', '1', '2');
INSERT INTO `eplate_car_rail` VALUES ('4', '2', '1');
INSERT INTO `eplate_car_rail` VALUES ('5', '3', '1');

-- ----------------------------
-- Table structure for eplate_car_type
-- ----------------------------
DROP TABLE IF EXISTS `eplate_car_type`;
CREATE TABLE `eplate_car_type` (
  `car_type_id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `car_type` varchar(100) NOT NULL,
  `car_total` int(50) DEFAULT NULL,
  PRIMARY KEY (`car_type_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='车辆类型表';

-- ----------------------------
-- Records of eplate_car_type
-- ----------------------------
INSERT INTO `eplate_car_type` VALUES ('1', '小汽车', '12');
INSERT INTO `eplate_car_type` VALUES ('2', '越野车', '4');
INSERT INTO `eplate_car_type` VALUES ('3', '大货车', '1');
INSERT INTO `eplate_car_type` VALUES ('4', '大巴车', '6');

-- ----------------------------
-- Table structure for eplate_log
-- ----------------------------
DROP TABLE IF EXISTS `eplate_log`;
CREATE TABLE `eplate_log` (
  `log_id` int(50) NOT NULL AUTO_INCREMENT,
  `manager_name` varchar(255) DEFAULT NULL,
  `manager_do` varchar(255) DEFAULT NULL,
  `manager_dotime` datetime DEFAULT NULL,
  `manager_id` int(50) DEFAULT NULL,
  PRIMARY KEY (`log_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eplate_log
-- ----------------------------
INSERT INTO `eplate_log` VALUES ('1', 'zhangsan', '删除记录', '2017-09-29 11:14:01', '1');
INSERT INTO `eplate_log` VALUES ('2', 'zhangsan', '删除记录', '2017-09-29 11:14:22', '1');
INSERT INTO `eplate_log` VALUES ('3', 'zhangsan', '删除记录', '2017-09-29 11:14:22', '1');
INSERT INTO `eplate_log` VALUES ('4', 'zhangsan', '删除记录', '2017-09-29 11:14:23', '1');
INSERT INTO `eplate_log` VALUES ('5', 'zhangsan', '删除记录', '2017-09-29 11:14:23', '1');
INSERT INTO `eplate_log` VALUES ('6', 'zhangsan', '删除记录', '2017-09-29 11:14:23', '1');
INSERT INTO `eplate_log` VALUES ('7', '西门庆', '增加车辆分组,操作成功', '2017-09-29 16:53:43', '6');
INSERT INTO `eplate_log` VALUES ('8', '西门庆', '增加车辆分组,操作成功', '2017-09-29 16:54:29', '6');
INSERT INTO `eplate_log` VALUES ('9', '西门庆', '增加车辆分组,操作成功', '2017-09-29 17:42:54', '6');
INSERT INTO `eplate_log` VALUES ('10', '西门庆', '增加车辆分组,操作成功', '2017-09-30 11:45:34', '6');
INSERT INTO `eplate_log` VALUES ('11', '九妹', '增加车辆分组,操作成功', '2017-10-10 09:28:28', '7');
INSERT INTO `eplate_log` VALUES ('12', '九妹', '增加围栏,操作成功', '2017-10-11 11:01:52', '7');
INSERT INTO `eplate_log` VALUES ('13', '方式', '增加车辆分组,操作成功', '2017-10-18 17:08:42', '7');
INSERT INTO `eplate_log` VALUES ('14', '方式', '增加车辆分组,操作成功', '2017-10-20 14:44:55', '7');
INSERT INTO `eplate_log` VALUES ('15', '方式', '增加车辆分组,操作成功', '2017-10-26 10:19:31', '7');
INSERT INTO `eplate_log` VALUES ('16', '方式', '增加车辆分组,操作成功', '2017-10-26 10:19:37', '7');

-- ----------------------------
-- Table structure for eplate_menu
-- ----------------------------
DROP TABLE IF EXISTS `eplate_menu`;
CREATE TABLE `eplate_menu` (
  `menu_id` int(50) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(255) NOT NULL COMMENT '菜单名称',
  `parent_id` int(255) DEFAULT NULL COMMENT '上一级菜单的id',
  `req_url` varchar(255) DEFAULT NULL COMMENT '页面请求路径',
  `ctrl` varchar(50) DEFAULT NULL COMMENT 'ctrl name',
  `route_url` varchar(255) DEFAULT NULL COMMENT '路由地址',
  `req_type` varchar(255) DEFAULT NULL,
  `menu_state` int(10) DEFAULT NULL,
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of eplate_menu
-- ----------------------------
INSERT INTO `eplate_menu` VALUES ('1', '围栏管理', '0', null, null, null, null, '1');
INSERT INTO `eplate_menu` VALUES ('2', '车辆管理', '0', null, null, null, null, '1');
INSERT INTO `eplate_menu` VALUES ('3', '车辆分组', '0', null, null, null, null, '1');
INSERT INTO `eplate_menu` VALUES ('4', '系统管理', '0', null, null, null, null, '0');
INSERT INTO `eplate_menu` VALUES ('5', '越栏监控', '1', 'views/hurdleMonitoring.html', 'hurdleMonitoringCtrl', '/hurdleMonitoring', null, '1');
INSERT INTO `eplate_menu` VALUES ('6', '设置围栏', '1', 'views/monitorSet.html', 'monitorSetCtrl', '/monitorSet', null, '1');
INSERT INTO `eplate_menu` VALUES ('7', '数据分析', '1', 'views/data.html', 'dataCtrl', '/data', null, '1');
INSERT INTO `eplate_menu` VALUES ('8', '越栏车辆', '2', 'views/crossCar.html', 'crossCarCtrl', '/crossCar', null, '1');
INSERT INTO `eplate_menu` VALUES ('9', '围栏车辆', '2', 'views/railCar.html', 'railCarCtrl', '/railCar', null, '0');
INSERT INTO `eplate_menu` VALUES ('10', '全部车辆', '2', 'views/allCar.html', 'allCarCtrl', '/allCar', null, '1');
INSERT INTO `eplate_menu` VALUES ('11', '分组管理', '3', 'views/groupManage.html', 'groupManageCtrl', '/groupManage', null, '1');
INSERT INTO `eplate_menu` VALUES ('12', '添加分组', '3', 'views/groupAdd.html', 'groupAddCtrl', '/groupAdd', null, '1');
INSERT INTO `eplate_menu` VALUES ('13', '权限设置', '4', null, 'hurdleMonitoringCtrl', null, null, '0');
INSERT INTO `eplate_menu` VALUES ('14', '账号设置', '4', null, 'hurdleMonitoringCtrl', null, null, '0');
INSERT INTO `eplate_menu` VALUES ('15', '日志管理', '4', null, 'hurdleMonitoringCtrl', null, null, '0');
INSERT INTO `eplate_menu` VALUES ('16', '添加车辆', '2', 'views/carAdd.html', 'carAddCtrl', '/carAdd', null, '1');

-- ----------------------------
-- Table structure for eplate_piont
-- ----------------------------
DROP TABLE IF EXISTS `eplate_piont`;
CREATE TABLE `eplate_piont` (
  `piont_id` int(50) NOT NULL AUTO_INCREMENT,
  `piont_detail_name` varchar(255) DEFAULT NULL,
  `piont_pname` varchar(255) DEFAULT NULL,
  `piont_cityname` varchar(255) DEFAULT NULL,
  `piont_adname` varchar(255) DEFAULT NULL,
  `piont_lng` varchar(255) DEFAULT NULL,
  `piont_lat` varchar(255) DEFAULT NULL,
  `piont_createtime` datetime DEFAULT NULL,
  `piont_endtime` datetime DEFAULT NULL,
  PRIMARY KEY (`piont_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eplate_piont
-- ----------------------------
INSERT INTO `eplate_piont` VALUES ('3', '四川大学', '四川省', '成都市', '锦江区', '104.07551', '30.64677', '2017-10-19 13:22:46', null);
INSERT INTO `eplate_piont` VALUES ('6', '东华门街26号', '四川省', '成都市', '青羊区', '104.068798', '30.664757', '2017-10-23 16:01:56', null);
INSERT INTO `eplate_piont` VALUES ('7', '北纱帽街电子大厦', '四川省', '成都市', '锦江区', '104.083232', '30.655208', '2017-10-23 16:11:13', null);
INSERT INTO `eplate_piont` VALUES ('8', '五丁路16号院', '四川省', '成都市', '金牛区', '104.06615', '30.684442', '2017-10-23 16:11:13', null);
INSERT INTO `eplate_piont` VALUES ('9', '清江东路19号', '四川省', '成都市', '青羊区', '104.033988', '30.667758', '2017-10-23 16:11:13', null);
INSERT INTO `eplate_piont` VALUES ('10', '牛市口街道得胜小区', '四川省', '成都市', '锦江区', '104.109064', '30.642231', '2017-10-23 16:19:45', null);
INSERT INTO `eplate_piont` VALUES ('11', '双桥路水碾河社区', '四川省', '成都市', '成华区', '104.102828', '30.651706', '2017-10-23 16:19:45', null);
INSERT INTO `eplate_piont` VALUES ('12', '天仙桥北路金海岸公寓', '四川省', '成都市', '锦江区', '104.085656', '30.650194', '2017-10-23 16:19:45', null);
INSERT INTO `eplate_piont` VALUES ('13', '东光街道锦华路一段', '四川省', '成都市', '锦江区', '104.098734', '30.617623', '2017-10-23 16:23:38', null);
INSERT INTO `eplate_piont` VALUES ('14', '火车南站街道白云花园', '四川省', '成都市', '武侯区', '104.085189', '30.606718', '2017-10-23 16:23:38', null);
INSERT INTO `eplate_piont` VALUES ('15', '天顺路五洲花园', '四川省', '成都市', '武侯区', '104.070993', '30.595266', '2017-10-23 16:23:38', null);
INSERT INTO `eplate_piont` VALUES ('16', '航都大街三段', '四川省', '成都市', '双流区', '104.915935', '30.590478', '2017-10-23 16:31:11', null);
INSERT INTO `eplate_piont` VALUES ('17', '腾飞十一路', '四川省', '成都市', '双流区', '104.983457', '30.504557', '2017-10-23 16:31:11', null);
INSERT INTO `eplate_piont` VALUES ('18', '华阳大道四段输气大厦', '四川省', '成都市', '双流区', '104.063472', '30.505833', '2017-10-23 16:31:11', null);
INSERT INTO `eplate_piont` VALUES ('19', '喜沙路', '四川省', '成都市', '郫都区', '104.031962', '30.786918', '2017-10-23 16:36:01', null);
INSERT INTO `eplate_piont` VALUES ('20', '西华街道金樽三街', '四川省', '成都市', '金牛区', '104.997378', '30.731886', '2017-10-23 16:36:01', null);
INSERT INTO `eplate_piont` VALUES ('21', '文家街道文康路', '四川省', '成都市', '青羊区', '104.923542', '30.701108', '2017-10-23 16:36:01', null);
INSERT INTO `eplate_piont` VALUES ('22', '青羊大道段西城花园', '四川省', '成都市', '青羊区', '104.00817', '30.665332', '2017-10-23 16:42:10', null);
INSERT INTO `eplate_piont` VALUES ('23', '西南财经大学', '四川省', '成都市', '青羊区', '104.009772', '30.672112', '2017-10-23 16:42:10', null);
INSERT INTO `eplate_piont` VALUES ('24', '府南街道齐力花园', '四川省', '成都市', '青羊区', '104.011855', '30.676375', '2017-10-23 16:42:10', null);
INSERT INTO `eplate_piont` VALUES ('25', '龙潭街道成泰路4号', '四川省', '成都市', '成华区', '104.166564', '30.696884', '2017-10-23 16:44:40', null);
INSERT INTO `eplate_piont` VALUES ('26', '华林一路172号', '四川省', '成都市', '成华区', '104.147078', '30.691481', '2017-10-23 16:44:40', null);
INSERT INTO `eplate_piont` VALUES ('27', '二仙桥石油社区', '四川省', '成都市', '成华区', '104.120971', '30.684905', '2017-10-23 16:44:40', null);
INSERT INTO `eplate_piont` VALUES ('28', '承顺街249号', '四川省', '成都市', '金牛区', '104.124971', '30.777292', '2017-10-23 16:55:28', null);
INSERT INTO `eplate_piont` VALUES ('29', '蜀龙大道南段', '四川省', '成都市', '新都区', '104.14501', '30.760111', '2017-10-23 16:55:28', null);
INSERT INTO `eplate_piont` VALUES ('30', '龙潭街道东润豪庭', '四川省', '成都市', '成华区', '104.171634', '30.70015', '2017-10-23 16:55:28', null);

-- ----------------------------
-- Table structure for eplate_rail
-- ----------------------------
DROP TABLE IF EXISTS `eplate_rail`;
CREATE TABLE `eplate_rail` (
  `rail_id` int(50) NOT NULL AUTO_INCREMENT,
  `rail_type_id` int(50) DEFAULT NULL,
  `rail_nickname` varchar(255) DEFAULT NULL COMMENT '昵称',
  `rail_radius` double(255,0) DEFAULT NULL,
  `rail_createtime` datetime DEFAULT NULL,
  `rail_endtime` datetime DEFAULT NULL,
  `rail_code` varchar(255) DEFAULT NULL COMMENT '围栏编号',
  PRIMARY KEY (`rail_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eplate_rail
-- ----------------------------
INSERT INTO `eplate_rail` VALUES ('1', '2', '天府广场到百草路', null, '2017-10-09 14:06:57', '2017-10-09 14:10:40', 'QUEZRO6OH6UD7EI6');
INSERT INTO `eplate_rail` VALUES ('4', '3', '大石西路周边区域', null, '2017-10-25 08:58:10', '2017-10-27 08:58:12', 'VQZNNZM7V8BYOHIW');
INSERT INTO `eplate_rail` VALUES ('6', '1', '火车南站周边圆形区域', '2000', '2017-10-25 08:59:12', '2017-10-26 08:59:15', '95XLKT32W3BOOJ2T');
INSERT INTO `eplate_rail` VALUES ('10', '1', '春熙路周围圆形区域', '2000', '2017-10-12 18:07:03', '2017-10-13 14:07:03', '18EAE2SWC29NNF1U');
INSERT INTO `eplate_rail` VALUES ('11', '1', 'asdfasdf', '12', '2017-12-07 15:09:33', '2017-12-07 15:09:36', '18EAE2SWC29NNF12');
INSERT INTO `eplate_rail` VALUES ('12', '1', 'asasa', '2000', '2017-11-20 19:19:19', '2018-11-20 19:19:19', 'DFGHSIERUGH');

-- ----------------------------
-- Table structure for eplate_rail_middle
-- ----------------------------
DROP TABLE IF EXISTS `eplate_rail_middle`;
CREATE TABLE `eplate_rail_middle` (
  `rail_middle_id` int(50) NOT NULL AUTO_INCREMENT,
  `rail_id` int(50) DEFAULT NULL,
  `piont_id` int(50) DEFAULT NULL,
  PRIMARY KEY (`rail_middle_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eplate_rail_middle
-- ----------------------------
INSERT INTO `eplate_rail_middle` VALUES ('4', '11', '6');
INSERT INTO `eplate_rail_middle` VALUES ('5', '12', '15');
INSERT INTO `eplate_rail_middle` VALUES ('6', '12', '16');
INSERT INTO `eplate_rail_middle` VALUES ('7', '10', '17');
INSERT INTO `eplate_rail_middle` VALUES ('11', '4', '29');
INSERT INTO `eplate_rail_middle` VALUES ('12', '4', '30');
INSERT INTO `eplate_rail_middle` VALUES ('15', '6', '35');
INSERT INTO `eplate_rail_middle` VALUES ('16', '6', '36');

-- ----------------------------
-- Table structure for eplate_rail_type
-- ----------------------------
DROP TABLE IF EXISTS `eplate_rail_type`;
CREATE TABLE `eplate_rail_type` (
  `type_id` int(50) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) NOT NULL,
  PRIMARY KEY (`type_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='图形表';

-- ----------------------------
-- Records of eplate_rail_type
-- ----------------------------
INSERT INTO `eplate_rail_type` VALUES ('1', 'circle');
INSERT INTO `eplate_rail_type` VALUES ('2', 'line');
INSERT INTO `eplate_rail_type` VALUES ('3', 'polygon');

-- ----------------------------
-- Table structure for eplate_rfid
-- ----------------------------
DROP TABLE IF EXISTS `eplate_rfid`;
CREATE TABLE `eplate_rfid` (
  `camera_id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `camera_car_data` varchar(255) NOT NULL,
  `scan_time` datetime DEFAULT NULL,
  PRIMARY KEY (`camera_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10002 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='电子扫描数据表';

-- ----------------------------
-- Records of eplate_rfid
-- ----------------------------
INSERT INTO `eplate_rfid` VALUES ('10000', 'DSADSAD222211', '2017-09-07 16:13:17');
INSERT INTO `eplate_rfid` VALUES ('10001', 'XXXXXXX000001', '2017-09-06 23:12:40');

-- ----------------------------
-- Table structure for eplate_violation
-- ----------------------------
DROP TABLE IF EXISTS `eplate_violation`;
CREATE TABLE `eplate_violation` (
  `violation_id` int(50) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NOT NULL,
  `car_id` int(50) NOT NULL COMMENT '车辆id',
  `violation_count` int(50) NOT NULL COMMENT '违章次数',
  `violation_time` datetime DEFAULT NULL COMMENT '违章时间',
  `remind_count` int(50) NOT NULL COMMENT '提醒次数',
  `rail_middle_id` int(50) DEFAULT NULL,
  `rail_id` int(11) DEFAULT NULL COMMENT '围栏id',
  `content` varchar(255) DEFAULT NULL COMMENT '违规原因',
  `vaddress` varchar(500) DEFAULT NULL COMMENT '违规地址',
  `piont_id` int(11) DEFAULT NULL COMMENT '扫描装设备',
  `piont_name` varchar(255) DEFAULT NULL COMMENT '点名称',
  `system_type_id` int(11) DEFAULT NULL COMMENT '违章类型',
  `system_type_name` varchar(255) DEFAULT NULL COMMENT '违章类型说明',
  PRIMARY KEY (`violation_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='车辆违章表';

-- ----------------------------
-- Records of eplate_violation
-- ----------------------------
INSERT INTO `eplate_violation` VALUES ('1', '3', '5', '1', '2017-09-07 16:17:19', '1', '1', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('2', '3', '4', '1', '2017-09-12 11:42:38', '1', '2', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('3', '1', '1', '1', '2017-09-11 11:43:01', '1', '3', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('4', '3', '3', '1', '2017-09-11 11:43:01', '1', '4', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('5', '2', '5', '1', '2017-09-10 12:43:01', '1', '5', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('6', '2', '3', '1', '2017-09-12 02:43:01', '1', '6', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('7', '3', '5', '1', '2017-09-15 09:19:45', '1', '7', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('8', '3', '2', '1', '2017-09-15 11:08:03', '1', '8', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('9', '3', '4', '1', '2017-09-14 11:08:27', '1', '9', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('10', '3', '5', '1', '2017-09-18 11:29:30', '1', '10', '1', '违章停车', '成都', '1', '成都', '2', '逆向行驶');
INSERT INTO `eplate_violation` VALUES ('11', '3', '2', '1', '2017-09-18 11:29:30', '1', '7', '1', '违章停车', '成都', '1', '成都', '2', '逆向行驶');
INSERT INTO `eplate_violation` VALUES ('12', '3', '4', '1', '2017-09-18 12:30:15', '1', '1', '1', '违章停车', '成都', '1', '成都', '2', '逆向行驶');
INSERT INTO `eplate_violation` VALUES ('13', '2', '3', '1', '2017-09-20 15:38:54', '1', '2', '1', '违章停车', '成都', '1', '成都', '2', '逆向行驶');
INSERT INTO `eplate_violation` VALUES ('14', '3', '4', '1', '2017-09-20 15:39:11', '1', '3', '1', '违章停车', '成都', '1', '成都', '2', '逆向行驶');
INSERT INTO `eplate_violation` VALUES ('15', '3', '2', '1', '2017-09-20 16:39:28', '1', '5', '1', '违章停车', '成都', '1', '成都', '2', '逆向行驶');
INSERT INTO `eplate_violation` VALUES ('16', '3', '5', '1', '2017-09-20 13:39:49', '1', '7', '1', '违章停车', '成都', '1', '成都', '2', '逆向行驶');
INSERT INTO `eplate_violation` VALUES ('17', '3', '4', '1', '2017-09-19 15:40:01', '1', '8', '1', '违章停车', '成都', '1', '成都', '2', '逆向行驶');
INSERT INTO `eplate_violation` VALUES ('18', '2', '5', '1', '2017-10-24 10:01:01', '1', '6', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('19', '2', '3', '1', '2017-10-24 12:01:01', '1', '13', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('20', '2', '2', '1', '2017-10-24 00:01:01', '1', '9', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('21', '4', '2', '1', '2017-10-24 02:59:53', '1', '11', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('22', '1', '4', '1', '2017-10-24 15:51:01', '1', '12', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('23', '3', '1', '1', '2017-10-24 11:11:01', '1', '14', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('24', '2', '5', '1', '2017-10-23 05:29:53', '1', '13', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('25', '6', '2', '1', '2017-12-05 15:31:01', '1', '12', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('26', '5', '3', '1', '2017-12-11 13:11:01', '1', '11', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('27', '1', '4', '1', '2017-10-24 13:48:14', '1', '10', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('28', '1', '4', '1', '2017-12-13 14:59:02', '1', '2', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('29', '1', '4', '1', '2017-10-24 09:00:01', '1', '5', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('30', '5', '3', '1', '2017-10-23 15:08:22', '1', '9', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('31', '5', '3', '1', '2017-12-13 06:08:37', '1', '6', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');
INSERT INTO `eplate_violation` VALUES ('32', '5', '3', '1', '2017-12-13 15:09:07', '1', '7', '1', '违章停车', '成都', '1', '成都', '1', '无有效机动车驾驶证驾驶机动车');

-- ----------------------------
-- Table structure for eplate_violation_fake
-- ----------------------------
DROP TABLE IF EXISTS `eplate_violation_fake`;
CREATE TABLE `eplate_violation_fake` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NOT NULL,
  `car_id` int(50) NOT NULL,
  `violation_count` int(50) NOT NULL,
  `violation_time` datetime DEFAULT NULL,
  `remind_count` int(50) NOT NULL,
  `rail_middle_id` int(50) DEFAULT NULL,
  `car_number` varchar(10) DEFAULT NULL,
  `car_type` varchar(10) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `extend1` varchar(20) DEFAULT NULL COMMENT '扩展1',
  `extend2` int(11) DEFAULT NULL COMMENT '扩展2',
  `car_number_other` varchar(10) DEFAULT NULL,
  `addtime` datetime DEFAULT NULL COMMENT '时间',
  `isdelete` int(255) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='车辆违章表';

-- ----------------------------
-- Records of eplate_violation_fake
-- ----------------------------
INSERT INTO `eplate_violation_fake` VALUES ('1', '1', '1', '2', '2017-11-06 10:20:39', '2', null, '川A00001', '小汽车', '四川省成都市武侯区肖家河街道', null, null, '川AS0001', '2017-12-13 10:49:23', '1');
INSERT INTO `eplate_violation_fake` VALUES ('2', '3', '4', '1', '2017-12-13 09:25:14', '1', null, '川B00004', '大货车', '四川省成都市武侯区玉林街道', null, null, '川BF0009', '2017-12-13 10:49:31', '1');
INSERT INTO `eplate_violation_fake` VALUES ('3', '4', '7', '1', '2017-10-26 14:27:37', '1', null, '川B4A879', '越野车', '成都市武侯区跳伞塔街道', null, null, '川B4A123', '2017-10-26 15:49:42', '1');
INSERT INTO `eplate_violation_fake` VALUES ('4', '1', '286', '3', '2017-10-27 13:29:29', '2', null, '川B33221', '小汽车', '成都市武侯区芳草街道', null, null, '川B35642', '2017-10-28 10:49:55', '1');
INSERT INTO `eplate_violation_fake` VALUES ('5', '3', '282', '2', '2017-11-23 16:32:29', '1', null, '豫F45517', '大货车', '成都市武侯区华兴街道', null, null, '豫FF5516', '2017-11-24 10:50:07', '1');
INSERT INTO `eplate_violation_fake` VALUES ('6', '1', '294', '1', '2017-12-13 15:38:07', '1', null, '川P1P223', '大巴车', '成都市武侯区石羊场街道', null, null, '川P1P333', '2017-11-13 10:50:16', '1');
INSERT INTO `eplate_violation_fake` VALUES ('7', '1', '292', '1', '2017-11-15 10:47:43', '1', null, '川Q12445', '大巴车', '成都市武侯区火车南站街道', null, null, '川Q12111', '2017-11-15 10:56:22', '1');
INSERT INTO `eplate_violation_fake` VALUES ('8', '1', '291', '3', '2017-12-05 10:53:56', '1', null, '川Q1A215', '大巴车', '成都市锦江区合江亭街道东升街', null, null, '川Q1A216', '2017-12-06 10:56:32', '1');
INSERT INTO `eplate_violation_fake` VALUES ('9', '1', '287', '2', '2017-12-03 10:57:12', '2', null, '川A88888', '越野车', '成都市成华区猛追湾街道', null, null, '川A88365', '2017-12-07 10:58:16', '1');
INSERT INTO `eplate_violation_fake` VALUES ('10', '3', '281', '3', '2017-11-21 10:59:19', '1', null, '豫F93791', '小汽车', '成都市锦江区莲新街', null, null, '豫F93777', '2017-11-22 10:59:56', '1');
INSERT INTO `eplate_violation_fake` VALUES ('11', '4', '6', '1', '2017-11-23 11:00:43', '1', null, '川B4D245', '越野车', '成都市锦江区水井坊街道', null, null, '川B4D222', '2017-11-23 12:01:07', '1');
INSERT INTO `eplate_violation_fake` VALUES ('12', '4', '7', '3', '2017-11-12 11:01:46', '2', null, '川B4A879', '越野车', '成都市锦江区牛市口街道', null, null, '川B4A111', '2017-11-12 11:02:57', '1');
INSERT INTO `eplate_violation_fake` VALUES ('13', '1', '5', '1', '2017-12-01 11:03:48', '1', null, '川A55424', '小汽车', '成都市龙泉驿区柏合镇', null, null, '川A55333', '2017-12-01 12:03:54', '1');
INSERT INTO `eplate_violation_fake` VALUES ('14', '2', '3', '2', '2017-11-30 11:05:31', '2', null, '川A00003', '越野车', '成都市成华区双桥子街道', null, null, '川AF0003', '2017-11-30 11:05:40', '1');
INSERT INTO `eplate_violation_fake` VALUES ('15', '1', '283', '1', '2017-12-03 11:06:57', '1', null, '川A12454', '小汽车', '成都市成华区双桥子街道', null, null, '川A12422', '2017-12-03 12:07:37', '1');

-- ----------------------------
-- Table structure for eplate_violation_nocard
-- ----------------------------
DROP TABLE IF EXISTS `eplate_violation_nocard`;
CREATE TABLE `eplate_violation_nocard` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(50) NOT NULL,
  `car_id` int(50) NOT NULL,
  `violation_count` int(50) NOT NULL,
  `violation_time` datetime DEFAULT NULL,
  `remind_count` int(50) NOT NULL,
  `rail_middle_id` int(50) DEFAULT NULL,
  `car_number` varchar(10) DEFAULT NULL,
  `车辆类型` varchar(10) DEFAULT NULL,
  `发现地址` varchar(200) DEFAULT NULL,
  `extend1` varchar(20) DEFAULT NULL COMMENT '扩展1',
  `extend2` int(11) DEFAULT NULL COMMENT '扩展2',
  `addtime` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='车辆违章表';

-- ----------------------------
-- Records of eplate_violation_nocard
-- ----------------------------

-- ----------------------------
-- Table structure for system_type
-- ----------------------------
DROP TABLE IF EXISTS `system_type`;
CREATE TABLE `system_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) DEFAULT NULL COMMENT '名称',
  `typename` varchar(20) DEFAULT NULL COMMENT '分类名称',
  `typeid` int(11) DEFAULT NULL COMMENT '分类id',
  `user_id` int(11) DEFAULT NULL COMMENT '用户',
  `addtime` datetime DEFAULT NULL COMMENT '添加时间',
  `parentid` int(11) DEFAULT NULL COMMENT '上级id',
  `rank` int(11) DEFAULT NULL COMMENT '排序',
  `isdelete` tinyint(4) DEFAULT NULL COMMENT '是否删除',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `image` varchar(200) DEFAULT NULL COMMENT '图标',
  `extend1` varchar(20) DEFAULT NULL COMMENT '扩展1',
  `extend2` varchar(200) DEFAULT NULL COMMENT '扩展2',
  `extend3` int(11) DEFAULT NULL COMMENT '扩展3',
  `updatetime` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='system_type系统类别';

-- ----------------------------
-- Records of system_type
-- ----------------------------
INSERT INTO `system_type` VALUES ('1', '无有效机动车驾驶证驾驶机动车', '违章类型', '0', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('2', '逆向行驶', '违章类型', '0', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('3', '伪造、变造机动车号牌', '违章类型', '0', null, null, null, null, null, 'score', null, null, null, null, null);
INSERT INTO `system_type` VALUES ('4', '机动车行驶超速50%以上', '违章类型', '0', null, null, null, null, null, 'growth', null, null, null, null, null);
INSERT INTO `system_type` VALUES ('5', '机动车驾驶人违反道路通行规定', '违章类型', '0', null, null, null, null, null, 'coupon', null, null, null, null, null);
INSERT INTO `system_type` VALUES ('6', '公路客运车辆超员载客', '违章类型', '0', null, null, null, null, null, 'article', null, null, null, null, null);
INSERT INTO `system_type` VALUES ('7', '故意损毁、移动、涂改交通设施', '违章类型', '0', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('8', '不按规定的路线行驶', '违章类型', '0', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('9', '违反道路交通安全法规的规定，发生重大事故', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('10', '违反分道行驶规定', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('11', '违反规定使用专用车道', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('12', '违反规定停放、临时停车', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('13', '变更车道时影响正常行驶的机动车', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('14', '禁止掉头的地点掉头', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('15', '禁止左转弯标志的地点掉头', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('16', '醉酒后驾驶', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('17', '不按规定的速度行驶', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('18', '不按规定的时间行驶', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('19', '故意遮挡机动车号牌', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('20', '非紧急情况在应急车道行驶', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('21', '高速公路加速车道上超车', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('22', '高速公路减速车道上超车', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('23', '高速公路上逆行', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('24', '高速公路上的车道内停车', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('25', '在禁停路段停车', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('26', '违反限制通行规定', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('27', '未按尾号限制通行', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('28', '在高速公路加速车道上停车', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('29', '在高速公路减速车道上停车', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('30', '挂车载人', '违章类型', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('31', '现代ix35', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('32', '起亚KX5', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('33', '迈凯伦P1', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('34', '雷克萨斯LC', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('35', '东风风光580', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('36', '绅宝D60', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('37', '奔驰GL级AMG', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('38', 'ALFA 156', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('39', '奥迪Q5', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('40', '奥迪RS Q3', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('41', '阿斯顿·马丁DB9', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('42', '阿斯顿·马丁DBX', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('43', '奔驰GLK级', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('44', '奔驰S级', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('45', '迈巴赫S级', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('46', '本田UR-V', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('47', '本田XR-V', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('48', '奔驰SLC AMG', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('49', '本田S2000', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('50', '凯越', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('51', '宝马2系旅行车', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('52', '宝马X1', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('53', '宝马X6 M', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('54', '比亚迪F3', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('55', '比亚迪S7', '车辆型号', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('56', '川', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('57', '京', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('58', '津', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('59', '沪', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('60', '渝', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('61', '冀', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('62', '豫', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('63', '云', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('64', '辽', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('65', '黑', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('66', '湘', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('67', '皖', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('68', '鲁', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('69', '新', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('70', '苏', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('71', '浙', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('72', '赣', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('73', '鄂', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('74', '桂', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('75', '甘', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('76', '晋', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('77', '蒙', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('78', '陕', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('79', '吉', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('80', '闽', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('81', '贵', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('82', '粤', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('83', '青', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('84', '藏', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('85', '宁', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `system_type` VALUES ('86', '琼', '省份简称', null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `text` varchar(500) DEFAULT '' COMMENT '菜单名称',
  `sref` varchar(255) DEFAULT '' COMMENT '路由地址',
  `alert` varchar(255) DEFAULT '',
  `heading` varchar(255) DEFAULT '',
  `label` varchar(255) DEFAULT '',
  `translate` varchar(255) DEFAULT '',
  `ctrl` varchar(500) DEFAULT '' COMMENT '控制器',
  `path` varchar(500) DEFAULT '' COMMENT 'js访问路径',
  `templateurl` varchar(500) DEFAULT '' COMMENT '模版路径(列表)',
  `files` varchar(500) DEFAULT '' COMMENT 'js控制器',
  `icon` varchar(500) DEFAULT '' COMMENT '图标路径',
  `parentid` int(11) DEFAULT '0' COMMENT '父级菜单ID',
  `menuorder` int(11) DEFAULT '0' COMMENT '父级顺序',
  `status` int(11) DEFAULT '1' COMMENT '1.为正常，0为停用 ',
  `addtime` datetime DEFAULT CURRENT_TIMESTAMP,
  `updatetime` datetime DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT '1',
  `plevel_id` int(11) DEFAULT '0' COMMENT '权限ID',
  `plevel_grade` int(11) DEFAULT '0' COMMENT '权限层级',
  `code` varchar(500) DEFAULT '',
  `isdelete` int(11) DEFAULT '0' COMMENT '0 为不删除 1为删除',
  `css` varchar(255) DEFAULT '' COMMENT '样式',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='菜单';

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', 'Main Navigation', '#', '', 'true', '', 'sidebar.heading.HEADER', '', '', '', '', '', '0', '0', '1', '2017-12-20 16:49:07', '2017-12-20 16:49:07', '1', '0', '0', '', '0', 'sidebar.heading.HEADER');
INSERT INTO `sys_menu` VALUES ('2', '借用管理', '#', '3', '', 'label label-info', '', '', '', '', '', 'icon-speedometer', '0', '0', '1', '2017-12-20 16:50:16', '2017-12-20 16:50:16', '1', '0', '0', '', '0', '');
INSERT INTO `sys_menu` VALUES ('3', '已借车辆', 'app.dashboard', '', '', '', '', '', '/dashboard_v1', '/app/views/dashboard.html', '', '', '2', '0', '1', '2017-12-20 16:51:12', '2017-12-20 16:51:12', '1', '0', '0', '', '0', 'sidebar.nav.DASHBOARD');
INSERT INTO `sys_menu` VALUES ('4', '可借车辆', 'app.dashboard_v2', '', '', '', '', '', '/dashboard_v2', '/app/views/dashboard_v2.html', '', '', '2', '0', '1', '2017-12-20 16:51:25', '2017-12-20 16:51:25', '1', '0', '0', '', '0', '');
INSERT INTO `sys_menu` VALUES ('5', '借用记录', 'app.dashboard_v3', '', '', '', '', '', '/dashboard_v3', '/app/views/dashboard_v3.html', '', '', '2', '0', '1', '2017-12-20 16:51:36', '2017-12-20 16:51:36', '1', '0', '0', '', '0', '');
INSERT INTO `sys_menu` VALUES ('6', '车辆管理', '#', '2', '', '', '', '', '', '', '', 'icon-chemistry', '0', '0', '1', '2017-12-20 16:52:20', '2017-12-20 16:52:20', '1', '0', '0', '', '0', 'sidebar.nav.element.ELEMENTS');
INSERT INTO `sys_menu` VALUES ('7', '全部车辆', 'app.buttons', '', '', '', '', '', '/buttons', '/app/views/buttons.html', '', '', '6', '0', '1', '2017-12-20 16:52:46', '2017-12-20 16:52:46', '1', '0', '0', '', '0', '');
INSERT INTO `sys_menu` VALUES ('8', '添加车辆', 'app.notifications', '', '', '', '', '', '/notifications', '/app/views/notifications.html', '', '', '6', '0', '1', '2017-12-20 16:53:07', '2017-12-20 16:53:07', '1', '0', '0', '', '0', '');
INSERT INTO `sys_menu` VALUES ('10', '部门管理', '#', '2', '', '', '', '', '', '', '', 'icon-grid', '0', '0', '1', '2017-12-20 16:53:35', '2017-12-20 16:53:35', '1', '0', '0', '', '0', '');
INSERT INTO `sys_menu` VALUES ('11', '部门管理', 'app.path_to_template', '', '', '', '', 'deviceCtrl', '/path_to_template', '/templates/path_to_template.html', '/app/controller/deviceCtrl.js', '', '10', '0', '1', '2017-12-20 16:53:48', '2017-12-20 16:53:48', '1', '0', '0', '', '0', '');
INSERT INTO `sys_menu` VALUES ('13', '添加部门', 'app.todo', '', '', '', '', 'TodoController', '/todo', '/app/views/todo.html', '/app/controller/todoCtrl.js', '', '10', '0', '1', '2017-12-22 12:40:58', '2017-12-22 12:40:58', '1', '0', '0', '', '0', '');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(500) DEFAULT NULL,
  `pwd` varchar(500) DEFAULT NULL,
  `phone` varchar(500) DEFAULT NULL,
  `realname` varchar(500) DEFAULT NULL,
  `addtime` datetime DEFAULT CURRENT_TIMESTAMP,
  `loginip` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '1.为正常，0为停用 ',
  `statusval` varchar(500) DEFAULT NULL,
  `isdelete` int(11) DEFAULT '0' COMMENT '是否删除<后台>  0否  1是',
  `uuid` varchar(500) DEFAULT NULL,
  `prison_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `role_name` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'liyiyu', '123', '12345678901', '李亦玉', '2017-11-16 09:18:40', '192.168.31.104', '1', '正常', '0', '23123123123', '2', '1', '管理员');
INSERT INTO `user_info` VALUES ('2', 'heshan', '123123123', '12312321', '何向珊', '2017-11-24 11:59:00', null, '1', null, '0', null, '2', null, null);
INSERT INTO `user_info` VALUES ('3', 'liuxiang', '23423432', '阿萨德发达省份', '刘忆香', '2017-11-24 11:59:09', null, '1', null, '1', null, '15', null, null);
INSERT INTO `user_info` VALUES ('4', 'sunping', '123123sdf啊', '123123', '孙萍', '2017-11-24 13:54:10', null, '1', null, '1', null, '4', null, null);
INSERT INTO `user_info` VALUES ('5', 'xiaozhang', '123213', '123123', '张水绿', '2017-11-24 14:04:50', null, '1', null, '0', null, '2', null, null);
INSERT INTO `user_info` VALUES ('6', 'xue', '123123', '123123', '凌雪', '2017-11-24 14:04:58', null, '1', null, '0', null, '1', null, null);
INSERT INTO `user_info` VALUES ('7', 'yuan', '123123', '123123', '元菱', '2017-11-24 14:05:05', null, '1', null, '1', null, '6', null, null);

-- ----------------------------
-- Table structure for user_plevel
-- ----------------------------
DROP TABLE IF EXISTS `user_plevel`;
CREATE TABLE `user_plevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(500) DEFAULT NULL,
  `plevel` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT '1' COMMENT '1.为正常，0为停用 ',
  `addtime` datetime DEFAULT CURRENT_TIMESTAMP,
  `add_userid` int(11) DEFAULT '1',
  `upt_userid` int(11) DEFAULT '1',
  `grade` int(11) DEFAULT '1',
  `isdelete` int(11) DEFAULT '0' COMMENT '是否删除<后台>  0否  1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='权限';

-- ----------------------------
-- Records of user_plevel
-- ----------------------------
INSERT INTO `user_plevel` VALUES ('1', 'MENU_MARKET_1', '数据管理', '1', '2017-11-16 09:19:41', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('2', 'MENU_MARKET_2', '人员管理', '1', '2017-11-24 14:53:46', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('3', 'J_3', '锦江', '1', '2017-11-24 14:54:04', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('4', 'J_4', '双流', '1', '2017-11-24 14:55:17', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('5', 'J_5', '金堂', '1', '2017-11-24 14:55:28', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('6', 'J_6', '崇州', '1', '2017-11-24 14:55:42', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('7', 'J_7', '澳门', '1', '2017-11-24 14:55:53', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('8', 'J_8', '香港', '1', '2017-11-24 14:56:06', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('9', 'J_9', '金牛', '1', '2017-11-24 14:56:15', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('10', 'J_10', '简阳', '1', '2017-11-24 14:56:31', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('11', 'J_11', '郫县', '1', '2017-11-24 14:56:42', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('12', 'J_12', '武侯', '1', '2017-11-24 14:56:52', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('13', 'J_13', '高薪', '1', '2017-11-24 14:57:02', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('14', 'J_14', '天府新区', '1', '2017-11-24 14:57:13', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('15', 'J_15', '大邑', '1', '2017-11-24 14:57:22', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('16', 'J_16', '射洪', '1', '2017-11-24 14:57:32', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('17', 'J_17', '邛崃', '1', '2017-11-24 14:57:42', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('18', 'J_18', '彭州', '1', '2017-11-24 14:57:53', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('19', 'J_19', '青羊', '1', '2017-11-24 14:58:04', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('20', 'J_20', '成华', '1', '2017-11-24 14:58:16', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('21', 'J_21', '华阳', '1', '2017-11-24 14:58:28', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('22', 'J_22', '龙泉', '1', '2017-11-24 14:58:40', '1', '1', '1', '0');
INSERT INTO `user_plevel` VALUES ('23', 'J_23', '清白江', '1', '2017-11-24 14:58:54', '1', '1', '1', '0');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(500) DEFAULT NULL,
  `note` varchar(500) DEFAULT NULL,
  `addtime` datetime DEFAULT CURRENT_TIMESTAMP,
  `user_id` int(11) DEFAULT NULL,
  `isdelete` int(11) DEFAULT '0' COMMENT '是否删除<后台>  0否  1是',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='角色';

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '管理员', '1', '2017-11-16 09:18:56', '1', '0');

-- ----------------------------
-- Table structure for user_role_plevel
-- ----------------------------
DROP TABLE IF EXISTS `user_role_plevel`;
CREATE TABLE `user_role_plevel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `plevel_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='角色权限';

-- ----------------------------
-- Records of user_role_plevel
-- ----------------------------
INSERT INTO `user_role_plevel` VALUES ('1', '1', '1');
INSERT INTO `user_role_plevel` VALUES ('2', '1', '2');
INSERT INTO `user_role_plevel` VALUES ('3', '1', '3');
INSERT INTO `user_role_plevel` VALUES ('4', '1', '4');
INSERT INTO `user_role_plevel` VALUES ('5', '1', '5');
INSERT INTO `user_role_plevel` VALUES ('6', '1', '6');
INSERT INTO `user_role_plevel` VALUES ('7', '1', '7');
INSERT INTO `user_role_plevel` VALUES ('8', '1', '8');
INSERT INTO `user_role_plevel` VALUES ('9', '1', '9');
INSERT INTO `user_role_plevel` VALUES ('10', '1', '10');
INSERT INTO `user_role_plevel` VALUES ('11', '1', '11');
INSERT INTO `user_role_plevel` VALUES ('12', '1', '12');
INSERT INTO `user_role_plevel` VALUES ('13', '1', '13');
INSERT INTO `user_role_plevel` VALUES ('14', '1', '14');
INSERT INTO `user_role_plevel` VALUES ('15', '1', '15');
INSERT INTO `user_role_plevel` VALUES ('16', '1', '16');
INSERT INTO `user_role_plevel` VALUES ('17', '1', '17');
INSERT INTO `user_role_plevel` VALUES ('18', '1', '18');
INSERT INTO `user_role_plevel` VALUES ('19', '1', '19');
INSERT INTO `user_role_plevel` VALUES ('20', '1', '20');
INSERT INTO `user_role_plevel` VALUES ('21', '1', '21');
INSERT INTO `user_role_plevel` VALUES ('22', '1', '22');
INSERT INTO `user_role_plevel` VALUES ('23', '1', '23');
