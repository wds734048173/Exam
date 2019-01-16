/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : clothes

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-01-15 12:57:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_address`;
CREATE TABLE `tb_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(11) DEFAULT NULL COMMENT '电话',
  `customerId` int(11) NOT NULL COMMENT '客户id',
  `provinceId` int(11) DEFAULT NULL COMMENT '省',
  `cityId` int(11) DEFAULT NULL COMMENT '市',
  `areaId` int(11) DEFAULT NULL COMMENT '区',
  `address` varchar(100) NOT NULL COMMENT '详细地址',
  `state` tinyint(2) NOT NULL COMMENT '状态，默认0',
  `ctime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `rtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_address
-- ----------------------------

-- ----------------------------
-- Table structure for tb_customer
-- ----------------------------
DROP TABLE IF EXISTS `tb_customer`;
CREATE TABLE `tb_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL COMMENT '用户名',
  `password` varchar(40) NOT NULL COMMENT '密码',
  `realname` varchar(40) DEFAULT NULL COMMENT '真实姓名',
  `sex` tinyint(2) NOT NULL COMMENT '性别（0男1女）',
  `phone` varchar(11) NOT NULL COMMENT '联系电话',
  `address` varchar(100) NOT NULL COMMENT '地址',
  `state` tinyint(2) NOT NULL COMMENT '状态（0可用，1不可用）',
  `hiredate` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '出生日期',
  `ctime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `rtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_customer
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods`;
CREATE TABLE `tb_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(40) NOT NULL COMMENT '货号',
  `name` varchar(40) NOT NULL COMMENT '商品名称',
  `pic` varchar(100) DEFAULT NULL COMMENT '主图',
  `pPrice` int(10) NOT NULL COMMENT '采购价',
  `sPrice` int(10) NOT NULL COMMENT '销售价',
  `mPrice` int(10) NOT NULL COMMENT '会员价',
  `class1Id` int(11) NOT NULL,
  `class2Id` int(11) NOT NULL,
  `class3Id` int(11) NOT NULL,
  `brandId` int(11) NOT NULL,
  `year` varchar(10) NOT NULL COMMENT '上新年份',
  `season` varchar(10) NOT NULL COMMENT '适用季节',
  `isshelf` tinyint(2) NOT NULL COMMENT '是否上下架',
  `sex` varchar(10) NOT NULL COMMENT '适用性别',
  `storeId` int(11) NOT NULL COMMENT '店铺id',
  `ctime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `rtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_brand
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_brand`;
CREATE TABLE `tb_goods_brand` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL COMMENT '品牌名称',
  `state` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `pic` varchar(100) DEFAULT NULL COMMENT '品牌图片',
  `storeId` int(11) NOT NULL COMMENT '店铺id',
  `ctime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `rtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods_brand
-- ----------------------------
INSERT INTO `tb_goods_brand` VALUES ('1', '海宁皮草', '0', '1', '1', '2019-01-12 11:32:33', '2019-01-12 11:32:33');
INSERT INTO `tb_goods_brand` VALUES ('2', '耐克', '0', '1', '1', '2019-01-12 11:32:11', '2019-01-12 11:32:11');
INSERT INTO `tb_goods_brand` VALUES ('3', '森马', '1', '1', '1', '2019-01-12 11:31:58', '2019-01-12 11:31:58');
INSERT INTO `tb_goods_brand` VALUES ('4', '阿迪', '0', 'http://www.baidu.com', '1', '2019-01-12 11:32:08', '2019-01-12 11:32:08');
INSERT INTO `tb_goods_brand` VALUES ('5', '361度', '0', null, '1', '2019-01-12 11:29:48', null);
INSERT INTO `tb_goods_brand` VALUES ('7', '乔丹', '0', null, '1', '2019-01-12 11:30:17', null);
INSERT INTO `tb_goods_brand` VALUES ('8', '阿尼玛', '0', null, '1', '2019-01-12 11:30:44', null);
INSERT INTO `tb_goods_brand` VALUES ('9', '阿玛尼', '0', null, '1', '2019-01-12 11:30:59', null);
INSERT INTO `tb_goods_brand` VALUES ('10', '海澜之家', '0', null, '1', '2019-01-12 11:31:30', null);
INSERT INTO `tb_goods_brand` VALUES ('11', '木林森', '0', null, '1', '2019-01-12 11:31:45', null);
INSERT INTO `tb_goods_brand` VALUES ('12', '李宁', '0', null, '1', '2019-01-12 16:43:45', null);
INSERT INTO `tb_goods_brand` VALUES ('13', '任晨铭', '0', null, '1', '2019-01-12 17:45:12', null);
INSERT INTO `tb_goods_brand` VALUES ('14', '任晨铭', '0', null, '1', '2019-01-12 17:45:24', null);
INSERT INTO `tb_goods_brand` VALUES ('15', '渲染', '0', null, '1', '2019-01-12 17:54:57', '2019-01-12 17:54:57');
INSERT INTO `tb_goods_brand` VALUES ('16', '需', '1', null, '1', '2019-01-12 17:54:50', '2019-01-12 17:54:50');
INSERT INTO `tb_goods_brand` VALUES ('17', '法规回复', '0', null, '1', '2019-01-12 18:13:48', null);

