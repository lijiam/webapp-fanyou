/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : fanyou

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 12/04/2020 17:49:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for desk
-- ----------------------------
DROP TABLE IF EXISTS `desk`;
CREATE TABLE `desk`  (
  `id` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '餐桌编号',
  `number` int(0) NOT NULL DEFAULT 1 COMMENT '餐桌座位数',
  `desk_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '餐桌状态',
  `starttime` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '开始就餐时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of desk
-- ----------------------------
INSERT INTO `desk` VALUES ('T001', 1, '1', '2020-04-12 16:51:53');
INSERT INTO `desk` VALUES ('T002', 1, '0', '2020-01-30 14:25:19');
INSERT INTO `desk` VALUES ('T003', 1, '0', '2020-04-09 18:37:14');
INSERT INTO `desk` VALUES ('T004', 1, '0', '2020-01-30 14:25:00');
INSERT INTO `desk` VALUES ('T005', 1, '1', '2020-04-12 17:32:10');
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

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '菜品编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜名',
  `food_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '菜品图片',
  `new_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '新增菜品的时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '最近修改菜品的时间',
  `price` double(10, 2) NOT NULL DEFAULT 0.00 COMMENT '价格',
  `food_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '-1' COMMENT '菜品种类',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES (1, '白米粥', '../images/foods/001.png', '2020-04-12 17:20:01', '2020-04-12 17:20:04', 4.00, '1');
INSERT INTO `food` VALUES (2, '南瓜粥', '../images/foods/002.png', '2020-04-12 17:20:42', '2020-04-12 17:21:11', 5.00, '1');
INSERT INTO `food` VALUES (3, '红薯粥', '../images/foods/003.png', '2020-04-12 17:20:45', '2020-04-12 17:21:14', 5.00, '1');
INSERT INTO `food` VALUES (4, '皮蛋瘦肉粥', '../images/foods/004.png', '2020-04-12 17:20:48', '2020-04-12 17:21:17', 6.00, '1');
INSERT INTO `food` VALUES (5, '排骨煲仔饭', '../images/foods/005.jpg', '2020-04-12 17:20:50', '2020-04-12 17:21:19', 26.00, '2');
INSERT INTO `food` VALUES (6, '酥肉煲仔饭', '../images/foods/006.jpg', '2020-04-12 17:20:53', '2020-04-12 17:21:21', 24.00, '2');
INSERT INTO `food` VALUES (7, '香肠煲仔饭', '../images/foods/007.jpg', '2020-04-12 17:20:55', '2020-04-12 17:21:22', 21.00, '2');
INSERT INTO `food` VALUES (8, '番茄鸡蛋汤饭', '../images/foods/008.png', '2020-04-12 17:20:57', '2020-04-12 17:21:24', 18.00, '2');
INSERT INTO `food` VALUES (9, '海鲜汤饭', '../images/foods/009.jpg', '2020-04-12 17:21:01', '2020-04-12 17:21:26', 22.00, '2');
INSERT INTO `food` VALUES (10, '青菜肉丝面', '../images/foods/010.jpg', '2020-04-12 17:21:02', '2020-04-12 17:21:29', 15.00, '3');
INSERT INTO `food` VALUES (11, '炸酱面', '../images/foods/011.jpg', '2020-04-12 17:21:04', '2020-04-12 17:21:31', 18.00, '3');
INSERT INTO `food` VALUES (12, '排骨汤面', '../images/foods/012.jpg', '2020-04-12 17:21:06', '2020-04-12 17:21:33', 20.00, '3');
INSERT INTO `food` VALUES (13, '银耳羹', '../images/foods/013.jpg', '2020-04-12 17:21:09', '2020-04-12 17:21:35', 8.00, '4');
INSERT INTO `food` VALUES (14, '拔丝地瓜', '../images/foods/014.jpg', '2020-04-12 17:22:08', '2020-04-12 17:22:10', 12.00, '4');
INSERT INTO `food` VALUES (15, '冰淇淋球', '../images/foods/015.jpg', '2020-04-12 17:22:12', '2020-04-12 17:22:24', 5.00, '4');
INSERT INTO `food` VALUES (16, '水果沙拉', '../images/foods/016.jpg', '2020-04-12 17:22:14', '2020-04-12 17:22:26', 12.00, '4');
INSERT INTO `food` VALUES (17, '可乐', '../images/foods/017.jpg', '2020-04-12 17:22:16', '2020-04-12 17:22:28', 4.00, '5');
INSERT INTO `food` VALUES (18, '酸梅汁', '../images/foods/018.jpg', '2020-04-12 17:22:18', '2020-04-12 17:22:30', 4.00, '5');
INSERT INTO `food` VALUES (19, '橙汁', '../images/foods/019.jpg', '2020-04-12 17:22:20', '2020-04-12 17:22:32', 5.00, '5');
INSERT INTO `food` VALUES (20, '西瓜汁', '../images/foods/020.jpg', '2020-04-12 17:22:22', '2020-04-12 17:22:34', 5.00, '5');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单编号',
  `food_id` int(0) NOT NULL COMMENT '菜品代码',
  `food_number` int(0) NULL DEFAULT NULL COMMENT '菜品数量',
  PRIMARY KEY (`id`, `food_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '订单编号',
  `user_id` int(0) NULL DEFAULT NULL COMMENT '用户ID',
  `storeid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺ID',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '订单状态（详见wd_dm表）',
  `money` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '订单总价',
  `discount_money` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '订单优惠金额',
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '订单创建时间',
  `pingjia` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '订单评价',
  `beizhu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '订单备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for shop_car
-- ----------------------------
DROP TABLE IF EXISTS `shop_car`;
CREATE TABLE `shop_car`  (
  `userid` int(0) NOT NULL COMMENT '用户ID',
  `foodid` int(0) NOT NULL COMMENT '加购菜品ID',
  `num` int(0) NOT NULL COMMENT '加购菜品数量',
  `storeid` int(0) NOT NULL COMMENT '商店ID'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '材料编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '材料名称',
  `number` int(0) NOT NULL DEFAULT 0 COMMENT '库存数量',
  `dofood_id` int(0) NULL DEFAULT NULL COMMENT '供应菜品编号',
  `is_in` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否进货',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES (1, '大米', 10, 1, '否');
INSERT INTO `stock` VALUES (2, '排骨', 20, 5, '否');
INSERT INTO `stock` VALUES (3, '红薯', 0, 3, '是');
INSERT INTO `stock` VALUES (4, '南瓜', 100, 2, '否');
INSERT INTO `stock` VALUES (5, '皮蛋', 500, 4, '否');
INSERT INTO `stock` VALUES (6, '瘦肉', 0, 4, '是');
INSERT INTO `stock` VALUES (7, '香肠', 50, 7, '否');
INSERT INTO `stock` VALUES (8, '番茄', 10, 8, '否');
INSERT INTO `stock` VALUES (9, '青菜', 0, 10, '是');
INSERT INTO `stock` VALUES (10, '可乐', 90, 17, '否');

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '店铺编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺LOGO',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺地址',
  `hot_food` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '主推菜',
  `y_money` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '月营业额',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺联系电话',
  `apply_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '申请人姓名',
  `apply_sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '申请人性别',
  `apply_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '申请人联系方式',
  `apply_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '申请人联系地址',
  `apply_city` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '加盟区域意向',
  `is_check` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '-1' COMMENT '是否已同意加盟（-1表示未审核，0表示拒绝，1表示同意）',
  `apply_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '申请时间',
  `check_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '审核时间',
  `update_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES (1, '杭州分店', '../images/stores/001.png', '浙江省杭州市西湖区幸福街道1号', '鸡翅煲', '', '', '', '', '', '', '', '1', '2020-01-30 19:59:14', '2020-01-30 20:23:26', '2020-01-30 19:59:14');
INSERT INTO `store` VALUES (2, '嘉兴分店', '../images/stores/002.png', '浙江省嘉兴市南湖区都市街道2号', '烧烤大拼盘', '', '', '', '', '', '', '', '1', '2020-01-30 20:21:08', '2020-01-30 20:23:17', '2020-01-30 20:25:07');
INSERT INTO `store` VALUES (3, '宁波分店', '../images/stores/003.png', '浙江省宁波市象山市金都街道37号', '鲜美人生', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2020-04-10 08:45:29', '2020-04-10 08:45:29', '2020-04-10 08:45:29');
INSERT INTO `store` VALUES (4, '绍兴分店', '../images/stores/004.png', '浙江省绍兴市柯桥区万达金街29号', '蟹炒年糕', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2020-04-10 08:45:31', '2020-04-10 08:45:31', '2020-04-10 08:45:31');
INSERT INTO `store` VALUES (5, '金华分店', '../images/stores/005.png', '浙江省金华市婺城区贤才街道63号', '蛋包饭', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2020-04-10 08:45:33', '2020-04-10 08:45:33', '2020-04-10 08:45:33');
INSERT INTO `store` VALUES (6, '温州分店', '../images/stores/006.png', '浙江省温州市鹿城区阳光街道12号', '拔丝地瓜', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2020-04-10 08:45:34', '2020-04-10 08:45:34', '2020-04-10 08:45:34');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户名',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `sex` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `like` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '喜好',
  `new_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '注册时间',
  `login_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '最后一次登录时间',
  `user_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '0' COMMENT '用户类型代码（详见wd_dm表）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wd_dm
-- ----------------------------
DROP TABLE IF EXISTS `wd_dm`;
CREATE TABLE `wd_dm`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '维度代码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '维度名称',
  `type_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '维度类型代码',
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '维度类型名称'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wd_dm
-- ----------------------------
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
INSERT INTO `wd_dm` VALUES ('1', '粥类', 'food_type', '菜品种类');
INSERT INTO `wd_dm` VALUES ('2', '饭类', 'food_type', '菜品种类');
INSERT INTO `wd_dm` VALUES ('3', '面类', 'food_type', '菜品种类');
INSERT INTO `wd_dm` VALUES ('4', '小吃类', 'food_type', '菜品种类');
INSERT INTO `wd_dm` VALUES ('5', '饮料类', 'food_type', '菜品种类');

SET FOREIGN_KEY_CHECKS = 1;
