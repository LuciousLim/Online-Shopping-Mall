

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;


-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(10) NULL DEFAULT NULL COMMENT '用户ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收货人',
  `useraddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '收货地址',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '地址信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO `address` VALUES (1, 5, '张三丰', '上海市浦东新区888号', '18899997777');
INSERT INTO `address` VALUES (4, 5, '张无忌', '安徽省合肥市888号', '18877776666');
INSERT INTO `address` VALUES (5, 5, '张大嘴', '北京市海淀区888号', '18866665555');
INSERT INTO `address` VALUES (6, 9, '李大嘴', '上海市浦东新区222号', '18866661111');

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '姓名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '管理员' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (1, 'admin', '123456', '管理员', 'http://localhost:9090/files/1697438073596-avatar.png', 'ADMIN', '13677889922', 'admin@xm.com');

-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '店铺名',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商家介绍',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '审核状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商家信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of business
-- ----------------------------
INSERT INTO `business` VALUES (2, 'meshe', '123456', 'ifashion', 'http://localhost:9090/files/1699023227734-avatar.png', 'BUSINESS', '18899990000', 'meshe@xm.com', 'MsShe(慕姗.诗怡)--始创于2010年，定义“欧美简约、奢华风格 致力传播丰盈女性自信优雅之美 诠释现代丰盈女性独立自主，淡然优雅的淑女气 享受生活，拒绝平庸，于时尚与生活中挥洒自如，淡淡演绎完美生活', '审核通过');
INSERT INTO `business` VALUES (3, 'perfume', '123456', '香水之家', 'http://localhost:9090/files/1699025808382-1.jpg', 'BUSINESS', '18877776666', 'perfume@xm.com', '成立于2010年，陌陌集团旗下大型香水批发户。倡导「便捷 廉价」的生活方式，提升消费者的生活品质。截至2023年7月，已遍布全国31个省级行政区，220+个城市，近 2000家门店。', '审核中');
INSERT INTO `business` VALUES (4, 'computer', '123456', '启航电脑配件', 'http://localhost:9090/files/1699025860605-3.jpg', 'BUSINESS', '18800007777', 'computer@xm.com', '成立于2010年，鹿鹿集团旗下大型批发户。倡导「便捷 廉价」的生活方式，提升消费者的生活品质。截至2023年7月，已遍布全国31个省级行政区，220+个城市，近 2000家门店。', '审核中');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(10) NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` int(10) NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int(10) NULL DEFAULT NULL COMMENT '店铺ID',
  `num` int(10) NULL DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '购物车表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES (8, 5, 10, 2, 1);

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(10) NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` int(10) NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int(10) NULL DEFAULT NULL COMMENT '店铺ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '收藏信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (4, 5, 5, 2);
INSERT INTO `collect` VALUES (5, 5, 6, 2);
INSERT INTO `collect` VALUES (7, 9, 5, 2);
INSERT INTO `collect` VALUES (8, 5, 10, 2);

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `user_id` int(10) NULL DEFAULT NULL COMMENT '用户ID',
  `goods_id` int(10) NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int(10) NULL DEFAULT NULL COMMENT '店铺ID',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '评论时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '评论信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (1, 5, 5, 2, '衣服不错，下次再来！！！', '2023-11-10 17:10:30');
INSERT INTO `comment` VALUES (2, 5, 5, 2, '这衣服确实不错，雀食牛逼！！！', '2023-11-10 17:12:55');
INSERT INTO `comment` VALUES (3, 9, 5, 2, '听朋友说这家店不错，我也买了，看看效果怎么样，好的话，下次再来！', '2023-11-10 17:35:11');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品名称',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '商品主图',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '商品介绍',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '商品价格',
  `unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '计件单位',
  `count` int(10) NULL DEFAULT 0 COMMENT '商品销量',
  `type_id` int(10) NULL DEFAULT NULL COMMENT '分类ID',
  `business_id` int(10) NULL DEFAULT NULL COMMENT '商家ID',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES (5, '设计感修身短款t恤女夏季新款圆领薄款短袖白色高腰紧身露脐上衣', 'http://localhost:9090/files/1699257986682-1.png', '<p><br/></p><p><img src=\"http://localhost:9090/files/1699261664936-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699261669398-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699261673992-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699261678840-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699261682978-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 59.00, '件', 0, 16, 2);
INSERT INTO `goods` VALUES (6, 'MsShe大码女装新款叠穿松紧腰配饰假两件系扣衬衫下摆屁帘', 'http://localhost:9090/files/1699428705672-1.png', '<p><img src=\"http://localhost:9090/files/1699428736624-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699428739895-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699428742752-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699428745711-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 159.00, '件', 0, 16, 2);
INSERT INTO `goods` VALUES (7, '加绒加厚MsShe大码女装2023新款秋装胖mm多巴胺V领宽松卫衣上衣冬', 'http://localhost:9090/files/1699445257509-1.png', '<p><img src=\"http://localhost:9090/files/1699445276508-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699445283145-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699445286061-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699445289121-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699445291821-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699445294540-d6.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699445297097-d7.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699445299644-d8.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 129.00, '件', 0, 16, 2);
INSERT INTO `goods` VALUES (8, '美式复古短袖T恤女纯棉夏ins潮半袖2023年新款设计感小众v领体桖', 'http://localhost:9090/files/1699952256595-1.png', '<p><img src=\"http://localhost:9090/files/1699952270468-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699952292732-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699952296929-d3.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699952300817-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699952304309-d5.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 59.00, '件', 0, 16, 2);
INSERT INTO `goods` VALUES (9, '【赠送延长扣】MsShe大码外穿无钢圈防震内衣聚拢一体式运动文胸', 'http://localhost:9090/files/1699952462164-1.png', '<p><img src=\"http://localhost:9090/files/1699952478199-d1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699952482285-d2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699952488092-d4.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 89.00, '件', 0, 16, 2);
INSERT INTO `goods` VALUES (10, 'MsShe大码女装新款冬季老钱风立领调节收腰菱格夹棉长款外套', 'http://localhost:9090/files/1699952515679-z1.png', '<p><img src=\"http://localhost:9090/files/1699952526794-1.png\" style=\"max-width:100%;\" contenteditable=\"false\"/><img src=\"http://localhost:9090/files/1699952530411-2.png\" style=\"max-width:100%;\" contenteditable=\"false\"/></p>', 199.00, '件', 0, 16, 2);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '内容',
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建时间',
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '创建人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '公告信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES (1, '今天系统正式上线，开始内测', '今天系统正式上线，开始内测', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (2, '所有功能都已完成，可以正常使用', '所有功能都已完成，可以正常使用', '2023-09-05', 'admin');
INSERT INTO `notice` VALUES (3, '今天天气很不错，可以出去一起玩了', '今天天气很不错，可以出去一起玩了', '2023-09-05', 'admin');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `order_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单ID',
  `goods_id` int(10) NULL DEFAULT NULL COMMENT '商品ID',
  `business_id` int(10) NULL DEFAULT NULL COMMENT '商家ID',
  `num` int(10) NULL DEFAULT NULL COMMENT '商品数量',
  `user_id` int(10) NULL DEFAULT NULL COMMENT '用户ID',
  `price` double(10, 2) NULL DEFAULT NULL COMMENT '订单价格',
  `address_id` int(10) NULL DEFAULT NULL COMMENT '地址ID',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '订单状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '订单信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (3, '20231109175131', 5, 2, 2, 5, 118.00, 1, '已评价');
INSERT INTO `orders` VALUES (4, '20231109175131', 6, 2, 2, 5, 318.00, 1, '已完成');
INSERT INTO `orders` VALUES (6, '20231109175321', 5, 2, 2, 5, 118.00, 1, '已完成');
INSERT INTO `orders` VALUES (7, '20231109175321', 6, 2, 1, 5, 159.00, 1, '已完成');
INSERT INTO `orders` VALUES (8, '20231109180904', 7, 2, 1, 9, 129.00, 6, '已完成');

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类名称',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类描述',
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '分类图标',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '商品分类表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of type
-- ----------------------------
INSERT INTO `type` VALUES (1, '图书音像', '这是图书音像', 'http://localhost:9090/files/1699015316548-图书音像.png');
INSERT INTO `type` VALUES (2, '厨具 / 收纳 / 宠物', '这是厨具 / 收纳 / 宠物', 'http://localhost:9090/files/1699015562438-居家.png');
INSERT INTO `type` VALUES (3, '医药 / 保健品', '这是医药 / 保健品', 'http://localhost:9090/files/1699015585629-医药保健.png');
INSERT INTO `type` VALUES (4, '家纺 / 家饰 / 鲜花', '这是家纺 / 家饰 / 鲜花', 'http://localhost:9090/files/1699015602362-家纺家饰.png');
INSERT INTO `type` VALUES (5, '汽车 / 配件 / 用品', '这是汽车 / 配件 / 用品', 'http://localhost:9090/files/1699015621841-汽车配件.png');
INSERT INTO `type` VALUES (6, '家具 / 灯具 / 卫浴', '这是家具 / 灯具 / 卫浴', 'http://localhost:9090/files/1699015637219-家具建材.png');
INSERT INTO `type` VALUES (7, '生活电器 / 生活用品', '这是生活电器 / 生活用品', 'http://localhost:9090/files/1699015658084-家用电器.png');
INSERT INTO `type` VALUES (8, '水果 / 生鲜', '这是水果 / 生鲜', 'http://localhost:9090/files/1699015679164-喵鲜生.png');
INSERT INTO `type` VALUES (9, '零食 / 茶酒 / 进口食品', '这是零食 / 茶酒 / 进口食品', 'http://localhost:9090/files/1699015694567-食品.png');
INSERT INTO `type` VALUES (10, '母婴 / 玩具', '这是母婴 / 玩具', 'http://localhost:9090/files/1699015709389-母婴玩具.png');
INSERT INTO `type` VALUES (11, '手机 / 数码 / 配件', '这是手机 / 数码 / 配件', 'http://localhost:9090/files/1699015723293-数码手机.png');
INSERT INTO `type` VALUES (12, '电脑 / 电子办公 / 配件', '这是电脑 / 电子办公 / 配件', 'http://localhost:9090/files/1699015735715-电脑.png');
INSERT INTO `type` VALUES (13, '珠宝 / 护肤 / 饰品', '这是珠宝 / 护肤 / 饰品', 'http://localhost:9090/files/1699015765623-珠宝饰品.png');
INSERT INTO `type` VALUES (14, '女鞋 / 男鞋 / 箱包', '这是女鞋 / 男鞋 / 箱包', 'http://localhost:9090/files/1699015794478-鞋_箱包.png');
INSERT INTO `type` VALUES (15, '精品男装 / 运动户外', '这是精品男装 / 运动户外', 'http://localhost:9090/files/1699015810103-男装.png');
INSERT INTO `type` VALUES (16, '靓丽女装 / 内衣', '这是靓丽女装 / 内衣', 'http://localhost:9090/files/1699015824719-女装内衣.png');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '密码',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '头像',
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '角色标识',
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户信息表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (5, 'zhangsan', '123456', '张三', 'http://localhost:9090/files/1699252742825-柴犬.jpeg', 'USER', '18811112222', 'zhangsan@xm.com');
INSERT INTO `user` VALUES (9, 'lisi', '123456', '李四', 'http://localhost:9090/files/1699254328253-柯基.jpeg', 'USER', '18866660000', 'lisi@xm.com');

SET FOREIGN_KEY_CHECKS = 1;