-- ----------------------------
-- Table structure for tb_goods_class
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_class`;
CREATE TABLE `tb_goods_class` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT '分类名称',
  `pId` int(11) NOT NULL,
  `state` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `storeId` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `ctime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `rtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods_class
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_color
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_color`;
CREATE TABLE `tb_goods_color` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL COMMENT '颜色名称',
  `state` tinyint(2) DEFAULT '0' COMMENT '状态',
  `storeId` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `ctime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `rtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods_color
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_comment
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_comment`;
CREATE TABLE `tb_goods_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsId` int(11) NOT NULL COMMENT '商品id',
  `skuId` int(11) NOT NULL,
  `grade` tinyint(2) DEFAULT '0' COMMENT '评论等级（0好评1中评2差评）',
  `remark` varchar(200) NOT NULL COMMENT '评语',
  `storeId` int(11) NOT NULL COMMENT '店铺id',
  `customerId` int(11) NOT NULL COMMENT '客户id',
  `state` tinyint(2) DEFAULT '0' COMMENT '状态（0可见1不可见）',
  `ctime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `rtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods_comment
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_size
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_size`;
CREATE TABLE `tb_goods_size` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL COMMENT '尺码名称',
  `state` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `storeId` int(11) NOT NULL DEFAULT '0' COMMENT '店铺id',
  `ctime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `rtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods_size
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_sku
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_sku`;
CREATE TABLE `tb_goods_sku` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsId` int(11) NOT NULL COMMENT '商品id',
  `colorId` int(11) NOT NULL COMMENT '颜色id',
  `sizeId` int(11) NOT NULL COMMENT '尺码id',
  `state` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `ctime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `rtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods_sku
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_stock
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_stock`;
CREATE TABLE `tb_goods_stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeId` int(11) NOT NULL COMMENT '店铺id',
  `goodsId` int(11) NOT NULL COMMENT '商品id',
  `skuId` int(11) NOT NULL,
  `num` int(10) NOT NULL COMMENT '数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods_stock
-- ----------------------------

-- ----------------------------
-- Table structure for tb_goods_stock_adjustment
-- ----------------------------
DROP TABLE IF EXISTS `tb_goods_stock_adjustment`;
CREATE TABLE `tb_goods_stock_adjustment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeId` int(11) NOT NULL COMMENT '店铺id',
  `goodsId` int(11) NOT NULL COMMENT '商品id',
  `skuId` int(11) NOT NULL,
  `num` int(10) NOT NULL COMMENT '数量',
  `method` tinyint(2) NOT NULL COMMENT '操作（增加0，减少1）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_goods_stock_adjustment
-- ----------------------------

-- ----------------------------
-- Table structure for tb_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_order`;
CREATE TABLE `tb_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerId` int(11) NOT NULL COMMENT '客户id',
  `totalMoney` int(10) NOT NULL COMMENT '总价',
  `payMoney` int(10) NOT NULL COMMENT '支付金额',
  `addressId` int(11) NOT NULL COMMENT '收货地址id',
  `storeId` int(11) NOT NULL COMMENT '店铺id',
  `state` tinyint(2) NOT NULL COMMENT '订单状态（0已下单1、已支付，2已发货，3已收货，4已完成，5取消订单）',
  `ctime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `rtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `payTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `sendTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '发货时间',
  `getTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '收货时间',
  `cancelTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '取消时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_order
-- ----------------------------

