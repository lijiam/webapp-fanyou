/*
 Navicat Premium Data Transfer

 Source Server         : localhost（root）
 Source Server Type    : MySQL
 Source Server Version : 80018
 Source Host           : localhost:3306
 Source Schema         : fanyou

 Target Server Type    : MySQL
 Target Server Version : 80018
 File Encoding         : 65001

 Date: 10/04/2020 19:39:59
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for desk
-- ----------------------------
DROP TABLE IF EXISTS `desk`;
CREATE TABLE `desk` (
  `id` varchar(5) NOT NULL COMMENT '餐桌编号',
  `number` int(11) NOT NULL DEFAULT '1' COMMENT '餐桌座位数',
  `desk_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '餐桌状态',
  `starttime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '开始就餐时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of desk
-- ----------------------------
BEGIN;
INSERT INTO `desk` VALUES ('T001', 1, '0', '2020-01-30 14:25:00');
INSERT INTO `desk` VALUES ('T002', 1, '0', '2020-01-30 14:25:19');
INSERT INTO `desk` VALUES ('T003', 1, '0', '2020-04-09 18:37:14');
INSERT INTO `desk` VALUES ('T004', 1, '0', '2020-01-30 14:25:00');
INSERT INTO `desk` VALUES ('T005', 1, '0', '2020-04-09 18:40:17');
INSERT INTO `desk` VALUES ('T006', 2, '0', '2020-04-09 18:40:57');
INSERT INTO `desk` VALUES ('T007', 2, '0', '2020-04-09 18:41:05');
INSERT INTO `desk` VALUES ('T008', 2, '0', '2020-04-09 18:41:09');
INSERT INTO `desk` VALUES ('T009', 2, '0', '2020-04-09 18:41:13');
INSERT INTO `desk` VALUES ('T010', 2, '0', '2020-04-09 18:41:17');
INSERT INTO `desk` VALUES ('T011', 4, '0', '2020-04-09 18:41:20');
INSERT INTO `desk` VALUES ('T012', 4, '0', '2020-04-09 18:41:24');
INSERT INTO `desk` VALUES ('T013', 4, '0', '2020-04-09 18:41:28');
INSERT INTO `desk` VALUES ('T014', 4, '0', '2020-04-09 18:41:31');
INSERT INTO `desk` VALUES ('T015', 4, '0', '2020-04-09 18:41:34');
INSERT INTO `desk` VALUES ('T016', 4, '0', '2020-04-09 18:41:37');
INSERT INTO `desk` VALUES ('T017', 4, '0', '2020-04-09 18:41:40');
INSERT INTO `desk` VALUES ('T018', 4, '0', '2020-04-09 18:41:44');
INSERT INTO `desk` VALUES ('T019', 4, '0', '2020-04-09 18:41:48');
INSERT INTO `desk` VALUES ('T020', 4, '0', '2020-04-09 18:41:53');
INSERT INTO `desk` VALUES ('T021', 8, '0', '2020-04-09 18:42:14');
INSERT INTO `desk` VALUES ('T022', 8, '0', '2020-04-09 18:42:19');
INSERT INTO `desk` VALUES ('T023', 8, '0', '2020-04-09 18:42:24');
INSERT INTO `desk` VALUES ('T024', 8, '0', '2020-04-09 18:42:27');
INSERT INTO `desk` VALUES ('T025', 8, '0', '2020-04-09 18:42:30');
INSERT INTO `desk` VALUES ('T026', 10, '0', '2020-04-09 18:42:32');
INSERT INTO `desk` VALUES ('T027', 10, '0', '2020-04-09 18:42:36');
INSERT INTO `desk` VALUES ('T028', 10, '0', '2020-04-09 18:42:40');
INSERT INTO `desk` VALUES ('T029', 10, '0', '2020-04-09 18:42:43');
INSERT INTO `desk` VALUES ('T030', 10, '0', '2020-04-09 18:42:50');
COMMIT;

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '菜品编号',
  `name` varchar(255) DEFAULT NULL COMMENT '菜名',
  `food_img` varchar(255) DEFAULT NULL COMMENT '菜品图片',
  `new_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增菜品的时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最近修改菜品的时间',
  `price` double(10,2) NOT NULL DEFAULT '0.00' COMMENT '价格',
  `food_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '-1' COMMENT '菜品种类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of food
-- ----------------------------
BEGIN;
INSERT INTO `food` VALUES (1, '白米粥', '../images/foods/001.png', '2020-01-30 13:28:50', '2020-01-30 13:28:50', 4.00, '2');
INSERT INTO `food` VALUES (2, '香肠煲仔饭', '../images/foods/002.jpg', '2020-01-30 13:50:13', '2020-01-30 13:50:13', 21.00, '1');
INSERT INTO `food` VALUES (3, '银耳羹', '../images/foods/003.jpg', '2020-04-10 10:09:22', '2020-04-10 10:09:22', 8.00, '2');
INSERT INTO `food` VALUES (4, '海鲜汤饭', '../images/foods/004.jpg', '2020-04-10 10:09:24', '2020-04-10 10:09:24', 22.00, '2');
INSERT INTO `food` VALUES (5, '水果沙拉', '../images/foods/005.jpg', '2020-04-10 10:09:25', '2020-04-10 10:09:25', 12.00, '2');
INSERT INTO `food` VALUES (6, '排骨煲仔饭', '../images/foods/006.jpg', '2020-04-10 10:09:26', '2020-04-10 10:09:26', 26.00, '2');
INSERT INTO `food` VALUES (7, '酥肉煲仔饭', '../images/foods/007.jpg', '2020-04-10 10:10:40', '2020-04-10 10:10:40', 24.00, '2');
COMMIT;

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail` (
  `id` varchar(255) NOT NULL COMMENT '订单编号',
  `food_id` int(11) NOT NULL COMMENT '菜品代码',
  `food_number` int(11) DEFAULT NULL COMMENT '菜品数量',
  PRIMARY KEY (`id`,`food_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
BEGIN;
INSERT INTO `order_detail` VALUES ('202001310001', 1, 2);
INSERT INTO `order_detail` VALUES ('202001310001', 2, 1);
COMMIT;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` varchar(255) NOT NULL COMMENT '订单编号',
  `user_id` int(11) DEFAULT NULL COMMENT '用户ID',
  `type` varchar(255) NOT NULL DEFAULT '0' COMMENT '订单状态（详见wd_dm表）',
  `money` varchar(255) DEFAULT NULL COMMENT '订单总价',
  `discount_money` varchar(255) DEFAULT NULL COMMENT '订单优惠金额',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '订单创建时间',
  `pingjia` varchar(255) DEFAULT NULL COMMENT '订单评价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of orders
-- ----------------------------
BEGIN;
INSERT INTO `orders` VALUES ('202001310001', 4, '3', '234', '10', '2020-01-31 13:36:48', '无');
COMMIT;

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '材料编号',
  `name` varchar(255) DEFAULT NULL COMMENT '材料名称',
  `number` int(11) NOT NULL DEFAULT '0' COMMENT '库存数量',
  `dofood_id` int(11) DEFAULT NULL COMMENT '供应菜品编号',
  `is_in` char(1) DEFAULT NULL COMMENT '是否进货',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of stock
-- ----------------------------
BEGIN;
INSERT INTO `stock` VALUES (1, '大米', 10, 1, '否');
COMMIT;

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '店铺编号',
  `name` varchar(255) DEFAULT NULL COMMENT '店铺名称',
  `address` varchar(255) DEFAULT NULL COMMENT '店铺地址',
  `hot_food` varchar(255) DEFAULT NULL COMMENT '主推菜',
  `y_money` varchar(255) DEFAULT NULL COMMENT '月营业额',
  `phone` varchar(255) DEFAULT NULL COMMENT '店铺联系电话',
  `apply_name` varchar(255) DEFAULT NULL COMMENT '申请人姓名',
  `apply_sex` varchar(255) DEFAULT NULL COMMENT '申请人性别',
  `apply_phone` varchar(255) DEFAULT NULL COMMENT '申请人联系方式',
  `apply_address` varchar(255) DEFAULT NULL COMMENT '申请人联系地址',
  `apply_city` varchar(255) DEFAULT NULL COMMENT '加盟区域意向',
  `is_check` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '-1' COMMENT '是否已同意加盟（-1表示未审核，0表示拒绝，1表示同意）',
  `apply_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '申请时间',
  `check_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '审核时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of store
-- ----------------------------
BEGIN;
INSERT INTO `store` VALUES (1, '杭州分店', '浙江省杭州市西湖区幸福街道1号', '鸡翅煲', '', '', '', '', '', '', '', '1', '2020-01-30 19:59:14', '2020-01-30 20:23:26', '2020-01-30 19:59:14');
INSERT INTO `store` VALUES (2, '嘉兴分店', '浙江省嘉兴市南湖区都市街道2号', '烧烤大拼盘', '', '', '', '', '', '', '', '1', '2020-01-30 20:21:08', '2020-01-30 20:23:17', '2020-01-30 20:25:07');
INSERT INTO `store` VALUES (3, '宁波分店', '浙江省宁波市象山市金都街道37号', '鲜美人生', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2020-04-10 08:45:29', '2020-04-10 08:45:29', '2020-04-10 08:45:29');
INSERT INTO `store` VALUES (4, '绍兴分店', '浙江省绍兴市柯桥区万达金街29号', '蟹炒年糕', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2020-04-10 08:45:31', '2020-04-10 08:45:31', '2020-04-10 08:45:31');
INSERT INTO `store` VALUES (5, '金华分店', '浙江省金华市婺城区贤才街道63号', '蛋包饭', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2020-04-10 08:45:33', '2020-04-10 08:45:33', '2020-04-10 08:45:33');
INSERT INTO `store` VALUES (6, '温州分店', '浙江省温州市鹿城区阳光街道12号', '拔丝地瓜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2020-04-10 08:45:34', '2020-04-10 08:45:34', '2020-04-10 08:45:34');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '用户名',
  `phone` varchar(255) DEFAULT NULL COMMENT '手机号',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `like` varchar(255) DEFAULT NULL COMMENT '喜好',
  `new_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '注册时间',
  `login_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后一次登录时间',
  `user_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '用户类型代码（详见wd_dm表）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (4, 'root', '13827832831', '123', '女', NULL, '2020-01-24 16:52:27', '2020-04-08 21:52:54', '1');
INSERT INTO `user` VALUES (5, 'admin', NULL, '123', '女', NULL, '2020-01-24 16:52:50', '2020-04-08 21:53:33', '2');
INSERT INTO `user` VALUES (6, 'admin3', NULL, '123', '男', NULL, '2020-01-24 16:54:00', '2020-01-24 16:54:00', '3');
INSERT INTO `user` VALUES (7, 'custom', NULL, '123', '男', NULL, '2020-01-24 16:54:08', '2020-04-08 21:51:36', '0');
INSERT INTO `user` VALUES (9, 'sdfasd', NULL, '123', NULL, NULL, '2020-04-09 18:59:40', '2020-04-09 18:59:40', '0');
INSERT INTO `user` VALUES (10, 'dgdfgdsfgsdf', '1233245355', '123', '女', NULL, '2020-04-09 19:01:09', '2020-04-09 19:01:09', '0');
INSERT INTO `user` VALUES (11, 'adminsdfsd', NULL, '123', NULL, NULL, '2020-04-09 19:01:58', '2020-04-09 19:01:58', '1');
INSERT INTO `user` VALUES (12, 'jm', '12352362584', '123', '男', NULL, '2020-04-09 19:03:03', '2020-04-09 19:03:07', '0');
COMMIT;

-- ----------------------------
-- Table structure for wd_dm
-- ----------------------------
DROP TABLE IF EXISTS `wd_dm`;
CREATE TABLE `wd_dm` (
  `id` varchar(255) DEFAULT NULL COMMENT '维度代码',
  `name` varchar(255) DEFAULT NULL COMMENT '维度名称',
  `type_id` varchar(255) DEFAULT NULL COMMENT '维度类型代码',
  `type_name` varchar(255) DEFAULT NULL COMMENT '维度类型名称'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of wd_dm
-- ----------------------------
BEGIN;
INSERT INTO `wd_dm` VALUES ('1', '一级管理员', 'user_type', '用户类型');
INSERT INTO `wd_dm` VALUES ('2', '二级管理员', 'user_type', '用户类型');
INSERT INTO `wd_dm` VALUES ('3', '三级管理员', 'user_type', '用户类型');
INSERT INTO `wd_dm` VALUES ('0', '客户', 'user_type', '用户类型');
INSERT INTO `wd_dm` VALUES ('0', '已下单未付款', 'order_type', '订单状态');
INSERT INTO `wd_dm` VALUES ('1', '已付款未下厨', 'order_type', '订单状态');
INSERT INTO `wd_dm` VALUES ('2', '已下厨', 'order_type', '订单状态');
INSERT INTO `wd_dm` VALUES ('3', '已完成待评价', 'order_type', '订单状态');
INSERT INTO `wd_dm` VALUES ('4', '已完成', 'order_type', '订单状态');
INSERT INTO `wd_dm` VALUES ('-1', '已取消', 'order_type', '订单状态');
INSERT INTO `wd_dm` VALUES ('-1', '已废弃', 'desk_type', '餐桌状态');
INSERT INTO `wd_dm` VALUES ('0', '空闲', 'desk_type', '餐桌状态');
INSERT INTO `wd_dm` VALUES ('1', '就餐中', 'desk_type', '餐桌状态');
INSERT INTO `wd_dm` VALUES ('-1', '未知', 'food_type', '菜品种类');
INSERT INTO `wd_dm` VALUES ('1', '火锅类', 'food_type', '菜品种类');
INSERT INTO `wd_dm` VALUES ('2', '主食', 'food_type', '菜品种类');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
