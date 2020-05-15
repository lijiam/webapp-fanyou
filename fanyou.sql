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

 Date: 15/05/2020 19:15:02
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
INSERT INTO `desk` VALUES ('T003', 1, '1', '2020-04-19 11:19:26');
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
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
  `comp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位',
  `price` int(0) NULL DEFAULT NULL COMMENT '单价',
  `is_in` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否进货',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stock
-- ----------------------------
INSERT INTO `stock` VALUES (1, '大米', 499, '份', 10, '0');
INSERT INTO `stock` VALUES (2, '南瓜', 8, '份', 5, '0');
INSERT INTO `stock` VALUES (3, '红薯', 98, '份', 3, '0');
INSERT INTO `stock` VALUES (4, '皮蛋', 100, '个', 1, '0');
INSERT INTO `stock` VALUES (5, '排骨', 150, '份', 30, '0');
INSERT INTO `stock` VALUES (6, '猪肉', 50, '份', 25, '0');
INSERT INTO `stock` VALUES (7, '香肠', 100, '罐', 50, '0');
INSERT INTO `stock` VALUES (8, '番茄', 9, '份', 12, '0');
INSERT INTO `stock` VALUES (9, '鸡蛋', 199, '个', 1, '0');
INSERT INTO `stock` VALUES (10, '金针菇', 9, '份', 14, '0');
INSERT INTO `stock` VALUES (11, '虾', 10, '份', 30, '0');
INSERT INTO `stock` VALUES (12, '扇贝', 20, '份', 35, '0');
INSERT INTO `stock` VALUES (13, '青菜', 10, '份', 5, '0');
INSERT INTO `stock` VALUES (14, '蜜制酱', 5, '罐', 10, '0');
INSERT INTO `stock` VALUES (15, '银耳', 10, '份', 12, '0');
INSERT INTO `stock` VALUES (16, '枸杞', 10, '份', 15, '0');
INSERT INTO `stock` VALUES (17, '冰淇淋', 9, '桶', 100, '0');
INSERT INTO `stock` VALUES (18, '苹果', 10, '份', 20, '0');
INSERT INTO `stock` VALUES (19, '圣女果', 10, '份', 30, '0');
INSERT INTO `stock` VALUES (20, '沙拉酱', 10, '罐', 50, '0');
INSERT INTO `stock` VALUES (21, '橙子', 20, '份', 15, '0');
INSERT INTO `stock` VALUES (22, '西瓜', 5, '份', 10, '0');
INSERT INTO `stock` VALUES (23, '可乐', 50, '瓶', 15, '0');
INSERT INTO `stock` VALUES (24, '酸梅汁', 10, '瓶', 10, '0');

-- ----------------------------
-- Table structure for stock_to_food
-- ----------------------------
DROP TABLE IF EXISTS `stock_to_food`;
CREATE TABLE `stock_to_food`  (
  `stock_id` int(0) NOT NULL COMMENT '原材料编号',
  `food_id` int(0) NOT NULL COMMENT '菜品编号',
  PRIMARY KEY (`stock_id`, `food_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of stock_to_food