-- ----------------------------
-- Table structure for tb_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_orderinfo`;
CREATE TABLE `tb_orderinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oId` int(11) NOT NULL COMMENT '订单ID',
  `goodsId` int(11) NOT NULL,
  `skuId` int(11) NOT NULL,
  `price` int(10) NOT NULL,
  `num` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_orderinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tb_sale_report
-- ----------------------------
DROP TABLE IF EXISTS `tb_sale_report`;
CREATE TABLE `tb_sale_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeId` int(11) NOT NULL COMMENT '店铺id',
  `goodsId` int(11) NOT NULL COMMENT '商品id',
  `skuId` int(11) NOT NULL,
  `num` int(10) NOT NULL COMMENT '销售数量',
  `date` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '报表时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_sale_report
-- ----------------------------

-- ----------------------------
-- Table structure for tb_shoppingcar
-- ----------------------------
DROP TABLE IF EXISTS `tb_shoppingcar`;
CREATE TABLE `tb_shoppingcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeId` int(11) NOT NULL COMMENT '店铺id',
  `customerId` int(11) NOT NULL COMMENT '客户id',
  `goodsId` int(11) NOT NULL COMMENT '商品id',
  `skuId` int(11) NOT NULL,
  `num` int(10) NOT NULL COMMENT '数量',
  `price` int(10) NOT NULL COMMENT '单价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_shoppingcar
-- ----------------------------

-- ----------------------------
-- Table structure for tb_store
-- ----------------------------
DROP TABLE IF EXISTS `tb_store`;
CREATE TABLE `tb_store` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL COMMENT '店铺名称',
  `bussinessNo` varchar(40) NOT NULL COMMENT '营业执照编号',
  `pic` varchar(100) DEFAULT NULL COMMENT '店招',
  `address` varchar(100) NOT NULL COMMENT '地址',
  `telphone` varchar(11) NOT NULL COMMENT '联系电话',
  `state` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态（0未审核1审核失败2审核成功）',
  `bussinessPic` varchar(100) NOT NULL COMMENT '营业执照图片',
  `ctime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `rtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_store
-- ----------------------------

-- ----------------------------
-- Table structure for tb_supplier
-- ----------------------------
DROP TABLE IF EXISTS `tb_supplier`;
CREATE TABLE `tb_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL COMMENT '姓名',
  `sex` tinyint(2) NOT NULL COMMENT '性别',
  `telphone` varchar(11) NOT NULL COMMENT '联系电话',
  `address` varchar(100) NOT NULL COMMENT '地址',
  `state` tinyint(2) NOT NULL COMMENT '状态',
  `storeId` int(11) NOT NULL COMMENT '店铺id',
  `ctime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `rtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_supplier
-- ----------------------------

-- ----------------------------
-- Table structure for tb_supplier_order
-- ----------------------------
DROP TABLE IF EXISTS `tb_supplier_order`;
CREATE TABLE `tb_supplier_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no` varchar(10) NOT NULL COMMENT '采购单编号',
  `supplierId` int(11) NOT NULL COMMENT '供应商id',
  `storeId` int(11) NOT NULL COMMENT '店铺id',
  `totalMoney` int(10) NOT NULL COMMENT '总价',
  `payMoney` int(10) NOT NULL COMMENT '实际支付金额',
  `state` tinyint(2) NOT NULL DEFAULT '0' COMMENT '状态',
  `ctime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  `rtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_supplier_order
-- ----------------------------

-- ----------------------------
-- Table structure for tb_supplier_orderinfo
-- ----------------------------
DROP TABLE IF EXISTS `tb_supplier_orderinfo`;
CREATE TABLE `tb_supplier_orderinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `oId` int(11) NOT NULL COMMENT '采购单id',
  `goodsId` int(11) NOT NULL COMMENT '商品id',
  `skuId` int(11) NOT NULL COMMENT '商品详情id',
  `num` int(11) NOT NULL COMMENT '数量',
  `price` int(11) NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_supplier_orderinfo
-- ----------------------------

-- ----------------------------
-- Table structure for tb_supplier_report
-- ----------------------------
DROP TABLE IF EXISTS `tb_supplier_report`;
CREATE TABLE `tb_supplier_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storeId` int(11) NOT NULL COMMENT '店铺id',
  `goodsId` int(11) NOT NULL COMMENT '商品id',
  `skuId` int(11) NOT NULL,
  `num` int(10) NOT NULL COMMENT '采购数量',
  `date` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_supplier_report
-- ----------------------------

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(40) NOT NULL COMMENT '用户名',
  `password` varchar(40) NOT NULL COMMENT '密码',
  `realname` varchar(40) DEFAULT NULL COMMENT '真实姓名',
  `role` tinyint(2) NOT NULL DEFAULT '70' COMMENT '角色（70店员,80店长,90老板,0管理员）',
  `sex` tinyint(2) NOT NULL COMMENT '性别（0男1女）',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `state` tinyint(2) NOT NULL COMMENT '状态（0可用，1不可用）',
  `storeId` int(11) NOT NULL COMMENT '店铺id',
  `ctime` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `rtime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', 'wds', 'E10ADC3949BA59ABBE56E057F20F883E', null, '70', '1', null, '1', '1', '2019-01-12 21:02:24', null);