-- ----------------------------
INSERT INTO `stock_to_food` VALUES (1, 1);
INSERT INTO `stock_to_food` VALUES (1, 2);
INSERT INTO `stock_to_food` VALUES (1, 3);
INSERT INTO `stock_to_food` VALUES (1, 4);
INSERT INTO `stock_to_food` VALUES (1, 5);
INSERT INTO `stock_to_food` VALUES (1, 6);
INSERT INTO `stock_to_food` VALUES (1, 7);
INSERT INTO `stock_to_food` VALUES (1, 8);
INSERT INTO `stock_to_food` VALUES (1, 9);
INSERT INTO `stock_to_food` VALUES (2, 2);
INSERT INTO `stock_to_food` VALUES (3, 2);
INSERT INTO `stock_to_food` VALUES (3, 14);
INSERT INTO `stock_to_food` VALUES (4, 4);
INSERT INTO `stock_to_food` VALUES (5, 5);
INSERT INTO `stock_to_food` VALUES (5, 12);
INSERT INTO `stock_to_food` VALUES (6, 4);
INSERT INTO `stock_to_food` VALUES (6, 6);
INSERT INTO `stock_to_food` VALUES (6, 10);
INSERT INTO `stock_to_food` VALUES (7, 7);
INSERT INTO `stock_to_food` VALUES (8, 8);
INSERT INTO `stock_to_food` VALUES (9, 8);
INSERT INTO `stock_to_food` VALUES (10, 8);
INSERT INTO `stock_to_food` VALUES (10, 9);
INSERT INTO `stock_to_food` VALUES (11, 9);
INSERT INTO `stock_to_food` VALUES (12, 9);
INSERT INTO `stock_to_food` VALUES (13, 10);
INSERT INTO `stock_to_food` VALUES (13, 12);
INSERT INTO `stock_to_food` VALUES (14, 11);
INSERT INTO `stock_to_food` VALUES (15, 13);
INSERT INTO `stock_to_food` VALUES (16, 13);
INSERT INTO `stock_to_food` VALUES (17, 15);
INSERT INTO `stock_to_food` VALUES (18, 16);
INSERT INTO `stock_to_food` VALUES (19, 16);
INSERT INTO `stock_to_food` VALUES (20, 16);
INSERT INTO `stock_to_food` VALUES (21, 16);
INSERT INTO `stock_to_food` VALUES (21, 19);
INSERT INTO `stock_to_food` VALUES (22, 16);
INSERT INTO `stock_to_food` VALUES (22, 20);
INSERT INTO `stock_to_food` VALUES (23, 17);
INSERT INTO `stock_to_food` VALUES (24, 18);

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '店铺编号',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺名称',
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺LOGO',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '店铺地址',
  `y_money` bigint(0) NULL DEFAULT NULL COMMENT '营业额',
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
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES (1, '杭州分店', '../images/stores/001.png', '浙江省杭州市西湖区幸福街道1号', 0, '', '', '', '', '', '', '1', '2020-01-30 19:59:14', '2020-01-30 20:23:26', '2020-01-30 19:59:14');
INSERT INTO `store` VALUES (2, '嘉兴分店', '../images/stores/002.png', '浙江省嘉兴市南湖区都市街道2号', 0, '', '', '', '', '', '', '1', '2020-01-30 20:21:08', '2020-01-30 20:23:17', '2020-01-30 20:25:07');
INSERT INTO `store` VALUES (3, '宁波分店', '../images/stores/003.png', '浙江省宁波市象山市金都街道37号', 0, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2020-04-10 08:45:29', '2020-04-10 08:45:29', '2020-04-10 08:45:29');
INSERT INTO `store` VALUES (4, '绍兴分店', '../images/stores/004.png', '浙江省绍兴市柯桥区万达金街29号', 0, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2020-04-10 08:45:31', '2020-04-10 08:45:31', '2020-04-10 08:45:31');
INSERT INTO `store` VALUES (5, '金华分店', '../images/stores/005.png', '浙江省金华市婺城区贤才街道63号', 0, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2020-04-10 08:45:33', '2020-04-10 08:45:33', '2020-04-10 08:45:33');
INSERT INTO `store` VALUES (6, '温州分店', '../images/stores/006.png', '浙江省温州市鹿城区阳光街道12号', 41, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2020-04-10 08:45:34', '2020-04-10 08:45:34', '2020-04-19 11:26:39');

-- ----------------------------
-- Table structure for store_hotfood
-- ----------------------------
DROP TABLE IF EXISTS `store_hotfood`;
CREATE TABLE `store_hotfood`  (
  `storeid` int(0) NOT NULL COMMENT '店铺编号',
  `foodid` int(0) NOT NULL COMMENT '菜品编号',
  PRIMARY KEY (`storeid`, `foodid`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of store_hotfood
-- ----------------------------
INSERT INTO `store_hotfood` VALUES (1, 5);
INSERT INTO `store_hotfood` VALUES (1, 11);
INSERT INTO `store_hotfood` VALUES (2, 3);
INSERT INTO `store_hotfood` VALUES (2, 6);
INSERT INTO `store_hotfood` VALUES (3, 9);
INSERT INTO `store_hotfood` VALUES (3, 10);
INSERT INTO `store_hotfood` VALUES (4, 7);
INSERT INTO `store_hotfood` VALUES (4, 14);
INSERT INTO `store_hotfood` VALUES (5, 2);
INSERT INTO `store_hotfood` VALUES (5, 5);
INSERT INTO `store_hotfood` VALUES (6, 9);
INSERT INTO `store_hotfood` VALUES (6, 15);

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
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wd_dm
-- ----------------------------
DROP TABLE IF EXISTS `wd_dm`;
CREATE TABLE `wd_dm`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '维度代码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '维度名称',
  `type_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '维度类型代码',
  `type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '维度类型名称',
  PRIMARY KEY (`id`, `type_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wd_dm
-- ----------------------------
INSERT INTO `wd_dm` VALUES ('-1', '已废弃', 'desk_type', '餐桌状态');
INSERT INTO `wd_dm` VALUES ('-1', '其他', 'food_type', '菜品种类');
INSERT INTO `wd_dm` VALUES ('-1', '已取消', 'order_type', '订单状态');
INSERT INTO `wd_dm` VALUES ('0', '空闲', 'desk_type', '餐桌状态');
INSERT INTO `wd_dm` VALUES ('0', '推荐菜', 'food_type', '菜品种类');
INSERT INTO `wd_dm` VALUES ('0', '已下单未付款', 'order_type', '订单状态');
INSERT INTO `wd_dm` VALUES ('0', '客户', 'user_type', '用户类型');
INSERT INTO `wd_dm` VALUES ('1', '就餐中', 'desk_type', '餐桌状态');
INSERT INTO `wd_dm` VALUES ('1', '粥类', 'food_type', '菜品种类');
INSERT INTO `wd_dm` VALUES ('1', '已付款未下厨', 'order_type', '订单状态');
INSERT INTO `wd_dm` VALUES ('1', '一级管理员', 'user_type', '用户类型');
INSERT INTO `wd_dm` VALUES ('2', '饭类', 'food_type', '菜品种类');
INSERT INTO `wd_dm` VALUES ('2', '已下厨', 'order_type', '订单状态');
INSERT INTO `wd_dm` VALUES ('2', '二级管理员', 'user_type', '用户类型');
INSERT INTO `wd_dm` VALUES ('3', '面类', 'food_type', '菜品种类');
INSERT INTO `wd_dm` VALUES ('3', '已完成待评价', 'order_type', '订单状态');
INSERT INTO `wd_dm` VALUES ('3', '三级管理员', 'user_type', '用户类型');
INSERT INTO `wd_dm` VALUES ('4', '小吃类', 'food_type', '菜品种类');
INSERT INTO `wd_dm` VALUES ('4', '已完成', 'order_type', '订单状态');
INSERT INTO `wd_dm` VALUES ('5', '饮料类', 'food_type', '菜品种类');

SET FOREIGN_KEY_CHECKS = 1;
